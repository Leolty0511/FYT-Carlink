package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.IOnKeyguardExitResult;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;

/* JADX INFO: loaded from: classes.dex */
public class KeyguardManager {
    private IWindowManager mWM = WindowManagerGlobal.getWindowManagerService();

    public class KeyguardLock {
        private String mTag;
        private IBinder mToken = new Binder();

        public KeyguardLock(String str) {
            this.mTag = str;
        }

        public void disableKeyguard() {
            try {
                KeyguardManager.this.mWM.disableKeyguard(this.mToken, this.mTag);
            } catch (RemoteException unused) {
            }
        }

        public void reenableKeyguard() {
            try {
                KeyguardManager.this.mWM.reenableKeyguard(this.mToken);
            } catch (RemoteException unused) {
            }
        }
    }

    public interface OnKeyguardExitResult {
        void onKeyguardExitResult(boolean z2);
    }

    @Deprecated
    public void exitKeyguardSecurely(final OnKeyguardExitResult onKeyguardExitResult) {
        try {
            this.mWM.exitKeyguardSecurely(new IOnKeyguardExitResult.Stub() { // from class: android.app.KeyguardManager.1
                @Override // android.view.IOnKeyguardExitResult
                public void onKeyguardExitResult(boolean z2) {
                    OnKeyguardExitResult onKeyguardExitResult2 = onKeyguardExitResult;
                    if (onKeyguardExitResult2 != null) {
                        onKeyguardExitResult2.onKeyguardExitResult(z2);
                    }
                }
            });
        } catch (RemoteException unused) {
        }
    }

    public boolean inKeyguardRestrictedInputMode() {
        try {
            return this.mWM.inKeyguardRestrictedInputMode();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isKeyguardLocked() {
        try {
            return this.mWM.isKeyguardLocked();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isKeyguardSecure() {
        try {
            return this.mWM.isKeyguardSecure();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public KeyguardLock newKeyguardLock(String str) {
        return new KeyguardLock(str);
    }
}
