package com.android.server.backup;

import android.app.IWallpaperManager;
import android.app.backup.BackupAgentHelper;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.FullBackup;
import android.app.backup.FullBackupDataOutput;
import android.app.backup.WallpaperBackupHelper;
import android.content.Context;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Slog;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class SystemBackupAgent extends BackupAgentHelper {
    private static final String ACCOUNT_MANAGER_HELPER = "account_manager";
    private static final String NOTIFICATION_HELPER = "notifications";
    private static final String PERMISSION_HELPER = "permissions";
    private static final String PREFERRED_HELPER = "preferred_activities";
    private static final String SHORTCUT_MANAGER_HELPER = "shortcut_manager";
    private static final String SYNC_SETTINGS_HELPER = "account_sync_settings";
    private static final String TAG = "SystemBackupAgent";
    private static final String USAGE_STATS_HELPER = "usage_stats";
    private static final String WALLPAPER_HELPER = "wallpaper";
    private static final String WALLPAPER_IMAGE_FILENAME = "wallpaper";
    private static final String WALLPAPER_IMAGE_KEY = "/data/data/com.android.settings/files/wallpaper";
    private WallpaperBackupHelper mWallpaperHelper = null;
    private static final String WALLPAPER_IMAGE_DIR = Environment.getUserSystemDirectory(0).getAbsolutePath();
    public static final String WALLPAPER_IMAGE = new File(Environment.getUserSystemDirectory(0), Context.WALLPAPER_SERVICE).getAbsolutePath();
    private static final String WALLPAPER_INFO_DIR = Environment.getUserSystemDirectory(0).getAbsolutePath();
    private static final String WALLPAPER_INFO_FILENAME = "wallpaper_info.xml";
    public static final String WALLPAPER_INFO = new File(Environment.getUserSystemDirectory(0), WALLPAPER_INFO_FILENAME).getAbsolutePath();

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) throws IOException {
        addHelper(SYNC_SETTINGS_HELPER, new AccountSyncSettingsBackupHelper(this));
        addHelper(PREFERRED_HELPER, new PreferredActivityBackupHelper());
        addHelper(NOTIFICATION_HELPER, new NotificationBackupHelper(this));
        addHelper(PERMISSION_HELPER, new PermissionBackupHelper());
        addHelper(USAGE_STATS_HELPER, new UsageStatsBackupHelper(this));
        addHelper(SHORTCUT_MANAGER_HELPER, new ShortcutBackupHelper());
        addHelper(ACCOUNT_MANAGER_HELPER, new AccountManagerBackupHelper());
        super.onBackup(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2);
    }

    @Override // android.app.backup.BackupAgent
    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) {
    }

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onRestore(BackupDataInput backupDataInput, int i2, ParcelFileDescriptor parcelFileDescriptor) {
        WallpaperBackupHelper wallpaperBackupHelper = new WallpaperBackupHelper(this, new String[]{"/data/data/com.android.settings/files/wallpaper"});
        this.mWallpaperHelper = wallpaperBackupHelper;
        addHelper(Context.WALLPAPER_SERVICE, wallpaperBackupHelper);
        addHelper("system_files", new WallpaperBackupHelper(this, new String[]{"/data/data/com.android.settings/files/wallpaper"}));
        addHelper(SYNC_SETTINGS_HELPER, new AccountSyncSettingsBackupHelper(this));
        addHelper(PREFERRED_HELPER, new PreferredActivityBackupHelper());
        addHelper(NOTIFICATION_HELPER, new NotificationBackupHelper(this));
        addHelper(PERMISSION_HELPER, new PermissionBackupHelper());
        addHelper(USAGE_STATS_HELPER, new UsageStatsBackupHelper(this));
        addHelper(SHORTCUT_MANAGER_HELPER, new ShortcutBackupHelper());
        addHelper(ACCOUNT_MANAGER_HELPER, new AccountManagerBackupHelper());
        super.onRestore(backupDataInput, i2, parcelFileDescriptor);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x004c  */
    @Override // android.app.backup.BackupAgent
    public void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, String str, String str2, long j3, long j4) {
        boolean z2;
        File file;
        IWallpaperManager iWallpaperManager;
        Slog.i(TAG, "Restoring file domain=" + str + " path=" + str2);
        if (str.equals(FullBackup.ROOT_TREE_TOKEN)) {
            z2 = true;
            if (str2.equals(WALLPAPER_INFO_FILENAME)) {
                file = new File(WALLPAPER_INFO);
            } else if (str2.equals(Context.WALLPAPER_SERVICE)) {
                file = new File(WALLPAPER_IMAGE);
            } else {
                z2 = false;
                file = null;
            }
        } else {
            z2 = false;
            file = null;
        }
        File file2 = file;
        if (file2 == null) {
            try {
                Slog.w(TAG, "Skipping unrecognized system file: [ " + str + " : " + str2 + " ]");
            } catch (IOException unused) {
                if (z2) {
                    new File(WALLPAPER_IMAGE).delete();
                    new File(WALLPAPER_INFO).delete();
                    return;
                }
                return;
            }
        }
        FullBackup.restoreFile(parcelFileDescriptor, j2, i2, j3, j4, file2);
        if (!z2 || (iWallpaperManager = (IWallpaperManager) ServiceManager.getService(Context.WALLPAPER_SERVICE)) == null) {
            return;
        }
        try {
            iWallpaperManager.settingsRestored();
        } catch (RemoteException e2) {
            Slog.e(TAG, "Couldn't restore settings\n" + e2);
        }
    }
}
