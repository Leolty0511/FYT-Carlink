package android.net.wifi;

import android.accessibilityservice.c;
import android.app.m;
import android.net.IpConfiguration;
import android.net.ProxyInfo;
import android.net.StaticIpConfiguration;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.provider.Telephony;
import android.security.keystore.KeyProperties;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.util.BackupUtils;
import com.android.internal.content.NativeLibraryHelper;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WifiConfiguration implements Parcelable {
    public static final int AP_BAND_2GHZ = 0;
    public static final int AP_BAND_5GHZ = 1;
    private static final int BACKUP_VERSION = 2;
    public static final int HOME_NETWORK_RSSI_BOOST = 5;
    public static final int INVALID_NETWORK_ID = -1;
    public static final String KEYSTORE_URI = "keystore://";
    public static final int LOCAL_ONLY_NETWORK_ID = -2;
    public static final int METERED_OVERRIDE_METERED = 1;
    public static final int METERED_OVERRIDE_NONE = 0;
    public static final int METERED_OVERRIDE_NOT_METERED = 2;
    private static final String TAG = "WifiConfiguration";
    public static final int UNKNOWN_UID = -1;
    public static final int USER_APPROVED = 1;
    public static final int USER_BANNED = 2;
    public static final int USER_PENDING = 3;
    public static final int USER_UNSPECIFIED = 0;
    public static final int WAPI_ASCII_PASSWORD = 0;
    public static final int WAPI_HEX_PASSWORD = 1;
    public static final String bssidVarName = "bssid";
    public static final String eapSimSlotVarName = "sim_num";
    public static final String hiddenSSIDVarName = "scan_ssid";
    public static final String pmfVarName = "ieee80211w";
    public static final String priorityVarName = "priority";
    public static final String pskVarName = "psk";
    public static final String ssidVarName = "ssid";
    public static final String updateIdentiferVarName = "update_identifier";
    public static final String wapiAsCertVarName = "wapi_as_cert";
    public static final String wapiCertIndexVarName = "cert_index";
    public static final String wapiPskTypeVarName = "psk_key_type";
    public static final String wapiUserCertVarName = "wapi_user_cert";
    public static final String wepTxKeyIdxVarName = "wep_tx_keyidx";
    public String BSSID;
    public String FQDN;
    public String SSID;
    public BitSet allowedAuthAlgorithms;
    public BitSet allowedGroupCiphers;
    public BitSet allowedKeyManagement;
    public BitSet allowedPairwiseCiphers;
    public BitSet allowedProtocols;
    public int apBand;
    public int apChannel;
    public String creationTime;
    public String creatorName;
    public int creatorUid;
    public String defaultGwMacAddress;
    public String dhcpServer;
    public boolean didSelfAdd;
    public int dtimInterval;
    public int eap_sim_slot;
    public WifiEnterpriseConfig enterpriseConfig;
    public boolean ephemeral;
    public int groupReKeyInterval;
    public boolean hiddenSSID;
    public boolean isHomeProviderNetwork;
    public boolean isLegacyPasspointConfig;
    public int lastConnectUid;
    public long lastConnected;
    public long lastConnectionFailure;
    public long lastDisconnected;
    public long lastRoamingFailure;
    public int lastRoamingFailureReason;
    public String lastUpdateName;
    public int lastUpdateUid;
    public HashMap<String, Integer> linkedConfigurations;
    String mCachedConfigKey;
    private IpConfiguration mIpConfiguration;
    private NetworkSelectionStatus mNetworkSelectionStatus;
    private String mPasspointManagementObjectTree;
    public boolean meteredHint;
    public int meteredOverride;
    public int networkId;
    public boolean noInternetAccessExpected;
    public int numAssociation;
    public int numNoInternetAccessReports;
    public int numScorerOverride;
    public int numScorerOverrideAndSwitchedNetwork;
    public String peerWifiConfiguration;
    public String preSharedKey;

    @Deprecated
    public int priority;
    public String providerFriendlyName;
    public final RecentFailure recentFailure;
    public boolean requirePMF;
    public long[] roamingConsortiumIds;
    public long roamingFailureBlackListTimeMilli;
    public boolean selfAdded;
    public boolean shared;
    public int softApMaxNumSta;
    public int status;
    public String updateIdentifier;
    public String updateTime;
    public boolean useExternalScores;
    public int userApproved;
    public boolean validatedInternetAccess;
    public Visibility visibility;
    public String wapiAsCert;
    public int wapiCertIndex;
    public int wapiPskType;
    public String wapiUserCert;
    public String[] wepKeys;
    public int wepTxKeyIndex;
    public static final String[] wepKeyVarNames = {"wep_key0", "wep_key1", "wep_key2", "wep_key3"};
    public static int INVALID_RSSI = -127;
    public static int ROAMING_FAILURE_IP_CONFIG = 1;
    public static int ROAMING_FAILURE_AUTH_FAILURE = 2;
    public static final Parcelable.Creator<WifiConfiguration> CREATOR = new Parcelable.Creator<WifiConfiguration>() { // from class: android.net.wifi.WifiConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiConfiguration createFromParcel(Parcel parcel) {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.networkId = parcel.readInt();
            wifiConfiguration.status = parcel.readInt();
            wifiConfiguration.mNetworkSelectionStatus.readFromParcel(parcel);
            wifiConfiguration.SSID = parcel.readString();
            wifiConfiguration.BSSID = parcel.readString();
            wifiConfiguration.apBand = parcel.readInt();
            wifiConfiguration.apChannel = parcel.readInt();
            wifiConfiguration.softApMaxNumSta = parcel.readInt();
            wifiConfiguration.groupReKeyInterval = parcel.readInt();
            wifiConfiguration.FQDN = parcel.readString();
            wifiConfiguration.providerFriendlyName = parcel.readString();
            wifiConfiguration.isHomeProviderNetwork = parcel.readInt() != 0;
            int i2 = parcel.readInt();
            wifiConfiguration.roamingConsortiumIds = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                wifiConfiguration.roamingConsortiumIds[i3] = parcel.readLong();
            }
            wifiConfiguration.preSharedKey = parcel.readString();
            int i4 = 0;
            while (true) {
                String[] strArr = wifiConfiguration.wepKeys;
                if (i4 >= strArr.length) {
                    break;
                }
                strArr[i4] = parcel.readString();
                i4++;
            }
            wifiConfiguration.wepTxKeyIndex = parcel.readInt();
            wifiConfiguration.priority = parcel.readInt();
            wifiConfiguration.hiddenSSID = parcel.readInt() != 0;
            wifiConfiguration.requirePMF = parcel.readInt() != 0;
            wifiConfiguration.updateIdentifier = parcel.readString();
            wifiConfiguration.allowedKeyManagement = WifiConfiguration.readBitSet(parcel);
            wifiConfiguration.allowedProtocols = WifiConfiguration.readBitSet(parcel);
            wifiConfiguration.allowedAuthAlgorithms = WifiConfiguration.readBitSet(parcel);
            wifiConfiguration.allowedPairwiseCiphers = WifiConfiguration.readBitSet(parcel);
            wifiConfiguration.allowedGroupCiphers = WifiConfiguration.readBitSet(parcel);
            wifiConfiguration.enterpriseConfig = (WifiEnterpriseConfig) parcel.readParcelable(null);
            wifiConfiguration.mIpConfiguration = (IpConfiguration) parcel.readParcelable(null);
            wifiConfiguration.dhcpServer = parcel.readString();
            wifiConfiguration.defaultGwMacAddress = parcel.readString();
            wifiConfiguration.selfAdded = parcel.readInt() != 0;
            wifiConfiguration.didSelfAdd = parcel.readInt() != 0;
            wifiConfiguration.validatedInternetAccess = parcel.readInt() != 0;
            wifiConfiguration.isLegacyPasspointConfig = parcel.readInt() != 0;
            wifiConfiguration.ephemeral = parcel.readInt() != 0;
            wifiConfiguration.meteredHint = parcel.readInt() != 0;
            wifiConfiguration.meteredOverride = parcel.readInt();
            wifiConfiguration.useExternalScores = parcel.readInt() != 0;
            wifiConfiguration.creatorUid = parcel.readInt();
            wifiConfiguration.lastConnectUid = parcel.readInt();
            wifiConfiguration.lastUpdateUid = parcel.readInt();
            wifiConfiguration.creatorName = parcel.readString();
            wifiConfiguration.lastUpdateName = parcel.readString();
            wifiConfiguration.lastConnectionFailure = parcel.readLong();
            wifiConfiguration.lastRoamingFailure = parcel.readLong();
            wifiConfiguration.lastRoamingFailureReason = parcel.readInt();
            wifiConfiguration.roamingFailureBlackListTimeMilli = parcel.readLong();
            wifiConfiguration.numScorerOverride = parcel.readInt();
            wifiConfiguration.numScorerOverrideAndSwitchedNetwork = parcel.readInt();
            wifiConfiguration.numAssociation = parcel.readInt();
            wifiConfiguration.userApproved = parcel.readInt();
            wifiConfiguration.numNoInternetAccessReports = parcel.readInt();
            wifiConfiguration.noInternetAccessExpected = parcel.readInt() != 0;
            wifiConfiguration.shared = parcel.readInt() != 0;
            wifiConfiguration.mPasspointManagementObjectTree = parcel.readString();
            wifiConfiguration.recentFailure.setAssociationStatus(parcel.readInt());
            if (wifiConfiguration.allowedKeyManagement.get(10)) {
                wifiConfiguration.wapiPskType = parcel.readInt();
            } else if (wifiConfiguration.allowedKeyManagement.get(11)) {
                wifiConfiguration.wapiAsCert = parcel.readString();
                wifiConfiguration.wapiUserCert = parcel.readString();
                wifiConfiguration.wapiCertIndex = parcel.readInt();
            }
            wifiConfiguration.eap_sim_slot = parcel.readInt();
            return wifiConfiguration;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiConfiguration[] newArray(int i2) {
            return new WifiConfiguration[i2];
        }
    };

    public static class AuthAlgorithm {
        public static final int LEAP = 2;
        public static final int OPEN = 0;
        public static final int SHARED = 1;
        public static final String[] strings = {"OPEN", "SHARED", "LEAP"};
        public static final String varName = "auth_alg";

        private AuthAlgorithm() {
        }
    }

    public static class GroupCipher {
        public static final int CCMP = 3;
        public static final int GTK_NOT_USED = 4;
        public static final int TKIP = 2;
        public static final int WEP104 = 1;
        public static final int WEP40 = 0;
        public static final String[] strings = {"WEP40", "WEP104", "TKIP", "CCMP", "GTK_NOT_USED"};
        public static final String varName = "group";

        private GroupCipher() {
        }
    }

    public static class KeyMgmt {
        public static final int EAP_SHA256 = 9;
        public static final int FT_EAP = 7;
        public static final int FT_PSK = 6;
        public static final int IEEE8021X = 3;
        public static final int NONE = 0;
        public static final int OSEN = 5;
        public static final int PSK_SHA256 = 8;
        public static final int WAPI_CERT = 11;
        public static final int WAPI_PSK = 10;
        public static final int WPA2_PSK = 4;
        public static final int WPA_EAP = 2;
        public static final int WPA_PSK = 1;
        public static final String[] strings = {KeyProperties.DIGEST_NONE, "WPA_PSK", "WPA_EAP", "IEEE8021X", "WPA2_PSK", "OSEN", "FT_PSK", "FT_EAP", "WPA_PSK_SHA256", "WPA_EAP_SHA256", "WAPI_PSK", "WAPI_CERT"};
        public static final String varName = "key_mgmt";

        private KeyMgmt() {
        }
    }

    public static class KeyMgmtMask {
        public static final int WAPI_CERT = 8192;
        public static final int WAPI_PSK = 4096;

        private KeyMgmtMask() {
        }
    }

    public static class NetworkSelectionStatus {
        private static final int CONNECT_CHOICE_EXISTS = 1;
        private static final int CONNECT_CHOICE_NOT_EXISTS = -1;
        public static final int DISABLED_ASSOCIATION_REJECTION = 2;
        public static final int DISABLED_AUTHENTICATION_FAILURE = 3;
        public static final int DISABLED_AUTHENTICATION_NO_CREDENTIALS = 8;
        public static final int DISABLED_BAD_LINK = 1;
        public static final int DISABLED_BY_WIFI_MANAGER = 10;
        public static final int DISABLED_BY_WRONG_PASSWORD = 12;
        public static final int DISABLED_DHCP_FAILURE = 4;
        public static final int DISABLED_DNS_FAILURE = 5;
        public static final int DISABLED_DUE_TO_USER_SWITCH = 11;
        public static final int DISABLED_NO_INTERNET = 9;
        public static final int DISABLED_TLS_VERSION_MISMATCH = 7;
        public static final int DISABLED_WPS_START = 6;
        public static final long INVALID_NETWORK_SELECTION_DISABLE_TIMESTAMP = -1;
        public static final int NETWORK_SELECTION_DISABLED_MAX = 13;
        public static final int NETWORK_SELECTION_DISABLED_STARTING_INDEX = 1;
        public static final int NETWORK_SELECTION_ENABLE = 0;
        public static final int NETWORK_SELECTION_ENABLED = 0;
        public static final int NETWORK_SELECTION_PERMANENTLY_DISABLED = 2;
        public static final int NETWORK_SELECTION_STATUS_MAX = 3;
        public static final int NETWORK_SELECTION_TEMPORARY_DISABLED = 1;
        private ScanResult mCandidate;
        private int mCandidateScore;
        private String mConnectChoice;
        private String mNetworkSelectionBSSID;
        private int mNetworkSelectionDisableReason;
        private boolean mNotRecommended;
        private boolean mSeenInLastQualifiedNetworkSelection;
        private int mStatus;
        public static final String[] QUALITY_NETWORK_SELECTION_STATUS = {"NETWORK_SELECTION_ENABLED", "NETWORK_SELECTION_TEMPORARY_DISABLED", "NETWORK_SELECTION_PERMANENTLY_DISABLED"};
        public static final String[] QUALITY_NETWORK_SELECTION_DISABLE_REASON = {"NETWORK_SELECTION_ENABLE", "NETWORK_SELECTION_DISABLED_BAD_LINK", "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION ", "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE", "NETWORK_SELECTION_DISABLED_DHCP_FAILURE", "NETWORK_SELECTION_DISABLED_DNS_FAILURE", "NETWORK_SELECTION_DISABLED_WPS_START", "NETWORK_SELECTION_DISABLED_TLS_VERSION", "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS", "NETWORK_SELECTION_DISABLED_NO_INTERNET", "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER", "NETWORK_SELECTION_DISABLED_BY_USER_SWITCH", "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"};
        private long mTemporarilyDisabledTimestamp = -1;
        private int[] mNetworkSeclectionDisableCounter = new int[13];
        private long mConnectChoiceTimestamp = -1;
        private boolean mHasEverConnected = false;

        public static String getNetworkDisableReasonString(int i2) {
            if (i2 < 0 || i2 >= 13) {
                return null;
            }
            return QUALITY_NETWORK_SELECTION_DISABLE_REASON[i2];
        }

        public void clearDisableReasonCounter(int i2) {
            if (i2 < 0 || i2 >= 13) {
                throw new IllegalArgumentException(c.d("Illegal reason value: ", i2));
            }
            this.mNetworkSeclectionDisableCounter[i2] = 0;
        }

        public void copy(NetworkSelectionStatus networkSelectionStatus) {
            this.mStatus = networkSelectionStatus.mStatus;
            this.mNetworkSelectionDisableReason = networkSelectionStatus.mNetworkSelectionDisableReason;
            for (int i2 = 0; i2 < 13; i2++) {
                this.mNetworkSeclectionDisableCounter[i2] = networkSelectionStatus.mNetworkSeclectionDisableCounter[i2];
            }
            this.mTemporarilyDisabledTimestamp = networkSelectionStatus.mTemporarilyDisabledTimestamp;
            this.mNetworkSelectionBSSID = networkSelectionStatus.mNetworkSelectionBSSID;
            setSeenInLastQualifiedNetworkSelection(networkSelectionStatus.getSeenInLastQualifiedNetworkSelection());
            setCandidate(networkSelectionStatus.getCandidate());
            setCandidateScore(networkSelectionStatus.getCandidateScore());
            setConnectChoice(networkSelectionStatus.getConnectChoice());
            setConnectChoiceTimestamp(networkSelectionStatus.getConnectChoiceTimestamp());
            setHasEverConnected(networkSelectionStatus.getHasEverConnected());
            setNotRecommended(networkSelectionStatus.isNotRecommended());
        }

        public ScanResult getCandidate() {
            return this.mCandidate;
        }

        public int getCandidateScore() {
            return this.mCandidateScore;
        }

        public String getConnectChoice() {
            return this.mConnectChoice;
        }

        public long getConnectChoiceTimestamp() {
            return this.mConnectChoiceTimestamp;
        }

        public int getDisableReasonCounter(int i2) {
            if (i2 < 0 || i2 >= 13) {
                throw new IllegalArgumentException(c.d("Illegal reason value: ", i2));
            }
            return this.mNetworkSeclectionDisableCounter[i2];
        }

        public long getDisableTime() {
            return this.mTemporarilyDisabledTimestamp;
        }

        public boolean getHasEverConnected() {
            return this.mHasEverConnected;
        }

        public String getNetworkSelectionBSSID() {
            return this.mNetworkSelectionBSSID;
        }

        public int getNetworkSelectionDisableReason() {
            return this.mNetworkSelectionDisableReason;
        }

        public int getNetworkSelectionStatus() {
            return this.mStatus;
        }

        public String getNetworkStatusString() {
            return QUALITY_NETWORK_SELECTION_STATUS[this.mStatus];
        }

        public boolean getSeenInLastQualifiedNetworkSelection() {
            return this.mSeenInLastQualifiedNetworkSelection;
        }

        public void incrementDisableReasonCounter(int i2) {
            if (i2 < 0 || i2 >= 13) {
                throw new IllegalArgumentException(c.d("Illegal reason value: ", i2));
            }
            int[] iArr = this.mNetworkSeclectionDisableCounter;
            iArr[i2] = iArr[i2] + 1;
        }

        public boolean isDisabledByReason(int i2) {
            return this.mNetworkSelectionDisableReason == i2;
        }

        public boolean isNetworkEnabled() {
            return this.mStatus == 0;
        }

        public boolean isNetworkPermanentlyDisabled() {
            return this.mStatus == 2;
        }

        public boolean isNetworkTemporaryDisabled() {
            return this.mStatus == 1;
        }

        public boolean isNotRecommended() {
            return this.mNotRecommended;
        }

        public void readFromParcel(Parcel parcel) {
            setNetworkSelectionStatus(parcel.readInt());
            setNetworkSelectionDisableReason(parcel.readInt());
            for (int i2 = 0; i2 < 13; i2++) {
                setDisableReasonCounter(i2, parcel.readInt());
            }
            setDisableTime(parcel.readLong());
            setNetworkSelectionBSSID(parcel.readString());
            if (parcel.readInt() == 1) {
                setConnectChoice(parcel.readString());
                setConnectChoiceTimestamp(parcel.readLong());
            } else {
                setConnectChoice(null);
                setConnectChoiceTimestamp(-1L);
            }
            setHasEverConnected(parcel.readInt() != 0);
            setNotRecommended(parcel.readInt() != 0);
        }

        public void setCandidate(ScanResult scanResult) {
            this.mCandidate = scanResult;
        }

        public void setCandidateScore(int i2) {
            this.mCandidateScore = i2;
        }

        public void setConnectChoice(String str) {
            this.mConnectChoice = str;
        }

        public void setConnectChoiceTimestamp(long j2) {
            this.mConnectChoiceTimestamp = j2;
        }

        public void setDisableReasonCounter(int i2, int i3) {
            if (i2 < 0 || i2 >= 13) {
                throw new IllegalArgumentException(c.d("Illegal reason value: ", i2));
            }
            this.mNetworkSeclectionDisableCounter[i2] = i3;
        }

        public void setDisableTime(long j2) {
            this.mTemporarilyDisabledTimestamp = j2;
        }

        public void setHasEverConnected(boolean z2) {
            this.mHasEverConnected = z2;
        }

        public void setNetworkSelectionBSSID(String str) {
            this.mNetworkSelectionBSSID = str;
        }

        public void setNetworkSelectionDisableReason(int i2) {
            if (i2 < 0 || i2 >= 13) {
                throw new IllegalArgumentException(c.d("Illegal reason value: ", i2));
            }
            this.mNetworkSelectionDisableReason = i2;
        }

        public void setNetworkSelectionStatus(int i2) {
            if (i2 < 0 || i2 >= 3) {
                return;
            }
            this.mStatus = i2;
        }

        public void setNotRecommended(boolean z2) {
            this.mNotRecommended = z2;
        }

        public void setSeenInLastQualifiedNetworkSelection(boolean z2) {
            this.mSeenInLastQualifiedNetworkSelection = z2;
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(getNetworkSelectionStatus());
            parcel.writeInt(getNetworkSelectionDisableReason());
            for (int i2 = 0; i2 < 13; i2++) {
                parcel.writeInt(getDisableReasonCounter(i2));
            }
            parcel.writeLong(getDisableTime());
            parcel.writeString(getNetworkSelectionBSSID());
            if (getConnectChoice() != null) {
                parcel.writeInt(1);
                parcel.writeString(getConnectChoice());
                parcel.writeLong(getConnectChoiceTimestamp());
            } else {
                parcel.writeInt(-1);
            }
            parcel.writeInt(getHasEverConnected() ? 1 : 0);
            parcel.writeInt(isNotRecommended() ? 1 : 0);
        }

        public String getNetworkDisableReasonString() {
            return QUALITY_NETWORK_SELECTION_DISABLE_REASON[this.mNetworkSelectionDisableReason];
        }

        public void clearDisableReasonCounter() {
            Arrays.fill(this.mNetworkSeclectionDisableCounter, 0);
        }
    }

    public static class PairwiseCipher {
        public static final int CCMP = 2;
        public static final int NONE = 0;
        public static final int TKIP = 1;
        public static final String[] strings = {KeyProperties.DIGEST_NONE, "TKIP", "CCMP"};
        public static final String varName = "pairwise";

        private PairwiseCipher() {
        }
    }

    public static class Protocol {
        public static final int OSEN = 2;
        public static final int RSN = 1;
        public static final int WAPI = 3;
        public static final int WPA = 0;
        public static final String[] strings = {"WPA", "RSN", "OSEN", "WAPI"};
        public static final String varName = "proto";

        private Protocol() {
        }
    }

    public static class RecentFailure {
        public static final int NONE = 0;
        public static final int STATUS_AP_UNABLE_TO_HANDLE_NEW_STA = 17;
        private int mAssociationStatus = 0;

        public void clear() {
            this.mAssociationStatus = 0;
        }

        public int getAssociationStatus() {
            return this.mAssociationStatus;
        }

        public void setAssociationStatus(int i2) {
            this.mAssociationStatus = i2;
        }
    }

    public static class Status {
        public static final int CURRENT = 0;
        public static final int DISABLED = 1;
        public static final int ENABLED = 2;
        public static final String[] strings = {Telephony.Carriers.CURRENT, "disabled", "enabled"};

        private Status() {
        }
    }

    public WifiConfiguration() {
        this.apBand = 0;
        this.apChannel = 0;
        this.groupReKeyInterval = 0;
        this.dtimInterval = 0;
        this.isLegacyPasspointConfig = false;
        this.userApproved = 0;
        this.roamingFailureBlackListTimeMilli = 1000L;
        this.meteredOverride = 0;
        this.mNetworkSelectionStatus = new NetworkSelectionStatus();
        this.recentFailure = new RecentFailure();
        this.networkId = -1;
        this.SSID = null;
        this.BSSID = null;
        this.FQDN = null;
        this.roamingConsortiumIds = new long[0];
        this.priority = 0;
        this.hiddenSSID = false;
        this.allowedKeyManagement = new BitSet();
        this.allowedProtocols = new BitSet();
        this.allowedAuthAlgorithms = new BitSet();
        this.allowedPairwiseCiphers = new BitSet();
        this.allowedGroupCiphers = new BitSet();
        this.wepKeys = new String[4];
        int i2 = 0;
        while (true) {
            String[] strArr = this.wepKeys;
            if (i2 >= strArr.length) {
                this.enterpriseConfig = new WifiEnterpriseConfig();
                this.selfAdded = false;
                this.didSelfAdd = false;
                this.ephemeral = false;
                this.meteredHint = false;
                this.meteredOverride = 0;
                this.useExternalScores = false;
                this.validatedInternetAccess = false;
                this.mIpConfiguration = new IpConfiguration();
                this.lastUpdateUid = -1;
                this.creatorUid = -1;
                this.shared = true;
                this.dtimInterval = 0;
                this.wapiAsCert = null;
                this.wapiUserCert = null;
                this.wapiCertIndex = -1;
                this.wapiPskType = -1;
                this.eap_sim_slot = -1;
                return;
            }
            strArr[i2] = null;
            i2++;
        }
    }

    public static WifiConfiguration getWifiConfigFromBackup(DataInputStream dataInputStream) throws BackupUtils.BadVersionException, IOException {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        int i2 = dataInputStream.readInt();
        if (i2 < 1 || i2 > 2) {
            throw new BackupUtils.BadVersionException("Unknown Backup Serialization Version");
        }
        if (i2 == 1) {
            return null;
        }
        wifiConfiguration.SSID = BackupUtils.readString(dataInputStream);
        wifiConfiguration.apBand = dataInputStream.readInt();
        wifiConfiguration.apChannel = dataInputStream.readInt();
        wifiConfiguration.preSharedKey = BackupUtils.readString(dataInputStream);
        wifiConfiguration.allowedKeyManagement.set(dataInputStream.readInt());
        return wifiConfiguration;
    }

    public static boolean isMetered(WifiConfiguration wifiConfiguration, WifiInfo wifiInfo) {
        boolean z2 = wifiInfo != null && wifiInfo.getMeteredHint();
        if (wifiConfiguration != null && wifiConfiguration.meteredHint) {
            z2 = true;
        }
        boolean z3 = (wifiConfiguration == null || wifiConfiguration.meteredOverride != 1) ? z2 : true;
        if (wifiConfiguration == null || wifiConfiguration.meteredOverride != 2) {
            return z3;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BitSet readBitSet(Parcel parcel) {
        int i2 = parcel.readInt();
        BitSet bitSet = new BitSet();
        for (int i3 = 0; i3 < i2; i3++) {
            bitSet.set(parcel.readInt());
        }
        return bitSet;
    }

    private String trimStringForKeyId(String str) {
        return str.replace("\"", "").replace(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER, "");
    }

    public static String userApprovedAsString(int i2) {
        if (i2 == 0) {
            return "USER_UNSPECIFIED";
        }
        if (i2 != 1) {
            return i2 != 2 ? "INVALID" : "USER_BANNED";
        }
        return "USER_APPROVED";
    }

    private static void writeBitSet(Parcel parcel, BitSet bitSet) {
        parcel.writeInt(bitSet.cardinality());
        int iNextSetBit = -1;
        while (true) {
            iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
            if (iNextSetBit == -1) {
                return;
            } else {
                parcel.writeInt(iNextSetBit);
            }
        }
    }

    public String configKey(boolean z2) {
        String strN;
        String str;
        if (z2 && (str = this.mCachedConfigKey) != null) {
            return str;
        }
        if (this.providerFriendlyName != null) {
            String str2 = this.FQDN + KeyMgmt.strings[2];
            if (this.shared) {
                return str2;
            }
            StringBuilder sbU = c.u(str2, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sbU.append(Integer.toString(UserHandle.getUserId(this.creatorUid)));
            return sbU.toString();
        }
        if (this.allowedKeyManagement.get(1)) {
            strN = this.SSID + KeyMgmt.strings[1];
        } else if (this.allowedKeyManagement.get(2) || this.allowedKeyManagement.get(3)) {
            strN = this.SSID + KeyMgmt.strings[2];
        } else if (this.allowedKeyManagement.get(8)) {
            strN = this.SSID + KeyMgmt.strings[8];
        } else if (this.allowedKeyManagement.get(9)) {
            strN = this.SSID + KeyMgmt.strings[9];
        } else if (this.allowedKeyManagement.get(6)) {
            strN = this.SSID + KeyMgmt.strings[6];
        } else if (this.allowedKeyManagement.get(7)) {
            strN = this.SSID + KeyMgmt.strings[7];
        } else if (this.allowedKeyManagement.get(11)) {
            strN = this.SSID + KeyMgmt.strings[11];
        } else if (this.allowedKeyManagement.get(10)) {
            strN = this.SSID + KeyMgmt.strings[10];
        } else {
            int i2 = this.wepTxKeyIndex;
            if (i2 < 0 || this.wepKeys[i2] == null) {
                strN = this.SSID + KeyMgmt.strings[0];
            } else {
                strN = c.n(new StringBuilder(), this.SSID, "WEP");
            }
        }
        if (!this.shared) {
            StringBuilder sbU2 = c.u(strN, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sbU2.append(Integer.toString(UserHandle.getUserId(this.creatorUid)));
            strN = sbU2.toString();
        }
        this.mCachedConfigKey = strN;
        return strN;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAuthType() {
        if (this.allowedKeyManagement.cardinality() > 1) {
            throw new IllegalStateException("More than one auth type set");
        }
        if (this.allowedKeyManagement.get(1)) {
            return 1;
        }
        if (this.allowedKeyManagement.get(4)) {
            return 4;
        }
        if (this.allowedKeyManagement.get(2)) {
            return 2;
        }
        if (this.allowedKeyManagement.get(3)) {
            return 3;
        }
        if (this.allowedKeyManagement.get(10)) {
            return 10;
        }
        return this.allowedKeyManagement.get(11) ? 11 : 0;
    }

    public byte[] getBytesForBackup() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(2);
        BackupUtils.writeString(dataOutputStream, this.SSID);
        dataOutputStream.writeInt(this.apBand);
        dataOutputStream.writeInt(this.apChannel);
        BackupUtils.writeString(dataOutputStream, this.preSharedKey);
        dataOutputStream.writeInt(getAuthType());
        return byteArrayOutputStream.toByteArray();
    }

    public ProxyInfo getHttpProxy() {
        if (this.mIpConfiguration.proxySettings == IpConfiguration.ProxySettings.NONE) {
            return null;
        }
        return new ProxyInfo(this.mIpConfiguration.httpProxy);
    }

    public IpConfiguration.IpAssignment getIpAssignment() {
        return this.mIpConfiguration.ipAssignment;
    }

    public IpConfiguration getIpConfiguration() {
        return this.mIpConfiguration;
    }

    public String getKeyIdForCredentials(WifiConfiguration wifiConfiguration) {
        try {
            if (TextUtils.isEmpty(this.SSID)) {
                this.SSID = wifiConfiguration.SSID;
            }
            if (this.allowedKeyManagement.cardinality() == 0) {
                this.allowedKeyManagement = wifiConfiguration.allowedKeyManagement;
            }
            String str = this.allowedKeyManagement.get(2) ? KeyMgmt.strings[2] : null;
            if (this.allowedKeyManagement.get(5)) {
                str = KeyMgmt.strings[5];
            }
            if (this.allowedKeyManagement.get(3)) {
                str = str + KeyMgmt.strings[3];
            }
            if (this.allowedKeyManagement.get(11)) {
                str = str + KeyMgmt.strings[11];
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalStateException("Not an EAP network");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(trimStringForKeyId(this.SSID));
            sb.append(Session.SESSION_SEPARATION_CHAR_CHILD);
            sb.append(str);
            sb.append(Session.SESSION_SEPARATION_CHAR_CHILD);
            sb.append(trimStringForKeyId(this.enterpriseConfig.getKeyId(wifiConfiguration != null ? wifiConfiguration.enterpriseConfig : null)));
            return sb.toString();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("Invalid config details");
        }
    }

    public String getMoTree() {
        return this.mPasspointManagementObjectTree;
    }

    public NetworkSelectionStatus getNetworkSelectionStatus() {
        return this.mNetworkSelectionStatus;
    }

    public String getPrintableSsid() {
        String str = this.SSID;
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length > 2 && this.SSID.charAt(0) == '\"') {
            int i2 = length - 1;
            if (this.SSID.charAt(i2) == '\"') {
                return this.SSID.substring(1, i2);
            }
        }
        if (length > 3 && this.SSID.charAt(0) == 'P' && this.SSID.charAt(1) == '\"') {
            int i3 = length - 1;
            if (this.SSID.charAt(i3) == '\"') {
                return WifiSsid.createFromAsciiEncoded(this.SSID.substring(2, i3)).toString();
            }
        }
        return this.SSID;
    }

    public IpConfiguration.ProxySettings getProxySettings() {
        return this.mIpConfiguration.proxySettings;
    }

    public StaticIpConfiguration getStaticIpConfiguration() {
        return this.mIpConfiguration.getStaticIpConfiguration();
    }

    public boolean hasNoInternetAccess() {
        return this.numNoInternetAccessReports > 0 && !this.validatedInternetAccess;
    }

    public boolean isEnterprise() {
        WifiEnterpriseConfig wifiEnterpriseConfig;
        return ((!this.allowedKeyManagement.get(2) && !this.allowedKeyManagement.get(3)) || (wifiEnterpriseConfig = this.enterpriseConfig) == null || wifiEnterpriseConfig.getEapMethod() == -1) ? false : true;
    }

    public boolean isEphemeral() {
        return this.ephemeral;
    }

    public boolean isLinked(WifiConfiguration wifiConfiguration) {
        HashMap<String, Integer> map;
        return (wifiConfiguration == null || (map = wifiConfiguration.linkedConfigurations) == null || this.linkedConfigurations == null || map.get(configKey()) == null || this.linkedConfigurations.get(wifiConfiguration.configKey()) == null) ? false : true;
    }

    public boolean isNoInternetAccessExpected() {
        return this.noInternetAccessExpected;
    }

    public boolean isOpenNetwork() {
        boolean z2;
        int iCardinality = this.allowedKeyManagement.cardinality();
        boolean z3 = iCardinality == 0 || (iCardinality == 1 && this.allowedKeyManagement.get(0));
        if (this.wepKeys == null) {
            z2 = true;
            break;
        }
        int i2 = 0;
        while (true) {
            String[] strArr = this.wepKeys;
            if (i2 >= strArr.length) {
                z2 = true;
                break;
            }
            if (strArr[i2] != null) {
                z2 = false;
                break;
            }
            i2++;
        }
        return z3 && z2;
    }

    public boolean isPasspoint() {
        WifiEnterpriseConfig wifiEnterpriseConfig;
        return (TextUtils.isEmpty(this.FQDN) || TextUtils.isEmpty(this.providerFriendlyName) || (wifiEnterpriseConfig = this.enterpriseConfig) == null || wifiEnterpriseConfig.getEapMethod() == -1) ? false : true;
    }

    public void setHttpProxy(ProxyInfo proxyInfo) {
        IpConfiguration.ProxySettings proxySettings;
        ProxyInfo proxyInfo2;
        if (proxyInfo == null) {
            this.mIpConfiguration.setProxySettings(IpConfiguration.ProxySettings.NONE);
            this.mIpConfiguration.setHttpProxy(null);
            return;
        }
        if (Uri.EMPTY.equals(proxyInfo.getPacFileUrl())) {
            proxySettings = IpConfiguration.ProxySettings.STATIC;
            proxyInfo2 = new ProxyInfo(proxyInfo.getHost(), proxyInfo.getPort(), proxyInfo.getExclusionListAsString());
        } else {
            proxySettings = IpConfiguration.ProxySettings.PAC;
            proxyInfo2 = new ProxyInfo(proxyInfo.getPacFileUrl(), proxyInfo.getPort());
        }
        if (proxyInfo2.isValid()) {
            this.mIpConfiguration.setProxySettings(proxySettings);
            this.mIpConfiguration.setHttpProxy(proxyInfo2);
        } else {
            throw new IllegalArgumentException("Invalid ProxyInfo: " + proxyInfo2.toString());
        }
    }

    public void setIpAssignment(IpConfiguration.IpAssignment ipAssignment) {
        this.mIpConfiguration.ipAssignment = ipAssignment;
    }

    public void setIpConfiguration(IpConfiguration ipConfiguration) {
        this.mIpConfiguration = ipConfiguration;
    }

    public void setNetworkSelectionStatus(NetworkSelectionStatus networkSelectionStatus) {
        this.mNetworkSelectionStatus = networkSelectionStatus;
    }

    public void setPasspointManagementObjectTree(String str) {
        this.mPasspointManagementObjectTree = str;
    }

    public void setProxy(IpConfiguration.ProxySettings proxySettings, ProxyInfo proxyInfo) {
        IpConfiguration ipConfiguration = this.mIpConfiguration;
        ipConfiguration.proxySettings = proxySettings;
        ipConfiguration.httpProxy = proxyInfo;
    }

    public void setProxySettings(IpConfiguration.ProxySettings proxySettings) {
        this.mIpConfiguration.proxySettings = proxySettings;
    }

    public void setStaticIpConfiguration(StaticIpConfiguration staticIpConfiguration) {
        this.mIpConfiguration.setStaticIpConfiguration(staticIpConfiguration);
    }

    public void setVisibility(Visibility visibility) {
        this.visibility = visibility;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.status;
        if (i2 == 0) {
            sb.append("* ");
        } else if (i2 == 1) {
            sb.append("- DSBLE ");
        }
        sb.append("ID: ");
        sb.append(this.networkId);
        sb.append(" SSID: ");
        sb.append(this.SSID);
        sb.append(" PROVIDER-NAME: ");
        sb.append(this.providerFriendlyName);
        sb.append(" BSSID: ");
        sb.append(this.BSSID);
        sb.append(" FQDN: ");
        sb.append(this.FQDN);
        sb.append(" PRIO: ");
        sb.append(this.priority);
        sb.append(" HIDDEN: ");
        sb.append(this.hiddenSSID);
        sb.append("\n NetworkSelectionStatus ");
        sb.append(this.mNetworkSelectionStatus.getNetworkStatusString() + "\n");
        if (this.mNetworkSelectionStatus.getNetworkSelectionDisableReason() > 0) {
            sb.append(" mNetworkSelectionDisableReason ");
            sb.append(this.mNetworkSelectionStatus.getNetworkDisableReasonString() + "\n");
            int i3 = 0;
            while (true) {
                NetworkSelectionStatus networkSelectionStatus = this.mNetworkSelectionStatus;
                if (i3 >= 13) {
                    break;
                }
                if (networkSelectionStatus.getDisableReasonCounter(i3) != 0) {
                    sb.append(NetworkSelectionStatus.getNetworkDisableReasonString(i3) + " counter:" + this.mNetworkSelectionStatus.getDisableReasonCounter(i3) + "\n");
                }
                i3++;
            }
        }
        if (this.mNetworkSelectionStatus.getConnectChoice() != null) {
            sb.append(" connect choice: ");
            sb.append(this.mNetworkSelectionStatus.getConnectChoice());
            sb.append(" connect choice set time: ");
            sb.append(this.mNetworkSelectionStatus.getConnectChoiceTimestamp());
        }
        sb.append(" hasEverConnected: ");
        sb.append(this.mNetworkSelectionStatus.getHasEverConnected());
        sb.append("\n");
        if (this.numAssociation > 0) {
            sb.append(" numAssociation ");
            sb.append(this.numAssociation);
            sb.append("\n");
        }
        if (this.numNoInternetAccessReports > 0) {
            sb.append(" numNoInternetAccessReports ");
            sb.append(this.numNoInternetAccessReports);
            sb.append("\n");
        }
        if (this.updateTime != null) {
            sb.append(" update ");
            sb.append(this.updateTime);
            sb.append("\n");
        }
        if (this.creationTime != null) {
            sb.append(" creation ");
            sb.append(this.creationTime);
            sb.append("\n");
        }
        if (this.didSelfAdd) {
            sb.append(" didSelfAdd");
        }
        if (this.selfAdded) {
            sb.append(" selfAdded");
        }
        if (this.validatedInternetAccess) {
            sb.append(" validatedInternetAccess");
        }
        if (this.ephemeral) {
            sb.append(" ephemeral");
        }
        if (this.meteredHint) {
            sb.append(" meteredHint");
        }
        if (this.useExternalScores) {
            sb.append(" useExternalScores");
        }
        if (this.didSelfAdd || this.selfAdded || this.validatedInternetAccess || this.ephemeral || this.meteredHint || this.useExternalScores) {
            sb.append("\n");
        }
        if (this.meteredOverride != 0) {
            sb.append(" meteredOverride ");
            sb.append(this.meteredOverride);
            sb.append("\n");
        }
        sb.append(" KeyMgmt:");
        for (int i4 = 0; i4 < this.allowedKeyManagement.size(); i4++) {
            if (this.allowedKeyManagement.get(i4)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String[] strArr = KeyMgmt.strings;
                if (i4 < strArr.length) {
                    sb.append(strArr[i4]);
                } else {
                    sb.append("??");
                }
            }
        }
        sb.append(" Protocols:");
        for (int i5 = 0; i5 < this.allowedProtocols.size(); i5++) {
            if (this.allowedProtocols.get(i5)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String[] strArr2 = Protocol.strings;
                if (i5 < strArr2.length) {
                    sb.append(strArr2[i5]);
                } else {
                    sb.append("??");
                }
            }
        }
        sb.append("\n AuthAlgorithms:");
        for (int i6 = 0; i6 < this.allowedAuthAlgorithms.size(); i6++) {
            if (this.allowedAuthAlgorithms.get(i6)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String[] strArr3 = AuthAlgorithm.strings;
                if (i6 < strArr3.length) {
                    sb.append(strArr3[i6]);
                } else {
                    sb.append("??");
                }
            }
        }
        sb.append("\n PairwiseCiphers:");
        for (int i7 = 0; i7 < this.allowedPairwiseCiphers.size(); i7++) {
            if (this.allowedPairwiseCiphers.get(i7)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String[] strArr4 = PairwiseCipher.strings;
                if (i7 < strArr4.length) {
                    sb.append(strArr4[i7]);
                } else {
                    sb.append("??");
                }
            }
        }
        sb.append("\n GroupCiphers:");
        for (int i8 = 0; i8 < this.allowedGroupCiphers.size(); i8++) {
            if (this.allowedGroupCiphers.get(i8)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String[] strArr5 = GroupCipher.strings;
                if (i8 < strArr5.length) {
                    sb.append(strArr5[i8]);
                } else {
                    sb.append("??");
                }
            }
        }
        sb.append("\n PSK: ");
        if (this.preSharedKey != null) {
            sb.append('*');
        }
        sb.append("\nEnterprise config:\n");
        sb.append(this.enterpriseConfig);
        sb.append("IP config:\n");
        sb.append(this.mIpConfiguration.toString());
        if (this.mNetworkSelectionStatus.getNetworkSelectionBSSID() != null) {
            sb.append(" networkSelectionBSSID=" + this.mNetworkSelectionStatus.getNetworkSelectionBSSID());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mNetworkSelectionStatus.getDisableTime() != -1) {
            sb.append('\n');
            long disableTime = jCurrentTimeMillis - this.mNetworkSelectionStatus.getDisableTime();
            if (disableTime <= 0) {
                sb.append(" blackListed since <incorrect>");
            } else {
                sb.append(" blackListed: ");
                sb.append(Long.toString(disableTime / 1000));
                sb.append("sec ");
            }
        }
        if (this.creatorUid != 0) {
            sb.append(" cuid=" + this.creatorUid);
        }
        if (this.creatorName != null) {
            sb.append(" cname=" + this.creatorName);
        }
        if (this.lastUpdateUid != 0) {
            sb.append(" luid=" + this.lastUpdateUid);
        }
        if (this.lastUpdateName != null) {
            sb.append(" lname=" + this.lastUpdateName);
        }
        StringBuilder sbM = m.m(new StringBuilder(" lcuid="), this.lastConnectUid, sb, " userApproved=");
        sbM.append(userApprovedAsString(this.userApproved));
        sb.append(sbM.toString());
        sb.append(" noInternetAccessExpected=" + this.noInternetAccessExpected);
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        if (this.lastConnected != 0) {
            sb.append('\n');
            long j2 = jCurrentTimeMillis - this.lastConnected;
            if (j2 <= 0) {
                sb.append("lastConnected since <incorrect>");
            } else {
                sb.append("lastConnected: ");
                sb.append(Long.toString(j2 / 1000));
                sb.append("sec ");
            }
        }
        if (this.lastConnectionFailure != 0) {
            sb.append('\n');
            long j3 = jCurrentTimeMillis - this.lastConnectionFailure;
            if (j3 <= 0) {
                sb.append("lastConnectionFailure since <incorrect> ");
            } else {
                sb.append("lastConnectionFailure: ");
                sb.append(Long.toString(j3 / 1000));
                sb.append("sec ");
            }
        }
        if (this.lastRoamingFailure != 0) {
            sb.append('\n');
            long j4 = jCurrentTimeMillis - this.lastRoamingFailure;
            if (j4 <= 0) {
                sb.append("lastRoamingFailure since <incorrect> ");
            } else {
                sb.append("lastRoamingFailure: ");
                sb.append(Long.toString(j4 / 1000));
                sb.append("sec ");
            }
        }
        sb.append("roamingFailureBlackListTimeMilli: ");
        sb.append(Long.toString(this.roamingFailureBlackListTimeMilli));
        sb.append('\n');
        HashMap<String, Integer> map = this.linkedConfigurations;
        if (map != null) {
            for (String str : map.keySet()) {
                sb.append(" linked: ");
                sb.append(str);
                sb.append('\n');
            }
        }
        sb.append("recentFailure: Association Rejection code: ");
        sb.append(this.recentFailure.getAssociationStatus());
        sb.append("\n");
        if (this.wapiAsCert != null) {
            sb.append(" WapiAsCert: ");
            sb.append(this.wapiAsCert);
        }
        sb.append('\n');
        if (this.wapiUserCert != null) {
            sb.append(" WapiUserCert: ");
            sb.append(this.wapiUserCert);
        }
        sb.append('\n');
        if (this.wapiCertIndex != -1) {
            sb.append(" WapiCertIndex: ");
            sb.append(this.wapiCertIndex);
        }
        sb.append('\n');
        if (this.wapiPskType != -1) {
            sb.append(" WapiPskType: ");
            sb.append(this.wapiPskType);
        }
        sb.append('\n');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.networkId);
        parcel.writeInt(this.status);
        this.mNetworkSelectionStatus.writeToParcel(parcel);
        parcel.writeString(this.SSID);
        parcel.writeString(this.BSSID);
        parcel.writeInt(this.apBand);
        parcel.writeInt(this.apChannel);
        parcel.writeInt(this.softApMaxNumSta);
        parcel.writeInt(this.groupReKeyInterval);
        parcel.writeString(this.FQDN);
        parcel.writeString(this.providerFriendlyName);
        parcel.writeInt(this.isHomeProviderNetwork ? 1 : 0);
        parcel.writeInt(this.roamingConsortiumIds.length);
        for (long j2 : this.roamingConsortiumIds) {
            parcel.writeLong(j2);
        }
        parcel.writeString(this.preSharedKey);
        for (String str : this.wepKeys) {
            parcel.writeString(str);
        }
        parcel.writeInt(this.wepTxKeyIndex);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.hiddenSSID ? 1 : 0);
        parcel.writeInt(this.requirePMF ? 1 : 0);
        parcel.writeString(this.updateIdentifier);
        writeBitSet(parcel, this.allowedKeyManagement);
        writeBitSet(parcel, this.allowedProtocols);
        writeBitSet(parcel, this.allowedAuthAlgorithms);
        writeBitSet(parcel, this.allowedPairwiseCiphers);
        writeBitSet(parcel, this.allowedGroupCiphers);
        parcel.writeParcelable(this.enterpriseConfig, i2);
        parcel.writeParcelable(this.mIpConfiguration, i2);
        parcel.writeString(this.dhcpServer);
        parcel.writeString(this.defaultGwMacAddress);
        parcel.writeInt(this.selfAdded ? 1 : 0);
        parcel.writeInt(this.didSelfAdd ? 1 : 0);
        parcel.writeInt(this.validatedInternetAccess ? 1 : 0);
        parcel.writeInt(this.isLegacyPasspointConfig ? 1 : 0);
        parcel.writeInt(this.ephemeral ? 1 : 0);
        parcel.writeInt(this.meteredHint ? 1 : 0);
        parcel.writeInt(this.meteredOverride);
        parcel.writeInt(this.useExternalScores ? 1 : 0);
        parcel.writeInt(this.creatorUid);
        parcel.writeInt(this.lastConnectUid);
        parcel.writeInt(this.lastUpdateUid);
        parcel.writeString(this.creatorName);
        parcel.writeString(this.lastUpdateName);
        parcel.writeLong(this.lastConnectionFailure);
        parcel.writeLong(this.lastRoamingFailure);
        parcel.writeInt(this.lastRoamingFailureReason);
        parcel.writeLong(this.roamingFailureBlackListTimeMilli);
        parcel.writeInt(this.numScorerOverride);
        parcel.writeInt(this.numScorerOverrideAndSwitchedNetwork);
        parcel.writeInt(this.numAssociation);
        parcel.writeInt(this.userApproved);
        parcel.writeInt(this.numNoInternetAccessReports);
        parcel.writeInt(this.noInternetAccessExpected ? 1 : 0);
        parcel.writeInt(this.shared ? 1 : 0);
        parcel.writeString(this.mPasspointManagementObjectTree);
        parcel.writeInt(this.recentFailure.getAssociationStatus());
        if (this.allowedKeyManagement.get(10)) {
            parcel.writeInt(this.wapiPskType);
        } else if (this.allowedKeyManagement.get(11)) {
            parcel.writeString(this.wapiAsCert);
            parcel.writeString(this.wapiUserCert);
            parcel.writeInt(this.wapiCertIndex);
        }
        parcel.writeInt(this.eap_sim_slot);
    }

    public static final class Visibility {
        public String BSSID24;
        public String BSSID5;
        public long age24;
        public long age5;
        public int bandPreferenceBoost;
        public int currentNetworkBoost;
        public int lastChoiceBoost;
        public String lastChoiceConfig;
        public int num24;
        public int num5;
        public int rssi24;
        public int rssi5;
        public int score;

        public Visibility() {
            int i2 = WifiConfiguration.INVALID_RSSI;
            this.rssi5 = i2;
            this.rssi24 = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            int i2 = this.rssi24;
            if (i2 > WifiConfiguration.INVALID_RSSI) {
                sb.append(Integer.toString(i2));
                sb.append(",");
                sb.append(Integer.toString(this.num24));
                if (this.BSSID24 != null) {
                    sb.append(",");
                    sb.append(this.BSSID24);
                }
            }
            sb.append("; ");
            int i3 = this.rssi5;
            if (i3 > WifiConfiguration.INVALID_RSSI) {
                sb.append(Integer.toString(i3));
                sb.append(",");
                sb.append(Integer.toString(this.num5));
                if (this.BSSID5 != null) {
                    sb.append(",");
                    sb.append(this.BSSID5);
                }
            }
            if (this.score != 0) {
                sb.append("; ");
                sb.append(this.score);
                sb.append(", ");
                sb.append(this.currentNetworkBoost);
                sb.append(", ");
                sb.append(this.bandPreferenceBoost);
                if (this.lastChoiceConfig != null) {
                    sb.append(", ");
                    sb.append(this.lastChoiceBoost);
                    sb.append(", ");
                    sb.append(this.lastChoiceConfig);
                }
            }
            sb.append("]");
            return sb.toString();
        }

        public Visibility(Visibility visibility) {
            this.rssi5 = visibility.rssi5;
            this.rssi24 = visibility.rssi24;
            this.age24 = visibility.age24;
            this.age5 = visibility.age5;
            this.num24 = visibility.num24;
            this.num5 = visibility.num5;
            this.BSSID5 = visibility.BSSID5;
            this.BSSID24 = visibility.BSSID24;
        }
    }

    public String configKey() {
        return configKey(false);
    }

    public WifiConfiguration(WifiConfiguration wifiConfiguration) {
        int i2 = 0;
        this.apBand = 0;
        this.apChannel = 0;
        this.groupReKeyInterval = 0;
        this.dtimInterval = 0;
        this.isLegacyPasspointConfig = false;
        this.userApproved = 0;
        this.roamingFailureBlackListTimeMilli = 1000L;
        this.meteredOverride = 0;
        this.mNetworkSelectionStatus = new NetworkSelectionStatus();
        this.recentFailure = new RecentFailure();
        if (wifiConfiguration != null) {
            this.networkId = wifiConfiguration.networkId;
            this.status = wifiConfiguration.status;
            this.SSID = wifiConfiguration.SSID;
            this.BSSID = wifiConfiguration.BSSID;
            this.FQDN = wifiConfiguration.FQDN;
            this.roamingConsortiumIds = (long[]) wifiConfiguration.roamingConsortiumIds.clone();
            this.providerFriendlyName = wifiConfiguration.providerFriendlyName;
            this.isHomeProviderNetwork = wifiConfiguration.isHomeProviderNetwork;
            this.preSharedKey = wifiConfiguration.preSharedKey;
            this.mNetworkSelectionStatus.copy(wifiConfiguration.getNetworkSelectionStatus());
            this.apBand = wifiConfiguration.apBand;
            this.apChannel = wifiConfiguration.apChannel;
            this.softApMaxNumSta = wifiConfiguration.softApMaxNumSta;
            this.groupReKeyInterval = wifiConfiguration.groupReKeyInterval;
            this.wepKeys = new String[4];
            while (true) {
                String[] strArr = this.wepKeys;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = wifiConfiguration.wepKeys[i2];
                i2++;
            }
            this.wepTxKeyIndex = wifiConfiguration.wepTxKeyIndex;
            this.priority = wifiConfiguration.priority;
            this.hiddenSSID = wifiConfiguration.hiddenSSID;
            this.requirePMF = wifiConfiguration.requirePMF;
            this.allowedKeyManagement = (BitSet) wifiConfiguration.allowedKeyManagement.clone();
            this.allowedProtocols = (BitSet) wifiConfiguration.allowedProtocols.clone();
            this.allowedAuthAlgorithms = (BitSet) wifiConfiguration.allowedAuthAlgorithms.clone();
            this.allowedPairwiseCiphers = (BitSet) wifiConfiguration.allowedPairwiseCiphers.clone();
            this.allowedGroupCiphers = (BitSet) wifiConfiguration.allowedGroupCiphers.clone();
            this.enterpriseConfig = new WifiEnterpriseConfig(wifiConfiguration.enterpriseConfig);
            this.defaultGwMacAddress = wifiConfiguration.defaultGwMacAddress;
            this.mIpConfiguration = new IpConfiguration(wifiConfiguration.mIpConfiguration);
            HashMap<String, Integer> map = wifiConfiguration.linkedConfigurations;
            if (map != null && map.size() > 0) {
                HashMap<String, Integer> map2 = new HashMap<>();
                this.linkedConfigurations = map2;
                map2.putAll(wifiConfiguration.linkedConfigurations);
            }
            this.mCachedConfigKey = null;
            this.selfAdded = wifiConfiguration.selfAdded;
            this.validatedInternetAccess = wifiConfiguration.validatedInternetAccess;
            this.isLegacyPasspointConfig = wifiConfiguration.isLegacyPasspointConfig;
            this.ephemeral = wifiConfiguration.ephemeral;
            this.meteredHint = wifiConfiguration.meteredHint;
            this.meteredOverride = wifiConfiguration.meteredOverride;
            this.useExternalScores = wifiConfiguration.useExternalScores;
            Visibility visibility = wifiConfiguration.visibility;
            if (visibility != null) {
                this.visibility = new Visibility(visibility);
            }
            this.didSelfAdd = wifiConfiguration.didSelfAdd;
            this.lastConnectUid = wifiConfiguration.lastConnectUid;
            this.lastUpdateUid = wifiConfiguration.lastUpdateUid;
            this.creatorUid = wifiConfiguration.creatorUid;
            this.creatorName = wifiConfiguration.creatorName;
            this.lastUpdateName = wifiConfiguration.lastUpdateName;
            this.peerWifiConfiguration = wifiConfiguration.peerWifiConfiguration;
            this.lastConnected = wifiConfiguration.lastConnected;
            this.lastDisconnected = wifiConfiguration.lastDisconnected;
            this.lastConnectionFailure = wifiConfiguration.lastConnectionFailure;
            this.lastRoamingFailure = wifiConfiguration.lastRoamingFailure;
            this.lastRoamingFailureReason = wifiConfiguration.lastRoamingFailureReason;
            this.roamingFailureBlackListTimeMilli = wifiConfiguration.roamingFailureBlackListTimeMilli;
            this.numScorerOverride = wifiConfiguration.numScorerOverride;
            this.numScorerOverrideAndSwitchedNetwork = wifiConfiguration.numScorerOverrideAndSwitchedNetwork;
            this.numAssociation = wifiConfiguration.numAssociation;
            this.userApproved = wifiConfiguration.userApproved;
            this.numNoInternetAccessReports = wifiConfiguration.numNoInternetAccessReports;
            this.noInternetAccessExpected = wifiConfiguration.noInternetAccessExpected;
            this.creationTime = wifiConfiguration.creationTime;
            this.updateTime = wifiConfiguration.updateTime;
            this.shared = wifiConfiguration.shared;
            this.recentFailure.setAssociationStatus(wifiConfiguration.recentFailure.getAssociationStatus());
            this.wapiAsCert = wifiConfiguration.wapiAsCert;
            this.wapiUserCert = wifiConfiguration.wapiUserCert;
            this.wapiCertIndex = wifiConfiguration.wapiCertIndex;
            this.wapiPskType = wifiConfiguration.wapiPskType;
            this.eap_sim_slot = wifiConfiguration.eap_sim_slot;
        }
    }
}
