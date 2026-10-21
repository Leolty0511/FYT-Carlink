package com.android.server.wifi;

import android.content.pm.UserInfo;
import android.net.IpConfiguration;
import android.net.MacAddress;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.net.wifi.WifiNetworkSpecifier;
import android.net.wifi.WifiScanner;
import android.os.PatternMatcher;
import android.os.UserHandle;
import android.security.keystore.AndroidKeyStoreProvider;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.util.NativeUtil;
import com.android.server.wifi.util.TelephonyUtil;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.ProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes.dex */
public class WifiConfigurationUtil {
    private static final int ENCLOSING_QUOTES_LEN = 2;
    private static final long MAC_ADDRESS_LOCALLY_ASSIGNED_MASK = 2199023255552L;
    private static final long MAC_ADDRESS_MULTICAST_MASK = 1099511627776L;
    private static final long MAC_ADDRESS_VALID_LONG_MASK = 281474976710655L;
    private static final String MAC_RANDOMIZATION_ALIAS = "MacRandSecret";
    private static final String MATCH_EMPTY_SSID_PATTERN_PATH = "";

    @VisibleForTesting
    public static final String PASSWORD_MASK = "*";
    private static final int PSK_ASCII_MIN_LEN = 10;
    private static final int PSK_SAE_ASCII_MAX_LEN = 65;
    private static final int PSK_SAE_HEX_LEN = 64;
    private static final int SAE_ASCII_MIN_LEN = 3;
    private static final int SSID_HEX_MAX_LEN = 64;
    private static final int SSID_HEX_MIN_LEN = 2;
    private static final int SSID_UTF_8_MAX_LEN = 34;
    private static final int SSID_UTF_8_MIN_LEN = 3;
    private static final String TAG = "WifiConfigurationUtil";
    public static final boolean VALIDATE_FOR_ADD = true;
    public static final boolean VALIDATE_FOR_UPDATE = false;
    private static final Pair<MacAddress, MacAddress> MATCH_NONE_BSSID_PATTERN = new Pair<>(MacAddress.BROADCAST_ADDRESS, MacAddress.BROADCAST_ADDRESS);
    private static final Pair<MacAddress, MacAddress> MATCH_ALL_BSSID_PATTERN = new Pair<>(MacAddress.ALL_ZEROS_ADDRESS, MacAddress.ALL_ZEROS_ADDRESS);

    public static boolean isVisibleToAnyProfile(WifiConfiguration config, List<UserInfo> profiles) {
        return config.shared || doesUidBelongToAnyProfile(config.creatorUid, profiles);
    }

    public static boolean doesUidBelongToAnyProfile(int uid, List<UserInfo> profiles) {
        int userId = UserHandle.getUserId(uid);
        for (UserInfo profile : profiles) {
            if (profile.id == userId) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasAnyValidWepKey(String[] wepKeys) {
        for (String str : wepKeys) {
            if (str != null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isConfigForPskNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(1);
    }

    public static boolean isConfigForSaeNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(8);
    }

    public static boolean isConfigForOweNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(9);
    }

    public static boolean isConfigForEapNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(2) || config.allowedKeyManagement.get(3);
    }

    public static boolean isConfigForWapiPskNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(13);
    }

    public static boolean isConfigForWapiCertNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(14);
    }

    public static boolean isConfigForEapSuiteBNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(10);
    }

    public static boolean isConfigForWepNetwork(WifiConfiguration config) {
        return config.allowedKeyManagement.get(0) && hasAnyValidWepKey(config.wepKeys);
    }

    public static boolean isConfigForOpenNetwork(WifiConfiguration config) {
        return (isConfigForWepNetwork(config) || isConfigForPskNetwork(config) || isConfigForEapNetwork(config) || isConfigForSaeNetwork(config) || isConfigForEapSuiteBNetwork(config)) ? false : true;
    }

    public static boolean hasIpChanged(WifiConfiguration existingConfig, WifiConfiguration newConfig) {
        if (existingConfig.getIpAssignment() != newConfig.getIpAssignment()) {
            return true;
        }
        if (newConfig.getIpAssignment() == IpConfiguration.IpAssignment.STATIC) {
            return !Objects.equals(existingConfig.getStaticIpConfiguration(), newConfig.getStaticIpConfiguration());
        }
        return false;
    }

    public static boolean hasProxyChanged(WifiConfiguration existingConfig, WifiConfiguration newConfig) {
        if (existingConfig == null) {
            return newConfig.getProxySettings() != IpConfiguration.ProxySettings.NONE;
        }
        if (newConfig.getProxySettings() != existingConfig.getProxySettings()) {
            return true;
        }
        return true ^ Objects.equals(existingConfig.getHttpProxy(), newConfig.getHttpProxy());
    }

    public static boolean hasMacRandomizationSettingsChanged(WifiConfiguration existingConfig, WifiConfiguration newConfig) {
        if (existingConfig == null) {
            return newConfig.macRandomizationSetting != 1;
        }
        return newConfig.macRandomizationSetting != existingConfig.macRandomizationSetting;
    }

    public static MacAddress calculatePersistentMacForConfiguration(WifiConfiguration config, Mac hashFunction) {
        if (config == null || hashFunction == null) {
            return null;
        }
        try {
            byte[] hashedBytes = hashFunction.doFinal(config.getSsidAndSecurityTypeString().getBytes(StandardCharsets.UTF_8));
            ByteBuffer bf = ByteBuffer.wrap(hashedBytes);
            long longFromSsid = bf.getLong();
            long longFromSsid2 = ((longFromSsid & MAC_ADDRESS_VALID_LONG_MASK) | MAC_ADDRESS_LOCALLY_ASSIGNED_MASK) & (-1099511627777L);
            bf.clear();
            bf.putLong(0, longFromSsid2);
            MacAddress macAddress = MacAddress.fromBytes(Arrays.copyOfRange(bf.array(), 2, 8));
            return macAddress;
        } catch (IllegalStateException | ProviderException e) {
            Log.e(TAG, "Failure in calculatePersistentMac", e);
            return null;
        }
    }

    public static Mac obtainMacRandHashFunction(int uid) {
        try {
            KeyStore keyStore = AndroidKeyStoreProvider.getKeyStoreForUid(uid);
            Key key = keyStore.getKey(MAC_RANDOMIZATION_ALIAS, null);
            if (key == null) {
                key = generateAndPersistNewMacRandomizationSecret(uid);
            }
            if (key == null) {
                Log.e(TAG, "Failed to generate secret for MacRandSecret");
                return null;
            }
            Mac result = Mac.getInstance("HmacSHA256");
            result.init(key);
            return result;
        } catch (InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableKeyException e) {
            Log.e(TAG, "Failure in obtainMacRandHashFunction", e);
            return null;
        }
    }

    private static SecretKey generateAndPersistNewMacRandomizationSecret(int uid) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA256", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder(MAC_RANDOMIZATION_ALIAS, 4).setUid(uid).build());
            return keyGenerator.generateKey();
        } catch (InvalidAlgorithmParameterException | NoSuchAlgorithmException | NoSuchProviderException | ProviderException e) {
            Log.e(TAG, "Failure in generateMacRandomizationSecret", e);
            return null;
        }
    }

    @VisibleForTesting
    public static boolean hasEnterpriseConfigChanged(WifiEnterpriseConfig existingEnterpriseConfig, WifiEnterpriseConfig newEnterpriseConfig) {
        if (existingEnterpriseConfig != null && newEnterpriseConfig != null) {
            if (existingEnterpriseConfig.getEapMethod() != newEnterpriseConfig.getEapMethod() || existingEnterpriseConfig.getPhase2Method() != newEnterpriseConfig.getPhase2Method() || !TextUtils.equals(existingEnterpriseConfig.getIdentity(), newEnterpriseConfig.getIdentity())) {
                return true;
            }
            if ((!TelephonyUtil.isSimEapMethod(existingEnterpriseConfig.getEapMethod()) && !TextUtils.equals(existingEnterpriseConfig.getAnonymousIdentity(), newEnterpriseConfig.getAnonymousIdentity())) || !TextUtils.equals(existingEnterpriseConfig.getPassword(), newEnterpriseConfig.getPassword())) {
                return true;
            }
            if (existingEnterpriseConfig.getSimNum() != newEnterpriseConfig.getSimNum()) {
                Log.d(TAG, "hasEnterpriseConfigChanged existingEnterpriseConfig simNum = " + existingEnterpriseConfig.getSimNum() + ",newEnterpriseConfig simNum = " + existingEnterpriseConfig.getSimNum());
                return true;
            }
            X509Certificate[] existingCaCerts = existingEnterpriseConfig.getCaCertificates();
            X509Certificate[] newCaCerts = newEnterpriseConfig.getCaCertificates();
            if (!Arrays.equals(existingCaCerts, newCaCerts)) {
                return true;
            }
            return false;
        }
        if (existingEnterpriseConfig != null || newEnterpriseConfig != null) {
            return true;
        }
        return false;
    }

    public static boolean hasCredentialChanged(WifiConfiguration existingConfig, WifiConfiguration newConfig) {
        return (Objects.equals(existingConfig.allowedKeyManagement, newConfig.allowedKeyManagement) && Objects.equals(existingConfig.allowedProtocols, newConfig.allowedProtocols) && Objects.equals(existingConfig.allowedAuthAlgorithms, newConfig.allowedAuthAlgorithms) && Objects.equals(existingConfig.allowedPairwiseCiphers, newConfig.allowedPairwiseCiphers) && Objects.equals(existingConfig.allowedGroupCiphers, newConfig.allowedGroupCiphers) && Objects.equals(existingConfig.allowedGroupManagementCiphers, newConfig.allowedGroupManagementCiphers) && Objects.equals(existingConfig.allowedSuiteBCiphers, newConfig.allowedSuiteBCiphers) && Objects.equals(existingConfig.preSharedKey, newConfig.preSharedKey) && Arrays.equals(existingConfig.wepKeys, newConfig.wepKeys) && existingConfig.wepTxKeyIndex == newConfig.wepTxKeyIndex && existingConfig.hiddenSSID == newConfig.hiddenSSID && existingConfig.requirePMF == newConfig.requirePMF && !hasEnterpriseConfigChanged(existingConfig.enterpriseConfig, newConfig.enterpriseConfig)) ? false : true;
    }

    private static boolean validateSsid(String ssid, boolean isAdd) {
        if (isAdd) {
            if (ssid == null) {
                Log.e(TAG, "validateSsid : null string");
                return false;
            }
        } else if (ssid == null) {
            return true;
        }
        if (ssid.isEmpty()) {
            Log.e(TAG, "validateSsid failed: empty string");
            return false;
        }
        try {
            NativeUtil.decodeSsid(ssid);
            return true;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "validateSsid failed: malformed string: " + ssid);
            return false;
        }
    }

    private static boolean validateBssid(MacAddress bssid) {
        if (bssid == null || bssid.getAddressType() == 1) {
            return true;
        }
        Log.e(TAG, "validateBssid failed: invalid bssid");
        return false;
    }

    private static boolean validateBssid(String bssid) {
        if (bssid == null) {
            return true;
        }
        if (bssid.isEmpty()) {
            Log.e(TAG, "validateBssid failed: empty string");
            return false;
        }
        try {
            MacAddress bssidMacAddress = MacAddress.fromString(bssid);
            return validateBssid(bssidMacAddress);
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "validateBssid failed: malformed string: " + bssid);
            return false;
        }
    }

    private static boolean validatePassword(String password, boolean isAdd, boolean isSae) {
        int targetMinLength;
        if (isAdd) {
            if (password == null) {
                Log.e(TAG, "validatePassword: null string");
                return false;
            }
        } else if (password == null || password.equals("*")) {
            return true;
        }
        if (password.isEmpty()) {
            Log.e(TAG, "validatePassword failed: empty string");
            return false;
        }
        if (password.startsWith("\"")) {
            byte[] passwordBytes = password.getBytes(StandardCharsets.US_ASCII);
            if (isSae) {
                targetMinLength = 3;
            } else {
                targetMinLength = 10;
            }
            if (passwordBytes.length < targetMinLength) {
                Log.e(TAG, "validatePassword failed: ASCII string size too small: " + passwordBytes.length);
                return false;
            }
            if (passwordBytes.length > 65) {
                Log.e(TAG, "validatePassword failed: ASCII string size too large: " + passwordBytes.length);
                return false;
            }
        } else if (password.length() != 64) {
            Log.e(TAG, "validatePassword failed: hex string size mismatch: " + password.length());
            return false;
        }
        try {
            NativeUtil.hexOrQuotedStringToBytes(password);
            return true;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "validatePassword failed: malformed string: " + password);
            return false;
        }
    }

    private static boolean validateBitSet(BitSet bitSet, int validValuesLength) {
        if (bitSet == null) {
            return false;
        }
        BitSet clonedBitset = (BitSet) bitSet.clone();
        clonedBitset.clear(0, validValuesLength);
        return clonedBitset.isEmpty();
    }

    private static boolean validateBitSets(WifiConfiguration config) {
        if (!validateBitSet(config.allowedKeyManagement, WifiConfiguration.KeyMgmt.strings.length)) {
            Log.e(TAG, "validateBitsets failed: invalid allowedKeyManagement bitset " + config.allowedKeyManagement);
            return false;
        }
        if (!validateBitSet(config.allowedProtocols, WifiConfiguration.Protocol.strings.length)) {
            Log.e(TAG, "validateBitsets failed: invalid allowedProtocols bitset " + config.allowedProtocols);
            return false;
        }
        if (!validateBitSet(config.allowedAuthAlgorithms, WifiConfiguration.AuthAlgorithm.strings.length)) {
            Log.e(TAG, "validateBitsets failed: invalid allowedAuthAlgorithms bitset " + config.allowedAuthAlgorithms);
            return false;
        }
        if (!validateBitSet(config.allowedGroupCiphers, WifiConfiguration.GroupCipher.strings.length)) {
            Log.e(TAG, "validateBitsets failed: invalid allowedGroupCiphers bitset " + config.allowedGroupCiphers);
            return false;
        }
        if (!validateBitSet(config.allowedPairwiseCiphers, WifiConfiguration.PairwiseCipher.strings.length)) {
            Log.e(TAG, "validateBitsets failed: invalid allowedPairwiseCiphers bitset " + config.allowedPairwiseCiphers);
            return false;
        }
        return true;
    }

    private static boolean validateKeyMgmt(BitSet keyMgmnt) {
        if (keyMgmnt.cardinality() > 1) {
            if (keyMgmnt.cardinality() > 3) {
                Log.e(TAG, "validateKeyMgmt failed: cardinality > 3");
                return false;
            }
            if (!keyMgmnt.get(2)) {
                Log.e(TAG, "validateKeyMgmt failed: not WPA_EAP");
                return false;
            }
            if (!keyMgmnt.get(3) && !keyMgmnt.get(1)) {
                Log.e(TAG, "validateKeyMgmt failed: not PSK or 8021X");
                return false;
            }
            if (keyMgmnt.cardinality() == 3 && !keyMgmnt.get(10)) {
                Log.e(TAG, "validateKeyMgmt failed: not SUITE_B_192");
                return false;
            }
        }
        return true;
    }

    private static boolean validateIpConfiguration(IpConfiguration ipConfig) {
        if (ipConfig == null) {
            Log.e(TAG, "validateIpConfiguration failed: null IpConfiguration");
            return false;
        }
        if (ipConfig.getIpAssignment() == IpConfiguration.IpAssignment.STATIC) {
            StaticIpConfiguration staticIpConfig = ipConfig.getStaticIpConfiguration();
            if (staticIpConfig == null) {
                Log.e(TAG, "validateIpConfiguration failed: null StaticIpConfiguration");
                return false;
            }
            if (staticIpConfig.ipAddress == null) {
                Log.e(TAG, "validateIpConfiguration failed: null static ip Address");
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean validate(WifiConfiguration config, boolean isAdd) {
        if (!validateSsid(config.SSID, isAdd) || !validateBssid(config.BSSID) || !validateBitSets(config) || !validateKeyMgmt(config.allowedKeyManagement)) {
            return false;
        }
        if (config.allowedKeyManagement.get(1) && !validatePassword(config.preSharedKey, isAdd, false)) {
            return false;
        }
        if (config.allowedKeyManagement.get(9) && !config.requirePMF) {
            return false;
        }
        if (!config.allowedKeyManagement.get(8) || (config.requirePMF && validatePassword(config.preSharedKey, isAdd, true))) {
            return (!config.allowedKeyManagement.get(10) || config.requirePMF) && validateIpConfiguration(config.getIpConfiguration());
        }
        return false;
    }

    private static boolean validateBssidPattern(Pair<MacAddress, MacAddress> bssidPatternMatcher) {
        if (bssidPatternMatcher == null) {
            return true;
        }
        MacAddress baseAddress = (MacAddress) bssidPatternMatcher.first;
        MacAddress mask = (MacAddress) bssidPatternMatcher.second;
        if (baseAddress.getAddressType() != 1) {
            Log.e(TAG, "validateBssidPatternMatcher failed : invalid base address: " + baseAddress);
            return false;
        }
        if (!mask.equals(MacAddress.ALL_ZEROS_ADDRESS) || baseAddress.equals(MacAddress.ALL_ZEROS_ADDRESS)) {
            return true;
        }
        Log.e(TAG, "validateBssidPatternMatcher failed : invalid mask/base: " + mask + "/" + baseAddress);
        return false;
    }

    private static boolean isValidNetworkSpecifier(WifiNetworkSpecifier specifier) {
        PatternMatcher ssidPatternMatcher = specifier.ssidPatternMatcher;
        Pair<MacAddress, MacAddress> bssidPatternMatcher = specifier.bssidPatternMatcher;
        if (ssidPatternMatcher == null || bssidPatternMatcher == null || ssidPatternMatcher.getPath() == null || bssidPatternMatcher.first == null || bssidPatternMatcher.second == null) {
            return false;
        }
        return true;
    }

    private static boolean isMatchNoneNetworkSpecifier(WifiNetworkSpecifier specifier) {
        PatternMatcher ssidPatternMatcher = specifier.ssidPatternMatcher;
        Pair<MacAddress, MacAddress> bssidPatternMatcher = specifier.bssidPatternMatcher;
        return (ssidPatternMatcher.getType() != 1 && ssidPatternMatcher.getPath().equals(MATCH_EMPTY_SSID_PATTERN_PATH)) || bssidPatternMatcher.equals(MATCH_NONE_BSSID_PATTERN);
    }

    private static boolean isMatchAllNetworkSpecifier(WifiNetworkSpecifier specifier) {
        PatternMatcher ssidPatternMatcher = specifier.ssidPatternMatcher;
        Pair<MacAddress, MacAddress> bssidPatternMatcher = specifier.bssidPatternMatcher;
        if (ssidPatternMatcher.match(MATCH_EMPTY_SSID_PATTERN_PATH) && bssidPatternMatcher.equals(MATCH_ALL_BSSID_PATTERN)) {
            return true;
        }
        return false;
    }

    public static boolean validateNetworkSpecifier(WifiNetworkSpecifier specifier) {
        if (!isValidNetworkSpecifier(specifier)) {
            Log.e(TAG, "validateNetworkSpecifier failed : invalid network specifier");
            return false;
        }
        if (isMatchNoneNetworkSpecifier(specifier)) {
            Log.e(TAG, "validateNetworkSpecifier failed : match-none specifier");
            return false;
        }
        if (isMatchAllNetworkSpecifier(specifier)) {
            Log.e(TAG, "validateNetworkSpecifier failed : match-all specifier");
            return false;
        }
        WifiConfiguration config = specifier.wifiConfiguration;
        if (specifier.ssidPatternMatcher.getType() == 0) {
            if (!validateSsid(NativeUtil.addEnclosingQuotes(specifier.ssidPatternMatcher.getPath()), true)) {
                return false;
            }
        } else if (config.hiddenSSID) {
            Log.e(TAG, "validateNetworkSpecifier failed : ssid pattern not supported for hidden networks");
            return false;
        }
        if (Objects.equals(specifier.bssidPatternMatcher.second, MacAddress.BROADCAST_ADDRESS)) {
            if (!validateBssid((MacAddress) specifier.bssidPatternMatcher.first)) {
                return false;
            }
        } else if (!validateBssidPattern(specifier.bssidPatternMatcher)) {
            return false;
        }
        if (!validateBitSets(config) || !validateKeyMgmt(config.allowedKeyManagement)) {
            return false;
        }
        if (config.allowedKeyManagement.get(1) && !validatePassword(config.preSharedKey, true, false)) {
            return false;
        }
        if (config.allowedKeyManagement.get(9) && !config.requirePMF) {
            return false;
        }
        if (!config.allowedKeyManagement.get(8) || (config.requirePMF && validatePassword(config.preSharedKey, true, true))) {
            return !config.allowedKeyManagement.get(10) || config.requirePMF;
        }
        return false;
    }

    public static boolean isSameNetwork(WifiConfiguration config, WifiConfiguration config1) {
        if (config == null && config1 == null) {
            return true;
        }
        if (config != null && config1 != null && config.networkId == config1.networkId && Objects.equals(config.SSID, config1.SSID) && !hasCredentialChanged(config, config1)) {
            return true;
        }
        return false;
    }

    public static WifiScanner.PnoSettings.PnoNetwork createPnoNetwork(WifiConfiguration config) {
        WifiScanner.PnoSettings.PnoNetwork pnoNetwork = new WifiScanner.PnoSettings.PnoNetwork(config.SSID);
        if (config.hiddenSSID) {
            pnoNetwork.flags = (byte) (pnoNetwork.flags | 1);
        }
        pnoNetwork.flags = (byte) (pnoNetwork.flags | 2);
        pnoNetwork.flags = (byte) (pnoNetwork.flags | 4);
        if (config.allowedKeyManagement.get(1)) {
            pnoNetwork.authBitField = (byte) (pnoNetwork.authBitField | 2);
        } else if (config.allowedKeyManagement.get(2) || config.allowedKeyManagement.get(3)) {
            pnoNetwork.authBitField = (byte) (pnoNetwork.authBitField | 4);
        } else {
            pnoNetwork.authBitField = (byte) (pnoNetwork.authBitField | 1);
        }
        return pnoNetwork;
    }

    public static abstract class WifiConfigurationComparator implements Comparator<WifiConfiguration> {
        private static final int ENABLED_NETWORK_SCORE = 3;
        private static final int PERMANENTLY_DISABLED_NETWORK_SCORE = 1;
        private static final int TEMPORARY_DISABLED_NETWORK_SCORE = 2;

        abstract int compareNetworksWithSameStatus(WifiConfiguration wifiConfiguration, WifiConfiguration wifiConfiguration2);

        @Override // java.util.Comparator
        public int compare(WifiConfiguration a, WifiConfiguration b) {
            int configAScore = getNetworkStatusScore(a);
            int configBScore = getNetworkStatusScore(b);
            if (configAScore == configBScore) {
                return compareNetworksWithSameStatus(a, b);
            }
            return Integer.compare(configBScore, configAScore);
        }

        private int getNetworkStatusScore(WifiConfiguration config) {
            if (config.getNetworkSelectionStatus().isNetworkEnabled()) {
                return 3;
            }
            if (config.getNetworkSelectionStatus().isNetworkTemporaryDisabled()) {
                return 2;
            }
            return 1;
        }
    }
}
