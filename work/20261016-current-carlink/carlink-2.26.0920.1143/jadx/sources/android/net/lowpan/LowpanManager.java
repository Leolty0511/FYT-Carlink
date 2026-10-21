package android.net.lowpan;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class LowpanManager {
    private static final String TAG = "LowpanManager";
    private final Map<ILowpanInterface, WeakReference<LowpanInterface>> mBinderCache;
    private final Context mContext;
    private final Map<String, LowpanInterface> mInterfaceCache;
    private final Map<Integer, ILowpanManagerListener> mListenerMap;
    private final Looper mLooper;
    private final ILowpanManager mService;

    /* JADX INFO: renamed from: android.net.lowpan.LowpanManager$2, reason: invalid class name */
    public class AnonymousClass2 extends ILowpanManagerListener.Stub {
        private Handler mHandler;
        final /* synthetic */ Callback val$cb;
        final /* synthetic */ Handler val$handler;

        public AnonymousClass2(Handler handler, Callback callback) {
            this.val$handler = handler;
            this.val$cb = callback;
            if (handler != null) {
                this.mHandler = handler;
            } else if (LowpanManager.this.mLooper != null) {
                this.mHandler = new Handler(LowpanManager.this.mLooper);
            } else {
                this.mHandler = new Handler();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onInterfaceAdded$0(ILowpanInterface iLowpanInterface, Callback callback) {
            LowpanInterface lowpanInterface = LowpanManager.this.getInterface(iLowpanInterface);
            if (lowpanInterface != null) {
                callback.onInterfaceAdded(lowpanInterface);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onInterfaceRemoved$1(ILowpanInterface iLowpanInterface, Callback callback) {
            LowpanInterface lowpanInterface = LowpanManager.this.getInterface(iLowpanInterface);
            if (lowpanInterface != null) {
                callback.onInterfaceRemoved(lowpanInterface);
            }
        }

        @Override // android.net.lowpan.ILowpanManagerListener
        public void onInterfaceAdded(ILowpanInterface iLowpanInterface) {
            this.mHandler.post(new g(this, iLowpanInterface, this.val$cb, 0));
        }

        @Override // android.net.lowpan.ILowpanManagerListener
        public void onInterfaceRemoved(ILowpanInterface iLowpanInterface) {
            this.mHandler.post(new g(this, iLowpanInterface, this.val$cb, 1));
        }
    }

    public static abstract class Callback {
        public void onInterfaceAdded(LowpanInterface lowpanInterface) {
        }

        public void onInterfaceRemoved(LowpanInterface lowpanInterface) {
        }
    }

    public LowpanManager(ILowpanManager iLowpanManager) {
        this.mListenerMap = new HashMap();
        this.mInterfaceCache = new HashMap();
        this.mBinderCache = new WeakHashMap();
        this.mService = iLowpanManager;
        this.mContext = null;
        this.mLooper = null;
    }

    public static LowpanManager from(Context context) {
        return (LowpanManager) context.getSystemService("lowpan");
    }

    public static LowpanManager getManager() {
        IBinder service = ServiceManager.getService("lowpan");
        if (service != null) {
            return new LowpanManager(ILowpanManager.Stub.asInterface(service));
        }
        return null;
    }

    public LowpanInterface getInterface(final ILowpanInterface iLowpanInterface) {
        LowpanInterface lowpanInterface;
        try {
            synchronized (this.mBinderCache) {
                lowpanInterface = this.mBinderCache.containsKey(iLowpanInterface) ? this.mBinderCache.get(iLowpanInterface).get() : null;
                if (lowpanInterface == null) {
                    final String name = iLowpanInterface.getName();
                    LowpanInterface lowpanInterface2 = new LowpanInterface(this.mContext, iLowpanInterface, this.mLooper);
                    synchronized (this.mInterfaceCache) {
                        this.mInterfaceCache.put(lowpanInterface2.getName(), lowpanInterface2);
                    }
                    this.mBinderCache.put(iLowpanInterface, new WeakReference<>(lowpanInterface2));
                    iLowpanInterface.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: android.net.lowpan.LowpanManager.1
                        @Override // android.os.IBinder.DeathRecipient
                        public void binderDied() {
                            synchronized (LowpanManager.this.mInterfaceCache) {
                                LowpanInterface lowpanInterface3 = (LowpanInterface) LowpanManager.this.mInterfaceCache.get(name);
                                if (lowpanInterface3 != null && lowpanInterface3.getService() == iLowpanInterface) {
                                    LowpanManager.this.mInterfaceCache.remove(name);
                                }
                            }
                        }
                    }, 0);
                    lowpanInterface = lowpanInterface2;
                }
            }
            return lowpanInterface;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public String[] getInterfaceList() {
        try {
            return this.mService.getInterfaceList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerCallback(Callback callback, Handler handler) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(handler, callback);
        try {
            this.mService.addListener(anonymousClass2);
            synchronized (this.mListenerMap) {
                this.mListenerMap.put(Integer.valueOf(System.identityHashCode(callback)), anonymousClass2);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterCallback(Callback callback) {
        ILowpanManagerListener iLowpanManagerListener;
        Integer numValueOf = Integer.valueOf(System.identityHashCode(callback));
        synchronized (this.mListenerMap) {
            iLowpanManagerListener = this.mListenerMap.get(numValueOf);
            this.mListenerMap.remove(numValueOf);
        }
        if (iLowpanManagerListener == null) {
            throw new RuntimeException("Attempt to unregister an unknown callback");
        }
        try {
            this.mService.removeListener(iLowpanManagerListener);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, null);
    }

    public LowpanManager(Context context, ILowpanManager iLowpanManager, Looper looper) {
        this.mListenerMap = new HashMap();
        this.mInterfaceCache = new HashMap();
        this.mBinderCache = new WeakHashMap();
        this.mContext = context;
        this.mService = iLowpanManager;
        this.mLooper = looper;
    }

    public LowpanInterface getInterface(String str) {
        LowpanInterface lowpanInterface;
        try {
            synchronized (this.mInterfaceCache) {
                if (this.mInterfaceCache.containsKey(str)) {
                    lowpanInterface = this.mInterfaceCache.get(str);
                } else {
                    ILowpanInterface iLowpanInterface = this.mService.getInterface(str);
                    lowpanInterface = iLowpanInterface != null ? getInterface(iLowpanInterface) : null;
                }
            }
            return lowpanInterface;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public LowpanInterface getInterface() {
        String[] interfaceList = getInterfaceList();
        if (interfaceList.length > 0) {
            return getInterface(interfaceList[0]);
        }
        return null;
    }
}
