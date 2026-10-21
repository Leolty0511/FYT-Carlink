package android.app.backup;

import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BackupAgentHelper extends BackupAgent {
    public static final String TAG = "BackupAgentHelper";
    public BackupHelperDispatcher mDispatcher = new BackupHelperDispatcher();

    public void addHelper(String str, BackupHelper backupHelper) {
        this.mDispatcher.addHelper(str, backupHelper);
    }

    public BackupHelperDispatcher getDispatcher() {
        return this.mDispatcher;
    }

    @Override // android.app.backup.BackupAgent
    public void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) throws IOException {
        this.mDispatcher.performBackup(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2);
    }

    @Override // android.app.backup.BackupAgent
    public void onRestore(BackupDataInput backupDataInput, int i2, ParcelFileDescriptor parcelFileDescriptor) {
        this.mDispatcher.performRestore(backupDataInput, i2, parcelFileDescriptor);
    }
}
