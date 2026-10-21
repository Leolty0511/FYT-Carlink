package android.os;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class UpdateLock {
    private static final boolean DEBUG = false;
    public static final String NOW_IS_CONVENIENT = "nowisconvenient";
    private static final String TAG = "UpdateLock";
    public static final String TIMESTAMP = "timestamp";
    public static final String UPDATE_LOCK_CHANGED = "android.os.UpdateLock.UPDATE_LOCK_CHANGED";
    private static IUpdateLock sService;
    final String mTag;
    int mCount = 0;
    boolean mRefCounted = true;
    boolean mHeld = false;
    IBinder mToken = new Binder();

    public UpdateLock(String str) {
        this.mTag = str;
    }

    private void acquireLocked() {
        if (this.mRefCounted) {
            int i2 = this.mCount;
            this.mCount = i2 + 1;
            if (i2 != 0) {
                return;
            }
        }
        IUpdateLock iUpdateLock = sService;
        if (iUpdateLock != null) {
            try {
                iUpdateLock.acquireUpdateLock(this.mToken, this.mTag);
            } catch (RemoteException unused) {
                Log.e(TAG, "Unable to contact service to acquire");
            }
        }
        this.mHeld = true;
    }

    private static void checkService() {
        if (sService == null) {
            sService = IUpdateLock.Stub.asInterface(ServiceManager.getService(Context.UPDATE_LOCK_SERVICE));
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0010 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    private void releaseLocked() {
        IUpdateLock iUpdateLock;
        if (this.mRefCounted) {
            int i2 = this.mCount - 1;
            this.mCount = i2;
            if (i2 == 0) {
                iUpdateLock = sService;
                if (iUpdateLock != null) {
                    try {
                        iUpdateLock.releaseUpdateLock(this.mToken);
                    } catch (RemoteException unused) {
                        Log.e(TAG, "Unable to contact service to release");
                    }
                }
                this.mHeld = false;
            }
        } else {
            iUpdateLock = sService;
            if (iUpdateLock != null) {
                iUpdateLock.releaseUpdateLock(this.mToken);
            }
            this.mHeld = false;
        }
        if (this.mCount < 0) {
            throw new RuntimeException("UpdateLock under-locked");
        }
    }

    public void acquire() {
        checkService();
        synchronized (this.mToken) {
            acquireLocked();
        }
    }

    public void finalize() {
        synchronized (this.mToken) {
            if (this.mHeld) {
                Log.wtf(TAG, "UpdateLock finalized while still held");
                try {
                    sService.releaseUpdateLock(this.mToken);
                } catch (RemoteException unused) {
                    Log.e(TAG, "Unable to contact service to release");
                }
            }
        }
    }

    public boolean isHeld() {
        boolean z2;
        synchronized (this.mToken) {
            z2 = this.mHeld;
        }
        return z2;
    }

    public void release() {
        checkService();
        synchronized (this.mToken) {
            releaseLocked();
        }
    }

    public void setReferenceCounted(boolean z2) {
        this.mRefCounted = z2;
    }
}
