package com.android.server.wifi;

import android.net.IpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.server.net.IpConfigStore;
import com.android.server.wifi.util.NativeUtil;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.XmlUtil;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayReader;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class WifiBackupRestore {
    private static final float CURRENT_BACKUP_DATA_VERSION = 1.1f;
    private static final int INITIAL_BACKUP_DATA_VERSION = 1;
    private static final String PSK_MASK_LINE_MATCH_PATTERN = "<.*PreSharedKey.*>.*<.*>";
    private static final String PSK_MASK_REPLACE_PATTERN = "$1*$3";
    private static final String PSK_MASK_SEARCH_PATTERN = "(<.*PreSharedKey.*>)(.*)(<.*>)";
    private static final String TAG = "WifiBackupRestore";
    private static final String WEP_KEYS_MASK_LINE_END_MATCH_PATTERN = "</string-array>";
    private static final String WEP_KEYS_MASK_LINE_START_MATCH_PATTERN = "<string-array.*WEPKeys.*num=\"[0-9]\">";
    private static final String WEP_KEYS_MASK_REPLACE_PATTERN = "$1*$3";
    private static final String WEP_KEYS_MASK_SEARCH_PATTERN = "(<.*=)(.*)(/>)";
    private static final String XML_TAG_DOCUMENT_HEADER = "WifiBackupData";
    static final String XML_TAG_SECTION_HEADER_IP_CONFIGURATION = "IpConfiguration";
    static final String XML_TAG_SECTION_HEADER_NETWORK = "Network";
    static final String XML_TAG_SECTION_HEADER_NETWORK_LIST = "NetworkList";
    static final String XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION = "WifiConfiguration";
    private static final String XML_TAG_VERSION = "Version";
    private byte[] mDebugLastBackupDataRestored;
    private byte[] mDebugLastBackupDataRetrieved;
    private byte[] mDebugLastSupplicantBackupDataRestored;
    private boolean mVerboseLoggingEnabled = false;
    private final WifiPermissionsUtil mWifiPermissionsUtil;

    public WifiBackupRestore(WifiPermissionsUtil wifiPermissionsUtil) {
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
    }

    public byte[] retrieveBackupDataFromConfigurations(List<WifiConfiguration> configurations) {
        if (configurations == null) {
            Log.e(TAG, "Invalid configuration list received");
            return new byte[0];
        }
        try {
            XmlSerializer out = new FastXmlSerializer();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            out.setOutput(outputStream, StandardCharsets.UTF_8.name());
            XmlUtil.writeDocumentStart(out, XML_TAG_DOCUMENT_HEADER);
            XmlUtil.writeNextValue(out, XML_TAG_VERSION, Float.valueOf(CURRENT_BACKUP_DATA_VERSION));
            writeNetworkConfigurationsToXml(out, configurations);
            XmlUtil.writeDocumentEnd(out, XML_TAG_DOCUMENT_HEADER);
            byte[] data = outputStream.toByteArray();
            if (this.mVerboseLoggingEnabled) {
                this.mDebugLastBackupDataRetrieved = data;
            }
            return data;
        } catch (IOException e) {
            Log.e(TAG, "Error retrieving the backup data: " + e);
            return new byte[0];
        } catch (XmlPullParserException e2) {
            Log.e(TAG, "Error retrieving the backup data: " + e2);
            return new byte[0];
        }
    }

    private void writeNetworkConfigurationsToXml(XmlSerializer out, List<WifiConfiguration> configurations) throws XmlPullParserException, IOException {
        XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_NETWORK_LIST);
        for (WifiConfiguration configuration : configurations) {
            if (!configuration.isEnterprise() && !configuration.isPasspoint()) {
                if (!this.mWifiPermissionsUtil.checkConfigOverridePermission(configuration.creatorUid)) {
                    Log.d(TAG, "Ignoring network from an app with no config override permission: " + configuration.configKey());
                } else {
                    XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_NETWORK);
                    writeNetworkConfigurationToXml(out, configuration);
                    XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_NETWORK);
                }
            }
        }
        XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_NETWORK_LIST);
    }

    private void writeNetworkConfigurationToXml(XmlSerializer out, WifiConfiguration configuration) throws XmlPullParserException, IOException {
        XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION);
        XmlUtil.WifiConfigurationXmlUtil.writeToXmlForBackup(out, configuration);
        XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION);
        XmlUtil.writeNextSectionStart(out, XML_TAG_SECTION_HEADER_IP_CONFIGURATION);
        XmlUtil.IpConfigurationXmlUtil.writeToXml(out, configuration.getIpConfiguration());
        XmlUtil.writeNextSectionEnd(out, XML_TAG_SECTION_HEADER_IP_CONFIGURATION);
    }

    public List<WifiConfiguration> retrieveConfigurationsFromBackupData(byte[] data) {
        int majorVersion;
        int minorVersion;
        if (data == null || data.length == 0) {
            Log.e(TAG, "Invalid backup data received");
            return null;
        }
        try {
            if (this.mVerboseLoggingEnabled) {
                this.mDebugLastBackupDataRestored = data;
            }
            XmlPullParser in = Xml.newPullParser();
            ByteArrayInputStream inputStream = new ByteArrayInputStream(data);
            in.setInput(inputStream, StandardCharsets.UTF_8.name());
            XmlUtil.gotoDocumentStart(in, XML_TAG_DOCUMENT_HEADER);
            int rootTagDepth = in.getDepth();
            try {
                float version = ((Float) XmlUtil.readNextValueWithName(in, XML_TAG_VERSION)).floatValue();
                String versionStr = new Float(version).toString();
                int separatorPos = versionStr.indexOf(46);
                if (separatorPos == -1) {
                    majorVersion = Integer.parseInt(versionStr);
                    minorVersion = 0;
                } else {
                    majorVersion = Integer.parseInt(versionStr.substring(0, separatorPos));
                    minorVersion = Integer.parseInt(versionStr.substring(separatorPos + 1));
                }
            } catch (ClassCastException e) {
                majorVersion = 1;
                minorVersion = 0;
            }
            Log.d(TAG, "Version of backup data - major: " + majorVersion + "; minor: " + minorVersion);
            WifiBackupDataParser parser = getWifiBackupDataParser(majorVersion);
            if (parser == null) {
                Log.w(TAG, "Major version of backup data is unknown to this Android version; not restoring");
                return null;
            }
            return parser.parseNetworkConfigurationsFromXml(in, rootTagDepth, minorVersion);
        } catch (IOException | ClassCastException | IllegalArgumentException | XmlPullParserException e2) {
            Log.e(TAG, "Error parsing the backup data: " + e2);
            return null;
        }
    }

    private WifiBackupDataParser getWifiBackupDataParser(int majorVersion) {
        if (majorVersion == 1) {
            return new WifiBackupDataV1Parser();
        }
        Log.e(TAG, "Unrecognized majorVersion of backup data: " + majorVersion);
        return null;
    }

    private String createLogFromBackupData(byte[] data) {
        StringBuilder sb = new StringBuilder();
        try {
            String xmlString = new String(data, StandardCharsets.UTF_8.name());
            boolean wepKeysLine = false;
            String[] strArrSplit = xmlString.split("\n");
            int length = strArrSplit.length;
            for (int i = 0; i < length; i++) {
                String line = strArrSplit[i];
                if (line.matches(PSK_MASK_LINE_MATCH_PATTERN)) {
                    line = line.replaceAll(PSK_MASK_SEARCH_PATTERN, "$1*$3");
                }
                if (line.matches(WEP_KEYS_MASK_LINE_START_MATCH_PATTERN)) {
                    wepKeysLine = true;
                } else if (line.matches(WEP_KEYS_MASK_LINE_END_MATCH_PATTERN)) {
                    wepKeysLine = false;
                } else if (wepKeysLine) {
                    line = line.replaceAll(WEP_KEYS_MASK_SEARCH_PATTERN, "$1*$3");
                }
                sb.append(line);
                sb.append("\n");
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    public List<WifiConfiguration> retrieveConfigurationsFromSupplicantBackupData(byte[] supplicantData, byte[] ipConfigData) {
        if (supplicantData == null || supplicantData.length == 0) {
            Log.e(TAG, "Invalid supplicant backup data received");
            return null;
        }
        if (this.mVerboseLoggingEnabled) {
            this.mDebugLastSupplicantBackupDataRestored = supplicantData;
        }
        SupplicantBackupMigration.SupplicantNetworks supplicantNetworks = new SupplicantBackupMigration.SupplicantNetworks();
        char[] restoredAsChars = new char[supplicantData.length];
        for (int i = 0; i < supplicantData.length; i++) {
            restoredAsChars[i] = (char) supplicantData[i];
        }
        BufferedReader in = new BufferedReader(new CharArrayReader(restoredAsChars));
        supplicantNetworks.readNetworksFromStream(in);
        List<WifiConfiguration> configurations = supplicantNetworks.retrieveWifiConfigurations();
        if (ipConfigData == null || ipConfigData.length == 0) {
            Log.e(TAG, "Invalid ipconfig backup data received");
        } else {
            SparseArray<IpConfiguration> networks = IpConfigStore.readIpAndProxyConfigurations(new ByteArrayInputStream(ipConfigData));
            if (networks == null) {
                Log.e(TAG, "Failed to parse ipconfig data");
            } else {
                for (int i2 = 0; i2 < networks.size(); i2++) {
                    int id = networks.keyAt(i2);
                    for (WifiConfiguration configuration : configurations) {
                        if (configuration.configKey().hashCode() == id) {
                            configuration.setIpConfiguration(networks.valueAt(i2));
                        }
                    }
                }
            }
        }
        return configurations;
    }

    public void enableVerboseLogging(int verbose) {
        this.mVerboseLoggingEnabled = verbose > 0;
        if (!this.mVerboseLoggingEnabled) {
            this.mDebugLastBackupDataRetrieved = null;
            this.mDebugLastBackupDataRestored = null;
            this.mDebugLastSupplicantBackupDataRestored = null;
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("Dump of WifiBackupRestore");
        if (this.mDebugLastBackupDataRetrieved != null) {
            pw.println("Last backup data retrieved: " + createLogFromBackupData(this.mDebugLastBackupDataRetrieved));
        }
        if (this.mDebugLastBackupDataRestored != null) {
            pw.println("Last backup data restored: " + createLogFromBackupData(this.mDebugLastBackupDataRestored));
        }
        if (this.mDebugLastSupplicantBackupDataRestored != null) {
            pw.println("Last old backup data restored: " + SupplicantBackupMigration.createLogFromBackupData(this.mDebugLastSupplicantBackupDataRestored));
        }
    }

    public static class SupplicantBackupMigration {
        private static final String PSK_MASK_LINE_MATCH_PATTERN = ".*psk.*=.*";
        private static final String PSK_MASK_REPLACE_PATTERN = "$1*";
        private static final String PSK_MASK_SEARCH_PATTERN = "(.*psk.*=)(.*)";
        public static final String SUPPLICANT_KEY_CA_CERT = "ca_cert";
        public static final String SUPPLICANT_KEY_CA_PATH = "ca_path";
        public static final String SUPPLICANT_KEY_CLIENT_CERT = "client_cert";
        public static final String SUPPLICANT_KEY_EAP = "eap";
        public static final String SUPPLICANT_KEY_HIDDEN = "scan_ssid";
        public static final String SUPPLICANT_KEY_ID_STR = "id_str";
        public static final String SUPPLICANT_KEY_KEY_MGMT = "key_mgmt";
        public static final String SUPPLICANT_KEY_PSK = "psk";
        public static final String SUPPLICANT_KEY_SSID = "ssid";
        public static final String SUPPLICANT_KEY_WEP_KEY_IDX = "wep_tx_keyidx";
        private static final String WEP_KEYS_MASK_REPLACE_PATTERN = "$1*";
        public static final String SUPPLICANT_KEY_WEP_KEY0 = WifiConfiguration.wepKeyVarNames[0];
        public static final String SUPPLICANT_KEY_WEP_KEY1 = WifiConfiguration.wepKeyVarNames[1];
        public static final String SUPPLICANT_KEY_WEP_KEY2 = WifiConfiguration.wepKeyVarNames[2];
        public static final String SUPPLICANT_KEY_WEP_KEY3 = WifiConfiguration.wepKeyVarNames[3];
        private static final String WEP_KEYS_MASK_LINE_MATCH_PATTERN = ".*" + SUPPLICANT_KEY_WEP_KEY0.replace("0", "") + ".*=.*";
        private static final String WEP_KEYS_MASK_SEARCH_PATTERN = "(.*" + SUPPLICANT_KEY_WEP_KEY0.replace("0", "") + ".*=)(.*)";

        public static String createLogFromBackupData(byte[] data) {
            StringBuilder sb = new StringBuilder();
            try {
                String supplicantConfString = new String(data, StandardCharsets.UTF_8.name());
                String[] strArrSplit = supplicantConfString.split("\n");
                int length = strArrSplit.length;
                for (int i = 0; i < length; i++) {
                    String line = strArrSplit[i];
                    if (line.matches(PSK_MASK_LINE_MATCH_PATTERN)) {
                        line = line.replaceAll(PSK_MASK_SEARCH_PATTERN, "$1*");
                    }
                    if (line.matches(WEP_KEYS_MASK_LINE_MATCH_PATTERN)) {
                        line = line.replaceAll(WEP_KEYS_MASK_SEARCH_PATTERN, "$1*");
                    }
                    sb.append(line);
                    sb.append("\n");
                }
                return sb.toString();
            } catch (UnsupportedEncodingException e) {
                return "";
            }
        }

        static class SupplicantNetwork {
            private String mParsedHiddenLine;
            private String mParsedIdStrLine;
            private String mParsedKeyMgmtLine;
            private String mParsedPskLine;
            private String mParsedSSIDLine;
            private String mParsedWepTxKeyIdxLine;
            private String[] mParsedWepKeyLines = new String[4];
            public boolean certUsed = false;
            public boolean isEap = false;

            SupplicantNetwork() {
            }

            public static SupplicantNetwork readNetworkFromStream(BufferedReader in) {
                String line;
                SupplicantNetwork n = new SupplicantNetwork();
                while (in.ready() && (line = in.readLine()) != null && !line.startsWith("}")) {
                    try {
                        n.parseLine(line);
                    } catch (IOException e) {
                        return null;
                    }
                }
                return n;
            }

            void parseLine(String line) {
                String line2 = line.trim();
                if (line2.isEmpty()) {
                    return;
                }
                if (line2.startsWith("ssid=")) {
                    this.mParsedSSIDLine = line2;
                    return;
                }
                if (line2.startsWith("scan_ssid=")) {
                    this.mParsedHiddenLine = line2;
                    return;
                }
                if (line2.startsWith("key_mgmt=")) {
                    this.mParsedKeyMgmtLine = line2;
                    if (line2.contains("EAP")) {
                        this.isEap = true;
                        return;
                    }
                    return;
                }
                if (line2.startsWith("client_cert=")) {
                    this.certUsed = true;
                    return;
                }
                if (line2.startsWith("ca_cert=")) {
                    this.certUsed = true;
                    return;
                }
                if (line2.startsWith("ca_path=")) {
                    this.certUsed = true;
                    return;
                }
                if (line2.startsWith("eap=")) {
                    this.isEap = true;
                    return;
                }
                if (line2.startsWith("psk=")) {
                    this.mParsedPskLine = line2;
                    return;
                }
                if (line2.startsWith(SupplicantBackupMigration.SUPPLICANT_KEY_WEP_KEY0 + "=")) {
                    this.mParsedWepKeyLines[0] = line2;
                    return;
                }
                if (line2.startsWith(SupplicantBackupMigration.SUPPLICANT_KEY_WEP_KEY1 + "=")) {
                    this.mParsedWepKeyLines[1] = line2;
                    return;
                }
                if (line2.startsWith(SupplicantBackupMigration.SUPPLICANT_KEY_WEP_KEY2 + "=")) {
                    this.mParsedWepKeyLines[2] = line2;
                    return;
                }
                if (line2.startsWith(SupplicantBackupMigration.SUPPLICANT_KEY_WEP_KEY3 + "=")) {
                    this.mParsedWepKeyLines[3] = line2;
                } else if (line2.startsWith("wep_tx_keyidx=")) {
                    this.mParsedWepTxKeyIdxLine = line2;
                } else if (line2.startsWith("id_str=")) {
                    this.mParsedIdStrLine = line2;
                }
            }

            public WifiConfiguration createWifiConfiguration() {
                String idString;
                if (this.mParsedSSIDLine == null) {
                    return null;
                }
                WifiConfiguration configuration = new WifiConfiguration();
                String str = this.mParsedSSIDLine;
                configuration.SSID = str.substring(str.indexOf(61) + 1);
                String str2 = this.mParsedHiddenLine;
                if (str2 != null) {
                    configuration.hiddenSSID = Integer.parseInt(str2.substring(str2.indexOf(61) + 1)) != 0;
                }
                String str3 = this.mParsedKeyMgmtLine;
                if (str3 == null) {
                    configuration.allowedKeyManagement.set(1);
                    configuration.allowedKeyManagement.set(2);
                } else {
                    String[] typeStrings = str3.substring(str3.indexOf(61) + 1).split("\\s+");
                    for (String ktype : typeStrings) {
                        if (ktype.equals("NONE")) {
                            configuration.allowedKeyManagement.set(0);
                        } else if (ktype.equals("WPA-PSK")) {
                            configuration.allowedKeyManagement.set(1);
                        } else if (ktype.equals("WPA-EAP")) {
                            configuration.allowedKeyManagement.set(2);
                        } else if (ktype.equals("IEEE8021X")) {
                            configuration.allowedKeyManagement.set(3);
                        } else if (ktype.equals("WAPI-PSK")) {
                            configuration.allowedKeyManagement.set(13);
                        } else if (ktype.equals("WAPI-CERT")) {
                            configuration.allowedKeyManagement.set(14);
                        }
                    }
                }
                String bareKeyMgmt = this.mParsedPskLine;
                if (bareKeyMgmt != null) {
                    configuration.preSharedKey = bareKeyMgmt.substring(bareKeyMgmt.indexOf(61) + 1);
                }
                if (this.mParsedWepKeyLines[0] != null) {
                    String[] strArr = configuration.wepKeys;
                    String[] strArr2 = this.mParsedWepKeyLines;
                    strArr[0] = strArr2[0].substring(strArr2[0].indexOf(61) + 1);
                }
                if (this.mParsedWepKeyLines[1] != null) {
                    String[] strArr3 = configuration.wepKeys;
                    String[] strArr4 = this.mParsedWepKeyLines;
                    strArr3[1] = strArr4[1].substring(strArr4[1].indexOf(61) + 1);
                }
                if (this.mParsedWepKeyLines[2] != null) {
                    String[] strArr5 = configuration.wepKeys;
                    String[] strArr6 = this.mParsedWepKeyLines;
                    strArr5[2] = strArr6[2].substring(strArr6[2].indexOf(61) + 1);
                }
                if (this.mParsedWepKeyLines[3] != null) {
                    String[] strArr7 = configuration.wepKeys;
                    String[] strArr8 = this.mParsedWepKeyLines;
                    strArr7[3] = strArr8[3].substring(strArr8[3].indexOf(61) + 1);
                }
                String str4 = this.mParsedWepTxKeyIdxLine;
                if (str4 != null) {
                    configuration.wepTxKeyIndex = Integer.valueOf(str4.substring(str4.indexOf(61) + 1)).intValue();
                }
                String str5 = this.mParsedIdStrLine;
                if (str5 != null && (idString = str5.substring(str5.indexOf(61) + 1)) != null) {
                    Map<String, String> extras = SupplicantStaNetworkHal.parseNetworkExtra(NativeUtil.removeEnclosingQuotes(idString));
                    if (extras == null) {
                        Log.e(WifiBackupRestore.TAG, "Error parsing network extras, ignoring network.");
                        return null;
                    }
                    String configKey = extras.get("configKey");
                    if (configKey == null) {
                        Log.e(WifiBackupRestore.TAG, "Configuration key was not passed, ignoring network.");
                        return null;
                    }
                    if (!configKey.equals(configuration.configKey())) {
                        Log.w(WifiBackupRestore.TAG, "Configuration key does not match. Retrieved: " + configKey + ", Calculated: " + configuration.configKey());
                    }
                    int creatorUid = Integer.parseInt(extras.get("creatorUid"));
                    if (creatorUid >= 10000) {
                        Log.d(WifiBackupRestore.TAG, "Ignoring network from non-system app: " + configuration.configKey());
                        return null;
                    }
                }
                return configuration;
            }
        }

        static class SupplicantNetworks {
            final ArrayList<SupplicantNetwork> mNetworks = new ArrayList<>(8);

            SupplicantNetworks() {
            }

            public void readNetworksFromStream(BufferedReader in) {
                while (in.ready()) {
                    try {
                        String line = in.readLine();
                        if (line != null && line.startsWith("network")) {
                            SupplicantNetwork net = SupplicantNetwork.readNetworkFromStream(in);
                            if (net == null) {
                                Log.e(WifiBackupRestore.TAG, "Error while parsing the network.");
                            } else if (net.isEap || net.certUsed) {
                                Log.d(WifiBackupRestore.TAG, "Skipping enterprise network for restore: " + net.mParsedSSIDLine + " / " + net.mParsedKeyMgmtLine);
                            } else {
                                this.mNetworks.add(net);
                            }
                        }
                    } catch (IOException e) {
                        return;
                    }
                }
            }

            public List<WifiConfiguration> retrieveWifiConfigurations() {
                ArrayList<WifiConfiguration> wifiConfigurations = new ArrayList<>();
                for (SupplicantNetwork net : this.mNetworks) {
                    try {
                        WifiConfiguration wifiConfiguration = net.createWifiConfiguration();
                        if (wifiConfiguration != null) {
                            Log.v(WifiBackupRestore.TAG, "Parsed Configuration: " + wifiConfiguration.configKey());
                            wifiConfigurations.add(wifiConfiguration);
                        }
                    } catch (NumberFormatException e) {
                        Log.e(WifiBackupRestore.TAG, "Error parsing wifi configuration: " + e);
                        return null;
                    }
                }
                return wifiConfigurations;
            }
        }
    }
}
