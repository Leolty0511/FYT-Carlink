package android.net;

import android.accessibilityservice.c;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telecom.Logging.Session;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkIdentity implements Comparable<NetworkIdentity> {

    @Deprecated
    public static final boolean COMBINE_SUBTYPE_ENABLED = true;
    public static final int SUBTYPE_COMBINED = -1;
    private static final String TAG = "NetworkIdentity";
    final boolean mMetered;
    final String mNetworkId;
    final boolean mRoaming;
    final int mSubType = -1;
    final String mSubscriberId;
    final int mType;

    public NetworkIdentity(int i2, int i3, String str, String str2, boolean z2, boolean z3) {
        this.mType = i2;
        this.mSubscriberId = str;
        this.mNetworkId = str2;
        this.mRoaming = z2;
        this.mMetered = z3;
    }

    public static NetworkIdentity buildNetworkIdentity(Context context, NetworkState networkState) {
        boolean zIsRoaming;
        String ssid;
        int type = networkState.networkInfo.getType();
        int subtype = networkState.networkInfo.getSubtype();
        boolean z2 = !networkState.networkCapabilities.hasCapability(11);
        String str = null;
        if (ConnectivityManager.isNetworkTypeMobile(type)) {
            if (networkState.subscriberId == null && networkState.networkInfo.getState() != NetworkInfo.State.DISCONNECTED && networkState.networkInfo.getState() != NetworkInfo.State.UNKNOWN) {
                Slog.w(TAG, "Active mobile network without subscriber! ni = " + networkState.networkInfo);
            }
            String str2 = networkState.subscriberId;
            zIsRoaming = networkState.networkInfo.isRoaming();
            ssid = null;
            str = str2;
        } else if (type == 1) {
            String str3 = networkState.networkId;
            if (str3 != null) {
                ssid = str3;
            } else {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                ssid = connectionInfo != null ? connectionInfo.getSSID() : null;
            }
            zIsRoaming = false;
        } else {
            zIsRoaming = false;
            ssid = null;
        }
        return new NetworkIdentity(type, subtype, str, ssid, zIsRoaming, z2);
    }

    public static String scrubSubscriberId(String str) {
        if (Build.IS_ENG) {
            return str;
        }
        if (str == null) {
            return "null";
        }
        return str.substring(0, Math.min(6, str.length())) + Session.TRUNCATE_STRING;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NetworkIdentity)) {
            return false;
        }
        NetworkIdentity networkIdentity = (NetworkIdentity) obj;
        return this.mType == networkIdentity.mType && this.mSubType == networkIdentity.mSubType && this.mRoaming == networkIdentity.mRoaming && Objects.equals(this.mSubscriberId, networkIdentity.mSubscriberId) && Objects.equals(this.mNetworkId, networkIdentity.mNetworkId) && this.mMetered == networkIdentity.mMetered;
    }

    public boolean getMetered() {
        return this.mMetered;
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
        return Objects.hash(Integer.valueOf(this.mType), Integer.valueOf(this.mSubType), this.mSubscriberId, this.mNetworkId, Boolean.valueOf(this.mRoaming), Boolean.valueOf(this.mMetered));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{type=");
        sb.append(ConnectivityManager.getNetworkTypeName(this.mType));
        sb.append(", subType=COMBINED");
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
        sb.append(", metered=");
        return c.o(sb, this.mMetered, "}");
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j2) {
        long jStart = protoOutputStream.start(j2);
        protoOutputStream.write(1112396529665L, this.mType);
        String str = this.mSubscriberId;
        if (str != null) {
            protoOutputStream.write(1159641169922L, scrubSubscriberId(str));
        }
        protoOutputStream.write(1159641169923L, this.mNetworkId);
        protoOutputStream.write(1155346202628L, this.mRoaming);
        protoOutputStream.write(1155346202629L, this.mMetered);
        protoOutputStream.end(jStart);
    }

    @Override // java.lang.Comparable
    public int compareTo(NetworkIdentity networkIdentity) {
        String str;
        String str2;
        String str3;
        String str4;
        int iCompare = Integer.compare(this.mType, networkIdentity.mType);
        if (iCompare == 0) {
            iCompare = Integer.compare(this.mSubType, networkIdentity.mSubType);
        }
        if (iCompare == 0 && (str3 = this.mSubscriberId) != null && (str4 = networkIdentity.mSubscriberId) != null) {
            iCompare = str3.compareTo(str4);
        }
        if (iCompare == 0 && (str = this.mNetworkId) != null && (str2 = networkIdentity.mNetworkId) != null) {
            iCompare = str.compareTo(str2);
        }
        if (iCompare == 0) {
            iCompare = Boolean.compare(this.mRoaming, networkIdentity.mRoaming);
        }
        return iCompare == 0 ? Boolean.compare(this.mMetered, networkIdentity.mMetered) : iCompare;
    }

    public static String[] scrubSubscriberId(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr2[i2] = scrubSubscriberId(strArr[i2]);
        }
        return strArr2;
    }
}
