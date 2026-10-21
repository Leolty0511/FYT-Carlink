package android.net;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import u.i;

/* JADX INFO: loaded from: classes.dex */
public class NetworkIdentity {
    public static final boolean COMBINE_SUBTYPE_ENABLED = true;
    public static final int SUBTYPE_COMBINED = -1;
    public final String mNetworkId;
    public final boolean mRoaming;
    public final int mSubType = -1;
    public final String mSubscriberId;
    public final int mType;

    public NetworkIdentity(int i2, int i3, String str, String str2, boolean z2) {
        this.mType = i2;
        this.mSubscriberId = str;
        this.mNetworkId = str2;
        this.mRoaming = z2;
    }

    public static NetworkIdentity buildNetworkIdentity(Context context, NetworkState networkState) {
        String ssid;
        boolean z2;
        String str;
        int type = networkState.networkInfo.getType();
        int subtype = networkState.networkInfo.getSubtype();
        if (ConnectivityManager.isNetworkTypeMobile(type)) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            boolean zIsNetworkRoaming = telephonyManager.isNetworkRoaming();
            String subscriberId = networkState.subscriberId;
            if (subscriberId == null) {
                subscriberId = telephonyManager.getSubscriberId();
            }
            str = subscriberId;
            z2 = zIsNetworkRoaming;
            ssid = null;
        } else if (type == 1) {
            String str2 = networkState.networkId;
            if (str2 != null) {
                ssid = str2;
            } else {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                ssid = connectionInfo != null ? connectionInfo.getSSID() : null;
            }
            z2 = false;
            str = null;
        } else {
            ssid = null;
            z2 = false;
            str = null;
        }
        return new NetworkIdentity(type, subtype, str, ssid, z2);
    }

    public static String scrubSubscriberId(String str) {
        if ("eng".equals(Build.TYPE)) {
            return str;
        }
        if (str == null) {
            return "null";
        }
        return str.substring(0, Math.min(6, str.length())) + "...";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NetworkIdentity)) {
            return false;
        }
        NetworkIdentity networkIdentity = (NetworkIdentity) obj;
        return this.mType == networkIdentity.mType && this.mSubType == networkIdentity.mSubType && this.mRoaming == networkIdentity.mRoaming && i.a(this.mSubscriberId, networkIdentity.mSubscriberId) && i.a(this.mNetworkId, networkIdentity.mNetworkId);
    }

    public String getNetworkId() {
        return this.mNetworkId;
    }

    public boolean getRoaming() {
        return this.mRoaming;
    }

    public int getSubType() {
        return this.mSubType;
    }

    public String getSubscriberId() {
        return this.mSubscriberId;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        return i.b(Integer.valueOf(this.mType), Integer.valueOf(this.mSubType), this.mSubscriberId, this.mNetworkId, Boolean.valueOf(this.mRoaming));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append("type=");
        sb.append(ConnectivityManager.getNetworkTypeName(this.mType));
        sb.append(", subType=");
        sb.append("COMBINED");
        if (this.mSubscriberId != null) {
            sb.append(", subscriberId=");
            sb.append(scrubSubscriberId(this.mSubscriberId));
        }
        if (this.mNetworkId != null) {
            sb.append(", networkId=");
            sb.append(this.mNetworkId);
        }
        if (this.mRoaming) {
            sb.append(", ROAMING");
        }
        sb.append("]");
        return sb.toString();
    }
}
