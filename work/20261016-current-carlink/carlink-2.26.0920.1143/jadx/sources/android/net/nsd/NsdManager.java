package android.net.nsd;

import android.app.m;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.Preconditions;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final class NsdManager {
    public static final String ACTION_NSD_STATE_CHANGED = "android.net.nsd.STATE_CHANGED";
    private static final int BASE = 393216;
    private static final boolean DBG = false;
    public static final int DISABLE = 393241;
    public static final int DISCOVER_SERVICES = 393217;
    public static final int DISCOVER_SERVICES_FAILED = 393219;
    public static final int DISCOVER_SERVICES_STARTED = 393218;
    public static final int ENABLE = 393240;
    private static final SparseArray<String> EVENT_NAMES;
    public static final String EXTRA_NSD_STATE = "nsd_state";
    public static final int FAILURE_ALREADY_ACTIVE = 3;
    public static final int FAILURE_INTERNAL_ERROR = 0;
    public static final int FAILURE_MAX_LIMIT = 4;
    private static int FIRST_LISTENER_KEY = 0;
    public static final int NATIVE_DAEMON_EVENT = 393242;
    public static final int NSD_STATE_DISABLED = 1;
    public static final int NSD_STATE_ENABLED = 2;
    public static final int PROTOCOL_DNS_SD = 1;
    public static final int REGISTER_SERVICE = 393225;
    public static final int REGISTER_SERVICE_FAILED = 393226;
    public static final int REGISTER_SERVICE_SUCCEEDED = 393227;
    public static final int RESOLVE_SERVICE = 393234;
    public static final int RESOLVE_SERVICE_FAILED = 393235;
    public static final int RESOLVE_SERVICE_SUCCEEDED = 393236;
    public static final int SERVICE_FOUND = 393220;
    public static final int SERVICE_LOST = 393221;
    public static final int STOP_DISCOVERY = 393222;
    public static final int STOP_DISCOVERY_FAILED = 393223;
    public static final int STOP_DISCOVERY_SUCCEEDED = 393224;
    private static final String TAG = "NsdManager";
    public static final int UNREGISTER_SERVICE = 393228;
    public static final int UNREGISTER_SERVICE_FAILED = 393229;
    public static final int UNREGISTER_SERVICE_SUCCEEDED = 393230;
    private final Context mContext;
    private ServiceHandler mHandler;
    private final INsdManager mService;
    private int mListenerKey = FIRST_LISTENER_KEY;
    private final SparseArray mListenerMap = new SparseArray();
    private final SparseArray<NsdServiceInfo> mServiceMap = new SparseArray<>();
    private final Object mMapLock = new Object();
    private final AsyncChannel mAsyncChannel = new AsyncChannel();
    private final CountDownLatch mConnected = new CountDownLatch(1);

    public interface DiscoveryListener {
        void onDiscoveryStarted(String str);

        void onDiscoveryStopped(String str);

        void onServiceFound(NsdServiceInfo nsdServiceInfo);

        void onServiceLost(NsdServiceInfo nsdServiceInfo);

        void onStartDiscoveryFailed(String str, int i2);

        void onStopDiscoveryFailed(String str, int i2);
    }

    public interface RegistrationListener {
        void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i2);

        void onServiceRegistered(NsdServiceInfo nsdServiceInfo);

        void onServiceUnregistered(NsdServiceInfo nsdServiceInfo);

        void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i2);
    }

    public interface ResolveListener {
        void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i2);

        void onServiceResolved(NsdServiceInfo nsdServiceInfo);
    }

    public class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            NsdServiceInfo nsdServiceInfo;
            int i2 = message.what;
            int i3 = message.arg2;
            if (i2 == 69632) {
                NsdManager.this.mAsyncChannel.sendMessage(AsyncChannel.CMD_CHANNEL_FULL_CONNECTION);
                return;
            }
            if (i2 == 69634) {
                NsdManager.this.mConnected.countDown();
                return;
            }
            if (i2 == 69636) {
                Log.e(NsdManager.TAG, "Channel lost");
                return;
            }
            synchronized (NsdManager.this.mMapLock) {
                obj = NsdManager.this.mListenerMap.get(i3);
                nsdServiceInfo = (NsdServiceInfo) NsdManager.this.mServiceMap.get(i3);
            }
            if (obj == null) {
                m.t(new StringBuilder("Stale key "), message.arg2, NsdManager.TAG);
                return;
            }
            switch (i2) {
                case NsdManager.DISCOVER_SERVICES_STARTED /* 393218 */:
                    ((DiscoveryListener) obj).onDiscoveryStarted(NsdManager.getNsdServiceInfoType((NsdServiceInfo) message.obj));
                    return;
                case NsdManager.DISCOVER_SERVICES_FAILED /* 393219 */:
                    NsdManager.this.removeListener(i3);
                    ((DiscoveryListener) obj).onStartDiscoveryFailed(NsdManager.getNsdServiceInfoType(nsdServiceInfo), message.arg1);
                    return;
                case NsdManager.SERVICE_FOUND /* 393220 */:
                    ((DiscoveryListener) obj).onServiceFound((NsdServiceInfo) message.obj);
                    return;
                case NsdManager.SERVICE_LOST /* 393221 */:
                    ((DiscoveryListener) obj).onServiceLost((NsdServiceInfo) message.obj);
                    return;
                case NsdManager.STOP_DISCOVERY /* 393222 */:
                case NsdManager.REGISTER_SERVICE /* 393225 */:
                case NsdManager.UNREGISTER_SERVICE /* 393228 */:
                case 393231:
                case 393232:
                case 393233:
                case NsdManager.RESOLVE_SERVICE /* 393234 */:
                default:
                    Log.d(NsdManager.TAG, "Ignored " + message);
                    return;
                case NsdManager.STOP_DISCOVERY_FAILED /* 393223 */:
                    NsdManager.this.removeListener(i3);
                    ((DiscoveryListener) obj).onStopDiscoveryFailed(NsdManager.getNsdServiceInfoType(nsdServiceInfo), message.arg1);
                    return;
                case NsdManager.STOP_DISCOVERY_SUCCEEDED /* 393224 */:
                    NsdManager.this.removeListener(i3);
                    ((DiscoveryListener) obj).onDiscoveryStopped(NsdManager.getNsdServiceInfoType(nsdServiceInfo));
                    return;
                case NsdManager.REGISTER_SERVICE_FAILED /* 393226 */:
                    NsdManager.this.removeListener(i3);
                    ((RegistrationListener) obj).onRegistrationFailed(nsdServiceInfo, message.arg1);
                    return;
                case NsdManager.REGISTER_SERVICE_SUCCEEDED /* 393227 */:
                    ((RegistrationListener) obj).onServiceRegistered((NsdServiceInfo) message.obj);
                    return;
                case NsdManager.UNREGISTER_SERVICE_FAILED /* 393229 */:
                    NsdManager.this.removeListener(i3);
                    ((RegistrationListener) obj).onUnregistrationFailed(nsdServiceInfo, message.arg1);
                    return;
                case NsdManager.UNREGISTER_SERVICE_SUCCEEDED /* 393230 */:
                    NsdManager.this.removeListener(message.arg2);
                    ((RegistrationListener) obj).onServiceUnregistered(nsdServiceInfo);
                    return;
                case NsdManager.RESOLVE_SERVICE_FAILED /* 393235 */:
                    NsdManager.this.removeListener(i3);
                    ((ResolveListener) obj).onResolveFailed(nsdServiceInfo, message.arg1);
                    return;
                case NsdManager.RESOLVE_SERVICE_SUCCEEDED /* 393236 */:
                    NsdManager.this.removeListener(i3);
                    ((ResolveListener) obj).onServiceResolved((NsdServiceInfo) message.obj);
                    return;
            }
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        EVENT_NAMES = sparseArray;
        sparseArray.put(DISCOVER_SERVICES, "DISCOVER_SERVICES");
        sparseArray.put(DISCOVER_SERVICES_STARTED, "DISCOVER_SERVICES_STARTED");
        sparseArray.put(DISCOVER_SERVICES_FAILED, "DISCOVER_SERVICES_FAILED");
        sparseArray.put(SERVICE_FOUND, "SERVICE_FOUND");
        sparseArray.put(SERVICE_LOST, "SERVICE_LOST");
        sparseArray.put(STOP_DISCOVERY, "STOP_DISCOVERY");
        sparseArray.put(STOP_DISCOVERY_FAILED, "STOP_DISCOVERY_FAILED");
        sparseArray.put(STOP_DISCOVERY_SUCCEEDED, "STOP_DISCOVERY_SUCCEEDED");
        sparseArray.put(REGISTER_SERVICE, "REGISTER_SERVICE");
        sparseArray.put(REGISTER_SERVICE_FAILED, "REGISTER_SERVICE_FAILED");
        sparseArray.put(REGISTER_SERVICE_SUCCEEDED, "REGISTER_SERVICE_SUCCEEDED");
        sparseArray.put(UNREGISTER_SERVICE, "UNREGISTER_SERVICE");
        sparseArray.put(UNREGISTER_SERVICE_FAILED, "UNREGISTER_SERVICE_FAILED");
        sparseArray.put(UNREGISTER_SERVICE_SUCCEEDED, "UNREGISTER_SERVICE_SUCCEEDED");
        sparseArray.put(RESOLVE_SERVICE, "RESOLVE_SERVICE");
        sparseArray.put(RESOLVE_SERVICE_FAILED, "RESOLVE_SERVICE_FAILED");
        sparseArray.put(RESOLVE_SERVICE_SUCCEEDED, "RESOLVE_SERVICE_SUCCEEDED");
        sparseArray.put(ENABLE, "ENABLE");
        sparseArray.put(DISABLE, "DISABLE");
        sparseArray.put(NATIVE_DAEMON_EVENT, "NATIVE_DAEMON_EVENT");
        FIRST_LISTENER_KEY = 1;
    }

    public NsdManager(Context context, INsdManager iNsdManager) {
        this.mService = iNsdManager;
        this.mContext = context;
        init();
    }

    private static void checkListener(Object obj) {
        Preconditions.checkNotNull(obj, "listener cannot be null");
    }

    private static void checkProtocol(int i2) {
        Preconditions.checkArgument(i2 == 1, "Unsupported protocol");
    }

    private static void checkServiceInfo(NsdServiceInfo nsdServiceInfo) {
        Preconditions.checkNotNull(nsdServiceInfo, "NsdServiceInfo cannot be null");
        Preconditions.checkStringNotEmpty(nsdServiceInfo.getServiceName(), "Service name cannot be empty");
        Preconditions.checkStringNotEmpty(nsdServiceInfo.getServiceType(), "Service type cannot be empty");
    }

    private static void fatal(String str) {
        Log.e(TAG, str);
        throw new RuntimeException(str);
    }

    private int getListenerKey(Object obj) {
        int iKeyAt;
        checkListener(obj);
        synchronized (this.mMapLock) {
            int iIndexOfValue = this.mListenerMap.indexOfValue(obj);
            Preconditions.checkArgument(iIndexOfValue != -1, "listener not registered");
            iKeyAt = this.mListenerMap.keyAt(iIndexOfValue);
        }
        return iKeyAt;
    }

    private Messenger getMessenger() {
        try {
            return this.mService.getMessenger();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getNsdServiceInfoType(NsdServiceInfo nsdServiceInfo) {
        return nsdServiceInfo == null ? "?" : nsdServiceInfo.getServiceType();
    }

    private void init() {
        Messenger messenger = getMessenger();
        if (messenger == null) {
            fatal("Failed to obtain service Messenger");
        }
        HandlerThread handlerThread = new HandlerThread("NsdManager");
        handlerThread.start();
        ServiceHandler serviceHandler = new ServiceHandler(handlerThread.getLooper());
        this.mHandler = serviceHandler;
        this.mAsyncChannel.connect(this.mContext, serviceHandler, messenger);
        try {
            this.mConnected.await();
        } catch (InterruptedException unused) {
            fatal("Interrupted wait at init");
        }
    }

    public static String nameOf(int i2) {
        String str = EVENT_NAMES.get(i2);
        return str == null ? Integer.toString(i2) : str;
    }

    private int nextListenerKey() {
        int iMax = Math.max(FIRST_LISTENER_KEY, this.mListenerKey + 1);
        this.mListenerKey = iMax;
        return iMax;
    }

    private int putListener(Object obj, NsdServiceInfo nsdServiceInfo) {
        int iNextListenerKey;
        checkListener(obj);
        synchronized (this.mMapLock) {
            Preconditions.checkArgument(this.mListenerMap.indexOfValue(obj) == -1, "listener already in use");
            iNextListenerKey = nextListenerKey();
            this.mListenerMap.put(iNextListenerKey, obj);
            this.mServiceMap.put(iNextListenerKey, nsdServiceInfo);
        }
        return iNextListenerKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeListener(int i2) {
        synchronized (this.mMapLock) {
            this.mListenerMap.remove(i2);
            this.mServiceMap.remove(i2);
        }
    }

    public void disconnect() {
        this.mAsyncChannel.disconnect();
    }

    public void discoverServices(String str, int i2, DiscoveryListener discoveryListener) {
        Preconditions.checkStringNotEmpty(str, "Service type cannot be empty");
        checkProtocol(i2);
        NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
        nsdServiceInfo.setServiceType(str);
        this.mAsyncChannel.sendMessage(DISCOVER_SERVICES, 0, putListener(discoveryListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void registerService(NsdServiceInfo nsdServiceInfo, int i2, RegistrationListener registrationListener) {
        Preconditions.checkArgument(nsdServiceInfo.getPort() > 0, "Invalid port number");
        checkServiceInfo(nsdServiceInfo);
        checkProtocol(i2);
        this.mAsyncChannel.sendMessage(REGISTER_SERVICE, 0, putListener(registrationListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void resolveService(NsdServiceInfo nsdServiceInfo, ResolveListener resolveListener) {
        checkServiceInfo(nsdServiceInfo);
        this.mAsyncChannel.sendMessage(RESOLVE_SERVICE, 0, putListener(resolveListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void setEnabled(boolean z2) {
        try {
            this.mService.setEnabled(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void stopServiceDiscovery(DiscoveryListener discoveryListener) {
        this.mAsyncChannel.sendMessage(STOP_DISCOVERY, 0, getListenerKey(discoveryListener));
    }

    public void unregisterService(RegistrationListener registrationListener) {
        this.mAsyncChannel.sendMessage(UNREGISTER_SERVICE, 0, getListenerKey(registrationListener));
    }
}
