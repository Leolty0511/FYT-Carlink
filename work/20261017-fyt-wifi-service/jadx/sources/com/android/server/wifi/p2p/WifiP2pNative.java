package com.android.server.wifi.p2p;

import android.hardware.wifi.V1_0.IWifiP2pIface;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pGroupList;
import android.net.wifi.p2p.nsd.WifiP2pServiceInfo;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.wifi.HalDeviceManager;
import com.android.server.wifi.PropertyService;
import com.android.server.wifi.WifiVendorHal;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pNative {
    private static final int CONNECT_TO_SUPPLICANT_MAX_SAMPLES = 50;
    private static final int CONNECT_TO_SUPPLICANT_SAMPLING_INTERVAL_MS = 100;
    private static final String P2P_IFACE_NAME = "p2p0";
    private static final String P2P_INTERFACE_PROPERTY = "wifi.direct.interface";
    private static final String TAG = "WifiP2pNative";
    private final HalDeviceManager mHalDeviceManager;
    private IWifiP2pIface mIWifiP2pIface;
    private InterfaceAvailableListenerInternal mInterfaceAvailableListener;
    private InterfaceDestroyedListenerInternal mInterfaceDestroyedListener;
    private final PropertyService mPropertyService;
    private final SupplicantP2pIfaceHalEx mSupplicantP2pIfaceHal;
    private boolean mVerboseLoggingEnabled;
    private final WifiVendorHal mWifiVendorHal;

    private class InterfaceAvailableListenerInternal implements HalDeviceManager.InterfaceAvailableForRequestListener {
        private final HalDeviceManager.InterfaceAvailableForRequestListener mExternalListener;

        InterfaceAvailableListenerInternal(HalDeviceManager.InterfaceAvailableForRequestListener externalListener) {
            this.mExternalListener = externalListener;
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceAvailableForRequestListener
        public void onAvailabilityChanged(boolean isAvailable) {
            Log.d(WifiP2pNative.TAG, "P2P InterfaceAvailableListener " + isAvailable);
            if (WifiP2pNative.this.mIWifiP2pIface != null && !isAvailable) {
                Log.i(WifiP2pNative.TAG, "Masking interface non-availability callback because we created a P2P iface");
            } else {
                this.mExternalListener.onAvailabilityChanged(isAvailable);
            }
        }
    }

    private class InterfaceDestroyedListenerInternal implements HalDeviceManager.InterfaceDestroyedListener {
        private final HalDeviceManager.InterfaceDestroyedListener mExternalListener;
        private boolean mValid = true;

        InterfaceDestroyedListenerInternal(HalDeviceManager.InterfaceDestroyedListener externalListener) {
            this.mExternalListener = externalListener;
        }

        public void teardownAndInvalidate(String ifaceName) {
            if (!TextUtils.isEmpty(ifaceName)) {
                WifiP2pNative.this.mSupplicantP2pIfaceHal.teardownIface(ifaceName);
            }
            WifiP2pNative.this.mIWifiP2pIface = null;
            this.mValid = false;
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceDestroyedListener
        public void onDestroyed(String ifaceName) {
            Log.d(WifiP2pNative.TAG, "P2P InterfaceDestroyedListener " + ifaceName);
            if (!this.mValid) {
                Log.d(WifiP2pNative.TAG, "Ignoring stale interface destroyed listener");
            } else {
                teardownAndInvalidate(ifaceName);
                this.mExternalListener.onDestroyed(ifaceName);
            }
        }
    }

    public WifiP2pNative(WifiVendorHal wifiVendorHal, SupplicantP2pIfaceHal p2pIfaceHal, HalDeviceManager halDeviceManager, PropertyService propertyService) {
        this.mVerboseLoggingEnabled = false;
        this.mWifiVendorHal = wifiVendorHal;
        this.mSupplicantP2pIfaceHal = null;
        this.mHalDeviceManager = halDeviceManager;
        this.mPropertyService = propertyService;
    }

    public WifiP2pNative(WifiVendorHal wifiVendorHal, SupplicantP2pIfaceHalEx p2pIfaceHalEx, HalDeviceManager halDeviceManager, PropertyService propertyService) {
        this.mVerboseLoggingEnabled = false;
        this.mWifiVendorHal = wifiVendorHal;
        this.mSupplicantP2pIfaceHal = p2pIfaceHalEx;
        this.mHalDeviceManager = halDeviceManager;
        this.mPropertyService = propertyService;
    }

    public void enableVerboseLogging(int verbose) {
        this.mVerboseLoggingEnabled = verbose > 0;
        SupplicantP2pIfaceHal.enableVerboseLogging(verbose);
    }

    private boolean waitForSupplicantConnection() {
        if (!this.mSupplicantP2pIfaceHal.isInitializationStarted() && !this.mSupplicantP2pIfaceHal.initialize()) {
            return false;
        }
        int connectTries = 0;
        while (true) {
            int connectTries2 = connectTries + 1;
            if (connectTries >= 50) {
                return false;
            }
            if (this.mSupplicantP2pIfaceHal.isInitializationComplete()) {
                return true;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            }
            connectTries = connectTries2;
        }
    }

    public void closeSupplicantConnection() {
    }

    public boolean isHalInterfaceSupported() {
        return this.mHalDeviceManager.isSupported();
    }

    private String createP2pIface(Handler handler) {
        if (this.mHalDeviceManager.isSupported()) {
            this.mIWifiP2pIface = this.mHalDeviceManager.createP2pIface(this.mInterfaceDestroyedListener, handler);
            IWifiP2pIface iWifiP2pIface = this.mIWifiP2pIface;
            if (iWifiP2pIface == null) {
                Log.e(TAG, "Failed to create P2p iface in HalDeviceManager");
                return null;
            }
            String ifaceName = HalDeviceManager.getName(iWifiP2pIface);
            if (TextUtils.isEmpty(ifaceName)) {
                Log.e(TAG, "Failed to get p2p iface name");
                teardownInterface();
                return null;
            }
            return ifaceName;
        }
        Log.i(TAG, "Vendor Hal is not supported, ignoring createP2pIface.");
        return this.mPropertyService.getString(P2P_INTERFACE_PROPERTY, P2P_IFACE_NAME);
    }

    public void registerInterfaceAvailableListener(HalDeviceManager.InterfaceAvailableForRequestListener listener, final Handler handler) {
        this.mInterfaceAvailableListener = new InterfaceAvailableListenerInternal(listener);
        this.mHalDeviceManager.registerStatusListener(new HalDeviceManager.ManagerStatusListener() { // from class: com.android.server.wifi.p2p.-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg
            @Override // com.android.server.wifi.HalDeviceManager.ManagerStatusListener
            public final void onStatusChanged() {
                this.f$0.lambda$registerInterfaceAvailableListener$0$WifiP2pNative(handler);
            }
        }, handler);
        if (this.mHalDeviceManager.isStarted()) {
            this.mHalDeviceManager.registerInterfaceAvailableForRequestListener(2, this.mInterfaceAvailableListener, handler);
        }
    }

    public /* synthetic */ void lambda$registerInterfaceAvailableListener$0$WifiP2pNative(Handler handler) {
        if (this.mHalDeviceManager.isStarted()) {
            Log.i(TAG, "Registering for interface available listener");
            this.mHalDeviceManager.registerInterfaceAvailableForRequestListener(2, this.mInterfaceAvailableListener, handler);
        }
    }

    public String setupInterface(HalDeviceManager.InterfaceDestroyedListener destroyedListener, Handler handler) {
        Log.d(TAG, "Setup P2P interface");
        if (this.mIWifiP2pIface != null) {
            Log.i(TAG, "P2P interface is already existed");
            if (this.mHalDeviceManager.isSupported()) {
                return HalDeviceManager.getName(this.mIWifiP2pIface);
            }
            return this.mPropertyService.getString(P2P_INTERFACE_PROPERTY, P2P_IFACE_NAME);
        }
        this.mInterfaceDestroyedListener = new InterfaceDestroyedListenerInternal(destroyedListener);
        String ifaceName = createP2pIface(handler);
        if (ifaceName == null) {
            Log.e(TAG, "Failed to create P2p iface");
            return null;
        }
        if (!waitForSupplicantConnection()) {
            Log.e(TAG, "Failed to connect to supplicant");
            teardownInterface();
            return null;
        }
        if (!this.mSupplicantP2pIfaceHal.setupIface(ifaceName)) {
            Log.e(TAG, "Failed to setup P2p iface in supplicant");
            teardownInterface();
            return null;
        }
        Log.i(TAG, "P2P interface setup completed");
        return ifaceName;
    }

    public void teardownInterface() {
        Log.d(TAG, "Teardown P2P interface");
        if (!this.mHalDeviceManager.isSupported()) {
            Log.i(TAG, "HAL (HIDL) is not supported. Destroy listener for the interface.");
            String ifaceName = this.mPropertyService.getString(P2P_INTERFACE_PROPERTY, P2P_IFACE_NAME);
            this.mInterfaceDestroyedListener.teardownAndInvalidate(ifaceName);
            return;
        }
        IWifiP2pIface iWifiP2pIface = this.mIWifiP2pIface;
        if (iWifiP2pIface != null) {
            String ifaceName2 = HalDeviceManager.getName(iWifiP2pIface);
            this.mHalDeviceManager.removeIface(this.mIWifiP2pIface);
            this.mInterfaceDestroyedListener.teardownAndInvalidate(ifaceName2);
            Log.i(TAG, "P2P interface teardown completed");
        }
    }

    public boolean setDeviceName(String name) {
        return this.mSupplicantP2pIfaceHal.setWpsDeviceName(name);
    }

    public boolean p2pListNetworks(WifiP2pGroupList groups) {
        return this.mSupplicantP2pIfaceHal.loadGroups(groups);
    }

    public boolean startWpsPbc(String iface, String bssid) {
        return this.mSupplicantP2pIfaceHal.startWpsPbc(iface, bssid);
    }

    public boolean startWpsPinKeypad(String iface, String pin) {
        return this.mSupplicantP2pIfaceHal.startWpsPinKeypad(iface, pin);
    }

    public String startWpsPinDisplay(String iface, String bssid) {
        return this.mSupplicantP2pIfaceHal.startWpsPinDisplay(iface, bssid);
    }

    public boolean removeP2pNetwork(int netId) {
        return this.mSupplicantP2pIfaceHal.removeNetwork(netId);
    }

    public boolean setP2pDeviceName(String name) {
        return this.mSupplicantP2pIfaceHal.setWpsDeviceName(name);
    }

    public boolean setP2pDeviceType(String type) {
        return this.mSupplicantP2pIfaceHal.setWpsDeviceType(type);
    }

    public boolean setConfigMethods(String cfg) {
        return this.mSupplicantP2pIfaceHal.setWpsConfigMethods(cfg);
    }

    public boolean setP2pSsidPostfix(String postfix) {
        return this.mSupplicantP2pIfaceHal.setSsidPostfix(postfix);
    }

    public boolean setP2pGroupIdle(String iface, int time) {
        return this.mSupplicantP2pIfaceHal.setGroupIdle(iface, time);
    }

    public boolean setP2pPowerSave(String iface, boolean enabled) {
        return this.mSupplicantP2pIfaceHal.setPowerSave(iface, enabled);
    }

    public boolean setWfdEnable(boolean enable) {
        return this.mSupplicantP2pIfaceHal.enableWfd(enable);
    }

    public boolean setWfdDeviceInfo(String hex) {
        return this.mSupplicantP2pIfaceHal.setWfdDeviceInfo(hex);
    }

    public boolean p2pFind() {
        return p2pFind(0);
    }

    public boolean p2pFind(int timeout) {
        return this.mSupplicantP2pIfaceHal.find(timeout);
    }

    public boolean p2pStopFind() {
        return this.mSupplicantP2pIfaceHal.stopFind();
    }

    public boolean p2pExtListen(boolean enable, int period, int interval) {
        return this.mSupplicantP2pIfaceHal.configureExtListen(enable, period, interval);
    }

    public boolean p2pSetChannel(int lc, int oc) {
        return this.mSupplicantP2pIfaceHal.setListenChannel(lc, oc);
    }

    public boolean p2pFlush() {
        return this.mSupplicantP2pIfaceHal.flush();
    }

    public String p2pConnect(WifiP2pConfig config, boolean joinExistingGroup) {
        return this.mSupplicantP2pIfaceHal.connect(config, joinExistingGroup);
    }

    public boolean p2pCancelConnect() {
        return this.mSupplicantP2pIfaceHal.cancelConnect();
    }

    public boolean p2pProvisionDiscovery(WifiP2pConfig config) {
        return this.mSupplicantP2pIfaceHal.provisionDiscovery(config);
    }

    public boolean p2pGroupAdd(boolean persistent) {
        return this.mSupplicantP2pIfaceHal.groupAdd(persistent);
    }

    public boolean p2pGroupAdd(int netId) {
        return this.mSupplicantP2pIfaceHal.groupAdd(netId, true);
    }

    public boolean p2pGroupAdd(WifiP2pConfig config, boolean join) {
        int freq;
        int i = config.groupOwnerBand;
        if (i == 1) {
            freq = 2;
        } else if (i == 2) {
            freq = 5;
        } else {
            freq = config.groupOwnerBand;
        }
        return this.mSupplicantP2pIfaceHal.groupAdd(config.networkName, config.passphrase, config.netId == -2, freq, config.deviceAddress, join);
    }

    public boolean p2pGroupRemove(String iface) {
        return this.mSupplicantP2pIfaceHal.groupRemove(iface);
    }

    public boolean p2pReject(String deviceAddress) {
        return this.mSupplicantP2pIfaceHal.reject(deviceAddress);
    }

    public boolean p2pInvite(WifiP2pGroup group, String deviceAddress) {
        return this.mSupplicantP2pIfaceHal.invite(group, deviceAddress);
    }

    public boolean p2pReinvoke(int netId, String deviceAddress) {
        return this.mSupplicantP2pIfaceHal.reinvoke(netId, deviceAddress);
    }

    public String p2pGetSsid(String deviceAddress) {
        return this.mSupplicantP2pIfaceHal.getSsid(deviceAddress);
    }

    public String p2pGetDeviceAddress() {
        return this.mSupplicantP2pIfaceHal.getDeviceAddress();
    }

    public int getGroupCapability(String deviceAddress) {
        return this.mSupplicantP2pIfaceHal.getGroupCapability(deviceAddress);
    }

    public boolean p2pServiceAdd(WifiP2pServiceInfo servInfo) {
        return this.mSupplicantP2pIfaceHal.serviceAdd(servInfo);
    }

    public boolean p2pServiceDel(WifiP2pServiceInfo servInfo) {
        return this.mSupplicantP2pIfaceHal.serviceRemove(servInfo);
    }

    public boolean p2pServiceFlush() {
        return this.mSupplicantP2pIfaceHal.serviceFlush();
    }

    public String p2pServDiscReq(String addr, String query) {
        return this.mSupplicantP2pIfaceHal.requestServiceDiscovery(addr, query);
    }

    public boolean p2pServDiscCancelReq(String id) {
        return this.mSupplicantP2pIfaceHal.cancelServiceDiscovery(id);
    }

    public void setMiracastMode(int mode) {
        this.mSupplicantP2pIfaceHal.setMiracastMode(mode);
    }

    public String getNfcHandoverRequest() {
        return this.mSupplicantP2pIfaceHal.getNfcHandoverRequest();
    }

    public String getNfcHandoverSelect() {
        return this.mSupplicantP2pIfaceHal.getNfcHandoverSelect();
    }

    public boolean initiatorReportNfcHandover(String selectMessage) {
        return this.mSupplicantP2pIfaceHal.initiatorReportNfcHandover(selectMessage);
    }

    public boolean responderReportNfcHandover(String requestMessage) {
        return this.mSupplicantP2pIfaceHal.responderReportNfcHandover(requestMessage);
    }

    public String getP2pClientList(int netId) {
        return this.mSupplicantP2pIfaceHal.getClientList(netId);
    }

    public boolean setP2pClientList(int netId, String list) {
        return this.mSupplicantP2pIfaceHal.setClientList(netId, list);
    }

    public boolean saveConfig() {
        return this.mSupplicantP2pIfaceHal.saveConfig();
    }

    public boolean setMacRandomization(boolean enable) {
        return this.mSupplicantP2pIfaceHal.setMacRandomization(enable);
    }

    public long getSupportedFeatureSet(String ifaceName) {
        return this.mWifiVendorHal.getSupportedFeatureSet(ifaceName);
    }

    public boolean setParamToP2pSupplicant(String key, String value) {
        return this.mSupplicantP2pIfaceHal.setParamToP2pSupplicant(key, value);
    }

    public int getParamToP2pSupplicant(String key) {
        return this.mSupplicantP2pIfaceHal.getParamToP2pSupplicant(key);
    }

    public boolean setP2pBand(int band) {
        String p2p_listen_reg_class;
        String p2p_listen_channel;
        String p2p_oper_reg_class;
        String p2p_oper_channel;
        if (band == 2) {
            p2p_listen_reg_class = "81";
            p2p_listen_channel = "6";
            p2p_oper_reg_class = "81";
            p2p_oper_channel = "5";
        } else if (band == 1) {
            p2p_listen_reg_class = "115";
            p2p_listen_channel = "40";
            p2p_oper_reg_class = "115";
            p2p_oper_channel = "40";
        } else {
            p2p_listen_reg_class = "";
            p2p_listen_channel = "";
            p2p_oper_reg_class = "";
            p2p_oper_channel = "";
        }
        return setParamToP2pSupplicant("SET_P2P_BAND p2p_listen_reg_class", p2p_listen_reg_class) && setParamToP2pSupplicant("SET_P2P_BAND p2p_listen_channel", p2p_listen_channel) && setParamToP2pSupplicant("SET_P2P_BAND p2p_oper_reg_class", p2p_oper_reg_class) && setParamToP2pSupplicant("SET_P2P_BAND p2p_oper_channel", p2p_oper_channel) && saveConfig();
    }

    public int getP2pBand() {
        if (81 == getParamToP2pSupplicant("GET_P2P_BAND p2p_listen_reg_class") && 6 == getParamToP2pSupplicant("GET_P2P_BAND p2p_listen_channel") && 81 == getParamToP2pSupplicant("GET_P2P_BAND p2p_oper_reg_class") && 5 == getParamToP2pSupplicant("GET_P2P_BAND p2p_oper_channel")) {
            return 2;
        }
        if (115 == getParamToP2pSupplicant("GET_P2P_BAND p2p_listen_reg_class") && 40 == getParamToP2pSupplicant("GET_P2P_BAND p2p_listen_channel") && 115 == getParamToP2pSupplicant("GET_P2P_BAND p2p_oper_reg_class") && 40 == getParamToP2pSupplicant("GET_P2P_BAND p2p_oper_channel")) {
            return 1;
        }
        return 0;
    }
}
