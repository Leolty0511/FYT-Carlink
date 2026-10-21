package com.android.server.wifi.util;

import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.MacAddress;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.net.RouteInfo;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.Pair;
import com.android.internal.util.XmlUtils;
import com.android.server.wifi.WifiBackupRestore;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class XmlUtil {
    private static final String TAG = "WifiXmlUtil";

    private static void gotoStartTag(XmlPullParser in) throws XmlPullParserException, IOException {
        int type = in.getEventType();
        while (type != 2 && type != 1) {
            type = in.next();
        }
    }

    private static void gotoEndTag(XmlPullParser in) throws XmlPullParserException, IOException {
        int type = in.getEventType();
        while (type != 3 && type != 1) {
            type = in.next();
        }
    }

    public static void gotoDocumentStart(XmlPullParser in, String headerName) throws XmlPullParserException, IOException {
        XmlUtils.beginDocument(in, headerName);
    }

    public static boolean gotoNextSectionOrEnd(XmlPullParser in, String[] headerName, int outerDepth) throws XmlPullParserException, IOException {
        if (!XmlUtils.nextElementWithin(in, outerDepth)) {
            return false;
        }
        headerName[0] = in.getName();
        return true;
    }

    public static boolean gotoNextSectionWithNameOrEnd(XmlPullParser in, String expectedName, int outerDepth) throws XmlPullParserException, IOException {
        String[] headerName = new String[1];
        if (!gotoNextSectionOrEnd(in, headerName, outerDepth)) {
            return false;
        }
        if (headerName[0].equals(expectedName)) {
            return true;
        }
        throw new XmlPullParserException("Next section name does not match expected name: " + expectedName);
    }

    public static void gotoNextSectionWithName(XmlPullParser in, String expectedName, int outerDepth) throws XmlPullParserException, IOException {
        if (!gotoNextSectionWithNameOrEnd(in, expectedName, outerDepth)) {
            throw new XmlPullParserException("Section not found. Expected: " + expectedName);
        }
    }

    public static boolean isNextSectionEnd(XmlPullParser in, int sectionDepth) throws XmlPullParserException, IOException {
        return !XmlUtils.nextElementWithin(in, sectionDepth);
    }

    public static Object readCurrentValue(XmlPullParser in, String[] valueName) throws XmlPullParserException, IOException {
        Object value = XmlUtils.readValueXml(in, valueName);
        gotoEndTag(in);
        return value;
    }

    public static Object readNextValueWithName(XmlPullParser in, String expectedName) throws XmlPullParserException, IOException {
        String[] valueName = new String[1];
        XmlUtils.nextElement(in);
        Object value = readCurrentValue(in, valueName);
        if (!valueName[0].equals(expectedName)) {
            throw new XmlPullParserException("Value not found. Expected: " + expectedName + ", but got: " + valueName[0]);
        }
        return value;
    }

    public static void writeDocumentStart(XmlSerializer out, String headerName) throws IOException {
        out.startDocument(null, true);
        out.startTag(null, headerName);
    }

    public static void writeDocumentEnd(XmlSerializer out, String headerName) throws IOException {
        out.endTag(null, headerName);
        out.endDocument();
    }

    public static void writeNextSectionStart(XmlSerializer out, String headerName) throws IOException {
        out.startTag(null, headerName);
    }

    public static void writeNextSectionEnd(XmlSerializer out, String headerName) throws IOException {
        out.endTag(null, headerName);
    }

    public static void writeNextValue(XmlSerializer out, String name, Object value) throws XmlPullParserException, IOException {
        XmlUtils.writeValueXml(value, name, out);
    }

    public static class WifiConfigurationXmlUtil {
        public static final String XML_TAG_ALLOWED_AUTH_ALGOS = "AllowedAuthAlgos";
        public static final String XML_TAG_ALLOWED_GROUP_CIPHERS = "AllowedGroupCiphers";
        public static final String XML_TAG_ALLOWED_GROUP_MGMT_CIPHERS = "AllowedGroupMgmtCiphers";
        public static final String XML_TAG_ALLOWED_KEY_MGMT = "AllowedKeyMgmt";
        public static final String XML_TAG_ALLOWED_PAIRWISE_CIPHERS = "AllowedPairwiseCiphers";
        public static final String XML_TAG_ALLOWED_PROTOCOLS = "AllowedProtocols";
        public static final String XML_TAG_ALLOWED_SUITE_B_CIPHERS = "AllowedSuiteBCiphers";
        public static final String XML_TAG_AUTOJOIN = "AutoJoin";
        public static final String XML_TAG_AUTOJOINMENU = "AutoJoinMenu";
        public static final String XML_TAG_BSSID = "BSSID";
        public static final String XML_TAG_CONFIG_KEY = "ConfigKey";
        public static final String XML_TAG_CREATION_TIME = "CreationTime";
        public static final String XML_TAG_CREATOR_NAME = "CreatorName";
        public static final String XML_TAG_CREATOR_UID = "CreatorUid";
        public static final String XML_TAG_DEFAULT_GW_MAC_ADDRESS = "DefaultGwMacAddress";
        public static final String XML_TAG_FORGET = "ForgetConfig";
        public static final String XML_TAG_FQDN = "FQDN";
        public static final String XML_TAG_HIDDEN_SSID = "HiddenSSID";
        public static final String XML_TAG_IS_LEGACY_PASSPOINT_CONFIG = "IsLegacyPasspointConfig";
        public static final String XML_TAG_LAST_CONNECT_UID = "LastConnectUid";
        public static final String XML_TAG_LAST_UPDATE_NAME = "LastUpdateName";
        public static final String XML_TAG_LAST_UPDATE_UID = "LastUpdateUid";
        public static final String XML_TAG_LINKED_NETWORKS_LIST = "LinkedNetworksList";
        public static final String XML_TAG_MAC_RANDOMIZATION_SETTING = "MacRandomizationSetting";
        public static final String XML_TAG_METERED_HINT = "MeteredHint";
        public static final String XML_TAG_METERED_OVERRIDE = "MeteredOverride";
        public static final String XML_TAG_MODIFY = "ModifyConfig";
        public static final String XML_TAG_NO_INTERNET_ACCESS_EXPECTED = "NoInternetAccessExpected";
        public static final String XML_TAG_NUM_ASSOCIATION = "NumAssociation";
        public static final String XML_TAG_PRE_SHARED_KEY = "PreSharedKey";
        public static final String XML_TAG_PROVIDER_FRIENDLY_NAME = "ProviderFriendlyName";
        private static final String XML_TAG_P_AUTOJOIN = "AutoJoinNetwork";
        private static final String XML_TAG_P_SIM_NUM = "EapSimSlot";
        public static final String XML_TAG_RANDOMIZED_MAC_ADDRESS = "RandomizedMacAddress";
        public static final String XML_TAG_REQUIRE_PMF = "RequirePMF";
        public static final String XML_TAG_ROAMING_CONSORTIUM_OIS = "RoamingConsortiumOIs";
        public static final String XML_TAG_SHARED = "Shared";
        public static final String XML_TAG_SSID = "SSID";
        public static final String XML_TAG_STATUS = "Status";
        public static final String XML_TAG_USER_APPROVED = "UserApproved";
        public static final String XML_TAG_USE_EXTERNAL_SCORES = "UseExternalScores";
        public static final String XML_TAG_VALIDATED_INTERNET_ACCESS = "ValidatedInternetAccess";
        public static final String XML_TAG_WAPI_AS_CERT = "WapiAsCert";
        public static final String XML_TAG_WAPI_PSK_KEY_TYPE = "WapiPskKeyType";
        public static final String XML_TAG_WAPI_USER_CERT = "WapiUserCert";
        public static final String XML_TAG_WEP_KEYS = "WEPKeys";
        public static final String XML_TAG_WEP_TX_KEY_INDEX = "WEPTxKeyIndex";

        private static void writeWepKeysToXml(XmlSerializer out, String[] wepKeys) throws XmlPullParserException, IOException {
            String[] wepKeysToWrite = new String[wepKeys.length];
            boolean hasWepKey = false;
            for (int i = 0; i < wepKeys.length; i++) {
                if (wepKeys[i] == null) {
                    wepKeysToWrite[i] = new String();
                } else {
                    wepKeysToWrite[i] = wepKeys[i];
                    hasWepKey = true;
                }
            }
            if (!hasWepKey) {
                XmlUtil.writeNextValue(out, XML_TAG_WEP_KEYS, null);
            } else {
                XmlUtil.writeNextValue(out, XML_TAG_WEP_KEYS, wepKeysToWrite);
            }
        }

        public static void writeCommonElementsToXml(XmlSerializer out, WifiConfiguration configuration) throws XmlPullParserException, IOException {
            XmlUtil.writeNextValue(out, XML_TAG_CONFIG_KEY, configuration.configKey());
            XmlUtil.writeNextValue(out, XML_TAG_SSID, configuration.SSID);
            XmlUtil.writeNextValue(out, XML_TAG_BSSID, configuration.BSSID);
            XmlUtil.writeNextValue(out, XML_TAG_PRE_SHARED_KEY, configuration.preSharedKey);
            writeWepKeysToXml(out, configuration.wepKeys);
            XmlUtil.writeNextValue(out, XML_TAG_WEP_TX_KEY_INDEX, Integer.valueOf(configuration.wepTxKeyIndex));
            XmlUtil.writeNextValue(out, XML_TAG_HIDDEN_SSID, Boolean.valueOf(configuration.hiddenSSID));
            XmlUtil.writeNextValue(out, XML_TAG_REQUIRE_PMF, Boolean.valueOf(configuration.requirePMF));
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_KEY_MGMT, configuration.allowedKeyManagement.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_PROTOCOLS, configuration.allowedProtocols.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_AUTH_ALGOS, configuration.allowedAuthAlgorithms.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_GROUP_CIPHERS, configuration.allowedGroupCiphers.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_PAIRWISE_CIPHERS, configuration.allowedPairwiseCiphers.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_GROUP_MGMT_CIPHERS, configuration.allowedGroupManagementCiphers.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_ALLOWED_SUITE_B_CIPHERS, configuration.allowedSuiteBCiphers.toByteArray());
            XmlUtil.writeNextValue(out, XML_TAG_SHARED, Boolean.valueOf(configuration.shared));
            XmlUtil.writeNextValue(out, XML_TAG_WAPI_PSK_KEY_TYPE, Integer.valueOf(configuration.wapiPskType));
            XmlUtil.writeNextValue(out, XML_TAG_WAPI_AS_CERT, configuration.wapiAsCert);
            XmlUtil.writeNextValue(out, XML_TAG_WAPI_USER_CERT, configuration.wapiUserCert);
            XmlUtil.writeNextValue(out, XML_TAG_AUTOJOIN, Boolean.valueOf(configuration.autoJoin));
            XmlUtil.writeNextValue(out, XML_TAG_AUTOJOINMENU, Boolean.valueOf(configuration.autoJoinMenu));
            XmlUtil.writeNextValue(out, XML_TAG_MODIFY, Boolean.valueOf(configuration.canModify));
            XmlUtil.writeNextValue(out, XML_TAG_FORGET, Boolean.valueOf(configuration.canForget));
        }

        public static void writeToXmlForBackup(XmlSerializer out, WifiConfiguration configuration) throws XmlPullParserException, IOException {
            writeCommonElementsToXml(out, configuration);
            XmlUtil.writeNextValue(out, XML_TAG_METERED_OVERRIDE, Integer.valueOf(configuration.meteredOverride));
        }

        public static void writeToXmlForConfigStore(XmlSerializer out, WifiConfiguration configuration) throws XmlPullParserException, IOException {
            writeCommonElementsToXml(out, configuration);
            XmlUtil.writeNextValue(out, XML_TAG_STATUS, Integer.valueOf(configuration.status));
            XmlUtil.writeNextValue(out, XML_TAG_FQDN, configuration.FQDN);
            XmlUtil.writeNextValue(out, XML_TAG_PROVIDER_FRIENDLY_NAME, configuration.providerFriendlyName);
            XmlUtil.writeNextValue(out, XML_TAG_LINKED_NETWORKS_LIST, configuration.linkedConfigurations);
            XmlUtil.writeNextValue(out, XML_TAG_DEFAULT_GW_MAC_ADDRESS, configuration.defaultGwMacAddress);
            XmlUtil.writeNextValue(out, XML_TAG_VALIDATED_INTERNET_ACCESS, Boolean.valueOf(configuration.validatedInternetAccess));
            XmlUtil.writeNextValue(out, XML_TAG_NO_INTERNET_ACCESS_EXPECTED, Boolean.valueOf(configuration.noInternetAccessExpected));
            XmlUtil.writeNextValue(out, XML_TAG_USER_APPROVED, Integer.valueOf(configuration.userApproved));
            XmlUtil.writeNextValue(out, XML_TAG_METERED_HINT, Boolean.valueOf(configuration.meteredHint));
            XmlUtil.writeNextValue(out, XML_TAG_METERED_OVERRIDE, Integer.valueOf(configuration.meteredOverride));
            XmlUtil.writeNextValue(out, XML_TAG_USE_EXTERNAL_SCORES, Boolean.valueOf(configuration.useExternalScores));
            XmlUtil.writeNextValue(out, XML_TAG_NUM_ASSOCIATION, Integer.valueOf(configuration.numAssociation));
            XmlUtil.writeNextValue(out, XML_TAG_CREATOR_UID, Integer.valueOf(configuration.creatorUid));
            XmlUtil.writeNextValue(out, XML_TAG_CREATOR_NAME, configuration.creatorName);
            XmlUtil.writeNextValue(out, XML_TAG_CREATION_TIME, configuration.creationTime);
            XmlUtil.writeNextValue(out, XML_TAG_LAST_UPDATE_UID, Integer.valueOf(configuration.lastUpdateUid));
            XmlUtil.writeNextValue(out, XML_TAG_LAST_UPDATE_NAME, configuration.lastUpdateName);
            XmlUtil.writeNextValue(out, XML_TAG_LAST_CONNECT_UID, Integer.valueOf(configuration.lastConnectUid));
            XmlUtil.writeNextValue(out, XML_TAG_IS_LEGACY_PASSPOINT_CONFIG, Boolean.valueOf(configuration.isLegacyPasspointConfig));
            XmlUtil.writeNextValue(out, XML_TAG_ROAMING_CONSORTIUM_OIS, configuration.roamingConsortiumIds);
            XmlUtil.writeNextValue(out, XML_TAG_RANDOMIZED_MAC_ADDRESS, configuration.getRandomizedMacAddress().toString());
            XmlUtil.writeNextValue(out, XML_TAG_MAC_RANDOMIZATION_SETTING, Integer.valueOf(configuration.macRandomizationSetting));
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

        public static Pair<String, WifiConfiguration> parseFromXml(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
            WifiConfiguration configuration = new WifiConfiguration();
            String configKeyInData = null;
            boolean macRandomizationSettingExists = false;
            while (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
                String[] valueName = new String[1];
                Object value = XmlUtil.readCurrentValue(in, valueName);
                if (valueName[0] == null) {
                    throw new XmlPullParserException("Missing value name");
                }
                switch (valueName[0]) {
                    case "ConfigKey":
                        configKeyInData = (String) value;
                        break;
                    case "SSID":
                        configuration.SSID = (String) value;
                        break;
                    case "BSSID":
                        configuration.BSSID = (String) value;
                        break;
                    case "PreSharedKey":
                        configuration.preSharedKey = (String) value;
                        break;
                    case "WEPKeys":
                        populateWepKeysFromXmlValue(value, configuration.wepKeys);
                        break;
                    case "WEPTxKeyIndex":
                        configuration.wepTxKeyIndex = ((Integer) value).intValue();
                        break;
                    case "HiddenSSID":
                        configuration.hiddenSSID = ((Boolean) value).booleanValue();
                        break;
                    case "RequirePMF":
                        configuration.requirePMF = ((Boolean) value).booleanValue();
                        break;
                    case "AllowedKeyMgmt":
                        byte[] allowedKeyMgmt = (byte[]) value;
                        configuration.allowedKeyManagement = BitSet.valueOf(allowedKeyMgmt);
                        break;
                    case "AllowedProtocols":
                        byte[] allowedProtocols = (byte[]) value;
                        configuration.allowedProtocols = BitSet.valueOf(allowedProtocols);
                        break;
                    case "AllowedAuthAlgos":
                        byte[] allowedAuthAlgorithms = (byte[]) value;
                        configuration.allowedAuthAlgorithms = BitSet.valueOf(allowedAuthAlgorithms);
                        break;
                    case "AllowedGroupCiphers":
                        byte[] allowedGroupCiphers = (byte[]) value;
                        configuration.allowedGroupCiphers = BitSet.valueOf(allowedGroupCiphers);
                        break;
                    case "AllowedPairwiseCiphers":
                        byte[] allowedPairwiseCiphers = (byte[]) value;
                        configuration.allowedPairwiseCiphers = BitSet.valueOf(allowedPairwiseCiphers);
                        break;
                    case "AllowedGroupMgmtCiphers":
                        byte[] allowedGroupMgmtCiphers = (byte[]) value;
                        configuration.allowedGroupManagementCiphers = BitSet.valueOf(allowedGroupMgmtCiphers);
                        break;
                    case "AllowedSuiteBCiphers":
                        byte[] allowedSuiteBCiphers = (byte[]) value;
                        configuration.allowedSuiteBCiphers = BitSet.valueOf(allowedSuiteBCiphers);
                        break;
                    case "Shared":
                        configuration.shared = ((Boolean) value).booleanValue();
                        break;
                    case "Status":
                        int status = ((Integer) value).intValue();
                        if (status == 0) {
                            status = 2;
                        }
                        configuration.status = status;
                        break;
                    case "FQDN":
                        configuration.FQDN = (String) value;
                        break;
                    case "ProviderFriendlyName":
                        configuration.providerFriendlyName = (String) value;
                        break;
                    case "LinkedNetworksList":
                        configuration.linkedConfigurations = (HashMap) value;
                        break;
                    case "DefaultGwMacAddress":
                        configuration.defaultGwMacAddress = (String) value;
                        break;
                    case "ValidatedInternetAccess":
                        configuration.validatedInternetAccess = ((Boolean) value).booleanValue();
                        break;
                    case "NoInternetAccessExpected":
                        configuration.noInternetAccessExpected = ((Boolean) value).booleanValue();
                        break;
                    case "UserApproved":
                        configuration.userApproved = ((Integer) value).intValue();
                        break;
                    case "MeteredHint":
                        configuration.meteredHint = ((Boolean) value).booleanValue();
                        break;
                    case "MeteredOverride":
                        configuration.meteredOverride = ((Integer) value).intValue();
                        break;
                    case "UseExternalScores":
                        configuration.useExternalScores = ((Boolean) value).booleanValue();
                        break;
                    case "NumAssociation":
                        configuration.numAssociation = ((Integer) value).intValue();
                        break;
                    case "CreatorUid":
                        configuration.creatorUid = ((Integer) value).intValue();
                        break;
                    case "CreatorName":
                        configuration.creatorName = (String) value;
                        break;
                    case "CreationTime":
                        configuration.creationTime = (String) value;
                        break;
                    case "LastUpdateUid":
                        configuration.lastUpdateUid = ((Integer) value).intValue();
                        break;
                    case "LastUpdateName":
                        configuration.lastUpdateName = (String) value;
                        break;
                    case "LastConnectUid":
                        configuration.lastConnectUid = ((Integer) value).intValue();
                        break;
                    case "IsLegacyPasspointConfig":
                        configuration.isLegacyPasspointConfig = ((Boolean) value).booleanValue();
                        break;
                    case "RoamingConsortiumOIs":
                        configuration.roamingConsortiumIds = (long[]) value;
                        break;
                    case "RandomizedMacAddress":
                        configuration.setRandomizedMacAddress(MacAddress.fromString((String) value));
                        break;
                    case "WapiPskKeyType":
                        configuration.wapiPskType = ((Integer) value).intValue();
                        break;
                    case "WapiAsCert":
                        configuration.wapiAsCert = (String) value;
                        break;
                    case "WapiUserCert":
                        configuration.wapiUserCert = (String) value;
                        break;
                    case "MacRandomizationSetting":
                        configuration.macRandomizationSetting = ((Integer) value).intValue();
                        macRandomizationSettingExists = true;
                        break;
                    case "AutoJoin":
                        configuration.autoJoin = ((Boolean) value).booleanValue();
                        break;
                    case "AutoJoinMenu":
                        configuration.autoJoinMenu = ((Boolean) value).booleanValue();
                        break;
                    case "ModifyConfig":
                        configuration.canModify = ((Boolean) value).booleanValue();
                        break;
                    case "ForgetConfig":
                        configuration.canForget = ((Boolean) value).booleanValue();
                        break;
                    case "AutoJoinNetwork":
                        configuration.autoJoin = ((Integer) value).intValue() != 0;
                        break;
                    case "EapSimSlot":
                        configuration.eap_sim_slot = ((Integer) value).intValue();
                        break;
                    default:
                        throw new XmlPullParserException("Unknown value name found: " + valueName[0]);
                }
            }
            if (!macRandomizationSettingExists) {
                configuration.macRandomizationSetting = 0;
            }
            return Pair.create(configKeyInData, configuration);
        }
    }

    public static class IpConfigurationXmlUtil {
        public static final String XML_TAG_DNS_SERVER_ADDRESSES = "DNSServers";
        public static final String XML_TAG_GATEWAY_ADDRESS = "GatewayAddress";
        public static final String XML_TAG_IP_ASSIGNMENT = "IpAssignment";
        public static final String XML_TAG_LINK_ADDRESS = "LinkAddress";
        public static final String XML_TAG_LINK_PREFIX_LENGTH = "LinkPrefixLength";
        public static final String XML_TAG_PROXY_EXCLUSION_LIST = "ProxyExclusionList";
        public static final String XML_TAG_PROXY_HOST = "ProxyHost";
        public static final String XML_TAG_PROXY_PAC_FILE = "ProxyPac";
        public static final String XML_TAG_PROXY_PORT = "ProxyPort";
        public static final String XML_TAG_PROXY_SETTINGS = "ProxySettings";

        private static void writeStaticIpConfigurationToXml(XmlSerializer out, StaticIpConfiguration staticIpConfiguration) throws XmlPullParserException, IOException {
            if (staticIpConfiguration.ipAddress != null) {
                XmlUtil.writeNextValue(out, XML_TAG_LINK_ADDRESS, staticIpConfiguration.ipAddress.getAddress().getHostAddress());
                XmlUtil.writeNextValue(out, XML_TAG_LINK_PREFIX_LENGTH, Integer.valueOf(staticIpConfiguration.ipAddress.getPrefixLength()));
            } else {
                XmlUtil.writeNextValue(out, XML_TAG_LINK_ADDRESS, null);
                XmlUtil.writeNextValue(out, XML_TAG_LINK_PREFIX_LENGTH, null);
            }
            if (staticIpConfiguration.gateway != null) {
                XmlUtil.writeNextValue(out, XML_TAG_GATEWAY_ADDRESS, staticIpConfiguration.gateway.getHostAddress());
            } else {
                XmlUtil.writeNextValue(out, XML_TAG_GATEWAY_ADDRESS, null);
            }
            if (staticIpConfiguration.dnsServers != null) {
                String[] dnsServers = new String[staticIpConfiguration.dnsServers.size()];
                int dnsServerIdx = 0;
                for (InetAddress inetAddr : staticIpConfiguration.dnsServers) {
                    dnsServers[dnsServerIdx] = inetAddr.getHostAddress();
                    dnsServerIdx++;
                }
                XmlUtil.writeNextValue(out, XML_TAG_DNS_SERVER_ADDRESSES, dnsServers);
                return;
            }
            XmlUtil.writeNextValue(out, XML_TAG_DNS_SERVER_ADDRESSES, null);
        }

        public static void writeToXml(XmlSerializer out, IpConfiguration ipConfiguration) throws XmlPullParserException, IOException {
            XmlUtil.writeNextValue(out, XML_TAG_IP_ASSIGNMENT, ipConfiguration.ipAssignment.toString());
            if (AnonymousClass1.$SwitchMap$android$net$IpConfiguration$IpAssignment[ipConfiguration.ipAssignment.ordinal()] == 1) {
                writeStaticIpConfigurationToXml(out, ipConfiguration.getStaticIpConfiguration());
            }
            XmlUtil.writeNextValue(out, XML_TAG_PROXY_SETTINGS, ipConfiguration.proxySettings.toString());
            int i = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$ProxySettings[ipConfiguration.proxySettings.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    XmlUtil.writeNextValue(out, XML_TAG_PROXY_PAC_FILE, ipConfiguration.httpProxy.getPacFileUrl().toString());
                }
            } else {
                XmlUtil.writeNextValue(out, XML_TAG_PROXY_HOST, ipConfiguration.httpProxy.getHost());
                XmlUtil.writeNextValue(out, XML_TAG_PROXY_PORT, Integer.valueOf(ipConfiguration.httpProxy.getPort()));
                XmlUtil.writeNextValue(out, XML_TAG_PROXY_EXCLUSION_LIST, ipConfiguration.httpProxy.getExclusionListAsString());
            }
        }

        private static StaticIpConfiguration parseStaticIpConfigurationFromXml(XmlPullParser in) throws XmlPullParserException, IOException {
            StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
            String linkAddressString = (String) XmlUtil.readNextValueWithName(in, XML_TAG_LINK_ADDRESS);
            Integer linkPrefixLength = (Integer) XmlUtil.readNextValueWithName(in, XML_TAG_LINK_PREFIX_LENGTH);
            if (linkAddressString != null && linkPrefixLength != null) {
                LinkAddress linkAddress = new LinkAddress(NetworkUtils.numericToInetAddress(linkAddressString), linkPrefixLength.intValue());
                if (!(linkAddress.getAddress() instanceof Inet4Address)) {
                    Log.w(XmlUtil.TAG, "Non-IPv4 address: " + linkAddress);
                } else {
                    staticIpConfiguration.ipAddress = linkAddress;
                }
            }
            String gatewayAddressString = (String) XmlUtil.readNextValueWithName(in, XML_TAG_GATEWAY_ADDRESS);
            if (gatewayAddressString != null) {
                InetAddress gateway = NetworkUtils.numericToInetAddress(gatewayAddressString);
                RouteInfo route = new RouteInfo(null, gateway);
                if (!route.isIPv4Default()) {
                    Log.w(XmlUtil.TAG, "Non-IPv4 default route: " + route);
                } else {
                    staticIpConfiguration.gateway = gateway;
                }
            }
            String[] dnsServerAddressesString = (String[]) XmlUtil.readNextValueWithName(in, XML_TAG_DNS_SERVER_ADDRESSES);
            if (dnsServerAddressesString != null) {
                for (String dnsServerAddressString : dnsServerAddressesString) {
                    InetAddress dnsServerAddress = NetworkUtils.numericToInetAddress(dnsServerAddressString);
                    staticIpConfiguration.dnsServers.add(dnsServerAddress);
                }
            }
            return staticIpConfiguration;
        }

        public static IpConfiguration parseFromXml(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
            IpConfiguration ipConfiguration = new IpConfiguration();
            String ipAssignmentString = (String) XmlUtil.readNextValueWithName(in, XML_TAG_IP_ASSIGNMENT);
            IpConfiguration.IpAssignment ipAssignment = IpConfiguration.IpAssignment.valueOf(ipAssignmentString);
            ipConfiguration.setIpAssignment(ipAssignment);
            int i = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$IpAssignment[ipAssignment.ordinal()];
            if (i == 1) {
                ipConfiguration.setStaticIpConfiguration(parseStaticIpConfigurationFromXml(in));
            } else if (i != 2 && i != 3) {
                throw new XmlPullParserException("Unknown ip assignment type: " + ipAssignment);
            }
            String proxySettingsString = (String) XmlUtil.readNextValueWithName(in, XML_TAG_PROXY_SETTINGS);
            IpConfiguration.ProxySettings proxySettings = IpConfiguration.ProxySettings.valueOf(proxySettingsString);
            ipConfiguration.setProxySettings(proxySettings);
            int i2 = AnonymousClass1.$SwitchMap$android$net$IpConfiguration$ProxySettings[proxySettings.ordinal()];
            if (i2 == 1) {
                String proxyHost = (String) XmlUtil.readNextValueWithName(in, XML_TAG_PROXY_HOST);
                int proxyPort = ((Integer) XmlUtil.readNextValueWithName(in, XML_TAG_PROXY_PORT)).intValue();
                String proxyExclusionList = (String) XmlUtil.readNextValueWithName(in, XML_TAG_PROXY_EXCLUSION_LIST);
                ipConfiguration.setHttpProxy(new ProxyInfo(proxyHost, proxyPort, proxyExclusionList));
            } else if (i2 == 2) {
                String proxyPacFile = (String) XmlUtil.readNextValueWithName(in, XML_TAG_PROXY_PAC_FILE);
                ipConfiguration.setHttpProxy(new ProxyInfo(proxyPacFile));
            } else if (i2 != 3 && i2 != 4) {
                throw new XmlPullParserException("Unknown proxy settings type: " + proxySettings);
            }
            return ipConfiguration;
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.util.XmlUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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

    public static class NetworkSelectionStatusXmlUtil {
        public static final String XML_TAG_CONNECT_CHOICE = "ConnectChoice";
        public static final String XML_TAG_CONNECT_CHOICE_TIMESTAMP = "ConnectChoiceTimeStamp";
        public static final String XML_TAG_DISABLE_REASON = "DisableReason";
        public static final String XML_TAG_HAS_EVER_CONNECTED = "HasEverConnected";
        public static final String XML_TAG_SELECTION_STATUS = "SelectionStatus";

        public static void writeToXml(XmlSerializer out, WifiConfiguration.NetworkSelectionStatus selectionStatus) throws XmlPullParserException, IOException {
            XmlUtil.writeNextValue(out, XML_TAG_SELECTION_STATUS, selectionStatus.getNetworkStatusString());
            XmlUtil.writeNextValue(out, XML_TAG_DISABLE_REASON, selectionStatus.getNetworkDisableReasonString());
            XmlUtil.writeNextValue(out, XML_TAG_CONNECT_CHOICE, selectionStatus.getConnectChoice());
            XmlUtil.writeNextValue(out, XML_TAG_CONNECT_CHOICE_TIMESTAMP, Long.valueOf(selectionStatus.getConnectChoiceTimestamp()));
            XmlUtil.writeNextValue(out, XML_TAG_HAS_EVER_CONNECTED, Boolean.valueOf(selectionStatus.getHasEverConnected()));
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static WifiConfiguration.NetworkSelectionStatus parseFromXml(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
            WifiConfiguration.NetworkSelectionStatus selectionStatus = new WifiConfiguration.NetworkSelectionStatus();
            String statusString = "";
            String disableReasonString = "";
            while (true) {
                byte b = -1;
                if (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
                    String[] valueName = new String[1];
                    Object value = XmlUtil.readCurrentValue(in, valueName);
                    if (valueName[0] == null) {
                        throw new XmlPullParserException("Missing value name");
                    }
                    String str = valueName[0];
                    switch (str.hashCode()) {
                        case -1529270479:
                            if (str.equals(XML_TAG_HAS_EVER_CONNECTED)) {
                                b = 4;
                            }
                            break;
                        case -822052309:
                            if (str.equals(XML_TAG_CONNECT_CHOICE_TIMESTAMP)) {
                                b = 3;
                            }
                            break;
                        case -808576245:
                            if (str.equals(XML_TAG_CONNECT_CHOICE)) {
                                b = 2;
                            }
                            break;
                        case -85195988:
                            if (str.equals(XML_TAG_DISABLE_REASON)) {
                                b = 1;
                            }
                            break;
                        case 1452117118:
                            if (str.equals(XML_TAG_SELECTION_STATUS)) {
                                b = 0;
                            }
                            break;
                    }
                    if (b == 0) {
                        statusString = (String) value;
                    } else if (b == 1) {
                        disableReasonString = (String) value;
                    } else if (b == 2) {
                        selectionStatus.setConnectChoice((String) value);
                    } else if (b == 3) {
                        selectionStatus.setConnectChoiceTimestamp(((Long) value).longValue());
                    } else {
                        if (b != 4) {
                            throw new XmlPullParserException("Unknown value name found: " + valueName[0]);
                        }
                        selectionStatus.setHasEverConnected(((Boolean) value).booleanValue());
                    }
                } else {
                    int status = Arrays.asList(WifiConfiguration.NetworkSelectionStatus.QUALITY_NETWORK_SELECTION_STATUS).indexOf(statusString);
                    int disableReason = Arrays.asList(WifiConfiguration.NetworkSelectionStatus.QUALITY_NETWORK_SELECTION_DISABLE_REASON).indexOf(disableReasonString);
                    if (status == -1 || disableReason == -1 || status == 1) {
                        status = 0;
                        disableReason = 0;
                    }
                    selectionStatus.setNetworkSelectionStatus(status);
                    selectionStatus.setNetworkSelectionDisableReason(disableReason);
                    return selectionStatus;
                }
            }
        }
    }

    public static class WifiEnterpriseConfigXmlUtil {
        public static final String XML_TAG_ALT_SUBJECT_MATCH = "AltSubjectMatch";
        public static final String XML_TAG_ANON_IDENTITY = "AnonIdentity";
        public static final String XML_TAG_CA_CERT = "CaCert";
        public static final String XML_TAG_CA_PATH = "CaPath";
        public static final String XML_TAG_CLIENT_CERT = "ClientCert";
        public static final String XML_TAG_DOM_SUFFIX_MATCH = "DomSuffixMatch";
        public static final String XML_TAG_EAP_METHOD = "EapMethod";
        public static final String XML_TAG_ENGINE = "Engine";
        public static final String XML_TAG_ENGINE_ID = "EngineId";
        public static final String XML_TAG_IDENTITY = "Identity";
        public static final String XML_TAG_MAX_CONNECT_TIME = "MaxConnectTime";
        public static final String XML_TAG_PASSWORD = "Password";
        public static final String XML_TAG_PHASE2_METHOD = "Phase2Method";
        public static final String XML_TAG_PLMN = "PLMN";
        public static final String XML_TAG_PRIVATE_KEY_ID = "PrivateKeyId";
        public static final String XML_TAG_REALM = "Realm";
        public static final String XML_TAG_SIM_IMSI = "SimIMSI";
        public static final String XML_TAG_SIM_NUM = "SimNum";
        public static final String XML_TAG_SUBJECT_MATCH = "SubjectMatch";

        public static void writeToXml(XmlSerializer out, WifiEnterpriseConfig enterpriseConfig) throws XmlPullParserException, IOException {
            XmlUtil.writeNextValue(out, XML_TAG_IDENTITY, enterpriseConfig.getFieldValue("identity"));
            XmlUtil.writeNextValue(out, XML_TAG_ANON_IDENTITY, enterpriseConfig.getFieldValue("anonymous_identity"));
            XmlUtil.writeNextValue(out, XML_TAG_PASSWORD, enterpriseConfig.getFieldValue("password"));
            XmlUtil.writeNextValue(out, XML_TAG_CLIENT_CERT, enterpriseConfig.getFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CLIENT_CERT));
            XmlUtil.writeNextValue(out, XML_TAG_CA_CERT, enterpriseConfig.getFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CA_CERT));
            XmlUtil.writeNextValue(out, XML_TAG_SUBJECT_MATCH, enterpriseConfig.getFieldValue("subject_match"));
            XmlUtil.writeNextValue(out, XML_TAG_ENGINE, enterpriseConfig.getFieldValue("engine"));
            XmlUtil.writeNextValue(out, XML_TAG_ENGINE_ID, enterpriseConfig.getFieldValue("engine_id"));
            XmlUtil.writeNextValue(out, XML_TAG_PRIVATE_KEY_ID, enterpriseConfig.getFieldValue("key_id"));
            XmlUtil.writeNextValue(out, XML_TAG_ALT_SUBJECT_MATCH, enterpriseConfig.getFieldValue("altsubject_match"));
            XmlUtil.writeNextValue(out, XML_TAG_DOM_SUFFIX_MATCH, enterpriseConfig.getFieldValue("domain_suffix_match"));
            XmlUtil.writeNextValue(out, XML_TAG_CA_PATH, enterpriseConfig.getFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CA_PATH));
            XmlUtil.writeNextValue(out, XML_TAG_EAP_METHOD, Integer.valueOf(enterpriseConfig.getEapMethod()));
            XmlUtil.writeNextValue(out, XML_TAG_PHASE2_METHOD, Integer.valueOf(enterpriseConfig.getPhase2Method()));
            XmlUtil.writeNextValue(out, XML_TAG_PLMN, enterpriseConfig.getPlmn());
            XmlUtil.writeNextValue(out, XML_TAG_REALM, enterpriseConfig.getRealm());
            XmlUtil.writeNextValue(out, XML_TAG_SIM_NUM, Integer.valueOf(enterpriseConfig.getSimNum()));
            XmlUtil.writeNextValue(out, XML_TAG_SIM_IMSI, enterpriseConfig.getImsi());
            XmlUtil.writeNextValue(out, XML_TAG_MAX_CONNECT_TIME, Integer.valueOf(enterpriseConfig.getMaxConnectTIme()));
        }

        public static WifiEnterpriseConfig parseFromXml(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
            WifiEnterpriseConfig enterpriseConfig = new WifiEnterpriseConfig();
            while (!XmlUtil.isNextSectionEnd(in, outerTagDepth)) {
                byte b = 1;
                String[] valueName = new String[1];
                Object value = XmlUtil.readCurrentValue(in, valueName);
                if (valueName[0] == null) {
                    throw new XmlPullParserException("Missing value name");
                }
                String str = valueName[0];
                switch (str.hashCode()) {
                    case -1956487222:
                        if (!str.equals(XML_TAG_ANON_IDENTITY)) {
                            b = -1;
                        }
                        break;
                    case -1818452145:
                        b = !str.equals(XML_TAG_SIM_NUM) ? (byte) -1 : (byte) 16;
                        break;
                    case -1766961550:
                        b = !str.equals(XML_TAG_DOM_SUFFIX_MATCH) ? (byte) -1 : (byte) 10;
                        break;
                    case -1362213863:
                        b = !str.equals(XML_TAG_SUBJECT_MATCH) ? (byte) -1 : (byte) 5;
                        break;
                    case -1261698317:
                        b = !str.equals(XML_TAG_MAX_CONNECT_TIME) ? (byte) -1 : (byte) 18;
                        break;
                    case -1199574865:
                        b = !str.equals(XML_TAG_CLIENT_CERT) ? (byte) -1 : (byte) 3;
                        break;
                    case -596361182:
                        b = !str.equals(XML_TAG_ALT_SUBJECT_MATCH) ? (byte) -1 : (byte) 9;
                        break;
                    case -537629775:
                        b = !str.equals(XML_TAG_SIM_IMSI) ? (byte) -1 : (byte) 17;
                        break;
                    case -386463240:
                        b = !str.equals(XML_TAG_PHASE2_METHOD) ? (byte) -1 : (byte) 13;
                        break;
                    case -71117602:
                        b = !str.equals(XML_TAG_IDENTITY) ? (byte) -1 : (byte) 0;
                        break;
                    case 2458781:
                        b = !str.equals(XML_TAG_PLMN) ? (byte) -1 : (byte) 14;
                        break;
                    case 11048245:
                        b = !str.equals(XML_TAG_EAP_METHOD) ? (byte) -1 : (byte) 12;
                        break;
                    case 78834287:
                        b = !str.equals(XML_TAG_REALM) ? (byte) -1 : (byte) 15;
                        break;
                    case 1146405943:
                        b = !str.equals(XML_TAG_PRIVATE_KEY_ID) ? (byte) -1 : (byte) 8;
                        break;
                    case 1281629883:
                        b = !str.equals(XML_TAG_PASSWORD) ? (byte) -1 : (byte) 2;
                        break;
                    case 1885134621:
                        b = !str.equals(XML_TAG_ENGINE_ID) ? (byte) -1 : (byte) 7;
                        break;
                    case 2009831362:
                        b = !str.equals(XML_TAG_CA_CERT) ? (byte) -1 : (byte) 4;
                        break;
                    case 2010214851:
                        b = !str.equals(XML_TAG_CA_PATH) ? (byte) -1 : (byte) 11;
                        break;
                    case 2080171618:
                        b = !str.equals(XML_TAG_ENGINE) ? (byte) -1 : (byte) 6;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        enterpriseConfig.setFieldValue("identity", (String) value);
                        break;
                    case 1:
                        enterpriseConfig.setFieldValue("anonymous_identity", (String) value);
                        break;
                    case 2:
                        enterpriseConfig.setFieldValue("password", (String) value);
                        break;
                    case 3:
                        enterpriseConfig.setFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CLIENT_CERT, (String) value);
                        break;
                    case 4:
                        enterpriseConfig.setFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CA_CERT, (String) value);
                        break;
                    case 5:
                        enterpriseConfig.setFieldValue("subject_match", (String) value);
                        break;
                    case 6:
                        enterpriseConfig.setFieldValue("engine", (String) value);
                        break;
                    case 7:
                        enterpriseConfig.setFieldValue("engine_id", (String) value);
                        break;
                    case 8:
                        enterpriseConfig.setFieldValue("key_id", (String) value);
                        break;
                    case 9:
                        enterpriseConfig.setFieldValue("altsubject_match", (String) value);
                        break;
                    case 10:
                        enterpriseConfig.setFieldValue("domain_suffix_match", (String) value);
                        break;
                    case 11:
                        enterpriseConfig.setFieldValue(WifiBackupRestore.SupplicantBackupMigration.SUPPLICANT_KEY_CA_PATH, (String) value);
                        break;
                    case 12:
                        enterpriseConfig.setEapMethod(((Integer) value).intValue());
                        break;
                    case 13:
                        enterpriseConfig.setPhase2Method(((Integer) value).intValue());
                        break;
                    case 14:
                        enterpriseConfig.setPlmn((String) value);
                        break;
                    case 15:
                        enterpriseConfig.setRealm((String) value);
                        break;
                    case 16:
                        enterpriseConfig.setSimNum(((Integer) value).intValue());
                        break;
                    case 17:
                        enterpriseConfig.setImsi((String) value);
                        break;
                    case 18:
                        enterpriseConfig.setMaxConnectTime(((Integer) value).intValue());
                        break;
                    default:
                        throw new XmlPullParserException("Unknown value name found: " + valueName[0]);
                }
            }
            return enterpriseConfig;
        }
    }
}
