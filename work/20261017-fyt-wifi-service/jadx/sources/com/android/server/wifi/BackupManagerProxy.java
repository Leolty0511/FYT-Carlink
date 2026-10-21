package com.android.server.wifi;

import android.app.backup.BackupManager;

/* JADX INFO: loaded from: classes.dex */
public class BackupManagerProxy {
    public void notifyDataChanged() {
        BackupManager.dataChanged("com.android.providers.settings");
    }
}
