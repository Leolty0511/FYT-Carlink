package android.net.wifi;

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
    public static final String LINK_SPEED_UNITS = "Mbps";
    private static final String TAG = "WifiInfo";
    private static final EnumMap<SupplicantState, NetworkInfo.DetailedState> stateMap;
    private String mBSSID;
    private boolean mHiddenSSID;
    private InetAddress mIpAddress;
    private int mLinkSpeed;
    private String mMacAddress;
    private boolean mMeteredHint;
    private int mNetworkId;
    private int mRssi;
    private SupplicantState mSupplicantState;
    private WifiSsid mWifiSsid;

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
        this.mWifiSsid = null;
        this.mBSSID = null;
        this.mNetworkId = -1;
        this.mSupplicantState = SupplicantState.UNINITIALIZED;
        this.mRssi = -9999;
        this.mLinkSpeed = -1;
        this.mHiddenSSID = false;
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

    public boolean getHiddenSSID() {
        return this.mHiddenSSID;
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

    public String getSSID() {
        WifiSsid wifiSsid = this.mWifiSsid;
        if (wifiSsid == null) {
            return WifiSsid.NONE;
        }
        String string = wifiSsid.toString();
        if (TextUtils.isEmpty(string)) {
            return this.mWifiSsid.getHexString();
        }
        return "\"" + string + "\"";
    }

    public SupplicantState getSupplicantState() {
        return this.mSupplicantState;
    }

    public WifiSsid getWifiSsid() {
        return this.mWifiSsid;
    }

    public void setBSSID(String str) {
        this.mBSSID = str;
    }

    public void setHiddenSSID(boolean z2) {
        this.mHiddenSSID = z2;
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
        this.mRssi = i2;
    }

    public void setSSID(WifiSsid wifiSsid) {
        this.mWifiSsid = wifiSsid;
        this.mHiddenSSID = false;
    }

    public void setSupplicantState(SupplicantState supplicantState) {
        this.mSupplicantState = supplicantState;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SSID: ");
        Object obj = this.mWifiSsid;
        if (obj == null) {
            obj = WifiSsid.NONE;
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
        stringBuffer.append(", Net ID: ");
        stringBuffer.append(this.mNetworkId);
        stringBuffer.append(", Metered hint: ");
        stringBuffer.append(this.mMeteredHint);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mNetworkId);
        parcel.writeInt(this.mRssi);
        parcel.writeInt(this.mLinkSpeed);
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
        this.mSupplicantState.writeToParcel(parcel, i2);
    }

    public void setSupplicantState(String str) {
        this.mSupplicantState = valueOf(str);
    }

    public WifiInfo(WifiInfo wifiInfo) {
        if (wifiInfo != null) {
            this.mSupplicantState = wifiInfo.mSupplicantState;
            this.mBSSID = wifiInfo.mBSSID;
            this.mWifiSsid = wifiInfo.mWifiSsid;
            this.mNetworkId = wifiInfo.mNetworkId;
            this.mHiddenSSID = wifiInfo.mHiddenSSID;
            this.mRssi = wifiInfo.mRssi;
            this.mLinkSpeed = wifiInfo.mLinkSpeed;
            this.mIpAddress = wifiInfo.mIpAddress;
            this.mMacAddress = wifiInfo.mMacAddress;
            this.mMeteredHint = wifiInfo.mMeteredHint;
        }
    }
}
