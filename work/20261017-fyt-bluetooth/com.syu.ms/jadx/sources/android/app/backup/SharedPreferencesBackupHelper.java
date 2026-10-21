package android.app.backup;

import android.app.QueuedWork;
import android.content.Context;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public class SharedPreferencesBackupHelper extends FileBackupHelperBase implements BackupHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "SharedPreferencesBackupHelper";
    private Context mContext;
    private String[] mPrefGroups;

    public SharedPreferencesBackupHelper(Context context, String... strArr) {
        super(context);
        this.mContext = context;
        this.mPrefGroups = strArr;
    }

    @Override // android.app.backup.BackupHelper
    public void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        Context context = this.mContext;
        QueuedWork.waitToFinish();
        String[] strArr = this.mPrefGroups;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr2[i2] = context.getSharedPrefsFile(strArr[i2]).getAbsolutePath();
        }
        FileBackupHelperBase.performBackup_checked(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2, strArr2, strArr);
    }

    @Override // android.app.backup.BackupHelper
    public void restoreEntity(BackupDataInputStream backupDataInputStream) {
        Context context = this.mContext;
        String key = backupDataInputStream.getKey();
        if (isKeyInList(key, this.mPrefGroups)) {
            writeFile(context.getSharedPrefsFile(key).getAbsoluteFile(), backupDataInputStream);
        }
    }

    @Override // android.app.backup.FileBackupHelperBase, android.app.backup.BackupHelper
    public /* bridge */ /* synthetic */ void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        super.writeNewStateDescription(parcelFileDescriptor);
    }
}
