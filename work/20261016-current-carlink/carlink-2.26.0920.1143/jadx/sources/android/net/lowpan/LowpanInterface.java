package android.net.lowpan;

import android.content.Context;
import android.net.IpPrefix;
import android.net.LinkAddress;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LowpanInterface {
    public static final String EMPTY_PARTITION_ID = "";
    public static final String NETWORK_TYPE_THREAD_V1 = "org.threadgroup.thread.v1";
    public static final String ROLE_COORDINATOR = "coordinator";
    public static final String ROLE_DETACHED = "detached";
    public static final String ROLE_END_DEVICE = "end-device";
    public static final String ROLE_LEADER = "leader";
    public static final String ROLE_ROUTER = "router";
    public static final String ROLE_SLEEPY_END_DEVICE = "sleepy-end-device";
    public static final String ROLE_SLEEPY_ROUTER = "sleepy-router";
    public static final String STATE_ATTACHED = "attached";
    public static final String STATE_ATTACHING = "attaching";
    public static final String STATE_COMMISSIONING = "commissioning";
    public static final String STATE_FAULT = "fault";
    public static final String STATE_OFFLINE = "offline";
    private static final String TAG = "LowpanInterface";
    private final ILowpanInterface mBinder;
    private final HashMap<Integer, ILowpanInterfaceListener> mListenerMap = new HashMap<>();
    private final Looper mLooper;

    /* JADX INFO: renamed from: android.net.lowpan.LowpanInterface$1, reason: invalid class name */
    public class AnonymousClass1 extends ILowpanInterfaceListener.Stub {
        private Handler mHandler;
        final /* synthetic */ Callback val$cb;
        final /* synthetic */ Handler val$handler;

        public AnonymousClass1(Handler handler, Callback callback) {
            this.val$handler = handler;
            this.val$cb = callback;
            if (handler != null) {
                this.mHandler = handler;
            } else if (LowpanInterface.this.mLooper != null) {
                this.mHandler = new Handler(LowpanInterface.this.mLooper);
            } else {
                this.mHandler = new Handler();
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onConnectedChanged(boolean z2) {
            this.mHandler.post(new e(this.val$cb, z2, 0));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onEnabledChanged(boolean z2) {
            this.mHandler.post(new e(this.val$cb, z2, 1));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressAdded(String str) {
            try {
                this.mHandler.post(new c(this.val$cb, new LinkAddress(str), 1));
            } catch (IllegalArgumentException e2) {
                Log.e(LowpanInterface.TAG, "onLinkAddressAdded: Bad LinkAddress \"" + str + "\", " + e2);
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressRemoved(String str) {
            try {
                this.mHandler.post(new c(this.val$cb, new LinkAddress(str), 0));
            } catch (IllegalArgumentException e2) {
                Log.e(LowpanInterface.TAG, "onLinkAddressRemoved: Bad LinkAddress \"" + str + "\", " + e2);
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkAdded(IpPrefix ipPrefix) {
            this.mHandler.post(new f(this.val$cb, ipPrefix, 0));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkRemoved(IpPrefix ipPrefix) {
            this.mHandler.post(new f(this.val$cb, ipPrefix, 1));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLowpanIdentityChanged(LowpanIdentity lowpanIdentity) {
            this.mHandler.post(new a(this.val$cb, lowpanIdentity, 1));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onReceiveFromCommissioner(byte[] bArr) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onRoleChanged(String str) {
            this.mHandler.post(new d(this.val$cb, str, 0));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onStateChanged(String str) {
            this.mHandler.post(new d(this.val$cb, str, 1));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onUpChanged(boolean z2) {
            this.mHandler.post(new e(this.val$cb, z2, 2));
        }
    }

    public static abstract class Callback {
        public void onConnectedChanged(boolean z2) {
        }

        public void onEnabledChanged(boolean z2) {
        }

        public void onLinkAddressAdded(LinkAddress linkAddress) {
        }

        public void onLinkAddressRemoved(LinkAddress linkAddress) {
        }

        public void onLinkNetworkAdded(IpPrefix ipPrefix) {
        }

        public void onLinkNetworkRemoved(IpPrefix ipPrefix) {
        }

        public void onLowpanIdentityChanged(LowpanIdentity lowpanIdentity) {
        }

        public void onRoleChanged(String str) {
        }

        public void onStateChanged(String str) {
        }

        public void onUpChanged(boolean z2) {
        }
    }

    public LowpanInterface(Context context, ILowpanInterface iLowpanInterface, Looper looper) {
        this.mBinder = iLowpanInterface;
        this.mLooper = looper;
    }

    public void addExternalRoute(IpPrefix ipPrefix, int i2) throws LowpanException {
        try {
            this.mBinder.addExternalRoute(ipPrefix, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void addOnMeshPrefix(IpPrefix ipPrefix, int i2) throws LowpanException {
        try {
            this.mBinder.addOnMeshPrefix(ipPrefix, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void attach(LowpanProvision lowpanProvision) throws LowpanException {
        try {
            this.mBinder.attach(lowpanProvision);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public LowpanScanner createScanner() {
        return new LowpanScanner(this.mBinder);
    }

    public void form(LowpanProvision lowpanProvision) throws LowpanException {
        try {
            this.mBinder.form(lowpanProvision);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public LinkAddress[] getLinkAddresses() throws LowpanException {
        try {
            String[] linkAddresses = this.mBinder.getLinkAddresses();
            LinkAddress[] linkAddressArr = new LinkAddress[linkAddresses.length];
            int length = linkAddresses.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int i4 = i3 + 1;
                linkAddressArr[i3] = new LinkAddress(linkAddresses[i2]);
                i2++;
                i3 = i4;
            }
            return linkAddressArr;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public IpPrefix[] getLinkNetworks() throws LowpanException {
        try {
            return this.mBinder.getLinkNetworks();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public LowpanCredential getLowpanCredential() {
        try {
            return this.mBinder.getLowpanCredential();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public LowpanIdentity getLowpanIdentity() {
        try {
            return this.mBinder.getLowpanIdentity();
        } catch (DeadObjectException unused) {
            return new LowpanIdentity();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public String getName() {
        try {
            return this.mBinder.getName();
        } catch (DeadObjectException unused) {
            return "";
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public String getPartitionId() {
        try {
            return this.mBinder.getPartitionId();
        } catch (DeadObjectException unused) {
            return "";
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public String getRole() {
        try {
            return this.mBinder.getRole();
        } catch (DeadObjectException unused) {
            return "detached";
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public ILowpanInterface getService() {
        return this.mBinder;
    }

    public String getState() {
        try {
            return this.mBinder.getState();
        } catch (DeadObjectException unused) {
            return "fault";
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public LowpanChannelInfo[] getSupportedChannels() throws LowpanException {
        try {
            return this.mBinder.getSupportedChannels();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public String[] getSupportedNetworkTypes() throws LowpanException {
        try {
            return this.mBinder.getSupportedNetworkTypes();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public boolean isCommissioned() {
        try {
            return this.mBinder.isCommissioned();
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public boolean isConnected() {
        try {
            return this.mBinder.isConnected();
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public boolean isEnabled() {
        try {
            return this.mBinder.isEnabled();
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public boolean isUp() {
        try {
            return this.mBinder.isUp();
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public void join(LowpanProvision lowpanProvision) throws LowpanException {
        try {
            this.mBinder.join(lowpanProvision);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void leave() throws LowpanException {
        try {
            this.mBinder.leave();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void registerCallback(Callback callback, Handler handler) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(handler, callback);
        try {
            this.mBinder.addListener(anonymousClass1);
            synchronized (this.mListenerMap) {
                this.mListenerMap.put(Integer.valueOf(System.identityHashCode(callback)), anonymousClass1);
            }
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public void removeExternalRoute(IpPrefix ipPrefix) {
        try {
            this.mBinder.removeExternalRoute(ipPrefix);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            Log.e(TAG, e3.toString());
        }
    }

    public void removeOnMeshPrefix(IpPrefix ipPrefix) {
        try {
            this.mBinder.removeOnMeshPrefix(ipPrefix);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            Log.e(TAG, e3.toString());
        }
    }

    public void reset() throws LowpanException {
        try {
            this.mBinder.reset();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void setEnabled(boolean z2) throws LowpanException {
        try {
            this.mBinder.setEnabled(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public LowpanCommissioningSession startCommissioningSession(LowpanBeaconInfo lowpanBeaconInfo) throws LowpanException {
        try {
            this.mBinder.startCommissioningSession(lowpanBeaconInfo);
            return new LowpanCommissioningSession(this.mBinder, lowpanBeaconInfo, this.mLooper);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        } catch (ServiceSpecificException e3) {
            throw LowpanException.rethrowFromServiceSpecificException(e3);
        }
    }

    public void unregisterCallback(Callback callback) {
        int iIdentityHashCode = System.identityHashCode(callback);
        synchronized (this.mListenerMap) {
            ILowpanInterfaceListener iLowpanInterfaceListener = this.mListenerMap.get(Integer.valueOf(iIdentityHashCode));
            if (iLowpanInterfaceListener != null) {
                this.mListenerMap.remove(Integer.valueOf(iIdentityHashCode));
                try {
                    this.mBinder.removeListener(iLowpanInterfaceListener);
                } catch (DeadObjectException unused) {
                } catch (RemoteException e2) {
                    throw e2.rethrowAsRuntimeException();
                }
            }
        }
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, null);
    }
}
