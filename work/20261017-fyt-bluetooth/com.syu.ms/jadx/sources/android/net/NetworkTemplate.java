package android.net;

import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.TelephonyManager;
import u.a;
import u.i;

/* JADX INFO: loaded from: classes.dex */
public class NetworkTemplate implements Parcelable {
    public static final int MATCH_ETHERNET = 5;
    public static final int MATCH_MOBILE_3G_LOWER = 2;
    public static final int MATCH_MOBILE_4G = 3;
    public static final int MATCH_MOBILE_ALL = 1;
    public static final int MATCH_MOBILE_WILDCARD = 6;
    public static final int MATCH_WIFI = 4;
    public static final int MATCH_WIFI_WILDCARD = 7;
    private final int mMatchRule;
    private final String mNetworkId;
    private final String mSubscriberId;
    private static final int[] DATA_USAGE_NETWORK_TYPES = Resources.getSystem().getIntArray(17235982);
    private static boolean sForceAllNetworkTypes = false;
    public static final Parcelable.Creator<NetworkTemplate> CREATOR = new Parcelable.Creator<NetworkTemplate>() { // from class: android.net.NetworkTemplate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkTemplate createFromParcel(Parcel parcel) {
            return new NetworkTemplate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkTemplate[] newArray(int i2) {
            return new NetworkTemplate[i2];
        }
    };

    public static NetworkTemplate buildTemplateEthernet() {
        return new NetworkTemplate(5, null, null);
    }

    @Deprecated
    public static NetworkTemplate buildTemplateMobile3gLower(String str) {
        return new NetworkTemplate(2, str, null);
    }

    @Deprecated
    public static NetworkTemplate buildTemplateMobile4g(String str) {
        return new NetworkTemplate(3, str, null);
    }

    public static NetworkTemplate buildTemplateMobileAll(String str) {
        return new NetworkTemplate(1, str, null);
    }

    public static NetworkTemplate buildTemplateMobileWildcard() {
        return new NetworkTemplate(6, null, null);
    }

    @Deprecated
    public static NetworkTemplate buildTemplateWifi() {
        return buildTemplateWifiWildcard();
    }

    public static NetworkTemplate buildTemplateWifiWildcard() {
        return new NetworkTemplate(7, null, null);
    }

    private static void ensureSubtypeAvailable() {
        throw new IllegalArgumentException("Unable to enforce 3G_LOWER template on combined data.");
    }

    public static void forceAllNetworkTypes() {
        sForceAllNetworkTypes = true;
    }

    private static String getMatchRuleName(int i2) {
        switch (i2) {
            case 1:
                return "MOBILE_ALL";
            case 2:
                return "MOBILE_3G_LOWER";
            case 3:
                return "MOBILE_4G";
            case 4:
                return "WIFI";
            case 5:
                return "ETHERNET";
            case 6:
                return "MOBILE_WILDCARD";
            case 7:
                return "WIFI_WILDCARD";
            default:
                return "UNKNOWN";
        }
    }

    private boolean matchesEthernet(NetworkIdentity networkIdentity) {
        return networkIdentity.mType == 9;
    }

    private boolean matchesMobile(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        if (i2 == 6) {
            return true;
        }
        return (sForceAllNetworkTypes || a.a(DATA_USAGE_NETWORK_TYPES, i2)) && i.a(this.mSubscriberId, networkIdentity.mSubscriberId);
    }

    private boolean matchesMobile3gLower(NetworkIdentity networkIdentity) {
        int networkClass;
        ensureSubtypeAvailable();
        return networkIdentity.mType != 6 && matchesMobile(networkIdentity) && ((networkClass = TelephonyManager.getNetworkClass(networkIdentity.mSubType)) == 0 || networkClass == 1 || networkClass == 2);
    }

    private boolean matchesMobile4g(NetworkIdentity networkIdentity) {
        ensureSubtypeAvailable();
        if (networkIdentity.mType == 6) {
            return true;
        }
        return matchesMobile(networkIdentity) && TelephonyManager.getNetworkClass(networkIdentity.mSubType) == 3;
    }

    private boolean matchesMobileWildcard(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        return i2 == 6 || sForceAllNetworkTypes || a.a(DATA_USAGE_NETWORK_TYPES, i2);
    }

    private boolean matchesWifi(NetworkIdentity networkIdentity) {
        if (networkIdentity.mType != 1) {
            return false;
        }
        return i.a(WifiInfo.removeDoubleQuotes(this.mNetworkId), WifiInfo.removeDoubleQuotes(networkIdentity.mNetworkId));
    }

    private boolean matchesWifiWildcard(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        return i2 == 1 || i2 == 13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NetworkTemplate)) {
            return false;
        }
        NetworkTemplate networkTemplate = (NetworkTemplate) obj;
        return this.mMatchRule == networkTemplate.mMatchRule && i.a(this.mSubscriberId, networkTemplate.mSubscriberId) && i.a(this.mNetworkId, networkTemplate.mNetworkId);
    }

    public int getMatchRule() {
        return this.mMatchRule;
    }

    public String getNetworkId() {
        return this.mNetworkId;
    }

    public String getSubscriberId() {
        return this.mSubscriberId;
    }

    public int hashCode() {
        return i.b(Integer.valueOf(this.mMatchRule), this.mSubscriberId, this.mNetworkId);
    }

    public boolean matches(NetworkIdentity networkIdentity) {
        switch (this.mMatchRule) {
            case 1:
                return matchesMobile(networkIdentity);
            case 2:
                return matchesMobile3gLower(networkIdentity);
            case 3:
                return matchesMobile4g(networkIdentity);
            case 4:
                return matchesWifi(networkIdentity);
            case 5:
                return matchesEthernet(networkIdentity);
            case 6:
                return matchesMobileWildcard(networkIdentity);
            case 7:
                return matchesWifiWildcard(networkIdentity);
            default:
                throw new IllegalArgumentException("unknown network template");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkTemplate: ");
        sb.append("matchRule=");
        sb.append(getMatchRuleName(this.mMatchRule));
        if (this.mSubscriberId != null) {
            sb.append(", subscriberId=");
            sb.append(NetworkIdentity.scrubSubscriberId(this.mSubscriberId));
        }
        if (this.mNetworkId != null) {
            sb.append(", networkId=");
            sb.append(this.mNetworkId);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMatchRule);
        parcel.writeString(this.mSubscriberId);
        parcel.writeString(this.mNetworkId);
    }

    public NetworkTemplate(int i2, String str, String str2) {
        this.mMatchRule = i2;
        this.mSubscriberId = str;
        this.mNetworkId = str2;
    }

    public static NetworkTemplate buildTemplateWifi(String str) {
        return new NetworkTemplate(4, null, str);
    }

    private NetworkTemplate(Parcel parcel) {
        this.mMatchRule = parcel.readInt();
        this.mSubscriberId = parcel.readString();
        this.mNetworkId = parcel.readString();
    }
}
