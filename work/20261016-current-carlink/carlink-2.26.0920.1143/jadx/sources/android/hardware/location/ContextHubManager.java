package android.hardware.location;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class ContextHubManager {
    private static final String TAG = "ContextHubManager";
    private Callback mCallback;
    private Handler mCallbackHandler;
    private final IContextHubCallback.Stub mClientCallback;

    @Deprecated
    private ICallback mLocalCallback;
    private final Looper mMainLooper;
    private final IContextHubService mService;

    public static abstract class Callback {
        public abstract void onMessageReceipt(int i2, int i3, ContextHubMessage contextHubMessage);
    }

    @Deprecated
    public interface ICallback {
        void onMessageReceipt(int i2, int i3, ContextHubMessage contextHubMessage);
    }

    public ContextHubManager(Context context, Looper looper) {
        IContextHubCallback.Stub stub = new IContextHubCallback.Stub() { // from class: android.hardware.location.ContextHubManager.1
            @Override // android.hardware.location.IContextHubCallback
            public void onMessageReceipt(final int i2, final int i3, final ContextHubMessage contextHubMessage) {
                if (ContextHubManager.this.mCallback != null) {
                    synchronized (this) {
                        final Callback callback = ContextHubManager.this.mCallback;
                        (ContextHubManager.this.mCallbackHandler == null ? new Handler(ContextHubManager.this.mMainLooper) : ContextHubManager.this.mCallbackHandler).post(new Runnable() { // from class: android.hardware.location.ContextHubManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                callback.onMessageReceipt(i2, i3, contextHubMessage);
                            }
                        });
                    }
                } else if (ContextHubManager.this.mLocalCallback == null) {
                    Log.d(ContextHubManager.TAG, "Context hub manager client callback is NULL");
                } else {
                    synchronized (this) {
                        ContextHubManager.this.mLocalCallback.onMessageReceipt(i2, i3, contextHubMessage);
                    }
                }
            }
        };
        this.mClientCallback = stub;
        this.mMainLooper = looper;
        IContextHubService iContextHubServiceAsInterface = IContextHubService.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.CONTEXTHUB_SERVICE));
        this.mService = iContextHubServiceAsInterface;
        try {
            iContextHubServiceAsInterface.registerCallback(stub);
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not register callback:" + e2);
        }
    }

    public int[] findNanoAppOnHub(int i2, NanoAppFilter nanoAppFilter) {
        try {
            return this.mService.findNanoAppOnHub(i2, nanoAppFilter);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getContextHubHandles() {
        try {
            return this.mService.getContextHubHandles();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ContextHubInfo getContextHubInfo(int i2) {
        try {
            return this.mService.getContextHubInfo(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NanoAppInstanceInfo getNanoAppInstanceInfo(int i2) {
        try {
            return this.mService.getNanoAppInstanceInfo(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int loadNanoApp(int i2, NanoApp nanoApp) {
        try {
            return this.mService.loadNanoApp(i2, nanoApp);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public int registerCallback(Callback callback) {
        return registerCallback(callback, null);
    }

    public int sendMessage(int i2, int i3, ContextHubMessage contextHubMessage) {
        try {
            return this.mService.sendMessage(i2, i3, contextHubMessage);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int unloadNanoApp(int i2) {
        try {
            return this.mService.unloadNanoApp(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public int unregisterCallback(Callback callback) {
        synchronized (this) {
            if (callback != this.mCallback) {
                Log.w(TAG, "Cannot recognize callback!");
                return -1;
            }
            this.mCallback = null;
            this.mCallbackHandler = null;
            return 0;
        }
    }

    @Deprecated
    public int registerCallback(ICallback iCallback) {
        if (this.mLocalCallback != null) {
            Log.w(TAG, "Max number of local callbacks reached!");
            return -1;
        }
        this.mLocalCallback = iCallback;
        return 0;
    }

    @SuppressLint({"Doclava125"})
    public int registerCallback(Callback callback, Handler handler) {
        synchronized (this) {
            if (this.mCallback != null) {
                Log.w(TAG, "Max number of callbacks reached!");
                return -1;
            }
            this.mCallback = callback;
            this.mCallbackHandler = handler;
            return 0;
        }
    }

    @Deprecated
    public synchronized int unregisterCallback(ICallback iCallback) {
        if (iCallback != this.mLocalCallback) {
            Log.w(TAG, "Cannot recognize local callback!");
            return -1;
        }
        this.mLocalCallback = null;
        return 0;
    }
}
