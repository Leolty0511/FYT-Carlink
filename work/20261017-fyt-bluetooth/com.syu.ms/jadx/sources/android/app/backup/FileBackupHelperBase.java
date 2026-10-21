package android.app.backup;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class FileBackupHelperBase {
    private static final String TAG = "FileBackupHelperBase";
    public Context mContext;
    public boolean mExceptionLogged;
    public int mPtr = ctor();

    public FileBackupHelperBase(Context context) {
        this.mContext = context;
    }

    private static native int ctor();

    private static native void dtor(int i2);

    public static void performBackup_checked(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2, String[] strArr, String[] strArr2) {
        if (strArr.length == 0) {
            return;
        }
        for (String str : strArr) {
            if (str.charAt(0) != '/') {
                throw new RuntimeException("files must have all absolute paths: " + str);
            }
        }
        if (strArr.length != strArr2.length) {
            throw new RuntimeException("files.length=" + strArr.length + " keys.length=" + strArr2.length);
        }
        FileDescriptor fileDescriptor = parcelFileDescriptor != null ? parcelFileDescriptor.getFileDescriptor() : null;
        FileDescriptor fileDescriptor2 = parcelFileDescriptor2.getFileDescriptor();
        Objects.requireNonNull(fileDescriptor2);
        int iPerformBackup_native = performBackup_native(fileDescriptor, backupDataOutput.mBackupWriter, fileDescriptor2, strArr, strArr2);
        if (iPerformBackup_native == 0) {
            return;
        }
        throw new RuntimeException("Backup failed 0x" + Integer.toHexString(iPerformBackup_native));
    }

    private static native int performBackup_native(FileDescriptor fileDescriptor, int i2, FileDescriptor fileDescriptor2, String[] strArr, String[] strArr2);

    private static native int writeFile_native(int i2, String str, int i3);

    private static native int writeSnapshot_native(int i2, FileDescriptor fileDescriptor);

    public void finalize() throws Throwable {
        try {
            dtor(this.mPtr);
        } finally {
            super.finalize();
        }
    }

    public boolean isKeyInList(String str, String[] strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean writeFile(File file, BackupDataInputStream backupDataInputStream) {
        file.getParentFile().mkdirs();
        int iWriteFile_native = writeFile_native(this.mPtr, file.getAbsolutePath(), backupDataInputStream.mData.mBackupReader);
        if (iWriteFile_native != 0 && !this.mExceptionLogged) {
            Log.e(TAG, "Failed restoring file '" + file + "' for app '" + this.mContext.getPackageName() + "' result=0x" + Integer.toHexString(iWriteFile_native));
            this.mExceptionLogged = true;
        }
        return iWriteFile_native == 0;
    }

    public void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        writeSnapshot_native(this.mPtr, parcelFileDescriptor.getFileDescriptor());
    }
}
