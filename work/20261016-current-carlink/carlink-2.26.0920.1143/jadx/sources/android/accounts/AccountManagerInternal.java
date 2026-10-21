package android.accounts;

import android.os.RemoteCallback;

/* JADX INFO: loaded from: classes.dex */
public abstract class AccountManagerInternal {

    public interface OnAppPermissionChangeListener {
        void onAppPermissionChanged(Account account, int i2);
    }

    public abstract void addOnAppPermissionChangeListener(OnAppPermissionChangeListener onAppPermissionChangeListener);

    public abstract byte[] backupAccountAccessPermissions(int i2);

    public abstract boolean hasAccountAccess(Account account, int i2);

    public abstract void requestAccountAccess(Account account, String str, int i2, RemoteCallback remoteCallback);

    public abstract void restoreAccountAccessPermissions(byte[] bArr, int i2);
}
