package com.android.server.wifi.p2p;

import android.R;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.DhcpResults;
import android.net.InterfaceConfiguration;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.net.NetworkUtils;
import android.net.ip.IIpClient;
import android.net.ip.IpClientCallbacks;
import android.net.ip.IpClientUtil;
import android.net.shared.ProvisioningConfiguration;
import android.net.wifi.WifiFeaturesUtils;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.IWifiP2pManager;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pGroupList;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pProvDiscEvent;
import android.net.wifi.p2p.WifiP2pWfdInfo;
import android.net.wifi.p2p.nsd.WifiP2pServiceInfo;
import android.net.wifi.p2p.nsd.WifiP2pServiceRequest;
import android.net.wifi.p2p.nsd.WifiP2pServiceResponse;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.server.wifi.FrameworkFacade;
import com.android.server.wifi.HalDeviceManager;
import com.android.server.wifi.WifiInjector;
import com.android.server.wifi.WifiLog;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.util.WifiAsyncChannel;
import com.android.server.wifi.util.WifiHandler;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pServiceImpl extends IWifiP2pManager.Stub {
    private static final String ANONYMIZED_DEVICE_ADDRESS = "02:00:00:00:00:00";
    private static final int BASE = 143360;
    public static final int BLOCK_DISCOVERY = 143375;
    public static final int DISABLED = 0;
    public static final int DISABLE_P2P = 143377;
    public static final int DISABLE_P2P_TIMED_OUT = 143366;
    private static final int DISABLE_P2P_WAIT_TIME_MS = 5000;
    public static final int DISCONNECT_WIFI_REQUEST = 143372;
    public static final int DISCONNECT_WIFI_RESPONSE = 143373;
    private static final int DISCOVER_TIMEOUT_S = 120;
    private static final int DROP_WIFI_USER_ACCEPT = 143364;
    private static final int DROP_WIFI_USER_REJECT = 143365;
    private static final String EMPTY_DEVICE_ADDRESS = "00:00:00:00:00:00";
    public static final int ENABLED = 1;
    public static final int ENABLE_P2P = 143376;
    public static final int GET_P2P_BAND = 143401;
    public static final int GROUP_CREATING_TIMED_OUT = 143361;
    private static final int GROUP_CREATING_WAIT_TIME_MS = 120000;
    private static final int GROUP_IDLE_TIME_S = 10;
    private static final int IPC_DHCP_RESULTS = 143392;
    private static final int IPC_POST_DHCP_ACTION = 143391;
    private static final int IPC_PRE_DHCP_ACTION = 143390;
    private static final int IPC_PROVISIONING_FAILURE = 143394;
    private static final int IPC_PROVISIONING_SUCCESS = 143393;
    private static final String NETWORKTYPE = "WIFI_P2P";
    public static final int P2P_CONNECTION_CHANGED = 143371;
    private static final int PEER_CONNECTION_USER_ACCEPT = 143362;
    public static final int PEER_CONNECTION_USER_CONFIRM = 143367;
    private static final int PEER_CONNECTION_USER_REJECT = 143363;
    public static final int REMOVE_CLIENT_INFO = 143378;
    private static final String SERVER_ADDRESS = "192.168.49.1";
    public static final int SET_MIRACAST_MODE = 143374;
    public static final int SET_P2P_BAND = 143400;
    private static final String TAG = "WifiP2pService";
    private boolean mAutonomousGroup;
    private ClientHandler mClientHandler;
    private Context mContext;
    private DhcpResults mDhcpResults;
    private boolean mDiscoveryBlocked;
    private boolean mDiscoveryStarted;
    private FrameworkFacade mFrameworkFacade;
    private IIpClient mIpClient;
    private boolean mJoinExistingGroup;
    private LocationManager mLocationManager;
    INetworkManagementService mNwService;
    private P2pStateMachine mP2pStateMachine;
    private final boolean mP2pSupported;
    private String mServiceDiscReqId;
    private AsyncChannel mWifiChannel;
    private WifiInjector mWifiInjector;
    private WifiP2pMetrics mWifiP2pMetrics;
    private WifiPermissionsUtil mWifiPermissionsUtil;
    private static final Boolean JOIN_GROUP = true;
    private static final Boolean FORM_GROUP = false;
    private static final Boolean RELOAD = true;
    private static final Boolean NO_RELOAD = false;
    private static final String[] RECEIVER_PERMISSIONS_FOR_BROADCAST = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE"};
    private static int sGroupCreatingTimeoutIndex = 0;
    private static int sDisableP2pTimeoutIndex = 0;
    public static boolean mP2pConnectingOrConnected = false;
    private boolean mVerboseLoggingEnabled = false;
    private int mIpClientStartIndex = 0;
    private AsyncChannel mReplyChannel = new WifiAsyncChannel(TAG);
    private WifiP2pDevice mThisDevice = new WifiP2pDevice();
    private boolean mDiscoveryPostponed = false;
    private boolean mTemporarilyDisconnectedWifi = false;
    private byte mServiceTransactionId = 0;
    private HashMap<Messenger, ClientInfo> mClientInfoList = new HashMap<>();
    private Map<IBinder, Messenger> mClientChannelList = new HashMap();
    boolean needDiscovery = false;
    private Object mLock = new Object();
    private final Map<IBinder, DeathHandlerData> mDeathDataByBinder = new HashMap();
    private NetworkInfo mNetworkInfo = new NetworkInfo(13, 0, NETWORKTYPE, "");

    static /* synthetic */ byte access$10504(WifiP2pServiceImpl x0) {
        byte b = (byte) (x0.mServiceTransactionId + 1);
        x0.mServiceTransactionId = b;
        return b;
    }

    static /* synthetic */ int access$4104() {
        int i = sDisableP2pTimeoutIndex + 1;
        sDisableP2pTimeoutIndex = i;
        return i;
    }

    static /* synthetic */ int access$7804() {
        int i = sGroupCreatingTimeoutIndex + 1;
        sGroupCreatingTimeoutIndex = i;
        return i;
    }

    public enum P2pStatus {
        SUCCESS,
        INFORMATION_IS_CURRENTLY_UNAVAILABLE,
        INCOMPATIBLE_PARAMETERS,
        LIMIT_REACHED,
        INVALID_PARAMETER,
        UNABLE_TO_ACCOMMODATE_REQUEST,
        PREVIOUS_PROTOCOL_ERROR,
        NO_COMMON_CHANNEL,
        UNKNOWN_P2P_GROUP,
        BOTH_GO_INTENT_15,
        INCOMPATIBLE_PROVISIONING_METHOD,
        REJECTED_BY_USER,
        UNKNOWN;

        public static P2pStatus valueOf(int error) {
            switch (error) {
                case 0:
                    return SUCCESS;
                case 1:
                    return INFORMATION_IS_CURRENTLY_UNAVAILABLE;
                case 2:
                    return INCOMPATIBLE_PARAMETERS;
                case 3:
                    return LIMIT_REACHED;
                case 4:
                    return INVALID_PARAMETER;
                case 5:
                    return UNABLE_TO_ACCOMMODATE_REQUEST;
                case 6:
                    return PREVIOUS_PROTOCOL_ERROR;
                case 7:
                    return NO_COMMON_CHANNEL;
                case 8:
                    return UNKNOWN_P2P_GROUP;
                case 9:
                    return BOTH_GO_INTENT_15;
                case 10:
                    return INCOMPATIBLE_PROVISIONING_METHOD;
                case 11:
                    return REJECTED_BY_USER;
                default:
                    return UNKNOWN;
            }
        }
    }

    private class ClientHandler extends WifiHandler {
        ClientHandler(String tag, Looper looper) {
            super(tag, looper);
        }

        @Override // com.android.server.wifi.util.WifiHandler, android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 139265:
                case 139268:
                case 139271:
                case 139274:
                case 139277:
                case 139280:
                case 139283:
                case 139285:
                case 139287:
                case 139292:
                case 139295:
                case 139298:
                case 139301:
                case 139304:
                case 139307:
                case 139310:
                case 139315:
                case 139318:
                case 139321:
                case 139323:
                case 139326:
                case 139329:
                case 139332:
                case 139335:
                case 139346:
                case 139349:
                case 139351:
                case 139354:
                case 139356:
                case 139358:
                case 139360:
                case 139361:
                    WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(Message.obtain(msg));
                    break;
                default:
                    Slog.d(WifiP2pServiceImpl.TAG, "ClientHandler.handleMessage ignoring msg=" + msg);
                    break;
            }
        }
    }

    @VisibleForTesting
    void setWifiHandlerLogForTest(WifiLog log) {
        this.mClientHandler.setWifiLog(log);
    }

    @VisibleForTesting
    void setWifiLogForReplyChannel(WifiLog log) {
        ((WifiAsyncChannel) this.mReplyChannel).setWifiLog(log);
    }

    private class DeathHandlerData {
        IBinder.DeathRecipient mDeathRecipient;
        Messenger mMessenger;

        DeathHandlerData(IBinder.DeathRecipient dr, Messenger m) {
            this.mDeathRecipient = dr;
            this.mMessenger = m;
        }

        public String toString() {
            return "deathRecipient=" + this.mDeathRecipient + ", messenger=" + this.mMessenger;
        }
    }

    public WifiP2pServiceImpl(Context context, WifiInjector wifiInjector) {
        this.mContext = context;
        this.mWifiInjector = wifiInjector;
        this.mWifiPermissionsUtil = this.mWifiInjector.getWifiPermissionsUtil();
        this.mFrameworkFacade = this.mWifiInjector.getFrameworkFacade();
        this.mWifiP2pMetrics = this.mWifiInjector.getWifiP2pMetrics();
        this.mP2pSupported = this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.direct");
        this.mThisDevice.primaryDeviceType = this.mContext.getResources().getString(R.string.biometric_error_canceled);
        HandlerThread wifiP2pThread = this.mWifiInjector.getWifiP2pServiceHandlerThread();
        this.mClientHandler = new ClientHandler(TAG, wifiP2pThread.getLooper());
        this.mP2pStateMachine = new P2pStateMachine(TAG, wifiP2pThread.getLooper(), this.mP2pSupported);
        this.mP2pStateMachine.start();
    }

    public void connectivityServiceReady() {
        IBinder b = ServiceManager.getService("network_management");
        this.mNwService = INetworkManagementService.Stub.asInterface(b);
    }

    private void enforceAccessPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE", TAG);
    }

    private void enforceChangePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CHANGE_WIFI_STATE", TAG);
    }

    private void enforceConnectivityInternalPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CONNECTIVITY_INTERNAL", TAG);
    }

    private int checkConnectivityInternalPermission() {
        return this.mContext.checkCallingOrSelfPermission("android.permission.CONNECTIVITY_INTERNAL");
    }

    private int checkLocationHardwarePermission() {
        return this.mContext.checkCallingOrSelfPermission("android.permission.LOCATION_HARDWARE");
    }

    private void enforceConnectivityInternalOrLocationHardwarePermission() {
        if (checkConnectivityInternalPermission() != 0 && checkLocationHardwarePermission() != 0) {
            enforceConnectivityInternalPermission();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopIpClient() {
        this.mIpClientStartIndex++;
        IIpClient iIpClient = this.mIpClient;
        if (iIpClient != null) {
            try {
                iIpClient.shutdown();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            }
            this.mIpClient = null;
        }
        this.mDhcpResults = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIpClient(String ifname, Handler smHandler) {
        stopIpClient();
        this.mIpClientStartIndex++;
        IpClientUtil.makeIpClient(this.mContext, ifname, new IpClientCallbacksImpl(this.mIpClientStartIndex, smHandler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    class IpClientCallbacksImpl extends IpClientCallbacks {
        private final Handler mHandler;
        private final int mStartIndex;

        private IpClientCallbacksImpl(int startIndex, Handler handler) {
            this.mStartIndex = startIndex;
            this.mHandler = handler;
        }

        public void onIpClientCreated(final IIpClient ipClient) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.p2p.-$$Lambda$WifiP2pServiceImpl$IpClientCallbacksImpl$nEQLAd0qG_-Owp3P744olhYEPtk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onIpClientCreated$0$WifiP2pServiceImpl$IpClientCallbacksImpl(ipClient);
                }
            });
        }

        public /* synthetic */ void lambda$onIpClientCreated$0$WifiP2pServiceImpl$IpClientCallbacksImpl(IIpClient ipClient) {
            if (WifiP2pServiceImpl.this.mIpClientStartIndex == this.mStartIndex) {
                WifiP2pServiceImpl.this.mIpClient = ipClient;
                ProvisioningConfiguration config = new ProvisioningConfiguration.Builder().withoutIpReachabilityMonitor().withPreDhcpAction(30000).withProvisioningTimeoutMs(36000).build();
                try {
                    WifiP2pServiceImpl.this.mIpClient.startProvisioning(config.toStableParcelable());
                } catch (RemoteException e) {
                    e.rethrowFromSystemServer();
                }
            }
        }

        public void onPreDhcpAction() {
            WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(WifiP2pServiceImpl.IPC_PRE_DHCP_ACTION);
        }

        public void onPostDhcpAction() {
            WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(WifiP2pServiceImpl.IPC_POST_DHCP_ACTION);
        }

        public void onNewDhcpResults(DhcpResults dhcpResults) {
            WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(WifiP2pServiceImpl.IPC_DHCP_RESULTS, dhcpResults);
        }

        public void onProvisioningSuccess(LinkProperties newLp) {
            WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(WifiP2pServiceImpl.IPC_PROVISIONING_SUCCESS);
        }

        public void onProvisioningFailure(LinkProperties newLp) {
            WifiP2pServiceImpl.this.mP2pStateMachine.sendMessage(WifiP2pServiceImpl.IPC_PROVISIONING_FAILURE);
        }
    }

    public Messenger getMessenger(final IBinder binder) {
        Messenger messenger;
        enforceAccessPermission();
        enforceChangePermission();
        synchronized (this.mLock) {
            messenger = new Messenger(this.mClientHandler);
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "getMessenger: uid=" + getCallingUid() + ", binder=" + binder + ", messenger=" + messenger);
            }
            IBinder.DeathRecipient dr = new IBinder.DeathRecipient() { // from class: com.android.server.wifi.p2p.-$$Lambda$WifiP2pServiceImpl$LwceCrSRIRY_Lp9TjCEZZ62j-ls
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    this.f$0.lambda$getMessenger$0$WifiP2pServiceImpl(binder);
                }
            };
            try {
                binder.linkToDeath(dr, 0);
                this.mDeathDataByBinder.put(binder, new DeathHandlerData(dr, messenger));
            } catch (RemoteException e) {
                Log.e(TAG, "Error on linkToDeath: e=" + e);
            }
            this.mP2pStateMachine.sendMessage(ENABLE_P2P);
        }
        return messenger;
    }

    public /* synthetic */ void lambda$getMessenger$0$WifiP2pServiceImpl(IBinder binder) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, "binderDied: binder=" + binder);
        }
        close(binder);
    }

    public Messenger getP2pStateMachineMessenger() {
        enforceConnectivityInternalOrLocationHardwarePermission();
        enforceAccessPermission();
        enforceChangePermission();
        return new Messenger(this.mP2pStateMachine.getHandler());
    }

    public void close(IBinder binder) {
        enforceAccessPermission();
        enforceChangePermission();
        synchronized (this.mLock) {
            DeathHandlerData dhd = this.mDeathDataByBinder.get(binder);
            if (dhd == null) {
                Log.w(TAG, "close(): no death recipient for binder");
                return;
            }
            this.mP2pStateMachine.sendMessage(REMOVE_CLIENT_INFO, 0, 0, binder);
            binder.unlinkToDeath(dhd.mDeathRecipient, 0);
            this.mDeathDataByBinder.remove(binder);
            if (dhd.mMessenger != null && this.mDeathDataByBinder.isEmpty()) {
                try {
                    dhd.mMessenger.send(this.mClientHandler.obtainMessage(139268));
                } catch (RemoteException e) {
                    Log.e(TAG, "close: Failed sending clean-up commands: e=" + e);
                }
            }
        }
    }

    public void setMiracastMode(int mode) {
        enforceConnectivityInternalPermission();
        checkConfigureWifiDisplayPermission();
        this.mP2pStateMachine.sendMessage(SET_MIRACAST_MODE, mode);
    }

    public void checkConfigureWifiDisplayPermission() {
        if (!getWfdPermission(Binder.getCallingUid())) {
            throw new SecurityException("Wifi Display Permission denied for uid = " + Binder.getCallingUid());
        }
    }

    public void setP2pBand(int band) {
        enforceConnectivityInternalPermission();
        this.mP2pStateMachine.sendMessage(SET_P2P_BAND, band);
    }

    public int getP2pBand() {
        enforceConnectivityInternalPermission();
        if (this.mWifiInjector == null) {
            this.mWifiInjector = WifiInjector.getInstance();
        }
        int p2pBand = this.mWifiInjector.getWifiP2pNative().getP2pBand();
        return p2pBand;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getWfdPermission(int uid) {
        WifiPermissionsWrapper wifiPermissionsWrapper = this.mWifiInjector.getWifiPermissionsWrapper();
        return wifiPermissionsWrapper.getUidPermission("android.permission.CONFIGURE_WIFI_DISPLAY", uid) != -1;
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump WifiP2pService from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        this.mP2pStateMachine.dump(fd, pw, args);
        pw.println("mAutonomousGroup " + this.mAutonomousGroup);
        pw.println("mJoinExistingGroup " + this.mJoinExistingGroup);
        pw.println("mDiscoveryStarted " + this.mDiscoveryStarted);
        pw.println("mNetworkInfo " + this.mNetworkInfo);
        pw.println("mTemporarilyDisconnectedWifi " + this.mTemporarilyDisconnectedWifi);
        pw.println("mServiceDiscReqId " + this.mServiceDiscReqId);
        pw.println("mDeathDataByBinder " + this.mDeathDataByBinder);
        pw.println("mClientInfoList " + this.mClientInfoList.size());
        pw.println();
        IIpClient ipClient = this.mIpClient;
        if (ipClient != null) {
            pw.println("mIpClient:");
            IpClientUtil.dumpIpClient(ipClient, fd, pw, args);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class P2pStateMachine extends StateMachine {
        private DefaultState mDefaultState;
        private FrequencyConflictState mFrequencyConflictState;
        private WifiP2pGroup mGroup;
        private GroupCreatedState mGroupCreatedState;
        private GroupCreatingState mGroupCreatingState;
        private GroupNegotiationState mGroupNegotiationState;
        private final WifiP2pGroupList mGroups;
        private InactiveState mInactiveState;
        private String mInterfaceName;
        private boolean mIsHalInterfaceAvailable;
        private boolean mIsWifiEnabled;
        private OngoingGroupRemovalState mOngoingGroupRemovalState;
        private P2pDisabledState mP2pDisabledState;
        private P2pDisablingState mP2pDisablingState;
        private P2pEnabledState mP2pEnabledState;
        private P2pNotSupportedState mP2pNotSupportedState;
        private final WifiP2pDeviceList mPeers;
        private final WifiP2pDeviceList mPeersLostDuringConnection;
        private ProvisionDiscoveryState mProvisionDiscoveryState;
        private WifiP2pConfig mSavedPeerConfig;
        private UserAuthorizingInviteRequestState mUserAuthorizingInviteRequestState;
        private UserAuthorizingJoinState mUserAuthorizingJoinState;
        private UserAuthorizingNegotiationRequestState mUserAuthorizingNegotiationRequestState;
        private WifiP2pMonitor mWifiMonitor;
        private WifiP2pNative mWifiNative;
        private final WifiP2pInfo mWifiP2pInfo;

        P2pStateMachine(String name, Looper looper, boolean p2pSupported) {
            super(name, looper);
            this.mDefaultState = new DefaultState();
            this.mP2pNotSupportedState = new P2pNotSupportedState();
            this.mP2pDisablingState = new P2pDisablingState();
            this.mP2pDisabledState = new P2pDisabledState();
            this.mP2pEnabledState = new P2pEnabledState();
            this.mInactiveState = new InactiveState();
            this.mGroupCreatingState = new GroupCreatingState();
            this.mUserAuthorizingInviteRequestState = new UserAuthorizingInviteRequestState();
            this.mUserAuthorizingNegotiationRequestState = new UserAuthorizingNegotiationRequestState();
            this.mProvisionDiscoveryState = new ProvisionDiscoveryState();
            this.mGroupNegotiationState = new GroupNegotiationState();
            this.mFrequencyConflictState = new FrequencyConflictState();
            this.mGroupCreatedState = new GroupCreatedState();
            this.mUserAuthorizingJoinState = new UserAuthorizingJoinState();
            this.mOngoingGroupRemovalState = new OngoingGroupRemovalState();
            this.mWifiNative = WifiP2pServiceImpl.this.mWifiInjector.getWifiP2pNative();
            this.mWifiMonitor = WifiP2pServiceImpl.this.mWifiInjector.getWifiP2pMonitor();
            this.mPeers = new WifiP2pDeviceList();
            this.mPeersLostDuringConnection = new WifiP2pDeviceList();
            this.mGroups = new WifiP2pGroupList((WifiP2pGroupList) null, new WifiP2pGroupList.GroupDeleteListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.1
                public void onDeleteGroup(int netId) {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd("called onDeleteGroup() netId=" + netId);
                    }
                    P2pStateMachine.this.mWifiNative.removeP2pNetwork(netId);
                    P2pStateMachine.this.mWifiNative.saveConfig();
                    P2pStateMachine.this.sendP2pPersistentGroupsChangedBroadcast();
                }
            });
            this.mWifiP2pInfo = new WifiP2pInfo();
            this.mIsHalInterfaceAvailable = false;
            this.mIsWifiEnabled = false;
            this.mSavedPeerConfig = new WifiP2pConfig();
            addState(this.mDefaultState);
            addState(this.mP2pNotSupportedState, this.mDefaultState);
            addState(this.mP2pDisablingState, this.mDefaultState);
            addState(this.mP2pDisabledState, this.mDefaultState);
            addState(this.mP2pEnabledState, this.mDefaultState);
            addState(this.mInactiveState, this.mP2pEnabledState);
            addState(this.mGroupCreatingState, this.mP2pEnabledState);
            addState(this.mUserAuthorizingInviteRequestState, this.mGroupCreatingState);
            addState(this.mUserAuthorizingNegotiationRequestState, this.mGroupCreatingState);
            addState(this.mProvisionDiscoveryState, this.mGroupCreatingState);
            addState(this.mGroupNegotiationState, this.mGroupCreatingState);
            addState(this.mFrequencyConflictState, this.mGroupCreatingState);
            addState(this.mGroupCreatedState, this.mP2pEnabledState);
            addState(this.mUserAuthorizingJoinState, this.mGroupCreatedState);
            addState(this.mOngoingGroupRemovalState, this.mGroupCreatedState);
            if (p2pSupported) {
                setInitialState(this.mP2pDisabledState);
            } else {
                setInitialState(this.mP2pNotSupportedState);
            }
            setLogRecSize(50);
            setLogOnlyTransitions(true);
            if (p2pSupported) {
                WifiP2pServiceImpl.this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.2
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        int wifistate = intent.getIntExtra("wifi_state", 4);
                        if (wifistate == 3) {
                            P2pStateMachine.this.mIsWifiEnabled = true;
                            P2pStateMachine.this.checkAndReEnableP2p();
                        } else {
                            P2pStateMachine.this.mIsWifiEnabled = false;
                            P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.DISABLE_P2P);
                        }
                        P2pStateMachine.this.checkAndSendP2pStateChangedBroadcast();
                    }
                }, new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED"));
                WifiP2pServiceImpl.this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.3
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        if (!WifiP2pServiceImpl.this.mWifiPermissionsUtil.isLocationModeEnabled()) {
                            P2pStateMachine.this.sendMessage(139268);
                        }
                    }
                }, new IntentFilter("android.location.MODE_CHANGED"));
                this.mWifiNative.registerInterfaceAvailableListener(new HalDeviceManager.InterfaceAvailableForRequestListener() { // from class: com.android.server.wifi.p2p.-$$Lambda$WifiP2pServiceImpl$P2pStateMachine$zMDJmVHxNOQccRUsy4cDbijFDbc
                    @Override // com.android.server.wifi.HalDeviceManager.InterfaceAvailableForRequestListener
                    public final void onAvailabilityChanged(boolean z) {
                        this.f$0.lambda$new$0$WifiP2pServiceImpl$P2pStateMachine(z);
                    }
                }, getHandler());
                WifiP2pServiceImpl.this.mFrameworkFacade.registerContentObserver(WifiP2pServiceImpl.this.mContext, Settings.Global.getUriFor("wifi_verbose_logging_enabled"), true, new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.4
                    @Override // android.database.ContentObserver
                    public void onChange(boolean selfChange) {
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.enableVerboseLogging(WifiP2pServiceImpl.this.mFrameworkFacade.getIntegerSetting(WifiP2pServiceImpl.this.mContext, "wifi_verbose_logging_enabled", 0));
                    }
                });
            }
        }

        public /* synthetic */ void lambda$new$0$WifiP2pServiceImpl$P2pStateMachine(boolean isAvailable) {
            this.mIsHalInterfaceAvailable = isAvailable;
            if (isAvailable) {
                checkAndReEnableP2p();
            }
            checkAndSendP2pStateChangedBroadcast();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void enableVerboseLogging(int verbose) {
            WifiP2pServiceImpl.this.mVerboseLoggingEnabled = verbose > 0;
            this.mWifiNative.enableVerboseLogging(verbose);
            this.mWifiMonitor.enableVerboseLogging(verbose);
        }

        public void registerForWifiMonitorEvents() {
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.AP_STA_CONNECTED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.AP_STA_DISCONNECTED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_DEVICE_FOUND_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_DEVICE_LOST_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_FIND_STOPPED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GROUP_REMOVED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_GROUP_STARTED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_INVITATION_RECEIVED_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_INVITATION_RESULT_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_PROV_DISC_FAILURE_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_PROV_DISC_PBC_REQ_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_PROV_DISC_PBC_RSP_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, WifiP2pMonitor.P2P_SERV_DISC_RESP_EVENT, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, 147457, getHandler());
            this.mWifiMonitor.registerHandler(this.mInterfaceName, 147458, getHandler());
            this.mWifiMonitor.startMonitoring(this.mInterfaceName);
        }

        class DefaultState extends State {
            DefaultState() {
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case 69632:
                        if (message.arg1 == 0) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd("Full connection with ClientModeImpl established");
                            }
                            WifiP2pServiceImpl.this.mWifiChannel = (AsyncChannel) message.obj;
                        } else {
                            P2pStateMachine.this.loge("Full connection failure, error = " + message.arg1);
                            WifiP2pServiceImpl.this.mWifiChannel = null;
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mP2pDisabledState);
                        }
                        return true;
                    case 69633:
                        AsyncChannel ac = new WifiAsyncChannel(WifiP2pServiceImpl.TAG);
                        ac.connect(WifiP2pServiceImpl.this.mContext, P2pStateMachine.this.getHandler(), message.replyTo);
                        return true;
                    case 69636:
                        if (message.arg1 == 2) {
                            P2pStateMachine.this.loge("Send failed, client connection lost");
                        } else {
                            P2pStateMachine.this.loge("Client connection lost with reason: " + message.arg1);
                        }
                        WifiP2pServiceImpl.this.mWifiChannel = null;
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mP2pDisabledState);
                        return true;
                    case 139265:
                        P2pStateMachine.this.replyToMessage(message, 139266, 2);
                        return true;
                    case 139268:
                        P2pStateMachine.this.replyToMessage(message, 139269, 2);
                        return true;
                    case 139271:
                        P2pStateMachine.this.replyToMessage(message, 139272, 2);
                        return true;
                    case 139274:
                        P2pStateMachine.this.replyToMessage(message, 139275, 2);
                        return true;
                    case 139277:
                        P2pStateMachine.this.replyToMessage(message, 139278, 2);
                        return true;
                    case 139280:
                        P2pStateMachine.this.replyToMessage(message, 139281, 2);
                        return true;
                    case 139283:
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.replyToMessage(message, 139284, p2pStateMachine3.getPeers(p2pStateMachine3.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid));
                        return true;
                    case 139285:
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.replyToMessage(message, 139286, new WifiP2pInfo(p2pStateMachine4.mWifiP2pInfo));
                        return true;
                    case 139287:
                        if (!WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            P2pStateMachine.this.replyToMessage(message, 139288, (Object) null);
                        } else {
                            P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                            p2pStateMachine5.replyToMessage(message, 139288, p2pStateMachine5.maybeEraseOwnDeviceAddress(p2pStateMachine5.mGroup, message.sendingUid));
                        }
                        return true;
                    case 139292:
                        P2pStateMachine.this.replyToMessage(message, 139293, 2);
                        return true;
                    case 139295:
                        P2pStateMachine.this.replyToMessage(message, 139296, 2);
                        return true;
                    case 139298:
                        P2pStateMachine.this.replyToMessage(message, 139299, 2);
                        return true;
                    case 139301:
                        P2pStateMachine.this.replyToMessage(message, 139302, 2);
                        return true;
                    case 139304:
                        P2pStateMachine.this.replyToMessage(message, 139305, 2);
                        return true;
                    case 139307:
                        P2pStateMachine.this.replyToMessage(message, 139308, 2);
                        return true;
                    case 139310:
                        P2pStateMachine.this.replyToMessage(message, 139311, 2);
                        return true;
                    case 139315:
                        P2pStateMachine.this.replyToMessage(message, 139316, 2);
                        return true;
                    case 139318:
                        P2pStateMachine.this.replyToMessage(message, 139319, 2);
                        return true;
                    case 139321:
                        P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                        p2pStateMachine6.replyToMessage(message, 139322, new WifiP2pGroupList(p2pStateMachine6.maybeEraseOwnDeviceAddress(p2pStateMachine6.mGroups, message.sendingUid), (WifiP2pGroupList.GroupDeleteListener) null));
                        return true;
                    case 139323:
                        if (!WifiP2pServiceImpl.this.getWfdPermission(message.sendingUid)) {
                            P2pStateMachine.this.replyToMessage(message, 139324, 0);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139324, 2);
                        }
                        return true;
                    case 139326:
                        P2pStateMachine.this.replyToMessage(message, 139327, 2);
                        return true;
                    case 139329:
                    case 139332:
                    case 139335:
                    case WifiP2pServiceImpl.GROUP_CREATING_TIMED_OUT /* 143361 */:
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT /* 143363 */:
                    case WifiP2pServiceImpl.DROP_WIFI_USER_ACCEPT /* 143364 */:
                    case WifiP2pServiceImpl.DROP_WIFI_USER_REJECT /* 143365 */:
                    case WifiP2pServiceImpl.DISABLE_P2P_TIMED_OUT /* 143366 */:
                    case WifiP2pServiceImpl.DISCONNECT_WIFI_RESPONSE /* 143373 */:
                    case WifiP2pServiceImpl.SET_MIRACAST_MODE /* 143374 */:
                    case WifiP2pServiceImpl.ENABLE_P2P /* 143376 */:
                    case WifiP2pServiceImpl.DISABLE_P2P /* 143377 */:
                    case WifiP2pServiceImpl.IPC_PRE_DHCP_ACTION /* 143390 */:
                    case WifiP2pServiceImpl.IPC_POST_DHCP_ACTION /* 143391 */:
                    case WifiP2pServiceImpl.IPC_DHCP_RESULTS /* 143392 */:
                    case WifiP2pServiceImpl.IPC_PROVISIONING_SUCCESS /* 143393 */:
                    case WifiP2pServiceImpl.IPC_PROVISIONING_FAILURE /* 143394 */:
                    case 147457:
                    case 147458:
                    case WifiP2pMonitor.P2P_DEVICE_FOUND_EVENT /* 147477 */:
                    case WifiP2pMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                    case WifiP2pMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                    case WifiP2pMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                    case WifiP2pMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                    case WifiP2pMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                    case WifiP2pMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_FAILURE_EVENT /* 147495 */:
                        return true;
                    case 139339:
                    case 139340:
                        P2pStateMachine.this.replyToMessage(message, 139341, (Object) null);
                        return true;
                    case 139342:
                    case 139343:
                        P2pStateMachine.this.replyToMessage(message, 139345, 2);
                        return true;
                    case 139346:
                        if (P2pStateMachine.this.factoryReset(message.sendingUid)) {
                            P2pStateMachine.this.replyToMessage(message, 139348);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139347, 0);
                        }
                        return true;
                    case 139349:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkStackPermission(message.sendingUid)) {
                            P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                            p2pStateMachine7.replyToMessage(message, 139350, p2pStateMachine7.mSavedPeerConfig);
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_STACK permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139350, (Object) null);
                        }
                        return true;
                    case 139351:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkStackPermission(message.sendingUid)) {
                            WifiP2pConfig peerConfig = (WifiP2pConfig) message.obj;
                            if (P2pStateMachine.this.isConfigInvalid(peerConfig)) {
                                P2pStateMachine.this.loge("Dropping set mSavedPeerConfig requeset" + peerConfig);
                                P2pStateMachine.this.replyToMessage(message, 139352);
                            } else {
                                P2pStateMachine.this.logd("setSavedPeerConfig to " + peerConfig);
                                P2pStateMachine.this.mSavedPeerConfig = peerConfig;
                                P2pStateMachine.this.replyToMessage(message, 139353);
                            }
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_STACK permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139352);
                        }
                        return true;
                    case 139354:
                        P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                        p2pStateMachine8.replyToMessage(message, 139355, (p2pStateMachine8.mIsWifiEnabled && P2pStateMachine.this.isHalInterfaceAvailable()) ? 2 : 1);
                        return true;
                    case 139356:
                        P2pStateMachine p2pStateMachine9 = P2pStateMachine.this;
                        p2pStateMachine9.replyToMessage(message, 139357, WifiP2pServiceImpl.this.mDiscoveryStarted ? 2 : 1);
                        return true;
                    case 139358:
                        P2pStateMachine p2pStateMachine10 = P2pStateMachine.this;
                        p2pStateMachine10.replyToMessage(message, 139359, WifiP2pServiceImpl.this.mNetworkInfo);
                        return true;
                    case 139360:
                        if (message.obj instanceof Bundle) {
                            Bundle bundle = (Bundle) message.obj;
                            String pkgName = bundle.getString("android.net.wifi.p2p.CALLING_PACKAGE");
                            IBinder binder = bundle.getBinder("android.net.wifi.p2p.CALLING_BINDER");
                            try {
                                WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkPackage(message.sendingUid, pkgName);
                                if (binder != null && message.replyTo != null) {
                                    WifiP2pServiceImpl.this.mClientChannelList.put(binder, message.replyTo);
                                    ClientInfo clientInfo = P2pStateMachine.this.getClientInfo(message.replyTo, true);
                                    clientInfo.mPackageName = pkgName;
                                }
                            } catch (SecurityException se) {
                                P2pStateMachine.this.loge("Unable to update calling package, " + se);
                            }
                        }
                        return true;
                    case 139361:
                        if (!WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            P2pStateMachine.this.replyToMessage(message, 139362, (Object) null);
                        } else {
                            P2pStateMachine p2pStateMachine11 = P2pStateMachine.this;
                            p2pStateMachine11.replyToMessage(message, 139362, p2pStateMachine11.maybeEraseOwnDeviceAddress(WifiP2pServiceImpl.this.mThisDevice, message.sendingUid));
                        }
                        return true;
                    case WifiP2pServiceImpl.BLOCK_DISCOVERY /* 143375 */:
                        WifiP2pServiceImpl.this.mDiscoveryBlocked = message.arg1 == 1;
                        WifiP2pServiceImpl.this.mDiscoveryPostponed = false;
                        if (WifiP2pServiceImpl.this.mDiscoveryBlocked) {
                            if (message.obj == null) {
                                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                            } else {
                                StateMachine m = (StateMachine) message.obj;
                                try {
                                    m.sendMessage(message.arg2);
                                } catch (Exception e) {
                                    P2pStateMachine.this.loge("unable to send BLOCK_DISCOVERY response: " + e);
                                }
                            }
                            break;
                        }
                        return true;
                    case WifiP2pServiceImpl.SET_P2P_BAND /* 143400 */:
                        P2pStateMachine.this.mWifiNative.setP2pBand(message.arg1);
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        if (message.obj != null) {
                            P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                            P2pStateMachine.this.loge("Unexpected group creation, remove " + P2pStateMachine.this.mGroup);
                            P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                        } else {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal arguments");
                        }
                        return true;
                    default:
                        P2pStateMachine.this.loge("Unhandled message " + message);
                        return false;
                }
            }
        }

        class P2pNotSupportedState extends State {
            P2pNotSupportedState() {
            }

            public boolean processMessage(Message message) {
                switch (message.what) {
                    case 139265:
                        P2pStateMachine.this.replyToMessage(message, 139266, 1);
                        return true;
                    case 139268:
                        P2pStateMachine.this.replyToMessage(message, 139269, 1);
                        return true;
                    case 139271:
                        P2pStateMachine.this.replyToMessage(message, 139272, 1);
                        return true;
                    case 139274:
                        P2pStateMachine.this.replyToMessage(message, 139275, 1);
                        return true;
                    case 139277:
                        P2pStateMachine.this.replyToMessage(message, 139278, 1);
                        return true;
                    case 139280:
                        P2pStateMachine.this.replyToMessage(message, 139281, 1);
                        return true;
                    case 139292:
                        P2pStateMachine.this.replyToMessage(message, 139293, 1);
                        return true;
                    case 139295:
                        P2pStateMachine.this.replyToMessage(message, 139296, 1);
                        return true;
                    case 139298:
                        P2pStateMachine.this.replyToMessage(message, 139299, 1);
                        return true;
                    case 139301:
                        P2pStateMachine.this.replyToMessage(message, 139302, 1);
                        return true;
                    case 139304:
                        P2pStateMachine.this.replyToMessage(message, 139305, 1);
                        return true;
                    case 139307:
                        P2pStateMachine.this.replyToMessage(message, 139308, 1);
                        return true;
                    case 139310:
                        P2pStateMachine.this.replyToMessage(message, 139311, 1);
                        return true;
                    case 139315:
                        P2pStateMachine.this.replyToMessage(message, 139316, 1);
                        return true;
                    case 139318:
                        P2pStateMachine.this.replyToMessage(message, 139319, 1);
                        return true;
                    case 139323:
                        if (!WifiP2pServiceImpl.this.getWfdPermission(message.sendingUid)) {
                            P2pStateMachine.this.replyToMessage(message, 139324, 0);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139324, 1);
                        }
                        return true;
                    case 139326:
                        P2pStateMachine.this.replyToMessage(message, 139327, 1);
                        return true;
                    case 139329:
                        P2pStateMachine.this.replyToMessage(message, 139330, 1);
                        return true;
                    case 139332:
                        P2pStateMachine.this.replyToMessage(message, 139333, 1);
                        return true;
                    case 139346:
                        P2pStateMachine.this.replyToMessage(message, 139347, 1);
                        return true;
                    default:
                        return false;
                }
            }
        }

        class P2pDisablingState extends State {
            P2pDisablingState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.sendMessageDelayed(p2pStateMachine.obtainMessage(WifiP2pServiceImpl.DISABLE_P2P_TIMED_OUT, WifiP2pServiceImpl.access$4104(), 0), RttServiceImpl.HAL_RANGING_TIMEOUT_MS);
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                int i = message.what;
                if (i == 143366) {
                    if (WifiP2pServiceImpl.sDisableP2pTimeoutIndex == message.arg1) {
                        P2pStateMachine.this.loge("P2p disable timed out");
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mP2pDisabledState);
                        return true;
                    }
                    return true;
                }
                if (i == 147458) {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd("p2p socket connection lost");
                    }
                    P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                    p2pStateMachine2.transitionTo(p2pStateMachine2.mP2pDisabledState);
                    return true;
                }
                switch (i) {
                    case WifiP2pServiceImpl.ENABLE_P2P /* 143376 */:
                    case WifiP2pServiceImpl.DISABLE_P2P /* 143377 */:
                    case WifiP2pServiceImpl.REMOVE_CLIENT_INFO /* 143378 */:
                        P2pStateMachine.this.deferMessage(message);
                        return true;
                    default:
                        return false;
                }
            }
        }

        class P2pDisabledState extends State {
            P2pDisabledState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
            }

            private void setupInterfaceFeatures(String interfaceName) {
                if (!WifiP2pServiceImpl.this.mContext.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayDisabled_allowed)) {
                    P2pStateMachine.this.mWifiNative.setMacRandomization(false);
                } else {
                    Log.i(WifiP2pServiceImpl.TAG, "Supported feature: P2P MAC randomization");
                    P2pStateMachine.this.mWifiNative.setMacRandomization(true);
                }
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                int i = message.what;
                if (i != 143376) {
                    if (i == 143378) {
                        if (!(message.obj instanceof IBinder)) {
                            P2pStateMachine.this.loge("Invalid obj when REMOVE_CLIENT_INFO");
                            return true;
                        }
                        IBinder b = (IBinder) message.obj;
                        Messenger m = (Messenger) WifiP2pServiceImpl.this.mClientChannelList.remove(b);
                        ClientInfo clientInfo = (ClientInfo) WifiP2pServiceImpl.this.mClientInfoList.remove(m);
                        if (clientInfo != null) {
                            P2pStateMachine.this.logd("Remove client - " + clientInfo.mPackageName);
                            return true;
                        }
                        return true;
                    }
                    return false;
                }
                if (!P2pStateMachine.this.mIsWifiEnabled) {
                    Log.e(WifiP2pServiceImpl.TAG, "Ignore P2P enable since wifi is " + P2pStateMachine.this.mIsWifiEnabled);
                    return true;
                }
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.mInterfaceName = p2pStateMachine.mWifiNative.setupInterface(new HalDeviceManager.InterfaceDestroyedListener() { // from class: com.android.server.wifi.p2p.-$$Lambda$WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState$13XANUNRJEt7WjtJr5tKTd2g-PM
                    @Override // com.android.server.wifi.HalDeviceManager.InterfaceDestroyedListener
                    public final void onDestroyed(String str) {
                        this.f$0.lambda$processMessage$0$WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState(str);
                    }
                }, P2pStateMachine.this.getHandler());
                if (P2pStateMachine.this.mInterfaceName != null) {
                    setupInterfaceFeatures(P2pStateMachine.this.mInterfaceName);
                    try {
                        WifiP2pServiceImpl.this.mNwService.setInterfaceUp(P2pStateMachine.this.mInterfaceName);
                    } catch (RemoteException re) {
                        P2pStateMachine.this.loge("Unable to change interface settings: " + re);
                    } catch (IllegalStateException ie) {
                        P2pStateMachine.this.loge("Unable to change interface settings: " + ie);
                    }
                    P2pStateMachine.this.registerForWifiMonitorEvents();
                    P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                    p2pStateMachine2.transitionTo(p2pStateMachine2.mInactiveState);
                    return true;
                }
                Log.e(WifiP2pServiceImpl.TAG, "Failed to setup interface for P2P");
                return true;
            }

            public /* synthetic */ void lambda$processMessage$0$WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState(String ifaceName) {
                P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.DISABLE_P2P);
            }
        }

        class P2pEnabledState extends State {
            P2pEnabledState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                WifiP2pServiceImpl.this.mNetworkInfo.setIsAvailable(true);
                if (P2pStateMachine.this.isPendingFactoryReset()) {
                    P2pStateMachine.this.factoryReset(1000);
                }
                P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                P2pStateMachine.this.initializeP2pSettings();
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case 139265:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, true)) {
                            if (WifiP2pServiceImpl.this.mDiscoveryBlocked) {
                                P2pStateMachine.this.replyToMessage(message, 139266, 2);
                            } else {
                                P2pStateMachine.this.clearSupplicantServiceRequest();
                                if (P2pStateMachine.this.mWifiNative.p2pFind(120)) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.incrementPeerScans();
                                    P2pStateMachine.this.replyToMessage(message, 139267);
                                    P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(true);
                                } else {
                                    P2pStateMachine.this.replyToMessage(message, 139266, 0);
                                }
                            }
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139266, 0);
                        }
                        return true;
                    case 139268:
                        if (P2pStateMachine.this.mWifiNative.p2pStopFind()) {
                            P2pStateMachine.this.replyToMessage(message, 139270);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139269, 0);
                        }
                        return true;
                    case 139292:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " add service");
                            }
                            WifiP2pServiceInfo servInfo = (WifiP2pServiceInfo) message.obj;
                            if (P2pStateMachine.this.addLocalService(message.replyTo, servInfo)) {
                                P2pStateMachine.this.replyToMessage(message, 139294);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139293);
                            }
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139293);
                        }
                        return true;
                    case 139295:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " remove service");
                        }
                        WifiP2pServiceInfo servInfo2 = (WifiP2pServiceInfo) message.obj;
                        P2pStateMachine.this.removeLocalService(message.replyTo, servInfo2);
                        P2pStateMachine.this.replyToMessage(message, 139297);
                        return true;
                    case 139298:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " clear service");
                        }
                        P2pStateMachine.this.clearLocalServices(message.replyTo);
                        P2pStateMachine.this.replyToMessage(message, 139300);
                        return true;
                    case 139301:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " add service request");
                        }
                        if (!P2pStateMachine.this.addServiceRequest(message.replyTo, (WifiP2pServiceRequest) message.obj)) {
                            P2pStateMachine.this.replyToMessage(message, 139302);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139303);
                        }
                        return true;
                    case 139304:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " remove service request");
                        }
                        P2pStateMachine.this.removeServiceRequest(message.replyTo, (WifiP2pServiceRequest) message.obj);
                        P2pStateMachine.this.replyToMessage(message, 139306);
                        return true;
                    case 139307:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " clear service request");
                        }
                        P2pStateMachine.this.clearServiceRequests(message.replyTo);
                        P2pStateMachine.this.replyToMessage(message, 139309);
                        return true;
                    case 139310:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, true)) {
                            if (!WifiP2pServiceImpl.this.mDiscoveryBlocked) {
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd(getName() + " discover services");
                                }
                                if (!P2pStateMachine.this.updateSupplicantServiceRequest()) {
                                    P2pStateMachine.this.replyToMessage(message, 139311, 3);
                                } else if (P2pStateMachine.this.mWifiNative.p2pFind(120)) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.incrementServiceScans();
                                    P2pStateMachine.this.replyToMessage(message, 139312);
                                } else {
                                    P2pStateMachine.this.replyToMessage(message, 139311, 0);
                                }
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139311, 2);
                            }
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139311, 0);
                        }
                        return true;
                    case 139315:
                        WifiP2pDevice d = (WifiP2pDevice) message.obj;
                        if (d != null && P2pStateMachine.this.setAndPersistDeviceName(d.deviceName)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd("set device name " + d.deviceName);
                            }
                            P2pStateMachine.this.replyToMessage(message, 139317);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139316, 0);
                        }
                        return true;
                    case 139318:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " delete persistent group");
                        }
                        P2pStateMachine.this.mGroups.remove(message.arg1);
                        WifiP2pServiceImpl.this.mWifiP2pMetrics.updatePersistentGroup(P2pStateMachine.this.mGroups);
                        P2pStateMachine.this.replyToMessage(message, 139320);
                        return true;
                    case 139323:
                        WifiP2pWfdInfo d2 = (WifiP2pWfdInfo) message.obj;
                        if (WifiP2pServiceImpl.this.getWfdPermission(message.sendingUid) && d2 != null && P2pStateMachine.this.setWfdInfo(d2)) {
                            P2pStateMachine.this.replyToMessage(message, 139325);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139324, 0);
                        }
                        return true;
                    case 139329:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(message.sendingUid)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " start listen mode");
                            }
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                            if (P2pStateMachine.this.mWifiNative.p2pExtListen(true, 500, 500)) {
                                P2pStateMachine.this.replyToMessage(message, 139331);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139330);
                            }
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_SETTING permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139330);
                        }
                        return true;
                    case 139332:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(message.sendingUid)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " stop listen mode");
                            }
                            if (P2pStateMachine.this.mWifiNative.p2pExtListen(false, 0, 0)) {
                                P2pStateMachine.this.replyToMessage(message, 139334);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139333);
                            }
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_SETTING permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139333);
                        }
                        return true;
                    case 139335:
                        Bundle p2pChannels = (Bundle) message.obj;
                        int lc = p2pChannels.getInt("lc", 0);
                        int oc = p2pChannels.getInt("oc", 0);
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " set listen and operating channel");
                        }
                        if (P2pStateMachine.this.mWifiNative.p2pSetChannel(lc, oc)) {
                            P2pStateMachine.this.replyToMessage(message, 139337);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139336);
                        }
                        return true;
                    case 139339:
                        Bundle requestBundle = new Bundle();
                        requestBundle.putString("android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE", P2pStateMachine.this.mWifiNative.getNfcHandoverRequest());
                        P2pStateMachine.this.replyToMessage(message, 139341, requestBundle);
                        return true;
                    case 139340:
                        Bundle selectBundle = new Bundle();
                        selectBundle.putString("android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE", P2pStateMachine.this.mWifiNative.getNfcHandoverSelect());
                        P2pStateMachine.this.replyToMessage(message, 139341, selectBundle);
                        return true;
                    case WifiP2pServiceImpl.SET_MIRACAST_MODE /* 143374 */:
                        P2pStateMachine.this.mWifiNative.setMiracastMode(message.arg1);
                        return true;
                    case WifiP2pServiceImpl.BLOCK_DISCOVERY /* 143375 */:
                        boolean blocked = message.arg1 == 1;
                        if (WifiP2pServiceImpl.this.mDiscoveryBlocked != blocked) {
                            WifiP2pServiceImpl.this.mDiscoveryBlocked = blocked;
                            if (blocked && WifiP2pServiceImpl.this.mDiscoveryStarted) {
                                P2pStateMachine.this.mWifiNative.p2pStopFind();
                                WifiP2pServiceImpl.this.mDiscoveryPostponed = true;
                            }
                            if (!blocked && WifiP2pServiceImpl.this.mDiscoveryPostponed) {
                                WifiP2pServiceImpl.this.mDiscoveryPostponed = false;
                                P2pStateMachine.this.mWifiNative.p2pFind(120);
                            }
                            if (blocked) {
                                if (message.obj == null) {
                                    Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                                } else {
                                    StateMachine m = (StateMachine) message.obj;
                                    try {
                                        m.sendMessage(message.arg2);
                                    } catch (Exception e) {
                                        P2pStateMachine.this.loge("unable to send BLOCK_DISCOVERY response: " + e);
                                    }
                                }
                            }
                            break;
                        }
                        return true;
                    case WifiP2pServiceImpl.ENABLE_P2P /* 143376 */:
                        return true;
                    case WifiP2pServiceImpl.DISABLE_P2P /* 143377 */:
                        if (P2pStateMachine.this.mPeers.clear()) {
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        }
                        if (P2pStateMachine.this.mGroups.clear()) {
                            P2pStateMachine.this.sendP2pPersistentGroupsChangedBroadcast();
                        }
                        P2pStateMachine.this.clearServicesForAllClients();
                        P2pStateMachine.this.mWifiMonitor.stopMonitoring(P2pStateMachine.this.mInterfaceName);
                        P2pStateMachine.this.mWifiNative.teardownInterface();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mP2pDisablingState);
                        return true;
                    case WifiP2pServiceImpl.REMOVE_CLIENT_INFO /* 143378 */:
                        if (message.obj instanceof IBinder) {
                            IBinder b = (IBinder) message.obj;
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.clearClientInfo((Messenger) WifiP2pServiceImpl.this.mClientChannelList.get(b));
                            WifiP2pServiceImpl.this.mClientChannelList.remove(b);
                        }
                        return true;
                    case 147458:
                        P2pStateMachine.this.loge("Unexpected loss of p2p socket connection");
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.transitionTo(p2pStateMachine3.mP2pDisabledState);
                        return true;
                    case WifiP2pMonitor.P2P_DEVICE_FOUND_EVENT /* 147477 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            WifiP2pDevice device = (WifiP2pDevice) message.obj;
                            if (!WifiP2pServiceImpl.this.mThisDevice.deviceAddress.equals(device.deviceAddress)) {
                                P2pStateMachine.this.mPeers.updateSupplicantDetails(device);
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                if (WifiP2pServiceImpl.this.needDiscovery && !WifiP2pServiceImpl.EMPTY_DEVICE_ADDRESS.equals(device.deviceAddress)) {
                                    int status = P2pStateMachine.this.mPeers.get(device.deviceAddress).status;
                                    if (status == 0) {
                                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                                        WifiP2pServiceImpl.this.needDiscovery = false;
                                    }
                                }
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else if (P2pStateMachine.this.mPeers.remove(((WifiP2pDevice) message.obj).deviceAddress) != null) {
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        }
                        return true;
                    case WifiP2pMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                        P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(false);
                        WifiP2pServiceImpl.this.needDiscovery = false;
                        return true;
                    case WifiP2pMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " receive service response");
                        }
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            List<WifiP2pServiceResponse> sdRespList = (List) message.obj;
                            for (WifiP2pServiceResponse resp : sdRespList) {
                                WifiP2pDevice dev = P2pStateMachine.this.mPeers.get(resp.getSrcDevice().deviceAddress);
                                resp.setSrcDevice(dev);
                                P2pStateMachine.this.sendServiceResponse(resp);
                            }
                        }
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
                P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(false);
                WifiP2pServiceImpl.this.mNetworkInfo.setIsAvailable(false);
            }
        }

        class InactiveState extends State {
            InactiveState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine.this.mSavedPeerConfig.invalidate();
                WifiP2pServiceImpl.mP2pConnectingOrConnected = false;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:30:0x0101  */
            /* JADX WARN: Code duplicated, block: B:31:0x0119  */
            /* JADX WARN: Code duplicated, block: B:37:0x0135  */
            /* JADX WARN: Code duplicated, block: B:38:0x0140  */
            /* JADX WARN: Code duplicated, block: B:40:0x0146  */
            /* JADX WARN: Code duplicated, block: B:41:0x0151  */
            /* JADX WARN: Code duplicated, block: B:43:0x0157  */
            /* JADX WARN: Instruction removed from duplicated block: B:30:0x0101, please report this as an issue */
            public boolean processMessage(Message message) {
                boolean ret;
                WifiP2pConfig config;
                WifiP2pDevice owner;
                String addr;
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case 139268:
                        if (P2pStateMachine.this.mWifiNative.p2pStopFind()) {
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                            WifiP2pServiceImpl.this.mServiceDiscReqId = null;
                            P2pStateMachine.this.replyToMessage(message, 139270);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139269, 0);
                        }
                        return true;
                    case 139271:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " sending connect");
                            }
                            WifiP2pConfig config2 = (WifiP2pConfig) message.obj;
                            boolean isConnectFailed = false;
                            if (P2pStateMachine.this.isConfigValidAsGroup(config2)) {
                                WifiP2pServiceImpl.this.mAutonomousGroup = false;
                                P2pStateMachine.this.mWifiNative.p2pStopFind();
                                if (P2pStateMachine.this.mWifiNative.p2pGroupAdd(config2, true)) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(3, config2);
                                    P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                                    p2pStateMachine.transitionTo(p2pStateMachine.mGroupNegotiationState);
                                } else {
                                    P2pStateMachine.this.loge("Cannot join a group with config.");
                                    isConnectFailed = true;
                                    P2pStateMachine.this.replyToMessage(message, 139272);
                                }
                            } else if (!P2pStateMachine.this.isConfigInvalid(config2)) {
                                WifiP2pServiceImpl.this.mAutonomousGroup = false;
                                P2pStateMachine.this.mWifiNative.p2pStopFind();
                                if (P2pStateMachine.this.reinvokePersistentGroup(config2)) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(1, config2);
                                    P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                                    p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                                } else {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(0, config2);
                                    P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                                    p2pStateMachine3.transitionTo(p2pStateMachine3.mProvisionDiscoveryState);
                                }
                            } else {
                                P2pStateMachine.this.loge("Dropping connect request " + config2);
                                isConnectFailed = true;
                                P2pStateMachine.this.replyToMessage(message, 139272);
                            }
                            if (!isConnectFailed) {
                                P2pStateMachine.this.mSavedPeerConfig = config2;
                                P2pStateMachine.this.mPeers.updateStatus(P2pStateMachine.this.mSavedPeerConfig.deviceAddress, 1);
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                P2pStateMachine.this.replyToMessage(message, 139273);
                            }
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139272);
                        }
                        return true;
                    case 139277:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            WifiP2pServiceImpl.this.mAutonomousGroup = true;
                            int netId = message.arg1;
                            WifiP2pConfig config3 = (WifiP2pConfig) message.obj;
                            if (config3 != null) {
                                if (P2pStateMachine.this.isConfigValidAsGroup(config3)) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(3, config3);
                                    ret = P2pStateMachine.this.mWifiNative.p2pGroupAdd(config3, false);
                                } else {
                                    ret = false;
                                }
                            } else if (netId == -2) {
                                int netId2 = P2pStateMachine.this.mGroups.getNetworkId(WifiP2pServiceImpl.this.mThisDevice.deviceAddress);
                                if (netId2 != -1) {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(1, null);
                                    ret = P2pStateMachine.this.mWifiNative.p2pGroupAdd(netId2);
                                } else {
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(2, null);
                                    ret = P2pStateMachine.this.mWifiNative.p2pGroupAdd(true);
                                }
                            } else {
                                WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(2, null);
                                ret = P2pStateMachine.this.mWifiNative.p2pGroupAdd(false);
                            }
                            if (ret) {
                                P2pStateMachine.this.replyToMessage(message, 139279);
                                P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                                p2pStateMachine4.transitionTo(p2pStateMachine4.mGroupNegotiationState);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139278, 0);
                            }
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139278, 0);
                        }
                        return true;
                    case 139329:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(message.sendingUid)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " start listen mode");
                            }
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                            if (P2pStateMachine.this.mWifiNative.p2pExtListen(true, 500, 500)) {
                                P2pStateMachine.this.replyToMessage(message, 139331);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139330);
                            }
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_SETTING permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139330);
                        }
                        return true;
                    case 139332:
                        if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(message.sendingUid)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " stop listen mode");
                            }
                            if (P2pStateMachine.this.mWifiNative.p2pExtListen(false, 0, 0)) {
                                P2pStateMachine.this.replyToMessage(message, 139334);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139333);
                            }
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                        } else {
                            P2pStateMachine.this.loge("Permission violation - no NETWORK_SETTING permission, uid = " + message.sendingUid);
                            P2pStateMachine.this.replyToMessage(message, 139333);
                        }
                        return true;
                    case 139335:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal arguments(s)");
                        } else {
                            Bundle p2pChannels = (Bundle) message.obj;
                            int lc = p2pChannels.getInt("lc", 0);
                            int oc = p2pChannels.getInt("oc", 0);
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " set listen and operating channel");
                            }
                            if (P2pStateMachine.this.mWifiNative.p2pSetChannel(lc, oc)) {
                                P2pStateMachine.this.replyToMessage(message, 139337);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, 139336);
                            }
                        }
                        return true;
                    case 139342:
                        String handoverSelect = null;
                        if (message.obj != null) {
                            handoverSelect = ((Bundle) message.obj).getString("android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE");
                        }
                        if (handoverSelect == null || !P2pStateMachine.this.mWifiNative.initiatorReportNfcHandover(handoverSelect)) {
                            P2pStateMachine.this.replyToMessage(message, 139345);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139344);
                            P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                            p2pStateMachine5.transitionTo(p2pStateMachine5.mGroupCreatingState);
                        }
                        return true;
                    case 139343:
                        String handoverRequest = null;
                        if (message.obj != null) {
                            handoverRequest = ((Bundle) message.obj).getString("android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE");
                        }
                        if (handoverRequest == null || !P2pStateMachine.this.mWifiNative.responderReportNfcHandover(handoverRequest)) {
                            P2pStateMachine.this.replyToMessage(message, 139345);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, 139344);
                            P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                            p2pStateMachine6.transitionTo(p2pStateMachine6.mGroupCreatingState);
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT /* 147479 */:
                        WifiP2pConfig config4 = (WifiP2pConfig) message.obj;
                        if (!P2pStateMachine.this.isConfigInvalid(config4)) {
                            P2pStateMachine.this.mSavedPeerConfig = config4;
                            WifiP2pServiceImpl.this.mAutonomousGroup = false;
                            WifiP2pServiceImpl.this.mJoinExistingGroup = false;
                            WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(0, config4);
                            P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                            p2pStateMachine7.transitionTo(p2pStateMachine7.mUserAuthorizingNegotiationRequestState);
                        } else {
                            P2pStateMachine.this.loge("Dropping GO neg request " + config4);
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        if (message.obj != null) {
                            P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " group started");
                            }
                            if (P2pStateMachine.this.mGroup.isGroupOwner() && WifiP2pServiceImpl.EMPTY_DEVICE_ADDRESS.equals(P2pStateMachine.this.mGroup.getOwner().deviceAddress)) {
                                P2pStateMachine.this.mGroup.getOwner().deviceAddress = WifiP2pServiceImpl.this.mThisDevice.deviceAddress;
                            }
                            if (P2pStateMachine.this.mGroup.getNetworkId() == -2) {
                                WifiP2pServiceImpl.this.mAutonomousGroup = false;
                                P2pStateMachine.this.deferMessage(message);
                                P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                                p2pStateMachine8.transitionTo(p2pStateMachine8.mGroupNegotiationState);
                            } else {
                                P2pStateMachine.this.loge("Unexpected group creation, remove " + P2pStateMachine.this.mGroup);
                                P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                            }
                        } else {
                            Log.e(WifiP2pServiceImpl.TAG, "Invalid argument(s)");
                        }
                        return true;
                    case WifiP2pMonitor.P2P_INVITATION_RECEIVED_EVENT /* 147487 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Invalid argument(s)");
                        } else {
                            WifiP2pGroup group = (WifiP2pGroup) message.obj;
                            WifiP2pDevice owner2 = group.getOwner();
                            if (owner2 == null) {
                                int id = group.getNetworkId();
                                if (id >= 0 && (addr = P2pStateMachine.this.mGroups.getOwnerAddr(id)) != null) {
                                    group.setOwner(new WifiP2pDevice(addr));
                                    owner2 = group.getOwner();
                                    config = new WifiP2pConfig();
                                    config.deviceAddress = group.getOwner().deviceAddress;
                                    if (P2pStateMachine.this.isConfigInvalid(config)) {
                                        P2pStateMachine.this.mSavedPeerConfig = config;
                                        if (owner2 != null) {
                                            if (owner.wpsPbcSupported()) {
                                                P2pStateMachine.this.mSavedPeerConfig.wps.setup = 0;
                                            } else if (owner.wpsKeypadSupported()) {
                                                P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                                            } else if (owner.wpsDisplaySupported()) {
                                                P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                                            }
                                        }
                                        WifiP2pServiceImpl.this.mAutonomousGroup = false;
                                        WifiP2pServiceImpl.this.mJoinExistingGroup = true;
                                        WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(0, config);
                                        P2pStateMachine p2pStateMachine9 = P2pStateMachine.this;
                                        p2pStateMachine9.transitionTo(p2pStateMachine9.mUserAuthorizingInviteRequestState);
                                    } else {
                                        P2pStateMachine.this.loge("Dropping invitation request " + config);
                                    }
                                } else {
                                    P2pStateMachine.this.loge("Ignored invitation from null owner");
                                }
                            } else {
                                config = new WifiP2pConfig();
                                config.deviceAddress = group.getOwner().deviceAddress;
                                if (P2pStateMachine.this.isConfigInvalid(config)) {
                                    P2pStateMachine.this.mSavedPeerConfig = config;
                                    if (owner2 != null && (owner = P2pStateMachine.this.mPeers.get(owner2.deviceAddress)) != null) {
                                        if (owner.wpsPbcSupported()) {
                                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 0;
                                        } else if (owner.wpsKeypadSupported()) {
                                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                                        } else if (owner.wpsDisplaySupported()) {
                                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                                        }
                                    }
                                    WifiP2pServiceImpl.this.mAutonomousGroup = false;
                                    WifiP2pServiceImpl.this.mJoinExistingGroup = true;
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.startConnectionEvent(0, config);
                                    P2pStateMachine p2pStateMachine10 = P2pStateMachine.this;
                                    p2pStateMachine10.transitionTo(p2pStateMachine10.mUserAuthorizingInviteRequestState);
                                } else {
                                    P2pStateMachine.this.loge("Dropping invitation request " + config);
                                }
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            WifiP2pProvDiscEvent provDisc = (WifiP2pProvDiscEvent) message.obj;
                            WifiP2pDevice device = provDisc.device;
                            if (device != null) {
                                P2pStateMachine.this.mSavedPeerConfig = new WifiP2pConfig();
                                P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                                P2pStateMachine.this.mSavedPeerConfig.deviceAddress = device.deviceAddress;
                                P2pStateMachine.this.mSavedPeerConfig.wps.pin = provDisc.pin;
                                P2pStateMachine.this.notifyP2pProvDiscShowPinRequest(provDisc.pin, device.deviceAddress);
                                P2pStateMachine.this.mPeers.updateStatus(device.deviceAddress, 1);
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                P2pStateMachine p2pStateMachine11 = P2pStateMachine.this;
                                p2pStateMachine11.transitionTo(p2pStateMachine11.mUserAuthorizingNegotiationRequestState);
                            } else {
                                P2pStateMachine.this.loge("Device entry is null");
                            }
                        }
                        return true;
                    default:
                        return false;
                }
            }
        }

        class GroupCreatingState extends State {
            GroupCreatingState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.sendMessageDelayed(p2pStateMachine.obtainMessage(WifiP2pServiceImpl.GROUP_CREATING_TIMED_OUT, WifiP2pServiceImpl.access$7804(), 0), 120000L);
                WifiP2pServiceImpl.mP2pConnectingOrConnected = true;
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case 139265:
                        P2pStateMachine.this.replyToMessage(message, 139266, 2);
                        return true;
                    case 139274:
                        P2pStateMachine.this.mWifiNative.p2pCancelConnect();
                        WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(3);
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                        P2pStateMachine.this.replyToMessage(message, 139276);
                        return true;
                    case WifiP2pServiceImpl.GROUP_CREATING_TIMED_OUT /* 143361 */:
                        if (WifiP2pServiceImpl.sGroupCreatingTimeoutIndex == message.arg1) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd("Group negotiation timed out");
                            }
                            WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(2);
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mInactiveState);
                            return true;
                        }
                        return true;
                    case WifiP2pMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                            return true;
                        }
                        WifiP2pDevice device = (WifiP2pDevice) message.obj;
                        if (!P2pStateMachine.this.mSavedPeerConfig.deviceAddress.equals(device.deviceAddress)) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd("mSavedPeerConfig " + P2pStateMachine.this.mSavedPeerConfig.deviceAddress + "device " + device.deviceAddress);
                            }
                            return false;
                        }
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("Add device to lost list " + device);
                        }
                        P2pStateMachine.this.mPeersLostDuringConnection.updateSupplicantDetails(device);
                        return true;
                    case WifiP2pMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT /* 147481 */:
                        WifiP2pServiceImpl.this.mAutonomousGroup = false;
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.transitionTo(p2pStateMachine3.mGroupNegotiationState);
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
                WifiP2pServiceImpl.mP2pConnectingOrConnected = false;
            }
        }

        class UserAuthorizingNegotiationRequestState extends State {
            UserAuthorizingNegotiationRequestState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                if (P2pStateMachine.this.mSavedPeerConfig.wps.setup == 0 || TextUtils.isEmpty(P2pStateMachine.this.mSavedPeerConfig.wps.pin)) {
                    P2pStateMachine.this.notifyInvitationReceived();
                }
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.p2pConnectWithPinDisplay(p2pStateMachine.mSavedPeerConfig);
                        P2pStateMachine.this.mPeers.updateStatus(P2pStateMachine.this.mSavedPeerConfig.deviceAddress, 1);
                        P2pStateMachine.this.sendPeersChangedBroadcast();
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                        return true;
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("User rejected negotiation " + P2pStateMachine.this.mSavedPeerConfig);
                        }
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.transitionTo(p2pStateMachine3.mInactiveState);
                        return true;
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_CONFIRM /* 143367 */:
                        P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                        P2pStateMachine.this.mWifiNative.p2pConnect(P2pStateMachine.this.mSavedPeerConfig, WifiP2pServiceImpl.FORM_GROUP.booleanValue());
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.transitionTo(p2pStateMachine4.mGroupNegotiationState);
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
            }
        }

        class UserAuthorizingInviteRequestState extends State {
            UserAuthorizingInviteRequestState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine.this.notifyInvitationReceived();
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        if (!p2pStateMachine.reinvokePersistentGroup(p2pStateMachine.mSavedPeerConfig)) {
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.p2pConnectWithPinDisplay(p2pStateMachine2.mSavedPeerConfig);
                        }
                        P2pStateMachine.this.mPeers.updateStatus(P2pStateMachine.this.mSavedPeerConfig.deviceAddress, 1);
                        P2pStateMachine.this.sendPeersChangedBroadcast();
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.transitionTo(p2pStateMachine3.mGroupNegotiationState);
                        return true;
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("User rejected invitation " + P2pStateMachine.this.mSavedPeerConfig);
                        }
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.transitionTo(p2pStateMachine4.mInactiveState);
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
            }
        }

        class ProvisionDiscoveryState extends State {
            ProvisionDiscoveryState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine.this.mWifiNative.p2pProvisionDiscovery(P2pStateMachine.this.mSavedPeerConfig);
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case WifiP2pMonitor.P2P_PROV_DISC_PBC_RSP_EVENT /* 147490 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Invalid argument(s)");
                        } else {
                            WifiP2pProvDiscEvent provDisc = (WifiP2pProvDiscEvent) message.obj;
                            WifiP2pDevice device = provDisc.device;
                            if ((device == null || device.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress)) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 0) {
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd("Found a match " + P2pStateMachine.this.mSavedPeerConfig);
                                }
                                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                                p2pStateMachine.p2pConnectWithPinDisplay(p2pStateMachine.mSavedPeerConfig);
                                P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                                p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            WifiP2pProvDiscEvent provDisc2 = (WifiP2pProvDiscEvent) message.obj;
                            WifiP2pDevice device2 = provDisc2.device;
                            if ((device2 == null || device2.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress)) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 2) {
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd("Found a match " + P2pStateMachine.this.mSavedPeerConfig);
                                }
                                if (TextUtils.isEmpty(P2pStateMachine.this.mSavedPeerConfig.wps.pin)) {
                                    WifiP2pServiceImpl.this.mJoinExistingGroup = false;
                                    P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                                    p2pStateMachine3.transitionTo(p2pStateMachine3.mUserAuthorizingNegotiationRequestState);
                                } else {
                                    P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                                    p2pStateMachine4.p2pConnectWithPinDisplay(p2pStateMachine4.mSavedPeerConfig);
                                    P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                                    p2pStateMachine5.transitionTo(p2pStateMachine5.mGroupNegotiationState);
                                }
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            WifiP2pProvDiscEvent provDisc3 = (WifiP2pProvDiscEvent) message.obj;
                            WifiP2pDevice device3 = provDisc3.device;
                            if (device3 != null) {
                                if (device3.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 1) {
                                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                        P2pStateMachine.this.logd("Found a match " + P2pStateMachine.this.mSavedPeerConfig);
                                    }
                                    P2pStateMachine.this.mSavedPeerConfig.wps.pin = provDisc3.pin;
                                    P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                                    p2pStateMachine6.p2pConnectWithPinDisplay(p2pStateMachine6.mSavedPeerConfig);
                                    P2pStateMachine.this.notifyInvitationSent(provDisc3.pin, device3.deviceAddress);
                                    P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                                    p2pStateMachine7.transitionTo(p2pStateMachine7.mGroupNegotiationState);
                                }
                            } else {
                                Log.e(WifiP2pServiceImpl.TAG, "Invalid device");
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                    case WifiP2pMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                    default:
                        return false;
                    case WifiP2pMonitor.P2P_PROV_DISC_FAILURE_EVENT /* 147495 */:
                        P2pStateMachine.this.loge("provision discovery failed");
                        WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(4);
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                        p2pStateMachine8.transitionTo(p2pStateMachine8.mInactiveState);
                        return true;
                }
            }
        }

        class GroupNegotiationState extends State {
            GroupNegotiationState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:66:0x02b6  */
            /* JADX WARN: Code duplicated, block: B:68:0x02c0  */
            /* JADX WARN: Instruction removed from duplicated block: B:68:0x02c0, please report this as an issue */
            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case WifiP2pMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT /* 147481 */:
                    case WifiP2pMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT /* 147483 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " go success");
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT /* 147482 */:
                        P2pStatus status = (P2pStatus) message.obj;
                        if (status != P2pStatus.NO_COMMON_CHANNEL) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " go failure");
                            }
                            WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(0);
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                        } else {
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mFrequencyConflictState);
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                        P2pStatus status2 = (P2pStatus) message.obj;
                        if (status2 == P2pStatus.NO_COMMON_CHANNEL) {
                            P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                            p2pStateMachine3.transitionTo(p2pStateMachine3.mFrequencyConflictState);
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd(getName() + " group started");
                            }
                            if (P2pStateMachine.this.mGroup.isGroupOwner() && WifiP2pServiceImpl.EMPTY_DEVICE_ADDRESS.equals(P2pStateMachine.this.mGroup.getOwner().deviceAddress)) {
                                P2pStateMachine.this.mGroup.getOwner().deviceAddress = WifiP2pServiceImpl.this.mThisDevice.deviceAddress;
                            }
                            if (P2pStateMachine.this.mGroup.getNetworkId() == -2) {
                                P2pStateMachine.this.updatePersistentNetworks(WifiP2pServiceImpl.RELOAD.booleanValue());
                                String devAddr = P2pStateMachine.this.mGroup.getOwner().deviceAddress;
                                P2pStateMachine.this.mGroup.setNetworkId(P2pStateMachine.this.mGroups.getNetworkId(devAddr, P2pStateMachine.this.mGroup.getNetworkName()));
                            }
                            if (P2pStateMachine.this.mGroup.isGroupOwner()) {
                                if (!WifiP2pServiceImpl.this.mAutonomousGroup) {
                                    P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 10);
                                }
                                P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                                p2pStateMachine4.startDhcpServer(p2pStateMachine4.mGroup.getInterface());
                            } else {
                                P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 10);
                                WifiP2pServiceImpl.this.startIpClient(P2pStateMachine.this.mGroup.getInterface(), P2pStateMachine.this.getHandler());
                                WifiP2pDevice groupOwner = P2pStateMachine.this.mGroup.getOwner();
                                WifiP2pDevice peer = P2pStateMachine.this.mPeers.get(groupOwner.deviceAddress);
                                if (peer == null && !WifiP2pServiceImpl.EMPTY_DEVICE_ADDRESS.equals(groupOwner.deviceAddress)) {
                                    P2pStateMachine.this.mPeers.updateSupplicantDetails(groupOwner);
                                    peer = P2pStateMachine.this.mPeers.get(groupOwner.deviceAddress);
                                    WifiP2pServiceImpl.this.needDiscovery = true;
                                    P2pStateMachine.this.logw("update group owner " + groupOwner);
                                }
                                if (peer != null) {
                                    groupOwner.updateSupplicantDetails(peer);
                                    P2pStateMachine.this.mPeers.updateStatus(groupOwner.deviceAddress, 0);
                                    P2pStateMachine.this.sendPeersChangedBroadcast();
                                    if (WifiP2pServiceImpl.this.needDiscovery && P2pStateMachine.this.mWifiNative.p2pFind(120)) {
                                        WifiP2pServiceImpl.this.mWifiP2pMetrics.incrementServiceScans();
                                        P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(true);
                                    }
                                } else {
                                    P2pStateMachine.this.logw("Unknown group owner " + groupOwner);
                                }
                            }
                            P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                            p2pStateMachine5.transitionTo(p2pStateMachine5.mGroupCreatedState);
                        }
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " go failure");
                        }
                        WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(0);
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                        p2pStateMachine6.transitionTo(p2pStateMachine6.mInactiveState);
                        return true;
                    case WifiP2pMonitor.P2P_INVITATION_RECEIVED_EVENT /* 147487 */:
                    default:
                        return false;
                    case WifiP2pMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                        P2pStatus status3 = (P2pStatus) message.obj;
                        if (status3 != P2pStatus.SUCCESS) {
                            P2pStateMachine.this.loge("Invitation result " + status3);
                            if (status3 == P2pStatus.UNKNOWN_P2P_GROUP) {
                                int netId = P2pStateMachine.this.mSavedPeerConfig.netId;
                                if (netId >= 0) {
                                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                        P2pStateMachine.this.logd("Remove unknown client from the list");
                                    }
                                    P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                                    p2pStateMachine7.removeClientFromList(netId, p2pStateMachine7.mSavedPeerConfig.deviceAddress, true);
                                }
                                P2pStateMachine.this.mSavedPeerConfig.netId = -2;
                                P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                                p2pStateMachine8.p2pConnectWithPinDisplay(p2pStateMachine8.mSavedPeerConfig);
                            } else if (status3 == P2pStatus.INFORMATION_IS_CURRENTLY_UNAVAILABLE) {
                                P2pStateMachine.this.mSavedPeerConfig.netId = -2;
                                P2pStateMachine p2pStateMachine9 = P2pStateMachine.this;
                                p2pStateMachine9.p2pConnectWithPinDisplay(p2pStateMachine9.mSavedPeerConfig);
                            } else if (status3 != P2pStatus.NO_COMMON_CHANNEL) {
                                WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(5);
                                P2pStateMachine.this.handleGroupCreationFailure();
                                P2pStateMachine p2pStateMachine10 = P2pStateMachine.this;
                                p2pStateMachine10.transitionTo(p2pStateMachine10.mInactiveState);
                            } else {
                                P2pStateMachine p2pStateMachine11 = P2pStateMachine.this;
                                p2pStateMachine11.transitionTo(p2pStateMachine11.mFrequencyConflictState);
                            }
                        }
                        return true;
                }
            }
        }

        class FrequencyConflictState extends State {
            private AlertDialog mFrequencyConflictDialog;

            FrequencyConflictState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                notifyFrequencyConflict();
            }

            private void notifyFrequencyConflict() {
                P2pStateMachine.this.logd("Notify frequency conflict");
                Resources r = Resources.getSystem();
                AlertDialog.Builder builder = new AlertDialog.Builder(WifiP2pServiceImpl.this.mContext);
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                AlertDialog dialog = builder.setMessage(r.getString(R.string.permlab_bluetooth, p2pStateMachine.getDeviceName(p2pStateMachine.mSavedPeerConfig.deviceAddress))).setPositiveButton(r.getString(R.string.config_dataUsageSummaryComponent), new DialogInterface.OnClickListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.FrequencyConflictState.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog2, int which) {
                        P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.DROP_WIFI_USER_ACCEPT);
                    }
                }).setNegativeButton(r.getString(R.string.condition_provider_service_binding_label), new DialogInterface.OnClickListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.FrequencyConflictState.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog2, int which) {
                        P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.DROP_WIFI_USER_REJECT);
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.FrequencyConflictState.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface arg0) {
                        P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.DROP_WIFI_USER_REJECT);
                    }
                }).create();
                dialog.setCanceledOnTouchOutside(false);
                dialog.getWindow().setType(2003);
                WindowManager.LayoutParams attrs = dialog.getWindow().getAttributes();
                attrs.privateFlags = 16;
                dialog.getWindow().setAttributes(attrs);
                dialog.show();
                this.mFrequencyConflictDialog = dialog;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                int i = message.what;
                if (i != 143373) {
                    switch (i) {
                        case WifiP2pServiceImpl.DROP_WIFI_USER_ACCEPT /* 143364 */:
                            if (WifiP2pServiceImpl.this.mWifiChannel != null) {
                                WifiP2pServiceImpl.this.mWifiChannel.sendMessage(WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST, 1);
                            } else {
                                P2pStateMachine.this.loge("DROP_WIFI_USER_ACCEPT message received when WifiChannel is null");
                            }
                            WifiP2pServiceImpl.this.mTemporarilyDisconnectedWifi = true;
                            break;
                        case WifiP2pServiceImpl.DROP_WIFI_USER_REJECT /* 143365 */:
                            WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(6);
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                            break;
                        default:
                            switch (i) {
                                case WifiP2pMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT /* 147481 */:
                                case WifiP2pMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT /* 147483 */:
                                    P2pStateMachine.this.loge(getName() + "group sucess during freq conflict!");
                                    break;
                                case WifiP2pMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT /* 147482 */:
                                case WifiP2pMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                                case WifiP2pMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                                    break;
                                case WifiP2pMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                                    P2pStateMachine.this.loge(getName() + "group started after freq conflict, handle anyway");
                                    P2pStateMachine.this.deferMessage(message);
                                    P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                                    p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                                    break;
                                default:
                                    return false;
                            }
                            break;
                    }
                } else {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd(getName() + "Wifi disconnected, retry p2p");
                    }
                    P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                    p2pStateMachine3.transitionTo(p2pStateMachine3.mInactiveState);
                    P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                    p2pStateMachine4.sendMessage(139271, p2pStateMachine4.mSavedPeerConfig);
                }
                return true;
            }

            public void exit() {
                AlertDialog alertDialog = this.mFrequencyConflictDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            }
        }

        class GroupCreatedState extends State {
            GroupCreatedState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                WifiP2pServiceImpl.mP2pConnectingOrConnected = true;
                P2pStateMachine.this.mSavedPeerConfig.invalidate();
                WifiP2pServiceImpl.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.CONNECTED, null, null);
                P2pStateMachine.this.updateThisDevice(0);
                if (P2pStateMachine.this.mGroup.isGroupOwner()) {
                    P2pStateMachine.this.setWifiP2pInfoOnGroupFormation(NetworkUtils.numericToInetAddress(WifiP2pServiceImpl.SERVER_ADDRESS));
                }
                if (WifiP2pServiceImpl.this.mAutonomousGroup) {
                    P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                }
                WifiP2pServiceImpl.this.mWifiP2pMetrics.endConnectionEvent(1);
                WifiP2pServiceImpl.this.mWifiP2pMetrics.startGroupEvent(P2pStateMachine.this.mGroup);
            }

            public boolean processMessage(Message message) {
                int netId;
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case 139271:
                        if (!WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(P2pStateMachine.this.getCallingPkgName(message.sendingUid, message.replyTo), message.sendingUid, false)) {
                            P2pStateMachine.this.replyToMessage(message, 139272);
                        } else {
                            WifiP2pConfig config = (WifiP2pConfig) message.obj;
                            if (P2pStateMachine.this.isConfigInvalid(config)) {
                                P2pStateMachine.this.loge("Dropping connect request " + config);
                                P2pStateMachine.this.replyToMessage(message, 139272);
                            } else {
                                P2pStateMachine.this.logd("Inviting device : " + config.deviceAddress);
                                P2pStateMachine.this.mSavedPeerConfig = config;
                                if (P2pStateMachine.this.mWifiNative.p2pInvite(P2pStateMachine.this.mGroup, config.deviceAddress)) {
                                    P2pStateMachine.this.mPeers.updateStatus(config.deviceAddress, 1);
                                    P2pStateMachine.this.sendPeersChangedBroadcast();
                                    P2pStateMachine.this.replyToMessage(message, 139273);
                                } else {
                                    P2pStateMachine.this.replyToMessage(message, 139272, 0);
                                }
                            }
                        }
                        return true;
                    case 139280:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " remove group");
                        }
                        if (!P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface())) {
                            P2pStateMachine.this.handleGroupRemoved();
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                            P2pStateMachine.this.replyToMessage(message, 139281, 0);
                        } else {
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mOngoingGroupRemovalState);
                            P2pStateMachine.this.replyToMessage(message, 139282);
                        }
                        return true;
                    case 139326:
                        WpsInfo wps = (WpsInfo) message.obj;
                        if (wps == null) {
                            P2pStateMachine.this.replyToMessage(message, 139327);
                        } else {
                            boolean ret = true;
                            if (wps.setup == 0) {
                                ret = P2pStateMachine.this.mWifiNative.startWpsPbc(P2pStateMachine.this.mGroup.getInterface(), null);
                            } else if (wps.pin != null) {
                                ret = P2pStateMachine.this.mWifiNative.startWpsPinKeypad(P2pStateMachine.this.mGroup.getInterface(), wps.pin);
                            } else {
                                String pin = P2pStateMachine.this.mWifiNative.startWpsPinDisplay(P2pStateMachine.this.mGroup.getInterface(), null);
                                try {
                                    Integer.parseInt(pin);
                                    P2pStateMachine.this.notifyInvitationSent(pin, "any");
                                } catch (NumberFormatException e) {
                                    ret = false;
                                }
                            }
                            P2pStateMachine.this.replyToMessage(message, ret ? 139328 : 139327);
                            break;
                        }
                        return true;
                    case WifiP2pServiceImpl.DISABLE_P2P /* 143377 */:
                        P2pStateMachine.this.sendMessage(139280);
                        P2pStateMachine.this.deferMessage(message);
                        return true;
                    case WifiP2pServiceImpl.IPC_PRE_DHCP_ACTION /* 143390 */:
                        P2pStateMachine.this.mWifiNative.setP2pPowerSave(P2pStateMachine.this.mGroup.getInterface(), false);
                        try {
                            WifiP2pServiceImpl.this.mIpClient.completedPreDhcpAction();
                            break;
                        } catch (RemoteException e2) {
                            e2.rethrowFromSystemServer();
                        }
                        return true;
                    case WifiP2pServiceImpl.IPC_POST_DHCP_ACTION /* 143391 */:
                        P2pStateMachine.this.mWifiNative.setP2pPowerSave(P2pStateMachine.this.mGroup.getInterface(), true);
                        return true;
                    case WifiP2pServiceImpl.IPC_DHCP_RESULTS /* 143392 */:
                        WifiP2pServiceImpl.this.mDhcpResults = (DhcpResults) message.obj;
                        return true;
                    case WifiP2pServiceImpl.IPC_PROVISIONING_SUCCESS /* 143393 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("mDhcpResults: " + WifiP2pServiceImpl.this.mDhcpResults);
                        }
                        if (WifiP2pServiceImpl.this.mDhcpResults != null) {
                            P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                            p2pStateMachine3.setWifiP2pInfoOnGroupFormation(WifiP2pServiceImpl.this.mDhcpResults.serverAddress);
                        }
                        P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                        try {
                            String ifname = P2pStateMachine.this.mGroup.getInterface();
                            if (WifiP2pServiceImpl.this.mDhcpResults != null) {
                                WifiP2pServiceImpl.this.mNwService.addInterfaceToLocalNetwork(ifname, WifiP2pServiceImpl.this.mDhcpResults.getRoutes(ifname));
                            }
                            break;
                        } catch (Exception e3) {
                            P2pStateMachine.this.loge("Failed to add iface to local network " + e3);
                        }
                        return true;
                    case WifiP2pServiceImpl.IPC_PROVISIONING_FAILURE /* 143394 */:
                        P2pStateMachine.this.loge("IP provisioning failed");
                        P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                        return true;
                    case WifiP2pMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                            return false;
                        }
                        WifiP2pDevice device = (WifiP2pDevice) message.obj;
                        if (!P2pStateMachine.this.mGroup.contains(device)) {
                            return false;
                        }
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("Add device to lost list " + device);
                        }
                        P2pStateMachine.this.mPeersLostDuringConnection.updateSupplicantDetails(device);
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        P2pStateMachine.this.loge("Duplicate group creation event notice, ignore");
                        return true;
                    case WifiP2pMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd(getName() + " group removed");
                        }
                        P2pStateMachine.this.handleGroupRemoved();
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.transitionTo(p2pStateMachine4.mInactiveState);
                        return true;
                    case WifiP2pMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                        P2pStatus status = (P2pStatus) message.obj;
                        if (status != P2pStatus.SUCCESS) {
                            P2pStateMachine.this.loge("Invitation result " + status);
                            if (status == P2pStatus.UNKNOWN_P2P_GROUP && (netId = P2pStateMachine.this.mGroup.getNetworkId()) >= 0) {
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd("Remove unknown client from the list");
                                }
                                P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                                p2pStateMachine5.removeClientFromList(netId, p2pStateMachine5.mSavedPeerConfig.deviceAddress, false);
                                P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                                p2pStateMachine6.sendMessage(139271, p2pStateMachine6.mSavedPeerConfig);
                            }
                        }
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        WifiP2pProvDiscEvent provDisc = (WifiP2pProvDiscEvent) message.obj;
                        P2pStateMachine.this.mSavedPeerConfig = new WifiP2pConfig();
                        if (provDisc != null && provDisc.device != null) {
                            P2pStateMachine.this.mSavedPeerConfig.deviceAddress = provDisc.device.deviceAddress;
                        }
                        if (message.what == 147491) {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                        } else if (message.what == 147492) {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                            P2pStateMachine.this.mSavedPeerConfig.wps.pin = provDisc.pin;
                        } else {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 0;
                        }
                        if (!P2pStateMachine.this.mGroup.isGroupOwner()) {
                            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                P2pStateMachine.this.logd("Ignore provision discovery for GC");
                            }
                        } else {
                            P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                            p2pStateMachine7.transitionTo(p2pStateMachine7.mUserAuthorizingJoinState);
                        }
                        return true;
                    case WifiP2pMonitor.AP_STA_DISCONNECTED_EVENT /* 147497 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            WifiP2pDevice device2 = (WifiP2pDevice) message.obj;
                            String deviceAddress = device2.deviceAddress;
                            if (deviceAddress != null) {
                                P2pStateMachine.this.mPeers.updateStatus(deviceAddress, 3);
                                if (P2pStateMachine.this.mGroup.removeClient(deviceAddress)) {
                                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                        P2pStateMachine.this.logd("Removed client " + deviceAddress);
                                    }
                                    if (WifiP2pServiceImpl.this.mAutonomousGroup || !P2pStateMachine.this.mGroup.isClientListEmpty()) {
                                        P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                                    } else {
                                        P2pStateMachine.this.logd("Client list empty, remove non-persistent p2p group");
                                        P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                                    }
                                    WifiP2pServiceImpl.this.mWifiP2pMetrics.updateGroupEvent(P2pStateMachine.this.mGroup);
                                } else {
                                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                        P2pStateMachine.this.logd("Failed to remove client " + deviceAddress);
                                    }
                                    for (WifiP2pDevice c : P2pStateMachine.this.mGroup.getClientList()) {
                                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                            P2pStateMachine.this.logd("client " + c.deviceAddress);
                                        }
                                    }
                                }
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd(getName() + " ap sta disconnected");
                                }
                            } else {
                                P2pStateMachine.this.loge("Disconnect on unknown device: " + device2);
                            }
                        }
                        return true;
                    case WifiP2pMonitor.AP_STA_CONNECTED_EVENT /* 147498 */:
                        if (message.obj == null) {
                            Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                        } else {
                            String deviceAddress2 = ((WifiP2pDevice) message.obj).deviceAddress;
                            P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 0);
                            if (deviceAddress2 != null) {
                                if (P2pStateMachine.this.mPeers.get(deviceAddress2) != null) {
                                    P2pStateMachine.this.mGroup.addClient(P2pStateMachine.this.mPeers.get(deviceAddress2));
                                } else {
                                    P2pStateMachine.this.mGroup.addClient(deviceAddress2);
                                }
                                P2pStateMachine.this.mPeers.updateStatus(deviceAddress2, 0);
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    P2pStateMachine.this.logd(getName() + " ap sta connected");
                                }
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                WifiP2pServiceImpl.this.mWifiP2pMetrics.updateGroupEvent(P2pStateMachine.this.mGroup);
                            } else {
                                P2pStateMachine.this.loge("Connect on null device address, ignore");
                            }
                            P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                        }
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
                WifiP2pServiceImpl.this.mWifiP2pMetrics.endGroupEvent();
                P2pStateMachine.this.updateThisDevice(3);
                P2pStateMachine.this.resetWifiP2pInfo();
                WifiP2pServiceImpl.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
                P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                WifiP2pServiceImpl.mP2pConnectingOrConnected = false;
            }
        }

        class UserAuthorizingJoinState extends State {
            UserAuthorizingJoinState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
                P2pStateMachine.this.notifyInvitationReceived();
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                switch (message.what) {
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                        if (P2pStateMachine.this.mSavedPeerConfig.wps.setup == 0) {
                            P2pStateMachine.this.mWifiNative.startWpsPbc(P2pStateMachine.this.mGroup.getInterface(), null);
                        } else {
                            P2pStateMachine.this.mWifiNative.startWpsPinKeypad(P2pStateMachine.this.mGroup.getInterface(), P2pStateMachine.this.mSavedPeerConfig.wps.pin);
                        }
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mGroupCreatedState);
                        return true;
                    case WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            P2pStateMachine.this.logd("User rejected incoming request");
                        }
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupCreatedState);
                        return true;
                    case WifiP2pMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                    case WifiP2pMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        return true;
                    default:
                        return false;
                }
            }

            public void exit() {
            }
        }

        class OngoingGroupRemovalState extends State {
            OngoingGroupRemovalState() {
            }

            public void enter() {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName());
                }
            }

            public boolean processMessage(Message message) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    P2pStateMachine.this.logd(getName() + message.toString());
                }
                if (message.what == 139280) {
                    P2pStateMachine.this.replyToMessage(message, 139282);
                    return true;
                }
                return false;
            }
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            super.dump(fd, pw, args);
            pw.println("mWifiP2pInfo " + this.mWifiP2pInfo);
            pw.println("mGroup " + this.mGroup);
            pw.println("mSavedPeerConfig " + this.mSavedPeerConfig);
            pw.println("mGroups" + this.mGroups);
            pw.println();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkAndReEnableP2p() {
            boolean isHalInterfaceAvailable = isHalInterfaceAvailable();
            Log.d(WifiP2pServiceImpl.TAG, "Wifi enabled=" + this.mIsWifiEnabled + ", P2P Interface availability=" + isHalInterfaceAvailable + ", Number of clients=" + WifiP2pServiceImpl.this.mDeathDataByBinder.size());
            if (this.mIsWifiEnabled && isHalInterfaceAvailable && !WifiP2pServiceImpl.this.mDeathDataByBinder.isEmpty()) {
                sendMessage(WifiP2pServiceImpl.ENABLE_P2P);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isHalInterfaceAvailable() {
            if (this.mWifiNative.isHalInterfaceSupported()) {
                return this.mIsHalInterfaceAvailable;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkAndSendP2pStateChangedBroadcast() {
            boolean isHalInterfaceAvailable = isHalInterfaceAvailable();
            Log.d(WifiP2pServiceImpl.TAG, "Wifi enabled=" + this.mIsWifiEnabled + ", P2P Interface availability=" + isHalInterfaceAvailable);
            sendP2pStateChangedBroadcast(this.mIsWifiEnabled && isHalInterfaceAvailable);
        }

        private void sendP2pStateChangedBroadcast(boolean enabled) {
            Intent intent = new Intent("android.net.wifi.p2p.STATE_CHANGED");
            intent.addFlags(67108864);
            if (enabled) {
                intent.putExtra("wifi_p2p_state", 2);
            } else {
                intent.putExtra("wifi_p2p_state", 1);
            }
            WifiP2pServiceImpl.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pDiscoveryChangedBroadcast(boolean started) {
            int i;
            if (WifiP2pServiceImpl.this.mDiscoveryStarted == started) {
                return;
            }
            WifiP2pServiceImpl.this.mDiscoveryStarted = started;
            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                logd("discovery change broadcast " + started);
            }
            Intent intent = new Intent("android.net.wifi.p2p.DISCOVERY_STATE_CHANGE");
            intent.addFlags(67108864);
            if (started) {
                i = 2;
            } else {
                i = 1;
            }
            intent.putExtra("discoveryState", i);
            WifiP2pServiceImpl.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        private void sendThisDeviceChangedBroadcast() {
            Intent intent = new Intent("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
            intent.addFlags(67108864);
            intent.putExtra("wifiP2pDevice", eraseOwnDeviceAddress(WifiP2pServiceImpl.this.mThisDevice));
            WifiP2pServiceImpl.this.mContext.sendBroadcastAsUserMultiplePermissions(intent, UserHandle.ALL, WifiP2pServiceImpl.RECEIVER_PERMISSIONS_FOR_BROADCAST);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPeersChangedBroadcast() {
            Intent intent = new Intent("android.net.wifi.p2p.PEERS_CHANGED");
            intent.putExtra("wifiP2pDeviceList", new WifiP2pDeviceList(this.mPeers));
            intent.addFlags(67108864);
            WifiP2pServiceImpl.this.mContext.sendBroadcastAsUserMultiplePermissions(intent, UserHandle.ALL, WifiP2pServiceImpl.RECEIVER_PERMISSIONS_FOR_BROADCAST);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pConnectionChangedBroadcast() {
            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                logd("sending p2p connection changed broadcast");
            }
            Intent intent = new Intent("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
            intent.addFlags(603979776);
            intent.putExtra("wifiP2pInfo", new WifiP2pInfo(this.mWifiP2pInfo));
            intent.putExtra("networkInfo", new NetworkInfo(WifiP2pServiceImpl.this.mNetworkInfo));
            intent.putExtra("p2pGroupInfo", eraseOwnDeviceAddress(this.mGroup));
            WifiP2pServiceImpl.this.mContext.sendBroadcastAsUserMultiplePermissions(intent, UserHandle.ALL, WifiP2pServiceImpl.RECEIVER_PERMISSIONS_FOR_BROADCAST);
            if (WifiP2pServiceImpl.this.mWifiChannel != null) {
                WifiP2pServiceImpl.this.mWifiChannel.sendMessage(WifiP2pServiceImpl.P2P_CONNECTION_CHANGED, new NetworkInfo(WifiP2pServiceImpl.this.mNetworkInfo));
            } else {
                loge("sendP2pConnectionChangedBroadcast(): WifiChannel is null");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pPersistentGroupsChangedBroadcast() {
            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                logd("sending p2p persistent groups changed broadcast");
            }
            Intent intent = new Intent("android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED");
            intent.addFlags(67108864);
            WifiP2pServiceImpl.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startDhcpServer(String intf) {
            try {
                InterfaceConfiguration ifcg = WifiP2pServiceImpl.this.mNwService.getInterfaceConfig(intf);
                ifcg.setLinkAddress(new LinkAddress(NetworkUtils.numericToInetAddress(WifiP2pServiceImpl.SERVER_ADDRESS), 24));
                ifcg.setInterfaceUp();
                WifiP2pServiceImpl.this.mNwService.setInterfaceConfig(intf, ifcg);
                ConnectivityManager cm = (ConnectivityManager) WifiP2pServiceImpl.this.mContext.getSystemService("connectivity");
                String[] tetheringDhcpRanges = cm.getTetheredDhcpRanges();
                if (WifiP2pServiceImpl.this.mNwService.isTetheringStarted()) {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        logd("Stop existing tethering and restart it");
                    }
                    WifiP2pServiceImpl.this.mNwService.stopTethering();
                }
                WifiP2pServiceImpl.this.mNwService.tetherInterface(intf);
                WifiP2pServiceImpl.this.mNwService.startTethering(tetheringDhcpRanges);
                logd("Started Dhcp server on " + intf);
            } catch (Exception e) {
                loge("Error configuring interface " + intf + ", :" + e);
            }
        }

        private void stopDhcpServer(String intf) {
            try {
                try {
                    WifiP2pServiceImpl.this.mNwService.untetherInterface(intf);
                    for (String temp : WifiP2pServiceImpl.this.mNwService.listTetheredInterfaces()) {
                        logd("List all interfaces " + temp);
                        if (temp.compareTo(intf) != 0) {
                            logd("Found other tethering interfaces, so keep tethering alive");
                            logd("Stopped Dhcp server");
                            return;
                        }
                    }
                    WifiP2pServiceImpl.this.mNwService.stopTethering();
                    logd("Stopped Dhcp server");
                } catch (Exception e) {
                    loge("Error stopping Dhcp server" + e);
                    logd("Stopped Dhcp server");
                }
            } catch (Throwable th) {
                logd("Stopped Dhcp server");
                throw th;
            }
        }

        private void notifyP2pEnableFailure() {
            Resources r = Resources.getSystem();
            AlertDialog dialog = new AlertDialog.Builder(WifiP2pServiceImpl.this.mContext).setTitle(r.getString(R.string.permlab_bindConditionProviderService)).setMessage(r.getString(R.string.permlab_bind_incall_service)).setPositiveButton(r.getString(R.string.ok), (DialogInterface.OnClickListener) null).create();
            dialog.setCanceledOnTouchOutside(false);
            dialog.getWindow().setType(2003);
            WindowManager.LayoutParams attrs = dialog.getWindow().getAttributes();
            attrs.privateFlags = 16;
            dialog.getWindow().setAttributes(attrs);
            dialog.show();
        }

        private void addRowToDialog(ViewGroup group, int stringId, String value) {
            Resources r = Resources.getSystem();
            View row = LayoutInflater.from(WifiP2pServiceImpl.this.mContext).inflate(R.layout.restrictions_pin_setup, group, false);
            ((TextView) row.findViewById(R.id.header_text_secondary)).setText(r.getString(stringId));
            ((TextView) row.findViewById(R.id.search_app_icon)).setText(value);
            group.addView(row);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyInvitationSent(String pin, String peerAddress) {
            Resources r = Resources.getSystem();
            View textEntryView = LayoutInflater.from(WifiP2pServiceImpl.this.mContext).inflate(R.layout.restrictions_pin_challenge, (ViewGroup) null);
            ViewGroup group = (ViewGroup) textEntryView.findViewById(R.id.dpad);
            addRowToDialog(group, R.string.permlab_bodySensors, getDeviceName(peerAddress));
            addRowToDialog(group, R.string.permlab_bluetooth_scan, pin);
            AlertDialog dialog = new AlertDialog.Builder(WifiP2pServiceImpl.this.mContext).setTitle(r.getString(R.string.permlab_bluetooth_advertise)).setView(textEntryView).setPositiveButton(r.getString(R.string.ok), (DialogInterface.OnClickListener) null).create();
            dialog.setCanceledOnTouchOutside(false);
            dialog.getWindow().setType(2003);
            WindowManager.LayoutParams attrs = dialog.getWindow().getAttributes();
            attrs.privateFlags = 16;
            dialog.getWindow().setAttributes(attrs);
            dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyP2pProvDiscShowPinRequest(String pin, String peerAddress) {
            Resources r = Resources.getSystem();
            View textEntryView = LayoutInflater.from(WifiP2pServiceImpl.this.mContext).inflate(R.layout.restrictions_pin_challenge, (ViewGroup) null);
            ViewGroup group = (ViewGroup) textEntryView.findViewById(R.id.dpad);
            addRowToDialog(group, R.string.permlab_bodySensors, getDeviceName(peerAddress));
            addRowToDialog(group, R.string.permlab_bluetooth_scan, pin);
            AlertDialog dialog = new AlertDialog.Builder(WifiP2pServiceImpl.this.mContext).setTitle(r.getString(R.string.permlab_bluetooth_advertise)).setView(textEntryView).setPositiveButton(r.getString(R.string.config_defaultWallet), new DialogInterface.OnClickListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog2, int which) {
                    P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.PEER_CONNECTION_USER_CONFIRM);
                }
            }).create();
            dialog.setCanceledOnTouchOutside(false);
            dialog.getWindow().setType(2003);
            WindowManager.LayoutParams attrs = dialog.getWindow().getAttributes();
            attrs.privateFlags = 16;
            dialog.getWindow().setAttributes(attrs);
            dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyInvitationReceived() {
            Resources r = Resources.getSystem();
            final WpsInfo wps = this.mSavedPeerConfig.wps;
            View textEntryView = LayoutInflater.from(WifiP2pServiceImpl.this.mContext).inflate(R.layout.restrictions_pin_challenge, (ViewGroup) null);
            ViewGroup group = (ViewGroup) textEntryView.findViewById(R.id.dpad);
            addRowToDialog(group, R.string.permlab_bluetoothAdmin, getDeviceName(this.mSavedPeerConfig.deviceAddress));
            final EditText pin = (EditText) textEntryView.findViewById(R.id.sensorLandscape);
            AlertDialog dialog = new AlertDialog.Builder(WifiP2pServiceImpl.this.mContext).setTitle(r.getString(R.string.permlab_bluetooth_connect)).setView(textEntryView).setPositiveButton(r.getString(R.string.config_defaultWallet), new DialogInterface.OnClickListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog2, int which) {
                    if (wps.setup == 2) {
                        P2pStateMachine.this.mSavedPeerConfig.wps.pin = pin.getText().toString();
                    }
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd(P2pStateMachine.this.getName() + " accept invitation " + P2pStateMachine.this.mSavedPeerConfig);
                    }
                    P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT);
                }
            }).setNegativeButton(r.getString(R.string.condition_provider_service_binding_label), new DialogInterface.OnClickListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog2, int which) {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd(P2pStateMachine.this.getName() + " ignore connect");
                    }
                    P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.6
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface arg0) {
                    if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                        P2pStateMachine.this.logd(P2pStateMachine.this.getName() + " ignore connect");
                    }
                    P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.PEER_CONNECTION_USER_REJECT);
                }
            }).create();
            dialog.setCanceledOnTouchOutside(false);
            int i = wps.setup;
            if (i == 1) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("Shown pin section visible");
                }
                addRowToDialog(group, R.string.permlab_bluetooth_scan, wps.pin);
            } else if (i == 2) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("Enter pin section visible");
                }
                textEntryView.findViewById(R.id.by_org_header).setVisibility(0);
            }
            if ((r.getConfiguration().uiMode & 5) == 5) {
                dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.server.wifi.p2p.WifiP2pServiceImpl.P2pStateMachine.9
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialog2, int keyCode, KeyEvent event) {
                        if (keyCode == 164) {
                            P2pStateMachine.this.sendMessage(WifiP2pServiceImpl.PEER_CONNECTION_USER_ACCEPT);
                            dialog2.dismiss();
                            return true;
                        }
                        return false;
                    }
                });
            }
            dialog.getWindow().setType(2003);
            WindowManager.LayoutParams attrs = dialog.getWindow().getAttributes();
            attrs.privateFlags = 16;
            dialog.getWindow().setAttributes(attrs);
            dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePersistentNetworks(boolean reload) {
            if (reload) {
                this.mGroups.clear();
            }
            if (this.mWifiNative.p2pListNetworks(this.mGroups) || reload) {
                for (WifiP2pGroup group : this.mGroups.getGroupList()) {
                    if (WifiP2pServiceImpl.this.mThisDevice.deviceAddress.equals(group.getOwner().deviceAddress)) {
                        group.setOwner(WifiP2pServiceImpl.this.mThisDevice);
                    }
                }
                this.mWifiNative.saveConfig();
                WifiP2pServiceImpl.this.mWifiP2pMetrics.updatePersistentGroup(this.mGroups);
                sendP2pPersistentGroupsChangedBroadcast();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isConfigInvalid(WifiP2pConfig config) {
            if (config == null || TextUtils.isEmpty(config.deviceAddress) || this.mPeers.get(config.deviceAddress) == null) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isConfigValidAsGroup(WifiP2pConfig config) {
            if (config == null || TextUtils.isEmpty(config.deviceAddress) || TextUtils.isEmpty(config.networkName) || TextUtils.isEmpty(config.passphrase)) {
                return false;
            }
            return true;
        }

        private WifiP2pDevice fetchCurrentDeviceDetails(WifiP2pConfig config) {
            if (config == null) {
                return null;
            }
            int gc = this.mWifiNative.getGroupCapability(config.deviceAddress);
            this.mPeers.updateGroupCapability(config.deviceAddress, gc);
            return this.mPeers.get(config.deviceAddress);
        }

        private WifiP2pDevice eraseOwnDeviceAddress(WifiP2pDevice device) {
            if (device == null) {
                return null;
            }
            WifiP2pDevice result = new WifiP2pDevice(device);
            if (device.deviceAddress != null && WifiP2pServiceImpl.this.mThisDevice.deviceAddress != null && device.deviceAddress.length() > 0 && WifiP2pServiceImpl.this.mThisDevice.deviceAddress.equals(device.deviceAddress)) {
                result.deviceAddress = WifiP2pServiceImpl.ANONYMIZED_DEVICE_ADDRESS;
            }
            return result;
        }

        private WifiP2pGroup eraseOwnDeviceAddress(WifiP2pGroup group) {
            if (group == null) {
                return null;
            }
            WifiP2pGroup result = new WifiP2pGroup(group);
            for (WifiP2pDevice originalDevice : group.getClientList()) {
                result.removeClient(originalDevice);
                result.addClient(eraseOwnDeviceAddress(originalDevice));
            }
            WifiP2pDevice groupOwner = group.getOwner();
            result.setOwner(eraseOwnDeviceAddress(groupOwner));
            return result;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public WifiP2pDevice maybeEraseOwnDeviceAddress(WifiP2pDevice device, int uid) {
            if (device != null) {
                if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkLocalMacAddressPermission(uid)) {
                    return new WifiP2pDevice(device);
                }
                return eraseOwnDeviceAddress(device);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public WifiP2pGroup maybeEraseOwnDeviceAddress(WifiP2pGroup group, int uid) {
            if (group != null) {
                if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkLocalMacAddressPermission(uid)) {
                    return new WifiP2pGroup(group);
                }
                return eraseOwnDeviceAddress(group);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public WifiP2pGroupList maybeEraseOwnDeviceAddress(WifiP2pGroupList groupList, int uid) {
            if (groupList == null) {
                return null;
            }
            WifiP2pGroupList result = new WifiP2pGroupList();
            for (WifiP2pGroup group : groupList.getGroupList()) {
                result.add(maybeEraseOwnDeviceAddress(group, uid));
            }
            return result;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p2pConnectWithPinDisplay(WifiP2pConfig config) {
            if (config == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                return;
            }
            WifiP2pDevice dev = fetchCurrentDeviceDetails(config);
            if (dev == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Invalid device");
                return;
            }
            String pin = this.mWifiNative.p2pConnect(config, dev.isGroupOwner());
            try {
                Integer.parseInt(pin);
                notifyInvitationSent(pin, config.deviceAddress);
            } catch (NumberFormatException e) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean reinvokePersistentGroup(WifiP2pConfig config) {
            int netId;
            if (config == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                return false;
            }
            WifiP2pDevice dev = fetchCurrentDeviceDetails(config);
            if (dev == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Invalid device");
                return false;
            }
            boolean join = dev.isGroupOwner();
            String ssid = this.mWifiNative.p2pGetSsid(dev.deviceAddress);
            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                logd("target ssid is " + ssid + " join:" + join);
            }
            if (join && dev.isGroupLimit()) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("target device reaches group limit.");
                }
                join = false;
            } else if (join && (netId = this.mGroups.getNetworkId(dev.deviceAddress, ssid)) >= 0) {
                return this.mWifiNative.p2pGroupAdd(netId);
            }
            if (!join && dev.isDeviceLimit()) {
                loge("target device reaches the device limit.");
                return false;
            }
            if (!join && dev.isInvitationCapable()) {
                int netId2 = -2;
                if (config.netId >= 0) {
                    if (config.deviceAddress.equals(this.mGroups.getOwnerAddr(config.netId))) {
                        netId2 = config.netId;
                    }
                } else {
                    netId2 = this.mGroups.getNetworkId(dev.deviceAddress);
                }
                if (netId2 < 0) {
                    netId2 = getNetworkIdFromClientList(dev.deviceAddress);
                }
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("netId related with " + dev.deviceAddress + " = " + netId2);
                }
                if (netId2 >= 0) {
                    if (this.mWifiNative.p2pReinvoke(netId2, dev.deviceAddress)) {
                        config.netId = netId2;
                        return true;
                    }
                    loge("p2pReinvoke() failed, update networks");
                    updatePersistentNetworks(WifiP2pServiceImpl.RELOAD.booleanValue());
                    return false;
                }
            }
            return false;
        }

        private int getNetworkIdFromClientList(String deviceAddress) {
            if (deviceAddress == null) {
                return -1;
            }
            Collection<WifiP2pGroup> groups = this.mGroups.getGroupList();
            for (WifiP2pGroup group : groups) {
                int netId = group.getNetworkId();
                String[] p2pClientList = getClientList(netId);
                if (p2pClientList != null) {
                    for (String client : p2pClientList) {
                        if (deviceAddress.equalsIgnoreCase(client)) {
                            return netId;
                        }
                    }
                }
            }
            return -1;
        }

        private String[] getClientList(int netId) {
            String p2pClients = this.mWifiNative.getP2pClientList(netId);
            if (p2pClients == null) {
                return null;
            }
            return p2pClients.split(" ");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean removeClientFromList(int netId, String addr, boolean isRemovable) {
            StringBuilder modifiedClientList = new StringBuilder();
            String[] currentClientList = getClientList(netId);
            boolean isClientRemoved = false;
            if (currentClientList != null) {
                boolean isClientRemoved2 = false;
                for (String client : currentClientList) {
                    if (!client.equalsIgnoreCase(addr)) {
                        modifiedClientList.append(" ");
                        modifiedClientList.append(client);
                    } else {
                        isClientRemoved2 = true;
                    }
                }
                isClientRemoved = isClientRemoved2;
            }
            if (modifiedClientList.length() == 0 && isRemovable) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("Remove unknown network");
                }
                this.mGroups.remove(netId);
                WifiP2pServiceImpl.this.mWifiP2pMetrics.updatePersistentGroup(this.mGroups);
                return true;
            }
            if (isClientRemoved) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("Modified client list: " + ((Object) modifiedClientList));
                }
                if (modifiedClientList.length() == 0) {
                    modifiedClientList.append("\"\"");
                }
                this.mWifiNative.setP2pClientList(netId, modifiedClientList.toString());
                this.mWifiNative.saveConfig();
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWifiP2pInfoOnGroupFormation(InetAddress serverInetAddress) {
            WifiP2pInfo wifiP2pInfo = this.mWifiP2pInfo;
            wifiP2pInfo.groupFormed = true;
            wifiP2pInfo.isGroupOwner = this.mGroup.isGroupOwner();
            this.mWifiP2pInfo.groupOwnerAddress = serverInetAddress;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetWifiP2pInfo() {
            WifiP2pInfo wifiP2pInfo = this.mWifiP2pInfo;
            wifiP2pInfo.groupFormed = false;
            wifiP2pInfo.isGroupOwner = false;
            wifiP2pInfo.groupOwnerAddress = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getDeviceName(String deviceAddress) {
            WifiP2pDevice d = this.mPeers.get(deviceAddress);
            if (d != null) {
                return d.deviceName;
            }
            return deviceAddress;
        }

        private String getPersistedDeviceName() {
            String deviceName = WifiP2pServiceImpl.this.mFrameworkFacade.getStringSetting(WifiP2pServiceImpl.this.mContext, "wifi_p2p_device_name");
            if (deviceName == null) {
                String id = WifiP2pServiceImpl.this.mFrameworkFacade.getSecureStringSetting(WifiP2pServiceImpl.this.mContext, "android_id");
                String ssid = WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_P2P_CUSTOMIZED_NAME;
                if (ssid != null && ssid.isEmpty()) {
                    return "Android_" + id.substring(0, 4);
                }
                return ssid;
            }
            return deviceName;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean setAndPersistDeviceName(String devName) {
            if (devName == null) {
                return false;
            }
            if (this.mWifiNative.setDeviceName(devName)) {
                WifiP2pServiceImpl.this.mThisDevice.deviceName = devName;
                this.mWifiNative.setP2pSsidPostfix("-" + WifiP2pServiceImpl.this.mThisDevice.deviceName);
                WifiP2pServiceImpl.this.mFrameworkFacade.setStringSetting(WifiP2pServiceImpl.this.mContext, "wifi_p2p_device_name", devName);
                sendThisDeviceChangedBroadcast();
                return true;
            }
            loge("Failed to set device name " + devName);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean setWfdInfo(WifiP2pWfdInfo wfdInfo) {
            boolean success;
            if (!wfdInfo.isWfdEnabled()) {
                success = this.mWifiNative.setWfdEnable(false);
            } else {
                success = this.mWifiNative.setWfdEnable(true) && this.mWifiNative.setWfdDeviceInfo(wfdInfo.getDeviceInfoHex());
            }
            if (success) {
                WifiP2pServiceImpl.this.mThisDevice.wfdInfo = wfdInfo;
                sendThisDeviceChangedBroadcast();
                return true;
            }
            loge("Failed to set wfd properties");
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initializeP2pSettings() {
            WifiP2pServiceImpl.this.mThisDevice.deviceName = getPersistedDeviceName();
            this.mWifiNative.setP2pDeviceName(WifiP2pServiceImpl.this.mThisDevice.deviceName);
            this.mWifiNative.setP2pSsidPostfix("-" + WifiP2pServiceImpl.this.mThisDevice.deviceName);
            this.mWifiNative.setP2pDeviceType(WifiP2pServiceImpl.this.mThisDevice.primaryDeviceType);
            this.mWifiNative.setConfigMethods("virtual_push_button physical_display keypad");
            WifiP2pServiceImpl.this.mThisDevice.deviceAddress = this.mWifiNative.p2pGetDeviceAddress();
            updateThisDevice(3);
            if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                logd("DeviceAddress: " + WifiP2pServiceImpl.this.mThisDevice.deviceAddress);
            }
            this.mWifiNative.p2pFlush();
            this.mWifiNative.p2pServiceFlush();
            WifiP2pServiceImpl.this.mServiceTransactionId = (byte) 0;
            WifiP2pServiceImpl.this.mServiceDiscReqId = null;
            updatePersistentNetworks(WifiP2pServiceImpl.RELOAD.booleanValue());
            enableVerboseLogging(WifiP2pServiceImpl.this.mFrameworkFacade.getIntegerSetting(WifiP2pServiceImpl.this.mContext, "wifi_verbose_logging_enabled", 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateThisDevice(int status) {
            WifiP2pServiceImpl.this.mThisDevice.status = status;
            sendThisDeviceChangedBroadcast();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleGroupCreationFailure() {
            resetWifiP2pInfo();
            WifiP2pServiceImpl.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.FAILED, null, null);
            sendP2pConnectionChangedBroadcast();
            boolean peersChanged = this.mPeers.remove(this.mPeersLostDuringConnection);
            if (!TextUtils.isEmpty(this.mSavedPeerConfig.deviceAddress) && this.mPeers.remove(this.mSavedPeerConfig.deviceAddress) != null) {
                peersChanged = true;
            }
            if (peersChanged) {
                sendPeersChangedBroadcast();
            }
            this.mPeersLostDuringConnection.clear();
            WifiP2pServiceImpl.this.mServiceDiscReqId = null;
            sendMessage(139265);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleGroupRemoved() {
            if (!this.mGroup.isGroupOwner()) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("stop IpClient");
                }
                WifiP2pServiceImpl.this.stopIpClient();
                try {
                    WifiP2pServiceImpl.this.mNwService.removeInterfaceFromLocalNetwork(this.mGroup.getInterface());
                } catch (RemoteException e) {
                    loge("Failed to remove iface from local network " + e);
                }
            } else {
                stopDhcpServer(this.mGroup.getInterface());
            }
            try {
                WifiP2pServiceImpl.this.mNwService.clearInterfaceAddresses(this.mGroup.getInterface());
            } catch (Exception e2) {
                loge("Failed to clear addresses " + e2);
            }
            this.mWifiNative.setP2pGroupIdle(this.mGroup.getInterface(), 0);
            boolean peersChanged = false;
            for (WifiP2pDevice d : this.mGroup.getClientList()) {
                if (this.mPeers.remove(d)) {
                    peersChanged = true;
                }
            }
            if (this.mPeers.remove(this.mGroup.getOwner())) {
                peersChanged = true;
            }
            if (this.mPeers.remove(this.mPeersLostDuringConnection)) {
                peersChanged = true;
            }
            if (peersChanged) {
                sendPeersChangedBroadcast();
            }
            this.mGroup = null;
            this.mPeersLostDuringConnection.clear();
            WifiP2pServiceImpl.this.mServiceDiscReqId = null;
            if (WifiP2pServiceImpl.this.mTemporarilyDisconnectedWifi) {
                if (WifiP2pServiceImpl.this.mWifiChannel != null) {
                    WifiP2pServiceImpl.this.mWifiChannel.sendMessage(WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST, 0);
                } else {
                    loge("handleGroupRemoved(): WifiChannel is null");
                }
                WifiP2pServiceImpl.this.mTemporarilyDisconnectedWifi = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message msg, int what) {
            if (msg.replyTo == null) {
                return;
            }
            Message dstMsg = obtainMessage(msg);
            dstMsg.what = what;
            WifiP2pServiceImpl.this.mReplyChannel.replyToMessage(msg, dstMsg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message msg, int what, int arg1) {
            if (msg.replyTo == null) {
                return;
            }
            Message dstMsg = obtainMessage(msg);
            dstMsg.what = what;
            dstMsg.arg1 = arg1;
            WifiP2pServiceImpl.this.mReplyChannel.replyToMessage(msg, dstMsg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message msg, int what, Object obj) {
            if (msg.replyTo == null) {
                return;
            }
            Message dstMsg = obtainMessage(msg);
            dstMsg.what = what;
            dstMsg.obj = obj;
            WifiP2pServiceImpl.this.mReplyChannel.replyToMessage(msg, dstMsg);
        }

        private Message obtainMessage(Message srcMsg) {
            Message msg = Message.obtain();
            msg.arg2 = srcMsg.arg2;
            return msg;
        }

        protected void logd(String s) {
            Slog.d(WifiP2pServiceImpl.TAG, s);
        }

        protected void loge(String s) {
            Slog.e(WifiP2pServiceImpl.TAG, s);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean updateSupplicantServiceRequest() {
            clearSupplicantServiceRequest();
            StringBuffer sb = new StringBuffer();
            for (ClientInfo c : WifiP2pServiceImpl.this.mClientInfoList.values()) {
                for (int i = 0; i < c.mReqList.size(); i++) {
                    WifiP2pServiceRequest req = (WifiP2pServiceRequest) c.mReqList.valueAt(i);
                    if (req != null) {
                        sb.append(req.getSupplicantQuery());
                    }
                }
            }
            if (sb.length() == 0) {
                return false;
            }
            WifiP2pServiceImpl.this.mServiceDiscReqId = this.mWifiNative.p2pServDiscReq(WifiP2pServiceImpl.EMPTY_DEVICE_ADDRESS, sb.toString());
            return WifiP2pServiceImpl.this.mServiceDiscReqId != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSupplicantServiceRequest() {
            if (WifiP2pServiceImpl.this.mServiceDiscReqId == null) {
                return;
            }
            this.mWifiNative.p2pServDiscCancelReq(WifiP2pServiceImpl.this.mServiceDiscReqId);
            WifiP2pServiceImpl.this.mServiceDiscReqId = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addServiceRequest(Messenger m, WifiP2pServiceRequest req) {
            if (m == null || req == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                return false;
            }
            clearClientDeadChannels();
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null) {
                return false;
            }
            WifiP2pServiceImpl.access$10504(WifiP2pServiceImpl.this);
            if (WifiP2pServiceImpl.this.mServiceTransactionId == 0) {
                WifiP2pServiceImpl.access$10504(WifiP2pServiceImpl.this);
            }
            req.setTransactionId(WifiP2pServiceImpl.this.mServiceTransactionId);
            clientInfo.mReqList.put(WifiP2pServiceImpl.this.mServiceTransactionId, req);
            if (WifiP2pServiceImpl.this.mServiceDiscReqId == null) {
                return true;
            }
            return updateSupplicantServiceRequest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeServiceRequest(Messenger m, WifiP2pServiceRequest req) {
            if (m == null || req == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
            }
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null) {
                return;
            }
            boolean removed = false;
            for (int i = 0; i < clientInfo.mReqList.size(); i++) {
                if (req.equals(clientInfo.mReqList.valueAt(i))) {
                    removed = true;
                    clientInfo.mReqList.removeAt(i);
                    break;
                }
            }
            if (!removed || WifiP2pServiceImpl.this.mServiceDiscReqId == null) {
                return;
            }
            updateSupplicantServiceRequest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearServiceRequests(Messenger m) {
            if (m == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                return;
            }
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null || clientInfo.mReqList.size() == 0) {
                return;
            }
            clientInfo.mReqList.clear();
            if (WifiP2pServiceImpl.this.mServiceDiscReqId == null) {
                return;
            }
            updateSupplicantServiceRequest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addLocalService(Messenger m, WifiP2pServiceInfo servInfo) {
            if (m == null || servInfo == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal arguments");
                return false;
            }
            clearClientDeadChannels();
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null || !clientInfo.mServList.add(servInfo)) {
                return false;
            }
            if (this.mWifiNative.p2pServiceAdd(servInfo)) {
                return true;
            }
            clientInfo.mServList.remove(servInfo);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeLocalService(Messenger m, WifiP2pServiceInfo servInfo) {
            if (m == null || servInfo == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal arguments");
                return;
            }
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null) {
                return;
            }
            this.mWifiNative.p2pServiceDel(servInfo);
            clientInfo.mServList.remove(servInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLocalServices(Messenger m) {
            if (m == null) {
                Log.e(WifiP2pServiceImpl.TAG, "Illegal argument(s)");
                return;
            }
            ClientInfo clientInfo = getClientInfo(m, false);
            if (clientInfo == null) {
                return;
            }
            for (WifiP2pServiceInfo servInfo : clientInfo.mServList) {
                this.mWifiNative.p2pServiceDel(servInfo);
            }
            clientInfo.mServList.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClientInfo(Messenger m) {
            clearLocalServices(m);
            clearServiceRequests(m);
            ClientInfo clientInfo = (ClientInfo) WifiP2pServiceImpl.this.mClientInfoList.remove(m);
            if (clientInfo != null) {
                logd("Client:" + clientInfo.mPackageName + " is removed");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendServiceResponse(WifiP2pServiceResponse resp) {
            if (resp != null) {
                for (ClientInfo c : WifiP2pServiceImpl.this.mClientInfoList.values()) {
                    WifiP2pServiceRequest req = (WifiP2pServiceRequest) c.mReqList.get(resp.getTransactionId());
                    if (req != null) {
                        Message msg = Message.obtain();
                        msg.what = 139314;
                        msg.arg1 = 0;
                        msg.arg2 = 0;
                        msg.obj = resp;
                        if (c.mMessenger == null) {
                            continue;
                        } else {
                            try {
                                c.mMessenger.send(msg);
                            } catch (RemoteException e) {
                                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                                    logd("detect dead channel");
                                }
                                clearClientInfo(c.mMessenger);
                                return;
                            }
                        }
                    }
                }
                return;
            }
            Log.e(WifiP2pServiceImpl.TAG, "sendServiceResponse with null response");
        }

        private void clearClientDeadChannels() {
            ArrayList<Messenger> deadClients = new ArrayList<>();
            for (ClientInfo c : WifiP2pServiceImpl.this.mClientInfoList.values()) {
                Message msg = Message.obtain();
                msg.what = 139313;
                msg.arg1 = 0;
                msg.arg2 = 0;
                msg.obj = null;
                if (c.mMessenger != null) {
                    try {
                        c.mMessenger.send(msg);
                    } catch (RemoteException e) {
                        if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                            logd("detect dead channel");
                        }
                        deadClients.add(c.mMessenger);
                    }
                }
            }
            for (Messenger m : deadClients) {
                clearClientInfo(m);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ClientInfo getClientInfo(Messenger m, boolean createIfNotExist) {
            ClientInfo clientInfo = (ClientInfo) WifiP2pServiceImpl.this.mClientInfoList.get(m);
            if (clientInfo == null && createIfNotExist) {
                if (WifiP2pServiceImpl.this.mVerboseLoggingEnabled) {
                    logd("add a new client");
                }
                ClientInfo clientInfo2 = new ClientInfo(m);
                WifiP2pServiceImpl.this.mClientInfoList.put(m, clientInfo2);
                return clientInfo2;
            }
            return clientInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public WifiP2pDeviceList getPeers(String pkgName, int uid) {
            if (WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkCanAccessWifiDirect(pkgName, uid, true)) {
                return new WifiP2pDeviceList(this.mPeers);
            }
            return new WifiP2pDeviceList();
        }

        private void setPendingFactoryReset(boolean z) {
            WifiP2pServiceImpl.this.mFrameworkFacade.setIntegerSetting(WifiP2pServiceImpl.this.mContext, "wifi_p2p_pending_factory_reset", z ? 1 : 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPendingFactoryReset() {
            int val = WifiP2pServiceImpl.this.mFrameworkFacade.getIntegerSetting(WifiP2pServiceImpl.this.mContext, "wifi_p2p_pending_factory_reset", 0);
            return val != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean factoryReset(int uid) {
            String pkgName = WifiP2pServiceImpl.this.mContext.getPackageManager().getNameForUid(uid);
            UserManager userManager = WifiP2pServiceImpl.this.mWifiInjector.getUserManager();
            if (!WifiP2pServiceImpl.this.mWifiPermissionsUtil.checkNetworkSettingsPermission(uid) || userManager.hasUserRestriction("no_network_reset") || userManager.hasUserRestriction("no_config_wifi")) {
                return false;
            }
            Log.i(WifiP2pServiceImpl.TAG, "factoryReset uid=" + uid + " pkg=" + pkgName);
            if (WifiP2pServiceImpl.this.mNetworkInfo.isAvailable()) {
                if (this.mWifiNative.p2pListNetworks(this.mGroups)) {
                    for (WifiP2pGroup group : this.mGroups.getGroupList()) {
                        this.mWifiNative.removeP2pNetwork(group.getNetworkId());
                    }
                }
                updatePersistentNetworks(true);
                setPendingFactoryReset(false);
            } else {
                setPendingFactoryReset(true);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getCallingPkgName(int uid, Messenger replyMessenger) {
            ClientInfo clientInfo = (ClientInfo) WifiP2pServiceImpl.this.mClientInfoList.get(replyMessenger);
            if (clientInfo == null) {
                if (uid == 1000) {
                    return WifiP2pServiceImpl.this.mContext.getOpPackageName();
                }
                return null;
            }
            return clientInfo.mPackageName;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearServicesForAllClients() {
            for (ClientInfo c : WifiP2pServiceImpl.this.mClientInfoList.values()) {
                clearLocalServices(c.mMessenger);
                clearServiceRequests(c.mMessenger);
            }
        }
    }

    private class ClientInfo {
        private Messenger mMessenger;
        private String mPackageName;
        private SparseArray<WifiP2pServiceRequest> mReqList;
        private List<WifiP2pServiceInfo> mServList;

        private ClientInfo(Messenger m) {
            this.mMessenger = m;
            this.mPackageName = null;
            this.mReqList = new SparseArray<>();
            this.mServList = new ArrayList();
        }
    }
}
