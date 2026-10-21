package com.android.server.wifi.hotspot2;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiSsid;
import android.util.Log;
import com.android.server.wifi.hotspot2.anqp.ANQPElement;
import com.android.server.wifi.hotspot2.anqp.Constants;
import com.android.server.wifi.hotspot2.anqp.RawByteElement;
import com.android.server.wifi.util.InformationElementUtil;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class NetworkDetail {
    private static final boolean DBG = false;
    private static final String TAG = "NetworkDetail:";
    private final Map<Constants.ANQPElementType, ANQPElement> mANQPElements;
    private final int mAnqpDomainID;
    private final int mAnqpOICount;
    private final Ant mAnt;
    private final long mBSSID;
    private final int mCapacity;
    private final int mCenterfreq0;
    private final int mCenterfreq1;
    private final int mChannelUtilization;
    private final int mChannelWidth;
    private int mDtimInterval;
    private final InformationElementUtil.ExtendedCapabilities mExtendedCapabilities;
    private final long mHESSID;
    private final HSRelease mHSRelease;
    private final boolean mInternet;
    private final boolean mIsHiddenSsid;
    private final int mMaxRate;
    private final int mPrimaryFreq;
    private final long[] mRoamingConsortiums;
    private final String mSSID;
    private final int mStationCount;
    private final int mWifiMode;

    public enum Ant {
        Private,
        PrivateWithGuest,
        ChargeablePublic,
        FreePublic,
        Personal,
        EmergencyOnly,
        Resvd6,
        Resvd7,
        Resvd8,
        Resvd9,
        Resvd10,
        Resvd11,
        Resvd12,
        Resvd13,
        TestOrExperimental,
        Wildcard
    }

    public enum HSRelease {
        R1,
        R2,
        Unknown
    }

    /* JADX WARN: Code duplicated, block: B:100:0x023d  */
    /* JADX WARN: Code duplicated, block: B:101:0x023f  */
    /* JADX WARN: Code duplicated, block: B:103:0x026d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x017e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0119  */
    /* JADX WARN: Code duplicated, block: B:65:0x0132  */
    /* JADX WARN: Code duplicated, block: B:74:0x0159  */
    /* JADX WARN: Code duplicated, block: B:75:0x0166  */
    /* JADX WARN: Code duplicated, block: B:76:0x0169  */
    /* JADX WARN: Code duplicated, block: B:79:0x0172  */
    /* JADX WARN: Code duplicated, block: B:82:0x017b A[LOOP:1: B:78:0x0170->B:82:0x017b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x0183  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:88:0x01da  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:95:0x0219  */
    /* JADX WARN: Code duplicated, block: B:98:0x0223  */
    public NetworkDetail(String bssid, ScanResult.InformationElement[] infoElements, List<String> anqpLines, int freq) {
        ArrayList<Integer> iesFound;
        boolean isHiddenSsid;
        byte[] ssidOctets;
        byte[] ssidOctets2;
        boolean isHiddenSsid2;
        String ssid;
        ArrayList<Integer> iesFound2;
        int maxRateB;
        int maxRateA;
        int i;
        String ssid2;
        String ssid3;
        int length;
        int i2;
        byte byteVal;
        String ssid4;
        ScanResult.InformationElement[] informationElementArr = infoElements;
        this.mDtimInterval = -1;
        if (informationElementArr != null) {
            this.mBSSID = Utils.parseMac(bssid);
            boolean isHiddenSsid3 = false;
            InformationElementUtil.BssLoad bssLoad = new InformationElementUtil.BssLoad();
            InformationElementUtil.Interworking interworking = new InformationElementUtil.Interworking();
            InformationElementUtil.RoamingConsortium roamingConsortium = new InformationElementUtil.RoamingConsortium();
            InformationElementUtil.Vsa vsa = new InformationElementUtil.Vsa();
            InformationElementUtil.HtOperation htOperation = new InformationElementUtil.HtOperation();
            InformationElementUtil.VhtOperation vhtOperation = new InformationElementUtil.VhtOperation();
            InformationElementUtil.ExtendedCapabilities extendedCapabilities = new InformationElementUtil.ExtendedCapabilities();
            InformationElementUtil.TrafficIndicationMap trafficIndicationMap = new InformationElementUtil.TrafficIndicationMap();
            InformationElementUtil.SupportedRates supportedRates = new InformationElementUtil.SupportedRates();
            InformationElementUtil.SupportedRates extendedSupportedRates = new InformationElementUtil.SupportedRates();
            RuntimeException exception = null;
            ArrayList<Integer> iesFound3 = new ArrayList<>();
            try {
                int length2 = informationElementArr.length;
                ssidOctets = null;
                int i3 = 0;
                while (i3 < length2) {
                    try {
                        ScanResult.InformationElement ie = informationElementArr[i3];
                        int i4 = length2;
                        iesFound = iesFound3;
                        try {
                            iesFound.add(Integer.valueOf(ie.id));
                            int i5 = ie.id;
                            if (i5 != 0) {
                                isHiddenSsid = isHiddenSsid3;
                                if (i5 == 1) {
                                    supportedRates.from(ie);
                                } else if (i5 == 5) {
                                    trafficIndicationMap.from(ie);
                                } else if (i5 == 11) {
                                    bssLoad.from(ie);
                                } else if (i5 == 50) {
                                    extendedSupportedRates.from(ie);
                                } else if (i5 == 61) {
                                    htOperation.from(ie);
                                } else if (i5 == 107) {
                                    interworking.from(ie);
                                } else if (i5 == 111) {
                                    roamingConsortium.from(ie);
                                } else if (i5 == 127) {
                                    extendedCapabilities.from(ie);
                                } else if (i5 == 192) {
                                    vhtOperation.from(ie);
                                } else if (i5 != 221) {
                                    continue;
                                } else {
                                    try {
                                        vsa.from(ie);
                                    } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | BufferUnderflowException e) {
                                        e = e;
                                        Log.d(Utils.hs2LogTag(getClass()), "Caught " + e);
                                        if (ssidOctets == null) {
                                            throw new IllegalArgumentException("Malformed IE string (no SSID)", e);
                                        }
                                        exception = e;
                                        ssidOctets2 = ssidOctets;
                                        if (ssidOctets2 != null) {
                                            isHiddenSsid2 = isHiddenSsid;
                                            ssid = null;
                                        } else {
                                            CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder();
                                            try {
                                                CharBuffer decoded = decoder.decode(ByteBuffer.wrap(ssidOctets2));
                                                ssid2 = decoded.toString();
                                                while (true) {
                                                    if (i2 < length) {
                                                        isHiddenSsid2 = true;
                                                        ssid = ssid3;
                                                        break;
                                                    }
                                                    byteVal = ssidOctets2[i2];
                                                    if (byteVal != 0) {
                                                        i2++;
                                                    } else {
                                                        isHiddenSsid2 = false;
                                                        ssid = ssid3;
                                                        break;
                                                    }
                                                }
                                            } catch (CharacterCodingException e2) {
                                                ssid2 = null;
                                            }
                                            if (ssid2 == null) {
                                                ssid3 = ssid2;
                                            } else {
                                                if (!extendedCapabilities.isStrictUtf8()) {
                                                }
                                                ssid4 = WifiSsid.createFromByteArray(ssidOctets2).toString();
                                                if ("<unknown ssid>".equals(ssid4)) {
                                                    ssid3 = ssid4;
                                                } else {
                                                    ssid3 = new String(ssidOctets2, StandardCharsets.ISO_8859_1);
                                                }
                                            }
                                            length = ssidOctets2.length;
                                            i2 = 0;
                                        }
                                        this.mSSID = ssid;
                                        iesFound2 = iesFound;
                                        this.mHESSID = interworking.hessid;
                                        this.mIsHiddenSsid = isHiddenSsid2;
                                        this.mStationCount = bssLoad.stationCount;
                                        this.mChannelUtilization = bssLoad.channelUtilization;
                                        this.mCapacity = bssLoad.capacity;
                                        this.mAnt = interworking.ant;
                                        this.mInternet = interworking.internet;
                                        this.mHSRelease = vsa.hsRelease;
                                        this.mAnqpDomainID = vsa.anqpDomainID;
                                        this.mAnqpOICount = roamingConsortium.anqpOICount;
                                        this.mRoamingConsortiums = roamingConsortium.getRoamingConsortiums();
                                        this.mExtendedCapabilities = extendedCapabilities;
                                        this.mANQPElements = null;
                                        this.mPrimaryFreq = freq;
                                        if (vhtOperation.isValid()) {
                                            this.mChannelWidth = vhtOperation.getChannelWidth();
                                            this.mCenterfreq0 = vhtOperation.getCenterFreq0();
                                            this.mCenterfreq1 = vhtOperation.getCenterFreq1();
                                        } else {
                                            this.mChannelWidth = htOperation.getChannelWidth();
                                            this.mCenterfreq0 = htOperation.getCenterFreq0(this.mPrimaryFreq);
                                            this.mCenterfreq1 = 0;
                                        }
                                        if (trafficIndicationMap.isValid()) {
                                            this.mDtimInterval = trafficIndicationMap.mDtimPeriod;
                                        }
                                        if (extendedSupportedRates.isValid()) {
                                            int maxRateB2 = extendedSupportedRates.mRates.get(extendedSupportedRates.mRates.size() - 1).intValue();
                                            maxRateB = maxRateB2;
                                        } else {
                                            maxRateB = 0;
                                        }
                                        if (supportedRates.isValid()) {
                                            this.mWifiMode = 0;
                                            this.mMaxRate = 0;
                                            return;
                                        }
                                        maxRateA = supportedRates.mRates.get(supportedRates.mRates.size() - 1).intValue();
                                        if (maxRateA > maxRateB) {
                                            i = maxRateA;
                                        } else {
                                            i = maxRateB;
                                        }
                                        this.mMaxRate = i;
                                        int i6 = this.mPrimaryFreq;
                                        int maxRateB3 = this.mMaxRate;
                                        this.mWifiMode = InformationElementUtil.WifiMode.determineMode(i6, maxRateB3, vhtOperation.isValid(), iesFound2.contains(61), iesFound2.contains(42));
                                        return;
                                    }
                                }
                            } else {
                                isHiddenSsid = isHiddenSsid3;
                                byte[] ssidOctets3 = ie.bytes;
                                ssidOctets = ssidOctets3;
                            }
                            i3++;
                            isHiddenSsid3 = isHiddenSsid;
                            length2 = i4;
                            iesFound3 = iesFound;
                            informationElementArr = infoElements;
                        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | BufferUnderflowException e3) {
                            e = e3;
                            isHiddenSsid = isHiddenSsid3;
                        }
                    } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | BufferUnderflowException e4) {
                        e = e4;
                        iesFound = iesFound3;
                        isHiddenSsid = isHiddenSsid3;
                    }
                }
                iesFound = iesFound3;
                isHiddenSsid = isHiddenSsid3;
                ssidOctets2 = ssidOctets;
            } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | BufferUnderflowException e5) {
                e = e5;
                iesFound = iesFound3;
                isHiddenSsid = false;
                ssidOctets = null;
            }
            if (ssidOctets2 != null) {
                isHiddenSsid2 = isHiddenSsid;
                ssid = null;
            } else {
                CharsetDecoder decoder2 = StandardCharsets.UTF_8.newDecoder();
                CharBuffer decoded2 = decoder2.decode(ByteBuffer.wrap(ssidOctets2));
                ssid2 = decoded2.toString();
                if (ssid2 == null) {
                    ssid3 = ssid2;
                } else {
                    if (!extendedCapabilities.isStrictUtf8() && exception != null) {
                        throw new IllegalArgumentException("Failed to decode SSID in dubious IE string");
                    }
                    ssid4 = WifiSsid.createFromByteArray(ssidOctets2).toString();
                    if ("<unknown ssid>".equals(ssid4)) {
                        ssid3 = ssid4;
                    } else {
                        ssid3 = new String(ssidOctets2, StandardCharsets.ISO_8859_1);
                    }
                }
                length = ssidOctets2.length;
                i2 = 0;
                while (true) {
                    if (i2 < length) {
                        isHiddenSsid2 = true;
                        ssid = ssid3;
                        break;
                    }
                    byteVal = ssidOctets2[i2];
                    if (byteVal != 0) {
                        i2++;
                    } else {
                        isHiddenSsid2 = false;
                        ssid = ssid3;
                        break;
                    }
                }
            }
            this.mSSID = ssid;
            iesFound2 = iesFound;
            this.mHESSID = interworking.hessid;
            this.mIsHiddenSsid = isHiddenSsid2;
            this.mStationCount = bssLoad.stationCount;
            this.mChannelUtilization = bssLoad.channelUtilization;
            this.mCapacity = bssLoad.capacity;
            this.mAnt = interworking.ant;
            this.mInternet = interworking.internet;
            this.mHSRelease = vsa.hsRelease;
            this.mAnqpDomainID = vsa.anqpDomainID;
            this.mAnqpOICount = roamingConsortium.anqpOICount;
            this.mRoamingConsortiums = roamingConsortium.getRoamingConsortiums();
            this.mExtendedCapabilities = extendedCapabilities;
            this.mANQPElements = null;
            this.mPrimaryFreq = freq;
            if (vhtOperation.isValid()) {
                this.mChannelWidth = vhtOperation.getChannelWidth();
                this.mCenterfreq0 = vhtOperation.getCenterFreq0();
                this.mCenterfreq1 = vhtOperation.getCenterFreq1();
            } else {
                this.mChannelWidth = htOperation.getChannelWidth();
                this.mCenterfreq0 = htOperation.getCenterFreq0(this.mPrimaryFreq);
                this.mCenterfreq1 = 0;
            }
            if (trafficIndicationMap.isValid()) {
                this.mDtimInterval = trafficIndicationMap.mDtimPeriod;
            }
            if (extendedSupportedRates.isValid()) {
                int maxRateB4 = extendedSupportedRates.mRates.get(extendedSupportedRates.mRates.size() - 1).intValue();
                maxRateB = maxRateB4;
            } else {
                maxRateB = 0;
            }
            if (supportedRates.isValid()) {
                this.mWifiMode = 0;
                this.mMaxRate = 0;
                return;
            }
            maxRateA = supportedRates.mRates.get(supportedRates.mRates.size() - 1).intValue();
            if (maxRateA > maxRateB) {
                i = maxRateA;
            } else {
                i = maxRateB;
            }
            this.mMaxRate = i;
            int i7 = this.mPrimaryFreq;
            int maxRateB5 = this.mMaxRate;
            this.mWifiMode = InformationElementUtil.WifiMode.determineMode(i7, maxRateB5, vhtOperation.isValid(), iesFound2.contains(61), iesFound2.contains(42));
            return;
        }
        throw new IllegalArgumentException("Null information elements");
    }

    private static ByteBuffer getAndAdvancePayload(ByteBuffer data, int plLength) {
        ByteBuffer payload = data.duplicate().order(data.order());
        payload.limit(payload.position() + plLength);
        data.position(data.position() + plLength);
        return payload;
    }

    private NetworkDetail(NetworkDetail base, Map<Constants.ANQPElementType, ANQPElement> anqpElements) {
        this.mDtimInterval = -1;
        this.mSSID = base.mSSID;
        this.mIsHiddenSsid = base.mIsHiddenSsid;
        this.mBSSID = base.mBSSID;
        this.mHESSID = base.mHESSID;
        this.mStationCount = base.mStationCount;
        this.mChannelUtilization = base.mChannelUtilization;
        this.mCapacity = base.mCapacity;
        this.mAnt = base.mAnt;
        this.mInternet = base.mInternet;
        this.mHSRelease = base.mHSRelease;
        this.mAnqpDomainID = base.mAnqpDomainID;
        this.mAnqpOICount = base.mAnqpOICount;
        this.mRoamingConsortiums = base.mRoamingConsortiums;
        this.mExtendedCapabilities = new InformationElementUtil.ExtendedCapabilities(base.mExtendedCapabilities);
        this.mANQPElements = anqpElements;
        this.mChannelWidth = base.mChannelWidth;
        this.mPrimaryFreq = base.mPrimaryFreq;
        this.mCenterfreq0 = base.mCenterfreq0;
        this.mCenterfreq1 = base.mCenterfreq1;
        this.mDtimInterval = base.mDtimInterval;
        this.mWifiMode = base.mWifiMode;
        this.mMaxRate = base.mMaxRate;
    }

    public NetworkDetail complete(Map<Constants.ANQPElementType, ANQPElement> anqpElements) {
        return new NetworkDetail(this, anqpElements);
    }

    public boolean queriable(List<Constants.ANQPElementType> queryElements) {
        return this.mAnt != null && (Constants.hasBaseANQPElements(queryElements) || (Constants.hasR2Elements(queryElements) && this.mHSRelease == HSRelease.R2));
    }

    public boolean has80211uInfo() {
        return (this.mAnt == null && this.mRoamingConsortiums == null && this.mHSRelease == null) ? false : true;
    }

    public boolean hasInterworking() {
        return this.mAnt != null;
    }

    public String getSSID() {
        return this.mSSID;
    }

    public String getTrimmedSSID() {
        if (this.mSSID != null) {
            for (int n = 0; n < this.mSSID.length(); n++) {
                if (this.mSSID.charAt(n) != 0) {
                    return this.mSSID;
                }
            }
            return "";
        }
        return "";
    }

    public long getHESSID() {
        return this.mHESSID;
    }

    public long getBSSID() {
        return this.mBSSID;
    }

    public int getStationCount() {
        return this.mStationCount;
    }

    public int getChannelUtilization() {
        return this.mChannelUtilization;
    }

    public int getCapacity() {
        return this.mCapacity;
    }

    public boolean isInterworking() {
        return this.mAnt != null;
    }

    public Ant getAnt() {
        return this.mAnt;
    }

    public boolean isInternet() {
        return this.mInternet;
    }

    public HSRelease getHSRelease() {
        return this.mHSRelease;
    }

    public int getAnqpDomainID() {
        return this.mAnqpDomainID;
    }

    public byte[] getOsuProviders() {
        ANQPElement osuProviders;
        Map<Constants.ANQPElementType, ANQPElement> map = this.mANQPElements;
        if (map == null || (osuProviders = map.get(Constants.ANQPElementType.HSOSUProviders)) == null) {
            return null;
        }
        return ((RawByteElement) osuProviders).getPayload();
    }

    public int getAnqpOICount() {
        return this.mAnqpOICount;
    }

    public long[] getRoamingConsortiums() {
        return this.mRoamingConsortiums;
    }

    public Map<Constants.ANQPElementType, ANQPElement> getANQPElements() {
        return this.mANQPElements;
    }

    public int getChannelWidth() {
        return this.mChannelWidth;
    }

    public int getCenterfreq0() {
        return this.mCenterfreq0;
    }

    public int getCenterfreq1() {
        return this.mCenterfreq1;
    }

    public int getWifiMode() {
        return this.mWifiMode;
    }

    public int getDtimInterval() {
        return this.mDtimInterval;
    }

    public boolean is80211McResponderSupport() {
        return this.mExtendedCapabilities.is80211McRTTResponder();
    }

    public boolean isSSID_UTF8() {
        return this.mExtendedCapabilities.isStrictUtf8();
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (thatObject == null || getClass() != thatObject.getClass()) {
            return false;
        }
        NetworkDetail that = (NetworkDetail) thatObject;
        if (getSSID().equals(that.getSSID()) && getBSSID() == that.getBSSID()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.mSSID.hashCode() * 31;
        long j = this.mBSSID;
        return ((iHashCode + ((int) (j >>> 32))) * 31) + ((int) j);
    }

    public String toString() {
        return String.format("NetworkInfo{SSID='%s', HESSID=%x, BSSID=%x, StationCount=%d, ChannelUtilization=%d, Capacity=%d, Ant=%s, Internet=%s, HSRelease=%s, AnqpDomainID=%d, AnqpOICount=%d, RoamingConsortiums=%s}", this.mSSID, Long.valueOf(this.mHESSID), Long.valueOf(this.mBSSID), Integer.valueOf(this.mStationCount), Integer.valueOf(this.mChannelUtilization), Integer.valueOf(this.mCapacity), this.mAnt, Boolean.valueOf(this.mInternet), this.mHSRelease, Integer.valueOf(this.mAnqpDomainID), Integer.valueOf(this.mAnqpOICount), Utils.roamingConsortiumsToString(this.mRoamingConsortiums));
    }

    public String toKeyString() {
        return this.mHESSID != 0 ? String.format("'%s':%012x (%012x)", this.mSSID, Long.valueOf(this.mBSSID), Long.valueOf(this.mHESSID)) : String.format("'%s':%012x", this.mSSID, Long.valueOf(this.mBSSID));
    }

    public String getBSSIDString() {
        return toMACString(this.mBSSID);
    }

    public boolean isBeaconFrame() {
        return this.mDtimInterval > 0;
    }

    public boolean isHiddenBeaconFrame() {
        return isBeaconFrame() && this.mIsHiddenSsid;
    }

    public static String toMACString(long mac) {
        StringBuilder sb = new StringBuilder();
        boolean first = true;
        for (int n = 5; n >= 0; n--) {
            if (first) {
                first = false;
            } else {
                sb.append(':');
            }
            sb.append(String.format("%02x", Long.valueOf((mac >>> (n * 8)) & 255)));
        }
        return sb.toString();
    }
}
