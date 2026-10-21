package android.net;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.PendingIntent;
import android.app.m;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkActivityListener;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.provider.Settings;
import android.security.keystore.KeyProperties;
import android.telephony.SubscriptionManager;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseIntArray;
import com.android.internal.R;
import com.android.internal.telephony.ITelephony;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import libcore.net.event.NetworkEventDispatcher;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityManager {

    @Deprecated
    public static final String ACTION_BACKGROUND_DATA_SETTING_CHANGED = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED";
    public static final String ACTION_CAPTIVE_PORTAL_SIGN_IN = "android.net.conn.CAPTIVE_PORTAL";
    public static final String ACTION_CAPTIVE_PORTAL_TEST_COMPLETED = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED";
    public static final String ACTION_DATA_ACTIVITY_CHANGE = "android.net.conn.DATA_ACTIVITY_CHANGE";
    public static final String ACTION_PC_SHARE_CHANGED = "android.net.conn.PC_SHARE_CHANGED";
    public static final String ACTION_PROMPT_LOST_VALIDATION = "android.net.conn.PROMPT_LOST_VALIDATION";
    public static final String ACTION_PROMPT_UNVALIDATED = "android.net.conn.PROMPT_UNVALIDATED";
    public static final String ACTION_RESTRICT_BACKGROUND_CHANGED = "android.net.conn.RESTRICT_BACKGROUND_CHANGED";
    public static final String ACTION_TETHER_STATE_CHANGED = "android.net.conn.TETHER_STATE_CHANGED";
    private static final int BASE = 524288;
    public static final int CALLBACK_AVAILABLE = 524290;
    public static final int CALLBACK_CAP_CHANGED = 524294;
    public static final int CALLBACK_IP_CHANGED = 524295;
    public static final int CALLBACK_LOSING = 524291;
    public static final int CALLBACK_LOST = 524292;
    public static final int CALLBACK_PRECHECK = 524289;
    public static final int CALLBACK_RESUMED = 524298;
    public static final int CALLBACK_SUSPENDED = 524297;
    public static final int CALLBACK_UNAVAIL = 524293;
    public static final String CONNECTIVITY_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String CONNECTIVITY_ACTION_SUPL = "android.net.conn.CONNECTIVITY_CHANGE_SUPL";

    @Deprecated
    public static final int DEFAULT_NETWORK_PREFERENCE = 1;
    private static final int EXPIRE_LEGACY_REQUEST = 524296;
    public static final String EXTRA_ACTIVE_LOCAL_ONLY = "localOnlyArray";
    public static final String EXTRA_ACTIVE_TETHER = "tetherArray";
    public static final String EXTRA_ADD_TETHER_TYPE = "extraAddTetherType";
    public static final String EXTRA_AVAILABLE_TETHER = "availableArray";
    public static final String EXTRA_CAPTIVE_PORTAL = "android.net.extra.CAPTIVE_PORTAL";
    public static final String EXTRA_CAPTIVE_PORTAL_URL = "android.net.extra.CAPTIVE_PORTAL_URL";
    public static final String EXTRA_CAPTIVE_PORTAL_USER_AGENT = "android.net.extra.CAPTIVE_PORTAL_USER_AGENT";
    public static final String EXTRA_DEVICE_TYPE = "deviceType";
    public static final String EXTRA_ERRORED_TETHER = "erroredArray";
    public static final String EXTRA_EXTRA_INFO = "extraInfo";
    public static final String EXTRA_INET_CONDITION = "inetCondition";
    public static final String EXTRA_IS_ACTIVE = "isActive";
    public static final String EXTRA_IS_CAPTIVE_PORTAL = "captivePortal";
    public static final String EXTRA_IS_FAILOVER = "isFailover";
    public static final String EXTRA_NETWORK = "android.net.extra.NETWORK";

    @Deprecated
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NETWORK_REQUEST = "android.net.extra.NETWORK_REQUEST";
    public static final String EXTRA_NETWORK_TYPE = "networkType";
    public static final String EXTRA_NO_CONNECTIVITY = "noConnectivity";
    public static final String EXTRA_OTHER_NETWORK_INFO = "otherNetwork";
    public static final String EXTRA_PROVISION_CALLBACK = "extraProvisionCallback";
    public static final String EXTRA_REALTIME_NS = "tsNanos";
    public static final String EXTRA_REASON = "reason";
    public static final String EXTRA_REM_TETHER_TYPE = "extraRemTetherType";
    public static final String EXTRA_RUN_PROVISION = "extraRunProvision";
    public static final String EXTRA_SET_ALARM = "extraSetAlarm";
    public static final String INET_CONDITION_ACTION = "android.net.conn.INET_CONDITION_ACTION";
    private static final int LISTEN = 1;
    public static final int MAX_NETWORK_TYPE = 17;
    public static final int MAX_RADIO_TYPE = 17;
    private static final int MIN_NETWORK_TYPE = 0;
    public static final int MULTIPATH_PREFERENCE_HANDOVER = 1;
    public static final int MULTIPATH_PREFERENCE_PERFORMANCE = 4;
    public static final int MULTIPATH_PREFERENCE_RELIABILITY = 2;
    public static final int MULTIPATH_PREFERENCE_UNMETERED = 7;
    public static final int NETID_UNSET = 0;
    private static final int REQUEST = 2;
    public static final int REQUEST_ID_UNSET = 0;
    public static final int RESTRICT_BACKGROUND_STATUS_DISABLED = 1;
    public static final int RESTRICT_BACKGROUND_STATUS_ENABLED = 3;
    public static final int RESTRICT_BACKGROUND_STATUS_WHITELISTED = 2;
    private static final String TAG = "ConnectivityManager";
    public static final int TETHERING_BLUETOOTH = 2;
    public static final int TETHERING_INVALID = -1;
    public static final int TETHERING_USB = 1;
    public static final int TETHERING_WIFI = 0;
    public static final int TETHER_ERROR_DISABLE_NAT_ERROR = 9;
    public static final int TETHER_ERROR_ENABLE_NAT_ERROR = 8;
    public static final int TETHER_ERROR_IFACE_CFG_ERROR = 10;
    public static final int TETHER_ERROR_MASTER_ERROR = 5;
    public static final int TETHER_ERROR_NO_ERROR = 0;
    public static final int TETHER_ERROR_PROVISION_FAILED = 11;
    public static final int TETHER_ERROR_SERVICE_UNAVAIL = 2;
    public static final int TETHER_ERROR_TETHER_IFACE_ERROR = 6;
    public static final int TETHER_ERROR_UNAVAIL_IFACE = 4;
    public static final int TETHER_ERROR_UNKNOWN_IFACE = 1;
    public static final int TETHER_ERROR_UNSUPPORTED = 3;
    public static final int TETHER_ERROR_UNTETHER_IFACE_ERROR = 7;
    public static final int TYPE_BLUETOOTH = 7;
    public static final int TYPE_DUMMY = 8;
    public static final int TYPE_ETHERNET = 9;
    public static final int TYPE_MOBILE = 0;
    public static final int TYPE_MOBILE_CBS = 12;
    public static final int TYPE_MOBILE_DUN = 4;
    public static final int TYPE_MOBILE_EMERGENCY = 15;
    public static final int TYPE_MOBILE_FOTA = 10;

    @Deprecated
    public static final int TYPE_MOBILE_HIPRI = 5;
    public static final int TYPE_MOBILE_IA = 14;
    public static final int TYPE_MOBILE_IMS = 11;

    @Deprecated
    public static final int TYPE_MOBILE_MMS = 2;

    @Deprecated
    public static final int TYPE_MOBILE_SUPL = 3;
    public static final int TYPE_NONE = -1;
    public static final int TYPE_PROXY = 16;
    public static final int TYPE_VPN = 17;
    public static final int TYPE_WIFI = 1;
    public static final int TYPE_WIFI_P2P = 13;
    public static final int TYPE_WIMAX = 6;
    private static CallbackHandler sCallbackHandler;
    private static final HashMap<NetworkRequest, NetworkCallback> sCallbacks;
    private static ConnectivityManager sInstance;
    private static final SparseIntArray sLegacyTypeToCapability;
    private static final SparseIntArray sLegacyTypeToTransport;
    private final Context mContext;
    private INetworkManagementService mNMService;
    private INetworkPolicyManager mNPManager;
    private final ArrayMap<OnNetworkActiveListener, INetworkActivityListener> mNetworkActivityListeners = new ArrayMap<>();
    private final IConnectivityManager mService;
    private static final NetworkRequest ALREADY_UNREGISTERED = new NetworkRequest.Builder().clearCapabilities().build();
    private static HashMap<NetworkCapabilities, LegacyRequest> sLegacyRequests = new HashMap<>();

    public interface Errors {
        public static final int TOO_MANY_REQUESTS = 1;
    }

    public static class LegacyRequest {
        Network currentNetwork;
        int delay;
        int expireSequenceNumber;
        NetworkCallback networkCallback;
        NetworkCapabilities networkCapabilities;
        NetworkRequest networkRequest;

        private LegacyRequest() {
            this.delay = -1;
            this.networkCallback = new NetworkCallback() { // from class: android.net.ConnectivityManager.LegacyRequest.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    LegacyRequest.this.currentNetwork = network;
                    Log.d(ConnectivityManager.TAG, "startUsingNetworkFeature got Network:" + network);
                    ConnectivityManager.setProcessDefaultNetworkForHostResolution(network);
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network) {
                    if (network.equals(LegacyRequest.this.currentNetwork)) {
                        LegacyRequest.this.clearDnsBinding();
                    }
                    Log.d(ConnectivityManager.TAG, "startUsingNetworkFeature lost Network:" + network);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDnsBinding() {
            if (this.currentNetwork != null) {
                this.currentNetwork = null;
                ConnectivityManager.setProcessDefaultNetworkForHostResolution(null);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MultipathPreference {
    }

    public static class NetworkCallback {
        private NetworkRequest networkRequest;

        public void onAvailable(Network network) {
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        }

        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        }

        public void onLosing(Network network, int i2) {
        }

        public void onLost(Network network) {
        }

        public void onNetworkResumed(Network network) {
        }

        public void onNetworkSuspended(Network network) {
        }

        public void onPreCheck(Network network) {
        }

        public void onUnavailable() {
        }
    }

    public interface OnNetworkActiveListener {
        void onNetworkActive();
    }

    public static abstract class OnStartTetheringCallback {
        public void onTetheringFailed() {
        }

        public void onTetheringStarted() {
        }
    }

    public class PacketKeepalive {
        public static final int BINDER_DIED = -10;
        public static final int ERROR_HARDWARE_ERROR = -31;
        public static final int ERROR_HARDWARE_UNSUPPORTED = -30;
        public static final int ERROR_INVALID_INTERVAL = -24;
        public static final int ERROR_INVALID_IP_ADDRESS = -21;
        public static final int ERROR_INVALID_LENGTH = -23;
        public static final int ERROR_INVALID_NETWORK = -20;
        public static final int ERROR_INVALID_PORT = -22;
        public static final int NATT_PORT = 4500;
        public static final int NO_KEEPALIVE = -1;
        public static final int SUCCESS = 0;
        private static final String TAG = "PacketKeepalive";
        private final PacketKeepaliveCallback mCallback;
        private final Looper mLooper;
        private final Messenger mMessenger;
        private final Network mNetwork;
        private volatile Integer mSlot;

        public void stop() {
            try {
                ConnectivityManager.this.mService.stopKeepalive(this.mNetwork, this.mSlot.intValue());
            } catch (RemoteException e2) {
                Log.e(TAG, "Error stopping packet keepalive: ", e2);
                stopLooper();
            }
        }

        public void stopLooper() {
            this.mLooper.quit();
        }

        private PacketKeepalive(Network network, PacketKeepaliveCallback packetKeepaliveCallback) {
            Preconditions.checkNotNull(network, "network cannot be null");
            Preconditions.checkNotNull(packetKeepaliveCallback, "callback cannot be null");
            this.mNetwork = network;
            this.mCallback = packetKeepaliveCallback;
            HandlerThread handlerThread = new HandlerThread(TAG);
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            this.mLooper = looper;
            this.mMessenger = new Messenger(new Handler(looper) { // from class: android.net.ConnectivityManager.PacketKeepalive.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what != 528397) {
                        Log.e(PacketKeepalive.TAG, "Unhandled message " + Integer.toHexString(message.what));
                        return;
                    }
                    int i2 = message.arg2;
                    try {
                        if (i2 != 0) {
                            PacketKeepalive.this.stopLooper();
                            PacketKeepalive.this.mCallback.onError(i2);
                        } else if (PacketKeepalive.this.mSlot == null) {
                            PacketKeepalive.this.mSlot = Integer.valueOf(message.arg1);
                            PacketKeepalive.this.mCallback.onStarted();
                        } else {
                            PacketKeepalive.this.mSlot = null;
                            PacketKeepalive.this.stopLooper();
                            PacketKeepalive.this.mCallback.onStopped();
                        }
                    } catch (Exception e2) {
                        Log.e(PacketKeepalive.TAG, "Exception in keepalive callback(" + i2 + ")", e2);
                    }
                }
            });
        }
    }

    public static class PacketKeepaliveCallback {
        public void onError(int i2) {
        }

        public void onStarted() {
        }

        public void onStopped() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RestrictBackgroundStatus {
    }

    public static class TooManyRequestsException extends RuntimeException {
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sLegacyTypeToTransport = sparseIntArray;
        sparseIntArray.put(0, 0);
        sparseIntArray.put(12, 0);
        sparseIntArray.put(4, 0);
        sparseIntArray.put(10, 0);
        sparseIntArray.put(5, 0);
        sparseIntArray.put(11, 0);
        sparseIntArray.put(2, 0);
        sparseIntArray.put(3, 0);
        sparseIntArray.put(1, 1);
        sparseIntArray.put(13, 1);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(9, 3);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        sLegacyTypeToCapability = sparseIntArray2;
        sparseIntArray2.put(12, 5);
        sparseIntArray2.put(4, 2);
        sparseIntArray2.put(10, 3);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(2, 0);
        sparseIntArray2.put(3, 1);
        sparseIntArray2.put(13, 6);
        sCallbacks = new HashMap<>();
    }

    public ConnectivityManager(Context context, IConnectivityManager iConnectivityManager) {
        this.mContext = (Context) Preconditions.checkNotNull(context, "missing context");
        this.mService = (IConnectivityManager) Preconditions.checkNotNull(iConnectivityManager, "missing IConnectivityManager");
        sInstance = this;
    }

    private static void checkCallbackNotNull(NetworkCallback networkCallback) {
        Preconditions.checkNotNull(networkCallback, "null NetworkCallback");
    }

    public static final boolean checkChangePermission(Context context) {
        int callingUid = Binder.getCallingUid();
        return Settings.checkAndNoteChangeNetworkStateOperation(context, callingUid, Settings.getPackageNameForUid(context, callingUid), false);
    }

    private void checkLegacyRoutingApiAccess() {
        if (this.mContext.checkCallingOrSelfPermission("com.android.permission.INJECT_OMADM_SETTINGS") == 0) {
            return;
        }
        unsupportedStartingFrom(23);
    }

    private static void checkPendingIntentNotNull(PendingIntent pendingIntent) {
        Preconditions.checkNotNull(pendingIntent, "PendingIntent cannot be null.");
    }

    private static void checkTimeout(int i2) {
        Preconditions.checkArgumentPositive(i2, "timeoutMs must be strictly positive.");
    }

    private static RuntimeException convertServiceException(ServiceSpecificException serviceSpecificException) {
        if (serviceSpecificException.errorCode == 1) {
            return new TooManyRequestsException();
        }
        Log.w(TAG, "Unknown service error code " + serviceSpecificException.errorCode);
        return new RuntimeException(serviceSpecificException);
    }

    public static final void enforceChangePermission(Context context) {
        int callingUid = Binder.getCallingUid();
        Settings.checkAndNoteChangeNetworkStateOperation(context, callingUid, Settings.getPackageNameForUid(context, callingUid), true);
    }

    public static final void enforceTetherChangePermission(Context context, String str) {
        Preconditions.checkNotNull(context, "Context cannot be null");
        Preconditions.checkNotNull(str, "callingPkg cannot be null");
        if (context.getResources().getStringArray(R.array.config_mobile_hotspot_provision_app).length == 2) {
            context.enforceCallingOrSelfPermission(Manifest.permission.TETHER_PRIVILEGED, "ConnectivityService");
        } else {
            Settings.checkAndNoteWriteSettingsOperation(context, Binder.getCallingUid(), str, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expireRequest(NetworkCapabilities networkCapabilities, int i2) {
        synchronized (sLegacyRequests) {
            LegacyRequest legacyRequest = sLegacyRequests.get(networkCapabilities);
            if (legacyRequest == null) {
                return;
            }
            int i3 = legacyRequest.expireSequenceNumber;
            if (i3 == i2) {
                removeRequestForFeature(networkCapabilities);
            }
            Log.d(TAG, "expireRequest with " + i3 + ", " + i2);
        }
    }

    private NetworkRequest findRequestForFeature(NetworkCapabilities networkCapabilities) {
        synchronized (sLegacyRequests) {
            LegacyRequest legacyRequest = sLegacyRequests.get(networkCapabilities);
            if (legacyRequest == null) {
                return null;
            }
            return legacyRequest.networkRequest;
        }
    }

    public static ConnectivityManager from(Context context) {
        return (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    }

    public static String getCallbackName(int i2) {
        switch (i2) {
            case CALLBACK_PRECHECK /* 524289 */:
                return "CALLBACK_PRECHECK";
            case 524290:
                return "CALLBACK_AVAILABLE";
            case 524291:
                return "CALLBACK_LOSING";
            case 524292:
                return "CALLBACK_LOST";
            case CALLBACK_UNAVAIL /* 524293 */:
                return "CALLBACK_UNAVAIL";
            case CALLBACK_CAP_CHANGED /* 524294 */:
                return "CALLBACK_CAP_CHANGED";
            case CALLBACK_IP_CHANGED /* 524295 */:
                return "CALLBACK_IP_CHANGED";
            case EXPIRE_LEGACY_REQUEST /* 524296 */:
                return "EXPIRE_LEGACY_REQUEST";
            case CALLBACK_SUSPENDED /* 524297 */:
                return "CALLBACK_SUSPENDED";
            case CALLBACK_RESUMED /* 524298 */:
                return "CALLBACK_RESUMED";
            default:
                return Integer.toString(i2);
        }
    }

    private CallbackHandler getDefaultHandler() {
        CallbackHandler callbackHandler;
        synchronized (sCallbacks) {
            if (sCallbackHandler == null) {
                sCallbackHandler = new CallbackHandler(ConnectivityThread.getInstanceLooper());
            }
            callbackHandler = sCallbackHandler;
        }
        return callbackHandler;
    }

    @Deprecated
    private static ConnectivityManager getInstance() {
        if (getInstanceOrNull() != null) {
            return getInstanceOrNull();
        }
        throw new IllegalStateException("No ConnectivityManager yet constructed");
    }

    @Deprecated
    public static ConnectivityManager getInstanceOrNull() {
        return sInstance;
    }

    private INetworkManagementService getNetworkManagementService() {
        synchronized (this) {
            INetworkManagementService iNetworkManagementService = this.mNMService;
            if (iNetworkManagementService != null) {
                return iNetworkManagementService;
            }
            INetworkManagementService iNetworkManagementServiceAsInterface = INetworkManagementService.Stub.asInterface(ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));
            this.mNMService = iNetworkManagementServiceAsInterface;
            return iNetworkManagementServiceAsInterface;
        }
    }

    private INetworkPolicyManager getNetworkPolicyManager() {
        synchronized (this) {
            INetworkPolicyManager iNetworkPolicyManager = this.mNPManager;
            if (iNetworkPolicyManager != null) {
                return iNetworkPolicyManager;
            }
            INetworkPolicyManager iNetworkPolicyManagerAsInterface = INetworkPolicyManager.Stub.asInterface(ServiceManager.getService(Context.NETWORK_POLICY_SERVICE));
            this.mNPManager = iNetworkPolicyManagerAsInterface;
            return iNetworkPolicyManagerAsInterface;
        }
    }

    public static String getNetworkTypeName(int i2) {
        switch (i2) {
            case -1:
                return KeyProperties.DIGEST_NONE;
            case 0:
                return "MOBILE";
            case 1:
                return "WIFI";
            case 2:
                return "MOBILE_MMS";
            case 3:
                return "MOBILE_SUPL";
            case 4:
                return "MOBILE_DUN";
            case 5:
                return "MOBILE_HIPRI";
            case 6:
                return "WIMAX";
            case 7:
                return "BLUETOOTH";
            case 8:
                return "DUMMY";
            case 9:
                return "ETHERNET";
            case 10:
                return "MOBILE_FOTA";
            case 11:
                return "MOBILE_IMS";
            case 12:
                return "MOBILE_CBS";
            case 13:
                return "WIFI_P2P";
            case 14:
                return "MOBILE_IA";
            case 15:
                return "MOBILE_EMERGENCY";
            case 16:
                return "PROXY";
            case 17:
                return "VPN";
            default:
                return Integer.toString(i2);
        }
    }

    @Deprecated
    public static Network getProcessDefaultNetwork() {
        int boundNetworkForProcess = NetworkUtils.getBoundNetworkForProcess();
        if (boundNetworkForProcess == 0) {
            return null;
        }
        return new Network(boundNetworkForProcess);
    }

    private int inferLegacyTypeForNetworkCapabilities(NetworkCapabilities networkCapabilities) {
        String str;
        if (networkCapabilities == null || !networkCapabilities.hasTransport(0) || !networkCapabilities.hasCapability(1)) {
            return -1;
        }
        int i2 = 5;
        if (networkCapabilities.hasCapability(5)) {
            str = "enableCBS";
            i2 = 12;
        } else if (networkCapabilities.hasCapability(4)) {
            str = "enableIMS";
            i2 = 11;
        } else if (networkCapabilities.hasCapability(3)) {
            str = "enableFOTA";
            i2 = 10;
        } else if (networkCapabilities.hasCapability(2)) {
            str = "enableDUN";
            i2 = 4;
        } else if (networkCapabilities.hasCapability(1)) {
            str = "enableSUPL";
            i2 = 3;
        } else if (networkCapabilities.hasCapability(12)) {
            str = "enableHIPRI";
        } else {
            str = null;
            i2 = -1;
        }
        if (str != null) {
            NetworkCapabilities networkCapabilitiesNetworkCapabilitiesForFeature = networkCapabilitiesForFeature(0, str);
            if (networkCapabilitiesNetworkCapabilitiesForFeature.equalsNetCapabilities(networkCapabilities) && networkCapabilitiesNetworkCapabilitiesForFeature.equalsTransportTypes(networkCapabilities)) {
                return i2;
            }
        }
        return -1;
    }

    public static boolean isNetworkTypeMobile(int i2) {
        if (i2 == 0 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 14 || i2 == 15) {
            return true;
        }
        switch (i2) {
            case 10:
            case 11:
            case 12:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean isNetworkTypeValid(int i2) {
        return i2 >= 0 && i2 <= 17;
    }

    public static boolean isNetworkTypeWifi(int i2) {
        return i2 == 1 || i2 == 13;
    }

    private int legacyTypeForNetworkCapabilities(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return -1;
        }
        if (networkCapabilities.hasCapability(5)) {
            return 12;
        }
        if (networkCapabilities.hasCapability(4)) {
            return 11;
        }
        if (networkCapabilities.hasCapability(3)) {
            return 10;
        }
        if (networkCapabilities.hasCapability(2)) {
            return 4;
        }
        if (networkCapabilities.hasCapability(1)) {
            return 3;
        }
        if (networkCapabilities.hasCapability(0)) {
            return 2;
        }
        if (networkCapabilities.hasCapability(12)) {
            return 5;
        }
        return networkCapabilities.hasCapability(6) ? 13 : -1;
    }

    private NetworkCapabilities networkCapabilitiesForFeature(int i2, String str) {
        if (i2 != 0) {
            if (i2 == 1 && "p2p".equals(str)) {
                return networkCapabilitiesForType(13);
            }
            return null;
        }
        str.getClass();
        switch (str) {
            case "enableHIPRI":
                return networkCapabilitiesForType(5);
            case "enableCBS":
                return networkCapabilitiesForType(12);
            case "enableDUN":
            case "enableDUNAlways":
                return networkCapabilitiesForType(4);
            case "enableIMS":
                return networkCapabilitiesForType(11);
            case "enableMMS":
                return networkCapabilitiesForType(2);
            case "enableFOTA":
                return networkCapabilitiesForType(10);
            case "enableSUPL":
                return networkCapabilitiesForType(3);
            default:
                return null;
        }
    }

    public static NetworkCapabilities networkCapabilitiesForType(int i2) {
        NetworkCapabilities networkCapabilities = new NetworkCapabilities();
        int i3 = sLegacyTypeToTransport.get(i2, -1);
        Preconditions.checkArgument(i3 != -1, "unknown legacy type: " + i2);
        networkCapabilities.addTransportType(i3);
        networkCapabilities.addCapability(sLegacyTypeToCapability.get(i2, 12));
        networkCapabilities.maybeMarkCapabilitiesRestricted();
        return networkCapabilities;
    }

    private boolean removeRequestForFeature(NetworkCapabilities networkCapabilities) {
        LegacyRequest legacyRequestRemove;
        synchronized (sLegacyRequests) {
            legacyRequestRemove = sLegacyRequests.remove(networkCapabilities);
        }
        if (legacyRequestRemove == null) {
            return false;
        }
        unregisterNetworkCallback(legacyRequestRemove.networkCallback);
        legacyRequestRemove.clearDnsBinding();
        return true;
    }

    private void renewRequestLocked(LegacyRequest legacyRequest) {
        legacyRequest.expireSequenceNumber++;
        m.t(new StringBuilder("renewing request to seqNum "), legacyRequest.expireSequenceNumber, TAG);
        sendExpireMsgForFeature(legacyRequest.networkCapabilities, legacyRequest.expireSequenceNumber, legacyRequest.delay);
    }

    private NetworkRequest requestNetworkForFeatureLocked(NetworkCapabilities networkCapabilities) {
        int iLegacyTypeForNetworkCapabilities = legacyTypeForNetworkCapabilities(networkCapabilities);
        try {
            int restoreDefaultNetworkDelay = this.mService.getRestoreDefaultNetworkDelay(iLegacyTypeForNetworkCapabilities);
            LegacyRequest legacyRequest = new LegacyRequest();
            legacyRequest.networkCapabilities = networkCapabilities;
            legacyRequest.delay = restoreDefaultNetworkDelay;
            legacyRequest.expireSequenceNumber = 0;
            NetworkRequest networkRequestSendRequestForNetwork = sendRequestForNetwork(networkCapabilities, legacyRequest.networkCallback, 0, 2, iLegacyTypeForNetworkCapabilities, getDefaultHandler());
            legacyRequest.networkRequest = networkRequestSendRequestForNetwork;
            if (networkRequestSendRequestForNetwork == null) {
                return null;
            }
            sLegacyRequests.put(networkCapabilities, legacyRequest);
            sendExpireMsgForFeature(networkCapabilities, legacyRequest.expireSequenceNumber, restoreDefaultNetworkDelay);
            return legacyRequest.networkRequest;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private void sendExpireMsgForFeature(NetworkCapabilities networkCapabilities, int i2, int i3) {
        if (i3 >= 0) {
            Log.d(TAG, "sending expire msg with seqNum " + i2 + " and delay " + i3);
            CallbackHandler defaultHandler = getDefaultHandler();
            defaultHandler.sendMessageDelayed(defaultHandler.obtainMessage(EXPIRE_LEGACY_REQUEST, i2, 0, networkCapabilities), (long) i3);
        }
    }

    private NetworkRequest sendRequestForNetwork(NetworkCapabilities networkCapabilities, NetworkCallback networkCallback, int i2, int i3, int i4, CallbackHandler callbackHandler) {
        NetworkRequest networkRequestListenForNetwork;
        checkCallbackNotNull(networkCallback);
        Preconditions.checkArgument(i3 == 2 || networkCapabilities != null, "null NetworkCapabilities");
        try {
            HashMap<NetworkRequest, NetworkCallback> map = sCallbacks;
            synchronized (map) {
                if (networkCallback.networkRequest != null && networkCallback.networkRequest != ALREADY_UNREGISTERED) {
                    Log.e(TAG, "NetworkCallback was already registered");
                }
                Messenger messenger = new Messenger(callbackHandler);
                Binder binder = new Binder();
                networkRequestListenForNetwork = i3 == 1 ? this.mService.listenForNetwork(networkCapabilities, messenger, binder) : this.mService.requestNetwork(networkCapabilities, messenger, i2, binder, i4);
                if (networkRequestListenForNetwork != null) {
                    map.put(networkRequestListenForNetwork, networkCallback);
                }
                networkCallback.networkRequest = networkRequestListenForNetwork;
            }
            return networkRequestListenForNetwork;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (ServiceSpecificException e3) {
            throw convertServiceException(e3);
        }
    }

    @Deprecated
    public static boolean setProcessDefaultNetwork(Network network) {
        int i2 = network == null ? 0 : network.netId;
        if (i2 == NetworkUtils.getBoundNetworkForProcess()) {
            return true;
        }
        if (!NetworkUtils.bindProcessToNetwork(i2)) {
            return false;
        }
        try {
            Proxy.setHttpProxySystemProperty(getInstance().getDefaultProxy());
        } catch (SecurityException e2) {
            Log.e(TAG, "Can't set proxy properties", e2);
        }
        InetAddress.clearDnsCache();
        NetworkEventDispatcher.getInstance().onNetworkConfigurationChanged();
        return true;
    }

    @Deprecated
    public static boolean setProcessDefaultNetworkForHostResolution(Network network) {
        return NetworkUtils.bindProcessToNetworkForHostResolution(network == null ? 0 : network.netId);
    }

    private void unsupportedStartingFrom(int i2) {
        if (Process.myUid() != 1000 && this.mContext.getApplicationInfo().targetSdkVersion >= i2) {
            throw new UnsupportedOperationException(c.e("This method is not supported in target SDK version ", i2, " and above"));
        }
    }

    public void addDefaultNetworkActiveListener(final OnNetworkActiveListener onNetworkActiveListener) {
        INetworkActivityListener.Stub stub = new INetworkActivityListener.Stub() { // from class: android.net.ConnectivityManager.1
            @Override // android.os.INetworkActivityListener
            public void onNetworkActive() {
                onNetworkActiveListener.onNetworkActive();
            }
        };
        try {
            getNetworkManagementService().registerNetworkActivityListener(stub);
            this.mNetworkActivityListeners.put(onNetworkActiveListener, stub);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean bindProcessToNetwork(Network network) {
        return setProcessDefaultNetwork(network);
    }

    public int checkMobileProvisioning(int i2) {
        try {
            return this.mService.checkMobileProvisioning(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int disableTetherPCInternet() {
        try {
            return this.mService.disableTetherPCInternet();
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public int enableTetherPCInternet(String str) {
        try {
            return this.mService.enableTetherPCInternet(str);
        } catch (RemoteException unused) {
            return 1;
        }
    }

    public void factoryReset() {
        try {
            this.mService.factoryReset();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public LinkProperties getActiveLinkProperties() {
        try {
            return this.mService.getActiveLinkProperties();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Network getActiveNetwork() {
        try {
            return this.mService.getActiveNetwork();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Network getActiveNetworkForUid(int i2) {
        return getActiveNetworkForUid(i2, false);
    }

    public NetworkInfo getActiveNetworkInfo() {
        try {
            return this.mService.getActiveNetworkInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkInfo getActiveNetworkInfoForUid(int i2) {
        return getActiveNetworkInfoForUid(i2, false);
    }

    @Deprecated
    public NetworkQuotaInfo getActiveNetworkQuotaInfo() {
        try {
            return this.mService.getActiveNetworkQuotaInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public NetworkInfo[] getAllNetworkInfo() {
        try {
            return this.mService.getAllNetworkInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Network[] getAllNetworks() {
        try {
            return this.mService.getAllNetworks();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getAlwaysOnVpnPackageForUser(int i2) {
        try {
            return this.mService.getAlwaysOnVpnPackage(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean getBackgroundDataSetting() {
        return true;
    }

    public Network getBoundNetworkForProcess() {
        return getProcessDefaultNetwork();
    }

    public String getCaptivePortalServerUrl() {
        try {
            return this.mService.getCaptivePortalServerUrl();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkCapabilities[] getDefaultNetworkCapabilitiesForUser(int i2) {
        try {
            return this.mService.getDefaultNetworkCapabilitiesForUser(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ProxyInfo getDefaultProxy() {
        return getProxyForNetwork(getBoundNetworkForProcess());
    }

    public ProxyInfo getGlobalProxy() {
        try {
            return this.mService.getGlobalProxy();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getLastTetherError(String str) {
        try {
            return this.mService.getLastTetherError(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public LinkProperties getLinkProperties(int i2) {
        try {
            return this.mService.getLinkPropertiesForType(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean getMobileDataEnabled() {
        IBinder service = ServiceManager.getService("phone");
        if (service == null) {
            Log.d(TAG, "getMobileDataEnabled()- remote exception retVal=false");
            return false;
        }
        try {
            ITelephony iTelephonyAsInterface = ITelephony.Stub.asInterface(service);
            int defaultDataSubscriptionId = SubscriptionManager.getDefaultDataSubscriptionId();
            Log.d(TAG, "getMobileDataEnabled()+ subId=" + defaultDataSubscriptionId);
            boolean dataEnabled = iTelephonyAsInterface.getDataEnabled(defaultDataSubscriptionId);
            Log.d(TAG, "getMobileDataEnabled()- subId=" + defaultDataSubscriptionId + " retVal=" + dataEnabled);
            return dataEnabled;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getMobileProvisioningUrl() {
        try {
            return this.mService.getMobileProvisioningUrl();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getMultipathPreference(Network network) {
        try {
            return this.mService.getMultipathPreference(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkCapabilities getNetworkCapabilities(Network network) {
        try {
            return this.mService.getNetworkCapabilities(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public Network getNetworkForType(int i2) {
        try {
            return this.mService.getNetworkForType(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public NetworkInfo getNetworkInfo(int i2) {
        try {
            return this.mService.getNetworkInfo(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkInfo getNetworkInfoForUid(Network network, int i2, boolean z2) {
        try {
            return this.mService.getNetworkInfoForUid(network, i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public int getNetworkPreference() {
        return -1;
    }

    public boolean getPCNetTether() {
        try {
            return this.mService.getPCNetTether();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public ProxyInfo getProxyForNetwork(Network network) {
        try {
            return this.mService.getProxyForNetwork(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getRestrictBackgroundStatus() {
        try {
            return getNetworkPolicyManager().getRestrictBackgroundByCaller();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetherableBluetoothRegexs() {
        try {
            return this.mService.getTetherableBluetoothRegexs();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetherableIfaces() {
        try {
            return this.mService.getTetherableIfaces();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetherableUsbRegexs() {
        try {
            return this.mService.getTetherableUsbRegexs();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetherableWifiRegexs() {
        try {
            return this.mService.getTetherableWifiRegexs();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetheredDhcpRanges() {
        try {
            return this.mService.getTetheredDhcpRanges();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetheredIfaces() {
        try {
            return this.mService.getTetheredIfaces();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String[] getTetheringErroredIfaces() {
        try {
            return this.mService.getTetheringErroredIfaces();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isActiveNetworkMetered() {
        try {
            return this.mService.isActiveNetworkMetered();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isAlwaysOnVpnPackageSupportedForUser(int i2, String str) {
        try {
            return this.mService.isAlwaysOnVpnPackageSupported(i2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isDefaultNetworkActive() {
        try {
            return getNetworkManagementService().isNetworkActive();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isNetworkSupported(int i2) {
        try {
            return this.mService.isNetworkSupported(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isTetheringSupported() {
        try {
            return this.mService.isTetheringSupported(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (SecurityException unused) {
            return false;
        }
    }

    public void registerDefaultNetworkCallback(NetworkCallback networkCallback) {
        registerDefaultNetworkCallback(networkCallback, getDefaultHandler());
    }

    public int registerNetworkAgent(Messenger messenger, NetworkInfo networkInfo, LinkProperties linkProperties, NetworkCapabilities networkCapabilities, int i2, NetworkMisc networkMisc) {
        try {
            return this.mService.registerNetworkAgent(messenger, networkInfo, linkProperties, networkCapabilities, i2, networkMisc);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerNetworkCallback(NetworkRequest networkRequest, NetworkCallback networkCallback) {
        registerNetworkCallback(networkRequest, networkCallback, getDefaultHandler());
    }

    public void registerNetworkFactory(Messenger messenger, String str) {
        try {
            this.mService.registerNetworkFactory(messenger, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void releaseNetworkRequest(PendingIntent pendingIntent) {
        checkPendingIntentNotNull(pendingIntent);
        try {
            this.mService.releasePendingNetworkRequest(pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeDefaultNetworkActiveListener(OnNetworkActiveListener onNetworkActiveListener) {
        INetworkActivityListener iNetworkActivityListener = this.mNetworkActivityListeners.get(onNetworkActiveListener);
        Preconditions.checkArgument(iNetworkActivityListener != null, "Listener was not registered.");
        try {
            getNetworkManagementService().unregisterNetworkActivityListener(iNetworkActivityListener);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void reportBadNetwork(Network network) {
        try {
            this.mService.reportNetworkConnectivity(network, true);
            this.mService.reportNetworkConnectivity(network, false);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportInetCondition(int i2, int i3) {
        try {
            this.mService.reportInetCondition(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void reportNetworkConnectivity(Network network, boolean z2) {
        try {
            this.mService.reportNetworkConnectivity(network, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean requestBandwidthUpdate(Network network) {
        try {
            return this.mService.requestBandwidthUpdate(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestNetwork(NetworkRequest networkRequest, NetworkCallback networkCallback, int i2, int i3, Handler handler) {
        sendRequestForNetwork(networkRequest.networkCapabilities, networkCallback, i2, 2, i3, new CallbackHandler(this, handler));
    }

    @Deprecated
    public boolean requestRouteToHost(int i2, int i3) {
        return requestRouteToHostAddress(i2, NetworkUtils.intToInetAddress(i3));
    }

    @Deprecated
    public boolean requestRouteToHostAddress(int i2, InetAddress inetAddress) {
        checkLegacyRoutingApiAccess();
        try {
            return this.mService.requestRouteToHostAddress(i2, inetAddress.getAddress());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAcceptUnvalidated(Network network, boolean z2, boolean z3) {
        try {
            this.mService.setAcceptUnvalidated(network, z2, z3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAirplaneMode(boolean z2) {
        try {
            this.mService.setAirplaneMode(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setAlwaysOnVpnPackageForUser(int i2, String str, boolean z2) {
        try {
            return this.mService.setAlwaysOnVpnPackage(i2, str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAvoidUnvalidated(Network network) {
        try {
            this.mService.setAvoidUnvalidated(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setBackgroundDataSetting(boolean z2) {
    }

    public void setGlobalProxy(ProxyInfo proxyInfo) {
        try {
            this.mService.setGlobalProxy(proxyInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void setNetworkPreference(int i2) {
    }

    @Deprecated
    public void setProvisioningNotificationVisible(boolean z2, int i2, String str) {
        try {
            this.mService.setProvisioningNotificationVisible(z2, i2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int setUsbTethering(boolean z2) {
        try {
            String opPackageName = this.mContext.getOpPackageName();
            Log.i(TAG, "setUsbTethering caller:" + opPackageName);
            return this.mService.setUsbTethering(z2, opPackageName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startCaptivePortalApp(Network network) {
        try {
            this.mService.startCaptivePortalApp(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PacketKeepalive startNattKeepalive(Network network, int i2, PacketKeepaliveCallback packetKeepaliveCallback, InetAddress inetAddress, int i3, InetAddress inetAddress2) {
        PacketKeepalive packetKeepalive = new PacketKeepalive(network, packetKeepaliveCallback);
        try {
            this.mService.startNattKeepalive(network, i2, packetKeepalive.mMessenger, new Binder(), inetAddress.getHostAddress(), i3, inetAddress2.getHostAddress());
            return packetKeepalive;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error starting packet keepalive: ", e2);
            packetKeepalive.stopLooper();
            return null;
        }
    }

    public void startTethering(int i2, boolean z2, OnStartTetheringCallback onStartTetheringCallback) {
        startTethering(i2, z2, onStartTetheringCallback, null);
    }

    @Deprecated
    public int startUsingNetworkFeature(int i2, String str) {
        checkLegacyRoutingApiAccess();
        NetworkCapabilities networkCapabilitiesNetworkCapabilitiesForFeature = networkCapabilitiesForFeature(i2, str);
        if (networkCapabilitiesNetworkCapabilitiesForFeature == null) {
            Log.d(TAG, "Can't satisfy startUsingNetworkFeature for " + i2 + ", " + str);
            return 3;
        }
        synchronized (sLegacyRequests) {
            LegacyRequest legacyRequest = sLegacyRequests.get(networkCapabilitiesNetworkCapabilitiesForFeature);
            if (legacyRequest != null) {
                Log.d(TAG, "renewing startUsingNetworkFeature request " + legacyRequest.networkRequest);
                renewRequestLocked(legacyRequest);
                return legacyRequest.currentNetwork != null ? 0 : 1;
            }
            NetworkRequest networkRequestRequestNetworkForFeatureLocked = requestNetworkForFeatureLocked(networkCapabilitiesNetworkCapabilitiesForFeature);
            if (networkRequestRequestNetworkForFeatureLocked == null) {
                Log.d(TAG, " request Failed");
                return 3;
            }
            Log.d(TAG, "starting startUsingNetworkFeature for request " + networkRequestRequestNetworkForFeatureLocked);
            return 1;
        }
    }

    public void stopTethering(int i2) {
        try {
            String opPackageName = this.mContext.getOpPackageName();
            Log.i(TAG, "stopTethering caller:" + opPackageName);
            this.mService.stopTethering(i2, opPackageName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public int stopUsingNetworkFeature(int i2, String str) {
        checkLegacyRoutingApiAccess();
        NetworkCapabilities networkCapabilitiesNetworkCapabilitiesForFeature = networkCapabilitiesForFeature(i2, str);
        if (networkCapabilitiesNetworkCapabilitiesForFeature == null) {
            Log.d(TAG, "Can't satisfy stopUsingNetworkFeature for " + i2 + ", " + str);
            return -1;
        }
        if (!removeRequestForFeature(networkCapabilitiesNetworkCapabilitiesForFeature)) {
            return 1;
        }
        Log.d(TAG, "stopUsingNetworkFeature for " + i2 + ", " + str);
        return 1;
    }

    public int tether(String str) {
        try {
            String opPackageName = this.mContext.getOpPackageName();
            Log.i(TAG, "tether caller:" + opPackageName);
            return this.mService.tether(str, opPackageName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterNetworkCallback(NetworkCallback networkCallback) {
        checkCallbackNotNull(networkCallback);
        ArrayList<NetworkRequest> arrayList = new ArrayList();
        HashMap<NetworkRequest, NetworkCallback> map = sCallbacks;
        synchronized (map) {
            try {
                boolean z2 = true;
                Preconditions.checkArgument(networkCallback.networkRequest != null, "NetworkCallback was not registered");
                if (networkCallback.networkRequest == ALREADY_UNREGISTERED) {
                    z2 = false;
                }
                Preconditions.checkArgument(z2, "NetworkCallback was already unregistered");
                for (Map.Entry<NetworkRequest, NetworkCallback> entry : map.entrySet()) {
                    if (entry.getValue() == networkCallback) {
                        arrayList.add(entry.getKey());
                    }
                }
                for (NetworkRequest networkRequest : arrayList) {
                    try {
                        this.mService.releaseNetworkRequest(networkRequest);
                        sCallbacks.remove(networkRequest);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
                networkCallback.networkRequest = ALREADY_UNREGISTERED;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterNetworkFactory(Messenger messenger) {
        try {
            this.mService.unregisterNetworkFactory(messenger);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int untether(String str) {
        try {
            String opPackageName = this.mContext.getOpPackageName();
            Log.i(TAG, "untether caller:" + opPackageName);
            return this.mService.untether(str, opPackageName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean updateLockdownVpn() {
        try {
            return this.mService.updateLockdownVpn();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public class CallbackHandler extends Handler {
        private static final boolean DBG = false;
        private static final String TAG = "ConnectivityManager.CallbackHandler";

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        private <T> T getObject(Message message, Class<T> cls) {
            return (T) message.getData().getParcelable(cls.getSimpleName());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            NetworkCallback networkCallback;
            if (message.what == ConnectivityManager.EXPIRE_LEGACY_REQUEST) {
                ConnectivityManager.this.expireRequest((NetworkCapabilities) message.obj, message.arg1);
                return;
            }
            NetworkRequest networkRequest = (NetworkRequest) getObject(message, NetworkRequest.class);
            Network network = (Network) getObject(message, Network.class);
            synchronized (ConnectivityManager.sCallbacks) {
                networkCallback = (NetworkCallback) ConnectivityManager.sCallbacks.get(networkRequest);
            }
            if (networkCallback == null) {
                Log.w(TAG, "callback not found for " + ConnectivityManager.getCallbackName(message.what) + " message");
                return;
            }
            switch (message.what) {
                case ConnectivityManager.CALLBACK_PRECHECK /* 524289 */:
                    networkCallback.onPreCheck(network);
                    return;
                case 524290:
                    networkCallback.onAvailable(network);
                    return;
                case 524291:
                    networkCallback.onLosing(network, message.arg1);
                    return;
                case 524292:
                    networkCallback.onLost(network);
                    return;
                case ConnectivityManager.CALLBACK_UNAVAIL /* 524293 */:
                    networkCallback.onUnavailable();
                    return;
                case ConnectivityManager.CALLBACK_CAP_CHANGED /* 524294 */:
                    networkCallback.onCapabilitiesChanged(network, (NetworkCapabilities) getObject(message, NetworkCapabilities.class));
                    return;
                case ConnectivityManager.CALLBACK_IP_CHANGED /* 524295 */:
                    networkCallback.onLinkPropertiesChanged(network, (LinkProperties) getObject(message, LinkProperties.class));
                    return;
                case ConnectivityManager.EXPIRE_LEGACY_REQUEST /* 524296 */:
                default:
                    return;
                case ConnectivityManager.CALLBACK_SUSPENDED /* 524297 */:
                    networkCallback.onNetworkSuspended(network);
                    return;
                case ConnectivityManager.CALLBACK_RESUMED /* 524298 */:
                    networkCallback.onNetworkResumed(network);
                    return;
            }
        }

        public CallbackHandler(ConnectivityManager connectivityManager, Handler handler) {
            this(((Handler) Preconditions.checkNotNull(handler, "Handler cannot be null.")).getLooper());
        }
    }

    public Network getActiveNetworkForUid(int i2, boolean z2) {
        try {
            return this.mService.getActiveNetworkForUid(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkInfo getActiveNetworkInfoForUid(int i2, boolean z2) {
        try {
            return this.mService.getActiveNetworkInfoForUid(i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerDefaultNetworkCallback(NetworkCallback networkCallback, Handler handler) {
        sendRequestForNetwork(null, networkCallback, 0, 2, -1, new CallbackHandler(this, handler));
    }

    public void registerNetworkCallback(NetworkRequest networkRequest, NetworkCallback networkCallback, Handler handler) {
        sendRequestForNetwork(networkRequest.networkCapabilities, networkCallback, 0, 1, -1, new CallbackHandler(this, handler));
    }

    public void startTethering(int i2, boolean z2, final OnStartTetheringCallback onStartTetheringCallback, Handler handler) {
        Preconditions.checkNotNull(onStartTetheringCallback, "OnStartTetheringCallback cannot be null.");
        ResultReceiver resultReceiver = new ResultReceiver(handler) { // from class: android.net.ConnectivityManager.2
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i3, Bundle bundle) {
                if (i3 == 0) {
                    onStartTetheringCallback.onTetheringStarted();
                } else {
                    onStartTetheringCallback.onTetheringFailed();
                }
            }
        };
        try {
            String opPackageName = this.mContext.getOpPackageName();
            Log.i(TAG, "startTethering caller:" + opPackageName);
            this.mService.startTethering(i2, resultReceiver, z2, opPackageName);
        } catch (RemoteException e2) {
            Log.e(TAG, "Exception trying to start tethering.", e2);
            resultReceiver.send(2, null);
        }
    }

    public LinkProperties getLinkProperties(Network network) {
        try {
            return this.mService.getLinkProperties(network);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkInfo getNetworkInfo(Network network) {
        return getNetworkInfoForUid(network, Process.myUid(), false);
    }

    public void requestNetwork(NetworkRequest networkRequest, NetworkCallback networkCallback) {
        requestNetwork(networkRequest, networkCallback, getDefaultHandler());
    }

    public void registerNetworkCallback(NetworkRequest networkRequest, PendingIntent pendingIntent) {
        checkPendingIntentNotNull(pendingIntent);
        try {
            this.mService.pendingListenForNetwork(networkRequest.networkCapabilities, pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (ServiceSpecificException e3) {
            throw convertServiceException(e3);
        }
    }

    public void requestNetwork(NetworkRequest networkRequest, NetworkCallback networkCallback, Handler handler) {
        requestNetwork(networkRequest, networkCallback, 0, inferLegacyTypeForNetworkCapabilities(networkRequest.networkCapabilities), new CallbackHandler(this, handler));
    }

    public void requestNetwork(NetworkRequest networkRequest, NetworkCallback networkCallback, int i2) {
        checkTimeout(i2);
        requestNetwork(networkRequest, networkCallback, i2, inferLegacyTypeForNetworkCapabilities(networkRequest.networkCapabilities), getDefaultHandler());
    }

    public void requestNetwork(NetworkRequest networkRequest, NetworkCallback networkCallback, Handler handler, int i2) {
        checkTimeout(i2);
        requestNetwork(networkRequest, networkCallback, i2, inferLegacyTypeForNetworkCapabilities(networkRequest.networkCapabilities), new CallbackHandler(this, handler));
    }

    public void requestNetwork(NetworkRequest networkRequest, PendingIntent pendingIntent) {
        checkPendingIntentNotNull(pendingIntent);
        try {
            this.mService.pendingRequestForNetwork(networkRequest.networkCapabilities, pendingIntent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (ServiceSpecificException e3) {
            throw convertServiceException(e3);
        }
    }

    public void unregisterNetworkCallback(PendingIntent pendingIntent) {
        checkPendingIntentNotNull(pendingIntent);
        releaseNetworkRequest(pendingIntent);
    }
}
