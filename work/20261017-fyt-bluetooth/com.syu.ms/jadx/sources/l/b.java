package l;

import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.RestoreSet;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.ProxyProperties;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.os.SELinux;
import android.util.Log;
import com.android.org.bouncycastle.util.encoders.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class b extends a.AbstractBinderC0070a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f12990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public File f12991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PackageInfo[] f12992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12993d;

    public b(Context context) {
        File file = new File(Environment.getDownloadCacheDirectory(), Context.BACKUP_SERVICE);
        this.f12991b = file;
        this.f12992c = null;
        this.f12993d = -1;
        this.f12990a = context;
        file.mkdirs();
        if (SELinux.restorecon(this.f12991b)) {
            return;
        }
        Log.e("LocalTransport", "SELinux restorecon failed for " + this.f12991b);
    }

    @Override // l.a
    public String D1() {
        return "com.android.internal.backup.LocalTransport";
    }

    @Override // l.a
    public long G0() {
        return 0L;
    }

    @Override // l.a
    public int H2(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        Log.v("LocalTransport", "performBackup() pkg=" + packageInfo.packageName);
        File file = new File(this.f12991b, packageInfo.packageName);
        file.mkdirs();
        BackupDataInput backupDataInput = new BackupDataInput(parcelFileDescriptor.getFileDescriptor());
        int i2 = 512;
        try {
            byte[] bArr = new byte[512];
            while (backupDataInput.readNextHeader()) {
                String key = backupDataInput.getKey();
                String str = new String(Base64.encode(key.getBytes()));
                File file2 = new File(file, str);
                int dataSize = backupDataInput.getDataSize();
                Log.v("LocalTransport", "Got change set key=" + key + " size=" + dataSize + " key64=" + str);
                if (dataSize >= 0) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    if (dataSize > i2) {
                        bArr = new byte[dataSize];
                        i2 = dataSize;
                    }
                    backupDataInput.readEntityData(bArr, 0, dataSize);
                    Log.v("LocalTransport", "  data size " + dataSize);
                    try {
                        try {
                            fileOutputStream.write(bArr, 0, dataSize);
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            fileOutputStream.close();
                            throw th;
                        }
                    } catch (IOException unused) {
                        Log.e("LocalTransport", "Unable to update key file " + file2.getAbsolutePath());
                        fileOutputStream.close();
                        return 1;
                    }
                } else {
                    file2.delete();
                }
            }
            return 0;
        } catch (IOException e2) {
            Log.v("LocalTransport", "Exception reading backup input:", e2);
            return 1;
        }
    }

    public final void J2(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    J2(file2);
                }
                file2.delete();
            }
        }
    }

    @Override // l.a
    public int N1() {
        Log.v("LocalTransport", "wiping all data");
        J2(this.f12991b);
        return 0;
    }

    @Override // l.a
    public void Q1() {
        Log.v("LocalTransport", "finishRestore()");
    }

    @Override // l.a
    public String U1() {
        String str;
        if (this.f12992c == null) {
            throw new IllegalStateException("startRestore not called");
        }
        do {
            int i2 = this.f12993d + 1;
            this.f12993d = i2;
            PackageInfo[] packageInfoArr = this.f12992c;
            if (i2 >= packageInfoArr.length) {
                Log.v("LocalTransport", "  no more packages to restore");
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            str = packageInfoArr[i2].packageName;
        } while (!new File(this.f12991b, str).isDirectory());
        Log.v("LocalTransport", "  nextRestorePackage() = " + str);
        return str;
    }

    @Override // l.a
    public int V1(long j2, PackageInfo[] packageInfoArr) {
        Log.v("LocalTransport", "start restore " + j2);
        this.f12992c = packageInfoArr;
        this.f12993d = -1;
        return 0;
    }

    @Override // l.a
    public int Z() {
        Log.v("LocalTransport", "finishBackup()");
        return 0;
    }

    @Override // l.a
    public int a1(PackageInfo packageInfo) {
        Log.v("LocalTransport", "clearBackupData() pkg=" + packageInfo.packageName);
        File file = new File(this.f12991b, packageInfo.packageName);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
            file.delete();
        }
        return 0;
    }

    @Override // l.a
    public int d(ParcelFileDescriptor parcelFileDescriptor) {
        if (this.f12992c == null) {
            throw new IllegalStateException("startRestore not called");
        }
        if (this.f12993d < 0) {
            throw new IllegalStateException("nextRestorePackage not called");
        }
        File file = new File(this.f12991b, this.f12992c[this.f12993d].packageName);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            Log.e("LocalTransport", "Error listing directory: " + file);
            return 1;
        }
        Log.v("LocalTransport", "  getRestoreData() found " + fileArrListFiles.length + " key files");
        BackupDataOutput backupDataOutput = new BackupDataOutput(parcelFileDescriptor.getFileDescriptor());
        try {
            for (File file2 : fileArrListFiles) {
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    int length = (int) file2.length();
                    byte[] bArr = new byte[length];
                    fileInputStream.read(bArr);
                    String str = new String(Base64.decode(file2.getName()));
                    Log.v("LocalTransport", "    ... key=" + str + " size=" + length);
                    backupDataOutput.writeEntityHeader(str, length);
                    backupDataOutput.writeEntityData(bArr, length);
                    fileInputStream.close();
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
            return 0;
        } catch (IOException e2) {
            Log.e("LocalTransport", "Unable to read backup records", e2);
            return 1;
        }
    }

    @Override // l.a
    public String j0() {
        return "Backing up to debug-only private cache";
    }

    @Override // l.a
    public long l2() {
        return 1L;
    }

    @Override // l.a
    public String name() {
        return new ComponentName(this.f12990a, getClass()).flattenToShortString();
    }

    @Override // l.a
    public RestoreSet[] o2() {
        return new RestoreSet[]{new RestoreSet("Local disk image", "flash", 1L)};
    }

    @Override // l.a
    public Intent s1() {
        return null;
    }
}
