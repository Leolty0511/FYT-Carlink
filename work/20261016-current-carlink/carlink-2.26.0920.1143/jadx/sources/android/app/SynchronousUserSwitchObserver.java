package android.app;

import android.os.IRemoteCallback;

/* JADX INFO: loaded from: classes.dex */
public abstract class SynchronousUserSwitchObserver extends UserSwitchObserver {
    public abstract void onUserSwitching(int i2);

    @Override // android.app.UserSwitchObserver, android.app.IUserSwitchObserver
    public final void onUserSwitching(int i2, IRemoteCallback iRemoteCallback) {
        try {
            onUserSwitching(i2);
        } finally {
            if (iRemoteCallback != null) {
                iRemoteCallback.sendResult(null);
            }
        }
    }
}
