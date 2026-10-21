package com.android.server.wifi;

import android.R;
import android.app.ActivityManager;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.IpConfiguration;
import android.net.MacAddress;
import android.net.ProxyInfo;
import android.net.StaticIpConfiguration;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiScanner;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.hotspot2.PasspointManager;
import com.android.server.wifi.util.NativeUtil;
import com.android.server.wifi.util.TelephonyUtil;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class WifiConfigManager {

    @VisibleForTesting
    public static final long DELETED_EPHEMERAL_SSID_EXPIRY_MS = 86400000;

    @VisibleForTesting
    public static final int LINK_CONFIGURATION_BSSID_MATCH_LENGTH = 16;

    @VisibleForTesting
    public static final int LINK_CONFIGURATION_MAX_SCAN_CACHE_ENTRIES = 6;

    @VisibleForTesting
    public static final long MAX_PNO_SCAN_FREQUENCY_AGE_MS = 2592000000L;

    @VisibleForTesting
    public static final String PASSWORD_MASK = "*";

    @VisibleForTesting
    public static final int SCAN_CACHE_ENTRIES_MAX_SIZE = 192;

    @VisibleForTesting
    public static final int SCAN_CACHE_ENTRIES_TRIM_SIZE = 128;
    private static final int SCAN_RESULT_MAXIMUM_AGE_MS = 40000;

    @VisibleForTesting
    public static final String SYSUI_PACKAGE_NAME = "com.android.systemui";
    private static final String TAG = "WifiConfigManager";
    private static final int WIFI_PNO_FREQUENCY_CULLING_ENABLED_DEFAULT = 1;
    private static final int WIFI_PNO_RECENCY_SORTING_ENABLED_DEFAULT = 1;
    private final BackupManagerProxy mBackupManagerProxy;
    private final Clock mClock;
    private final ConfigurationMap mConfiguredNetworks;
    private final Context mContext;
    private int mCurrentUserId;
    private boolean mDeferredUserUnlockRead;
    private final DeletedEphemeralSsidsStoreData mDeletedEphemeralSsidsStoreData;
    private final Map<String, Long> mDeletedEphemeralSsidsToTimeMap;
    private final FrameworkFacade mFrameworkFacade;
    private int mLastSelectedNetworkId;
    private long mLastSelectedTimeStamp;
    private OnSavedNetworkUpdateListener mListener;
    private final LocalLog mLocalLog;
    private final int mMaxNumActiveChannelsForPartialScans;
    private final NetworkListSharedStoreData mNetworkListSharedStoreData;
    private final NetworkListUserStoreData mNetworkListUserStoreData;
    private int mNextNetworkId;
    private final boolean mOnlyLinkSameCredentialConfigurations;
    private boolean mPendingStoreRead;
    private boolean mPendingUnlockStoreRead;
    private boolean mPnoFrequencyCullingEnabled;
    private boolean mPnoRecencySortingEnabled;
    private final Map<String, String> mRandomizedMacAddressMapping;
    private final RandomizedMacStoreData mRandomizedMacStoreData;
    private final Map<Integer, ScanDetailCache> mScanDetailCaches;
    private boolean mSim1Present;
    private boolean mSim2Present;
    private int mSystemUiUid;
    private final TelephonyManager mTelephonyManager;
    private final UserManager mUserManager;
    private boolean mVerboseLoggingEnabled;
    private final WifiConfigStore mWifiConfigStore;
    private final WifiInjector mWifiInjector;
    private final WifiKeyStore mWifiKeyStore;
    private final WifiPermissionsUtil mWifiPermissionsUtil;
    private final WifiPermissionsWrapper mWifiPermissionsWrapper;

    @VisibleForTesting
    public static final int[] NETWORK_SELECTION_DISABLE_THRESHOLD = {-1, 1, 5, 5, 5, 5, 1, 1, 6, 1, 1, 1, 1, 1, 1};

    @VisibleForTesting
    public static final int[] NETWORK_SELECTION_DISABLE_TIMEOUT_MS = {ScoringParams.Values.MAX_EXPID, 900000, WifiConnectivityManager.BSSID_BLACKLIST_EXPIRE_TIME_MS, WifiConnectivityManager.BSSID_BLACKLIST_EXPIRE_TIME_MS, WifiConnectivityManager.BSSID_BLACKLIST_EXPIRE_TIME_MS, WifiConnectivityManager.BSSID_BLACKLIST_EXPIRE_TIME_MS, 600000, 0, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID, ScoringParams.Values.MAX_EXPID};
    private static final MacAddress DEFAULT_MAC_ADDRESS = MacAddress.fromString("02:00:00:00:00:00");
    private static final WifiConfigurationUtil.WifiConfigurationComparator sScanListComparator = new WifiConfigurationUtil.WifiConfigurationComparator() { // from class: com.android.server.wifi.WifiConfigManager.1
        @Override // com.android.server.wifi.WifiConfigurationUtil.WifiConfigurationComparator
        public int compareNetworksWithSameStatus(WifiConfiguration a, WifiConfiguration b) {
            if (a.numAssociation != b.numAssociation) {
                return Long.compare(b.numAssociation, a.numAssociation);
            }
            boolean isConfigALastSeen = a.getNetworkSelectionStatus().getSeenInLastQualifiedNetworkSelection();
            boolean isConfigBLastSeen = b.getNetworkSelectionStatus().getSeenInLastQualifiedNetworkSelection();
            return Boolean.compare(isConfigBLastSeen, isConfigALastSeen);
        }
    };

    public interface OnSavedNetworkUpdateListener {
        void onSavedNetworkAdded(int i);

        void onSavedNetworkEnabled(int i);

        void onSavedNetworkPermanentlyDisabled(int i, int i2);

        void onSavedNetworkRemoved(int i);

        void onSavedNetworkTemporarilyDisabled(int i, int i2);

        void onSavedNetworkUpdated(int i);
    }

    WifiConfigManager(Context context, Clock clock, UserManager userManager, TelephonyManager telephonyManager, WifiKeyStore wifiKeyStore, WifiConfigStore wifiConfigStore, WifiPermissionsUtil wifiPermissionsUtil, WifiPermissionsWrapper wifiPermissionsWrapper, WifiInjector wifiInjector, NetworkListSharedStoreData networkListSharedStoreData, NetworkListUserStoreData networkListUserStoreData, DeletedEphemeralSsidsStoreData deletedEphemeralSsidsStoreData, RandomizedMacStoreData randomizedMacStoreData, FrameworkFacade frameworkFacade, Looper looper) {
        this.mLocalLog = new LocalLog(ActivityManager.isLowRamDeviceStatic() ? 128 : 256);
        this.mVerboseLoggingEnabled = false;
        this.mCurrentUserId = 0;
        this.mPendingUnlockStoreRead = true;
        this.mPendingStoreRead = true;
        this.mDeferredUserUnlockRead = false;
        this.mSim1Present = false;
        this.mSim2Present = false;
        this.mNextNetworkId = 0;
        this.mSystemUiUid = -1;
        this.mLastSelectedNetworkId = -1;
        this.mLastSelectedTimeStamp = -1L;
        this.mListener = null;
        this.mPnoFrequencyCullingEnabled = false;
        this.mPnoRecencySortingEnabled = false;
        this.mContext = context;
        this.mClock = clock;
        this.mUserManager = userManager;
        this.mBackupManagerProxy = new BackupManagerProxy();
        this.mTelephonyManager = telephonyManager;
        this.mWifiKeyStore = wifiKeyStore;
        this.mWifiConfigStore = wifiConfigStore;
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        this.mWifiPermissionsWrapper = wifiPermissionsWrapper;
        this.mWifiInjector = wifiInjector;
        this.mConfiguredNetworks = new ConfigurationMap(userManager);
        this.mScanDetailCaches = new HashMap(16, 0.75f);
        this.mDeletedEphemeralSsidsToTimeMap = new HashMap();
        this.mRandomizedMacAddressMapping = new HashMap();
        this.mNetworkListSharedStoreData = networkListSharedStoreData;
        this.mNetworkListUserStoreData = networkListUserStoreData;
        this.mDeletedEphemeralSsidsStoreData = deletedEphemeralSsidsStoreData;
        this.mRandomizedMacStoreData = randomizedMacStoreData;
        this.mWifiConfigStore.registerStoreData(this.mNetworkListSharedStoreData);
        this.mWifiConfigStore.registerStoreData(this.mNetworkListUserStoreData);
        this.mWifiConfigStore.registerStoreData(this.mDeletedEphemeralSsidsStoreData);
        this.mWifiConfigStore.registerStoreData(this.mRandomizedMacStoreData);
        this.mOnlyLinkSameCredentialConfigurations = this.mContext.getResources().getBoolean(R.bool.config_cecTvSendStandbyOnSleep_userConfigurable);
        this.mMaxNumActiveChannelsForPartialScans = this.mContext.getResources().getInteger(R.integer.config_mediaRouter_builtInSpeakerSuitability);
        this.mFrameworkFacade = frameworkFacade;
        this.mFrameworkFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_pno_frequency_culling_enabled"), false, new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.WifiConfigManager.2
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                WifiConfigManager.this.updatePnoFrequencyCullingSetting();
            }
        });
        updatePnoFrequencyCullingSetting();
        this.mFrameworkFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_pno_recency_sorting_enabled"), false, new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.WifiConfigManager.3
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                WifiConfigManager.this.updatePnoRecencySortingSetting();
            }
        });
        updatePnoRecencySortingSetting();
        try {
            this.mSystemUiUid = this.mContext.getPackageManager().getPackageUidAsUser(SYSUI_PACKAGE_NAME, 1048576, 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Unable to resolve SystemUI's UID.");
        }
    }

    @VisibleForTesting
    public static String createDebugTimeStampString(long wallClockMillis) {
        StringBuilder sb = new StringBuilder();
        sb.append("time=");
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(wallClockMillis);
        sb.append(String.format("%tm-%td %tH:%tM:%tS.%tL", c, c, c, c, c, c));
        return sb.toString();
    }

    @VisibleForTesting
    protected int getRandomizedMacAddressMappingSize() {
        return this.mRandomizedMacAddressMapping.size();
    }

    private MacAddress getPersistentMacAddress(WifiConfiguration config) {
        String persistentMacString = this.mRandomizedMacAddressMapping.get(config.getSsidAndSecurityTypeString());
        if (persistentMacString != null) {
            try {
                return MacAddress.fromString(persistentMacString);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Error creating randomized MAC address from stored value.");
                this.mRandomizedMacAddressMapping.remove(config.getSsidAndSecurityTypeString());
            }
        }
        MacAddress result = WifiConfigurationUtil.calculatePersistentMacForConfiguration(config, WifiConfigurationUtil.obtainMacRandHashFunction(1010));
        if (result == null) {
            result = WifiConfigurationUtil.calculatePersistentMacForConfiguration(config, WifiConfigurationUtil.obtainMacRandHashFunction(1010));
        }
        if (result == null) {
            Log.wtf(TAG, "Failed to generate MAC address from KeyStore even after retrying. Using locally generated MAC address instead.");
            return MacAddress.createRandomUnicastAddress();
        }
        return result;
    }

    private MacAddress setRandomizedMacToPersistentMac(WifiConfiguration config) {
        MacAddress persistentMac = getPersistentMacAddress(config);
        if (persistentMac == null || persistentMac.equals(config.getRandomizedMacAddress())) {
            return persistentMac;
        }
        WifiConfiguration internalConfig = getInternalConfiguredNetwork(config.networkId);
        internalConfig.setRandomizedMacAddress(persistentMac);
        return persistentMac;
    }

    public void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.mVerboseLoggingEnabled = true;
        } else {
            this.mVerboseLoggingEnabled = false;
        }
        this.mWifiConfigStore.enableVerboseLogging(this.mVerboseLoggingEnabled);
        this.mWifiKeyStore.enableVerboseLogging(this.mVerboseLoggingEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePnoFrequencyCullingSetting() {
        int flag = this.mFrameworkFacade.getIntegerSetting(this.mContext, "wifi_pno_frequency_culling_enabled", 1);
        this.mPnoFrequencyCullingEnabled = flag == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePnoRecencySortingSetting() {
        int flag = this.mFrameworkFacade.getIntegerSetting(this.mContext, "wifi_pno_recency_sorting_enabled", 1);
        this.mPnoRecencySortingEnabled = flag == 1;
    }

    private void maskPasswordsInWifiConfiguration(WifiConfiguration configuration) {
        if (!TextUtils.isEmpty(configuration.preSharedKey)) {
            configuration.preSharedKey = "*";
        }
        if (configuration.wepKeys != null) {
            for (int i = 0; i < configuration.wepKeys.length; i++) {
                if (!TextUtils.isEmpty(configuration.wepKeys[i])) {
                    configuration.wepKeys[i] = "*";
                }
            }
        }
        if (!TextUtils.isEmpty(configuration.enterpriseConfig.getPassword())) {
            configuration.enterpriseConfig.setPassword("*");
        }
    }

    private void maskRandomizedMacAddressInWifiConfiguration(WifiConfiguration configuration) {
        configuration.setRandomizedMacAddress(DEFAULT_MAC_ADDRESS);
    }

    private WifiConfiguration createExternalWifiConfiguration(WifiConfiguration configuration, boolean maskPasswords, int targetUid) {
        WifiConfiguration network = new WifiConfiguration(configuration);
        if (maskPasswords) {
            maskPasswordsInWifiConfiguration(network);
        }
        if (targetUid != 1010 && targetUid != 1000 && targetUid != configuration.creatorUid) {
            maskRandomizedMacAddressInWifiConfiguration(network);
        }
        return network;
    }

    private List<WifiConfiguration> getConfiguredNetworks(boolean savedOnly, boolean maskPasswords, int targetUid) {
        List<WifiConfiguration> networks = new ArrayList<>();
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (!savedOnly || (!config.ephemeral && !config.isPasspoint())) {
                networks.add(createExternalWifiConfiguration(config, maskPasswords, targetUid));
            }
        }
        return networks;
    }

    public List<WifiConfiguration> getConfiguredNetworks() {
        return getConfiguredNetworks(false, true, 1010);
    }

    public List<WifiConfiguration> getConfiguredNetworksWithPasswords() {
        return getConfiguredNetworks(false, false, 1010);
    }

    public List<WifiConfiguration> getSavedNetworks(int targetUid) {
        return getConfiguredNetworks(true, true, targetUid);
    }

    public WifiConfiguration getConfiguredNetwork(int networkId) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return null;
        }
        return createExternalWifiConfiguration(config, true, 1010);
    }

    public WifiConfiguration getConfiguredNetwork(String configKey) {
        WifiConfiguration config = getInternalConfiguredNetwork(configKey);
        if (config == null) {
            return null;
        }
        return createExternalWifiConfiguration(config, true, 1010);
    }

    public WifiConfiguration getConfiguredNetworkWithPassword(int networkId) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return null;
        }
        return createExternalWifiConfiguration(config, false, 1010);
    }

    public WifiConfiguration getConfiguredNetworkWithoutMasking(int networkId) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return null;
        }
        return new WifiConfiguration(config);
    }

    private Collection<WifiConfiguration> getInternalConfiguredNetworks() {
        return this.mConfiguredNetworks.valuesForCurrentUser();
    }

    private WifiConfiguration getInternalConfiguredNetwork(WifiConfiguration config) {
        WifiConfiguration internalConfig = this.mConfiguredNetworks.getForCurrentUser(config.networkId);
        if (internalConfig != null) {
            return internalConfig;
        }
        WifiConfiguration internalConfig2 = this.mConfiguredNetworks.getByConfigKeyForCurrentUser(config.configKey());
        if (internalConfig2 == null) {
            Log.e(TAG, "Cannot find network with networkId " + config.networkId + " or configKey " + config.configKey());
        }
        return internalConfig2;
    }

    private WifiConfiguration getInternalConfiguredNetwork(int networkId) {
        if (networkId == -1) {
            return null;
        }
        WifiConfiguration internalConfig = this.mConfiguredNetworks.getForCurrentUser(networkId);
        if (internalConfig == null) {
            Log.e(TAG, "Cannot find network with networkId " + networkId);
        }
        return internalConfig;
    }

    private WifiConfiguration getInternalConfiguredNetwork(String configKey) {
        WifiConfiguration internalConfig = this.mConfiguredNetworks.getByConfigKeyForCurrentUser(configKey);
        if (internalConfig == null) {
            Log.e(TAG, "Cannot find network with configKey " + configKey);
        }
        return internalConfig;
    }

    private void sendConfiguredNetworkChangedBroadcast(WifiConfiguration network, int reason) {
        Intent intent = new Intent("android.net.wifi.CONFIGURED_NETWORKS_CHANGE");
        intent.addFlags(67108864);
        intent.putExtra("multipleChanges", false);
        WifiConfiguration broadcastNetwork = new WifiConfiguration(network);
        maskPasswordsInWifiConfiguration(broadcastNetwork);
        intent.putExtra("wifiConfiguration", broadcastNetwork);
        intent.putExtra("changeReason", reason);
        this.mContext.sendBroadcastAsUserMultiplePermissions(intent, UserHandle.ALL, new String[]{"android.permission.ACCESS_WIFI_STATE", "android.permission.ACCESS_FINE_LOCATION"});
    }

    private void sendConfiguredNetworksChangedBroadcast() {
        Intent intent = new Intent("android.net.wifi.CONFIGURED_NETWORKS_CHANGE");
        intent.addFlags(67108864);
        intent.putExtra("multipleChanges", true);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    private boolean canModifyNetwork(WifiConfiguration config, int uid) {
        if (uid == 1000) {
            return true;
        }
        if (config.isPasspoint() && uid == 1010) {
            return true;
        }
        if (config.enterpriseConfig != null && uid == 1010 && TelephonyUtil.isSimEapMethod(config.enterpriseConfig.getEapMethod())) {
            return true;
        }
        DevicePolicyManagerInternal dpmi = this.mWifiPermissionsWrapper.getDevicePolicyManagerInternal();
        boolean isUidDeviceOwner = dpmi != null && dpmi.isActiveAdminWithPolicy(uid, -2);
        if (isUidDeviceOwner) {
            return true;
        }
        boolean isCreator = config.creatorUid == uid;
        if (this.mContext.getPackageManager().hasSystemFeature("android.software.device_admin") && dpmi == null) {
            Log.w(TAG, "Error retrieving DPMI service.");
            return false;
        }
        boolean isConfigEligibleForLockdown = dpmi != null && dpmi.isActiveAdminWithPolicy(config.creatorUid, -2);
        if (!isConfigEligibleForLockdown) {
            return isCreator || this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid);
        }
        ContentResolver resolver = this.mContext.getContentResolver();
        boolean isLockdownFeatureEnabled = Settings.Global.getInt(resolver, "wifi_device_owner_configs_lockdown", 0) != 0;
        return !isLockdownFeatureEnabled && this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid);
    }

    private void mergeWithInternalWifiConfiguration(WifiConfiguration internalConfig, WifiConfiguration externalConfig) {
        if (externalConfig.SSID != null) {
            internalConfig.SSID = externalConfig.SSID;
        }
        if (externalConfig.BSSID != null) {
            internalConfig.BSSID = externalConfig.BSSID.toLowerCase();
        }
        internalConfig.autoJoin = externalConfig.autoJoin;
        internalConfig.autoJoinMenu = externalConfig.autoJoinMenu;
        internalConfig.canModify = externalConfig.canModify;
        internalConfig.canForget = externalConfig.canForget;
        internalConfig.hiddenSSID = externalConfig.hiddenSSID;
        internalConfig.requirePMF = externalConfig.requirePMF;
        if (externalConfig.preSharedKey != null && !externalConfig.preSharedKey.equals("*")) {
            internalConfig.preSharedKey = externalConfig.preSharedKey;
        }
        if (externalConfig.wepKeys != null) {
            boolean hasWepKey = false;
            for (int i = 0; i < internalConfig.wepKeys.length; i++) {
                if (externalConfig.wepKeys[i] != null && !externalConfig.wepKeys[i].equals("*")) {
                    internalConfig.wepKeys[i] = externalConfig.wepKeys[i];
                    hasWepKey = true;
                }
            }
            if (hasWepKey) {
                internalConfig.wepTxKeyIndex = externalConfig.wepTxKeyIndex;
            }
        }
        if (externalConfig.FQDN != null) {
            internalConfig.FQDN = externalConfig.FQDN;
        }
        if (externalConfig.providerFriendlyName != null) {
            internalConfig.providerFriendlyName = externalConfig.providerFriendlyName;
        }
        if (externalConfig.roamingConsortiumIds != null) {
            internalConfig.roamingConsortiumIds = (long[]) externalConfig.roamingConsortiumIds.clone();
        }
        if (externalConfig.allowedAuthAlgorithms != null && !externalConfig.allowedAuthAlgorithms.isEmpty()) {
            internalConfig.allowedAuthAlgorithms = (BitSet) externalConfig.allowedAuthAlgorithms.clone();
        }
        if (externalConfig.allowedProtocols != null && !externalConfig.allowedProtocols.isEmpty()) {
            internalConfig.allowedProtocols = (BitSet) externalConfig.allowedProtocols.clone();
        }
        if (externalConfig.allowedKeyManagement != null && !externalConfig.allowedKeyManagement.isEmpty()) {
            internalConfig.allowedKeyManagement = (BitSet) externalConfig.allowedKeyManagement.clone();
            if (externalConfig.allowedKeyManagement.get(13)) {
                internalConfig.wapiPskType = externalConfig.wapiPskType;
            }
            if (externalConfig.allowedKeyManagement.get(14)) {
                internalConfig.wapiAsCert = externalConfig.wapiAsCert;
                internalConfig.wapiUserCert = externalConfig.wapiUserCert;
            }
        }
        if (externalConfig.allowedPairwiseCiphers != null && !externalConfig.allowedPairwiseCiphers.isEmpty()) {
            internalConfig.allowedPairwiseCiphers = (BitSet) externalConfig.allowedPairwiseCiphers.clone();
        }
        if (externalConfig.allowedGroupCiphers != null && !externalConfig.allowedGroupCiphers.isEmpty()) {
            internalConfig.allowedGroupCiphers = (BitSet) externalConfig.allowedGroupCiphers.clone();
        }
        if (externalConfig.allowedGroupManagementCiphers != null && !externalConfig.allowedGroupManagementCiphers.isEmpty()) {
            internalConfig.allowedGroupManagementCiphers = (BitSet) externalConfig.allowedGroupManagementCiphers.clone();
        }
        if (externalConfig.getIpConfiguration() != null) {
            IpConfiguration.IpAssignment ipAssignment = externalConfig.getIpAssignment();
            if (ipAssignment != IpConfiguration.IpAssignment.UNASSIGNED) {
                internalConfig.setIpAssignment(ipAssignment);
                if (ipAssignment == IpConfiguration.IpAssignment.STATIC) {
                    internalConfig.setStaticIpConfiguration(new StaticIpConfiguration(externalConfig.getStaticIpConfiguration()));
                }
            }
            IpConfiguration.ProxySettings proxySettings = externalConfig.getProxySettings();
            if (proxySettings != IpConfiguration.ProxySettings.UNASSIGNED) {
                internalConfig.setProxySettings(proxySettings);
                if (proxySettings == IpConfiguration.ProxySettings.PAC || proxySettings == IpConfiguration.ProxySettings.STATIC) {
                    internalConfig.setHttpProxy(new ProxyInfo(externalConfig.getHttpProxy()));
                }
            }
        }
        if (externalConfig.enterpriseConfig != null) {
            internalConfig.enterpriseConfig.copyFromExternal(externalConfig.enterpriseConfig, "*");
        }
        internalConfig.meteredHint = externalConfig.meteredHint;
        internalConfig.meteredOverride = externalConfig.meteredOverride;
        internalConfig.macRandomizationSetting = externalConfig.macRandomizationSetting;
    }

    private void setDefaultsInWifiConfiguration(WifiConfiguration configuration) {
        configuration.allowedAuthAlgorithms.set(0);
        configuration.allowedProtocols.set(1);
        configuration.allowedProtocols.set(0);
        configuration.allowedKeyManagement.set(1);
        configuration.allowedKeyManagement.set(2);
        configuration.allowedPairwiseCiphers.set(2);
        configuration.allowedPairwiseCiphers.set(1);
        configuration.allowedGroupCiphers.set(3);
        configuration.allowedGroupCiphers.set(2);
        configuration.allowedGroupCiphers.set(0);
        configuration.allowedGroupCiphers.set(1);
        configuration.setIpAssignment(IpConfiguration.IpAssignment.DHCP);
        configuration.setProxySettings(IpConfiguration.ProxySettings.NONE);
        configuration.status = 1;
        configuration.getNetworkSelectionStatus().setNetworkSelectionStatus(2);
        configuration.getNetworkSelectionStatus().setNetworkSelectionDisableReason(11);
    }

    private WifiConfiguration createNewInternalWifiConfigurationFromExternal(WifiConfiguration externalConfig, int uid, String packageName) {
        WifiConfiguration newInternalConfig = new WifiConfiguration();
        int i = this.mNextNetworkId;
        this.mNextNetworkId = i + 1;
        newInternalConfig.networkId = i;
        setDefaultsInWifiConfiguration(newInternalConfig);
        mergeWithInternalWifiConfiguration(newInternalConfig, externalConfig);
        newInternalConfig.requirePMF = externalConfig.requirePMF;
        newInternalConfig.noInternetAccessExpected = externalConfig.noInternetAccessExpected;
        newInternalConfig.ephemeral = externalConfig.ephemeral;
        newInternalConfig.osu = externalConfig.osu;
        newInternalConfig.trusted = externalConfig.trusted;
        newInternalConfig.fromWifiNetworkSuggestion = externalConfig.fromWifiNetworkSuggestion;
        newInternalConfig.fromWifiNetworkSpecifier = externalConfig.fromWifiNetworkSpecifier;
        newInternalConfig.useExternalScores = externalConfig.useExternalScores;
        newInternalConfig.shared = externalConfig.shared;
        newInternalConfig.updateIdentifier = externalConfig.updateIdentifier;
        newInternalConfig.lastUpdateUid = uid;
        newInternalConfig.creatorUid = uid;
        String nameForUid = packageName != null ? packageName : this.mContext.getPackageManager().getNameForUid(uid);
        newInternalConfig.lastUpdateName = nameForUid;
        newInternalConfig.creatorName = nameForUid;
        String strCreateDebugTimeStampString = createDebugTimeStampString(this.mClock.getWallClockMillis());
        newInternalConfig.updateTime = strCreateDebugTimeStampString;
        newInternalConfig.creationTime = strCreateDebugTimeStampString;
        MacAddress randomizedMac = getPersistentMacAddress(newInternalConfig);
        if (randomizedMac != null) {
            newInternalConfig.setRandomizedMacAddress(randomizedMac);
        }
        return newInternalConfig;
    }

    private WifiConfiguration updateExistingInternalWifiConfigurationFromExternal(WifiConfiguration internalConfig, WifiConfiguration externalConfig, int uid, String packageName) {
        WifiConfiguration newInternalConfig = new WifiConfiguration(internalConfig);
        mergeWithInternalWifiConfiguration(newInternalConfig, externalConfig);
        newInternalConfig.lastUpdateUid = uid;
        newInternalConfig.lastUpdateName = packageName != null ? packageName : this.mContext.getPackageManager().getNameForUid(uid);
        newInternalConfig.updateTime = createDebugTimeStampString(this.mClock.getWallClockMillis());
        return newInternalConfig;
    }

    private NetworkUpdateResult addOrUpdateNetworkInternal(WifiConfiguration config, int uid, String packageName) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Adding/Updating network " + config.getPrintableSsid());
        }
        WifiConfiguration newInternalConfig = null;
        WifiConfiguration existingInternalConfig = getInternalConfiguredNetwork(config);
        boolean hasCredentialChanged = true;
        if (existingInternalConfig == null) {
            if (!WifiConfigurationUtil.validate(config, true)) {
                Log.e(TAG, "Cannot add network with invalid config");
                return new NetworkUpdateResult(-1);
            }
            newInternalConfig = createNewInternalWifiConfigurationFromExternal(config, uid, packageName);
            existingInternalConfig = getInternalConfiguredNetwork(newInternalConfig.configKey());
        }
        if (existingInternalConfig != null) {
            if (!WifiConfigurationUtil.validate(config, false)) {
                Log.e(TAG, "Cannot update network with invalid config");
                return new NetworkUpdateResult(-1);
            }
            if (!canModifyNetwork(existingInternalConfig, uid)) {
                Log.e(TAG, "UID " + uid + " does not have permission to update configuration " + config.configKey());
                return new NetworkUpdateResult(-1);
            }
            newInternalConfig = updateExistingInternalWifiConfigurationFromExternal(existingInternalConfig, config, uid, packageName);
        }
        if (WifiConfigurationUtil.hasProxyChanged(existingInternalConfig, newInternalConfig) && !canModifyProxySettings(uid)) {
            Log.e(TAG, "UID " + uid + " does not have permission to modify proxy Settings " + config.configKey() + ". Must have NETWORK_SETTINGS, or be device or profile owner.");
            return new NetworkUpdateResult(-1);
        }
        if (WifiConfigurationUtil.hasMacRandomizationSettingsChanged(existingInternalConfig, newInternalConfig) && !this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid) && !this.mWifiPermissionsUtil.checkNetworkSetupWizardPermission(uid)) {
            Log.e(TAG, "UID " + uid + " does not have permission to modify MAC randomization Settings " + config.getSsidAndSecurityTypeString() + ". Must have NETWORK_SETTINGS or NETWORK_SETUP_WIZARD.");
            return new NetworkUpdateResult(-1);
        }
        if (!config.isPasspoint() && !config.fromWifiNetworkSuggestion && config.isEnterprise() && !this.mWifiKeyStore.updateNetworkKeys(newInternalConfig, existingInternalConfig)) {
            return new NetworkUpdateResult(-1);
        }
        boolean newNetwork = existingInternalConfig == null;
        boolean hasIpChanged = newNetwork || WifiConfigurationUtil.hasIpChanged(existingInternalConfig, newInternalConfig);
        boolean hasProxyChanged = newNetwork || WifiConfigurationUtil.hasProxyChanged(existingInternalConfig, newInternalConfig);
        if (!newNetwork && !WifiConfigurationUtil.hasCredentialChanged(existingInternalConfig, newInternalConfig)) {
            hasCredentialChanged = false;
        }
        if (hasCredentialChanged) {
            newInternalConfig.getNetworkSelectionStatus().setHasEverConnected(false);
        }
        try {
            this.mConfiguredNetworks.put(newInternalConfig);
            if (this.mDeletedEphemeralSsidsToTimeMap.remove(config.SSID) != null && this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Removed from ephemeral blacklist: " + config.SSID);
            }
            this.mBackupManagerProxy.notifyDataChanged();
            NetworkUpdateResult result = new NetworkUpdateResult(hasIpChanged, hasProxyChanged, hasCredentialChanged);
            result.setIsNewNetwork(newNetwork);
            result.setNetworkId(newInternalConfig.networkId);
            localLog("addOrUpdateNetworkInternal: added/updated config. netId=" + newInternalConfig.networkId + " configKey=" + newInternalConfig.configKey() + " uid=" + Integer.toString(newInternalConfig.creatorUid) + " name=" + newInternalConfig.creatorName);
            return result;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Failed to add network to config map", e);
            return new NetworkUpdateResult(-1);
        }
    }

    public NetworkUpdateResult addOrUpdateNetwork(WifiConfiguration config, int uid, String packageName) {
        int i;
        WifiConfiguration existingConfig;
        if (!this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(uid)) {
            Log.e(TAG, "UID " + uid + " not visible to the current user");
            return new NetworkUpdateResult(-1);
        }
        if (config == null) {
            Log.e(TAG, "Cannot add/update network with null config");
            return new NetworkUpdateResult(-1);
        }
        if (this.mPendingStoreRead) {
            Log.e(TAG, "Cannot add/update network before store is read!");
            return new NetworkUpdateResult(-1);
        }
        if (!config.isEphemeral() && (existingConfig = getConfiguredNetwork(config.configKey())) != null && existingConfig.isEphemeral()) {
            removeNetwork(existingConfig.networkId, this.mSystemUiUid);
        }
        NetworkUpdateResult result = addOrUpdateNetworkInternal(config, uid, packageName);
        if (!result.isSuccess()) {
            Log.e(TAG, "Failed to add/update network " + config.getPrintableSsid());
            return result;
        }
        WifiConfiguration newConfig = getInternalConfiguredNetwork(result.getNetworkId());
        if (result.isNewNetwork()) {
            i = 0;
        } else {
            i = 2;
        }
        sendConfiguredNetworkChangedBroadcast(newConfig, i);
        if (!config.ephemeral && !config.isPasspoint()) {
            saveToStore(true);
            if (this.mListener != null) {
                if (result.isNewNetwork()) {
                    this.mListener.onSavedNetworkAdded(newConfig.networkId);
                } else {
                    this.mListener.onSavedNetworkUpdated(newConfig.networkId);
                }
            }
        }
        return result;
    }

    public NetworkUpdateResult addOrUpdateNetwork(WifiConfiguration config, int uid) {
        return addOrUpdateNetwork(config, uid, null);
    }

    private boolean removeNetworkInternal(WifiConfiguration config, int uid) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Removing network " + config.getPrintableSsid());
        }
        if (!config.isPasspoint() && !config.fromWifiNetworkSuggestion && config.isEnterprise()) {
            this.mWifiKeyStore.removeKeys(config.enterpriseConfig, false);
        }
        removeConnectChoiceFromAllNetworks(config.configKey());
        this.mConfiguredNetworks.remove(config.networkId);
        this.mScanDetailCaches.remove(Integer.valueOf(config.networkId));
        this.mBackupManagerProxy.notifyDataChanged();
        localLog("removeNetworkInternal: removed config. netId=" + config.networkId + " configKey=" + config.configKey() + " uid=" + Integer.toString(uid) + " name=" + this.mContext.getPackageManager().getNameForUid(uid));
        return true;
    }

    public boolean removeNetwork(int networkId, int uid) {
        if (!this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(uid)) {
            Log.e(TAG, "UID " + uid + " not visible to the current user");
            return false;
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        if (!canModifyNetwork(config, uid)) {
            Log.e(TAG, "UID " + uid + " does not have permission to delete configuration " + config.configKey());
            return false;
        }
        if (!removeNetworkInternal(config, uid)) {
            Log.e(TAG, "Failed to remove network " + config.getPrintableSsid());
            return false;
        }
        if (networkId == this.mLastSelectedNetworkId) {
            clearLastSelectedNetwork();
        }
        sendConfiguredNetworkChangedBroadcast(config, 1);
        if (!config.ephemeral && !config.isPasspoint()) {
            saveToStore(true);
            OnSavedNetworkUpdateListener onSavedNetworkUpdateListener = this.mListener;
            if (onSavedNetworkUpdateListener != null) {
                onSavedNetworkUpdateListener.onSavedNetworkRemoved(networkId);
            }
        }
        return true;
    }

    private String getCreatorPackageName(WifiConfiguration config) {
        String creatorName = config.creatorName;
        if (!creatorName.contains(":")) {
            return creatorName;
        }
        return creatorName.substring(0, creatorName.indexOf(":"));
    }

    public Set<Integer> removeNetworksForApp(ApplicationInfo app) {
        if (app == null || app.packageName == null) {
            return Collections.emptySet();
        }
        Log.d(TAG, "Remove all networks for app " + app);
        Set<Integer> removedNetworks = new ArraySet<>();
        WifiConfiguration[] copiedConfigs = (WifiConfiguration[]) this.mConfiguredNetworks.valuesForAllUsers().toArray(new WifiConfiguration[0]);
        for (WifiConfiguration config : copiedConfigs) {
            if (app.uid == config.creatorUid && app.packageName.equals(getCreatorPackageName(config))) {
                localLog("Removing network " + config.SSID + ", application \"" + app.packageName + "\" uninstalled from user " + UserHandle.getUserId(app.uid));
                if (removeNetwork(config.networkId, this.mSystemUiUid)) {
                    removedNetworks.add(Integer.valueOf(config.networkId));
                }
            }
        }
        return removedNetworks;
    }

    Set<Integer> removeNetworksForUser(int userId) {
        Log.d(TAG, "Remove all networks for user " + userId);
        Set<Integer> removedNetworks = new ArraySet<>();
        WifiConfiguration[] copiedConfigs = (WifiConfiguration[]) this.mConfiguredNetworks.valuesForAllUsers().toArray(new WifiConfiguration[0]);
        for (WifiConfiguration config : copiedConfigs) {
            if (userId == UserHandle.getUserId(config.creatorUid)) {
                localLog("Removing network " + config.SSID + ", user " + userId + " removed");
                if (removeNetwork(config.networkId, this.mSystemUiUid)) {
                    removedNetworks.add(Integer.valueOf(config.networkId));
                }
            }
        }
        return removedNetworks;
    }

    public boolean removeAllEphemeralOrPasspointConfiguredNetworks() {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Removing all passpoint or ephemeral configured networks");
        }
        boolean didRemove = false;
        WifiConfiguration[] copiedConfigs = (WifiConfiguration[]) this.mConfiguredNetworks.valuesForAllUsers().toArray(new WifiConfiguration[0]);
        for (WifiConfiguration config : copiedConfigs) {
            if (config.isPasspoint()) {
                Log.d(TAG, "Removing passpoint network config " + config.configKey());
                removeNetwork(config.networkId, this.mSystemUiUid);
                didRemove = true;
            } else if (config.ephemeral) {
                Log.d(TAG, "Removing ephemeral network config " + config.configKey());
                removeNetwork(config.networkId, this.mSystemUiUid);
                didRemove = true;
            }
        }
        return didRemove;
    }

    public boolean removePasspointConfiguredNetwork(String fqdn) {
        WifiConfiguration[] copiedConfigs = (WifiConfiguration[]) this.mConfiguredNetworks.valuesForAllUsers().toArray(new WifiConfiguration[0]);
        for (WifiConfiguration config : copiedConfigs) {
            if (config.isPasspoint() && TextUtils.equals(fqdn, config.FQDN)) {
                Log.d(TAG, "Removing passpoint network config " + config.configKey());
                removeNetwork(config.networkId, this.mSystemUiUid);
                return true;
            }
        }
        return false;
    }

    private void setNetworkSelectionEnabled(WifiConfiguration config) {
        WifiConfiguration.NetworkSelectionStatus status = config.getNetworkSelectionStatus();
        status.setNetworkSelectionStatus(0);
        status.setDisableTime(-1L);
        status.setNetworkSelectionDisableReason(0);
        status.clearDisableReasonCounter();
        OnSavedNetworkUpdateListener onSavedNetworkUpdateListener = this.mListener;
        if (onSavedNetworkUpdateListener != null) {
            onSavedNetworkUpdateListener.onSavedNetworkEnabled(config.networkId);
        }
    }

    private void setNetworkSelectionTemporarilyDisabled(WifiConfiguration config, int disableReason) {
        WifiConfiguration.NetworkSelectionStatus status = config.getNetworkSelectionStatus();
        status.setNetworkSelectionStatus(1);
        status.setDisableTime(this.mClock.getElapsedSinceBootMillis());
        status.setNetworkSelectionDisableReason(disableReason);
        OnSavedNetworkUpdateListener onSavedNetworkUpdateListener = this.mListener;
        if (onSavedNetworkUpdateListener != null) {
            onSavedNetworkUpdateListener.onSavedNetworkTemporarilyDisabled(config.networkId, disableReason);
        }
    }

    private void setNetworkSelectionPermanentlyDisabled(WifiConfiguration config, int disableReason) {
        WifiConfiguration.NetworkSelectionStatus status = config.getNetworkSelectionStatus();
        status.setNetworkSelectionStatus(2);
        status.setDisableTime(-1L);
        status.setNetworkSelectionDisableReason(disableReason);
        OnSavedNetworkUpdateListener onSavedNetworkUpdateListener = this.mListener;
        if (onSavedNetworkUpdateListener != null) {
            onSavedNetworkUpdateListener.onSavedNetworkPermanentlyDisabled(config.networkId, disableReason);
        }
    }

    private void setNetworkStatus(WifiConfiguration config, int status) {
        config.status = status;
        sendConfiguredNetworkChangedBroadcast(config, 2);
    }

    private boolean setNetworkSelectionStatus(WifiConfiguration config, int reason) {
        WifiConfiguration.NetworkSelectionStatus networkStatus = config.getNetworkSelectionStatus();
        if (reason < 0 || reason >= 15) {
            Log.e(TAG, "Invalid Network disable reason " + reason);
            return false;
        }
        if (reason == 0) {
            setNetworkSelectionEnabled(config);
            setNetworkStatus(config, 2);
        } else if (reason < 8) {
            setNetworkSelectionTemporarilyDisabled(config, reason);
        } else {
            setNetworkSelectionPermanentlyDisabled(config, reason);
            setNetworkStatus(config, 1);
        }
        localLog("setNetworkSelectionStatus: configKey=" + config.configKey() + " networkStatus=" + networkStatus.getNetworkStatusString() + " disableReason=" + networkStatus.getNetworkDisableReasonString() + " at=" + createDebugTimeStampString(this.mClock.getWallClockMillis()));
        saveToStore(false);
        return true;
    }

    private boolean updateNetworkSelectionStatus(WifiConfiguration config, int reason) {
        WifiConfiguration.NetworkSelectionStatus networkStatus = config.getNetworkSelectionStatus();
        if (reason != 0) {
            if ((reason == 2 || reason == 3 || reason == 4) && this.mWifiInjector.getWifiLastResortWatchdog().shouldIgnoreSsidUpdate()) {
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Ignore update network selection status since Watchdog trigger is activated");
                    return false;
                }
                return false;
            }
            networkStatus.incrementDisableReasonCounter(reason);
            int disableReasonCounter = networkStatus.getDisableReasonCounter(reason);
            int disableReasonThreshold = NETWORK_SELECTION_DISABLE_THRESHOLD[reason];
            if (disableReasonCounter < disableReasonThreshold) {
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Disable counter for network " + config.getPrintableSsid() + " for reason " + WifiConfiguration.NetworkSelectionStatus.getNetworkDisableReasonString(reason) + " is " + networkStatus.getDisableReasonCounter(reason) + " and threshold is " + disableReasonThreshold);
                    return true;
                }
                return true;
            }
        }
        return setNetworkSelectionStatus(config, reason);
    }

    public boolean updateNetworkSelectionStatus(int networkId, int reason) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        return updateNetworkSelectionStatus(config, reason);
    }

    public boolean updateNetworkNotRecommended(int networkId, boolean notRecommended) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.getNetworkSelectionStatus().setNotRecommended(notRecommended);
        if (this.mVerboseLoggingEnabled) {
            localLog("updateNetworkRecommendation: configKey=" + config.configKey() + " notRecommended=" + notRecommended);
        }
        saveToStore(false);
        return true;
    }

    private boolean tryEnableNetwork(WifiConfiguration config) {
        WifiConfiguration.NetworkSelectionStatus networkStatus = config.getNetworkSelectionStatus();
        if (networkStatus.isNetworkTemporaryDisabled()) {
            long timeDifferenceMs = this.mClock.getElapsedSinceBootMillis() - networkStatus.getDisableTime();
            int disableReason = networkStatus.getNetworkSelectionDisableReason();
            long disableTimeoutMs = NETWORK_SELECTION_DISABLE_TIMEOUT_MS[disableReason];
            if (timeDifferenceMs >= disableTimeoutMs) {
                return updateNetworkSelectionStatus(config, 0);
            }
        } else if (networkStatus.isDisabledByReason(12)) {
            return updateNetworkSelectionStatus(config, 0);
        }
        return false;
    }

    public boolean tryEnableNetwork(int networkId) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        return tryEnableNetwork(config);
    }

    public boolean enableNetwork(int networkId, boolean disableOthers, int uid) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Enabling network " + networkId + " (disableOthers " + disableOthers + ")");
        }
        if (!this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(uid)) {
            Log.e(TAG, "UID " + uid + " not visible to the current user");
            return false;
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        if (disableOthers) {
            setLastSelectedNetwork(networkId);
        }
        if (!canModifyNetwork(config, uid)) {
            Log.e(TAG, "UID " + uid + " does not have permission to update configuration " + config.configKey());
            return false;
        }
        if (!updateNetworkSelectionStatus(networkId, 0)) {
            return false;
        }
        saveToStore(true);
        return true;
    }

    public boolean disableNetwork(int networkId, int uid) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Disabling network " + networkId);
        }
        if (!this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(uid)) {
            Log.e(TAG, "UID " + uid + " not visible to the current user");
            return false;
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        if (networkId == this.mLastSelectedNetworkId) {
            clearLastSelectedNetwork();
        }
        if (!canModifyNetwork(config, uid)) {
            Log.e(TAG, "UID " + uid + " does not have permission to update configuration " + config.configKey());
            return false;
        }
        if (!updateNetworkSelectionStatus(networkId, 11)) {
            return false;
        }
        saveToStore(true);
        return true;
    }

    public boolean updateLastConnectUid(int networkId, int uid) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Update network last connect UID for " + networkId);
        }
        if (!this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(uid)) {
            Log.e(TAG, "UID " + uid + " not visible to the current user");
            return false;
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.lastConnectUid = uid;
        return true;
    }

    public boolean updateNetworkAfterConnect(int networkId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Update network after connect for " + networkId);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.lastConnected = this.mClock.getWallClockMillis();
        config.numAssociation++;
        config.getNetworkSelectionStatus().clearDisableReasonCounter();
        config.getNetworkSelectionStatus().setHasEverConnected(true);
        setNetworkStatus(config, 0);
        saveToStore(false);
        return true;
    }

    public boolean updateNetworkAfterDisconnect(int networkId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Update network after disconnect for " + networkId);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.lastDisconnected = this.mClock.getWallClockMillis();
        if (config.status == 0) {
            setNetworkStatus(config, 2);
        }
        saveToStore(false);
        return true;
    }

    public boolean setNetworkDefaultGwMacAddress(int networkId, String macAddress) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.defaultGwMacAddress = macAddress;
        return true;
    }

    public boolean setNetworkRandomizedMacAddress(int networkId, MacAddress macAddress) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.setRandomizedMacAddress(macAddress);
        return true;
    }

    public boolean clearNetworkCandidateScanResult(int networkId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Clear network candidate scan result for " + networkId);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.getNetworkSelectionStatus().setCandidate((ScanResult) null);
        config.getNetworkSelectionStatus().setCandidateScore(Integer.MIN_VALUE);
        config.getNetworkSelectionStatus().setSeenInLastQualifiedNetworkSelection(false);
        return true;
    }

    public boolean setNetworkCandidateScanResult(int networkId, ScanResult scanResult, int score) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "Set network candidate scan result " + scanResult + " for " + networkId + " score:" + score);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            Log.e(TAG, "Cannot find network for " + networkId);
            return false;
        }
        config.getNetworkSelectionStatus().setCandidate(scanResult);
        config.getNetworkSelectionStatus().setCandidateScore(score);
        config.getNetworkSelectionStatus().setSeenInLastQualifiedNetworkSelection(true);
        return true;
    }

    private void removeConnectChoiceFromAllNetworks(String connectChoiceConfigKey) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Removing connect choice from all networks " + connectChoiceConfigKey);
        }
        if (connectChoiceConfigKey == null) {
            return;
        }
        for (WifiConfiguration config : this.mConfiguredNetworks.valuesForCurrentUser()) {
            WifiConfiguration.NetworkSelectionStatus status = config.getNetworkSelectionStatus();
            String connectChoice = status.getConnectChoice();
            if (TextUtils.equals(connectChoice, connectChoiceConfigKey)) {
                Log.d(TAG, "remove connect choice:" + connectChoice + " from " + config.SSID + " : " + config.networkId);
                clearNetworkConnectChoice(config.networkId);
            }
        }
    }

    public boolean clearNetworkConnectChoice(int networkId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Clear network connect choice for " + networkId);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.getNetworkSelectionStatus().setConnectChoice((String) null);
        config.getNetworkSelectionStatus().setConnectChoiceTimestamp(-1L);
        saveToStore(false);
        return true;
    }

    public boolean setNetworkConnectChoice(int networkId, String connectChoiceConfigKey, long timestamp) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "Set network connect choice " + connectChoiceConfigKey + " for " + networkId);
        }
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.getNetworkSelectionStatus().setConnectChoice(connectChoiceConfigKey);
        config.getNetworkSelectionStatus().setConnectChoiceTimestamp(timestamp);
        saveToStore(false);
        return true;
    }

    public boolean incrementNetworkNoInternetAccessReports(int networkId) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.numNoInternetAccessReports++;
        return true;
    }

    public boolean setNetworkValidatedInternetAccess(int networkId, boolean validated) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.validatedInternetAccess = validated;
        config.numNoInternetAccessReports = 0;
        saveToStore(false);
        return true;
    }

    public boolean setNetworkNoInternetAccessExpected(int networkId, boolean expected) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return false;
        }
        config.noInternetAccessExpected = expected;
        return true;
    }

    private void clearLastSelectedNetwork() {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Clearing last selected network");
        }
        this.mLastSelectedNetworkId = -1;
        this.mLastSelectedTimeStamp = -1L;
    }

    private void setLastSelectedNetwork(int networkId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Setting last selected network to " + networkId);
        }
        this.mLastSelectedNetworkId = networkId;
        this.mLastSelectedTimeStamp = this.mClock.getElapsedSinceBootMillis();
    }

    public int getLastSelectedNetwork() {
        return this.mLastSelectedNetworkId;
    }

    public String getLastSelectedNetworkConfigKey() {
        WifiConfiguration config;
        int i = this.mLastSelectedNetworkId;
        return (i == -1 || (config = getInternalConfiguredNetwork(i)) == null) ? "" : config.configKey();
    }

    public long getLastSelectedTimeStamp() {
        return this.mLastSelectedTimeStamp;
    }

    public ScanDetailCache getScanDetailCacheForNetwork(int networkId) {
        return this.mScanDetailCaches.get(Integer.valueOf(networkId));
    }

    private ScanDetailCache getOrCreateScanDetailCacheForNetwork(WifiConfiguration config) {
        if (config == null) {
            return null;
        }
        ScanDetailCache cache = getScanDetailCacheForNetwork(config.networkId);
        if (cache == null && config.networkId != -1) {
            ScanDetailCache cache2 = new ScanDetailCache(config, SCAN_CACHE_ENTRIES_MAX_SIZE, 128);
            this.mScanDetailCaches.put(Integer.valueOf(config.networkId), cache2);
            return cache2;
        }
        return cache;
    }

    private void saveToScanDetailCacheForNetwork(WifiConfiguration config, ScanDetail scanDetail) {
        ScanResult scanResult = scanDetail.getScanResult();
        ScanDetailCache scanDetailCache = getOrCreateScanDetailCacheForNetwork(config);
        if (scanDetailCache == null) {
            Log.e(TAG, "Could not allocate scan cache for " + config.getPrintableSsid());
            return;
        }
        if (config.ephemeral) {
            scanResult.untrusted = true;
        }
        scanDetailCache.put(scanDetail);
        attemptNetworkLinking(config);
    }

    public WifiConfiguration getConfiguredNetworkForScanDetail(ScanDetail scanDetail) {
        ScanResult scanResult = scanDetail.getScanResult();
        if (scanResult == null) {
            Log.e(TAG, "No scan result found in scan detail");
            return null;
        }
        WifiConfiguration config = null;
        try {
            config = this.mConfiguredNetworks.getByScanResultForCurrentUser(scanResult);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Failed to lookup network from config map", e);
        }
        if (config != null && this.mVerboseLoggingEnabled) {
            Log.v(TAG, "getSavedNetworkFromScanDetail Found " + config.configKey() + " for " + scanResult.SSID + "[" + scanResult.capabilities + "]");
        }
        return config;
    }

    public WifiConfiguration getConfiguredNetworkForScanDetailAndCache(ScanDetail scanDetail) {
        WifiConfiguration network = getConfiguredNetworkForScanDetail(scanDetail);
        if (network == null) {
            return null;
        }
        saveToScanDetailCacheForNetwork(network, scanDetail);
        if (scanDetail.getNetworkDetail() != null && scanDetail.getNetworkDetail().getDtimInterval() > 0) {
            network.dtimInterval = scanDetail.getNetworkDetail().getDtimInterval();
        }
        return createExternalWifiConfiguration(network, true, 1010);
    }

    public void updateScanDetailCacheFromWifiInfo(WifiInfo info) {
        WifiConfiguration config = getInternalConfiguredNetwork(info.getNetworkId());
        ScanDetailCache scanDetailCache = getScanDetailCacheForNetwork(info.getNetworkId());
        if (config != null && scanDetailCache != null) {
            ScanDetail scanDetail = scanDetailCache.getScanDetail(info.getBSSID());
            if (scanDetail != null) {
                ScanResult result = scanDetail.getScanResult();
                long previousSeen = result.seen;
                int previousRssi = result.level;
                scanDetail.setSeen();
                result.level = info.getRssi();
                long age = result.seen - previousSeen;
                if (previousSeen > 0 && age > 0 && age < 40000 / 2) {
                    double alpha = 0.5d - (age / 40000);
                    result.level = (int) ((((double) result.level) * (1.0d - alpha)) + (((double) previousRssi) * alpha));
                }
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "Updating scan detail cache freq=" + result.frequency + " BSSID=" + result.BSSID + " RSSI=" + result.level + " for " + config.configKey());
                }
            }
        }
    }

    public void updateScanDetailForNetwork(int networkId, ScanDetail scanDetail) {
        WifiConfiguration network = getInternalConfiguredNetwork(networkId);
        if (network == null) {
            return;
        }
        saveToScanDetailCacheForNetwork(network, scanDetail);
    }

    private boolean shouldNetworksBeLinked(WifiConfiguration network1, WifiConfiguration network2, ScanDetailCache scanDetailCache1, ScanDetailCache scanDetailCache2) {
        if (this.mOnlyLinkSameCredentialConfigurations && !TextUtils.equals(network1.preSharedKey, network2.preSharedKey)) {
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "shouldNetworksBeLinked unlink due to password mismatch");
            }
            return false;
        }
        if (network1.defaultGwMacAddress != null && network2.defaultGwMacAddress != null) {
            if (network1.defaultGwMacAddress.equals(network2.defaultGwMacAddress)) {
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "shouldNetworksBeLinked link due to same gw " + network2.SSID + " and " + network1.SSID + " GW " + network1.defaultGwMacAddress);
                }
                return true;
            }
            return false;
        }
        if (scanDetailCache1 != null && scanDetailCache2 != null) {
            for (String abssid : scanDetailCache1.keySet()) {
                for (String bbssid : scanDetailCache2.keySet()) {
                    if (abssid.regionMatches(true, 0, bbssid, 0, 16)) {
                        if (this.mVerboseLoggingEnabled) {
                            Log.v(TAG, "shouldNetworksBeLinked link due to DBDC BSSID match " + network2.SSID + " and " + network1.SSID + " bssida " + abssid + " bssidb " + bbssid);
                        }
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    private void linkNetworks(WifiConfiguration network1, WifiConfiguration network2) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "linkNetworks will link " + network2.configKey() + " and " + network1.configKey());
        }
        if (network2.linkedConfigurations == null) {
            network2.linkedConfigurations = new HashMap();
        }
        if (network1.linkedConfigurations == null) {
            network1.linkedConfigurations = new HashMap();
        }
        network2.linkedConfigurations.put(network1.configKey(), 1);
        network1.linkedConfigurations.put(network2.configKey(), 1);
    }

    private void unlinkNetworks(WifiConfiguration network1, WifiConfiguration network2) {
        if (network2.linkedConfigurations != null && network2.linkedConfigurations.get(network1.configKey()) != null) {
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "unlinkNetworks un-link " + network1.configKey() + " from " + network2.configKey());
            }
            network2.linkedConfigurations.remove(network1.configKey());
        }
        if (network1.linkedConfigurations != null && network1.linkedConfigurations.get(network2.configKey()) != null) {
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "unlinkNetworks un-link " + network2.configKey() + " from " + network1.configKey());
            }
            network1.linkedConfigurations.remove(network2.configKey());
        }
    }

    private void attemptNetworkLinking(WifiConfiguration config) {
        ScanDetailCache linkScanDetailCache;
        if (!config.allowedKeyManagement.get(1)) {
            return;
        }
        ScanDetailCache scanDetailCache = getScanDetailCacheForNetwork(config.networkId);
        if (scanDetailCache != null && scanDetailCache.size() > 6) {
            return;
        }
        for (WifiConfiguration linkConfig : getInternalConfiguredNetworks()) {
            if (!linkConfig.configKey().equals(config.configKey()) && !linkConfig.ephemeral && linkConfig.allowedKeyManagement.get(1) && ((linkScanDetailCache = getScanDetailCacheForNetwork(linkConfig.networkId)) == null || linkScanDetailCache.size() <= 6)) {
                if (shouldNetworksBeLinked(config, linkConfig, scanDetailCache, linkScanDetailCache)) {
                    linkNetworks(config, linkConfig);
                } else {
                    unlinkNetworks(config, linkConfig);
                }
            }
        }
    }

    private boolean addToChannelSetForNetworkFromScanDetailCache(Set<Integer> channelSet, ScanDetailCache scanDetailCache, long nowInMillis, long ageInMillis, int maxChannelSetSize) {
        if (scanDetailCache != null && scanDetailCache.size() > 0) {
            for (ScanDetail scanDetail : scanDetailCache.values()) {
                ScanResult result = scanDetail.getScanResult();
                boolean valid = nowInMillis - result.seen < ageInMillis;
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "fetchChannelSetForNetwork has " + result.BSSID + " freq " + result.frequency + " age " + (nowInMillis - result.seen) + " ?=" + valid);
                }
                if (valid) {
                    channelSet.add(Integer.valueOf(result.frequency));
                }
                if (channelSet.size() >= maxChannelSetSize) {
                    return false;
                }
            }
        }
        return true;
    }

    public Set<Integer> fetchChannelSetForNetworkForPartialScan(int networkId, long ageInMillis, int homeChannelFreq) {
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null) {
            return null;
        }
        ScanDetailCache scanDetailCache = getScanDetailCacheForNetwork(networkId);
        if (scanDetailCache == null && config.linkedConfigurations == null) {
            Log.i(TAG, "No scan detail and linked configs associated with networkId " + networkId);
            return null;
        }
        if (this.mVerboseLoggingEnabled) {
            StringBuilder dbg = new StringBuilder();
            dbg.append("fetchChannelSetForNetworkForPartialScan ageInMillis ");
            dbg.append(ageInMillis);
            dbg.append(" for ");
            dbg.append(config.configKey());
            dbg.append(" max ");
            dbg.append(this.mMaxNumActiveChannelsForPartialScans);
            if (scanDetailCache != null) {
                dbg.append(" bssids " + scanDetailCache.size());
            }
            if (config.linkedConfigurations != null) {
                dbg.append(" linked " + config.linkedConfigurations.size());
            }
            Log.v(TAG, dbg.toString());
        }
        Set<Integer> channelSet = new HashSet<>();
        if (homeChannelFreq > 0) {
            channelSet.add(Integer.valueOf(homeChannelFreq));
            if (channelSet.size() >= this.mMaxNumActiveChannelsForPartialScans) {
                return channelSet;
            }
        }
        long nowInMillis = this.mClock.getWallClockMillis();
        if (addToChannelSetForNetworkFromScanDetailCache(channelSet, scanDetailCache, nowInMillis, ageInMillis, this.mMaxNumActiveChannelsForPartialScans) && config.linkedConfigurations != null) {
            for (String configKey : config.linkedConfigurations.keySet()) {
                WifiConfiguration linkedConfig = getInternalConfiguredNetwork(configKey);
                if (linkedConfig != null) {
                    ScanDetailCache linkedScanDetailCache = getScanDetailCacheForNetwork(linkedConfig.networkId);
                    if (!addToChannelSetForNetworkFromScanDetailCache(channelSet, linkedScanDetailCache, nowInMillis, ageInMillis, this.mMaxNumActiveChannelsForPartialScans)) {
                        break;
                    }
                }
            }
        }
        return channelSet;
    }

    private Set<Integer> fetchChannelSetForNetworkForPnoScan(int networkId, long ageInMillis) {
        ScanDetailCache scanDetailCache;
        WifiConfiguration config = getInternalConfiguredNetwork(networkId);
        if (config == null || (scanDetailCache = getScanDetailCacheForNetwork(networkId)) == null) {
            return null;
        }
        if (this.mVerboseLoggingEnabled) {
            StringBuilder sb = new StringBuilder("fetchChannelSetForNetworkForPnoScan ageInMillis ");
            sb.append(ageInMillis);
            sb.append(" for ");
            sb.append(config.configKey());
            sb.append(" bssids " + scanDetailCache.size());
            Log.v(TAG, sb.toString());
        }
        Set<Integer> channelSet = new HashSet<>();
        long nowInMillis = this.mClock.getWallClockMillis();
        addToChannelSetForNetworkFromScanDetailCache(channelSet, scanDetailCache, nowInMillis, ageInMillis, ScoringParams.Values.MAX_EXPID);
        return channelSet;
    }

    public List<WifiScanner.PnoSettings.PnoNetwork> retrievePnoNetworkList() {
        List<WifiScanner.PnoSettings.PnoNetwork> pnoList = new ArrayList<>();
        List<WifiConfiguration> networks = new ArrayList<>(getInternalConfiguredNetworks());
        Iterator<WifiConfiguration> iter = networks.iterator();
        while (iter.hasNext()) {
            WifiConfiguration config = iter.next();
            if (config.ephemeral || config.isPasspoint() || config.getNetworkSelectionStatus().isNetworkPermanentlyDisabled() || config.getNetworkSelectionStatus().isNetworkTemporaryDisabled()) {
                iter.remove();
            }
        }
        if (networks.isEmpty()) {
            return pnoList;
        }
        Collections.sort(networks, sScanListComparator);
        if (this.mPnoRecencySortingEnabled) {
            WifiConfiguration lastConnectedNetwork = networks.stream().max(Comparator.comparing(new Function() { // from class: com.android.server.wifi.-$$Lambda$WifiConfigManager$IQAd8DT29bH7BRNkSq57y94BdXA
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(((WifiConfiguration) obj).lastConnected);
                }
            })).get();
            if (lastConnectedNetwork.lastConnected != 0) {
                int lastConnectedNetworkIdx = networks.indexOf(lastConnectedNetwork);
                networks.remove(lastConnectedNetworkIdx);
                networks.add(0, lastConnectedNetwork);
            }
        }
        for (WifiConfiguration config2 : networks) {
            WifiScanner.PnoSettings.PnoNetwork pnoNetwork = WifiConfigurationUtil.createPnoNetwork(config2);
            pnoList.add(pnoNetwork);
            if (this.mPnoFrequencyCullingEnabled) {
                Set<Integer> channelSet = fetchChannelSetForNetworkForPnoScan(config2.networkId, MAX_PNO_SCAN_FREQUENCY_AGE_MS);
                if (channelSet != null) {
                    pnoNetwork.frequencies = channelSet.stream().mapToInt(new ToIntFunction() { // from class: com.android.server.wifi.-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw
                        @Override // java.util.function.ToIntFunction
                        public final int applyAsInt(Object obj) {
                            return ((Integer) obj).intValue();
                        }
                    }).toArray();
                }
                if (this.mVerboseLoggingEnabled) {
                    Log.v(TAG, "retrievePnoNetworkList " + pnoNetwork.ssid + ":" + Arrays.toString(pnoNetwork.frequencies));
                }
            }
        }
        return pnoList;
    }

    public List<WifiScanner.ScanSettings.HiddenNetwork> retrieveHiddenNetworkList() {
        List<WifiScanner.ScanSettings.HiddenNetwork> hiddenList = new ArrayList<>();
        List<WifiConfiguration> networks = new ArrayList<>(getInternalConfiguredNetworks());
        List<WifiConfiguration> gbkNetworks = new ArrayList<>();
        Iterator<WifiConfiguration> iter = networks.iterator();
        while (iter.hasNext()) {
            WifiConfiguration config = iter.next();
            if (!config.hiddenSSID) {
                iter.remove();
            } else {
                try {
                    String ssid = NativeUtil.removeEnclosingQuotes(config.SSID);
                    String utfSsid = URLEncoder.encode(ssid, "UTF-8");
                    String gbkSsid = URLEncoder.encode(ssid, "GBK");
                    if (!utfSsid.equals(gbkSsid)) {
                        WifiConfiguration gbkNetwork = new WifiConfiguration(config);
                        gbkNetwork.SSID = String.format("%x", new BigInteger(1, ssid.getBytes(Charset.forName("GBK"))));
                        gbkNetworks.add(gbkNetwork);
                        Log.i(TAG, "ssid = " + ssid + "gbkNetwork.SSID = " + gbkNetwork.SSID);
                    }
                } catch (Exception e) {
                    Log.e(TAG, "config.SSID = " + config.SSID + ", GBK encode e: " + e);
                }
            }
        }
        for (WifiConfiguration config2 : gbkNetworks) {
            networks.add(config2);
        }
        Collections.sort(networks, sScanListComparator);
        for (WifiConfiguration config3 : networks) {
            hiddenList.add(new WifiScanner.ScanSettings.HiddenNetwork(config3.SSID));
        }
        return hiddenList;
    }

    public boolean wasEphemeralNetworkDeleted(String ssid) {
        if (!this.mDeletedEphemeralSsidsToTimeMap.containsKey(ssid)) {
            return false;
        }
        long deletedTimeInMs = this.mDeletedEphemeralSsidsToTimeMap.get(ssid).longValue();
        long nowInMs = this.mClock.getWallClockMillis();
        if (nowInMs - deletedTimeInMs > DELETED_EPHEMERAL_SSID_EXPIRY_MS) {
            this.mDeletedEphemeralSsidsToTimeMap.remove(ssid);
            return false;
        }
        return true;
    }

    public WifiConfiguration disableEphemeralNetwork(String ssid) {
        if (ssid == null) {
            return null;
        }
        WifiConfiguration foundConfig = null;
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (config.ephemeral || config.isPasspoint()) {
                if (TextUtils.equals(config.SSID, ssid)) {
                    foundConfig = config;
                    break;
                }
            }
        }
        if (foundConfig == null) {
            return null;
        }
        this.mDeletedEphemeralSsidsToTimeMap.put(ssid, Long.valueOf(this.mClock.getWallClockMillis()));
        Log.d(TAG, "Forget ephemeral SSID " + ssid + " num=" + this.mDeletedEphemeralSsidsToTimeMap.size());
        if (foundConfig.ephemeral) {
            Log.d(TAG, "Found ephemeral config in disableEphemeralNetwork: " + foundConfig.networkId);
        } else if (foundConfig.isPasspoint()) {
            Log.d(TAG, "Found Passpoint config in disableEphemeralNetwork: " + foundConfig.networkId + ", FQDN: " + foundConfig.FQDN);
        }
        removeConnectChoiceFromAllNetworks(foundConfig.configKey());
        return foundConfig;
    }

    @VisibleForTesting
    public void clearDeletedEphemeralNetworks() {
        this.mDeletedEphemeralSsidsToTimeMap.clear();
    }

    public void resetSimNetworks() {
        if (this.mVerboseLoggingEnabled) {
            localLog("resetSimNetworks");
        }
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (TelephonyUtil.isSimConfig(config)) {
                if (config.enterpriseConfig.getEapMethod() == 0) {
                    Pair<String, String> currentIdentity = TelephonyUtil.getSimIdentity(this.mTelephonyManager, new TelephonyUtil(), config, this.mWifiInjector.getCarrierNetworkConfig());
                    if (this.mVerboseLoggingEnabled) {
                        Log.d(TAG, "New identity for config " + config + ": " + currentIdentity);
                    }
                    if (currentIdentity == null) {
                        Log.d(TAG, "Identity is null");
                    } else {
                        config.enterpriseConfig.setIdentity((String) currentIdentity.first);
                    }
                } else {
                    config.enterpriseConfig.setIdentity("");
                    if (!TelephonyUtil.isAnonymousAtRealmIdentity(config.enterpriseConfig.getAnonymousIdentity())) {
                        config.enterpriseConfig.setAnonymousIdentity("");
                    }
                }
            }
        }
    }

    public void resetSimNetworks(boolean simPresent, int phoneId) {
        if (this.mVerboseLoggingEnabled) {
            localLog("resetSimNetworks");
        }
        if (phoneId == 0) {
            this.mSim1Present = simPresent;
        }
        if (phoneId == 1) {
            this.mSim2Present = simPresent;
        }
        if (simPresent) {
            return;
        }
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (TelephonyUtil.isSimConfig(config) && phoneId == config.enterpriseConfig.getSimNum()) {
                if (config.enterpriseConfig.getEapMethod() == 0) {
                    Pair<String, String> currentIdentity = TelephonyUtil.getSimIdentity(this.mTelephonyManager, new TelephonyUtil(), config, this.mWifiInjector.getCarrierNetworkConfig());
                    if (this.mVerboseLoggingEnabled) {
                        Log.d(TAG, "New identity for config " + config + ": " + currentIdentity);
                    }
                    if (currentIdentity == null) {
                        Log.d(TAG, "Identity is null");
                    } else {
                        config.enterpriseConfig.setIdentity((String) currentIdentity.first);
                    }
                } else {
                    config.enterpriseConfig.setIdentity("");
                    config.enterpriseConfig.setAnonymousIdentity("");
                }
            }
        }
    }

    public boolean isSimPresent() {
        return this.mSim1Present || this.mSim2Present;
    }

    public boolean isSimPresent(int phoneId) {
        if (phoneId == 0) {
            return this.mSim1Present;
        }
        if (phoneId == 1) {
            return this.mSim2Present;
        }
        return false;
    }

    private void handleUserUnlockOrSwitch(int userId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Loading from store after user switch/unlock for " + userId);
        }
        if (loadFromUserStoreAfterUnlockOrSwitch(userId)) {
            saveToStore(true);
            this.mPendingUnlockStoreRead = false;
        }
    }

    public Set<Integer> handleUserSwitch(int userId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Handling user switch for " + userId);
        }
        int i = this.mCurrentUserId;
        if (userId == i) {
            Log.w(TAG, "User already in foreground " + userId);
            return new HashSet();
        }
        if (this.mPendingStoreRead) {
            Log.w(TAG, "User switch before store is read!");
            this.mConfiguredNetworks.setNewUser(userId);
            this.mCurrentUserId = userId;
            this.mDeferredUserUnlockRead = false;
            this.mPendingUnlockStoreRead = true;
            return new HashSet();
        }
        if (this.mUserManager.isUserUnlockingOrUnlocked(i)) {
            saveToStore(true);
        }
        Set<Integer> removedNetworkIds = clearInternalUserData(this.mCurrentUserId);
        this.mConfiguredNetworks.setNewUser(userId);
        this.mCurrentUserId = userId;
        if (this.mUserManager.isUserUnlockingOrUnlocked(this.mCurrentUserId)) {
            handleUserUnlockOrSwitch(this.mCurrentUserId);
        } else {
            this.mPendingUnlockStoreRead = true;
            Log.i(TAG, "Waiting for user unlock to load from store");
        }
        return removedNetworkIds;
    }

    public void handleUserUnlock(int userId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Handling user unlock for " + userId);
        }
        int i = this.mCurrentUserId;
        if (userId != i) {
            Log.e(TAG, "Ignore user unlock for non current user " + userId);
            return;
        }
        if (this.mPendingStoreRead) {
            Log.w(TAG, "Ignore user unlock until store is read!");
            this.mDeferredUserUnlockRead = true;
        } else if (this.mPendingUnlockStoreRead) {
            handleUserUnlockOrSwitch(i);
        }
    }

    public void handleUserStop(int userId) {
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "Handling user stop for " + userId);
        }
        int i = this.mCurrentUserId;
        if (userId == i && this.mUserManager.isUserUnlockingOrUnlocked(i)) {
            saveToStore(true);
            clearInternalUserData(this.mCurrentUserId);
        }
    }

    private void clearInternalData() {
        localLog("clearInternalData: Clearing all internal data");
        this.mConfiguredNetworks.clear();
        this.mDeletedEphemeralSsidsToTimeMap.clear();
        this.mRandomizedMacAddressMapping.clear();
        this.mScanDetailCaches.clear();
        clearLastSelectedNetwork();
    }

    private Set<Integer> clearInternalUserData(int userId) {
        localLog("clearInternalUserData: Clearing user internal data for " + userId);
        Set<Integer> removedNetworkIds = new HashSet<>();
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (!config.shared && !this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(config.creatorUid)) {
                removedNetworkIds.add(Integer.valueOf(config.networkId));
                localLog("clearInternalUserData: removed config. netId=" + config.networkId + " configKey=" + config.configKey());
                this.mConfiguredNetworks.remove(config.networkId);
            }
        }
        this.mDeletedEphemeralSsidsToTimeMap.clear();
        this.mScanDetailCaches.clear();
        clearLastSelectedNetwork();
        return removedNetworkIds;
    }

    private void loadInternalDataFromSharedStore(List<WifiConfiguration> configurations, Map<String, String> macAddressMapping) {
        for (WifiConfiguration configuration : configurations) {
            int i = this.mNextNetworkId;
            this.mNextNetworkId = i + 1;
            configuration.networkId = i;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Adding network from shared store " + configuration.configKey());
            }
            try {
                this.mConfiguredNetworks.put(configuration);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Failed to add network to config map", e);
            }
        }
        this.mRandomizedMacAddressMapping.putAll(macAddressMapping);
    }

    private void loadInternalDataFromUserStore(List<WifiConfiguration> configurations, Map<String, Long> deletedEphemeralSsidsToTimeMap) {
        for (WifiConfiguration configuration : configurations) {
            int i = this.mNextNetworkId;
            this.mNextNetworkId = i + 1;
            configuration.networkId = i;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "Adding network from user store " + configuration.configKey());
            }
            try {
                this.mConfiguredNetworks.put(configuration);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Failed to add network to config map", e);
            }
        }
        this.mDeletedEphemeralSsidsToTimeMap.putAll(deletedEphemeralSsidsToTimeMap);
    }

    private void generateRandomizedMacAddresses() {
        for (WifiConfiguration config : getInternalConfiguredNetworks()) {
            if (DEFAULT_MAC_ADDRESS.equals(config.getRandomizedMacAddress())) {
                setRandomizedMacToPersistentMac(config);
            }
        }
    }

    private void loadInternalData(List<WifiConfiguration> sharedConfigurations, List<WifiConfiguration> userConfigurations, Map<String, Long> deletedEphemeralSsidsToTimeMap, Map<String, String> macAddressMapping) {
        clearInternalData();
        loadInternalDataFromSharedStore(sharedConfigurations, macAddressMapping);
        loadInternalDataFromUserStore(userConfigurations, deletedEphemeralSsidsToTimeMap);
        generateRandomizedMacAddresses();
        if (this.mConfiguredNetworks.sizeForAllUsers() == 0) {
            Log.w(TAG, "No stored networks found.");
        }
        resetSimNetworks();
        sendConfiguredNetworksChangedBroadcast();
        this.mPendingStoreRead = false;
    }

    public boolean loadFromStore() {
        if (this.mDeferredUserUnlockRead) {
            Log.i(TAG, "Handling user unlock before loading from store.");
            List<WifiConfigStore.StoreFile> userStoreFiles = WifiConfigStore.createUserFiles(this.mCurrentUserId);
            if (userStoreFiles == null) {
                Log.wtf(TAG, "Failed to create user store files");
                return false;
            }
            this.mWifiConfigStore.setUserStores(userStoreFiles);
            this.mDeferredUserUnlockRead = false;
        }
        try {
            this.mWifiConfigStore.read();
            loadInternalData(this.mNetworkListSharedStoreData.getConfigurations(), this.mNetworkListUserStoreData.getConfigurations(), this.mDeletedEphemeralSsidsStoreData.getSsidToTimeMap(), this.mRandomizedMacStoreData.getMacMapping());
            return true;
        } catch (IOException | IllegalStateException e) {
            Log.wtf(TAG, "Reading from new store failed. All saved networks are lost!", e);
            return false;
        } catch (XmlPullParserException e2) {
            Log.wtf(TAG, "XML deserialization of store failed. All saved networks are lost!", e2);
            return false;
        }
    }

    private boolean loadFromUserStoreAfterUnlockOrSwitch(int userId) {
        try {
            List<WifiConfigStore.StoreFile> userStoreFiles = WifiConfigStore.createUserFiles(userId);
            if (userStoreFiles == null) {
                Log.e(TAG, "Failed to create user store files");
                return false;
            }
            this.mWifiConfigStore.switchUserStoresAndRead(userStoreFiles);
            loadInternalDataFromUserStore(this.mNetworkListUserStoreData.getConfigurations(), this.mDeletedEphemeralSsidsStoreData.getSsidToTimeMap());
            return true;
        } catch (IOException | IllegalStateException e) {
            Log.wtf(TAG, "Reading from new store failed. All saved private networks are lost!", e);
            return false;
        } catch (XmlPullParserException e2) {
            Log.wtf(TAG, "XML deserialization of store failed. All saved private networks arelost!", e2);
            return false;
        }
    }

    public boolean saveToStore(boolean forceWrite) {
        if (this.mPendingStoreRead) {
            Log.e(TAG, "Cannot save to store before store is read!");
            return false;
        }
        ArrayList<WifiConfiguration> sharedConfigurations = new ArrayList<>();
        ArrayList<WifiConfiguration> userConfigurations = new ArrayList<>();
        List<Integer> legacyPasspointNetId = new ArrayList<>();
        for (WifiConfiguration config : this.mConfiguredNetworks.valuesForAllUsers()) {
            if (!config.ephemeral && (!config.isPasspoint() || config.isLegacyPasspointConfig)) {
                if (config.isLegacyPasspointConfig && !this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(config.creatorUid)) {
                    legacyPasspointNetId.add(Integer.valueOf(config.networkId));
                    if (!PasspointManager.addLegacyPasspointConfig(config)) {
                        Log.e(TAG, "Failed to migrate legacy Passpoint config: " + config.FQDN);
                    }
                } else if (config.shared || !this.mWifiPermissionsUtil.doesUidBelongToCurrentUser(config.creatorUid)) {
                    sharedConfigurations.add(config);
                } else {
                    userConfigurations.add(config);
                }
            }
        }
        Iterator<Integer> it = legacyPasspointNetId.iterator();
        while (it.hasNext()) {
            int networkId = it.next().intValue();
            this.mConfiguredNetworks.remove(networkId);
        }
        this.mNetworkListSharedStoreData.setConfigurations(sharedConfigurations);
        this.mNetworkListUserStoreData.setConfigurations(userConfigurations);
        this.mDeletedEphemeralSsidsStoreData.setSsidToTimeMap(this.mDeletedEphemeralSsidsToTimeMap);
        this.mRandomizedMacStoreData.setMacMapping(this.mRandomizedMacAddressMapping);
        try {
            this.mWifiConfigStore.write(forceWrite);
            return true;
        } catch (IOException | IllegalStateException e) {
            Log.wtf(TAG, "Writing to store failed. Saved networks maybe lost!", e);
            return false;
        } catch (XmlPullParserException e2) {
            Log.wtf(TAG, "XML serialization for store failed. Saved networks maybe lost!", e2);
            return false;
        }
    }

    private void localLog(String s) {
        LocalLog localLog = this.mLocalLog;
        if (localLog != null) {
            localLog.log(s);
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("Dump of WifiConfigManager");
        pw.println("WifiConfigManager - Log Begin ----");
        this.mLocalLog.dump(fd, pw, args);
        pw.println("WifiConfigManager - Log End ----");
        pw.println("WifiConfigManager - Configured networks Begin ----");
        for (WifiConfiguration network : getInternalConfiguredNetworks()) {
            pw.println(network);
        }
        pw.println("WifiConfigManager - Configured networks End ----");
        pw.println("WifiConfigManager - Next network ID to be allocated " + this.mNextNetworkId);
        pw.println("WifiConfigManager - Last selected network ID " + this.mLastSelectedNetworkId);
        pw.println("WifiConfigManager - PNO scan frequency culling enabled = " + this.mPnoFrequencyCullingEnabled);
        pw.println("WifiConfigManager - PNO scan recency sorting enabled = " + this.mPnoRecencySortingEnabled);
        this.mWifiConfigStore.dump(fd, pw, args);
    }

    private boolean canModifyProxySettings(int uid) {
        DevicePolicyManagerInternal dpmi = this.mWifiPermissionsWrapper.getDevicePolicyManagerInternal();
        boolean isUidProfileOwner = dpmi != null && dpmi.isActiveAdminWithPolicy(uid, -1);
        boolean isUidDeviceOwner = dpmi != null && dpmi.isActiveAdminWithPolicy(uid, -2);
        boolean hasNetworkSettingsPermission = this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid);
        boolean hasNetworkSetupWizardPermission = this.mWifiPermissionsUtil.checkNetworkSetupWizardPermission(uid);
        if (isUidDeviceOwner || isUidProfileOwner || hasNetworkSettingsPermission || hasNetworkSetupWizardPermission) {
            return true;
        }
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "UID: " + uid + " cannot modify WifiConfiguration proxy settings. hasNetworkSettings=" + hasNetworkSettingsPermission + " hasNetworkSetupWizard=" + hasNetworkSetupWizardPermission + " DeviceOwner=" + isUidDeviceOwner + " ProfileOwner=" + isUidProfileOwner);
        }
        return false;
    }

    public void setOnSavedNetworkUpdateListener(OnSavedNetworkUpdateListener listener) {
        this.mListener = listener;
    }

    public void setRecentFailureAssociationStatus(int netId, int reason) {
        WifiConfiguration config = getInternalConfiguredNetwork(netId);
        if (config == null) {
            return;
        }
        config.recentFailure.setAssociationStatus(reason);
    }

    public void clearRecentFailureReason(int netId) {
        WifiConfiguration config = getInternalConfiguredNetwork(netId);
        if (config == null) {
            return;
        }
        config.recentFailure.clear();
    }
}
