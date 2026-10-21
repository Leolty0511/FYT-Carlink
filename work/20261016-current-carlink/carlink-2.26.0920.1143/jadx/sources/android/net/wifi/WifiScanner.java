package android.net.wifi;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiScanner {
    private static final int BASE = 159744;
    public static final int CMD_AP_FOUND = 159753;
    public static final int CMD_AP_LOST = 159754;
    public static final int CMD_DEREGISTER_SCAN_LISTENER = 159772;
    public static final int CMD_FULL_SCAN_RESULT = 159764;
    public static final int CMD_GET_SCAN_RESULTS = 159748;
    public static final int CMD_GET_SINGLE_SCAN_RESULTS = 159773;
    public static final int CMD_OP_FAILED = 159762;
    public static final int CMD_OP_SUCCEEDED = 159761;
    public static final int CMD_PERIOD_CHANGED = 159763;
    public static final int CMD_PNO_NETWORK_FOUND = 159770;
    public static final int CMD_REGISTER_SCAN_LISTENER = 159771;
    public static final int CMD_SCAN = 159744;
    public static final int CMD_SCAN_RESULT = 159749;
    public static final int CMD_SINGLE_SCAN_COMPLETED = 159767;
    public static final int CMD_START_BACKGROUND_SCAN = 159746;
    public static final int CMD_START_PNO_SCAN = 159768;
    public static final int CMD_START_SINGLE_SCAN = 159765;
    public static final int CMD_STOP_BACKGROUND_SCAN = 159747;
    public static final int CMD_STOP_PNO_SCAN = 159769;
    public static final int CMD_STOP_SINGLE_SCAN = 159766;
    public static final int CMD_WIFI_CHANGES_STABILIZED = 159760;
    public static final int CMD_WIFI_CHANGE_DETECTED = 159759;
    private static final boolean DBG = false;
    public static final String GET_AVAILABLE_CHANNELS_EXTRA = "Channels";
    private static final int INVALID_KEY = 0;
    public static final int MAX_SCAN_PERIOD_MS = 1024000;
    public static final int MIN_SCAN_PERIOD_MS = 1000;
    public static final String PNO_PARAMS_PNO_SETTINGS_KEY = "PnoSettings";
    public static final String PNO_PARAMS_SCAN_SETTINGS_KEY = "ScanSettings";
    public static final int REASON_DUPLICATE_REQEUST = -5;
    public static final int REASON_INVALID_LISTENER = -2;
    public static final int REASON_INVALID_REQUEST = -3;
    public static final int REASON_NOT_AUTHORIZED = -4;
    public static final int REASON_SUCCEEDED = 0;
    public static final int REASON_UNSPECIFIED = -1;

    @Deprecated
    public static final int REPORT_EVENT_AFTER_BUFFER_FULL = 0;
    public static final int REPORT_EVENT_AFTER_EACH_SCAN = 1;
    public static final int REPORT_EVENT_FULL_SCAN_RESULT = 2;
    public static final int REPORT_EVENT_NO_BATCH = 4;
    public static final String SCAN_PARAMS_SCAN_SETTINGS_KEY = "ScanSettings";
    public static final String SCAN_PARAMS_WORK_SOURCE_KEY = "WorkSource";
    private static final String TAG = "WifiScanner";
    public static final int WIFI_BAND_24_GHZ = 1;
    public static final int WIFI_BAND_5_GHZ = 2;
    public static final int WIFI_BAND_5_GHZ_DFS_ONLY = 4;
    public static final int WIFI_BAND_5_GHZ_WITH_DFS = 6;
    public static final int WIFI_BAND_BOTH = 3;
    public static final int WIFI_BAND_BOTH_WITH_DFS = 7;
    public static final int WIFI_BAND_UNSPECIFIED = 0;
    private AsyncChannel mAsyncChannel;
    private Context mContext;
    private final Handler mInternalHandler;
    private int mListenerKey = 1;
    private final SparseArray mListenerMap = new SparseArray();
    private final Object mListenerMapLock = new Object();
    private IWifiScanner mService;

    public interface ActionListener {
        void onFailure(int i2, String str);

        void onSuccess();
    }

    @Deprecated
    public static class BssidInfo {
        public String bssid;
        public int frequencyHint;
        public int high;
        public int low;
    }

    @Deprecated
    public interface BssidListener extends ActionListener {
        void onFound(ScanResult[] scanResultArr);

        void onLost(ScanResult[] scanResultArr);
    }

    public static class ChannelSpec {
        public int frequency;
        public boolean passive = false;
        public int dwellTimeMS = 0;

        public ChannelSpec(int i2) {
            this.frequency = i2;
        }
    }

    @Deprecated
    public static class HotlistSettings implements Parcelable {
        public static final Parcelable.Creator<HotlistSettings> CREATOR = new Parcelable.Creator<HotlistSettings>() { // from class: android.net.wifi.WifiScanner.HotlistSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HotlistSettings createFromParcel(Parcel parcel) {
                return new HotlistSettings();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HotlistSettings[] newArray(int i2) {
                return new HotlistSettings[i2];
            }
        };
        public int apLostThreshold;
        public BssidInfo[] bssidInfos;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
        }
    }

    public static class OperationResult implements Parcelable {
        public static final Parcelable.Creator<OperationResult> CREATOR = new Parcelable.Creator<OperationResult>() { // from class: android.net.wifi.WifiScanner.OperationResult.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OperationResult createFromParcel(Parcel parcel) {
                return new OperationResult(parcel.readInt(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OperationResult[] newArray(int i2) {
                return new OperationResult[i2];
            }
        };
        public String description;
        public int reason;

        public OperationResult(int i2, String str) {
            this.reason = i2;
            this.description = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.reason);
            parcel.writeString(this.description);
        }
    }

    public static class ParcelableScanData implements Parcelable {
        public static final Parcelable.Creator<ParcelableScanData> CREATOR = new Parcelable.Creator<ParcelableScanData>() { // from class: android.net.wifi.WifiScanner.ParcelableScanData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableScanData createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                ScanData[] scanDataArr = new ScanData[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    scanDataArr[i3] = ScanData.CREATOR.createFromParcel(parcel);
                }
                return new ParcelableScanData(scanDataArr);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableScanData[] newArray(int i2) {
                return new ParcelableScanData[i2];
            }
        };
        public ScanData[] mResults;

        public ParcelableScanData(ScanData[] scanDataArr) {
            this.mResults = scanDataArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ScanData[] getResults() {
            return this.mResults;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            ScanData[] scanDataArr = this.mResults;
            int i3 = 0;
            if (scanDataArr == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(scanDataArr.length);
            while (true) {
                ScanData[] scanDataArr2 = this.mResults;
                if (i3 >= scanDataArr2.length) {
                    return;
                }
                scanDataArr2[i3].writeToParcel(parcel, i2);
                i3++;
            }
        }
    }

    public static class ParcelableScanResults implements Parcelable {
        public static final Parcelable.Creator<ParcelableScanResults> CREATOR = new Parcelable.Creator<ParcelableScanResults>() { // from class: android.net.wifi.WifiScanner.ParcelableScanResults.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableScanResults createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                ScanResult[] scanResultArr = new ScanResult[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    scanResultArr[i3] = ScanResult.CREATOR.createFromParcel(parcel);
                }
                return new ParcelableScanResults(scanResultArr);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableScanResults[] newArray(int i2) {
                return new ParcelableScanResults[i2];
            }
        };
        public ScanResult[] mResults;

        public ParcelableScanResults(ScanResult[] scanResultArr) {
            this.mResults = scanResultArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ScanResult[] getResults() {
            return this.mResults;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            ScanResult[] scanResultArr = this.mResults;
            int i3 = 0;
            if (scanResultArr == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(scanResultArr.length);
            while (true) {
                ScanResult[] scanResultArr2 = this.mResults;
                if (i3 >= scanResultArr2.length) {
                    return;
                }
                scanResultArr2[i3].writeToParcel(parcel, i2);
                i3++;
            }
        }
    }

    public interface PnoScanListener extends ScanListener {
        void onPnoNetworkFound(ScanResult[] scanResultArr);
    }

    public static class PnoSettings implements Parcelable {
        public static final Parcelable.Creator<PnoSettings> CREATOR = new Parcelable.Creator<PnoSettings>() { // from class: android.net.wifi.WifiScanner.PnoSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PnoSettings createFromParcel(Parcel parcel) {
                PnoSettings pnoSettings = new PnoSettings();
                pnoSettings.isConnected = parcel.readInt() == 1;
                pnoSettings.min5GHzRssi = parcel.readInt();
                pnoSettings.min24GHzRssi = parcel.readInt();
                pnoSettings.initialScoreMax = parcel.readInt();
                pnoSettings.currentConnectionBonus = parcel.readInt();
                pnoSettings.sameNetworkBonus = parcel.readInt();
                pnoSettings.secureBonus = parcel.readInt();
                pnoSettings.band5GHzBonus = parcel.readInt();
                int i2 = parcel.readInt();
                pnoSettings.networkList = new PnoNetwork[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    PnoNetwork pnoNetwork = new PnoNetwork(parcel.readString());
                    pnoNetwork.flags = parcel.readByte();
                    pnoNetwork.authBitField = parcel.readByte();
                    pnoSettings.networkList[i3] = pnoNetwork;
                }
                return pnoSettings;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PnoSettings[] newArray(int i2) {
                return new PnoSettings[i2];
            }
        };
        public int band5GHzBonus;
        public int currentConnectionBonus;
        public int initialScoreMax;
        public boolean isConnected;
        public int min24GHzRssi;
        public int min5GHzRssi;
        public PnoNetwork[] networkList;
        public int sameNetworkBonus;
        public int secureBonus;

        public static class PnoNetwork {
            public static final byte AUTH_CODE_EAPOL = 4;
            public static final byte AUTH_CODE_OPEN = 1;
            public static final byte AUTH_CODE_PSK = 2;
            public static final byte FLAG_A_BAND = 2;
            public static final byte FLAG_DIRECTED_SCAN = 1;
            public static final byte FLAG_G_BAND = 4;
            public static final byte FLAG_SAME_NETWORK = 16;
            public static final byte FLAG_STRICT_MATCH = 8;
            public String ssid;
            public byte flags = 0;
            public byte authBitField = 0;

            public PnoNetwork(String str) {
                this.ssid = str;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.isConnected ? 1 : 0);
            parcel.writeInt(this.min5GHzRssi);
            parcel.writeInt(this.min24GHzRssi);
            parcel.writeInt(this.initialScoreMax);
            parcel.writeInt(this.currentConnectionBonus);
            parcel.writeInt(this.sameNetworkBonus);
            parcel.writeInt(this.secureBonus);
            parcel.writeInt(this.band5GHzBonus);
            PnoNetwork[] pnoNetworkArr = this.networkList;
            int i3 = 0;
            if (pnoNetworkArr == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(pnoNetworkArr.length);
            while (true) {
                PnoNetwork[] pnoNetworkArr2 = this.networkList;
                if (i3 >= pnoNetworkArr2.length) {
                    return;
                }
                parcel.writeString(pnoNetworkArr2[i3].ssid);
                parcel.writeByte(this.networkList[i3].flags);
                parcel.writeByte(this.networkList[i3].authBitField);
                i3++;
            }
        }
    }

    public interface ScanListener extends ActionListener {
        void onFullResult(ScanResult scanResult);

        void onPeriodChanged(int i2);

        void onResults(ScanData[] scanDataArr);
    }

    public static class ScanSettings implements Parcelable {
        public static final Parcelable.Creator<ScanSettings> CREATOR = new Parcelable.Creator<ScanSettings>() { // from class: android.net.wifi.WifiScanner.ScanSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScanSettings createFromParcel(Parcel parcel) {
                ScanSettings scanSettings = new ScanSettings();
                scanSettings.band = parcel.readInt();
                scanSettings.periodInMs = parcel.readInt();
                scanSettings.reportEvents = parcel.readInt();
                scanSettings.numBssidsPerScan = parcel.readInt();
                scanSettings.maxScansToCache = parcel.readInt();
                scanSettings.maxPeriodInMs = parcel.readInt();
                scanSettings.stepCount = parcel.readInt();
                scanSettings.isPnoScan = parcel.readInt() == 1;
                int i2 = parcel.readInt();
                scanSettings.channels = new ChannelSpec[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    ChannelSpec channelSpec = new ChannelSpec(parcel.readInt());
                    channelSpec.dwellTimeMS = parcel.readInt();
                    channelSpec.passive = parcel.readInt() == 1;
                    scanSettings.channels[i3] = channelSpec;
                }
                int i4 = parcel.readInt();
                scanSettings.hiddenNetworks = new HiddenNetwork[i4];
                for (int i5 = 0; i5 < i4; i5++) {
                    scanSettings.hiddenNetworks[i5] = new HiddenNetwork(parcel.readString());
                }
                return scanSettings;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScanSettings[] newArray(int i2) {
                return new ScanSettings[i2];
            }
        };
        public int band;
        public ChannelSpec[] channels;
        public HiddenNetwork[] hiddenNetworks;
        public boolean isPnoScan;
        public int maxPeriodInMs;
        public int maxScansToCache;
        public int numBssidsPerScan;
        public int periodInMs;
        public int reportEvents;
        public int stepCount;

        public static class HiddenNetwork {
            public String ssid;

            public HiddenNetwork(String str) {
                this.ssid = str;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.band);
            parcel.writeInt(this.periodInMs);
            parcel.writeInt(this.reportEvents);
            parcel.writeInt(this.numBssidsPerScan);
            parcel.writeInt(this.maxScansToCache);
            parcel.writeInt(this.maxPeriodInMs);
            parcel.writeInt(this.stepCount);
            parcel.writeInt(this.isPnoScan ? 1 : 0);
            ChannelSpec[] channelSpecArr = this.channels;
            int i3 = 0;
            if (channelSpecArr != null) {
                parcel.writeInt(channelSpecArr.length);
                int i4 = 0;
                while (true) {
                    ChannelSpec[] channelSpecArr2 = this.channels;
                    if (i4 >= channelSpecArr2.length) {
                        break;
                    }
                    parcel.writeInt(channelSpecArr2[i4].frequency);
                    parcel.writeInt(this.channels[i4].dwellTimeMS);
                    parcel.writeInt(this.channels[i4].passive ? 1 : 0);
                    i4++;
                }
            } else {
                parcel.writeInt(0);
            }
            HiddenNetwork[] hiddenNetworkArr = this.hiddenNetworks;
            if (hiddenNetworkArr == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(hiddenNetworkArr.length);
            while (true) {
                HiddenNetwork[] hiddenNetworkArr2 = this.hiddenNetworks;
                if (i3 >= hiddenNetworkArr2.length) {
                    return;
                }
                parcel.writeString(hiddenNetworkArr2[i3].ssid);
                i3++;
            }
        }
    }

    public class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 69634) {
                if (i2 == 69636) {
                    Log.e(WifiScanner.TAG, "Channel connection lost");
                    WifiScanner.this.mAsyncChannel = null;
                    getLooper().quit();
                    return;
                }
                Object listener = WifiScanner.this.getListener(message.arg2);
                if (listener == null) {
                }
                int i3 = message.what;
                if (i3 == 159749) {
                    ((ScanListener) listener).onResults(((ParcelableScanData) message.obj).getResults());
                    return;
                }
                if (i3 == 159767) {
                    WifiScanner.this.removeListener(message.arg2);
                    return;
                }
                if (i3 == 159770) {
                    ((PnoScanListener) listener).onPnoNetworkFound(((ParcelableScanResults) message.obj).getResults());
                    return;
                }
                switch (i3) {
                    case WifiScanner.CMD_AP_FOUND /* 159753 */:
                        ((BssidListener) listener).onFound(((ParcelableScanResults) message.obj).getResults());
                        break;
                    case WifiScanner.CMD_AP_LOST /* 159754 */:
                        ((BssidListener) listener).onLost(((ParcelableScanResults) message.obj).getResults());
                        break;
                    default:
                        switch (i3) {
                            case WifiScanner.CMD_WIFI_CHANGE_DETECTED /* 159759 */:
                                ((WifiChangeListener) listener).onChanging(((ParcelableScanResults) message.obj).getResults());
                                break;
                            case WifiScanner.CMD_WIFI_CHANGES_STABILIZED /* 159760 */:
                                ((WifiChangeListener) listener).onQuiescence(((ParcelableScanResults) message.obj).getResults());
                                break;
                            case WifiScanner.CMD_OP_SUCCEEDED /* 159761 */:
                                ((ActionListener) listener).onSuccess();
                                break;
                            case WifiScanner.CMD_OP_FAILED /* 159762 */:
                                OperationResult operationResult = (OperationResult) message.obj;
                                ((ActionListener) listener).onFailure(operationResult.reason, operationResult.description);
                                WifiScanner.this.removeListener(message.arg2);
                                break;
                            case WifiScanner.CMD_PERIOD_CHANGED /* 159763 */:
                                ((ScanListener) listener).onPeriodChanged(message.arg1);
                                break;
                            case WifiScanner.CMD_FULL_SCAN_RESULT /* 159764 */:
                                ((ScanListener) listener).onFullResult((ScanResult) message.obj);
                                break;
                        }
                        break;
                }
            }
        }
    }

    @Deprecated
    public interface WifiChangeListener extends ActionListener {
        void onChanging(ScanResult[] scanResultArr);

        void onQuiescence(ScanResult[] scanResultArr);
    }

    @Deprecated
    public static class WifiChangeSettings implements Parcelable {
        public static final Parcelable.Creator<WifiChangeSettings> CREATOR = new Parcelable.Creator<WifiChangeSettings>() { // from class: android.net.wifi.WifiScanner.WifiChangeSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WifiChangeSettings createFromParcel(Parcel parcel) {
                return new WifiChangeSettings();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WifiChangeSettings[] newArray(int i2) {
                return new WifiChangeSettings[i2];
            }
        };
        public BssidInfo[] bssidInfos;
        public int lostApSampleSize;
        public int minApsBreachingThreshold;
        public int periodInMs;
        public int rssiSampleSize;
        public int unchangedSampleSize;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
        }
    }

    public WifiScanner(Context context, IWifiScanner iWifiScanner, Looper looper) {
        this.mContext = context;
        this.mService = iWifiScanner;
        try {
            Messenger messenger = iWifiScanner.getMessenger();
            if (messenger == null) {
                throw new IllegalStateException("getMessenger() returned null!  This is invalid.");
            }
            this.mAsyncChannel = new AsyncChannel();
            ServiceHandler serviceHandler = new ServiceHandler(looper);
            this.mInternalHandler = serviceHandler;
            this.mAsyncChannel.connectSync(this.mContext, serviceHandler, messenger);
            this.mAsyncChannel.sendMessage(AsyncChannel.CMD_CHANNEL_FULL_CONNECTION);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private int addListener(ActionListener actionListener) {
        synchronized (this.mListenerMapLock) {
            boolean z2 = getListenerKey(actionListener) != 0;
            int iPutListener = putListener(actionListener);
            if (!z2) {
                return iPutListener;
            }
            Message.obtain(this.mInternalHandler, CMD_OP_FAILED, 0, iPutListener, new OperationResult(-5, "Outstanding request with same key not stopped yet")).sendToTarget();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mListenerMapLock) {
            obj = this.mListenerMap.get(i2);
        }
        return obj;
    }

    private int getListenerKey(Object obj) {
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            int iIndexOfValue = this.mListenerMap.indexOfValue(obj);
            if (iIndexOfValue == -1) {
                return 0;
            }
            return this.mListenerMap.keyAt(iIndexOfValue);
        }
    }

    private int putListener(Object obj) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            do {
                i2 = this.mListenerKey;
                this.mListenerKey = i2 + 1;
            } while (i2 == 0);
            this.mListenerMap.put(i2, obj);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mListenerMapLock) {
            obj = this.mListenerMap.get(i2);
            this.mListenerMap.remove(i2);
        }
        return obj;
    }

    private void startPnoScan(ScanSettings scanSettings, PnoSettings pnoSettings, int i2) {
        Bundle bundle = new Bundle();
        scanSettings.isPnoScan = true;
        bundle.putParcelable("ScanSettings", scanSettings);
        bundle.putParcelable(PNO_PARAMS_PNO_SETTINGS_KEY, pnoSettings);
        this.mAsyncChannel.sendMessage(CMD_START_PNO_SCAN, 0, i2, bundle);
    }

    private void validateChannel() {
        if (this.mAsyncChannel == null) {
            throw new IllegalStateException("No permission to access and change wifi or a bad initialization");
        }
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void configureWifiChange(int i2, int i3, int i4, int i5, int i6, BssidInfo[] bssidInfoArr) {
        throw new UnsupportedOperationException();
    }

    public void deregisterScanListener(ScanListener scanListener) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iRemoveListener = removeListener(scanListener);
        if (iRemoveListener == 0) {
            return;
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_DEREGISTER_SCAN_LISTENER, 0, iRemoveListener);
    }

    public List<Integer> getAvailableChannels(int i2) {
        try {
            return this.mService.getAvailableChannels(i2).getIntegerArrayList(GET_AVAILABLE_CHANNELS_EXTRA);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean getScanResults() {
        validateChannel();
        return this.mAsyncChannel.sendMessageSynchronously(CMD_GET_SCAN_RESULTS, 0).what == 159761;
    }

    public List<ScanResult> getSingleScanResults() {
        validateChannel();
        Message messageSendMessageSynchronously = this.mAsyncChannel.sendMessageSynchronously(CMD_GET_SINGLE_SCAN_RESULTS, 0);
        if (messageSendMessageSynchronously.what == 159761) {
            return Arrays.asList(((ParcelableScanResults) messageSendMessageSynchronously.obj).getResults());
        }
        OperationResult operationResult = (OperationResult) messageSendMessageSynchronously.obj;
        Log.e(TAG, "Error retrieving SingleScan results reason: " + operationResult.reason + " description: " + operationResult.description);
        return new ArrayList();
    }

    public void registerScanListener(ScanListener scanListener) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iAddListener = addListener(scanListener);
        if (iAddListener == 0) {
            return;
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_REGISTER_SCAN_LISTENER, 0, iAddListener);
    }

    public void startBackgroundScan(ScanSettings scanSettings, ScanListener scanListener) {
        startBackgroundScan(scanSettings, scanListener, null);
    }

    public void startConnectedPnoScan(ScanSettings scanSettings, PnoSettings pnoSettings, PnoScanListener pnoScanListener) {
        Preconditions.checkNotNull(pnoScanListener, "listener cannot be null");
        Preconditions.checkNotNull(pnoSettings, "pnoSettings cannot be null");
        int iAddListener = addListener(pnoScanListener);
        if (iAddListener == 0) {
            return;
        }
        validateChannel();
        pnoSettings.isConnected = true;
        startPnoScan(scanSettings, pnoSettings, iAddListener);
    }

    public void startDisconnectedPnoScan(ScanSettings scanSettings, PnoSettings pnoSettings, PnoScanListener pnoScanListener) {
        Preconditions.checkNotNull(pnoScanListener, "listener cannot be null");
        Preconditions.checkNotNull(pnoSettings, "pnoSettings cannot be null");
        int iAddListener = addListener(pnoScanListener);
        if (iAddListener == 0) {
            return;
        }
        validateChannel();
        pnoSettings.isConnected = false;
        startPnoScan(scanSettings, pnoSettings, iAddListener);
    }

    public void startScan(ScanSettings scanSettings, ScanListener scanListener) {
        startScan(scanSettings, scanListener, null);
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void startTrackingBssids(BssidInfo[] bssidInfoArr, int i2, BssidListener bssidListener) {
        throw new UnsupportedOperationException();
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void startTrackingWifiChange(WifiChangeListener wifiChangeListener) {
        throw new UnsupportedOperationException();
    }

    public void stopBackgroundScan(ScanListener scanListener) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iRemoveListener = removeListener(scanListener);
        if (iRemoveListener == 0) {
            return;
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_STOP_BACKGROUND_SCAN, 0, iRemoveListener);
    }

    public void stopPnoScan(ScanListener scanListener) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iRemoveListener = removeListener(scanListener);
        if (iRemoveListener == 0) {
            return;
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_STOP_PNO_SCAN, 0, iRemoveListener);
    }

    public void stopScan(ScanListener scanListener) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iRemoveListener = removeListener(scanListener);
        if (iRemoveListener == 0) {
            return;
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_STOP_SINGLE_SCAN, 0, iRemoveListener);
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void stopTrackingBssids(BssidListener bssidListener) {
        throw new UnsupportedOperationException();
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void stopTrackingWifiChange(WifiChangeListener wifiChangeListener) {
        throw new UnsupportedOperationException();
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public void configureWifiChange(WifiChangeSettings wifiChangeSettings) {
        throw new UnsupportedOperationException();
    }

    public void startBackgroundScan(ScanSettings scanSettings, ScanListener scanListener, WorkSource workSource) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iAddListener = addListener(scanListener);
        if (iAddListener == 0) {
            return;
        }
        validateChannel();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ScanSettings", scanSettings);
        bundle.putParcelable(SCAN_PARAMS_WORK_SOURCE_KEY, workSource);
        this.mAsyncChannel.sendMessage(CMD_START_BACKGROUND_SCAN, 0, iAddListener, bundle);
    }

    public void startScan(ScanSettings scanSettings, ScanListener scanListener, WorkSource workSource) {
        Preconditions.checkNotNull(scanListener, "listener cannot be null");
        int iAddListener = addListener(scanListener);
        if (iAddListener == 0) {
            return;
        }
        validateChannel();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ScanSettings", scanSettings);
        bundle.putParcelable(SCAN_PARAMS_WORK_SOURCE_KEY, workSource);
        this.mAsyncChannel.sendMessage(CMD_START_SINGLE_SCAN, 0, iAddListener, bundle);
    }

    public static class ScanData implements Parcelable {
        public static final Parcelable.Creator<ScanData> CREATOR = new Parcelable.Creator<ScanData>() { // from class: android.net.wifi.WifiScanner.ScanData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScanData createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                int i3 = parcel.readInt();
                int i4 = parcel.readInt();
                boolean z2 = parcel.readInt() != 0;
                int i5 = parcel.readInt();
                ScanResult[] scanResultArr = new ScanResult[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    scanResultArr[i6] = ScanResult.CREATOR.createFromParcel(parcel);
                }
                return new ScanData(i2, i3, i4, z2, scanResultArr);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScanData[] newArray(int i2) {
                return new ScanData[i2];
            }
        };
        private boolean mAllChannelsScanned;
        private int mBucketsScanned;
        private int mFlags;
        private int mId;
        private ScanResult[] mResults;

        public ScanData() {
        }

        public ScanData(int i2, int i3, ScanResult[] scanResultArr) {
            this.mId = i2;
            this.mFlags = i3;
            this.mResults = scanResultArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBucketsScanned() {
            return this.mBucketsScanned;
        }

        public int getFlags() {
            return this.mFlags;
        }

        public int getId() {
            return this.mId;
        }

        public ScanResult[] getResults() {
            return this.mResults;
        }

        public boolean isAllChannelsScanned() {
            return this.mAllChannelsScanned;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int i3 = 0;
            if (this.mResults == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(this.mId);
            parcel.writeInt(this.mFlags);
            parcel.writeInt(this.mBucketsScanned);
            parcel.writeInt(this.mAllChannelsScanned ? 1 : 0);
            parcel.writeInt(this.mResults.length);
            while (true) {
                ScanResult[] scanResultArr = this.mResults;
                if (i3 >= scanResultArr.length) {
                    return;
                }
                scanResultArr[i3].writeToParcel(parcel, i2);
                i3++;
            }
        }

        public ScanData(int i2, int i3, int i4, boolean z2, ScanResult[] scanResultArr) {
            this.mId = i2;
            this.mFlags = i3;
            this.mBucketsScanned = i4;
            this.mAllChannelsScanned = z2;
            this.mResults = scanResultArr;
        }

        public ScanData(ScanData scanData) {
            this.mId = scanData.mId;
            this.mFlags = scanData.mFlags;
            this.mBucketsScanned = scanData.mBucketsScanned;
            this.mAllChannelsScanned = scanData.mAllChannelsScanned;
            this.mResults = new ScanResult[scanData.mResults.length];
            int i2 = 0;
            while (true) {
                ScanResult[] scanResultArr = scanData.mResults;
                if (i2 >= scanResultArr.length) {
                    return;
                }
                this.mResults[i2] = new ScanResult(scanResultArr[i2]);
                i2++;
            }
        }
    }

    private int removeListener(Object obj) {
        int listenerKey = getListenerKey(obj);
        if (listenerKey == 0) {
            Log.e(TAG, "listener cannot be found");
            return listenerKey;
        }
        synchronized (this.mListenerMapLock) {
            this.mListenerMap.remove(listenerKey);
        }
        return listenerKey;
    }
}
