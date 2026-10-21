package android.app;

import android.os.IRemoteCallback;

/* JADX INFO: loaded from: classes.dex */
public class UserSwitchObserver extends IUserSwitchObserver.Stub {
    @Override // android.app.IUserSwitchObserver
    public void onForegroundProfileSwitch(int i2) {
    }

    @Override // android.app.IUserSwitchObserver
    public void onLockedBootComplete(int i2) {
    }

    @Override // android.app.IUserSwitchObserver
    public void onUserSwitchComplete(int i2) {
    }

    public void onUserSwitching(int i2, IRemoteCallback iRemoteCallback) {
        if (iRemoteCallback != null) {
            iRemoteCallback.sendResult(null);
        }
    }
}
