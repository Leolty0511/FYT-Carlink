package android.net.wifi;

import android.content.Context;
import android.net.ProxyProperties;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.nsd.WifiP2pServiceInfo;
import android.text.TextUtils;
import android.util.LocalLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiNative {
    public static final int BLUETOOTH_COEXISTENCE_MODE_DISABLED = 1;
    public static final int BLUETOOTH_COEXISTENCE_MODE_ENABLED = 0;
    public static final int BLUETOOTH_COEXISTENCE_MODE_SENSE = 2;
    private static final boolean DBG = false;
    private static final int DEFAULT_GROUP_OWNER_INTENT = 6;
    public static final int SCAN_WITHOUT_CONNECTION_SETUP = 1;
    public static final int SCAN_WITH_CONNECTION_SETUP = 2;
    private int mCmdId;
    public final String mInterfaceName;
    public final String mInterfacePrefix;
    private boolean mSuspendOptEnabled = false;
    private final String mTAG;
    public static final Object mLock = new Object();
    private static final LocalLog mLocalLog = new LocalLog(1024);

    public WifiNative(String str) {
        this.mInterfaceName = str;
        this.mTAG = "WifiNative-" + str;
        if (str.equals("p2p0")) {
            this.mInterfacePrefix = ProxyProperties.LOCAL_EXCL_LIST;
            return;
        }
        this.mInterfacePrefix = "IFNAME=" + str + " ";
    }

    private native void closeSupplicantConnectionNative();

    private native boolean connectToSupplicantNative();

    private boolean doBooleanCommand(String str) {
        boolean zDoBooleanCommandNative;
        synchronized (mLock) {
            int newCmdIdLocked = getNewCmdIdLocked();
            localLog(newCmdIdLocked + "->" + this.mInterfacePrefix + str);
            StringBuilder sb = new StringBuilder();
            sb.append(this.mInterfacePrefix);
            sb.append(str);
            zDoBooleanCommandNative = doBooleanCommandNative(sb.toString());
            localLog(newCmdIdLocked + "<-" + zDoBooleanCommandNative);
        }
        return zDoBooleanCommandNative;
    }

    private native boolean doBooleanCommandNative(String str);

    private int doIntCommand(String str) {
        int iDoIntCommandNative;
        synchronized (mLock) {
            int newCmdIdLocked = getNewCmdIdLocked();
            localLog(newCmdIdLocked + "->" + this.mInterfacePrefix + str);
            StringBuilder sb = new StringBuilder();
            sb.append(this.mInterfacePrefix);
            sb.append(str);
            iDoIntCommandNative = doIntCommandNative(sb.toString());
            localLog(newCmdIdLocked + "<-" + iDoIntCommandNative);
        }
        return iDoIntCommandNative;
    }

    private native int doIntCommandNative(String str);

    private String doStringCommand(String str) {
        String strDoStringCommandNative;
        synchronized (mLock) {
            int newCmdIdLocked = getNewCmdIdLocked();
            localLog(newCmdIdLocked + "->" + this.mInterfacePrefix + str);
            StringBuilder sb = new StringBuilder();
            sb.append(this.mInterfacePrefix);
            sb.append(str);
            strDoStringCommandNative = doStringCommandNative(sb.toString());
            localLog(newCmdIdLocked + "<-" + strDoStringCommandNative);
        }
        return strDoStringCommandNative;
    }

    private native String doStringCommandNative(String str);

    private String doStringCommandWithoutLogging(String str) {
        String strDoStringCommandNative;
        synchronized (mLock) {
            strDoStringCommandNative = doStringCommandNative(this.mInterfacePrefix + str);
        }
        return strDoStringCommandNative;
    }

    private int getNewCmdIdLocked() {
        int i2 = this.mCmdId;
        this.mCmdId = i2 + 1;
        return i2;
    }

    public static native boolean isDriverLoaded();

    public static native boolean killSupplicant(boolean z2);

    public static native boolean loadDriver();

    private void localLog(String str) {
        LocalLog localLog = mLocalLog;
        if (localLog != null) {
            localLog.log(this.mInterfaceName + ": " + str);
        }
    }

    private String p2pGetParam(String str, String str2) {
        String strP2pPeer;
        if (str == null || (strP2pPeer = p2pPeer(str)) == null) {
            return null;
        }
        String str3 = str2 + "=";
        for (String str4 : strP2pPeer.split("\n")) {
            if (str4.startsWith(str3)) {
                String[] strArrSplit = str4.split("=");
                if (strArrSplit.length != 2) {
                    break;
                }
                return strArrSplit[1];
            }
        }
        return null;
    }

    public static native boolean startSupplicant(boolean z2);

    public static native boolean unloadDriver();

    private native String waitForEventNative();

    public int addNetwork() {
        return doIntCommand("ADD_NETWORK");
    }

    public boolean addToBlacklist(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return doBooleanCommand("BLACKLIST " + str);
    }

    public void bssFlush() {
        doBooleanCommand("BSS_FLUSH 0");
    }

    public boolean cancelWps() {
        return doBooleanCommand("WPS_CANCEL");
    }

    public boolean clearBlacklist() {
        return doBooleanCommand("BLACKLIST clear");
    }

    public void closeSupplicantConnection() {
        localLog(this.mInterfacePrefix + "closeSupplicantConnection");
        closeSupplicantConnectionNative();
    }

    public boolean connectToSupplicant() {
        localLog(this.mInterfacePrefix + "connectToSupplicant");
        return connectToSupplicantNative();
    }

    public boolean disableNetwork(int i2) {
        return doBooleanCommand("DISABLE_NETWORK " + i2);
    }

    public boolean disconnect() {
        return doBooleanCommand("DISCONNECT");
    }

    public void enableBackgroundScan(boolean z2) {
        if (z2) {
            doBooleanCommand("SET pno 1");
        } else {
            doBooleanCommand("SET pno 0");
        }
    }

    public boolean enableNetwork(int i2, boolean z2) {
        if (z2) {
            return doBooleanCommand("SELECT_NETWORK " + i2);
        }
        return doBooleanCommand("ENABLE_NETWORK " + i2);
    }

    public int getBand() {
        String strDoStringCommand = doStringCommand("DRIVER GETBAND");
        if (!TextUtils.isEmpty(strDoStringCommand)) {
            String[] strArrSplit = strDoStringCommand.split(" ");
            try {
                if (strArrSplit.length == 2) {
                    return Integer.parseInt(strArrSplit[1]);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public String getBatchedScanResults() {
        return doStringCommand("DRIVER WLS_BATCHING GET");
    }

    public int getGroupCapability(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        String strP2pPeer = p2pPeer(str);
        if (TextUtils.isEmpty(strP2pPeer)) {
            return 0;
        }
        for (String str2 : strP2pPeer.split("\n")) {
            if (str2.startsWith("group_capab=")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length != 2) {
                    break;
                }
                try {
                    return Integer.decode(strArrSplit[1]).intValue();
                } catch (NumberFormatException unused) {
                    return 0;
                }
            }
        }
        return 0;
    }

    public LocalLog getLocalLog() {
        return mLocalLog;
    }

    public String getMacAddress() {
        String strDoStringCommand = doStringCommand("DRIVER MACADDR");
        if (TextUtils.isEmpty(strDoStringCommand)) {
            return null;
        }
        String[] strArrSplit = strDoStringCommand.split(" = ");
        if (strArrSplit.length == 2) {
            return strArrSplit[1];
        }
        return null;
    }

    public String getNetworkVariable(int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return doStringCommandWithoutLogging("GET_NETWORK " + i2 + " " + str);
    }

    public String listNetworks() {
        return doStringCommand("LIST_NETWORKS");
    }

    public boolean p2pCancelConnect() {
        return doBooleanCommand("P2P_CANCEL");
    }

    public String p2pConnect(WifiP2pConfig wifiP2pConfig, boolean z2) {
        if (wifiP2pConfig == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        WpsInfo wpsInfo = wifiP2pConfig.wps;
        arrayList.add(wifiP2pConfig.deviceAddress);
        int i2 = wpsInfo.setup;
        if (i2 == 0) {
            arrayList.add("pbc");
        } else if (i2 == 1) {
            if (TextUtils.isEmpty(wpsInfo.pin)) {
                arrayList.add("pin");
            } else {
                arrayList.add(wpsInfo.pin);
            }
            arrayList.add(Context.DISPLAY_SERVICE);
        } else if (i2 == 2) {
            arrayList.add(wpsInfo.pin);
            arrayList.add("keypad");
        } else if (i2 == 3) {
            arrayList.add(wpsInfo.pin);
            arrayList.add("label");
        }
        if (wifiP2pConfig.netId == -2) {
            arrayList.add("persistent");
        }
        if (z2) {
            arrayList.add("join");
        } else {
            int i3 = wifiP2pConfig.groupOwnerIntent;
            if (i3 < 0 || i3 > 15) {
                i3 = 6;
            }
            arrayList.add("go_intent=" + i3);
        }
        Iterator it = arrayList.iterator();
        String str = "P2P_CONNECT ";
        while (it.hasNext()) {
            str = str + ((String) it.next()) + " ";
        }
        return doStringCommand(str);
    }

    public boolean p2pExtListen(boolean z2, int i2, int i3) {
        String str;
        if (z2 && i3 < i2) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("P2P_EXT_LISTEN");
        if (z2) {
            str = " " + i2 + " " + i3;
        } else {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        sb.append(str);
        return doBooleanCommand(sb.toString());
    }

    public boolean p2pFind() {
        return doBooleanCommand("P2P_FIND");
    }

    public boolean p2pFlush() {
        return doBooleanCommand("P2P_FLUSH");
    }

    public String p2pGetDeviceAddress() {
        String strStatus = status();
        if (strStatus == null) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        for (String str : strStatus.split("\n")) {
            if (str.startsWith("p2p_device_address=")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length != 2) {
                    break;
                }
                return strArrSplit[1];
            }
        }
        return ProxyProperties.LOCAL_EXCL_LIST;
    }

    public String p2pGetSsid(String str) {
        return p2pGetParam(str, "oper_ssid");
    }

    public boolean p2pGroupAdd(boolean z2) {
        return z2 ? doBooleanCommand("P2P_GROUP_ADD persistent") : doBooleanCommand("P2P_GROUP_ADD");
    }

    public boolean p2pGroupRemove(String str) {
        boolean zDoBooleanCommandNative;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        synchronized (mLock) {
            zDoBooleanCommandNative = doBooleanCommandNative("IFNAME=" + str + " P2P_GROUP_REMOVE " + str);
        }
        return zDoBooleanCommandNative;
    }

    public boolean p2pInvite(WifiP2pGroup wifiP2pGroup, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (wifiP2pGroup == null) {
            return doBooleanCommand("P2P_INVITE peer=" + str);
        }
        return doBooleanCommand("P2P_INVITE group=" + wifiP2pGroup.getInterface() + " peer=" + str + " go_dev_addr=" + wifiP2pGroup.getOwner().deviceAddress);
    }

    public boolean p2pListen() {
        return doBooleanCommand("P2P_LISTEN");
    }

    public String p2pPeer(String str) {
        return doStringCommand("P2P_PEER " + str);
    }

    public boolean p2pProvisionDiscovery(WifiP2pConfig wifiP2pConfig) {
        if (wifiP2pConfig == null) {
            return false;
        }
        int i2 = wifiP2pConfig.wps.setup;
        if (i2 == 0) {
            return doBooleanCommand("P2P_PROV_DISC " + wifiP2pConfig.deviceAddress + " pbc");
        }
        if (i2 == 1) {
            return doBooleanCommand("P2P_PROV_DISC " + wifiP2pConfig.deviceAddress + " keypad");
        }
        if (i2 != 2) {
            return false;
        }
        return doBooleanCommand("P2P_PROV_DISC " + wifiP2pConfig.deviceAddress + " display");
    }

    public boolean p2pReinvoke(int i2, String str) {
        if (TextUtils.isEmpty(str) || i2 < 0) {
            return false;
        }
        return doBooleanCommand("P2P_INVITE persistent=" + i2 + " peer=" + str);
    }

    public boolean p2pReject(String str) {
        return doBooleanCommand("P2P_REJECT " + str);
    }

    public boolean p2pServDiscCancelReq(String str) {
        return doBooleanCommand("P2P_SERV_DISC_CANCEL_REQ " + str);
    }

    public String p2pServDiscReq(String str, String str2) {
        return doStringCommand(("P2P_SERV_DISC_REQ " + str) + " " + str2);
    }

    public boolean p2pServiceAdd(WifiP2pServiceInfo wifiP2pServiceInfo) {
        Iterator<String> it = wifiP2pServiceInfo.getSupplicantQueryList().iterator();
        while (it.hasNext()) {
            if (!doBooleanCommand("P2P_SERVICE_ADD " + it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean p2pServiceDel(WifiP2pServiceInfo wifiP2pServiceInfo) {
        String str;
        for (String str2 : wifiP2pServiceInfo.getSupplicantQueryList()) {
            String[] strArrSplit = str2.split(" ");
            if (strArrSplit.length < 2) {
                return false;
            }
            if (!"upnp".equals(strArrSplit[0])) {
                if ("bonjour".equals(strArrSplit[0])) {
                    str = ("P2P_SERVICE_DEL " + strArrSplit[0]) + " " + strArrSplit[1];
                }
                return false;
            }
            str = "P2P_SERVICE_DEL " + str2;
            if (!doBooleanCommand(str)) {
                return false;
            }
        }
        return true;
    }

    public boolean p2pServiceFlush() {
        return doBooleanCommand("P2P_SERVICE_FLUSH");
    }

    public boolean p2pSetChannel(int i2, int i3) {
        if (i2 >= 1 && i2 <= 11) {
            if (!doBooleanCommand("P2P_SET listen_channel " + i2)) {
                return false;
            }
        } else if (i2 != 0) {
            return false;
        }
        if (i3 < 1 || i3 > 165) {
            if (i3 == 0) {
                return doBooleanCommand("P2P_SET disallow_freq \"\"");
            }
            return false;
        }
        int i4 = (i3 <= 14 ? 2407 : 5000) + (i3 * 5);
        StringBuilder sb = new StringBuilder();
        sb.append("P2P_SET disallow_freq 1000-");
        sb.append(i4 - 5);
        sb.append(",");
        sb.append(i4 + 5);
        sb.append("-6000");
        return doBooleanCommand(sb.toString());
    }

    public boolean p2pStopFind() {
        return doBooleanCommand("P2P_STOP_FIND");
    }

    public boolean ping() {
        String strDoStringCommand = doStringCommand("PING");
        return strDoStringCommand != null && strDoStringCommand.equals("PONG");
    }

    public String pktcntPoll() {
        return doStringCommand("PKTCNT_POLL");
    }

    public boolean reassociate() {
        return doBooleanCommand("REASSOCIATE");
    }

    public boolean reconnect() {
        return doBooleanCommand("RECONNECT");
    }

    public boolean removeNetwork(int i2) {
        return doBooleanCommand("REMOVE_NETWORK " + i2);
    }

    public boolean saveConfig() {
        return doBooleanCommand("SAVE_CONFIG");
    }

    public boolean scan(int i2) {
        if (i2 == 1) {
            return doBooleanCommand("SCAN TYPE=ONLY");
        }
        if (i2 == 2) {
            return doBooleanCommand("SCAN");
        }
        throw new IllegalArgumentException("Invalid scan type");
    }

    public String scanResults(int i2) {
        return doStringCommandWithoutLogging("BSS RANGE=" + i2 + "- MASK=0x21987");
    }

    public boolean setBand(int i2) {
        return doBooleanCommand("DRIVER SETBAND " + i2);
    }

    public String setBatchedScanSettings(BatchedScanSettings batchedScanSettings) {
        if (batchedScanSettings == null) {
            return doStringCommand("DRIVER WLS_BATCHING STOP");
        }
        String str = ("DRIVER WLS_BATCHING SET SCANFREQ=" + batchedScanSettings.scanIntervalSec) + " MSCAN=" + batchedScanSettings.maxScansPerBatch;
        if (batchedScanSettings.maxApPerScan != Integer.MAX_VALUE) {
            str = str + " BESTN=" + batchedScanSettings.maxApPerScan;
        }
        Collection<String> collection = batchedScanSettings.channelSet;
        if (collection != null && !collection.isEmpty()) {
            String string = str + " CHANNEL=<";
            int i2 = 0;
            for (String str2 : batchedScanSettings.channelSet) {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(i2 > 0 ? "," : ProxyProperties.LOCAL_EXCL_LIST);
                sb.append(str2);
                string = sb.toString();
                i2++;
            }
            str = string + ">";
        }
        if (batchedScanSettings.maxApForDistance != Integer.MAX_VALUE) {
            str = str + " RTT=" + batchedScanSettings.maxApForDistance;
        }
        return doStringCommand(str);
    }

    public boolean setBluetoothCoexistenceMode(int i2) {
        return doBooleanCommand("DRIVER BTCOEXMODE " + i2);
    }

    public boolean setBluetoothCoexistenceScanMode(boolean z2) {
        return z2 ? doBooleanCommand("DRIVER BTCOEXSCAN-START") : doBooleanCommand("DRIVER BTCOEXSCAN-STOP");
    }

    public boolean setConcurrencyPriority(String str) {
        return doBooleanCommand("P2P_SET conc_pref " + str);
    }

    public boolean setConfigMethods(String str) {
        return doBooleanCommand("SET config_methods " + str);
    }

    public boolean setCountryCode(String str) {
        return doBooleanCommand("DRIVER COUNTRY " + str.toUpperCase(Locale.ROOT));
    }

    public boolean setDeviceName(String str) {
        return doBooleanCommand("SET device_name " + str);
    }

    public boolean setDeviceType(String str) {
        return doBooleanCommand("SET device_type " + str);
    }

    public boolean setManufacturer(String str) {
        return doBooleanCommand("SET manufacturer " + str);
    }

    public void setMiracastMode(int i2) {
        doBooleanCommand("DRIVER MIRACAST " + i2);
    }

    public boolean setModelName(String str) {
        return doBooleanCommand("SET model_name " + str);
    }

    public boolean setModelNumber(String str) {
        return doBooleanCommand("SET model_number " + str);
    }

    public boolean setNetworkVariable(int i2, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return doBooleanCommand("SET_NETWORK " + i2 + " " + str + " " + str2);
    }

    public boolean setP2pGroupIdle(String str, int i2) {
        boolean zDoBooleanCommandNative;
        synchronized (mLock) {
            zDoBooleanCommandNative = doBooleanCommandNative("IFNAME=" + str + " SET p2p_group_idle " + i2);
        }
        return zDoBooleanCommandNative;
    }

    public boolean setP2pPowerSave(String str, boolean z2) {
        synchronized (mLock) {
            try {
                if (z2) {
                    return doBooleanCommandNative("IFNAME=" + str + " P2P_SET ps 1");
                }
                return doBooleanCommandNative("IFNAME=" + str + " P2P_SET ps 0");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean setP2pSsidPostfix(String str) {
        return doBooleanCommand("SET p2p_ssid_postfix " + str);
    }

    public boolean setPersistentReconnect(boolean z2) {
        return doBooleanCommand("SET persistent_reconnect " + (!z2 ? 0 : 1));
    }

    public void setPowerSave(boolean z2) {
        if (z2) {
            doBooleanCommand("SET ps 1");
        } else {
            doBooleanCommand("SET ps 0");
        }
    }

    public void setScanInterval(int i2) {
        doBooleanCommand("SCAN_INTERVAL " + i2);
    }

    public boolean setSerialNumber(String str) {
        return doBooleanCommand("SET serial_number " + str);
    }

    public boolean setSuspendOptimizations(boolean z2) {
        if (this.mSuspendOptEnabled == z2) {
            return true;
        }
        this.mSuspendOptEnabled = z2;
        return z2 ? doBooleanCommand("DRIVER SETSUSPENDMODE 1") : doBooleanCommand("DRIVER SETSUSPENDMODE 0");
    }

    public boolean setWfdDeviceInfo(String str) {
        return doBooleanCommand("WFD_SUBELEM_SET 0 " + str);
    }

    public boolean setWfdEnable(boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SET wifi_display ");
        sb.append(z2 ? "1" : "0");
        return doBooleanCommand(sb.toString());
    }

    public String signalPoll() {
        return doStringCommandWithoutLogging("SIGNAL_POLL");
    }

    public boolean startDriver() {
        return doBooleanCommand("DRIVER START");
    }

    public boolean startFilteringMulticastV4Packets() {
        return doBooleanCommand("DRIVER RXFILTER-STOP") && doBooleanCommand("DRIVER RXFILTER-REMOVE 2") && doBooleanCommand("DRIVER RXFILTER-START");
    }

    public boolean startFilteringMulticastV6Packets() {
        return doBooleanCommand("DRIVER RXFILTER-STOP") && doBooleanCommand("DRIVER RXFILTER-REMOVE 3") && doBooleanCommand("DRIVER RXFILTER-START");
    }

    public void startTdls(String str, boolean z2) {
        if (!z2) {
            doBooleanCommand("TDLS_TEARDOWN " + str);
            return;
        }
        doBooleanCommand("TDLS_DISCOVER " + str);
        doBooleanCommand("TDLS_SETUP " + str);
    }

    public boolean startWpsPbc(String str) {
        if (TextUtils.isEmpty(str)) {
            return doBooleanCommand("WPS_PBC");
        }
        return doBooleanCommand("WPS_PBC " + str);
    }

    public String startWpsPinDisplay(String str) {
        if (TextUtils.isEmpty(str)) {
            return doStringCommand("WPS_PIN any");
        }
        return doStringCommand("WPS_PIN " + str);
    }

    public boolean startWpsPinKeypad(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return doBooleanCommand("WPS_PIN any " + str);
    }

    public boolean startWpsRegistrar(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return doBooleanCommand("WPS_REG " + str + " " + str2);
    }

    public String status() {
        return doStringCommand("STATUS");
    }

    public boolean stopDriver() {
        return doBooleanCommand("DRIVER STOP");
    }

    public boolean stopFilteringMulticastV4Packets() {
        return doBooleanCommand("DRIVER RXFILTER-STOP") && doBooleanCommand("DRIVER RXFILTER-ADD 2") && doBooleanCommand("DRIVER RXFILTER-START");
    }

    public boolean stopFilteringMulticastV6Packets() {
        return doBooleanCommand("DRIVER RXFILTER-STOP") && doBooleanCommand("DRIVER RXFILTER-ADD 3") && doBooleanCommand("DRIVER RXFILTER-START");
    }

    public boolean stopSupplicant() {
        return doBooleanCommand("TERMINATE");
    }

    public String waitForEvent() {
        return waitForEventNative();
    }

    public boolean p2pFind(int i2) {
        if (i2 <= 0) {
            return p2pFind();
        }
        return doBooleanCommand("P2P_FIND " + i2);
    }

    public boolean p2pListen(int i2) {
        if (i2 <= 0) {
            return p2pListen();
        }
        return doBooleanCommand("P2P_LISTEN " + i2);
    }

    public boolean p2pGroupAdd(int i2) {
        return doBooleanCommand("P2P_GROUP_ADD persistent=" + i2);
    }

    public boolean startWpsPinKeypad(String str, String str2) {
        boolean zDoBooleanCommandNative;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        synchronized (mLock) {
            zDoBooleanCommandNative = doBooleanCommandNative("IFNAME=" + str + " WPS_PIN any " + str2);
        }
        return zDoBooleanCommandNative;
    }

    public boolean startWpsPbc(String str, String str2) {
        synchronized (mLock) {
            if (TextUtils.isEmpty(str2)) {
                return doBooleanCommandNative("IFNAME=" + str + " WPS_PBC");
            }
            return doBooleanCommandNative("IFNAME=" + str + " WPS_PBC " + str2);
        }
    }

    public String startWpsPinDisplay(String str, String str2) {
        synchronized (mLock) {
            if (TextUtils.isEmpty(str2)) {
                return doStringCommandNative("IFNAME=" + str + " WPS_PIN any");
            }
            return doStringCommandNative("IFNAME=" + str + " WPS_PIN " + str2);
        }
    }
}
