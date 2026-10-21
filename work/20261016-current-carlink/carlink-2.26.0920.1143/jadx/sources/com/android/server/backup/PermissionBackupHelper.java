package com.android.server.backup;

import android.app.AppGlobals;
import android.app.backup.BlobBackupHelper;
import android.content.pm.IPackageManager;
import android.util.Slog;

/* JADX INFO: loaded from: classes3.dex */
public class PermissionBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_PERMISSIONS = "permissions";
    private static final int STATE_VERSION = 1;
    private static final String TAG = "PermissionBackup";

    public PermissionBackupHelper() {
        super(1, KEY_PERMISSIONS);
    }

    @Override // android.app.backup.BlobBackupHelper
    public void applyRestoredPayload(String str, byte[] bArr) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        try {
            if (((str.hashCode() == 1133704324 && str.equals(KEY_PERMISSIONS)) ? (byte) 0 : (byte) -1) != 0) {
                Slog.w(TAG, "Unexpected restore key ".concat(str));
            } else {
                packageManager.restorePermissionGrants(bArr, 0);
            }
        } catch (Exception unused) {
            Slog.w(TAG, "Unable to restore key " + str);
        }
    }

    @Override // android.app.backup.BlobBackupHelper
    public byte[] getBackupPayload(String str) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        try {
            if (((str.hashCode() == 1133704324 && str.equals(KEY_PERMISSIONS)) ? (byte) 0 : (byte) -1) == 0) {
                return packageManager.getPermissionGrantBackup(0);
            }
            Slog.w(TAG, "Unexpected backup key ".concat(str));
            return null;
        } catch (Exception unused) {
            Slog.e(TAG, "Unable to store payload " + str);
            return null;
        }
    }
}
