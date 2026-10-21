package com.android.server.backup;

import android.app.backup.BlobBackupHelper;
import android.content.pm.IShortcutService;
import android.os.ServiceManager;
import android.util.Slog;

/* JADX INFO: loaded from: classes3.dex */
public class ShortcutBackupHelper extends BlobBackupHelper {
    private static final int BLOB_VERSION = 1;
    private static final String KEY_USER_FILE = "shortcutuser.xml";
    private static final String TAG = "ShortcutBackupAgent";

    public ShortcutBackupHelper() {
        super(1, KEY_USER_FILE);
    }

    private IShortcutService getShortcutService() {
        return IShortcutService.Stub.asInterface(ServiceManager.getService("shortcut"));
    }

    @Override // android.app.backup.BlobBackupHelper
    public void applyRestoredPayload(String str, byte[] bArr) {
        str.getClass();
        if (!str.equals(KEY_USER_FILE)) {
            Slog.w(TAG, "Unknown key: ".concat(str));
            return;
        }
        try {
            getShortcutService().applyRestore(bArr, 0);
        } catch (Exception e2) {
            Slog.wtf(TAG, "Restore failed", e2);
        }
    }

    @Override // android.app.backup.BlobBackupHelper
    public byte[] getBackupPayload(String str) {
        str.getClass();
        if (!str.equals(KEY_USER_FILE)) {
            Slog.w(TAG, "Unknown key: ".concat(str));
            return null;
        }
        try {
            return getShortcutService().getBackupPayload(0);
        } catch (Exception e2) {
            Slog.wtf(TAG, "Backup failed", e2);
            return null;
        }
    }
}
