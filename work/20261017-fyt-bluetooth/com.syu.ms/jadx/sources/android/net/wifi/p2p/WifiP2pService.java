package android.net.wifi.p2p;

import android.Manifest;
import android.R;
import android.app.AlertDialog;
import android.app.Notification;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.DhcpResults;
import android.net.DhcpStateMachine;
import android.net.InterfaceConfiguration;
import android.net.LinkAddress;
import android.net.NetworkInfo;
import android.net.NetworkUtils;
import android.net.ProxyProperties;
import android.net.wifi.WifiMonitor;
import android.net.wifi.WifiNative;
import android.net.wifi.WifiStateMachine;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.nsd.WifiP2pServiceInfo;
import android.net.wifi.p2p.nsd.WifiP2pServiceRequest;
import android.net.wifi.p2p.nsd.WifiP2pServiceResponse;
import android.os.Binder;
import android.os.Bundle;
import android.os.INetworkManagementService;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimedRemoteCaller;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import u.b;
import u.l;
import u.m;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pService extends IWifiP2pManager.Stub {
    private static final int BASE = 143360;
    public static final int BLOCK_DISCOVERY = 143375;
    private static final boolean DBG = false;
    private static final String[] DHCP_RANGE;
    public static final int DISABLED = 0;
    public static final int DISABLE_P2P_TIMED_OUT = 143366;
    private static final int DISABLE_P2P_WAIT_TIME_MS = 5000;
    public static final int DISCONNECT_WIFI_REQUEST = 143372;
    public static final int DISCONNECT_WIFI_RESPONSE = 143373;
    private static final int DISCOVER_TIMEOUT_S = 120;
    private static final int DROP_WIFI_USER_ACCEPT = 143364;
    private static final int DROP_WIFI_USER_REJECT = 143365;
    public static final int ENABLED = 1;
    private static final Boolean FORM_GROUP;
    public static final int GROUP_CREATING_TIMED_OUT = 143361;
    private static final int GROUP_CREATING_WAIT_TIME_MS = 120000;
    private static final int GROUP_IDLE_TIME_S = 10;
    private static final Boolean JOIN_GROUP;
    private static final String NETWORKTYPE = "WIFI_P2P";
    private static final Boolean NO_RELOAD;
    public static final int P2P_CONNECTION_CHANGED = 143371;
    private static final int PEER_CONNECTION_USER_ACCEPT = 143362;
    private static final int PEER_CONNECTION_USER_REJECT = 143363;
    private static final Boolean RELOAD;
    private static final String SERVER_ADDRESS = "192.168.49.1";
    public static final int SET_COUNTRY_CODE = 143376;
    public static final int SET_MIRACAST_MODE = 143374;
    private static final String TAG = "WifiP2pService";
    private static int mDisableP2pTimeoutIndex;
    private static int mGroupCreatingTimeoutIndex;
    private boolean mAutonomousGroup;
    private Context mContext;
    private DhcpStateMachine mDhcpStateMachine;
    private boolean mDiscoveryBlocked;
    private boolean mDiscoveryStarted;
    private boolean mJoinExistingGroup;
    private String mLastSetCountryCode;
    private Notification mNotification;
    public INetworkManagementService mNwService;
    private P2pStateMachine mP2pStateMachine;
    private final boolean mP2pSupported;
    private String mServiceDiscReqId;
    private b mWifiChannel;
    private b mReplyChannel = new b();
    private WifiP2pDevice mThisDevice = new WifiP2pDevice();
    private boolean mDiscoveryPostponed = false;
    private boolean mTempoarilyDisconnectedWifi = false;
    private byte mServiceTransactionId = 0;
    private HashMap<Messenger, ClientInfo> mClientInfoList = new HashMap<>();
    private String mInterface = "p2p0";
    private NetworkInfo mNetworkInfo = new NetworkInfo(13, 0, NETWORKTYPE, ProxyProperties.LOCAL_EXCL_LIST);

    public class ClientInfo {
        private Messenger mMessenger;
        private SparseArray<WifiP2pServiceRequest> mReqList;
        private List<WifiP2pServiceInfo> mServList;

        private ClientInfo(Messenger messenger) {
            this.mMessenger = messenger;
            this.mReqList = new SparseArray<>();
            this.mServList = new ArrayList();
        }
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

        public static P2pStatus valueOf(int i2) {
            switch (i2) {
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

    static {
        Boolean bool = Boolean.TRUE;
        JOIN_GROUP = bool;
        Boolean bool2 = Boolean.FALSE;
        FORM_GROUP = bool2;
        RELOAD = bool;
        NO_RELOAD = bool2;
        mGroupCreatingTimeoutIndex = 0;
        mDisableP2pTimeoutIndex = 0;
        DHCP_RANGE = new String[]{"192.168.49.2", "192.168.49.254"};
    }

    public WifiP2pService(Context context) {
        this.mContext = context;
        boolean zHasSystemFeature = this.mContext.getPackageManager().hasSystemFeature(PackageManager.FEATURE_WIFI_DIRECT);
        this.mP2pSupported = zHasSystemFeature;
        this.mThisDevice.primaryDeviceType = this.mContext.getResources().getString(17039386);
        P2pStateMachine p2pStateMachine = new P2pStateMachine(TAG, zHasSystemFeature);
        this.mP2pStateMachine = p2pStateMachine;
        p2pStateMachine.start();
    }

    public static /* synthetic */ byte access$11904(WifiP2pService wifiP2pService) {
        byte b2 = (byte) (wifiP2pService.mServiceTransactionId + 1);
        wifiP2pService.mServiceTransactionId = b2;
        return b2;
    }

    public static /* synthetic */ int access$1304() {
        int i2 = mDisableP2pTimeoutIndex + 1;
        mDisableP2pTimeoutIndex = i2;
        return i2;
    }

    public static /* synthetic */ int access$1704() {
        int i2 = mGroupCreatingTimeoutIndex + 1;
        mGroupCreatingTimeoutIndex = i2;
        return i2;
    }

    private void enforceAccessPermission() {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.ACCESS_WIFI_STATE, TAG);
    }

    private void enforceChangePermission() {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.CHANGE_WIFI_STATE, TAG);
    }

    private void enforceConnectivityInternalPermission() {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.CONNECTIVITY_INTERNAL, TAG);
    }

    public void connectivityServiceReady() {
        this.mNwService = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
    }

    @Override // android.os.Binder
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mContext.checkCallingOrSelfPermission(Manifest.permission.DUMP) != 0) {
            printWriter.println("Permission Denial: can't dump WifiP2pService from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        this.mP2pStateMachine.dump(fileDescriptor, printWriter, strArr);
        printWriter.println("mAutonomousGroup " + this.mAutonomousGroup);
        printWriter.println("mJoinExistingGroup " + this.mJoinExistingGroup);
        printWriter.println("mDiscoveryStarted " + this.mDiscoveryStarted);
        printWriter.println("mNetworkInfo " + this.mNetworkInfo);
        printWriter.println("mTempoarilyDisconnectedWifi " + this.mTempoarilyDisconnectedWifi);
        printWriter.println("mServiceDiscReqId " + this.mServiceDiscReqId);
        printWriter.println();
    }

    @Override // android.net.wifi.p2p.IWifiP2pManager
    public Messenger getMessenger() {
        enforceAccessPermission();
        enforceChangePermission();
        return new Messenger(this.mP2pStateMachine.getHandler());
    }

    @Override // android.net.wifi.p2p.IWifiP2pManager
    public void setMiracastMode(int i2) {
        enforceConnectivityInternalPermission();
        this.mP2pStateMachine.sendMessage(SET_MIRACAST_MODE, i2);
    }

    public class P2pStateMachine extends m {
        private DefaultState mDefaultState;
        private FrequencyConflictState mFrequencyConflictState;
        private WifiP2pGroup mGroup;
        private GroupCreatedState mGroupCreatedState;
        private GroupCreatingState mGroupCreatingState;
        private GroupNegotiationState mGroupNegotiationState;
        private final WifiP2pGroupList mGroups;
        private InactiveState mInactiveState;
        private OngoingGroupRemovalState mOngoingGroupRemovalState;
        private P2pDisabledState mP2pDisabledState;
        private P2pDisablingState mP2pDisablingState;
        private P2pEnabledState mP2pEnabledState;
        private P2pEnablingState mP2pEnablingState;
        private P2pNotSupportedState mP2pNotSupportedState;
        private final WifiP2pDeviceList mPeers;
        private final WifiP2pDeviceList mPeersLostDuringConnection;
        private ProvisionDiscoveryState mProvisionDiscoveryState;
        private WifiP2pGroup mSavedP2pGroup;
        private WifiP2pConfig mSavedPeerConfig;
        private UserAuthorizingInviteRequestState mUserAuthorizingInviteRequestState;
        private UserAuthorizingJoinState mUserAuthorizingJoinState;
        private UserAuthorizingNegotiationRequestState mUserAuthorizingNegotiationRequestState;
        private WifiMonitor mWifiMonitor;
        private WifiNative mWifiNative;
        private final WifiP2pInfo mWifiP2pInfo;

        public class DefaultState extends l {
            public DefaultState() {
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:63:0x0241 A[RETURN] */
            @Override // u.l
            public boolean processMessage(Message message) {
                int i2 = message.what;
                switch (i2) {
                    case 69632:
                        if (message.arg1 == 0) {
                            WifiP2pService.this.mWifiChannel = (b) message.obj;
                        } else {
                            P2pStateMachine.this.loge("Full connection failure, error = " + message.arg1);
                            WifiP2pService.this.mWifiChannel = null;
                        }
                        return true;
                    case 69633:
                        new b().b(WifiP2pService.this.mContext, P2pStateMachine.this.getHandler(), message.replyTo);
                        return true;
                    default:
                        switch (i2) {
                            case 69636:
                                if (message.arg1 == 2) {
                                    P2pStateMachine.this.loge("Send failed, client connection lost");
                                } else {
                                    P2pStateMachine.this.loge("Client connection lost with reason: " + message.arg1);
                                }
                                WifiP2pService.this.mWifiChannel = null;
                                return true;
                            case WifiP2pManager.DISCOVER_PEERS /* 139265 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_FAILED, 2);
                                return true;
                            case WifiP2pManager.STOP_DISCOVERY /* 139268 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_FAILED, 2);
                                return true;
                            case WifiP2pManager.CONNECT /* 139271 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_FAILED, 2);
                                return true;
                            case WifiP2pManager.CANCEL_CONNECT /* 139274 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CANCEL_CONNECT_FAILED, 2);
                                return true;
                            case WifiP2pManager.CREATE_GROUP /* 139277 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CREATE_GROUP_FAILED, 2);
                                return true;
                            case WifiP2pManager.REMOVE_GROUP /* 139280 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_GROUP_FAILED, 2);
                                return true;
                            case WifiP2pManager.REQUEST_PEERS /* 139283 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.RESPONSE_PEERS, new WifiP2pDeviceList(P2pStateMachine.this.mPeers));
                                return true;
                            case WifiP2pManager.REQUEST_CONNECTION_INFO /* 139285 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.RESPONSE_CONNECTION_INFO, new WifiP2pInfo(P2pStateMachine.this.mWifiP2pInfo));
                                return true;
                            case WifiP2pManager.REQUEST_GROUP_INFO /* 139287 */:
                                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                                p2pStateMachine.replyToMessage(message, WifiP2pManager.RESPONSE_GROUP_INFO, p2pStateMachine.mGroup != null ? new WifiP2pGroup(P2pStateMachine.this.mGroup) : null);
                                return true;
                            case WifiP2pManager.ADD_LOCAL_SERVICE /* 139292 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_LOCAL_SERVICE_FAILED, 2);
                                return true;
                            case WifiP2pManager.REMOVE_LOCAL_SERVICE /* 139295 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_LOCAL_SERVICE_FAILED, 2);
                                return true;
                            case WifiP2pManager.CLEAR_LOCAL_SERVICES /* 139298 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_LOCAL_SERVICES_FAILED, 2);
                                return true;
                            case WifiP2pManager.ADD_SERVICE_REQUEST /* 139301 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_SERVICE_REQUEST_FAILED, 2);
                                return true;
                            case WifiP2pManager.REMOVE_SERVICE_REQUEST /* 139304 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_SERVICE_REQUEST_FAILED, 2);
                                return true;
                            case WifiP2pManager.CLEAR_SERVICE_REQUESTS /* 139307 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_SERVICE_REQUESTS_FAILED, 2);
                                return true;
                            case WifiP2pManager.DISCOVER_SERVICES /* 139310 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_FAILED, 2);
                                return true;
                            case WifiP2pManager.SET_DEVICE_NAME /* 139315 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_DEVICE_NAME_FAILED, 2);
                                return true;
                            case WifiP2pManager.DELETE_PERSISTENT_GROUP /* 139318 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DELETE_PERSISTENT_GROUP, 2);
                                return true;
                            case WifiP2pManager.REQUEST_PERSISTENT_GROUP_INFO /* 139321 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.RESPONSE_PERSISTENT_GROUP_INFO, new WifiP2pGroupList(P2pStateMachine.this.mGroups, null));
                                return true;
                            case WifiP2pManager.SET_WFD_INFO /* 139323 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_WFD_INFO_FAILED, 2);
                                return true;
                            case WifiP2pManager.START_WPS /* 139326 */:
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_WPS_FAILED, 2);
                                return true;
                            case WifiP2pManager.START_LISTEN /* 139329 */:
                            case WifiP2pManager.STOP_LISTEN /* 139332 */:
                            case WifiP2pManager.SET_CHANNEL /* 139335 */:
                            case WifiMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                                return true;
                            default:
                                switch (i2) {
                                    case WifiStateMachine.CMD_ENABLE_P2P /* 131203 */:
                                        return true;
                                    case WifiStateMachine.CMD_DISABLE_P2P_REQ /* 131204 */:
                                        WifiP2pService.this.mWifiChannel.k(WifiStateMachine.CMD_DISABLE_P2P_RSP);
                                        return true;
                                    default:
                                        switch (i2) {
                                            default:
                                                switch (i2) {
                                                    case WifiP2pService.DISCONNECT_WIFI_RESPONSE /* 143373 */:
                                                    case WifiP2pService.SET_MIRACAST_MODE /* 143374 */:
                                                    case WifiP2pService.SET_COUNTRY_CODE /* 143376 */:
                                                        break;
                                                    case WifiP2pService.BLOCK_DISCOVERY /* 143375 */:
                                                        WifiP2pService.this.mDiscoveryBlocked = message.arg1 == 1;
                                                        WifiP2pService.this.mDiscoveryPostponed = false;
                                                        if (WifiP2pService.this.mDiscoveryBlocked) {
                                                            try {
                                                                ((m) message.obj).sendMessage(message.arg2);
                                                            } catch (Exception e2) {
                                                                P2pStateMachine.this.loge("unable to send BLOCK_DISCOVERY response: " + e2);
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        switch (i2) {
                                                            default:
                                                                switch (i2) {
                                                                    default:
                                                                        switch (i2) {
                                                                            case WifiMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                                                                            case WifiMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                                                                                break;
                                                                            case WifiMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                                                                                P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                                                                                P2pStateMachine.this.loge("Unexpected group creation, remove " + P2pStateMachine.this.mGroup);
                                                                                P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                                                                                break;
                                                                            default:
                                                                                switch (i2) {
                                                                                    default:
                                                                                        switch (i2) {
                                                                                            case DhcpStateMachine.CMD_PRE_DHCP_ACTION /* 196612 */:
                                                                                            case DhcpStateMachine.CMD_POST_DHCP_ACTION /* 196613 */:
                                                                                            case DhcpStateMachine.CMD_ON_QUIT /* 196614 */:
                                                                                                break;
                                                                                            default:
                                                                                                P2pStateMachine.this.loge("Unhandled message " + message);
                                                                                                return false;
                                                                                        }
                                                                                    case WifiMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                                                                                    case WifiMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                                                                                    case WifiMonitor.P2P_PROV_DISC_FAILURE_EVENT /* 147495 */:
                                                                                        return true;
                                                                                }
                                                                                break;
                                                                        }
                                                                    case WifiMonitor.P2P_DEVICE_FOUND_EVENT /* 147477 */:
                                                                    case WifiMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                                                                        return true;
                                                                }
                                                            case WifiMonitor.SUP_CONNECTION_EVENT /* 147457 */:
                                                            case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                                                            case WifiMonitor.NETWORK_CONNECTION_EVENT /* 147459 */:
                                                            case WifiMonitor.NETWORK_DISCONNECTION_EVENT /* 147460 */:
                                                            case WifiMonitor.SCAN_RESULTS_EVENT /* 147461 */:
                                                            case WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT /* 147462 */:
                                                            case WifiMonitor.AUTHENTICATION_FAILURE_EVENT /* 147463 */:
                                                            case WifiMonitor.WPS_SUCCESS_EVENT /* 147464 */:
                                                            case WifiMonitor.WPS_FAIL_EVENT /* 147465 */:
                                                            case WifiMonitor.WPS_OVERLAP_EVENT /* 147466 */:
                                                            case WifiMonitor.WPS_TIMEOUT_EVENT /* 147467 */:
                                                                return true;
                                                        }
                                                        break;
                                                }
                                            case WifiP2pService.GROUP_CREATING_TIMED_OUT /* 143361 */:
                                            case WifiP2pService.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                                            case WifiP2pService.PEER_CONNECTION_USER_REJECT /* 143363 */:
                                            case WifiP2pService.DROP_WIFI_USER_ACCEPT /* 143364 */:
                                            case WifiP2pService.DROP_WIFI_USER_REJECT /* 143365 */:
                                            case WifiP2pService.DISABLE_P2P_TIMED_OUT /* 143366 */:
                                                return true;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
        }

        public class FrequencyConflictState extends l {
            private AlertDialog mFrequencyConflictDialog;

            public FrequencyConflictState() {
            }

            private void notifyFrequencyConflict() {
                P2pStateMachine.this.logd("Notify frequency conflict");
                Resources system = Resources.getSystem();
                AlertDialog.Builder builder = new AlertDialog.Builder(WifiP2pService.this.mContext);
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                AlertDialog alertDialogCreate = builder.setMessage(system.getString(17040455, p2pStateMachine.getDeviceName(p2pStateMachine.mSavedPeerConfig.deviceAddress))).setPositiveButton(system.getString(17040500), new DialogInterface.OnClickListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.FrequencyConflictState.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        P2pStateMachine.this.sendMessage(WifiP2pService.DROP_WIFI_USER_ACCEPT);
                    }
                }).setNegativeButton(system.getString(17040448), new DialogInterface.OnClickListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.FrequencyConflictState.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        P2pStateMachine.this.sendMessage(WifiP2pService.DROP_WIFI_USER_REJECT);
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.FrequencyConflictState.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        P2pStateMachine.this.sendMessage(WifiP2pService.DROP_WIFI_USER_REJECT);
                    }
                }).create();
                alertDialogCreate.getWindow().setType(2003);
                alertDialogCreate.show();
                this.mFrequencyConflictDialog = alertDialogCreate;
            }

            @Override // u.l
            public void enter() {
                notifyFrequencyConflict();
            }

            @Override // u.l
            public void exit() {
                AlertDialog alertDialog = this.mFrequencyConflictDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // u.l
            public boolean processMessage(Message message) {
                int i2 = message.what;
                if (i2 != 143373) {
                    switch (i2) {
                        case WifiP2pService.DROP_WIFI_USER_ACCEPT /* 143364 */:
                            WifiP2pService.this.mWifiChannel.l(WifiP2pService.DISCONNECT_WIFI_REQUEST, 1);
                            WifiP2pService.this.mTempoarilyDisconnectedWifi = true;
                            break;
                        case WifiP2pService.DROP_WIFI_USER_REJECT /* 143365 */:
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                            break;
                        default:
                            switch (i2) {
                                case WifiMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT /* 147481 */:
                                case WifiMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT /* 147483 */:
                                    P2pStateMachine.this.loge(getName() + "group sucess during freq conflict!");
                                    break;
                                case WifiMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT /* 147482 */:
                                case WifiMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                                case WifiMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                                    break;
                                case WifiMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
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
                    P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                    p2pStateMachine3.transitionTo(p2pStateMachine3.mInactiveState);
                    P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                    p2pStateMachine4.sendMessage(WifiP2pManager.CONNECT, p2pStateMachine4.mSavedPeerConfig);
                }
                return true;
            }
        }

        public class GroupCreatedState extends l {
            public GroupCreatedState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.mSavedPeerConfig.invalidate();
                WifiP2pService.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.CONNECTED, null, null);
                P2pStateMachine.this.updateThisDevice(0);
                if (P2pStateMachine.this.mGroup.isGroupOwner()) {
                    P2pStateMachine.this.setWifiP2pInfoOnGroupFormation(NetworkUtils.numericToInetAddress(WifiP2pService.SERVER_ADDRESS));
                }
                if (WifiP2pService.this.mAutonomousGroup) {
                    P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                }
            }

            @Override // u.l
            public void exit() {
                P2pStateMachine.this.updateThisDevice(3);
                P2pStateMachine.this.resetWifiP2pInfo();
                WifiP2pService.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
                P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                boolean zStartWpsPinKeypad;
                int networkId;
                boolean z2 = false;
                switch (message.what) {
                    case WifiStateMachine.CMD_DISABLE_P2P_REQ /* 131204 */:
                        P2pStateMachine.this.sendMessage(WifiP2pManager.REMOVE_GROUP);
                        P2pStateMachine.this.deferMessage(message);
                        return true;
                    case WifiP2pManager.CONNECT /* 139271 */:
                        WifiP2pConfig wifiP2pConfig = (WifiP2pConfig) message.obj;
                        if (P2pStateMachine.this.isConfigInvalid(wifiP2pConfig)) {
                            P2pStateMachine.this.loge("Dropping connect requeset " + wifiP2pConfig);
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_FAILED);
                        } else {
                            P2pStateMachine.this.logd("Inviting device : " + wifiP2pConfig.deviceAddress);
                            P2pStateMachine.this.mSavedPeerConfig = wifiP2pConfig;
                            if (P2pStateMachine.this.mWifiNative.p2pInvite(P2pStateMachine.this.mGroup, wifiP2pConfig.deviceAddress)) {
                                P2pStateMachine.this.mPeers.updateStatus(wifiP2pConfig.deviceAddress, 1);
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_SUCCEEDED);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_FAILED, 0);
                            }
                        }
                        return true;
                    case WifiP2pManager.REMOVE_GROUP /* 139280 */:
                        if (P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface())) {
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mOngoingGroupRemovalState);
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_GROUP_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.handleGroupRemoved();
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mInactiveState);
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_GROUP_FAILED, 0);
                        }
                        return true;
                    case WifiP2pManager.START_WPS /* 139326 */:
                        WpsInfo wpsInfo = (WpsInfo) message.obj;
                        int i2 = WifiP2pManager.START_WPS_FAILED;
                        if (wpsInfo == null) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_WPS_FAILED);
                        } else {
                            if (wpsInfo.setup == 0) {
                                zStartWpsPinKeypad = P2pStateMachine.this.mWifiNative.startWpsPbc(P2pStateMachine.this.mGroup.getInterface(), null);
                            } else if (wpsInfo.pin == null) {
                                String strStartWpsPinDisplay = P2pStateMachine.this.mWifiNative.startWpsPinDisplay(P2pStateMachine.this.mGroup.getInterface());
                                try {
                                    Integer.parseInt(strStartWpsPinDisplay);
                                    P2pStateMachine.this.notifyInvitationSent(strStartWpsPinDisplay, "any");
                                    z2 = true;
                                } catch (NumberFormatException unused) {
                                }
                                zStartWpsPinKeypad = z2;
                            } else {
                                zStartWpsPinKeypad = P2pStateMachine.this.mWifiNative.startWpsPinKeypad(P2pStateMachine.this.mGroup.getInterface(), wpsInfo.pin);
                            }
                            P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                            if (zStartWpsPinKeypad) {
                                i2 = WifiP2pManager.START_WPS_SUCCEEDED;
                            }
                            p2pStateMachine3.replyToMessage(message, i2);
                        }
                        return true;
                    case WifiMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) message.obj;
                        if (!P2pStateMachine.this.mGroup.contains(wifiP2pDevice)) {
                            return false;
                        }
                        P2pStateMachine.this.mPeersLostDuringConnection.updateSupplicantDetails(wifiP2pDevice);
                        return true;
                    case WifiMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        P2pStateMachine.this.loge("Duplicate group creation event notice, ignore");
                        return true;
                    case WifiMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                        P2pStateMachine.this.handleGroupRemoved();
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.transitionTo(p2pStateMachine4.mInactiveState);
                        return true;
                    case WifiMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                        P2pStatus p2pStatus = (P2pStatus) message.obj;
                        if (p2pStatus != P2pStatus.SUCCESS) {
                            P2pStateMachine.this.loge("Invitation result " + p2pStatus);
                            if (p2pStatus == P2pStatus.UNKNOWN_P2P_GROUP && (networkId = P2pStateMachine.this.mGroup.getNetworkId()) >= 0) {
                                P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                                if (p2pStateMachine5.removeClientFromList(networkId, p2pStateMachine5.mSavedPeerConfig.deviceAddress, false)) {
                                    P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                                    p2pStateMachine6.sendMessage(WifiP2pManager.CONNECT, p2pStateMachine6.mSavedPeerConfig);
                                } else {
                                    P2pStateMachine.this.loge("Already removed the client, ignore");
                                }
                            }
                        }
                        return true;
                    case WifiMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                    case WifiMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        WifiP2pProvDiscEvent wifiP2pProvDiscEvent = (WifiP2pProvDiscEvent) message.obj;
                        P2pStateMachine.this.mSavedPeerConfig = new WifiP2pConfig();
                        P2pStateMachine.this.mSavedPeerConfig.deviceAddress = wifiP2pProvDiscEvent.device.deviceAddress;
                        int i3 = message.what;
                        if (i3 == 147491) {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                        } else if (i3 == 147492) {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                            P2pStateMachine.this.mSavedPeerConfig.wps.pin = wifiP2pProvDiscEvent.pin;
                        } else {
                            P2pStateMachine.this.mSavedPeerConfig.wps.setup = 0;
                        }
                        P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                        p2pStateMachine7.transitionTo(p2pStateMachine7.mUserAuthorizingJoinState);
                        return true;
                    case WifiMonitor.AP_STA_DISCONNECTED_EVENT /* 147497 */:
                        WifiP2pDevice wifiP2pDevice2 = (WifiP2pDevice) message.obj;
                        String str = wifiP2pDevice2.deviceAddress;
                        if (str != null) {
                            P2pStateMachine.this.mPeers.updateStatus(str, 3);
                            if (!P2pStateMachine.this.mGroup.removeClient(str)) {
                                for (WifiP2pDevice wifiP2pDevice3 : P2pStateMachine.this.mGroup.getClientList()) {
                                }
                            } else if (WifiP2pService.this.mAutonomousGroup || !P2pStateMachine.this.mGroup.isClientListEmpty()) {
                                P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                            } else {
                                P2pStateMachine.this.logd("Client list empty, remove non-persistent p2p group");
                                P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                            }
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        } else {
                            P2pStateMachine.this.loge("Disconnect on unknown device: " + wifiP2pDevice2);
                        }
                        return true;
                    case WifiMonitor.AP_STA_CONNECTED_EVENT /* 147498 */:
                        String str2 = ((WifiP2pDevice) message.obj).deviceAddress;
                        P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 0);
                        if (str2 != null) {
                            if (P2pStateMachine.this.mPeers.get(str2) != null) {
                                P2pStateMachine.this.mGroup.addClient(P2pStateMachine.this.mPeers.get(str2));
                            } else {
                                P2pStateMachine.this.mGroup.addClient(str2);
                            }
                            P2pStateMachine.this.mPeers.updateStatus(str2, 0);
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        } else {
                            P2pStateMachine.this.loge("Connect on null device address, ignore");
                        }
                        P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                        return true;
                    case DhcpStateMachine.CMD_POST_DHCP_ACTION /* 196613 */:
                        DhcpResults dhcpResults = (DhcpResults) message.obj;
                        if (message.arg1 != 1 || dhcpResults == null) {
                            P2pStateMachine.this.loge("DHCP failed");
                            P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                        } else {
                            P2pStateMachine.this.setWifiP2pInfoOnGroupFormation(dhcpResults.serverAddress);
                            P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                            P2pStateMachine.this.mWifiNative.setP2pPowerSave(P2pStateMachine.this.mGroup.getInterface(), true);
                        }
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class GroupCreatingState extends l {
            public GroupCreatingState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.sendMessageDelayed(p2pStateMachine.obtainMessage(WifiP2pService.GROUP_CREATING_TIMED_OUT, WifiP2pService.access$1704(), 0), 120000L);
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiP2pManager.DISCOVER_PEERS /* 139265 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_FAILED, 2);
                        return true;
                    case WifiP2pManager.CANCEL_CONNECT /* 139274 */:
                        P2pStateMachine.this.mWifiNative.p2pCancelConnect();
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CANCEL_CONNECT_SUCCEEDED);
                        return true;
                    case WifiP2pService.GROUP_CREATING_TIMED_OUT /* 143361 */:
                        if (WifiP2pService.mGroupCreatingTimeoutIndex == message.arg1) {
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mInactiveState);
                        }
                        return true;
                    case WifiMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) message.obj;
                        if (!P2pStateMachine.this.mSavedPeerConfig.deviceAddress.equals(wifiP2pDevice.deviceAddress)) {
                            return false;
                        }
                        P2pStateMachine.this.mPeersLostDuringConnection.updateSupplicantDetails(wifiP2pDevice);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class GroupNegotiationState extends l {
            public GroupNegotiationState() {
            }

            @Override // u.l
            public void enter() {
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:41:0x01cd  */
            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiMonitor.P2P_GO_NEGOTIATION_SUCCESS_EVENT /* 147481 */:
                    case WifiMonitor.P2P_GROUP_FORMATION_SUCCESS_EVENT /* 147483 */:
                        return true;
                    case WifiMonitor.P2P_GO_NEGOTIATION_FAILURE_EVENT /* 147482 */:
                        if (((P2pStatus) message.obj) == P2pStatus.NO_COMMON_CHANNEL) {
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.transitionTo(p2pStateMachine.mFrequencyConflictState);
                        } else {
                            P2pStateMachine.this.handleGroupCreationFailure();
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mInactiveState);
                        }
                        return true;
                    case WifiMonitor.P2P_GROUP_FORMATION_FAILURE_EVENT /* 147484 */:
                        if (((P2pStatus) message.obj) == P2pStatus.NO_COMMON_CHANNEL) {
                            P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                            p2pStateMachine3.transitionTo(p2pStateMachine3.mFrequencyConflictState);
                        }
                        return true;
                    case WifiMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                        if (P2pStateMachine.this.mGroup.getNetworkId() == -2) {
                            P2pStateMachine.this.updatePersistentNetworks(WifiP2pService.NO_RELOAD.booleanValue());
                            P2pStateMachine.this.mGroup.setNetworkId(P2pStateMachine.this.mGroups.getNetworkId(P2pStateMachine.this.mGroup.getOwner().deviceAddress, P2pStateMachine.this.mGroup.getNetworkName()));
                        }
                        if (P2pStateMachine.this.mGroup.isGroupOwner()) {
                            if (!WifiP2pService.this.mAutonomousGroup) {
                                P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 10);
                            }
                            P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                            p2pStateMachine4.startDhcpServer(p2pStateMachine4.mGroup.getInterface());
                        } else {
                            P2pStateMachine.this.mWifiNative.setP2pGroupIdle(P2pStateMachine.this.mGroup.getInterface(), 10);
                            WifiP2pService wifiP2pService = WifiP2pService.this;
                            Context context = wifiP2pService.mContext;
                            P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                            wifiP2pService.mDhcpStateMachine = DhcpStateMachine.makeDhcpStateMachine(context, p2pStateMachine5, p2pStateMachine5.mGroup.getInterface());
                            P2pStateMachine.this.mWifiNative.setP2pPowerSave(P2pStateMachine.this.mGroup.getInterface(), false);
                            WifiP2pService.this.mDhcpStateMachine.sendMessage(DhcpStateMachine.CMD_START_DHCP);
                            WifiP2pDevice owner = P2pStateMachine.this.mGroup.getOwner();
                            WifiP2pDevice wifiP2pDevice = P2pStateMachine.this.mPeers.get(owner.deviceAddress);
                            if (wifiP2pDevice != null) {
                                owner.updateSupplicantDetails(wifiP2pDevice);
                                P2pStateMachine.this.mPeers.updateStatus(owner.deviceAddress, 0);
                                P2pStateMachine.this.sendPeersChangedBroadcast();
                            } else {
                                P2pStateMachine.this.logw("Unknown group owner " + owner);
                            }
                        }
                        P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                        p2pStateMachine6.transitionTo(p2pStateMachine6.mGroupCreatedState);
                        return true;
                    case WifiMonitor.P2P_GROUP_REMOVED_EVENT /* 147486 */:
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                        p2pStateMachine7.transitionTo(p2pStateMachine7.mInactiveState);
                        return true;
                    case WifiMonitor.P2P_INVITATION_RECEIVED_EVENT /* 147487 */:
                    default:
                        return false;
                    case WifiMonitor.P2P_INVITATION_RESULT_EVENT /* 147488 */:
                        P2pStatus p2pStatus = (P2pStatus) message.obj;
                        if (p2pStatus != P2pStatus.SUCCESS) {
                            P2pStateMachine.this.loge("Invitation result " + p2pStatus);
                            if (p2pStatus == P2pStatus.UNKNOWN_P2P_GROUP) {
                                int i2 = P2pStateMachine.this.mSavedPeerConfig.netId;
                                if (i2 >= 0) {
                                    P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                                    p2pStateMachine8.removeClientFromList(i2, p2pStateMachine8.mSavedPeerConfig.deviceAddress, true);
                                }
                                P2pStateMachine.this.mSavedPeerConfig.netId = -2;
                                P2pStateMachine p2pStateMachine9 = P2pStateMachine.this;
                                p2pStateMachine9.p2pConnectWithPinDisplay(p2pStateMachine9.mSavedPeerConfig);
                            } else if (p2pStatus == P2pStatus.INFORMATION_IS_CURRENTLY_UNAVAILABLE) {
                                P2pStateMachine.this.mSavedPeerConfig.netId = -2;
                                P2pStateMachine p2pStateMachine10 = P2pStateMachine.this;
                                p2pStateMachine10.p2pConnectWithPinDisplay(p2pStateMachine10.mSavedPeerConfig);
                            } else if (p2pStatus == P2pStatus.NO_COMMON_CHANNEL) {
                                P2pStateMachine p2pStateMachine11 = P2pStateMachine.this;
                                p2pStateMachine11.transitionTo(p2pStateMachine11.mFrequencyConflictState);
                            } else {
                                P2pStateMachine.this.handleGroupCreationFailure();
                                P2pStateMachine p2pStateMachine12 = P2pStateMachine.this;
                                p2pStateMachine12.transitionTo(p2pStateMachine12.mInactiveState);
                            }
                        }
                        return true;
                }
            }
        }

        public class InactiveState extends l {
            public InactiveState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.mSavedPeerConfig.invalidate();
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // u.l
            public boolean processMessage(Message message) {
                boolean zP2pGroupAdd;
                switch (message.what) {
                    case WifiP2pManager.STOP_DISCOVERY /* 139268 */:
                        if (P2pStateMachine.this.mWifiNative.p2pStopFind()) {
                            P2pStateMachine.this.mWifiNative.p2pFlush();
                            WifiP2pService.this.mServiceDiscReqId = null;
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_FAILED, 0);
                        }
                        return true;
                    case WifiP2pManager.CONNECT /* 139271 */:
                        WifiP2pConfig wifiP2pConfig = (WifiP2pConfig) message.obj;
                        if (P2pStateMachine.this.isConfigInvalid(wifiP2pConfig)) {
                            P2pStateMachine.this.loge("Dropping connect requeset " + wifiP2pConfig);
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_FAILED);
                        } else {
                            WifiP2pService.this.mAutonomousGroup = false;
                            P2pStateMachine.this.mWifiNative.p2pStopFind();
                            if (P2pStateMachine.this.reinvokePersistentGroup(wifiP2pConfig)) {
                                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                                p2pStateMachine.transitionTo(p2pStateMachine.mGroupNegotiationState);
                            } else {
                                P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                                p2pStateMachine2.transitionTo(p2pStateMachine2.mProvisionDiscoveryState);
                            }
                            P2pStateMachine.this.mSavedPeerConfig = wifiP2pConfig;
                            P2pStateMachine.this.mPeers.updateStatus(P2pStateMachine.this.mSavedPeerConfig.deviceAddress, 1);
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_SUCCEEDED);
                        }
                        return true;
                    case WifiP2pManager.CREATE_GROUP /* 139277 */:
                        WifiP2pService.this.mAutonomousGroup = true;
                        if (message.arg1 == -2) {
                            int networkId = P2pStateMachine.this.mGroups.getNetworkId(WifiP2pService.this.mThisDevice.deviceAddress);
                            zP2pGroupAdd = networkId != -1 ? P2pStateMachine.this.mWifiNative.p2pGroupAdd(networkId) : P2pStateMachine.this.mWifiNative.p2pGroupAdd(true);
                        } else {
                            zP2pGroupAdd = P2pStateMachine.this.mWifiNative.p2pGroupAdd(false);
                        }
                        if (zP2pGroupAdd) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CREATE_GROUP_SUCCEEDED);
                            P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                            p2pStateMachine3.transitionTo(p2pStateMachine3.mGroupNegotiationState);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CREATE_GROUP_FAILED, 0);
                        }
                        return true;
                    case WifiP2pManager.START_LISTEN /* 139329 */:
                        P2pStateMachine.this.mWifiNative.p2pFlush();
                        if (P2pStateMachine.this.mWifiNative.p2pExtListen(true, 500, 500)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_LISTEN_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_LISTEN_FAILED);
                        }
                        return true;
                    case WifiP2pManager.STOP_LISTEN /* 139332 */:
                        if (P2pStateMachine.this.mWifiNative.p2pExtListen(false, 0, 0)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_LISTEN_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_LISTEN_FAILED);
                        }
                        P2pStateMachine.this.mWifiNative.p2pFlush();
                        return true;
                    case WifiP2pManager.SET_CHANNEL /* 139335 */:
                        Bundle bundle = (Bundle) message.obj;
                        if (P2pStateMachine.this.mWifiNative.p2pSetChannel(bundle.getInt("lc", 0), bundle.getInt("oc", 0))) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_CHANNEL_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_CHANNEL_FAILED);
                        }
                        return true;
                    case WifiMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT /* 147479 */:
                        WifiP2pConfig wifiP2pConfig2 = (WifiP2pConfig) message.obj;
                        if (P2pStateMachine.this.isConfigInvalid(wifiP2pConfig2)) {
                            P2pStateMachine.this.loge("Dropping GO neg request " + wifiP2pConfig2);
                        } else {
                            P2pStateMachine.this.mSavedPeerConfig = wifiP2pConfig2;
                            WifiP2pService.this.mAutonomousGroup = false;
                            WifiP2pService.this.mJoinExistingGroup = false;
                            P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                            p2pStateMachine4.transitionTo(p2pStateMachine4.mUserAuthorizingNegotiationRequestState);
                        }
                        return true;
                    case WifiMonitor.P2P_GROUP_STARTED_EVENT /* 147485 */:
                        P2pStateMachine.this.mGroup = (WifiP2pGroup) message.obj;
                        if (P2pStateMachine.this.mGroup.getNetworkId() == -2) {
                            WifiP2pService.this.mAutonomousGroup = false;
                            P2pStateMachine.this.deferMessage(message);
                            P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                            p2pStateMachine5.transitionTo(p2pStateMachine5.mGroupNegotiationState);
                        } else {
                            P2pStateMachine.this.loge("Unexpected group creation, remove " + P2pStateMachine.this.mGroup);
                            P2pStateMachine.this.mWifiNative.p2pGroupRemove(P2pStateMachine.this.mGroup.getInterface());
                        }
                        return true;
                    case WifiMonitor.P2P_INVITATION_RECEIVED_EVENT /* 147487 */:
                        WifiP2pGroup wifiP2pGroup = (WifiP2pGroup) message.obj;
                        WifiP2pDevice owner = wifiP2pGroup.getOwner();
                        if (owner == null) {
                            P2pStateMachine.this.loge("Ignored invitation from null owner");
                        } else {
                            WifiP2pConfig wifiP2pConfig3 = new WifiP2pConfig();
                            wifiP2pConfig3.deviceAddress = wifiP2pGroup.getOwner().deviceAddress;
                            if (P2pStateMachine.this.isConfigInvalid(wifiP2pConfig3)) {
                                P2pStateMachine.this.loge("Dropping invitation request " + wifiP2pConfig3);
                            } else {
                                P2pStateMachine.this.mSavedPeerConfig = wifiP2pConfig3;
                                WifiP2pDevice wifiP2pDevice = P2pStateMachine.this.mPeers.get(owner.deviceAddress);
                                if (wifiP2pDevice != null) {
                                    if (wifiP2pDevice.wpsPbcSupported()) {
                                        P2pStateMachine.this.mSavedPeerConfig.wps.setup = 0;
                                    } else if (wifiP2pDevice.wpsKeypadSupported()) {
                                        P2pStateMachine.this.mSavedPeerConfig.wps.setup = 2;
                                    } else if (wifiP2pDevice.wpsDisplaySupported()) {
                                        P2pStateMachine.this.mSavedPeerConfig.wps.setup = 1;
                                    }
                                }
                                WifiP2pService.this.mAutonomousGroup = false;
                                WifiP2pService.this.mJoinExistingGroup = true;
                                P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                                p2pStateMachine6.transitionTo(p2pStateMachine6.mUserAuthorizingInviteRequestState);
                            }
                        }
                        return true;
                    case WifiMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                    case WifiMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class OngoingGroupRemovalState extends l {
            public OngoingGroupRemovalState() {
            }

            @Override // u.l
            public void enter() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                if (message.what != 139280) {
                    return false;
                }
                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_GROUP_SUCCEEDED);
                return true;
            }
        }

        public class P2pDisabledState extends l {
            public P2pDisabledState() {
            }

            @Override // u.l
            public void enter() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                if (message.what != 131203) {
                    return false;
                }
                try {
                    WifiP2pService wifiP2pService = WifiP2pService.this;
                    wifiP2pService.mNwService.setInterfaceUp(wifiP2pService.mInterface);
                } catch (RemoteException e2) {
                    P2pStateMachine.this.loge("Unable to change interface settings: " + e2);
                } catch (IllegalStateException e3) {
                    P2pStateMachine.this.loge("Unable to change interface settings: " + e3);
                }
                P2pStateMachine.this.mWifiMonitor.startMonitoring();
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.transitionTo(p2pStateMachine.mP2pEnablingState);
                return true;
            }
        }

        public class P2pDisablingState extends l {
            public P2pDisablingState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                p2pStateMachine.sendMessageDelayed(p2pStateMachine.obtainMessage(WifiP2pService.DISABLE_P2P_TIMED_OUT, WifiP2pService.access$1304(), 0), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
            }

            @Override // u.l
            public void exit() {
                WifiP2pService.this.mWifiChannel.k(WifiStateMachine.CMD_DISABLE_P2P_RSP);
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiStateMachine.CMD_ENABLE_P2P /* 131203 */:
                    case WifiStateMachine.CMD_DISABLE_P2P_REQ /* 131204 */:
                        P2pStateMachine.this.deferMessage(message);
                        return true;
                    case WifiP2pService.DISABLE_P2P_TIMED_OUT /* 143366 */:
                        if (WifiP2pService.mGroupCreatingTimeoutIndex != message.arg1) {
                            return true;
                        }
                        P2pStateMachine.this.loge("P2p disable timed out");
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mP2pDisabledState);
                        return true;
                    case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mP2pDisabledState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class P2pEnabledState extends l {
            public P2pEnabledState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.sendP2pStateChangedBroadcast(true);
                WifiP2pService.this.mNetworkInfo.setIsAvailable(true);
                P2pStateMachine.this.sendP2pConnectionChangedBroadcast();
                P2pStateMachine.this.initializeP2pSettings();
            }

            @Override // u.l
            public void exit() {
                P2pStateMachine.this.sendP2pStateChangedBroadcast(false);
                WifiP2pService.this.mNetworkInfo.setIsAvailable(false);
                WifiP2pService.this.mLastSetCountryCode = null;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiStateMachine.CMD_ENABLE_P2P /* 131203 */:
                        return true;
                    case WifiStateMachine.CMD_DISABLE_P2P_REQ /* 131204 */:
                        if (P2pStateMachine.this.mPeers.clear()) {
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        }
                        if (P2pStateMachine.this.mGroups.clear()) {
                            P2pStateMachine.this.sendP2pPersistentGroupsChangedBroadcast();
                        }
                        P2pStateMachine.this.mWifiMonitor.stopMonitoring();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mP2pDisablingState);
                        return true;
                    case WifiP2pManager.DISCOVER_PEERS /* 139265 */:
                        if (WifiP2pService.this.mDiscoveryBlocked) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_FAILED, 2);
                        } else {
                            P2pStateMachine.this.clearSupplicantServiceRequest();
                            if (P2pStateMachine.this.mWifiNative.p2pFind(120)) {
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_SUCCEEDED);
                                P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(true);
                            } else {
                                P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_FAILED, 0);
                            }
                        }
                        return true;
                    case WifiP2pManager.STOP_DISCOVERY /* 139268 */:
                        if (P2pStateMachine.this.mWifiNative.p2pStopFind()) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_FAILED, 0);
                        }
                        return true;
                    case WifiP2pManager.ADD_LOCAL_SERVICE /* 139292 */:
                        if (P2pStateMachine.this.addLocalService(message.replyTo, (WifiP2pServiceInfo) message.obj)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_LOCAL_SERVICE_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_LOCAL_SERVICE_FAILED);
                        }
                        return true;
                    case WifiP2pManager.REMOVE_LOCAL_SERVICE /* 139295 */:
                        P2pStateMachine.this.removeLocalService(message.replyTo, (WifiP2pServiceInfo) message.obj);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_LOCAL_SERVICE_SUCCEEDED);
                        return true;
                    case WifiP2pManager.CLEAR_LOCAL_SERVICES /* 139298 */:
                        P2pStateMachine.this.clearLocalServices(message.replyTo);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_LOCAL_SERVICES_SUCCEEDED);
                        return true;
                    case WifiP2pManager.ADD_SERVICE_REQUEST /* 139301 */:
                        if (P2pStateMachine.this.addServiceRequest(message.replyTo, (WifiP2pServiceRequest) message.obj)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_SERVICE_REQUEST_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_SERVICE_REQUEST_FAILED);
                        }
                        return true;
                    case WifiP2pManager.REMOVE_SERVICE_REQUEST /* 139304 */:
                        P2pStateMachine.this.removeServiceRequest(message.replyTo, (WifiP2pServiceRequest) message.obj);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_SERVICE_REQUEST_SUCCEEDED);
                        return true;
                    case WifiP2pManager.CLEAR_SERVICE_REQUESTS /* 139307 */:
                        P2pStateMachine.this.clearServiceRequests(message.replyTo);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_SERVICE_REQUESTS_SUCCEEDED);
                        return true;
                    case WifiP2pManager.DISCOVER_SERVICES /* 139310 */:
                        if (WifiP2pService.this.mDiscoveryBlocked) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_FAILED, 2);
                        } else if (!P2pStateMachine.this.updateSupplicantServiceRequest()) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_FAILED, 3);
                        } else if (P2pStateMachine.this.mWifiNative.p2pFind(120)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_FAILED, 0);
                        }
                        return true;
                    case WifiP2pManager.SET_DEVICE_NAME /* 139315 */:
                        WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) message.obj;
                        if (wifiP2pDevice == null || !P2pStateMachine.this.setAndPersistDeviceName(wifiP2pDevice.deviceName)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_DEVICE_NAME_FAILED, 0);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_DEVICE_NAME_SUCCEEDED);
                        }
                        return true;
                    case WifiP2pManager.DELETE_PERSISTENT_GROUP /* 139318 */:
                        P2pStateMachine.this.mGroups.remove(message.arg1);
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DELETE_PERSISTENT_GROUP_SUCCEEDED);
                        return true;
                    case WifiP2pManager.SET_WFD_INFO /* 139323 */:
                        WifiP2pWfdInfo wifiP2pWfdInfo = (WifiP2pWfdInfo) message.obj;
                        if (wifiP2pWfdInfo == null || !P2pStateMachine.this.setWfdInfo(wifiP2pWfdInfo)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_WFD_INFO_FAILED, 0);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_WFD_INFO_SUCCEEDED);
                        }
                        return true;
                    case WifiP2pManager.START_LISTEN /* 139329 */:
                        P2pStateMachine.this.mWifiNative.p2pFlush();
                        if (P2pStateMachine.this.mWifiNative.p2pExtListen(true, 500, 500)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_LISTEN_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_LISTEN_FAILED);
                        }
                        return true;
                    case WifiP2pManager.STOP_LISTEN /* 139332 */:
                        if (P2pStateMachine.this.mWifiNative.p2pExtListen(false, 0, 0)) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_LISTEN_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_LISTEN_FAILED);
                        }
                        P2pStateMachine.this.mWifiNative.p2pFlush();
                        return true;
                    case WifiP2pManager.SET_CHANNEL /* 139335 */:
                        Bundle bundle = (Bundle) message.obj;
                        if (P2pStateMachine.this.mWifiNative.p2pSetChannel(bundle.getInt("lc", 0), bundle.getInt("oc", 0))) {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_CHANNEL_SUCCEEDED);
                        } else {
                            P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_CHANNEL_FAILED);
                        }
                        return true;
                    case WifiP2pService.SET_MIRACAST_MODE /* 143374 */:
                        P2pStateMachine.this.mWifiNative.setMiracastMode(message.arg1);
                        return true;
                    case WifiP2pService.BLOCK_DISCOVERY /* 143375 */:
                        boolean z2 = message.arg1 == 1;
                        if (WifiP2pService.this.mDiscoveryBlocked != z2) {
                            WifiP2pService.this.mDiscoveryBlocked = z2;
                            if (z2 && WifiP2pService.this.mDiscoveryStarted) {
                                P2pStateMachine.this.mWifiNative.p2pStopFind();
                                WifiP2pService.this.mDiscoveryPostponed = true;
                            }
                            if (!z2 && WifiP2pService.this.mDiscoveryPostponed) {
                                WifiP2pService.this.mDiscoveryPostponed = false;
                                P2pStateMachine.this.mWifiNative.p2pFind(120);
                            }
                            if (z2) {
                                try {
                                    ((m) message.obj).sendMessage(message.arg2);
                                } catch (Exception e2) {
                                    P2pStateMachine.this.loge("unable to send BLOCK_DISCOVERY response: " + e2);
                                }
                            }
                            break;
                        }
                        return true;
                    case WifiP2pService.SET_COUNTRY_CODE /* 143376 */:
                        String upperCase = ((String) message.obj).toUpperCase(Locale.ROOT);
                        if ((WifiP2pService.this.mLastSetCountryCode == null || !upperCase.equals(WifiP2pService.this.mLastSetCountryCode)) && P2pStateMachine.this.mWifiNative.setCountryCode(upperCase)) {
                            WifiP2pService.this.mLastSetCountryCode = upperCase;
                        }
                        return true;
                    case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                        P2pStateMachine.this.loge("Unexpected loss of p2p socket connection");
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mP2pDisabledState);
                        return true;
                    case WifiMonitor.P2P_DEVICE_FOUND_EVENT /* 147477 */:
                        WifiP2pDevice wifiP2pDevice2 = (WifiP2pDevice) message.obj;
                        if (!WifiP2pService.this.mThisDevice.deviceAddress.equals(wifiP2pDevice2.deviceAddress)) {
                            P2pStateMachine.this.mPeers.updateSupplicantDetails(wifiP2pDevice2);
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        }
                        return true;
                    case WifiMonitor.P2P_DEVICE_LOST_EVENT /* 147478 */:
                        if (P2pStateMachine.this.mPeers.remove(((WifiP2pDevice) message.obj).deviceAddress) != null) {
                            P2pStateMachine.this.sendPeersChangedBroadcast();
                        }
                        return true;
                    case WifiMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                        P2pStateMachine.this.sendP2pDiscoveryChangedBroadcast(false);
                        return true;
                    case WifiMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                        for (WifiP2pServiceResponse wifiP2pServiceResponse : (List) message.obj) {
                            wifiP2pServiceResponse.setSrcDevice(P2pStateMachine.this.mPeers.get(wifiP2pServiceResponse.getSrcDevice().deviceAddress));
                            P2pStateMachine.this.sendServiceResponse(wifiP2pServiceResponse);
                        }
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class P2pEnablingState extends l {
            public P2pEnablingState() {
            }

            @Override // u.l
            public void enter() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiStateMachine.CMD_ENABLE_P2P /* 131203 */:
                    case WifiStateMachine.CMD_DISABLE_P2P_REQ /* 131204 */:
                        P2pStateMachine.this.deferMessage(message);
                        return true;
                    case WifiMonitor.SUP_CONNECTION_EVENT /* 147457 */:
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mInactiveState);
                        return true;
                    case WifiMonitor.SUP_DISCONNECTION_EVENT /* 147458 */:
                        P2pStateMachine.this.loge("P2p socket connection failed");
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mP2pDisabledState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class P2pNotSupportedState extends l {
            public P2pNotSupportedState() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiP2pManager.DISCOVER_PEERS /* 139265 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_PEERS_FAILED, 1);
                        return true;
                    case WifiP2pManager.STOP_DISCOVERY /* 139268 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_DISCOVERY_FAILED, 1);
                        return true;
                    case WifiP2pManager.CONNECT /* 139271 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CONNECT_FAILED, 1);
                        return true;
                    case WifiP2pManager.CANCEL_CONNECT /* 139274 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CANCEL_CONNECT_FAILED, 1);
                        return true;
                    case WifiP2pManager.CREATE_GROUP /* 139277 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CREATE_GROUP_FAILED, 1);
                        return true;
                    case WifiP2pManager.REMOVE_GROUP /* 139280 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_GROUP_FAILED, 1);
                        return true;
                    case WifiP2pManager.ADD_LOCAL_SERVICE /* 139292 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_LOCAL_SERVICE_FAILED, 1);
                        return true;
                    case WifiP2pManager.REMOVE_LOCAL_SERVICE /* 139295 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_LOCAL_SERVICE_FAILED, 1);
                        return true;
                    case WifiP2pManager.CLEAR_LOCAL_SERVICES /* 139298 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_LOCAL_SERVICES_FAILED, 1);
                        return true;
                    case WifiP2pManager.ADD_SERVICE_REQUEST /* 139301 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.ADD_SERVICE_REQUEST_FAILED, 1);
                        return true;
                    case WifiP2pManager.REMOVE_SERVICE_REQUEST /* 139304 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.REMOVE_SERVICE_REQUEST_FAILED, 1);
                        return true;
                    case WifiP2pManager.CLEAR_SERVICE_REQUESTS /* 139307 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.CLEAR_SERVICE_REQUESTS_FAILED, 1);
                        return true;
                    case WifiP2pManager.DISCOVER_SERVICES /* 139310 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DISCOVER_SERVICES_FAILED, 1);
                        return true;
                    case WifiP2pManager.SET_DEVICE_NAME /* 139315 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_DEVICE_NAME_FAILED, 1);
                        return true;
                    case WifiP2pManager.DELETE_PERSISTENT_GROUP /* 139318 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.DELETE_PERSISTENT_GROUP, 1);
                        return true;
                    case WifiP2pManager.SET_WFD_INFO /* 139323 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.SET_WFD_INFO_FAILED, 1);
                        return true;
                    case WifiP2pManager.START_WPS /* 139326 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_WPS_FAILED, 1);
                        return true;
                    case WifiP2pManager.START_LISTEN /* 139329 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.START_LISTEN_FAILED, 1);
                        return true;
                    case WifiP2pManager.STOP_LISTEN /* 139332 */:
                        P2pStateMachine.this.replyToMessage(message, WifiP2pManager.STOP_LISTEN_FAILED, 1);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class ProvisionDiscoveryState extends l {
            public ProvisionDiscoveryState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.mWifiNative.p2pProvisionDiscovery(P2pStateMachine.this.mSavedPeerConfig);
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiMonitor.P2P_PROV_DISC_PBC_RSP_EVENT /* 147490 */:
                        if (((WifiP2pProvDiscEvent) message.obj).device.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 0) {
                            P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                            p2pStateMachine.p2pConnectWithPinDisplay(p2pStateMachine.mSavedPeerConfig);
                            P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                            p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                        }
                        return true;
                    case WifiMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                        if (((WifiP2pProvDiscEvent) message.obj).device.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 2) {
                            if (TextUtils.isEmpty(P2pStateMachine.this.mSavedPeerConfig.wps.pin)) {
                                WifiP2pService.this.mJoinExistingGroup = false;
                                P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                                p2pStateMachine3.transitionTo(p2pStateMachine3.mUserAuthorizingNegotiationRequestState);
                            } else {
                                P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                                p2pStateMachine4.p2pConnectWithPinDisplay(p2pStateMachine4.mSavedPeerConfig);
                                P2pStateMachine p2pStateMachine5 = P2pStateMachine.this;
                                p2pStateMachine5.transitionTo(p2pStateMachine5.mGroupNegotiationState);
                            }
                        }
                        return true;
                    case WifiMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        WifiP2pProvDiscEvent wifiP2pProvDiscEvent = (WifiP2pProvDiscEvent) message.obj;
                        WifiP2pDevice wifiP2pDevice = wifiP2pProvDiscEvent.device;
                        if (wifiP2pDevice.deviceAddress.equals(P2pStateMachine.this.mSavedPeerConfig.deviceAddress) && P2pStateMachine.this.mSavedPeerConfig.wps.setup == 1) {
                            P2pStateMachine.this.mSavedPeerConfig.wps.pin = wifiP2pProvDiscEvent.pin;
                            P2pStateMachine p2pStateMachine6 = P2pStateMachine.this;
                            p2pStateMachine6.p2pConnectWithPinDisplay(p2pStateMachine6.mSavedPeerConfig);
                            P2pStateMachine.this.notifyInvitationSent(wifiP2pProvDiscEvent.pin, wifiP2pDevice.deviceAddress);
                            P2pStateMachine p2pStateMachine7 = P2pStateMachine.this;
                            p2pStateMachine7.transitionTo(p2pStateMachine7.mGroupNegotiationState);
                        }
                        return true;
                    case WifiMonitor.P2P_FIND_STOPPED_EVENT /* 147493 */:
                    case WifiMonitor.P2P_SERV_DISC_RESP_EVENT /* 147494 */:
                    default:
                        return false;
                    case WifiMonitor.P2P_PROV_DISC_FAILURE_EVENT /* 147495 */:
                        P2pStateMachine.this.loge("provision discovery failed");
                        P2pStateMachine.this.handleGroupCreationFailure();
                        P2pStateMachine p2pStateMachine8 = P2pStateMachine.this;
                        p2pStateMachine8.transitionTo(p2pStateMachine8.mInactiveState);
                        return true;
                }
            }
        }

        public class UserAuthorizingInviteRequestState extends l {
            public UserAuthorizingInviteRequestState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.notifyInvitationReceived();
            }

            @Override // u.l
            public void exit() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiP2pService.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
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
                    case WifiP2pService.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        P2pStateMachine p2pStateMachine4 = P2pStateMachine.this;
                        p2pStateMachine4.transitionTo(p2pStateMachine4.mInactiveState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class UserAuthorizingJoinState extends l {
            public UserAuthorizingJoinState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.notifyInvitationReceived();
            }

            @Override // u.l
            public void exit() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiP2pService.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                        if (P2pStateMachine.this.mSavedPeerConfig.wps.setup == 0) {
                            P2pStateMachine.this.mWifiNative.startWpsPbc(P2pStateMachine.this.mGroup.getInterface(), null);
                        } else {
                            P2pStateMachine.this.mWifiNative.startWpsPinKeypad(P2pStateMachine.this.mGroup.getInterface(), P2pStateMachine.this.mSavedPeerConfig.wps.pin);
                        }
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.transitionTo(p2pStateMachine.mGroupCreatedState);
                        return true;
                    case WifiP2pService.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupCreatedState);
                        return true;
                    case WifiMonitor.P2P_PROV_DISC_PBC_REQ_EVENT /* 147489 */:
                    case WifiMonitor.P2P_PROV_DISC_ENTER_PIN_EVENT /* 147491 */:
                    case WifiMonitor.P2P_PROV_DISC_SHOW_PIN_EVENT /* 147492 */:
                        return true;
                    default:
                        return false;
                }
            }
        }

        public class UserAuthorizingNegotiationRequestState extends l {
            public UserAuthorizingNegotiationRequestState() {
            }

            @Override // u.l
            public void enter() {
                P2pStateMachine.this.notifyInvitationReceived();
            }

            @Override // u.l
            public void exit() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                switch (message.what) {
                    case WifiP2pService.PEER_CONNECTION_USER_ACCEPT /* 143362 */:
                        P2pStateMachine.this.mWifiNative.p2pStopFind();
                        P2pStateMachine p2pStateMachine = P2pStateMachine.this;
                        p2pStateMachine.p2pConnectWithPinDisplay(p2pStateMachine.mSavedPeerConfig);
                        P2pStateMachine.this.mPeers.updateStatus(P2pStateMachine.this.mSavedPeerConfig.deviceAddress, 1);
                        P2pStateMachine.this.sendPeersChangedBroadcast();
                        P2pStateMachine p2pStateMachine2 = P2pStateMachine.this;
                        p2pStateMachine2.transitionTo(p2pStateMachine2.mGroupNegotiationState);
                        return true;
                    case WifiP2pService.PEER_CONNECTION_USER_REJECT /* 143363 */:
                        P2pStateMachine p2pStateMachine3 = P2pStateMachine.this;
                        p2pStateMachine3.transitionTo(p2pStateMachine3.mInactiveState);
                        return true;
                    default:
                        return false;
                }
            }
        }

        public P2pStateMachine(String str, boolean z2) {
            super(str);
            this.mDefaultState = new DefaultState();
            this.mP2pNotSupportedState = new P2pNotSupportedState();
            this.mP2pDisablingState = new P2pDisablingState();
            this.mP2pDisabledState = new P2pDisabledState();
            this.mP2pEnablingState = new P2pEnablingState();
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
            this.mWifiNative = new WifiNative(WifiP2pService.this.mInterface);
            this.mWifiMonitor = new WifiMonitor(this, this.mWifiNative);
            this.mPeers = new WifiP2pDeviceList();
            this.mPeersLostDuringConnection = new WifiP2pDeviceList();
            this.mGroups = new WifiP2pGroupList(null, new WifiP2pGroupList.GroupDeleteListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.1
                @Override // android.net.wifi.p2p.WifiP2pGroupList.GroupDeleteListener
                public void onDeleteGroup(int i2) {
                    P2pStateMachine.this.mWifiNative.removeNetwork(i2);
                    P2pStateMachine.this.mWifiNative.saveConfig();
                    P2pStateMachine.this.sendP2pPersistentGroupsChangedBroadcast();
                }
            });
            this.mWifiP2pInfo = new WifiP2pInfo();
            this.mSavedPeerConfig = new WifiP2pConfig();
            addState(this.mDefaultState);
            addState(this.mP2pNotSupportedState, this.mDefaultState);
            addState(this.mP2pDisablingState, this.mDefaultState);
            addState(this.mP2pDisabledState, this.mDefaultState);
            addState(this.mP2pEnablingState, this.mDefaultState);
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
            if (z2) {
                setInitialState(this.mP2pDisabledState);
            } else {
                setInitialState(this.mP2pNotSupportedState);
            }
            setLogRecSize(50);
            setLogOnlyTransitions(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addLocalService(Messenger messenger, WifiP2pServiceInfo wifiP2pServiceInfo) {
            clearClientDeadChannels();
            ClientInfo clientInfo = getClientInfo(messenger, true);
            if (clientInfo == null || !clientInfo.mServList.add(wifiP2pServiceInfo)) {
                return false;
            }
            if (this.mWifiNative.p2pServiceAdd(wifiP2pServiceInfo)) {
                return true;
            }
            clientInfo.mServList.remove(wifiP2pServiceInfo);
            return false;
        }

        private void addRowToDialog(ViewGroup viewGroup, int i2, String str) {
            Resources system = Resources.getSystem();
            View viewInflate = LayoutInflater.from(WifiP2pService.this.mContext).inflate(17367241, viewGroup, false);
            ((TextView) viewInflate.findViewById(16909210)).setText(system.getString(i2));
            ((TextView) viewInflate.findViewById(16909000)).setText(str);
            viewGroup.addView(viewInflate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addServiceRequest(Messenger messenger, WifiP2pServiceRequest wifiP2pServiceRequest) {
            clearClientDeadChannels();
            ClientInfo clientInfo = getClientInfo(messenger, true);
            if (clientInfo == null) {
                return false;
            }
            WifiP2pService.access$11904(WifiP2pService.this);
            if (WifiP2pService.this.mServiceTransactionId == 0) {
                WifiP2pService.access$11904(WifiP2pService.this);
            }
            wifiP2pServiceRequest.setTransactionId(WifiP2pService.this.mServiceTransactionId);
            clientInfo.mReqList.put(WifiP2pService.this.mServiceTransactionId, wifiP2pServiceRequest);
            if (WifiP2pService.this.mServiceDiscReqId == null) {
                return true;
            }
            return updateSupplicantServiceRequest();
        }

        private void clearClientDeadChannels() {
            ArrayList arrayList = new ArrayList();
            for (ClientInfo clientInfo : WifiP2pService.this.mClientInfoList.values()) {
                Message messageObtain = Message.obtain();
                messageObtain.what = WifiP2pManager.PING;
                messageObtain.arg1 = 0;
                messageObtain.arg2 = 0;
                messageObtain.obj = null;
                try {
                    clientInfo.mMessenger.send(messageObtain);
                } catch (RemoteException unused) {
                    arrayList.add(clientInfo.mMessenger);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                clearClientInfo((Messenger) it.next());
            }
        }

        private void clearClientInfo(Messenger messenger) {
            clearLocalServices(messenger);
            clearServiceRequests(messenger);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLocalServices(Messenger messenger) {
            ClientInfo clientInfo = getClientInfo(messenger, false);
            if (clientInfo == null) {
                return;
            }
            Iterator it = clientInfo.mServList.iterator();
            while (it.hasNext()) {
                this.mWifiNative.p2pServiceDel((WifiP2pServiceInfo) it.next());
            }
            clientInfo.mServList.clear();
            if (clientInfo.mReqList.size() == 0) {
                WifiP2pService.this.mClientInfoList.remove(clientInfo.mMessenger);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearServiceRequests(Messenger messenger) {
            ClientInfo clientInfo = getClientInfo(messenger, false);
            if (clientInfo == null || clientInfo.mReqList.size() == 0) {
                return;
            }
            clientInfo.mReqList.clear();
            if (clientInfo.mServList.size() == 0) {
                WifiP2pService.this.mClientInfoList.remove(clientInfo.mMessenger);
            }
            if (WifiP2pService.this.mServiceDiscReqId == null) {
                return;
            }
            updateSupplicantServiceRequest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSupplicantServiceRequest() {
            if (WifiP2pService.this.mServiceDiscReqId == null) {
                return;
            }
            this.mWifiNative.p2pServDiscCancelReq(WifiP2pService.this.mServiceDiscReqId);
            WifiP2pService.this.mServiceDiscReqId = null;
        }

        private WifiP2pDevice fetchCurrentDeviceDetails(WifiP2pConfig wifiP2pConfig) {
            this.mPeers.updateGroupCapability(wifiP2pConfig.deviceAddress, this.mWifiNative.getGroupCapability(wifiP2pConfig.deviceAddress));
            return this.mPeers.get(wifiP2pConfig.deviceAddress);
        }

        private ClientInfo getClientInfo(Messenger messenger, boolean z2) {
            ClientInfo clientInfo = (ClientInfo) WifiP2pService.this.mClientInfoList.get(messenger);
            if (clientInfo != null || !z2) {
                return clientInfo;
            }
            ClientInfo clientInfo2 = new ClientInfo(messenger);
            WifiP2pService.this.mClientInfoList.put(messenger, clientInfo2);
            return clientInfo2;
        }

        private String[] getClientList(int i2) {
            String networkVariable = this.mWifiNative.getNetworkVariable(i2, "p2p_client_list");
            if (networkVariable == null) {
                return null;
            }
            return networkVariable.split(" ");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getDeviceName(String str) {
            WifiP2pDevice wifiP2pDevice = this.mPeers.get(str);
            return wifiP2pDevice != null ? wifiP2pDevice.deviceName : str;
        }

        private int getNetworkIdFromClientList(String str) {
            if (str == null) {
                return -1;
            }
            Iterator<WifiP2pGroup> it = this.mGroups.getGroupList().iterator();
            while (it.hasNext()) {
                int networkId = it.next().getNetworkId();
                String[] clientList = getClientList(networkId);
                if (clientList != null) {
                    for (String str2 : clientList) {
                        if (str.equalsIgnoreCase(str2)) {
                            return networkId;
                        }
                    }
                }
            }
            return -1;
        }

        private String getPersistedDeviceName() {
            String string = Settings.Global.getString(WifiP2pService.this.mContext.getContentResolver(), Settings.Global.WIFI_P2P_DEVICE_NAME);
            if (string != null) {
                return string;
            }
            return "Android_" + Settings.Secure.getString(WifiP2pService.this.mContext.getContentResolver(), "android_id").substring(0, 4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleGroupCreationFailure() {
            resetWifiP2pInfo();
            WifiP2pService.this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.FAILED, null, null);
            sendP2pConnectionChangedBroadcast();
            boolean zRemove = this.mPeers.remove(this.mPeersLostDuringConnection);
            if (this.mPeers.remove(this.mSavedPeerConfig.deviceAddress) != null) {
                zRemove = true;
            }
            if (zRemove) {
                sendPeersChangedBroadcast();
            }
            this.mPeersLostDuringConnection.clear();
            WifiP2pService.this.mServiceDiscReqId = null;
            sendMessage(WifiP2pManager.DISCOVER_PEERS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleGroupRemoved() {
            Iterator<WifiP2pDevice> it;
            boolean z2;
            if (this.mGroup.isGroupOwner()) {
                stopDhcpServer(this.mGroup.getInterface());
            } else {
                WifiP2pService.this.mDhcpStateMachine.sendMessage(DhcpStateMachine.CMD_STOP_DHCP);
                WifiP2pService.this.mDhcpStateMachine.doQuit();
                WifiP2pService.this.mDhcpStateMachine = null;
            }
            try {
                WifiP2pService.this.mNwService.clearInterfaceAddresses(this.mGroup.getInterface());
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (this.mPeers.remove(it.next())) {
                        z2 = true;
                    }
                }
            } catch (Exception e2) {
                loge("Failed to clear addresses " + e2);
            }
            NetworkUtils.resetConnections(this.mGroup.getInterface(), 3);
            this.mWifiNative.setP2pGroupIdle(this.mGroup.getInterface(), 0);
            it = this.mGroup.getClientList().iterator();
            z2 = false;
            if (this.mPeers.remove(this.mGroup.getOwner())) {
                z2 = true;
            }
            if (this.mPeers.remove(this.mPeersLostDuringConnection) ? true : z2) {
                sendPeersChangedBroadcast();
            }
            this.mGroup = null;
            this.mPeersLostDuringConnection.clear();
            WifiP2pService.this.mServiceDiscReqId = null;
            if (WifiP2pService.this.mTempoarilyDisconnectedWifi) {
                WifiP2pService.this.mWifiChannel.l(WifiP2pService.DISCONNECT_WIFI_REQUEST, 0);
                WifiP2pService.this.mTempoarilyDisconnectedWifi = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initializeP2pSettings() {
            this.mWifiNative.setPersistentReconnect(true);
            WifiP2pService.this.mThisDevice.deviceName = getPersistedDeviceName();
            this.mWifiNative.setDeviceName(WifiP2pService.this.mThisDevice.deviceName);
            this.mWifiNative.setP2pSsidPostfix("-" + WifiP2pService.this.mThisDevice.deviceName);
            this.mWifiNative.setDeviceType(WifiP2pService.this.mThisDevice.primaryDeviceType);
            this.mWifiNative.setConfigMethods("virtual_push_button physical_display keypad");
            this.mWifiNative.setConcurrencyPriority("sta");
            WifiP2pService.this.mThisDevice.deviceAddress = this.mWifiNative.p2pGetDeviceAddress();
            updateThisDevice(3);
            WifiP2pService.this.mClientInfoList.clear();
            this.mWifiNative.p2pFlush();
            this.mWifiNative.p2pServiceFlush();
            WifiP2pService.this.mServiceTransactionId = (byte) 0;
            WifiP2pService.this.mServiceDiscReqId = null;
            String string = Settings.Global.getString(WifiP2pService.this.mContext.getContentResolver(), Settings.Global.WIFI_COUNTRY_CODE);
            if (string != null && !string.isEmpty()) {
                WifiP2pService.this.mP2pStateMachine.sendMessage(WifiP2pService.SET_COUNTRY_CODE, string);
            }
            updatePersistentNetworks(WifiP2pService.RELOAD.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isConfigInvalid(WifiP2pConfig wifiP2pConfig) {
            return wifiP2pConfig == null || TextUtils.isEmpty(wifiP2pConfig.deviceAddress) || this.mPeers.get(wifiP2pConfig.deviceAddress) == null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyInvitationReceived() {
            Resources system = Resources.getSystem();
            final WpsInfo wpsInfo = this.mSavedPeerConfig.wps;
            View viewInflate = LayoutInflater.from(WifiP2pService.this.mContext).inflate(17367240, (ViewGroup) null);
            ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(16909034);
            addRowToDialog(viewGroup, 17040451, getDeviceName(this.mSavedPeerConfig.deviceAddress));
            final EditText editText = (EditText) viewInflate.findViewById(16909209);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(WifiP2pService.this.mContext).setTitle(system.getString(17040450)).setView(viewInflate).setPositiveButton(system.getString(17040447), new DialogInterface.OnClickListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (wpsInfo.setup == 2) {
                        P2pStateMachine.this.mSavedPeerConfig.wps.pin = editText.getText().toString();
                    }
                    P2pStateMachine.this.sendMessage(WifiP2pService.PEER_CONNECTION_USER_ACCEPT);
                }
            }).setNegativeButton(system.getString(17040448), new DialogInterface.OnClickListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    P2pStateMachine.this.sendMessage(WifiP2pService.PEER_CONNECTION_USER_REJECT);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    P2pStateMachine.this.sendMessage(WifiP2pService.PEER_CONNECTION_USER_REJECT);
                }
            }).create();
            int i2 = wpsInfo.setup;
            if (i2 == 1) {
                addRowToDialog(viewGroup, 17040454, wpsInfo.pin);
            } else if (i2 == 2) {
                viewInflate.findViewById(16909208).setVisibility(0);
            }
            if ((system.getConfiguration().uiMode & 5) == 5) {
                alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: android.net.wifi.p2p.WifiP2pService.P2pStateMachine.5
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i3, KeyEvent keyEvent) {
                        if (i3 != 164) {
                            return false;
                        }
                        P2pStateMachine.this.sendMessage(WifiP2pService.PEER_CONNECTION_USER_ACCEPT);
                        dialogInterface.dismiss();
                        return true;
                    }
                });
            }
            alertDialogCreate.getWindow().setType(2003);
            alertDialogCreate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyInvitationSent(String str, String str2) {
            Resources system = Resources.getSystem();
            View viewInflate = LayoutInflater.from(WifiP2pService.this.mContext).inflate(17367240, (ViewGroup) null);
            ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(16909034);
            addRowToDialog(viewGroup, 17040452, getDeviceName(str2));
            addRowToDialog(viewGroup, 17040454, str);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(WifiP2pService.this.mContext).setTitle(system.getString(17040449)).setView(viewInflate).setPositiveButton(system.getString(R.string.ok), (DialogInterface.OnClickListener) null).create();
            alertDialogCreate.getWindow().setType(2003);
            alertDialogCreate.show();
        }

        private void notifyP2pEnableFailure() {
            Resources system = Resources.getSystem();
            AlertDialog alertDialogCreate = new AlertDialog.Builder(WifiP2pService.this.mContext).setTitle(system.getString(17040442)).setMessage(system.getString(17040444)).setPositiveButton(system.getString(R.string.ok), (DialogInterface.OnClickListener) null).create();
            alertDialogCreate.getWindow().setType(2003);
            alertDialogCreate.show();
        }

        private Message obtainMessage(Message message) {
            Message messageObtain = Message.obtain();
            messageObtain.arg2 = message.arg2;
            return messageObtain;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p2pConnectWithPinDisplay(WifiP2pConfig wifiP2pConfig) {
            String strP2pConnect = this.mWifiNative.p2pConnect(wifiP2pConfig, fetchCurrentDeviceDetails(wifiP2pConfig).isGroupOwner());
            try {
                Integer.parseInt(strP2pConnect);
                notifyInvitationSent(strP2pConnect, wifiP2pConfig.deviceAddress);
            } catch (NumberFormatException unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean reinvokePersistentGroup(WifiP2pConfig wifiP2pConfig) {
            int networkId;
            WifiP2pDevice wifiP2pDeviceFetchCurrentDeviceDetails = fetchCurrentDeviceDetails(wifiP2pConfig);
            boolean zIsGroupOwner = wifiP2pDeviceFetchCurrentDeviceDetails.isGroupOwner();
            String strP2pGetSsid = this.mWifiNative.p2pGetSsid(wifiP2pDeviceFetchCurrentDeviceDetails.deviceAddress);
            if (zIsGroupOwner && wifiP2pDeviceFetchCurrentDeviceDetails.isGroupLimit()) {
                zIsGroupOwner = false;
            } else if (zIsGroupOwner && (networkId = this.mGroups.getNetworkId(wifiP2pDeviceFetchCurrentDeviceDetails.deviceAddress, strP2pGetSsid)) >= 0) {
                return this.mWifiNative.p2pGroupAdd(networkId);
            }
            if (!zIsGroupOwner && wifiP2pDeviceFetchCurrentDeviceDetails.isDeviceLimit()) {
                loge("target device reaches the device limit.");
                return false;
            }
            if (!zIsGroupOwner && wifiP2pDeviceFetchCurrentDeviceDetails.isInvitationCapable()) {
                int networkId2 = -2;
                int i2 = wifiP2pConfig.netId;
                if (i2 < 0) {
                    networkId2 = this.mGroups.getNetworkId(wifiP2pDeviceFetchCurrentDeviceDetails.deviceAddress);
                } else if (wifiP2pConfig.deviceAddress.equals(this.mGroups.getOwnerAddr(i2))) {
                    networkId2 = wifiP2pConfig.netId;
                }
                if (networkId2 < 0) {
                    networkId2 = getNetworkIdFromClientList(wifiP2pDeviceFetchCurrentDeviceDetails.deviceAddress);
                }
                if (networkId2 >= 0) {
                    if (this.mWifiNative.getNetworkVariable(networkId2, "p2p_client_list") != null) {
                        loge("This device's connection has been saved as GO, Ignored... ");
                        wifiP2pConfig.netId = networkId2;
                        return false;
                    }
                    if (this.mWifiNative.p2pReinvoke(networkId2, wifiP2pDeviceFetchCurrentDeviceDetails.deviceAddress)) {
                        wifiP2pConfig.netId = networkId2;
                        return true;
                    }
                    loge("p2pReinvoke() failed, update networks");
                    updatePersistentNetworks(WifiP2pService.RELOAD.booleanValue());
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean removeClientFromList(int i2, String str, boolean z2) {
            boolean z3;
            StringBuilder sb = new StringBuilder();
            String[] clientList = getClientList(i2);
            if (clientList != null) {
                z3 = false;
                for (String str2 : clientList) {
                    if (str2.equalsIgnoreCase(str)) {
                        z3 = true;
                    } else {
                        sb.append(" ");
                        sb.append(str2);
                    }
                }
            } else {
                z3 = false;
            }
            if (sb.length() == 0 && z2) {
                this.mGroups.remove(i2);
                return true;
            }
            if (!z3) {
                return false;
            }
            if (sb.length() == 0) {
                sb.append("\"\"");
            }
            this.mWifiNative.setNetworkVariable(i2, "p2p_client_list", sb.toString());
            this.mWifiNative.saveConfig();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeLocalService(Messenger messenger, WifiP2pServiceInfo wifiP2pServiceInfo) {
            ClientInfo clientInfo = getClientInfo(messenger, false);
            if (clientInfo == null) {
                return;
            }
            this.mWifiNative.p2pServiceDel(wifiP2pServiceInfo);
            clientInfo.mServList.remove(wifiP2pServiceInfo);
            if (clientInfo.mReqList.size() == 0 && clientInfo.mServList.size() == 0) {
                WifiP2pService.this.mClientInfoList.remove(clientInfo.mMessenger);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeServiceRequest(Messenger messenger, WifiP2pServiceRequest wifiP2pServiceRequest) {
            boolean z2 = false;
            ClientInfo clientInfo = getClientInfo(messenger, false);
            if (clientInfo == null) {
                return;
            }
            for (int i2 = 0; i2 < clientInfo.mReqList.size(); i2++) {
                if (wifiP2pServiceRequest.equals(clientInfo.mReqList.valueAt(i2))) {
                    clientInfo.mReqList.removeAt(i2);
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                if (clientInfo.mReqList.size() == 0 && clientInfo.mServList.size() == 0) {
                    WifiP2pService.this.mClientInfoList.remove(clientInfo.mMessenger);
                }
                if (WifiP2pService.this.mServiceDiscReqId == null) {
                    return;
                }
                updateSupplicantServiceRequest();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message message, int i2) {
            if (message.replyTo == null) {
                return;
            }
            Message messageObtainMessage = obtainMessage(message);
            messageObtainMessage.what = i2;
            WifiP2pService.this.mReplyChannel.j(message, messageObtainMessage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetWifiP2pInfo() {
            WifiP2pInfo wifiP2pInfo = this.mWifiP2pInfo;
            wifiP2pInfo.groupFormed = false;
            wifiP2pInfo.isGroupOwner = false;
            wifiP2pInfo.groupOwnerAddress = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pConnectionChangedBroadcast() {
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_CONNECTION_CHANGED_ACTION);
            intent.addFlags(603979776);
            intent.putExtra(WifiP2pManager.EXTRA_WIFI_P2P_INFO, new WifiP2pInfo(this.mWifiP2pInfo));
            intent.putExtra("networkInfo", new NetworkInfo(WifiP2pService.this.mNetworkInfo));
            intent.putExtra(WifiP2pManager.EXTRA_WIFI_P2P_GROUP, new WifiP2pGroup(this.mGroup));
            WifiP2pService.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
            WifiP2pService.this.mWifiChannel.o(WifiP2pService.P2P_CONNECTION_CHANGED, new NetworkInfo(WifiP2pService.this.mNetworkInfo));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pDiscoveryChangedBroadcast(boolean z2) {
            if (WifiP2pService.this.mDiscoveryStarted == z2) {
                return;
            }
            WifiP2pService.this.mDiscoveryStarted = z2;
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_DISCOVERY_CHANGED_ACTION);
            intent.addFlags(67108864);
            intent.putExtra(WifiP2pManager.EXTRA_DISCOVERY_STATE, z2 ? 2 : 1);
            WifiP2pService.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pPersistentGroupsChangedBroadcast() {
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION);
            intent.addFlags(67108864);
            WifiP2pService.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendP2pStateChangedBroadcast(boolean z2) {
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_STATE_CHANGED_ACTION);
            intent.addFlags(67108864);
            if (z2) {
                intent.putExtra(WifiP2pManager.EXTRA_WIFI_STATE, 2);
            } else {
                intent.putExtra(WifiP2pManager.EXTRA_WIFI_STATE, 1);
            }
            WifiP2pService.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPeersChangedBroadcast() {
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_PEERS_CHANGED_ACTION);
            intent.putExtra(WifiP2pManager.EXTRA_P2P_DEVICE_LIST, new WifiP2pDeviceList(this.mPeers));
            intent.addFlags(67108864);
            WifiP2pService.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendServiceResponse(WifiP2pServiceResponse wifiP2pServiceResponse) {
            for (ClientInfo clientInfo : WifiP2pService.this.mClientInfoList.values()) {
                if (((WifiP2pServiceRequest) clientInfo.mReqList.get(wifiP2pServiceResponse.getTransactionId())) != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = WifiP2pManager.RESPONSE_SERVICE;
                    messageObtain.arg1 = 0;
                    messageObtain.arg2 = 0;
                    messageObtain.obj = wifiP2pServiceResponse;
                    try {
                        clientInfo.mMessenger.send(messageObtain);
                    } catch (RemoteException unused) {
                        clearClientInfo(clientInfo.mMessenger);
                        return;
                    }
                }
            }
        }

        private void sendThisDeviceChangedBroadcast() {
            Intent intent = new Intent(WifiP2pManager.WIFI_P2P_THIS_DEVICE_CHANGED_ACTION);
            intent.addFlags(67108864);
            intent.putExtra(WifiP2pManager.EXTRA_WIFI_P2P_DEVICE, new WifiP2pDevice(WifiP2pService.this.mThisDevice));
            WifiP2pService.this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean setAndPersistDeviceName(String str) {
            if (str == null) {
                return false;
            }
            if (!this.mWifiNative.setDeviceName(str)) {
                loge("Failed to set device name " + str);
                return false;
            }
            WifiP2pService.this.mThisDevice.deviceName = str;
            this.mWifiNative.setP2pSsidPostfix("-" + WifiP2pService.this.mThisDevice.deviceName);
            Settings.Global.putString(WifiP2pService.this.mContext.getContentResolver(), Settings.Global.WIFI_P2P_DEVICE_NAME, str);
            sendThisDeviceChangedBroadcast();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean setWfdInfo(WifiP2pWfdInfo wifiP2pWfdInfo) {
            boolean wfdEnable;
            if (wifiP2pWfdInfo.isWfdEnabled()) {
                wfdEnable = this.mWifiNative.setWfdEnable(true) && this.mWifiNative.setWfdDeviceInfo(wifiP2pWfdInfo.getDeviceInfoHex());
            } else {
                wfdEnable = this.mWifiNative.setWfdEnable(false);
            }
            if (!wfdEnable) {
                loge("Failed to set wfd properties");
                return false;
            }
            WifiP2pService.this.mThisDevice.wfdInfo = wifiP2pWfdInfo;
            sendThisDeviceChangedBroadcast();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWifiP2pInfoOnGroupFormation(InetAddress inetAddress) {
            WifiP2pInfo wifiP2pInfo = this.mWifiP2pInfo;
            wifiP2pInfo.groupFormed = true;
            wifiP2pInfo.isGroupOwner = this.mGroup.isGroupOwner();
            this.mWifiP2pInfo.groupOwnerAddress = inetAddress;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startDhcpServer(String str) {
            try {
                InterfaceConfiguration interfaceConfig = WifiP2pService.this.mNwService.getInterfaceConfig(str);
                interfaceConfig.setLinkAddress(new LinkAddress(NetworkUtils.numericToInetAddress(WifiP2pService.SERVER_ADDRESS), 24));
                interfaceConfig.setInterfaceUp();
                WifiP2pService.this.mNwService.setInterfaceConfig(str, interfaceConfig);
                WifiP2pService.this.mNwService.startTethering(WifiP2pService.DHCP_RANGE);
                logd("Started Dhcp server on " + str);
            } catch (Exception e2) {
                loge("Error configuring interface " + str + ", :" + e2);
            }
        }

        private void stopDhcpServer(String str) {
            try {
                WifiP2pService.this.mNwService.stopTethering();
                logd("Stopped Dhcp server");
            } catch (Exception e2) {
                loge("Error stopping Dhcp server" + e2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePersistentNetworks(boolean z2) {
            String[] strArrSplit;
            String strListNetworks = this.mWifiNative.listNetworks();
            if (strListNetworks == null || (strArrSplit = strListNetworks.split("\n")) == null) {
                return;
            }
            if (z2) {
                this.mGroups.clear();
            }
            boolean z3 = false;
            for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                String[] strArrSplit2 = strArrSplit[i2].split("\t");
                if (strArrSplit2 != null && strArrSplit2.length >= 4) {
                    String str = strArrSplit2[1];
                    String str2 = strArrSplit2[2];
                    String str3 = strArrSplit2[3];
                    try {
                        int i3 = Integer.parseInt(strArrSplit2[0]);
                        if (str3.indexOf("[CURRENT]") == -1) {
                            if (str3.indexOf("[P2P-PERSISTENT]") == -1) {
                                this.mWifiNative.removeNetwork(i3);
                            } else if (!this.mGroups.contains(i3)) {
                                WifiP2pGroup wifiP2pGroup = new WifiP2pGroup();
                                wifiP2pGroup.setNetworkId(i3);
                                wifiP2pGroup.setNetworkName(str);
                                String networkVariable = this.mWifiNative.getNetworkVariable(i3, "mode");
                                if (networkVariable != null && networkVariable.equals("3")) {
                                    wifiP2pGroup.setIsGroupOwner(true);
                                }
                                if (str2.equalsIgnoreCase(WifiP2pService.this.mThisDevice.deviceAddress)) {
                                    wifiP2pGroup.setOwner(WifiP2pService.this.mThisDevice);
                                } else {
                                    WifiP2pDevice wifiP2pDevice = new WifiP2pDevice();
                                    wifiP2pDevice.deviceAddress = str2;
                                    wifiP2pGroup.setOwner(wifiP2pDevice);
                                }
                                this.mGroups.add(wifiP2pGroup);
                            }
                            z3 = true;
                        }
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (z2 || z3) {
                this.mWifiNative.saveConfig();
                sendP2pPersistentGroupsChangedBroadcast();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean updateSupplicantServiceRequest() {
            clearSupplicantServiceRequest();
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = WifiP2pService.this.mClientInfoList.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ClientInfo clientInfo = (ClientInfo) it.next();
                for (int i2 = 0; i2 < clientInfo.mReqList.size(); i2++) {
                    WifiP2pServiceRequest wifiP2pServiceRequest = (WifiP2pServiceRequest) clientInfo.mReqList.valueAt(i2);
                    if (wifiP2pServiceRequest != null) {
                        stringBuffer.append(wifiP2pServiceRequest.getSupplicantQuery());
                    }
                }
            }
            if (stringBuffer.length() == 0) {
                return false;
            }
            WifiP2pService.this.mServiceDiscReqId = this.mWifiNative.p2pServDiscReq("00:00:00:00:00:00", stringBuffer.toString());
            return WifiP2pService.this.mServiceDiscReqId != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateThisDevice(int i2) {
            WifiP2pService.this.mThisDevice.status = i2;
            sendThisDeviceChangedBroadcast();
        }

        @Override // u.m
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(fileDescriptor, printWriter, strArr);
            printWriter.println("mWifiP2pInfo " + this.mWifiP2pInfo);
            printWriter.println("mGroup " + this.mGroup);
            printWriter.println("mSavedPeerConfig " + this.mSavedPeerConfig);
            printWriter.println("mSavedP2pGroup " + this.mSavedP2pGroup);
            printWriter.println();
        }

        @Override // u.m
        public void logd(String str) {
            Slog.d(WifiP2pService.TAG, str);
        }

        @Override // u.m
        public void loge(String str) {
            Slog.e(WifiP2pService.TAG, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message message, int i2, int i3) {
            if (message.replyTo == null) {
                return;
            }
            Message messageObtainMessage = obtainMessage(message);
            messageObtainMessage.what = i2;
            messageObtainMessage.arg1 = i3;
            WifiP2pService.this.mReplyChannel.j(message, messageObtainMessage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(Message message, int i2, Object obj) {
            if (message.replyTo == null) {
                return;
            }
            Message messageObtainMessage = obtainMessage(message);
            messageObtainMessage.what = i2;
            messageObtainMessage.obj = obj;
            WifiP2pService.this.mReplyChannel.j(message, messageObtainMessage);
        }
    }
}
