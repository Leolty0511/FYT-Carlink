package com.android.server.wifi;

import android.net.MacAddress;
import android.net.wifi.SupplicantState;
import android.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.Preconditions;
import com.android.server.wifi.util.NativeUtil;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class WifiScoreCard {
    private static final boolean DBG = false;
    public static final String DUMP_ARG = "WifiScoreCard";
    private static final long SUCCESS_MILLIS_SINCE_ROAM = 4000;
    private static final String TAG = "WifiScoreCard";
    private static final long TS_NONE = -1;
    private final Clock mClock;
    private final String mL2KeySeed;
    private MemoryStore mMemoryStore;
    private long mTsConnectionAttemptStart = -1;
    private long mTsRoam = -1;
    private boolean mPolled = false;
    private boolean mValidated = false;
    private boolean mAttemptingSwitch = false;
    private final Map<MacAddress, PerBssid> mApForBssid = new ArrayMap();
    private final PerBssid mDummyPerBssid = new PerBssid("", MacAddress.fromString("02:00:00:00:00:00"));

    public interface BlobListener {
        void onBlobRetrieved(byte[] bArr);
    }

    public interface MemoryStore {
        void read(String str, BlobListener blobListener);

        void write(String str, byte[] bArr);
    }

    public void installMemoryStore(MemoryStore memoryStore) {
        Preconditions.checkNotNull(memoryStore);
        if (this.mMemoryStore == null) {
            this.mMemoryStore = memoryStore;
            Log.i("WifiScoreCard", "Installing MemoryStore");
            requestReadForAllChanged();
        } else {
            this.mMemoryStore = memoryStore;
            Log.e("WifiScoreCard", "Reinstalling MemoryStore");
        }
    }

    public WifiScoreCard(Clock clock, String l2KeySeed) {
        this.mClock = clock;
        this.mL2KeySeed = l2KeySeed;
    }

    public Pair<String, String> getL2KeyAndGroupHint(ExtendedWifiInfo wifiInfo) {
        PerBssid perBssid = lookupBssid(wifiInfo.getSSID(), wifiInfo.getBSSID());
        if (perBssid == this.mDummyPerBssid) {
            return new Pair<>(null, null);
        }
        long groupIdHash = computeHashLong(perBssid.ssid, this.mDummyPerBssid.bssid);
        return new Pair<>(perBssid.l2Key, groupHintFromLong(groupIdHash));
    }

    public void resetConnectionState() {
        resetConnectionStateInternal(true);
    }

    private void resetConnectionStateInternal(boolean calledFromResetConnectionState) {
        if (!calledFromResetConnectionState) {
            this.mAttemptingSwitch = false;
        }
        if (!this.mAttemptingSwitch) {
            this.mTsConnectionAttemptStart = -1L;
        }
        this.mTsRoam = -1L;
        this.mPolled = false;
        this.mValidated = false;
    }

    private void update(WifiScoreCardProto.Event event, ExtendedWifiInfo wifiInfo) {
        PerBssid perBssid = lookupBssid(wifiInfo.getSSID(), wifiInfo.getBSSID());
        perBssid.updateEventStats(event, wifiInfo.getFrequency(), wifiInfo.getRssi(), wifiInfo.getLinkSpeed());
        perBssid.setNetworkConfigId(wifiInfo.getNetworkId());
    }

    public void noteSignalPoll(ExtendedWifiInfo wifiInfo) {
        if (!this.mPolled && wifiInfo.getRssi() != -127) {
            update(WifiScoreCardProto.Event.FIRST_POLL_AFTER_CONNECTION, wifiInfo);
            this.mPolled = true;
        }
        update(WifiScoreCardProto.Event.SIGNAL_POLL, wifiInfo);
        if (this.mTsRoam > -1 && wifiInfo.getRssi() != -127) {
            long duration = this.mClock.getElapsedSinceBootMillis() - this.mTsRoam;
            if (duration >= SUCCESS_MILLIS_SINCE_ROAM) {
                update(WifiScoreCardProto.Event.ROAM_SUCCESS, wifiInfo);
                this.mTsRoam = -1L;
                doWrites();
            }
        }
    }

    public void noteIpConfiguration(ExtendedWifiInfo wifiInfo) {
        update(WifiScoreCardProto.Event.IP_CONFIGURATION_SUCCESS, wifiInfo);
        this.mAttemptingSwitch = false;
        doWrites();
    }

    public void noteValidationSuccess(ExtendedWifiInfo wifiInfo) {
        if (this.mValidated) {
            return;
        }
        update(WifiScoreCardProto.Event.VALIDATION_SUCCESS, wifiInfo);
        this.mValidated = true;
    }

    public void noteConnectionAttempt(ExtendedWifiInfo wifiInfo) {
        if (this.mTsConnectionAttemptStart > -1) {
            if (this.mPolled) {
                update(WifiScoreCardProto.Event.LAST_POLL_BEFORE_SWITCH, wifiInfo);
            }
            this.mAttemptingSwitch = true;
        }
        this.mTsConnectionAttemptStart = this.mClock.getElapsedSinceBootMillis();
        this.mPolled = false;
    }

    public void noteNetworkAgentCreated(ExtendedWifiInfo wifiInfo, int networkAgentId) {
        PerBssid perBssid = lookupBssid(wifiInfo.getSSID(), wifiInfo.getBSSID());
        perBssid.mNetworkAgentId = networkAgentId;
    }

    public void noteConnectionFailure(ExtendedWifiInfo wifiInfo, int codeMetrics, int codeMetricsProto) {
        update(WifiScoreCardProto.Event.CONNECTION_FAILURE, wifiInfo);
        resetConnectionStateInternal(false);
    }

    public void noteIpReachabilityLost(ExtendedWifiInfo wifiInfo) {
        update(WifiScoreCardProto.Event.IP_REACHABILITY_LOST, wifiInfo);
        long j = this.mTsRoam;
        if (j > -1) {
            this.mTsConnectionAttemptStart = j;
            update(WifiScoreCardProto.Event.ROAM_FAILURE, wifiInfo);
        }
        resetConnectionStateInternal(false);
        doWrites();
    }

    public void noteRoam(ExtendedWifiInfo wifiInfo) {
        update(WifiScoreCardProto.Event.LAST_POLL_BEFORE_ROAM, wifiInfo);
        this.mTsRoam = this.mClock.getElapsedSinceBootMillis();
    }

    public void noteSupplicantStateChanging(ExtendedWifiInfo wifiInfo, SupplicantState state) {
    }

    public void noteSupplicantStateChanged(ExtendedWifiInfo wifiInfo) {
    }

    public void noteWifiDisabled(ExtendedWifiInfo wifiInfo) {
        update(WifiScoreCardProto.Event.WIFI_DISABLED, wifiInfo);
        resetConnectionStateInternal(false);
        doWrites();
    }

    final class PerBssid {
        public final MacAddress bssid;
        public boolean changed;
        public int id;
        public final String l2Key;
        public final String ssid;
        private WifiScoreCardProto.SecurityType mSecurityType = null;
        private int mNetworkAgentId = Integer.MIN_VALUE;
        private int mNetworkConfigId = Integer.MIN_VALUE;
        private final Map<Pair<WifiScoreCardProto.Event, Integer>, PerSignal> mSignalForEventAndFrequency = new ArrayMap();
        private final AtomicReference<byte[]> mPendingReadFromStore = new AtomicReference<>();

        PerBssid(String ssid, MacAddress bssid) {
            this.ssid = ssid;
            this.bssid = bssid;
            long hash = WifiScoreCard.this.computeHashLong(ssid, bssid);
            this.l2Key = WifiScoreCard.l2KeyFromLong(hash);
            this.id = WifiScoreCard.idFromLong(hash);
            this.changed = false;
        }

        void updateEventStats(WifiScoreCardProto.Event event, int frequency, int rssi, int linkspeed) {
            PerSignal perSignal = lookupSignal(event, frequency);
            if (rssi != -127) {
                perSignal.rssi.update(rssi);
            }
            if (linkspeed > 0) {
                perSignal.linkspeed.update(linkspeed);
            }
            if (perSignal.elapsedMs != null && WifiScoreCard.this.mTsConnectionAttemptStart > -1) {
                long millis = WifiScoreCard.this.mClock.getElapsedSinceBootMillis() - WifiScoreCard.this.mTsConnectionAttemptStart;
                if (millis >= 0) {
                    perSignal.elapsedMs.update(millis);
                }
            }
            this.changed = true;
        }

        PerSignal lookupSignal(WifiScoreCardProto.Event event, int frequency) {
            finishPendingRead();
            Pair<WifiScoreCardProto.Event, Integer> key = new Pair<>(event, Integer.valueOf(frequency));
            PerSignal ans = this.mSignalForEventAndFrequency.get(key);
            if (ans == null) {
                PerSignal ans2 = WifiScoreCard.this.new PerSignal(event, frequency);
                this.mSignalForEventAndFrequency.put(key, ans2);
                return ans2;
            }
            return ans;
        }

        WifiScoreCardProto.SecurityType getSecurityType() {
            finishPendingRead();
            return this.mSecurityType;
        }

        void setSecurityType(WifiScoreCardProto.SecurityType securityType) {
            finishPendingRead();
            if (!Objects.equals(securityType, this.mSecurityType)) {
                this.mSecurityType = securityType;
                this.changed = true;
            }
        }

        void setNetworkConfigId(int networkConfigId) {
            if (networkConfigId >= 0) {
                this.mNetworkConfigId = networkConfigId;
            }
        }

        WifiScoreCardProto.AccessPoint toAccessPoint() {
            return toAccessPoint(false);
        }

        WifiScoreCardProto.AccessPoint toAccessPoint(boolean obfuscate) {
            finishPendingRead();
            WifiScoreCardProto.AccessPoint.Builder builder = WifiScoreCardProto.AccessPoint.newBuilder();
            builder.setId(this.id);
            if (!obfuscate) {
                builder.setBssid(ByteString.copyFrom(this.bssid.toByteArray()));
            }
            WifiScoreCardProto.SecurityType securityType = this.mSecurityType;
            if (securityType != null) {
                builder.setSecurityType(securityType);
            }
            for (PerSignal sig : this.mSignalForEventAndFrequency.values()) {
                builder.addEventStats(sig.toSignal());
            }
            return builder.build();
        }

        PerBssid merge(WifiScoreCardProto.AccessPoint ap) {
            if (ap.hasId() && this.id != ap.getId()) {
                return this;
            }
            if (ap.hasSecurityType()) {
                WifiScoreCardProto.SecurityType prev = ap.getSecurityType();
                WifiScoreCardProto.SecurityType securityType = this.mSecurityType;
                if (securityType == null) {
                    this.mSecurityType = prev;
                } else if (!securityType.equals(prev)) {
                    this.changed = true;
                }
            }
            for (WifiScoreCardProto.Signal signal : ap.getEventStatsList()) {
                Pair<WifiScoreCardProto.Event, Integer> key = new Pair<>(signal.getEvent(), Integer.valueOf(signal.getFrequency()));
                PerSignal perSignal = this.mSignalForEventAndFrequency.get(key);
                if (perSignal == null) {
                    this.mSignalForEventAndFrequency.put(key, WifiScoreCard.this.new PerSignal(signal));
                } else {
                    perSignal.merge(signal);
                    this.changed = true;
                }
            }
            return this;
        }

        String getL2Key() {
            return this.l2Key.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void lazyMerge(byte[] serialized) {
            if (serialized == null) {
                return;
            }
            byte[] old = this.mPendingReadFromStore.getAndSet(serialized);
            if (old != null) {
                Log.e("WifiScoreCard", "More answers than we expected!");
            }
        }

        void finishPendingRead() {
            byte[] serialized = this.mPendingReadFromStore.getAndSet(null);
            if (serialized == null) {
                return;
            }
            try {
                WifiScoreCardProto.AccessPoint ap = WifiScoreCardProto.AccessPoint.parseFrom(serialized);
                merge(ap);
            } catch (InvalidProtocolBufferException e) {
                Log.e("WifiScoreCard", "Failed to deserialize", e);
            }
        }
    }

    PerBssid lookupBssid(String ssid, String bssid) {
        if (ssid == null || "<unknown ssid>".equals(ssid) || bssid == null) {
            return this.mDummyPerBssid;
        }
        try {
            MacAddress mac = MacAddress.fromString(bssid);
            PerBssid ans = this.mApForBssid.get(mac);
            if (ans == null || !ans.ssid.equals(ssid)) {
                ans = new PerBssid(ssid, mac);
                PerBssid old = this.mApForBssid.put(mac, ans);
                if (old != null) {
                    Log.i("WifiScoreCard", "Discarding stats for score card (ssid changed) ID: " + old.id);
                }
                requestReadForPerBssid(ans);
            }
            return ans;
        } catch (IllegalArgumentException e) {
            return this.mDummyPerBssid;
        }
    }

    private void requestReadForPerBssid(final PerBssid perBssid) {
        MemoryStore memoryStore = this.mMemoryStore;
        if (memoryStore != null) {
            memoryStore.read(perBssid.getL2Key(), new BlobListener() { // from class: com.android.server.wifi.-$$Lambda$WifiScoreCard$MvXSGO5JjjyUcB8N6S3TfVBsoqc
                @Override // com.android.server.wifi.WifiScoreCard.BlobListener
                public final void onBlobRetrieved(byte[] bArr) {
                    perBssid.lazyMerge(bArr);
                }
            });
        }
    }

    private void requestReadForAllChanged() {
        for (PerBssid perBssid : this.mApForBssid.values()) {
            if (perBssid.changed) {
                requestReadForPerBssid(perBssid);
            }
        }
    }

    public int doWrites() {
        if (this.mMemoryStore == null) {
            return 0;
        }
        int count = 0;
        int bytes = 0;
        for (PerBssid perBssid : this.mApForBssid.values()) {
            if (perBssid.changed) {
                perBssid.finishPendingRead();
                byte[] serialized = perBssid.toAccessPoint(true).toByteArray();
                this.mMemoryStore.write(perBssid.getL2Key(), serialized);
                perBssid.changed = false;
                count++;
                bytes += serialized.length;
            }
        }
        return count;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long computeHashLong(String ssid, MacAddress mac) {
        byte[][] parts = {this.mL2KeySeed.getBytes(), NativeUtil.byteArrayFromArrayList(NativeUtil.decodeSsid(ssid)), mac.toByteArray()};
        int n = 0;
        for (byte[] bArr : parts) {
            n += bArr.length + 1;
        }
        byte[] mashed = new byte[n];
        int p = 0;
        int i = 0;
        while (i < parts.length) {
            byte[] part = parts[i];
            int p2 = p + 1;
            mashed[p] = (byte) part.length;
            int j = 0;
            while (j < part.length) {
                mashed[p2] = part[j];
                j++;
                p2++;
            }
            i++;
            p = p2;
        }
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            ByteBuffer buffer = ByteBuffer.wrap(md.digest(mashed));
            return buffer.getLong();
        } catch (NoSuchAlgorithmException e) {
            Log.e("WifiScoreCard", "SHA-256 not supported.");
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int idFromLong(long hash) {
        return ((int) hash) & ScoringParams.Values.MAX_EXPID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l2KeyFromLong(long hash) {
        return "W" + Long.toHexString(hash);
    }

    private static String groupHintFromLong(long hash) {
        return "G" + Long.toHexString(hash);
    }

    @VisibleForTesting
    PerBssid fetchByBssid(MacAddress mac) {
        return this.mApForBssid.get(mac);
    }

    @VisibleForTesting
    PerBssid perBssidFromAccessPoint(String ssid, WifiScoreCardProto.AccessPoint ap) {
        MacAddress bssid = MacAddress.fromBytes(ap.getBssid().toByteArray());
        return new PerBssid(ssid, bssid).merge(ap);
    }

    final class PerSignal {
        public final PerUnivariateStatistic elapsedMs;
        public final WifiScoreCardProto.Event event;
        public final int frequency;
        public final PerUnivariateStatistic linkspeed;
        public final PerUnivariateStatistic rssi;

        PerSignal(WifiScoreCardProto.Event event, int frequency) {
            this.event = event;
            this.frequency = frequency;
            this.rssi = WifiScoreCard.this.new PerUnivariateStatistic();
            this.linkspeed = WifiScoreCard.this.new PerUnivariateStatistic();
            switch (event) {
                case FIRST_POLL_AFTER_CONNECTION:
                case IP_CONFIGURATION_SUCCESS:
                case VALIDATION_SUCCESS:
                case CONNECTION_FAILURE:
                case WIFI_DISABLED:
                case ROAM_FAILURE:
                    this.elapsedMs = WifiScoreCard.this.new PerUnivariateStatistic();
                    break;
                default:
                    this.elapsedMs = null;
                    break;
            }
        }

        PerSignal(WifiScoreCardProto.Signal signal) {
            this.event = signal.getEvent();
            this.frequency = signal.getFrequency();
            this.rssi = WifiScoreCard.this.new PerUnivariateStatistic(signal.getRssi());
            this.linkspeed = WifiScoreCard.this.new PerUnivariateStatistic(signal.getLinkspeed());
            if (signal.hasElapsedMs()) {
                this.elapsedMs = WifiScoreCard.this.new PerUnivariateStatistic(signal.getElapsedMs());
            } else {
                this.elapsedMs = null;
            }
        }

        void merge(WifiScoreCardProto.Signal signal) {
            Preconditions.checkArgument(this.event == signal.getEvent());
            Preconditions.checkArgument(this.frequency == signal.getFrequency());
            this.rssi.merge(signal.getRssi());
            this.linkspeed.merge(signal.getLinkspeed());
            if (signal.hasElapsedMs()) {
                this.elapsedMs.merge(signal.getElapsedMs());
            }
        }

        WifiScoreCardProto.Signal toSignal() {
            WifiScoreCardProto.Signal.Builder builder = WifiScoreCardProto.Signal.newBuilder();
            builder.setEvent(this.event).setFrequency(this.frequency).setRssi(this.rssi.toUnivariateStatistic()).setLinkspeed(this.linkspeed.toUnivariateStatistic());
            PerUnivariateStatistic perUnivariateStatistic = this.elapsedMs;
            if (perUnivariateStatistic != null) {
                builder.setElapsedMs(perUnivariateStatistic.toUnivariateStatistic());
            }
            return builder.build();
        }
    }

    final class PerUnivariateStatistic {
        public long count;
        public double historicalMean;
        public double historicalVariance;
        public double maxValue;
        public double minValue;
        public double sum;
        public double sumOfSquares;

        PerUnivariateStatistic() {
            this.count = 0L;
            this.sum = 0.0d;
            this.sumOfSquares = 0.0d;
            this.minValue = Double.POSITIVE_INFINITY;
            this.maxValue = Double.NEGATIVE_INFINITY;
            this.historicalMean = 0.0d;
            this.historicalVariance = Double.POSITIVE_INFINITY;
        }

        PerUnivariateStatistic(WifiScoreCardProto.UnivariateStatistic stats) {
            this.count = 0L;
            this.sum = 0.0d;
            this.sumOfSquares = 0.0d;
            this.minValue = Double.POSITIVE_INFINITY;
            this.maxValue = Double.NEGATIVE_INFINITY;
            this.historicalMean = 0.0d;
            this.historicalVariance = Double.POSITIVE_INFINITY;
            if (stats.hasCount()) {
                this.count = stats.getCount();
                this.sum = stats.getSum();
                this.sumOfSquares = stats.getSumOfSquares();
            }
            if (stats.hasMinValue()) {
                this.minValue = stats.getMinValue();
            }
            if (stats.hasMaxValue()) {
                this.maxValue = stats.getMaxValue();
            }
            if (stats.hasHistoricalMean()) {
                this.historicalMean = stats.getHistoricalMean();
            }
            if (stats.hasHistoricalVariance()) {
                this.historicalVariance = stats.getHistoricalVariance();
            }
        }

        void update(double value) {
            this.count++;
            this.sum += value;
            this.sumOfSquares += value * value;
            this.minValue = Math.min(this.minValue, value);
            this.maxValue = Math.max(this.maxValue, value);
        }

        void age() {
        }

        void merge(WifiScoreCardProto.UnivariateStatistic stats) {
            if (stats.hasCount()) {
                this.count += stats.getCount();
                this.sum += stats.getSum();
                this.sumOfSquares += stats.getSumOfSquares();
            }
            if (stats.hasMinValue()) {
                this.minValue = Math.min(this.minValue, stats.getMinValue());
            }
            if (stats.hasMaxValue()) {
                this.maxValue = Math.max(this.maxValue, stats.getMaxValue());
            }
            if (stats.hasHistoricalVariance()) {
                if (this.historicalVariance < Double.POSITIVE_INFINITY) {
                    double numer1 = stats.getHistoricalVariance();
                    double numer2 = this.historicalVariance;
                    double denom = numer1 + numer2;
                    this.historicalMean = ((this.historicalMean * numer1) + (stats.getHistoricalMean() * numer2)) / denom;
                    this.historicalVariance = (numer1 * numer2) / denom;
                    return;
                }
                this.historicalMean = stats.getHistoricalMean();
                this.historicalVariance = stats.getHistoricalVariance();
            }
        }

        WifiScoreCardProto.UnivariateStatistic toUnivariateStatistic() {
            WifiScoreCardProto.UnivariateStatistic.Builder builder = WifiScoreCardProto.UnivariateStatistic.newBuilder();
            long j = this.count;
            if (j != 0) {
                builder.setCount(j).setSum(this.sum).setSumOfSquares(this.sumOfSquares).setMinValue(this.minValue).setMaxValue(this.maxValue);
            }
            if (this.historicalVariance < Double.POSITIVE_INFINITY) {
                builder.setHistoricalMean(this.historicalMean).setHistoricalVariance(this.historicalVariance);
            }
            return builder.build();
        }
    }

    public byte[] getNetworkListByteArray(boolean obfuscate) {
        Map<String, WifiScoreCardProto.Network.Builder> networks = new ArrayMap<>();
        for (PerBssid perBssid : this.mApForBssid.values()) {
            String key = perBssid.ssid;
            WifiScoreCardProto.Network.Builder network = networks.get(key);
            if (network == null) {
                network = WifiScoreCardProto.Network.newBuilder();
                networks.put(key, network);
                if (!obfuscate) {
                    network.setSsid(perBssid.ssid);
                }
                if (perBssid.mSecurityType != null) {
                    network.setSecurityType(perBssid.mSecurityType);
                }
                if (perBssid.mNetworkAgentId >= network.getNetworkAgentId()) {
                    network.setNetworkAgentId(perBssid.mNetworkAgentId);
                }
                if (perBssid.mNetworkConfigId >= network.getNetworkConfigId()) {
                    network.setNetworkConfigId(perBssid.mNetworkConfigId);
                }
            }
            network.addAccessPoints(perBssid.toAccessPoint(obfuscate));
        }
        WifiScoreCardProto.NetworkList.Builder builder = WifiScoreCardProto.NetworkList.newBuilder();
        Iterator<WifiScoreCardProto.Network.Builder> it = networks.values().iterator();
        while (it.hasNext()) {
            builder.addNetworks(it.next());
        }
        return builder.build().toByteArray();
    }

    public String getNetworkListBase64(boolean obfuscate) {
        byte[] raw = getNetworkListByteArray(obfuscate);
        return Base64.encodeToString(raw, 0);
    }

    public void clear() {
        this.mApForBssid.clear();
        resetConnectionStateInternal(false);
    }
}
