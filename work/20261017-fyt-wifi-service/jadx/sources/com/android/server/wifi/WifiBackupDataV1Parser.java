package com.android.server.wifi;

import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.net.RouteInfo;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.util.Log;
import android.util.Pair;
import com.android.server.wifi.util.XmlUtil;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
class WifiBackupDataV1Parser implements WifiBackupDataParser {
    private static final int HIGHEST_SUPPORTED_MINOR_VERSION = 1;
    private static final String TAG = "WifiBackupDataV1Parser";
    private static final Set<String> WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS = new HashSet(Arrays.asList(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_CONFIG_KEY, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_SSID, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_BSSID, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_PRE_SHARED_KEY, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_WEP_KEYS, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_WEP_TX_KEY_INDEX, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_HIDDEN_SSID, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_REQUIRE_PMF, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_KEY_MGMT, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_PROTOCOLS, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_AUTH_ALGOS, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_GROUP_CIPHERS, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_PAIRWISE_CIPHERS, XmlUtil.WifiConfigurationXmlUtil.XML_TAG_SHARED));
    private static final Set<String> WIFI_CONFIGURATION_MINOR_V1_SUPPORTED_TAGS = new HashSet<String>() { // from class: com.android.server.wifi.WifiBackupDataV1Parser.1
        {
            addAll(WifiBackupDataV1Parser.WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS);
            add(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_METERED_OVERRIDE);
        }
    };
    private static final Set<String> IP_CONFIGURATION_MINOR_V0_V1_SUPPORTED_TAGS = new HashSet(Arrays.asList(XmlUtil.IpConfigurationXmlUtil.XML_TAG_IP_ASSIGNMENT, XmlUtil.IpConfigurationXmlUtil.XML_TAG_LINK_ADDRESS, XmlUtil.IpConfigurationXmlUtil.XML_TAG_LINK_PREFIX_LENGTH, XmlUtil.IpConfigurationXmlUtil.XML_TAG_GATEWAY_ADDRESS, XmlUtil.IpConfigurationXmlUtil.XML_TAG_DNS_SERVER_ADDRESSES, XmlUtil.IpConfigurationXmlUtil.XML_TAG_PROXY_SETTINGS, XmlUtil.IpConfigurationXmlUtil.XML_TAG_PROXY_HOST, XmlUtil.IpConfigurationXmlUtil.XML_TAG_PROXY_PORT, XmlUtil.IpConfigurationXmlUtil.XML_TAG_PROXY_EXCLUSION_LIST, XmlUtil.IpConfigurationXmlUtil.XML_TAG_PROXY_PAC_FILE));

    WifiBackupDataV1Parser() {
    }

    @Override // com.android.server.wifi.WifiBackupDataParser
    public List<WifiConfiguration> parseNetworkConfigurationsFromXml(XmlPullParser in, int outerTagDepth, int minorVersion) throws XmlPullParserException, IOException {
        if (minorVersion > 1) {
            minorVersion = 1;
        }
        XmlUtil.gotoNextSectionWithName(in, "NetworkList", outerTagDepth);
        int networkListTagDepth = outerTagDepth + 1;
        List<WifiConfiguration> configurations = new ArrayList<>();
        while (XmlUtil.gotoNextSectionWithNameOrEnd(in, "Network", networkListTagDepth)) {
            WifiConfiguration configuration = parseNetworkConfigurationFromXml(in, minorVersion, networkListTagDepth);
            if (configuration != null) {
                Log.v(TAG, "Parsed Configuration: " + configuration.configKey());
                configurations.add(configuration);
            }
        }
        return configurations;
    }

    private WifiConfiguration parseNetworkConfigurationFromXml(XmlPullParser in, int minorVersion, int outerTagDepth) throws XmlPullParserException, IOException {
        int networkTagDepth = outerTagDepth + 1;
        XmlUtil.gotoNextSectionWithName(in, "WifiConfiguration", networkTagDepth);
        int configTagDepth = networkTagDepth + 1;
        WifiConfiguration configuration = parseWifiConfigurationFromXml(in, configTagDepth, minorVersion);
        if (configuration == null) {
            return null;
        }
        XmlUtil.gotoNextSectionWithName(in, "IpConfiguration", networkTagDepth);
        IpConfiguration ipConfiguration = parseIpConfigurationFromXml(in, configTagDepth, minorVersion);
        configuration.setIpConfiguration(ipConfiguration);
        return configuration;
    }

    private WifiConfiguration parseWifiConfigurationFromXml(XmlPullParser in, int outerTagDepth, int minorVersion) throws XmlPullParserException, IOException {
        Pair<String, WifiConfiguration> parsedConfig = parseWifiConfigurationFromXmlInternal(in, outerTagDepth, minorVersion);
        if (parsedConfig == null || parsedConfig.first == null || parsedConfig.second == null) {
            return null;
        }
        String configKeyParsed = (String) parsedConfig.first;
        WifiConfiguration configuration = (WifiConfiguration) parsedConfig.second;
        String configKeyCalculated = configuration.configKey();
        if (!configKeyParsed.equals(configKeyCalculated)) {
            Log.w(TAG, "Configuration key does not match. Retrieved: " + configKeyParsed + ", Calculated: " + configKeyCalculated);
        }
        return configuration;
    }

    private static void clearAnyKnownIssuesInParsedConfiguration(WifiConfiguration config) {
        if (config.allowedKeyManagement.length() > WifiConfiguration.KeyMgmt.strings.length) {
            config.allowedKeyManagement.clear(WifiConfiguration.KeyMgmt.strings.length, config.allowedKeyManagement.length());
        }
        if (config.allowedProtocols.length() > WifiConfiguration.Protocol.strings.length) {
            config.allowedProtocols.clear(WifiConfiguration.Protocol.strings.length, config.allowedProtocols.length());
        }
        if (config.allowedAuthAlgorithms.length() > WifiConfiguration.AuthAlgorithm.strings.length) {
            config.allowedAuthAlgorithms.clear(WifiConfiguration.AuthAlgorithm.strings.length, config.allowedAuthAlgorithms.length());
        }
        if (config.allowedGroupCiphers.length() > WifiConfiguration.GroupCipher.strings.length) {
            config.allowedGroupCiphers.clear(WifiConfiguration.GroupCipher.strings.length, config.allowedGroupCiphers.length());
        }
        if (config.allowedPairwiseCiphers.length() > WifiConfiguration.PairwiseCipher.strings.length) {
            config.allowedPairwiseCiphers.clear(WifiConfiguration.PairwiseCipher.strings.length, config.allowedPairwiseCiphers.length());
        }
    }

    private static Pair<String, WifiConfiguration> parseWifiConfigurationFromXmlInternal(XmlPullParser in, int outerTagDepth, int minorVersion) throws XmlPullParserException, IOException {
        WifiConfiguration configuration = new WifiConfiguration();
        String configKeyInData = null;
        Set<String> supportedTags = getSupportedWifiConfigurationTags(minorVersion);
        while (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
            byte b = 1;
            String[] valueName = new String[1];
            Object value = XmlUtil.readCurrentValue(in, valueName);
            String tagName = valueName[0];
            if (tagName == null) {
                throw new XmlPullParserException("Missing value name");
            }
            if (supportedTags.contains(tagName)) {
                switch (tagName.hashCode()) {
                    case -1819699067:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_SHARED) ? (byte) -1 : (byte) 13;
                        break;
                    case -1704616680:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_KEY_MGMT) ? (byte) -1 : (byte) 8;
                        break;
                    case -181205965:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_PROTOCOLS) ? (byte) -1 : (byte) 9;
                        break;
                    case -51197516:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_METERED_OVERRIDE) ? (byte) -1 : (byte) 14;
                        break;
                    case 2554747:
                        if (!tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_SSID)) {
                            b = -1;
                        }
                        break;
                    case 63507133:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_BSSID) ? (byte) -1 : (byte) 2;
                        break;
                    case 682791106:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_PAIRWISE_CIPHERS) ? (byte) -1 : (byte) 12;
                        break;
                    case 736944625:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_GROUP_CIPHERS) ? (byte) -1 : (byte) 11;
                        break;
                    case 797043831:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_PRE_SHARED_KEY) ? (byte) -1 : (byte) 3;
                        break;
                    case 1199498141:
                        b = tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_CONFIG_KEY) ? (byte) 0 : (byte) -1;
                        break;
                    case 1851050768:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_ALLOWED_AUTH_ALGOS) ? (byte) -1 : (byte) 10;
                        break;
                    case 1905126713:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_WEP_TX_KEY_INDEX) ? (byte) -1 : (byte) 5;
                        break;
                    case 1955037270:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_WEP_KEYS) ? (byte) -1 : (byte) 4;
                        break;
                    case 1965854789:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_HIDDEN_SSID) ? (byte) -1 : (byte) 6;
                        break;
                    case 2143705732:
                        b = !tagName.equals(XmlUtil.WifiConfigurationXmlUtil.XML_TAG_REQUIRE_PMF) ? (byte) -1 : (byte) 7;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        configKeyInData = (String) value;
                        break;
                    case 1:
                        configuration.SSID = (String) value;
                        break;
                    case 2:
                        configuration.BSSID = (String) value;
                        break;
                    case 3:
                        configuration.preSharedKey = (String) value;
                        break;
                    case 4:
                        populateWepKeysFromXmlValue(value, configuration.wepKeys);
                        break;
                    case 5:
                        configuration.wepTxKeyIndex = ((Integer) value).intValue();
                        break;
                    case 6:
                        configuration.hiddenSSID = ((Boolean) value).booleanValue();
                        break;
                    case 7:
                        configuration.requirePMF = ((Boolean) value).booleanValue();
                        break;
                    case 8:
                        byte[] allowedKeyMgmt = (byte[]) value;
                        configuration.allowedKeyManagement = BitSet.valueOf(allowedKeyMgmt);
                        break;
                    case 9:
                        byte[] allowedProtocols = (byte[]) value;
                        configuration.allowedProtocols = BitSet.valueOf(allowedProtocols);
                        break;
                    case 10:
                        byte[] allowedAuthAlgorithms = (byte[]) value;
                        configuration.allowedAuthAlgorithms = BitSet.valueOf(allowedAuthAlgorithms);
                        break;
                    case 11:
                        byte[] allowedGroupCiphers = (byte[]) value;
                        configuration.allowedGroupCiphers = BitSet.valueOf(allowedGroupCiphers);
                        break;
                    case 12:
                        byte[] allowedPairwiseCiphers = (byte[]) value;
                        configuration.allowedPairwiseCiphers = BitSet.valueOf(allowedPairwiseCiphers);
                        break;
                    case 13:
                        configuration.shared = ((Boolean) value).booleanValue();
                        break;
                    case 14:
                        configuration.meteredOverride = ((Integer) value).intValue();
                        break;
                    default:
                        throw new XmlPullParserException("Unknown value name found: " + valueName[0]);
                }
            } else {
                Log.w(TAG, "Unsupported tag + \"" + tagName + "\" found in <WifiConfiguration> section, ignoring.");
            }
        }
        clearAnyKnownIssuesInParsedConfiguration(configuration);
        return Pair.create(configKeyInData, configuration);
    }

    private static Set<String> getSupportedWifiConfigurationTags(int minorVersion) {
        if (minorVersion == 0) {
            return WIFI_CONFIGURATION_MINOR_V0_SUPPORTED_TAGS;
        }
        if (minorVersion == 1) {
            return WIFI_CONFIGURATION_MINOR_V1_SUPPORTED_TAGS;
        }
        Log.e(TAG, "Invalid minorVersion: " + minorVersion);
        return Collections.emptySet();
    }

    private static void populateWepKeysFromXmlValue(Object value, String[] wepKeys) throws XmlPullParserException, IOException {
        String[] wepKeysInData = (String[]) value;
        if (wepKeysInData == null) {
            return;
        }
        if (wepKeysInData.length != wepKeys.length) {
            throw new XmlPullParserException("Invalid Wep Keys length: " + wepKeysInData.length);
        }
        for (int i = 0; i < wepKeys.length; i++) {
            if (wepKeysInData[i].isEmpty()) {
                wepKeys[i] = null;
            } else {
                wepKeys[i] = wepKeysInData[i];
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:43:0x00ba  */
    private static IpConfiguration parseIpConfigurationFromXml(XmlPullParser in, int outerTagDepth, int minorVersion) throws XmlPullParserException, IOException {
        Set<String> supportedTags = getSupportedIpConfigurationTags(minorVersion);
        String ipAssignmentString = null;
        String linkAddressString = null;
        Integer linkPrefixLength = null;
        String gatewayAddressString = null;
        String[] dnsServerAddressesString = null;
        String proxySettingsString = null;
        String proxyHost = null;
        int proxyPort = -1;
        String proxyExclusionList = null;
        String proxyPacFile = null;
        while (true) {
            if (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
                String[] valueName = new String[1];
                Object value = XmlUtil.readCurrentValue(in, valueName);
                String tagName = valueName[0];
                if (tagName == null) {
                    throw new XmlPullParserException("Missing value name");
                }
                if (!supportedTags.contains(tagName)) {
                    Log.w(TAG, "Unsupported tag + \"" + tagName + "\" found in <IpConfiguration> section, ignoring.");
                    supportedTags = supportedTags;
                } else {
                    Set<String> supportedTags2 = supportedTags;
                    switch (tagName) {
                        case "IpAssignment":
                            String ipAssignmentString2 = (String) value;
                            ipAssignmentString = ipAssignmentString2;
                            break;
                        case "LinkAddress":
                            String linkAddressString2 = (String) value;
                            linkAddressString = linkAddressString2;
                            break;
                        case "LinkPrefixLength":
                            Integer linkPrefixLength2 = (Integer) value;
                            linkPrefixLength = linkPrefixLength2;
                            break;
                        case "GatewayAddress":
                            String gatewayAddressString2 = (String) value;
                            gatewayAddressString = gatewayAddressString2;
                            break;
                        case "DNSServers":
                            String[] dnsServerAddressesString2 = (String[]) value;
                            dnsServerAddressesString = dnsServerAddressesString2;
                            break;
                        case "ProxySettings":
                            String proxySettingsString2 = (String) value;
                            proxySettingsString = proxySettingsString2;
                            break;
                        case "ProxyHost":
                            String proxyHost2 = (String) value;
                            proxyHost = proxyHost2;
                            break;
                        case "ProxyPort":
                            int proxyPort2 = ((Integer) value).intValue();
                            proxyPort = proxyPort2;
                            break;
                        case "ProxyExclusionList":
                            String proxyExclusionList2 = (String) value;
                            proxyExclusionList = proxyExclusionList2;
                            break;
                        case "ProxyPac":
                            String proxyPacFile2 = (String) value;
                            proxyPacFile = proxyPacFile2;
                            break;
                        default:
                            throw new XmlPullParserException("Unknown value name found: " + valueName[0]);
                    }
                    supportedTags = supportedTags2;
                }
            } else {
                IpConfiguration ipConfiguration = new IpConfiguration();
                if (ipAssignmentString == null) {
                    throw new XmlPullParserException("IpAssignment was missing in IpConfiguration section");
                }
                IpConfiguration.IpAssignment ipAssignment = IpConfiguration.IpAssignment.valueOf(ipAssignmentString);
                ipConfiguration.setIpAssignment(ipAssignment);
                int i = AnonymousClass2.$SwitchMap$android$net$IpConfiguration$IpAssignment[ipAssignment.ordinal()];
                if (i == 1) {
                    StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
                    if (linkAddressString != null && linkPrefixLength != null) {
                        LinkAddress linkAddress = new LinkAddress(NetworkUtils.numericToInetAddress(linkAddressString), linkPrefixLength.intValue());
                        if (linkAddress.getAddress() instanceof Inet4Address) {
                            staticIpConfiguration.ipAddress = linkAddress;
                        } else {
                            Log.w(TAG, "Non-IPv4 address: " + linkAddress);
                        }
                    }
                    if (gatewayAddressString != null) {
                        InetAddress gateway = NetworkUtils.numericToInetAddress(gatewayAddressString);
                        RouteInfo route = new RouteInfo(null, gateway);
                        if (route.isIPv4Default()) {
                            staticIpConfiguration.gateway = gateway;
                        } else {
                            Log.w(TAG, "Non-IPv4 default route: " + route);
                        }
                    }
                    if (dnsServerAddressesString != null) {
                        int i2 = 0;
                        for (int length = dnsServerAddressesString.length; i2 < length; length = length) {
                            String dnsServerAddressString = dnsServerAddressesString[i2];
                            InetAddress dnsServerAddress = NetworkUtils.numericToInetAddress(dnsServerAddressString);
                            staticIpConfiguration.dnsServers.add(dnsServerAddress);
                            i2++;
                        }
                    }
                    ipConfiguration.setStaticIpConfiguration(staticIpConfiguration);
                } else if (i != 2 && i != 3) {
                    throw new XmlPullParserException("Unknown ip assignment type: " + ipAssignment);
                }
                if (proxySettingsString == null) {
                    throw new XmlPullParserException("ProxySettings was missing in IpConfiguration section");
                }
                IpConfiguration.ProxySettings proxySettings = IpConfiguration.ProxySettings.valueOf(proxySettingsString);
                ipConfiguration.setProxySettings(proxySettings);
                int i3 = AnonymousClass2.$SwitchMap$android$net$IpConfiguration$ProxySettings[proxySettings.ordinal()];
                if (i3 == 1) {
                    if (proxyHost == null) {
                        throw new XmlPullParserException("ProxyHost was missing in IpConfiguration section");
                    }
                    if (proxyPort == -1) {
                        throw new XmlPullParserException("ProxyPort was missing in IpConfiguration section");
                    }
                    if (proxyExclusionList == null) {
                        throw new XmlPullParserException("ProxyExclusionList was missing in IpConfiguration section");
                    }
                    ipConfiguration.setHttpProxy(new ProxyInfo(proxyHost, proxyPort, proxyExclusionList));
                } else if (i3 == 2) {
                    if (proxyPacFile == null) {
                        throw new XmlPullParserException("ProxyPac was missing in IpConfiguration section");
                    }
                    ipConfiguration.setHttpProxy(new ProxyInfo(proxyPacFile));
                } else if (i3 != 3 && i3 != 4) {
                    throw new XmlPullParserException("Unknown proxy settings type: " + proxySettings);
                }
                return ipConfiguration;
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.WifiBackupDataV1Parser$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$IpAssignment;
        static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$ProxySettings = new int[IpConfiguration.ProxySettings.values().length];

        static {
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.PAC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.UNASSIGNED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $SwitchMap$android$net$IpConfiguration$IpAssignment = new int[IpConfiguration.IpAssignment.values().length];
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.DHCP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.UNASSIGNED.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private static Set<String> getSupportedIpConfigurationTags(int minorVersion) {
        if (minorVersion == 0 || minorVersion == 1) {
            return IP_CONFIGURATION_MINOR_V0_V1_SUPPORTED_TAGS;
        }
        Log.e(TAG, "Invalid minorVersion: " + minorVersion);
        return Collections.emptySet();
    }
}
