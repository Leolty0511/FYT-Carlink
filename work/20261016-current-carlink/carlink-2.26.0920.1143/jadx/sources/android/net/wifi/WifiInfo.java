package android.net.wifi;

import android.accessibilityservice.c;
import android.net.NetworkInfo;
import android.net.NetworkUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.EnumMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiInfo implements Parcelable {
    public static final Parcelable.Creator<WifiInfo> CREATOR;
    public static final String DEFAULT_MAC_ADDRESS = "02:00:00:00:00:00";
    private static final long FILTER_TIME_CONSTANT = 3000;
    public static final String FREQUENCY_UNITS = "MHz";
    public static final int INVALID_RSSI = -127;
    public static final String LINK_SPEED_UNITS = "Mbps";
    public static final int MAX_RSSI = 200;
    public static final int MIN_RSSI = -126;
    private static final long OUTPUT_SCALE_FACTOR = 5;
    private static final long RESET_TIME_STAMP = Long.MIN_VALUE;
    private static final String TAG = "WifiInfo";
    private static final EnumMap<SupplicantState, NetworkInfo.DetailedState> stateMap;
    public int badRssiCount;
    public int linkStuckCount;
    public int lowRssiCount;
    private String mBSSID;
    private boolean mEphemeral;
    private int mFrequency;
    private InetAddress mIpAddress;
    private long mLastPacketCountUpdateTimeStamp;
    private int mLinkSpeed;
    private String mMacAddress;
    private boolean mMeteredHint;
    private int mNetworkId;
    private int mRssi;
    private SupplicantState mSupplicantState;
    private WifiSsid mWifiSsid;
    public long rxSuccess;
    public double rxSuccessRate;
    public int score;
    public long txBad;
    public double txBadRate;
    public long txRetries;
    public double txRetriesRate;
    public long txSuccess;
    public double txSuccessRate;

    static {
        EnumMap<SupplicantState, NetworkInfo.DetailedState> enumMap = new EnumMap<>(SupplicantState.class);
        stateMap = enumMap;
        SupplicantState supplicantState = SupplicantState.DISCONNECTED;
        NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.DISCONNECTED;
        enumMap.put(supplicantState, detailedState);
        enumMap.put(SupplicantState.INTERFACE_DISABLED, detailedState);
        SupplicantState supplicantState2 = SupplicantState.INACTIVE;
        NetworkInfo.DetailedState detailedState2 = NetworkInfo.DetailedState.IDLE;
        enumMap.put(supplicantState2, detailedState2);
        enumMap.put(SupplicantState.SCANNING, NetworkInfo.DetailedState.SCANNING);
        SupplicantState supplicantState3 = SupplicantState.AUTHENTICATING;
        NetworkInfo.DetailedState detailedState3 = NetworkInfo.DetailedState.CONNECTING;
        enumMap.put(supplicantState3, detailedState3);
        enumMap.put(SupplicantState.ASSOCIATING, detailedState3);
        enumMap.put(SupplicantState.ASSOCIATED, detailedState3);
        SupplicantState supplicantState4 = SupplicantState.FOUR_WAY_HANDSHAKE;
        NetworkInfo.DetailedState detailedState4 = NetworkInfo.DetailedState.AUTHENTICATING;
        enumMap.put(supplicantState4, detailedState4);
        enumMap.put(SupplicantState.GROUP_HANDSHAKE, detailedState4);
        enumMap.put(SupplicantState.COMPLETED, NetworkInfo.DetailedState.OBTAINING_IPADDR);
        enumMap.put(SupplicantState.DORMANT, detailedState);
        enumMap.put(SupplicantState.UNINITIALIZED, detailedState2);
        enumMap.put(SupplicantState.INVALID, NetworkInfo.DetailedState.FAILED);
        CREATOR = new Parcelable.Creator<WifiInfo>() { // from class: android.net.wifi.WifiInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WifiInfo createFromParcel(Parcel parcel) {
                WifiInfo wifiInfo = new WifiInfo();
                wifiInfo.setNetworkId(parcel.readInt());
                wifiInfo.setRssi(parcel.readInt());
                wifiInfo.setLinkSpeed(parcel.readInt());
                wifiInfo.setFrequency(parcel.readInt());
                if (parcel.readByte() == 1) {
                    try {
                        wifiInfo.setInetAddress(InetAddress.getByAddress(parcel.createByteArray()));
                    } catch (UnknownHostException unused) {
                    }
                }
                if (parcel.readInt() == 1) {
                    wifiInfo.mWifiSsid = WifiSsid.CREATOR.createFromParcel(parcel);
                }
                wifiInfo.mBSSID = parcel.readString();
                wifiInfo.mMacAddress = parcel.readString();
                wifiInfo.mMeteredHint = parcel.readInt() != 0;
                wifiInfo.mEphemeral = parcel.readInt() != 0;
                wifiInfo.score = parcel.readInt();
                wifiInfo.txSuccessRate = parcel.readDouble();
                wifiInfo.txRetriesRate = parcel.readDouble();
                wifiInfo.txBadRate = parcel.readDouble();
                wifiInfo.rxSuccessRate = parcel.readDouble();
                wifiInfo.badRssiCount = parcel.readInt();
                wifiInfo.lowRssiCount = parcel.readInt();
                wifiInfo.mSupplicantState = SupplicantState.CREATOR.createFromParcel(parcel);
                return wifiInfo;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WifiInfo[] newArray(int i2) {
                return new WifiInfo[i2];
            }
        };
    }

    public WifiInfo() {
        this.mMacAddress = "02:00:00:00:00:00";
        this.mWifiSsid = null;
        this.mBSSID = null;
        this.mNetworkId = -1;
        this.mSupplicantState = SupplicantState.UNINITIALIZED;
        this.mRssi = -127;
        this.mLinkSpeed = -1;
        this.mFrequency = -1;
        this.mLastPacketCountUpdateTimeStamp = Long.MIN_VALUE;
    }

    public static NetworkInfo.DetailedState getDetailedStateOf(SupplicantState supplicantState) {
        return stateMap.get(supplicantState);
    }

    public static String removeDoubleQuotes(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length <= 1 || str.charAt(0) != '\"') {
            return str;
        }
        int i2 = length - 1;
        return str.charAt(i2) == '\"' ? str.substring(1, i2) : str;
    }

    public static SupplicantState valueOf(String str) {
        if ("4WAY_HANDSHAKE".equalsIgnoreCase(str)) {
            return SupplicantState.FOUR_WAY_HANDSHAKE;
        }
        try {
            return SupplicantState.valueOf(str.toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException unused) {
            return SupplicantState.INVALID;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBSSID() {
        return this.mBSSID;
    }

    public int getFrequency() {
        return this.mFrequency;
    }

    public boolean getHiddenSSID() {
        WifiSsid wifiSsid = this.mWifiSsid;
        if (wifiSsid == null) {
            return false;
        }
        return wifiSsid.isHidden();
    }

    public int getIpAddress() {
        InetAddress inetAddress = this.mIpAddress;
        if (inetAddress instanceof Inet4Address) {
            return NetworkUtils.inetAddressToInt((Inet4Address) inetAddress);
        }
        return 0;
    }

    public int getLinkSpeed() {
        return this.mLinkSpeed;
    }

    public String getMacAddress() {
        return this.mMacAddress;
    }

    public boolean getMeteredHint() {
        return this.mMeteredHint;
    }

    public int getNetworkId() {
        return this.mNetworkId;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public double getRxSuccessRatePps() {
        return this.rxSuccessRate / 5.0d;
    }

    public String getSSID() {
        WifiSsid wifiSsid = this.mWifiSsid;
        if (wifiSsid == null) {
            return "<unknown ssid>";
        }
        String string = wifiSsid.toString();
        if (!TextUtils.isEmpty(string)) {
            return c.k("\"", string, "\"");
        }
        String hexString = this.mWifiSsid.getHexString();
        return hexString != null ? hexString : "<unknown ssid>";
    }

    public SupplicantState getSupplicantState() {
        return this.mSupplicantState;
    }

    public double getTxSuccessRatePps() {
        return this.txSuccessRate / 5.0d;
    }

    public WifiSsid getWifiSsid() {
        return this.mWifiSsid;
    }

    public boolean hasRealMacAddress() {
        String str = this.mMacAddress;
        return (str == null || "02:00:00:00:00:00".equals(str)) ? false : true;
    }

    public boolean is24GHz() {
        return ScanResult.is24GHz(this.mFrequency);
    }

    public boolean is5GHz() {
        return ScanResult.is5GHz(this.mFrequency);
    }

    public boolean isEphemeral() {
        return this.mEphemeral;
    }

    public void reset() {
        setInetAddress(null);
        setBSSID(null);
        setSSID(null);
        setNetworkId(-1);
        setRssi(-127);
        setLinkSpeed(-1);
        setFrequency(-1);
        setMeteredHint(false);
        setEphemeral(false);
        this.txBad = 0L;
        this.txSuccess = 0L;
        this.rxSuccess = 0L;
        this.txRetries = 0L;
        this.txBadRate = 0.0d;
        this.txSuccessRate = 0.0d;
        this.rxSuccessRate = 0.0d;
        this.txRetriesRate = 0.0d;
        this.lowRssiCount = 0;
        this.badRssiCount = 0;
        this.linkStuckCount = 0;
        this.score = 0;
        this.mLastPacketCountUpdateTimeStamp = Long.MIN_VALUE;
    }

    public void setBSSID(String str) {
        this.mBSSID = str;
    }

    public void setEphemeral(boolean z2) {
        this.mEphemeral = z2;
    }

    public void setFrequency(int i2) {
        this.mFrequency = i2;
    }

    public void setInetAddress(InetAddress inetAddress) {
        this.mIpAddress = inetAddress;
    }

    public void setLinkSpeed(int i2) {
        this.mLinkSpeed = i2;
    }

    public void setMacAddress(String str) {
        this.mMacAddress = str;
    }

    public void setMeteredHint(boolean z2) {
        this.mMeteredHint = z2;
    }

    public void setNetworkId(int i2) {
        this.mNetworkId = i2;
    }

    public void setRssi(int i2) {
        if (i2 < -127) {
            i2 = -127;
        }
        if (i2 > 200) {
            i2 = 200;
        }
        this.mRssi = i2;
    }

    public void setSSID(WifiSsid wifiSsid) {
        this.mWifiSsid = wifiSsid;
    }

    public void setSupplicantState(SupplicantState supplicantState) {
        this.mSupplicantState = supplicantState;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("SSID: ");
        Object obj = this.mWifiSsid;
        if (obj == null) {
            obj = "<unknown ssid>";
        }
        stringBuffer.append(obj);
        stringBuffer.append(", BSSID: ");
        String str = this.mBSSID;
        if (str == null) {
            str = "<none>";
        }
        stringBuffer.append(str);
        stringBuffer.append(", MAC: ");
        String str2 = this.mMacAddress;
        if (str2 == null) {
            str2 = "<none>";
        }
        stringBuffer.append(str2);
        stringBuffer.append(", Supplicant state: ");
        SupplicantState supplicantState = this.mSupplicantState;
        stringBuffer.append(supplicantState != null ? supplicantState : "<none>");
        stringBuffer.append(", RSSI: ");
        stringBuffer.append(this.mRssi);
        stringBuffer.append(", Link speed: ");
        stringBuffer.append(this.mLinkSpeed);
        stringBuffer.append("Mbps, Frequency: ");
        stringBuffer.append(this.mFrequency);
        stringBuffer.append("MHz, Net ID: ");
        stringBuffer.append(this.mNetworkId);
        stringBuffer.append(", Metered hint: ");
        stringBuffer.append(this.mMeteredHint);
        stringBuffer.append(", score: ");
        stringBuffer.append(Integer.toString(this.score));
        return stringBuffer.toString();
    }

    public void updatePacketRates(WifiLinkLayerStats wifiLinkLayerStats, long j2) {
        long j3;
        long j4;
        if (wifiLinkLayerStats == null) {
            this.txBad = 0L;
            this.txSuccess = 0L;
            this.rxSuccess = 0L;
            this.txRetries = 0L;
            this.txBadRate = 0.0d;
            this.txSuccessRate = 0.0d;
            this.rxSuccessRate = 0.0d;
            this.txRetriesRate = 0.0d;
            this.mLastPacketCountUpdateTimeStamp = Long.MIN_VALUE;
            return;
        }
        long j5 = wifiLinkLayerStats.txmpdu_be + wifiLinkLayerStats.txmpdu_bk + wifiLinkLayerStats.txmpdu_vi + wifiLinkLayerStats.txmpdu_vo;
        long j6 = wifiLinkLayerStats.retries_be + wifiLinkLayerStats.retries_bk + wifiLinkLayerStats.retries_vi + wifiLinkLayerStats.retries_vo;
        long j7 = wifiLinkLayerStats.rxmpdu_be + wifiLinkLayerStats.rxmpdu_bk + wifiLinkLayerStats.rxmpdu_vi + wifiLinkLayerStats.rxmpdu_vo;
        long j8 = wifiLinkLayerStats.lostmpdu_be + wifiLinkLayerStats.lostmpdu_bk + wifiLinkLayerStats.lostmpdu_vi + wifiLinkLayerStats.lostmpdu_vo;
        long j9 = this.mLastPacketCountUpdateTimeStamp;
        if (j9 == Long.MIN_VALUE || j9 >= j2 || this.txBad > j8 || this.txSuccess > j5 || this.rxSuccess > j7 || this.txRetries > j6) {
            j3 = j6;
            j4 = j7;
            this.txBadRate = 0.0d;
            this.txSuccessRate = 0.0d;
            this.rxSuccessRate = 0.0d;
            this.txRetriesRate = 0.0d;
        } else {
            long j10 = j2 - j9;
            double dExp = Math.exp((j10 * (-1.0d)) / 3000.0d);
            double d2 = 1.0d - dExp;
            j3 = j6;
            j4 = j7;
            this.txBadRate = (((((j8 - this.txBad) * 5) * 1000) / j10) * d2) + (this.txBadRate * dExp);
            this.txSuccessRate = (((((j5 - this.txSuccess) * 5) * 1000) / j10) * d2) + (this.txSuccessRate * dExp);
            this.rxSuccessRate = (((((j4 - this.rxSuccess) * 5) * 1000) / j10) * d2) + (this.rxSuccessRate * dExp);
            this.txRetriesRate = (((((j3 - this.txRetries) * 5) * 1000) / j10) * d2) + (this.txRetriesRate * dExp);
        }
        this.txBad = j8;
        this.txSuccess = j5;
        this.rxSuccess = j4;
        this.txRetries = j3;
        this.mLastPacketCountUpdateTimeStamp = j2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mNetworkId);
        parcel.writeInt(this.mRssi);
        parcel.writeInt(this.mLinkSpeed);
        parcel.writeInt(this.mFrequency);
        if (this.mIpAddress != null) {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.mIpAddress.getAddress());
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mWifiSsid != null) {
            parcel.writeInt(1);
            this.mWifiSsid.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.mBSSID);
        parcel.writeString(this.mMacAddress);
        parcel.writeInt(this.mMeteredHint ? 1 : 0);
        parcel.writeInt(this.mEphemeral ? 1 : 0);
        parcel.writeInt(this.score);
        parcel.writeDouble(this.txSuccessRate);
        parcel.writeDouble(this.txRetriesRate);
        parcel.writeDouble(this.txBadRate);
        parcel.writeDouble(this.rxSuccessRate);
        parcel.writeInt(this.badRssiCount);
        parcel.writeInt(this.lowRssiCount);
        this.mSupplicantState.writeToParcel(parcel, i2);
    }

    public void setSupplicantState(String str) {
        this.mSupplicantState = valueOf(str);
    }

    public WifiInfo(WifiInfo wifiInfo) {
        this.mMacAddress = "02:00:00:00:00:00";
        if (wifiInfo != null) {
            this.mSupplicantState = wifiInfo.mSupplicantState;
            this.mBSSID = wifiInfo.mBSSID;
            this.mWifiSsid = wifiInfo.mWifiSsid;
            this.mNetworkId = wifiInfo.mNetworkId;
            this.mRssi = wifiInfo.mRssi;
            this.mLinkSpeed = wifiInfo.mLinkSpeed;
            this.mFrequency = wifiInfo.mFrequency;
            this.mIpAddress = wifiInfo.mIpAddress;
            this.mMacAddress = wifiInfo.mMacAddress;
            this.mMeteredHint = wifiInfo.mMeteredHint;
            this.mEphemeral = wifiInfo.mEphemeral;
            this.txBad = wifiInfo.txBad;
            this.txRetries = wifiInfo.txRetries;
            this.txSuccess = wifiInfo.txSuccess;
            this.rxSuccess = wifiInfo.rxSuccess;
            this.txBadRate = wifiInfo.txBadRate;
            this.txRetriesRate = wifiInfo.txRetriesRate;
            this.txSuccessRate = wifiInfo.txSuccessRate;
            this.rxSuccessRate = wifiInfo.rxSuccessRate;
            this.mLastPacketCountUpdateTimeStamp = wifiInfo.mLastPacketCountUpdateTimeStamp;
            this.score = wifiInfo.score;
            this.badRssiCount = wifiInfo.badRssiCount;
            this.lowRssiCount = wifiInfo.lowRssiCount;
            this.linkStuckCount = wifiInfo.linkStuckCount;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public void updatePacketRates(long j2, long j3) {
        this.txBad = 0L;
        this.txRetries = 0L;
        this.txBadRate = 0.0d;
        this.txRetriesRate = 0.0d;
        long j4 = this.txSuccess;
        if (j4 <= j2) {
            long j5 = this.rxSuccess;
            if (j5 <= j3) {
                this.txSuccessRate = ((j2 - j4) * 0.5d) + (this.txSuccessRate * 0.5d);
                this.rxSuccessRate = ((j3 - j5) * 0.5d) + (this.rxSuccessRate * 0.5d);
            } else {
                this.txBadRate = 0.0d;
                this.txRetriesRate = 0.0d;
            }
        } else {
            this.txBadRate = 0.0d;
            this.txRetriesRate = 0.0d;
        }
        this.txSuccess = j2;
        this.rxSuccess = j3;
    }
}
