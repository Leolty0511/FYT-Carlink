package android.net.lowpan;

import android.net.IpPrefix;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class LowpanCommissioningSession {
    private final LowpanBeaconInfo mBeaconInfo;
    private final ILowpanInterface mBinder;
    private Callback mCallback;
    private Handler mHandler;
    private final ILowpanInterfaceListener mInternalCallback;
    private volatile boolean mIsClosed;
    private final Looper mLooper;

    public static abstract class Callback {
        public void onClosed() {
        }

        public void onReceiveFromCommissioner(byte[] bArr) {
        }
    }

    public class InternalCallback extends ILowpanInterfaceListener.Stub {
        private InternalCallback() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceiveFromCommissioner$0(byte[] bArr) {
            synchronized (LowpanCommissioningSession.this) {
                if (!LowpanCommissioningSession.this.mIsClosed && LowpanCommissioningSession.this.mCallback != null) {
                    LowpanCommissioningSession.this.mCallback.onReceiveFromCommissioner(bArr);
                }
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onConnectedChanged(boolean z2) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onEnabledChanged(boolean z2) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressAdded(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkAddressRemoved(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkAdded(IpPrefix ipPrefix) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLinkNetworkRemoved(IpPrefix ipPrefix) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onLowpanIdentityChanged(LowpanIdentity lowpanIdentity) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onReceiveFromCommissioner(byte[] bArr) {
            LowpanCommissioningSession.this.mHandler.post(new a(this, bArr, 0));
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onRoleChanged(String str) {
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onStateChanged(String str) {
            if (LowpanCommissioningSession.this.mIsClosed) {
                return;
            }
            str.getClass();
            if (str.equals("offline") || str.equals("fault")) {
                synchronized (LowpanCommissioningSession.this) {
                    LowpanCommissioningSession.this.lockedCleanup();
                }
            }
        }

        @Override // android.net.lowpan.ILowpanInterfaceListener
        public void onUpChanged(boolean z2) {
        }
    }

    public LowpanCommissioningSession(ILowpanInterface iLowpanInterface, LowpanBeaconInfo lowpanBeaconInfo, Looper looper) {
        InternalCallback internalCallback = new InternalCallback();
        this.mInternalCallback = internalCallback;
        this.mCallback = null;
        this.mIsClosed = false;
        this.mBinder = iLowpanInterface;
        this.mBeaconInfo = lowpanBeaconInfo;
        this.mLooper = looper;
        if (looper != null) {
            this.mHandler = new Handler(looper);
        } else {
            this.mHandler = new Handler();
        }
        try {
            iLowpanInterface.addListener(internalCallback);
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$lockedCleanup$0() {
        this.mCallback.onClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockedCleanup() {
        if (!this.mIsClosed) {
            try {
                this.mBinder.removeListener(this.mInternalCallback);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e2) {
                throw e2.rethrowAsRuntimeException();
            }
            if (this.mCallback != null) {
                this.mHandler.post(new h(this, 2));
            }
        }
        this.mCallback = null;
        this.mIsClosed = true;
    }

    public synchronized void close() {
        if (!this.mIsClosed) {
            try {
                this.mBinder.closeCommissioningSession();
                lockedCleanup();
            } catch (DeadObjectException unused) {
            } catch (RemoteException e2) {
                throw e2.rethrowAsRuntimeException();
            }
        }
    }

    public LowpanBeaconInfo getBeaconInfo() {
        return this.mBeaconInfo;
    }

    public void sendToCommissioner(byte[] bArr) {
        if (this.mIsClosed) {
            return;
        }
        try {
            this.mBinder.sendToCommissioner(bArr);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    public synchronized void setCallback(Callback callback, Handler handler) {
        if (!this.mIsClosed) {
            if (handler != null) {
                this.mHandler = handler;
            } else {
                Looper looper = this.mLooper;
                if (looper != null) {
                    this.mHandler = new Handler(looper);
                } else {
                    this.mHandler = new Handler();
                }
            }
            this.mCallback = callback;
        }
    }
}
