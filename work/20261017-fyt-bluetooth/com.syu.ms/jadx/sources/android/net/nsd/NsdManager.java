package android.net.nsd;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.util.concurrent.CountDownLatch;
import u.b;

/* JADX INFO: loaded from: classes.dex */
public final class NsdManager {
    public static final String ACTION_NSD_STATE_CHANGED = "android.net.nsd.STATE_CHANGED";
    private static final int BASE = 393216;
    public static final int DISABLE = 393241;
    public static final int DISCOVER_SERVICES = 393217;
    public static final int DISCOVER_SERVICES_FAILED = 393219;
    public static final int DISCOVER_SERVICES_STARTED = 393218;
    public static final int ENABLE = 393240;
    public static final String EXTRA_NSD_STATE = "nsd_state";
    public static final int FAILURE_ALREADY_ACTIVE = 3;
    public static final int FAILURE_INTERNAL_ERROR = 0;
    public static final int FAILURE_MAX_LIMIT = 4;
    private static final int INVALID_LISTENER_KEY = 0;
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
    private Context mContext;
    private ServiceHandler mHandler;
    public INsdManager mService;
    private int mListenerKey = 1;
    private final SparseArray mListenerMap = new SparseArray();
    private final SparseArray<NsdServiceInfo> mServiceMap = new SparseArray<>();
    private final Object mMapLock = new Object();
    private final b mAsyncChannel = new b();
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
            int i2 = message.what;
            if (i2 == 69632) {
                NsdManager.this.mAsyncChannel.k(69633);
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
            Object listener = NsdManager.this.getListener(message.arg2);
            if (listener == null) {
                Log.d(NsdManager.TAG, "Stale key " + message.arg2);
                return;
            }
            boolean z2 = true;
            NsdServiceInfo nsdService = NsdManager.this.getNsdService(message.arg2);
            switch (message.what) {
                case NsdManager.DISCOVER_SERVICES_STARTED /* 393218 */:
                    ((DiscoveryListener) listener).onDiscoveryStarted(NsdManager.this.getNsdServiceInfoType((NsdServiceInfo) message.obj));
                    z2 = false;
                    break;
                case NsdManager.DISCOVER_SERVICES_FAILED /* 393219 */:
                    ((DiscoveryListener) listener).onStartDiscoveryFailed(NsdManager.this.getNsdServiceInfoType(nsdService), message.arg1);
                    break;
                case NsdManager.SERVICE_FOUND /* 393220 */:
                    ((DiscoveryListener) listener).onServiceFound((NsdServiceInfo) message.obj);
                    z2 = false;
                    break;
                case NsdManager.SERVICE_LOST /* 393221 */:
                    ((DiscoveryListener) listener).onServiceLost((NsdServiceInfo) message.obj);
                    z2 = false;
                    break;
                case NsdManager.STOP_DISCOVERY /* 393222 */:
                case NsdManager.REGISTER_SERVICE /* 393225 */:
                case NsdManager.UNREGISTER_SERVICE /* 393228 */:
                case 393231:
                case 393232:
                case 393233:
                case NsdManager.RESOLVE_SERVICE /* 393234 */:
                default:
                    Log.d(NsdManager.TAG, "Ignored " + message);
                    break;
                case NsdManager.STOP_DISCOVERY_FAILED /* 393223 */:
                    ((DiscoveryListener) listener).onStopDiscoveryFailed(NsdManager.this.getNsdServiceInfoType(nsdService), message.arg1);
                    break;
                case NsdManager.STOP_DISCOVERY_SUCCEEDED /* 393224 */:
                    ((DiscoveryListener) listener).onDiscoveryStopped(NsdManager.this.getNsdServiceInfoType(nsdService));
                    break;
                case NsdManager.REGISTER_SERVICE_FAILED /* 393226 */:
                    ((RegistrationListener) listener).onRegistrationFailed(nsdService, message.arg1);
                    break;
                case NsdManager.REGISTER_SERVICE_SUCCEEDED /* 393227 */:
                    ((RegistrationListener) listener).onServiceRegistered((NsdServiceInfo) message.obj);
                    z2 = false;
                    break;
                case NsdManager.UNREGISTER_SERVICE_FAILED /* 393229 */:
                    ((RegistrationListener) listener).onUnregistrationFailed(nsdService, message.arg1);
                    break;
                case NsdManager.UNREGISTER_SERVICE_SUCCEEDED /* 393230 */:
                    ((RegistrationListener) listener).onServiceUnregistered(nsdService);
                    break;
                case NsdManager.RESOLVE_SERVICE_FAILED /* 393235 */:
                    ((ResolveListener) listener).onResolveFailed(nsdService, message.arg1);
                    break;
                case NsdManager.RESOLVE_SERVICE_SUCCEEDED /* 393236 */:
                    ((ResolveListener) listener).onServiceResolved((NsdServiceInfo) message.obj);
                    break;
            }
            if (z2) {
                NsdManager.this.removeListener(message.arg2);
            }
        }
    }

    public NsdManager(Context context, INsdManager iNsdManager) {
        this.mService = iNsdManager;
        this.mContext = context;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mMapLock) {
            obj = this.mListenerMap.get(i2);
        }
        return obj;
    }

    private int getListenerKey(Object obj) {
        synchronized (this.mMapLock) {
            int iIndexOfValue = this.mListenerMap.indexOfValue(obj);
            if (iIndexOfValue == -1) {
                return 0;
            }
            return this.mListenerMap.keyAt(iIndexOfValue);
        }
    }

    private Messenger getMessenger() {
        try {
            return this.mService.getMessenger();
        } catch (RemoteException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NsdServiceInfo getNsdService(int i2) {
        NsdServiceInfo nsdServiceInfo;
        synchronized (this.mMapLock) {
            nsdServiceInfo = this.mServiceMap.get(i2);
        }
        return nsdServiceInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getNsdServiceInfoType(NsdServiceInfo nsdServiceInfo) {
        return nsdServiceInfo == null ? "?" : nsdServiceInfo.getServiceType();
    }

    private void init() {
        Messenger messenger = getMessenger();
        if (messenger == null) {
            throw new RuntimeException("Failed to initialize");
        }
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        ServiceHandler serviceHandler = new ServiceHandler(handlerThread.getLooper());
        this.mHandler = serviceHandler;
        this.mAsyncChannel.b(this.mContext, serviceHandler, messenger);
        try {
            this.mConnected.await();
        } catch (InterruptedException unused) {
            Log.e(TAG, "interrupted wait at init");
        }
    }

    private int putListener(Object obj, NsdServiceInfo nsdServiceInfo) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (this.mMapLock) {
            do {
                i2 = this.mListenerKey;
                this.mListenerKey = i2 + 1;
            } while (i2 == 0);
            this.mListenerMap.put(i2, obj);
            this.mServiceMap.put(i2, nsdServiceInfo);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeListener(int i2) {
        if (i2 == 0) {
            return;
        }
        synchronized (this.mMapLock) {
            this.mListenerMap.remove(i2);
            this.mServiceMap.remove(i2);
        }
    }

    public void discoverServices(String str, int i2, DiscoveryListener discoveryListener) {
        if (discoveryListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Service type cannot be empty");
        }
        if (i2 != 1) {
            throw new IllegalArgumentException("Unsupported protocol");
        }
        NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
        nsdServiceInfo.setServiceType(str);
        this.mAsyncChannel.n(DISCOVER_SERVICES, 0, putListener(discoveryListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void registerService(NsdServiceInfo nsdServiceInfo, int i2, RegistrationListener registrationListener) {
        if (TextUtils.isEmpty(nsdServiceInfo.getServiceName()) || TextUtils.isEmpty(nsdServiceInfo.getServiceType())) {
            throw new IllegalArgumentException("Service name or type cannot be empty");
        }
        if (nsdServiceInfo.getPort() <= 0) {
            throw new IllegalArgumentException("Invalid port number");
        }
        if (registrationListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        if (i2 != 1) {
            throw new IllegalArgumentException("Unsupported protocol");
        }
        this.mAsyncChannel.n(REGISTER_SERVICE, 0, putListener(registrationListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void resolveService(NsdServiceInfo nsdServiceInfo, ResolveListener resolveListener) {
        if (TextUtils.isEmpty(nsdServiceInfo.getServiceName()) || TextUtils.isEmpty(nsdServiceInfo.getServiceType())) {
            throw new IllegalArgumentException("Service name or type cannot be empty");
        }
        if (resolveListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        this.mAsyncChannel.n(RESOLVE_SERVICE, 0, putListener(resolveListener, nsdServiceInfo), nsdServiceInfo);
    }

    public void setEnabled(boolean z2) {
        try {
            this.mService.setEnabled(z2);
        } catch (RemoteException unused) {
        }
    }

    public void stopServiceDiscovery(DiscoveryListener discoveryListener) {
        int listenerKey = getListenerKey(discoveryListener);
        if (listenerKey == 0) {
            throw new IllegalArgumentException("service discovery not active on listener");
        }
        if (discoveryListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        this.mAsyncChannel.m(STOP_DISCOVERY, 0, listenerKey);
    }

    public void unregisterService(RegistrationListener registrationListener) {
        int listenerKey = getListenerKey(registrationListener);
        if (listenerKey == 0) {
            throw new IllegalArgumentException("listener not registered");
        }
        if (registrationListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        this.mAsyncChannel.m(UNREGISTER_SERVICE, 0, listenerKey);
    }
}
