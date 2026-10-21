package android.net;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class EthernetDataTracker implements NetworkStateTracker {
    private static final boolean DBG = false;
    public static final String ETHERNET_STATE_CHANGED_ACTION = "android.net.ethernet.ETHERNET_STATE_CHANGED";
    public static final int ETHER_IFACE_STATE_DOWN = 0;
    public static final int ETHER_IFACE_STATE_UP = 1;
    public static final int ETHER_STATE_CONNECTED = 2;
    public static final int ETHER_STATE_CONNECTING = 1;
    public static final int ETHER_STATE_DISCONNECTED = 0;
    private static final int EVENT_INTERFACE_LINK_STATE_CHANGED = 0;
    private static final int EVENT_INTERFACE_LINK_STATE_CHANGED_DELAY_MS = 200;
    public static final String EXTRA_ETHERNET_STATE = "ethernet_state";
    private static final String NETWORKTYPE = "ETHERNET";
    private static final String TAG = "Ethernet";
    private static String mIface = "";
    private static boolean mLinkUp = false;
    private static String sIfaceMatch = "";
    private static EthernetDataTracker sInstance;
    private String dns1;
    private String dns2;
    private boolean ethConnected;
    private String gateway;
    private String ipAddress;
    private boolean isEthernetContentObserverRegister;
    private Context mContext;
    private Handler mCsHandler;
    private Handler mHandler;
    private String mHwAddr;
    private InterfaceObserver mInterfaceObserver;
    private INetworkManagementService mNMService;
    private INetworkManagementService mNwService;
    private PowerManager.WakeLock mWakeLock;
    private WifiManager mWifiManager;
    private String netmask;
    private int prefixLength;
    private AtomicBoolean mTeardownRequested = new AtomicBoolean(false);
    private AtomicBoolean mPrivateDnsRouteSet = new AtomicBoolean(false);
    private AtomicInteger mDefaultGatewayAddr = new AtomicInteger(0);
    private AtomicBoolean mDefaultRouteSet = new AtomicBoolean(false);
    public int ethCurrentState = 0;
    private boolean isFirstBoot = true;
    private ContentObserver mEthernetEnableObserver = new ContentObserver(new Handler()) { // from class: android.net.EthernetDataTracker.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            if (Settings.Secure.getInt(EthernetDataTracker.this.mContext.getContentResolver(), "ethernet_on", 1) == 1) {
                EthernetDataTracker.this.handleEnable();
            } else {
                EthernetDataTracker.this.handleDisable();
            }
        }
    };
    private NetworkInfo mNetworkInfo = new NetworkInfo(9, 0, NETWORKTYPE, ProxyProperties.LOCAL_EXCL_LIST);
    private LinkProperties mLinkProperties = new LinkProperties();
    private LinkCapabilities mLinkCapabilities = new LinkCapabilities();

    public class EthernetDataTrackerHandler extends Handler {
        private EthernetDataTracker mDataTracker;

        public EthernetDataTrackerHandler(Looper looper, EthernetDataTracker ethernetDataTracker) {
            super(looper);
            this.mDataTracker = ethernetDataTracker;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            if (message.arg1 != 1) {
                this.mDataTracker.disconnect();
            } else if (EthernetDataTracker.this.getEthernetCarrierState() != 0) {
                this.mDataTracker.connect();
            }
        }
    }

    public class InterfaceObserver extends INetworkManagementEventObserver.Stub {
        private EthernetDataTracker mTracker;

        public InterfaceObserver(EthernetDataTracker ethernetDataTracker) {
            this.mTracker = ethernetDataTracker;
        }

        @Override // android.net.INetworkManagementEventObserver
        public void addressRemoved(String str, String str2, int i2, int i3) {
        }

        @Override // android.net.INetworkManagementEventObserver
        public void addressUpdated(String str, String str2, int i2, int i3) {
        }

        @Override // android.net.INetworkManagementEventObserver
        public void interfaceAdded(String str) {
            this.mTracker.interfaceAdded(str);
            Log.d(EthernetDataTracker.TAG, "interfaceAdded");
        }

        @Override // android.net.INetworkManagementEventObserver
        public void interfaceClassDataActivityChanged(String str, boolean z2) {
        }

        @Override // android.net.INetworkManagementEventObserver
        public void interfaceLinkStateChanged(String str, boolean z2) {
            if (!EthernetDataTracker.mIface.equals(str) || EthernetDataTracker.mLinkUp == z2) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Interface ");
            sb.append(str);
            sb.append(" link ");
            sb.append(z2 ? "up" : "down");
            Log.d(EthernetDataTracker.TAG, sb.toString());
            boolean unused = EthernetDataTracker.mLinkUp = z2;
            if (z2) {
                EthernetDataTracker.this.mHandler.removeMessages(0);
                EthernetDataTracker.this.mHandler.sendMessageDelayed(EthernetDataTracker.this.mHandler.obtainMessage(0, 1, 0), 200L);
            } else {
                EthernetDataTracker.this.mHandler.removeMessages(0);
                EthernetDataTracker.this.mHandler.sendMessageDelayed(EthernetDataTracker.this.mHandler.obtainMessage(0, 0, 0), 200L);
            }
        }

        @Override // android.net.INetworkManagementEventObserver
        public void interfaceRemoved(String str) {
            EthernetDataTracker.this.mHandler.removeMessages(0);
            this.mTracker.interfaceRemoved(str);
            Log.d(EthernetDataTracker.TAG, "interfaceRemoved");
        }

        @Override // android.net.INetworkManagementEventObserver
        public void interfaceStatusChanged(String str, boolean z2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Interface status changed: ");
            sb.append(str);
            sb.append(z2 ? "up" : "down");
            Log.d(EthernetDataTracker.TAG, sb.toString());
        }

        @Override // android.net.INetworkManagementEventObserver
        public void limitReached(String str, String str2) {
        }
    }

    private EthernetDataTracker() {
        mLinkUp = false;
        this.ethConnected = false;
        this.isEthernetContentObserverRegister = false;
        this.mNetworkInfo.setIsAvailable(false);
        setTeardownRequested(false);
        this.mNwService = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
        HandlerThread handlerThread = new HandlerThread("EthernetDataTrackerThread");
        handlerThread.start();
        this.mHandler = new EthernetDataTrackerHandler(handlerThread.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean IsWiFiConnected() {
        try {
            return Boolean.valueOf(((ConnectivityManager) this.mContext.getSystemService(Context.CONNECTIVITY_SERVICE)).getNetworkInfo(1).isConnected());
        } catch (Exception e2) {
            Log.e(TAG, "getSystemService(CONNECTIVITY_SERVICE) failed: " + e2);
            return Boolean.FALSE;
        }
    }

    private String ReadFromFile(File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            String line = new BufferedReader(new InputStreamReader(fileInputStream)).readLine();
            fileInputStream.close();
            return line;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acquireWakeLock(Context context) {
        if (this.mWakeLock == null && findUsbEthNode()) {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, "USB Ether");
            this.mWakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.acquire();
            Log.d(TAG, "acquireWakeLock USB Ether");
        }
    }

    private boolean findUsbEthNode() {
        return !new File("/sys/class/vmac/exist").exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getEthernetCarrierState() {
        if (mIface != ProxyProperties.LOCAL_EXCL_LIST) {
            try {
                String strReadFromFile = ReadFromFile(new File("/sys/class/net/" + mIface + "/carrier"));
                StringBuilder sb = new StringBuilder();
                sb.append("carrier = ");
                sb.append(strReadFromFile);
                Log.d(TAG, sb.toString());
                return Integer.parseInt(strReadFromFile);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    public static synchronized EthernetDataTracker getInstance() {
        if (sInstance == null) {
            sInstance = new EthernetDataTracker();
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getStaticIpInfo() {
        this.ipAddress = Settings.System.getString(this.mContext.getContentResolver(), Settings.System.ETHERNET_STATIC_IP);
        this.netmask = Settings.System.getString(this.mContext.getContentResolver(), Settings.System.ETHERNET_STATIC_NETMASK);
        this.gateway = Settings.System.getString(this.mContext.getContentResolver(), Settings.System.ETHERNET_STATIC_GATEWAY);
        this.dns1 = Settings.System.getString(this.mContext.getContentResolver(), Settings.System.ETHERNET_STATIC_DNS1);
        this.dns2 = Settings.System.getString(this.mContext.getContentResolver(), Settings.System.ETHERNET_STATIC_DNS2);
        this.prefixLength = 24;
        try {
            this.prefixLength = NetworkUtils.netmaskIntToPrefixLength(NetworkUtils.inetAddressToInt(NetworkUtils.numericToInetAddress(this.netmask)));
        } catch (Exception e2) {
            Log.e(TAG, "netmask to prefixLength exception: " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisable() {
        if (mIface.isEmpty() || !this.ethConnected) {
            return;
        }
        this.ethConnected = false;
        try {
            this.mNwService.clearInterfaceAddresses(mIface);
            Log.d(TAG, "clearInterfaceAddresses succeeded");
        } catch (RemoteException e2) {
            Log.e(TAG, "clearInterfaceAddresses configuration failed: " + e2);
        } catch (IllegalStateException e3) {
            Log.e(TAG, "clearInterfaceAddresses configuration failed: " + e3);
        }
        disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnable() {
        if (mIface.isEmpty() || !isEthernetEnabled() || this.ethConnected || getEthernetCarrierState() == 0) {
            return;
        }
        sendEthStateChangedBroadcast(1);
        connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void interfaceAdded(String str) {
        if (str.matches(sIfaceMatch)) {
            registerEthernetContentObserver();
            Log.d(TAG, "Adding " + str);
            acquireWakeLock(this.mContext);
            synchronized (this) {
                if (mIface.isEmpty()) {
                    mIface = str;
                    try {
                        this.mNMService.setInterfaceUp(str);
                    } catch (Exception e2) {
                        Log.e(TAG, "Error upping interface " + str + ": " + e2);
                    }
                    handleEnable();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void interfaceRemoved(String str) {
        if (str.equals(mIface)) {
            Log.d(TAG, "Removing " + str);
            releaseWakeLock();
            this.mHandler.removeMessages(0);
            handleDisable();
            mIface = ProxyProperties.LOCAL_EXCL_LIST;
            releaseWakeLock();
        }
    }

    private boolean isEthernetEnabled() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), "ethernet_on", 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUsingStaticIp() {
        return Settings.System.getInt(this.mContext.getContentResolver(), Settings.System.ETHERNET_USE_STATIC_IP, 0) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinkAddress makeLinkAddress() {
        if (!TextUtils.isEmpty(this.ipAddress)) {
            return new LinkAddress(NetworkUtils.numericToInetAddress(this.ipAddress), this.prefixLength);
        }
        Log.e(TAG, "makeLinkAddress with empty ipAddress");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinkProperties makeLinkProperties() {
        LinkProperties linkProperties = new LinkProperties();
        linkProperties.addLinkAddress(makeLinkAddress());
        linkProperties.addRoute(new RouteInfo(NetworkUtils.numericToInetAddress(this.gateway)));
        if (TextUtils.isEmpty(this.dns1)) {
            Log.d(TAG, "makeLinkProperties with empty dns1!");
        } else {
            linkProperties.addDns(NetworkUtils.numericToInetAddress(this.dns1));
        }
        if (TextUtils.isEmpty(this.dns2)) {
            Log.d(TAG, "makeLinkProperties with empty dns2!");
        } else {
            linkProperties.addDns(NetworkUtils.numericToInetAddress(this.dns2));
        }
        return linkProperties;
    }

    private void registerEthernetContentObserver() {
        if (this.isEthernetContentObserverRegister) {
            return;
        }
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("ethernet_on"), false, this.mEthernetEnableObserver);
        this.isEthernetContentObserverRegister = true;
    }

    private void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.release();
            this.mWakeLock = null;
            Log.d(TAG, "releaseWakeLock USB Ether");
        }
    }

    private void runDhcp() {
        if (mIface.isEmpty() || !isEthernetEnabled()) {
            return;
        }
        registerEthernetContentObserver();
        new Thread(new Runnable() { // from class: android.net.EthernetDataTracker.2
            @Override // java.lang.Runnable
            public void run() {
                DhcpResults dhcpResults = new DhcpResults();
                if (EthernetDataTracker.this.isUsingStaticIp()) {
                    EthernetDataTracker.this.getStaticIpInfo();
                    InterfaceConfiguration interfaceConfiguration = new InterfaceConfiguration();
                    interfaceConfiguration.setLinkAddress(EthernetDataTracker.this.makeLinkAddress());
                    interfaceConfiguration.setInterfaceUp();
                    try {
                        EthernetDataTracker.this.mNwService.setInterfaceConfig(EthernetDataTracker.mIface, interfaceConfiguration);
                        Log.d(EthernetDataTracker.TAG, "Static IP configuration succeeded");
                    } catch (RemoteException e2) {
                        Log.e(EthernetDataTracker.TAG, "Static IP configuration failed: " + e2);
                    } catch (IllegalStateException e3) {
                        Log.e(EthernetDataTracker.TAG, "Static IP configuration failed: " + e3);
                    }
                    EthernetDataTracker ethernetDataTracker = EthernetDataTracker.this;
                    ethernetDataTracker.mLinkProperties = ethernetDataTracker.makeLinkProperties();
                } else {
                    if (!NetworkUtils.runDhcp(EthernetDataTracker.mIface, dhcpResults)) {
                        EthernetDataTracker ethernetDataTracker2 = EthernetDataTracker.this;
                        if (ethernetDataTracker2.ethCurrentState != 0) {
                            ethernetDataTracker2.sendEthStateChangedBroadcast(0);
                        }
                        Log.e(EthernetDataTracker.TAG, "DHCP request error:" + NetworkUtils.getDhcpError());
                        return;
                    }
                    EthernetDataTracker.this.mLinkProperties = dhcpResults.linkProperties;
                }
                EthernetDataTracker.this.mLinkProperties.setInterfaceName(EthernetDataTracker.mIface);
                EthernetDataTracker.this.mNetworkInfo.setIsAvailable(true);
                EthernetDataTracker.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.CONNECTED, null, EthernetDataTracker.this.mHwAddr);
                EthernetDataTracker.this.mCsHandler.obtainMessage(NetworkStateTracker.EVENT_CONFIGURATION_CHANGED, EthernetDataTracker.this.mNetworkInfo).sendToTarget();
                EthernetDataTracker.this.mCsHandler.obtainMessage(458752, EthernetDataTracker.this.mNetworkInfo).sendToTarget();
                if (!EthernetDataTracker.this.IsWiFiConnected().booleanValue()) {
                    EthernetDataTracker.this.sendEthStateChangedBroadcast(2);
                }
                EthernetDataTracker ethernetDataTracker3 = EthernetDataTracker.this;
                ethernetDataTracker3.acquireWakeLock(ethernetDataTracker3.mContext);
                EthernetDataTracker.this.ethConnected = true;
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEthStateChangedBroadcast(int i2) {
        this.ethCurrentState = i2;
        Intent intent = new Intent(ETHERNET_STATE_CHANGED_ACTION);
        intent.addFlags(67108864);
        intent.putExtra(EXTRA_ETHERNET_STATE, i2);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void unregisterEthernetContentObserver() {
        if (this.isEthernetContentObserverRegister) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mEthernetEnableObserver);
            this.isEthernetContentObserverRegister = false;
        }
    }

    public Object Clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    @Override // android.net.NetworkStateTracker
    public void addStackedLink(LinkProperties linkProperties) {
    }

    @Override // android.net.NetworkStateTracker
    public void captivePortalCheckComplete() {
    }

    @Override // android.net.NetworkStateTracker
    public void captivePortalCheckCompleted(boolean z2) {
    }

    public void connect() {
        runDhcp();
    }

    @Override // android.net.NetworkStateTracker
    public void defaultRouteSet(boolean z2) {
        this.mDefaultRouteSet.set(z2);
    }

    public int disableEthIface() {
        Settings.Secure.putInt(this.mContext.getContentResolver(), "ethernet_on", 0);
        return 0;
    }

    public void disconnect() {
        NetworkUtils.stopDhcp(mIface);
        this.mNetworkInfo.setIsAvailable(false);
        this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, this.mHwAddr);
        this.mCsHandler.obtainMessage(NetworkStateTracker.EVENT_CONFIGURATION_CHANGED, this.mNetworkInfo).sendToTarget();
        this.mCsHandler.obtainMessage(458752, this.mNetworkInfo).sendToTarget();
        try {
            INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE)).clearInterfaceAddresses(mIface);
        } catch (Exception e2) {
            Log.e(TAG, "Failed to clear addresses or disable ipv6" + e2);
        }
        sendEthStateChangedBroadcast(0);
    }

    public int enableEthIface() {
        registerEthernetContentObserver();
        Settings.Secure.putInt(this.mContext.getContentResolver(), "ethernet_on", 1);
        return 0;
    }

    public int getDefaultGatewayAddr() {
        return this.mDefaultGatewayAddr.get();
    }

    public String getEthIfaceName() {
        return mIface;
    }

    @Override // android.net.NetworkStateTracker
    public LinkCapabilities getLinkCapabilities() {
        return new LinkCapabilities(this.mLinkCapabilities);
    }

    @Override // android.net.NetworkStateTracker
    public synchronized LinkProperties getLinkProperties() {
        return new LinkProperties(this.mLinkProperties);
    }

    @Override // android.net.NetworkStateTracker
    public LinkQualityInfo getLinkQualityInfo() {
        return null;
    }

    @Override // android.net.NetworkStateTracker
    public synchronized NetworkInfo getNetworkInfo() {
        return this.mNetworkInfo;
    }

    @Override // android.net.NetworkStateTracker
    public String getNetworkInterfaceName() {
        return ProxyProperties.LOCAL_EXCL_LIST;
    }

    @Override // android.net.NetworkStateTracker
    public String getTcpBufferSizesPropName() {
        return BaseNetworkStateTracker.PROP_TCP_BUFFER_WIFI;
    }

    @Override // android.net.NetworkStateTracker
    public synchronized boolean isAvailable() {
        return this.mNetworkInfo.isAvailable();
    }

    @Override // android.net.NetworkStateTracker
    public boolean isDefaultRouteSet() {
        return this.mDefaultRouteSet.get();
    }

    @Override // android.net.NetworkStateTracker
    public boolean isPrivateDnsRouteSet() {
        return this.mPrivateDnsRouteSet.get();
    }

    @Override // android.net.NetworkStateTracker
    public boolean isTeardownRequested() {
        return this.mTeardownRequested.get();
    }

    @Override // android.net.NetworkStateTracker
    public void privateDnsRouteSet(boolean z2) {
        this.mPrivateDnsRouteSet.set(z2);
    }

    @Override // android.net.NetworkStateTracker
    public boolean reconnect() {
        if (getEthernetCarrierState() != 0 && !this.isFirstBoot) {
            this.mTeardownRequested.set(false);
            connect();
        }
        this.isFirstBoot = false;
        return mLinkUp;
    }

    @Override // android.net.NetworkStateTracker
    public void removeStackedLink(LinkProperties linkProperties) {
    }

    @Override // android.net.NetworkStateTracker
    public void setDependencyMet(boolean z2) {
    }

    @Override // android.net.NetworkStateTracker
    public void setPolicyDataEnable(boolean z2) {
        Log.w(TAG, "ignoring setPolicyDataEnable(" + z2 + ")");
    }

    @Override // android.net.NetworkStateTracker
    public boolean setRadio(boolean z2) {
        return true;
    }

    @Override // android.net.NetworkStateTracker
    public void setTeardownRequested(boolean z2) {
        this.mTeardownRequested.set(z2);
    }

    @Override // android.net.NetworkStateTracker
    public void setUserDataEnable(boolean z2) {
        Log.w(TAG, "ignoring setUserDataEnable(" + z2 + ")");
    }

    @Override // android.net.NetworkStateTracker
    public void startMonitoring(Context context, Handler handler) {
        this.mContext = context;
        this.mCsHandler = handler;
        this.mWifiManager = (WifiManager) context.getSystemService("wifi");
        this.mNMService = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
        this.mInterfaceObserver = new InterfaceObserver(this);
        sIfaceMatch = context.getResources().getString(17039384);
        try {
            for (String str : this.mNMService.listInterfaces()) {
                if (str.matches(sIfaceMatch)) {
                    mIface = str;
                    this.mNMService.setInterfaceUp(str);
                    InterfaceConfiguration interfaceConfig = this.mNMService.getInterfaceConfig(str);
                    mLinkUp = interfaceConfig.isActive();
                    if (this.mHwAddr == null) {
                        String hardwareAddress = interfaceConfig.getHardwareAddress();
                        this.mHwAddr = hardwareAddress;
                        if (hardwareAddress != null) {
                            this.mNetworkInfo.setExtraInfo(hardwareAddress);
                        }
                    }
                    Log.d(TAG, "mLinkUp = " + mLinkUp + ", mHwAddr = " + this.mHwAddr);
                    acquireWakeLock(this.mContext);
                    Log.d(TAG, "check link a little later...");
                    this.mHandler.removeMessages(0);
                    Handler handler2 = this.mHandler;
                    handler2.sendMessageDelayed(handler2.obtainMessage(0, 1, 0), 200L);
                    break;
                }
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not get list of interfaces " + e2);
        } catch (Exception e3) {
            Log.e(TAG, "Error upping interface " + mIface + ": " + e3);
        }
        try {
            this.mNMService.registerObserver(this.mInterfaceObserver);
        } catch (RemoteException e4) {
            Log.e(TAG, "Could not register InterfaceObserver " + e4);
        }
    }

    @Override // android.net.NetworkStateTracker
    public void startSampling(SamplingDataTracker.SamplingSnapshot samplingSnapshot) {
    }

    public int startUsingNetworkFeature(String str, int i2, int i3) {
        return -1;
    }

    @Override // android.net.NetworkStateTracker
    public void stopSampling(SamplingDataTracker.SamplingSnapshot samplingSnapshot) {
    }

    public int stopUsingNetworkFeature(String str, int i2, int i3) {
        return -1;
    }

    @Override // android.net.NetworkStateTracker
    public void supplyMessenger(Messenger messenger) {
    }

    @Override // android.net.NetworkStateTracker
    public boolean teardown() {
        this.mTeardownRequested.set(true);
        disconnect();
        return true;
    }
}
