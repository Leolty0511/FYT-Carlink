package android.net;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.WifiInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.TelephonyManager;
import android.util.BackupUtils;
import com.android.internal.util.ArrayUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkTemplate implements Parcelable {
    private static final int BACKUP_VERSION = 1;
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
    public static final int MATCH_BLUETOOTH = 8;
    public static final int MATCH_ETHERNET = 5;

    @Deprecated
    public static final int MATCH_MOBILE_3G_LOWER = 2;

    @Deprecated
    public static final int MATCH_MOBILE_4G = 3;
    public static final int MATCH_MOBILE_ALL = 1;
    public static final int MATCH_MOBILE_WILDCARD = 6;
    public static final int MATCH_PROXY = 9;
    public static final int MATCH_WIFI = 4;
    public static final int MATCH_WIFI_WILDCARD = 7;
    private static final String TAG = "NetworkTemplate";
    private static boolean sForceAllNetworkTypes = false;
    private final int mMatchRule;
    private final String[] mMatchSubscriberIds;
    private final String mNetworkId;
    private final String mSubscriberId;

    public static NetworkTemplate buildTemplateBluetooth() {
        return new NetworkTemplate(8, null, null);
    }

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

    public static NetworkTemplate buildTemplateProxy() {
        return new NetworkTemplate(9, null, null);
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
            case 8:
                return "BLUETOOTH";
            case 9:
                return "PROXY";
            default:
                return c.e("UNKNOWN(", i2, ")");
        }
    }

    public static NetworkTemplate getNetworkTemplateFromBackup(DataInputStream dataInputStream) throws BackupUtils.BadVersionException, IOException {
        int i2 = dataInputStream.readInt();
        if (i2 < 1 || i2 > 1) {
            throw new BackupUtils.BadVersionException("Unknown Backup Serialization Version");
        }
        int i3 = dataInputStream.readInt();
        String string = BackupUtils.readString(dataInputStream);
        String string2 = BackupUtils.readString(dataInputStream);
        if (isKnownMatchRule(i3)) {
            return new NetworkTemplate(i3, string, string2);
        }
        throw new BackupUtils.BadVersionException(c.d("Restored network template contains unknown match rule ", i3));
    }

    private static boolean isKnownMatchRule(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private boolean matchesBluetooth(NetworkIdentity networkIdentity) {
        return networkIdentity.mType == 7;
    }

    private boolean matchesEthernet(NetworkIdentity networkIdentity) {
        return networkIdentity.mType == 9;
    }

    private boolean matchesMobile(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        if (i2 == 6) {
            return true;
        }
        return (sForceAllNetworkTypes || (i2 == 0 && networkIdentity.mMetered)) && !ArrayUtils.isEmpty(this.mMatchSubscriberIds) && ArrayUtils.contains(this.mMatchSubscriberIds, networkIdentity.mSubscriberId);
    }

    @Deprecated
    private boolean matchesMobile3gLower(NetworkIdentity networkIdentity) {
        int networkClass;
        ensureSubtypeAvailable();
        return networkIdentity.mType != 6 && matchesMobile(networkIdentity) && ((networkClass = TelephonyManager.getNetworkClass(networkIdentity.mSubType)) == 0 || networkClass == 1 || networkClass == 2);
    }

    @Deprecated
    private boolean matchesMobile4g(NetworkIdentity networkIdentity) {
        ensureSubtypeAvailable();
        if (networkIdentity.mType == 6) {
            return true;
        }
        return matchesMobile(networkIdentity) && TelephonyManager.getNetworkClass(networkIdentity.mSubType) == 3;
    }

    private boolean matchesMobileWildcard(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        if (i2 == 6 || sForceAllNetworkTypes) {
            return true;
        }
        return i2 == 0 && networkIdentity.mMetered;
    }

    private boolean matchesProxy(NetworkIdentity networkIdentity) {
        return networkIdentity.mType == 16;
    }

    private boolean matchesWifi(NetworkIdentity networkIdentity) {
        if (networkIdentity.mType != 1) {
            return false;
        }
        return Objects.equals(WifiInfo.removeDoubleQuotes(this.mNetworkId), WifiInfo.removeDoubleQuotes(networkIdentity.mNetworkId));
    }

    private boolean matchesWifiWildcard(NetworkIdentity networkIdentity) {
        int i2 = networkIdentity.mType;
        return i2 == 1 || i2 == 13;
    }

    public static NetworkTemplate normalize(NetworkTemplate networkTemplate, String[] strArr) {
        return (networkTemplate.isMatchRuleMobile() && ArrayUtils.contains(strArr, networkTemplate.mSubscriberId)) ? new NetworkTemplate(networkTemplate.mMatchRule, strArr[0], strArr, networkTemplate.mNetworkId) : networkTemplate;
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
        return this.mMatchRule == networkTemplate.mMatchRule && Objects.equals(this.mSubscriberId, networkTemplate.mSubscriberId) && Objects.equals(this.mNetworkId, networkTemplate.mNetworkId);
    }

    public byte[] getBytesForBackup() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(1);
        dataOutputStream.writeInt(this.mMatchRule);
        BackupUtils.writeString(dataOutputStream, this.mSubscriberId);
        BackupUtils.writeString(dataOutputStream, this.mNetworkId);
        return byteArrayOutputStream.toByteArray();
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
        return Objects.hash(Integer.valueOf(this.mMatchRule), this.mSubscriberId, this.mNetworkId);
    }

    public boolean isMatchRuleMobile() {
        int i2 = this.mMatchRule;
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6;
    }

    public boolean isPersistable() {
        int i2 = this.mMatchRule;
        return (i2 == 6 || i2 == 7) ? false : true;
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
            case 8:
                return matchesBluetooth(networkIdentity);
            case 9:
                return matchesProxy(networkIdentity);
            default:
                return false;
        }
    }

    public boolean matchesSubscriberId(String str) {
        return ArrayUtils.contains(this.mMatchSubscriberIds, str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkTemplate: matchRule=");
        sb.append(getMatchRuleName(this.mMatchRule));
        if (this.mSubscriberId != null) {
            sb.append(", subscriberId=");
            sb.append(NetworkIdentity.scrubSubscriberId(this.mSubscriberId));
        }
        if (this.mMatchSubscriberIds != null) {
            sb.append(", matchSubscriberIds=");
            sb.append(Arrays.toString(NetworkIdentity.scrubSubscriberId(this.mMatchSubscriberIds)));
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
        parcel.writeStringArray(this.mMatchSubscriberIds);
        parcel.writeString(this.mNetworkId);
    }

    public NetworkTemplate(int i2, String str, String str2) {
        this(i2, str, new String[]{str}, str2);
    }

    public static NetworkTemplate buildTemplateWifi(String str) {
        return new NetworkTemplate(4, null, str);
    }

    public NetworkTemplate(int i2, String str, String[] strArr, String str2) {
        this.mMatchRule = i2;
        this.mSubscriberId = str;
        this.mMatchSubscriberIds = strArr;
        this.mNetworkId = str2;
        if (isKnownMatchRule(i2)) {
            return;
        }
        m.q("Unknown network template rule ", i2, " will not match any identity.", TAG);
    }

    private NetworkTemplate(Parcel parcel) {
        this.mMatchRule = parcel.readInt();
        this.mSubscriberId = parcel.readString();
        this.mMatchSubscriberIds = parcel.createStringArray();
        this.mNetworkId = parcel.readString();
    }
}
