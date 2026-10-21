package android.content;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.app.QueuedWork;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class BroadcastReceiver {
    private boolean mDebugUnregister;
    private PendingResult mPendingResult;

    public static class PendingResult {
        public static final int TYPE_COMPONENT = 0;
        public static final int TYPE_REGISTERED = 1;
        public static final int TYPE_UNREGISTERED = 2;
        boolean mAbortBroadcast;
        boolean mFinished;
        final int mFlags;
        final boolean mInitialStickyHint;
        final boolean mOrderedHint;
        int mResultCode;
        String mResultData;
        Bundle mResultExtras;
        final int mSendingUser;
        final IBinder mToken;
        final int mType;

        public PendingResult(int i2, String str, Bundle bundle, int i3, boolean z2, boolean z3, IBinder iBinder, int i4, int i5) {
            this.mResultCode = i2;
            this.mResultData = str;
            this.mResultExtras = bundle;
            this.mType = i3;
            this.mOrderedHint = z2;
            this.mInitialStickyHint = z3;
            this.mToken = iBinder;
            this.mSendingUser = i4;
            this.mFlags = i5;
        }

        public final void abortBroadcast() {
            checkSynchronousHint();
            this.mAbortBroadcast = true;
        }

        public void checkSynchronousHint() {
            if (this.mOrderedHint || this.mInitialStickyHint) {
                return;
            }
            RuntimeException runtimeException = new RuntimeException("BroadcastReceiver trying to return result during a non-ordered broadcast");
            runtimeException.fillInStackTrace();
            Log.e("BroadcastReceiver", runtimeException.getMessage(), runtimeException);
        }

        public final void clearAbortBroadcast() {
            this.mAbortBroadcast = false;
        }

        public final void finish() {
            int i2 = this.mType;
            if (i2 != 0) {
                if (!this.mOrderedHint || i2 == 2) {
                    return;
                }
                sendFinished(ActivityManager.getService());
                return;
            }
            final IActivityManager service = ActivityManager.getService();
            if (QueuedWork.hasPendingWork()) {
                QueuedWork.queue(new Runnable() { // from class: android.content.BroadcastReceiver.PendingResult.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PendingResult.this.sendFinished(service);
                    }
                }, false);
            } else {
                sendFinished(service);
            }
        }

        public final boolean getAbortBroadcast() {
            return this.mAbortBroadcast;
        }

        public final int getResultCode() {
            return this.mResultCode;
        }

        public final String getResultData() {
            return this.mResultData;
        }

        public final Bundle getResultExtras(boolean z2) {
            Bundle bundle = this.mResultExtras;
            if (!z2 || bundle != null) {
                return bundle;
            }
            Bundle bundle2 = new Bundle();
            this.mResultExtras = bundle2;
            return bundle2;
        }

        public int getSendingUserId() {
            return this.mSendingUser;
        }

        public void sendFinished(IActivityManager iActivityManager) {
            synchronized (this) {
                if (this.mFinished) {
                    throw new IllegalStateException("Broadcast already finished");
                }
                this.mFinished = true;
                try {
                    Bundle bundle = this.mResultExtras;
                    if (bundle != null) {
                        bundle.setAllowFds(false);
                    }
                    if (this.mOrderedHint) {
                        iActivityManager.finishReceiver(this.mToken, this.mResultCode, this.mResultData, this.mResultExtras, this.mAbortBroadcast, this.mFlags);
                    } else {
                        iActivityManager.finishReceiver(this.mToken, 0, null, null, false, this.mFlags);
                    }
                } catch (RemoteException unused) {
                }
            }
        }

        public void setExtrasClassLoader(ClassLoader classLoader) {
            Bundle bundle = this.mResultExtras;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
        }

        public final void setResult(int i2, String str, Bundle bundle) {
            checkSynchronousHint();
            this.mResultCode = i2;
            this.mResultData = str;
            this.mResultExtras = bundle;
        }

        public final void setResultCode(int i2) {
            checkSynchronousHint();
            this.mResultCode = i2;
        }

        public final void setResultData(String str) {
            checkSynchronousHint();
            this.mResultData = str;
        }

        public final void setResultExtras(Bundle bundle) {
            checkSynchronousHint();
            this.mResultExtras = bundle;
        }
    }

    public final void abortBroadcast() {
        checkSynchronousHint();
        this.mPendingResult.mAbortBroadcast = true;
    }

    public void checkSynchronousHint() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult == null) {
            throw new IllegalStateException("Call while result is not pending");
        }
        if (pendingResult.mOrderedHint || pendingResult.mInitialStickyHint) {
            return;
        }
        RuntimeException runtimeException = new RuntimeException("BroadcastReceiver trying to return result during a non-ordered broadcast");
        runtimeException.fillInStackTrace();
        Log.e("BroadcastReceiver", runtimeException.getMessage(), runtimeException);
    }

    public final void clearAbortBroadcast() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            pendingResult.mAbortBroadcast = false;
        }
    }

    public final boolean getAbortBroadcast() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            return pendingResult.mAbortBroadcast;
        }
        return false;
    }

    public final boolean getDebugUnregister() {
        return this.mDebugUnregister;
    }

    public final PendingResult getPendingResult() {
        return this.mPendingResult;
    }

    public final int getResultCode() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            return pendingResult.mResultCode;
        }
        return 0;
    }

    public final String getResultData() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            return pendingResult.mResultData;
        }
        return null;
    }

    public final Bundle getResultExtras(boolean z2) {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult == null) {
            return null;
        }
        Bundle bundle = pendingResult.mResultExtras;
        if (!z2 || bundle != null) {
            return bundle;
        }
        Bundle bundle2 = new Bundle();
        pendingResult.mResultExtras = bundle2;
        return bundle2;
    }

    public int getSendingUserId() {
        return this.mPendingResult.mSendingUser;
    }

    public final PendingResult goAsync() {
        PendingResult pendingResult = this.mPendingResult;
        this.mPendingResult = null;
        return pendingResult;
    }

    public final boolean isInitialStickyBroadcast() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            return pendingResult.mInitialStickyHint;
        }
        return false;
    }

    public final boolean isOrderedBroadcast() {
        PendingResult pendingResult = this.mPendingResult;
        if (pendingResult != null) {
            return pendingResult.mOrderedHint;
        }
        return false;
    }

    public abstract void onReceive(Context context, Intent intent);

    public IBinder peekService(Context context, Intent intent) {
        IActivityManager service = ActivityManager.getService();
        try {
            intent.prepareToLeaveProcess(context);
            return service.peekService(intent, intent.resolveTypeIfNeeded(context.getContentResolver()), context.getOpPackageName());
        } catch (RemoteException unused) {
            return null;
        }
    }

    public final void setDebugUnregister(boolean z2) {
        this.mDebugUnregister = z2;
    }

    public final void setOrderedHint(boolean z2) {
    }

    public final void setPendingResult(PendingResult pendingResult) {
        this.mPendingResult = pendingResult;
    }

    public final void setResult(int i2, String str, Bundle bundle) {
        checkSynchronousHint();
        PendingResult pendingResult = this.mPendingResult;
        pendingResult.mResultCode = i2;
        pendingResult.mResultData = str;
        pendingResult.mResultExtras = bundle;
    }

    public final void setResultCode(int i2) {
        checkSynchronousHint();
        this.mPendingResult.mResultCode = i2;
    }

    public final void setResultData(String str) {
        checkSynchronousHint();
        this.mPendingResult.mResultData = str;
    }

    public final void setResultExtras(Bundle bundle) {
        checkSynchronousHint();
        this.mPendingResult.mResultExtras = bundle;
    }
}
