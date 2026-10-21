package android.net;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityManagerEx {
    public static final int APN_TYPE_MMS = 8;
    public static final int APN_TYPE_NORMAL = 1;
    public static final int APN_TYPE_SOS = 2;
    public static final int APN_TYPE_XCAP = 4;
    private static final boolean DBG = true;
    public static final int NETID_UNSET = 0;
    public static final int REQUEST_ID_UNSET = 0;
    private static final String TAG = "ConnectivityManagerEx";
    private final Context mContext;
    private final IConnectivityManagerEx mService;
    static final HashMap<NetworkRequest, VowifiNetworkCallback> sNetworkCallback = new HashMap<>();
    static final AtomicInteger sCallbackRefCount = new AtomicInteger(0);
    static CallbackHandler sCallbackHandler = null;

    public class CallbackHandler extends Handler {
        private static final boolean DBG = true;
        private static final String TAG = "ConnectivityManagerEx.CallbackHandler";
        private final HashMap<NetworkRequest, VowifiNetworkCallback> mCallbackMap;
        private final ConnectivityManagerEx mCmEx;
        private final AtomicInteger mRefCount;

        public CallbackHandler(Looper looper, HashMap<NetworkRequest, VowifiNetworkCallback> map, AtomicInteger atomicInteger, ConnectivityManagerEx connectivityManagerEx) {
            super(looper);
            this.mCallbackMap = map;
            this.mRefCount = atomicInteger;
            this.mCmEx = connectivityManagerEx;
        }

        private VowifiNetworkCallback getCallback(NetworkRequest networkRequest, String str) {
            VowifiNetworkCallback vowifiNetworkCallback;
            synchronized (this.mCallbackMap) {
                vowifiNetworkCallback = this.mCallbackMap.get(networkRequest);
            }
            if (vowifiNetworkCallback == null) {
                Log.e(TAG, "callback not found for " + str + " message");
            }
            return vowifiNetworkCallback;
        }

        private Object getObject(Message message, Class cls) {
            return message.getData().getParcelable(cls.getSimpleName());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            NetworkRequest networkRequest = (NetworkRequest) getObject(message, NetworkRequest.class);
            VowifiNetwork vowifiNetwork = (VowifiNetwork) getObject(message, VowifiNetwork.class);
            Log.d(TAG, "handle message " + message.what + " for " + vowifiNetwork);
            switch (message.what) {
                case 524290:
                    VowifiNetworkCallback callback = getCallback(networkRequest, "AVAILABLE");
                    if (callback != null) {
                        Log.d(TAG, "CALLBACK_AVAILABLE, notify");
                        callback.onAvailable(vowifiNetwork);
                    }
                    break;
                case 524292:
                    VowifiNetworkCallback callback2 = getCallback(networkRequest, "LOST");
                    if (callback2 != null) {
                        Log.d(TAG, "CALLBACK_UNAVAIL, notify");
                        callback2.onLost(vowifiNetwork);
                    }
                    break;
                case ConnectivityManager.CALLBACK_UNAVAIL /* 524293 */:
                    VowifiNetworkCallback callback3 = getCallback(networkRequest, "UNAVAIL");
                    if (callback3 != null) {
                        Log.d(TAG, "CALLBACK_UNAVAIL, notify");
                        callback3.onUnavailable();
                    }
                    break;
            }
        }
    }

    public static class VowifiNetworkCallback {
        private NetworkRequest networkRequest;

        public void onAvailable(VowifiNetwork vowifiNetwork) {
        }

        public void onLost(VowifiNetwork vowifiNetwork) {
        }

        public void onUnavailable() {
        }
    }

    public ConnectivityManagerEx(Context context, IConnectivityManagerEx iConnectivityManagerEx) {
        Log.d(TAG, "ConnectivityManagerEx: Creat");
        this.mContext = (Context) Preconditions.checkNotNull(context, "missing context");
        this.mService = (IConnectivityManagerEx) Preconditions.checkNotNull(iConnectivityManagerEx, "missing IConnectivityManagerEx");
    }

    private void decCallbackHandlerRefCount() {
        AtomicInteger atomicInteger = sCallbackRefCount;
        synchronized (atomicInteger) {
            if (atomicInteger.decrementAndGet() == 0) {
                sCallbackHandler = null;
            }
        }
    }

    public static ConnectivityManagerEx from(Context context) {
        return (ConnectivityManagerEx) context.getSystemService("connectionEx");
    }

    private void incCallbackHandlerRefCount() {
        AtomicInteger atomicInteger = sCallbackRefCount;
        synchronized (atomicInteger) {
            if (atomicInteger.incrementAndGet() == 1) {
                HandlerThread handlerThread = new HandlerThread(TAG);
                handlerThread.start();
                sCallbackHandler = new CallbackHandler(handlerThread.getLooper(), sNetworkCallback, atomicInteger, this);
            }
        }
    }

    public VowifiNetwork getVowifiNetwork(int i2, int i3) {
        try {
            return this.mService.getVowifiNetwork(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void requestImsNetwork(NetworkRequest networkRequest, VowifiNetworkCallback vowifiNetworkCallback, int i2) {
        if (vowifiNetworkCallback == null) {
            throw new IllegalArgumentException("requestImsNetwork null NetworkCallback");
        }
        try {
            incCallbackHandlerRefCount();
            HashMap<NetworkRequest, VowifiNetworkCallback> map = sNetworkCallback;
            synchronized (map) {
                try {
                    vowifiNetworkCallback.networkRequest = this.mService.requestImsNetwork(networkRequest.networkCapabilities, new Messenger(sCallbackHandler), new Binder(), i2);
                    if (vowifiNetworkCallback.networkRequest != null) {
                        map.put(vowifiNetworkCallback.networkRequest, vowifiNetworkCallback);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (vowifiNetworkCallback.networkRequest == null) {
                decCallbackHandlerRefCount();
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterImsNetworkCallback(VowifiNetworkCallback vowifiNetworkCallback, int i2) {
        if (vowifiNetworkCallback == null || vowifiNetworkCallback.networkRequest == null || vowifiNetworkCallback.networkRequest.requestId == 0) {
            throw new IllegalArgumentException("Invalid NetworkCallback");
        }
        try {
            this.mService.releaseImsNetworkRequest(vowifiNetworkCallback.networkRequest, i2);
            HashMap<NetworkRequest, VowifiNetworkCallback> map = sNetworkCallback;
            synchronized (map) {
                map.remove(vowifiNetworkCallback.networkRequest);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
