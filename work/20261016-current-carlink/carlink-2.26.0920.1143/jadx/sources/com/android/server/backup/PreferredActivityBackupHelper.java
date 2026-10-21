package com.android.server.backup;

import android.app.AppGlobals;
import android.app.backup.BlobBackupHelper;
import android.content.pm.IPackageManager;
import android.util.Slog;

/* JADX INFO: loaded from: classes3.dex */
public class PreferredActivityBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_DEFAULT_APPS = "default-apps";
    private static final String KEY_INTENT_VERIFICATION = "intent-verification";
    private static final String KEY_PREFERRED = "preferred-activity";
    private static final int STATE_VERSION = 3;
    private static final String TAG = "PreferredBackup";

    public PreferredActivityBackupHelper() {
        super(3, KEY_PREFERRED, KEY_DEFAULT_APPS, KEY_INTENT_VERIFICATION);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    @Override // android.app.backup.BlobBackupHelper
    public void applyRestoredPayload(String str, byte[] bArr) {
        byte b2;
        IPackageManager packageManager = AppGlobals.getPackageManager();
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -696985986) {
                if (iHashCode != -429170260) {
                    if (iHashCode == 1336142555 && str.equals(KEY_PREFERRED)) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } else if (str.equals(KEY_INTENT_VERIFICATION)) {
                    b2 = 2;
                } else {
                    b2 = -1;
                }
            } else if (str.equals(KEY_DEFAULT_APPS)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
            if (b2 == 0) {
                packageManager.restorePreferredActivities(bArr, 0);
                return;
            }
            if (b2 == 1) {
                packageManager.restoreDefaultApps(bArr, 0);
            } else if (b2 != 2) {
                Slog.w(TAG, "Unexpected restore key ".concat(str));
            } else {
                packageManager.restoreIntentFilterVerification(bArr, 0);
            }
        } catch (Exception unused) {
            Slog.w(TAG, "Unable to restore key " + str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    @Override // android.app.backup.BlobBackupHelper
    public byte[] getBackupPayload(String str) {
        byte b2;
        IPackageManager packageManager = AppGlobals.getPackageManager();
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -696985986) {
                if (iHashCode != -429170260) {
                    if (iHashCode == 1336142555 && str.equals(KEY_PREFERRED)) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } else if (str.equals(KEY_INTENT_VERIFICATION)) {
                    b2 = 2;
                } else {
                    b2 = -1;
                }
            } else if (str.equals(KEY_DEFAULT_APPS)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
            if (b2 == 0) {
                return packageManager.getPreferredActivityBackup(0);
            }
            if (b2 == 1) {
                return packageManager.getDefaultAppsBackup(0);
            }
            if (b2 == 2) {
                return packageManager.getIntentFilterVerificationBackup(0);
            }
            Slog.w(TAG, "Unexpected backup key ".concat(str));
            return null;
        } catch (Exception unused) {
            Slog.e(TAG, "Unable to store payload " + str);
            return null;
        }
    }
}
