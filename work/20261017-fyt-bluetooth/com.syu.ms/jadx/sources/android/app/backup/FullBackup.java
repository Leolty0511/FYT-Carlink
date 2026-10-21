package android.app.backup;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import libcore.io.ErrnoException;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes.dex */
public class FullBackup {
    public static final String APK_TREE_TOKEN = "a";
    public static final String APPS_PREFIX = "apps/";
    public static final String CACHE_TREE_TOKEN = "c";
    public static final String CONF_TOKEN_INTENT_EXTRA = "conftoken";
    public static final String DATABASE_TREE_TOKEN = "db";
    public static final String DATA_TREE_TOKEN = "f";
    public static final String FULL_BACKUP_INTENT_ACTION = "fullback";
    public static final String FULL_RESTORE_INTENT_ACTION = "fullrest";
    public static final String MANAGED_EXTERNAL_TREE_TOKEN = "ef";
    public static final String OBB_TREE_TOKEN = "obb";
    public static final String ROOT_TREE_TOKEN = "r";
    public static final String SHAREDPREFS_TREE_TOKEN = "sp";
    public static final String SHARED_PREFIX = "shared/";
    public static final String SHARED_STORAGE_TOKEN = "shared";
    public static final String TAG = "FullBackup";

    public static native int backupToTar(String str, String str2, String str3, String str4, String str5, BackupDataOutput backupDataOutput);

    public static void restoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, long j3, long j4, File file) throws IOException {
        FileOutputStream fileOutputStream;
        if (i2 != 2) {
            if (file != null) {
                try {
                    File parentFile = file.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e2) {
                    Log.e(TAG, "Unable to create/open file " + file.getPath(), e2);
                    fileOutputStream = null;
                }
            } else {
                fileOutputStream = null;
            }
            byte[] bArr = new byte[32768];
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptor.getFileDescriptor());
            long j5 = j2;
            FileOutputStream fileOutputStream2 = fileOutputStream;
            while (j5 > 0) {
                int i3 = fileInputStream.read(bArr, 0, j5 > ((long) 32768) ? 32768 : (int) j5);
                if (i3 <= 0) {
                    Log.w(TAG, "Incomplete read: expected " + j5 + " but got " + (j2 - j5));
                    break;
                }
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.write(bArr, 0, i3);
                    } catch (IOException e3) {
                        Log.e(TAG, "Unable to write to file " + file.getPath(), e3);
                        fileOutputStream2.close();
                        file.delete();
                        fileOutputStream2 = null;
                    }
                }
                j5 -= (long) i3;
            }
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        } else if (file != null) {
            file.mkdirs();
        }
        if (j3 < 0 || file == null) {
            return;
        }
        try {
            Libcore.os.chmod(file.getPath(), (int) (j3 & 448));
        } catch (ErrnoException e4) {
            e4.rethrowAsIOException();
        }
        file.setLastModified(j4);
    }
}
