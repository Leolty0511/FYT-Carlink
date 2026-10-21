package com.android.internal.backup;

import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.BackupTransport;
import android.app.backup.RestoreDescription;
import android.app.backup.RestoreSet;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.util.ArrayMap;
import android.util.Log;
import com.android.org.bouncycastle.util.encoders.Base64;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
public class LocalTransport extends BackupTransport {
    private static final long CURRENT_SET_TOKEN = 1;
    private static final boolean DEBUG = false;
    private static final long FULL_BACKUP_SIZE_QUOTA = 26214400;
    private static final String FULL_DATA_DIR = "_full";
    private static final String INCREMENTAL_DIR = "_delta";
    private static final long KEY_VALUE_BACKUP_SIZE_QUOTA = 5242880;
    static final long[] POSSIBLE_SETS = {2, 3, 4, 5, 6, 7, 8, 9};
    private static final String TAG = "LocalTransport";
    private static final String TRANSPORT_DATA_MANAGEMENT_LABEL = "";
    private static final String TRANSPORT_DESTINATION_STRING = "Backing up to debug-only private cache";
    private static final String TRANSPORT_DIR_NAME = "com.android.internal.backup.LocalTransport";
    private Context mContext;
    private FileInputStream mCurFullRestoreStream;
    private byte[] mFullBackupBuffer;
    private BufferedOutputStream mFullBackupOutputStream;
    private long mFullBackupSize;
    private byte[] mFullRestoreBuffer;
    private FileOutputStream mFullRestoreSocketStream;
    private String mFullTargetPackage;
    private File mRestoreSetDir;
    private File mRestoreSetFullDir;
    private File mRestoreSetIncrementalDir;
    private int mRestoreType;
    private ParcelFileDescriptor mSocket;
    private FileInputStream mSocketInputStream;
    private File mDataDir = new File(Environment.getDownloadCacheDirectory(), Context.BACKUP_SERVICE);
    private File mCurrentSetDir = new File(this.mDataDir, Long.toString(1));
    private File mCurrentSetIncrementalDir = new File(this.mCurrentSetDir, INCREMENTAL_DIR);
    private File mCurrentSetFullDir = new File(this.mCurrentSetDir, FULL_DATA_DIR);
    private PackageInfo[] mRestorePackages = null;
    private int mRestorePackage = -1;

    public static class DecodedFilename implements Comparable<DecodedFilename> {
        public File file;
        public String key;

        public DecodedFilename(File file) {
            this.file = file;
            this.key = new String(Base64.decode(file.getName()));
        }

        @Override // java.lang.Comparable
        public int compareTo(DecodedFilename decodedFilename) {
            return this.key.compareTo(decodedFilename.key);
        }
    }

    public class KVOperation {
        final String key;
        final byte[] value;

        public KVOperation(String str, byte[] bArr) {
            this.key = str;
            this.value = bArr;
        }
    }

    public LocalTransport(Context context) {
        this.mContext = context;
        makeDataDirs();
    }

    private ArrayList<DecodedFilename> contentsByKey(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return null;
        }
        ArrayList<DecodedFilename> arrayList = new ArrayList<>();
        for (File file2 : fileArrListFiles) {
            arrayList.add(new DecodedFilename(file2));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private void deleteContents(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                file2.delete();
            }
        }
    }

    private void makeDataDirs() {
        this.mCurrentSetDir.mkdirs();
        this.mCurrentSetFullDir.mkdir();
        this.mCurrentSetIncrementalDir.mkdir();
    }

    private ArrayList<KVOperation> parseBackupStream(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        ArrayList<KVOperation> arrayList = new ArrayList<>();
        BackupDataInput backupDataInput = new BackupDataInput(parcelFileDescriptor.getFileDescriptor());
        while (backupDataInput.readNextHeader()) {
            String str = new String(Base64.encode(backupDataInput.getKey().getBytes()));
            int dataSize = backupDataInput.getDataSize();
            byte[] bArr = dataSize >= 0 ? new byte[dataSize] : null;
            if (dataSize >= 0) {
                backupDataInput.readEntityData(bArr, 0, dataSize);
            }
            arrayList.add(new KVOperation(str, bArr));
        }
        return arrayList;
    }

    private int parseKeySizes(File file, ArrayMap<String, Integer> arrayMap) {
        String[] list = file.list();
        if (list == null) {
            return 0;
        }
        int i2 = 0;
        for (String str : list) {
            int length = (int) new File(file, str).length();
            i2 += length;
            arrayMap.put(str, Integer.valueOf(length));
        }
        return i2;
    }

    private void resetFullRestoreState() {
        IoUtils.closeQuietly(this.mCurFullRestoreStream);
        this.mCurFullRestoreStream = null;
        this.mFullRestoreSocketStream = null;
        this.mFullRestoreBuffer = null;
    }

    private File tarballFile(String str) {
        return new File(this.mCurrentSetFullDir, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int tearDownFullBackup() {
        if (this.mSocket == null) {
            return 0;
        }
        try {
            BufferedOutputStream bufferedOutputStream = this.mFullBackupOutputStream;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                this.mFullBackupOutputStream.close();
            }
            this.mSocketInputStream = null;
            this.mFullTargetPackage = null;
            this.mSocket.close();
            return 0;
        } catch (IOException unused) {
            Object[] objArr = objArr == true ? 1 : 0;
            return -1000;
        } finally {
            this.mSocket = null;
            this.mFullBackupOutputStream = null;
        }
    }

    @Override // android.app.backup.BackupTransport
    public int abortFullRestore() {
        if (this.mRestoreType != 2) {
            throw new IllegalStateException("abortFullRestore() but not currently restoring");
        }
        resetFullRestoreState();
        this.mRestoreType = 0;
        return 0;
    }

    @Override // android.app.backup.BackupTransport
    public void cancelFullBackup() {
        File fileTarballFile = tarballFile(this.mFullTargetPackage);
        tearDownFullBackup();
        if (fileTarballFile.exists()) {
            fileTarballFile.delete();
        }
    }

    @Override // android.app.backup.BackupTransport
    public int checkFullBackupSize(long j2) {
        if (j2 <= 0) {
            return -1002;
        }
        return j2 > FULL_BACKUP_SIZE_QUOTA ? -1005 : 0;
    }

    @Override // android.app.backup.BackupTransport
    public int clearBackupData(PackageInfo packageInfo) {
        File file = new File(this.mCurrentSetIncrementalDir, packageInfo.packageName);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
            file.delete();
        }
        File file3 = new File(this.mCurrentSetFullDir, packageInfo.packageName);
        File[] fileArrListFiles2 = file3.listFiles();
        if (fileArrListFiles2 != null) {
            for (File file4 : fileArrListFiles2) {
                file4.delete();
            }
            file3.delete();
        }
        return 0;
    }

    @Override // android.app.backup.BackupTransport
    public Intent configurationIntent() {
        return null;
    }

    @Override // android.app.backup.BackupTransport
    public String currentDestinationString() {
        return TRANSPORT_DESTINATION_STRING;
    }

    @Override // android.app.backup.BackupTransport
    public Intent dataManagementIntent() {
        return null;
    }

    @Override // android.app.backup.BackupTransport
    public String dataManagementLabel() {
        return "";
    }

    @Override // android.app.backup.BackupTransport
    public int finishBackup() {
        return tearDownFullBackup();
    }

    @Override // android.app.backup.BackupTransport
    public void finishRestore() {
        if (this.mRestoreType == 2) {
            resetFullRestoreState();
        }
        this.mRestoreType = 0;
    }

    @Override // android.app.backup.BackupTransport
    public RestoreSet[] getAvailableRestoreSets() {
        long[] jArr = POSSIBLE_SETS;
        long[] jArr2 = new long[jArr.length + 1];
        int i2 = 0;
        for (long j2 : jArr) {
            if (new File(this.mDataDir, Long.toString(j2)).exists()) {
                jArr2[i2] = j2;
                i2++;
            }
        }
        int i3 = i2 + 1;
        jArr2[i2] = 1;
        RestoreSet[] restoreSetArr = new RestoreSet[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            restoreSetArr[i4] = new RestoreSet("Local disk image", "flash", jArr2[i4]);
        }
        return restoreSetArr;
    }

    @Override // android.app.backup.BackupTransport
    public long getBackupQuota(String str, boolean z2) {
        return z2 ? FULL_BACKUP_SIZE_QUOTA : KEY_VALUE_BACKUP_SIZE_QUOTA;
    }

    @Override // android.app.backup.BackupTransport
    public long getCurrentRestoreSet() {
        return 1L;
    }

    @Override // android.app.backup.BackupTransport
    public int getNextFullRestoreDataChunk(ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mRestoreType != 2) {
            throw new IllegalStateException("Asked for full restore data for non-stream package");
        }
        if (this.mCurFullRestoreStream == null) {
            String str = this.mRestorePackages[this.mRestorePackage].packageName;
            try {
                this.mCurFullRestoreStream = new FileInputStream(new File(this.mRestoreSetFullDir, str));
                this.mFullRestoreSocketStream = new FileOutputStream(parcelFileDescriptor.getFileDescriptor());
                this.mFullRestoreBuffer = new byte[2048];
            } catch (IOException unused) {
                m.r("Unable to read archive for ", str, TAG);
                return -1002;
            }
        }
        try {
            int i2 = this.mCurFullRestoreStream.read(this.mFullRestoreBuffer);
            if (i2 >= 0) {
                if (i2 != 0) {
                    this.mFullRestoreSocketStream.write(this.mFullRestoreBuffer, 0, i2);
                    return i2;
                }
                Log.w(TAG, "read() of archive file returned 0; treating as EOF");
            }
            return -1;
        } catch (IOException unused2) {
            return -1000;
        }
    }

    @Override // android.app.backup.BackupTransport
    public int getRestoreData(ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mRestorePackages == null) {
            throw new IllegalStateException("startRestore not called");
        }
        if (this.mRestorePackage < 0) {
            throw new IllegalStateException("nextRestorePackage not called");
        }
        if (this.mRestoreType != 1) {
            throw new IllegalStateException("getRestoreData(fd) for non-key/value dataset");
        }
        File file = new File(this.mRestoreSetIncrementalDir, this.mRestorePackages[this.mRestorePackage].packageName);
        ArrayList<DecodedFilename> arrayListContentsByKey = contentsByKey(file);
        if (arrayListContentsByKey == null) {
            Log.e(TAG, "No keys for package: " + file);
            return -1000;
        }
        BackupDataOutput backupDataOutput = new BackupDataOutput(parcelFileDescriptor.getFileDescriptor());
        try {
            for (DecodedFilename decodedFilename : arrayListContentsByKey) {
                File file2 = decodedFilename.file;
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    int length = (int) file2.length();
                    byte[] bArr = new byte[length];
                    fileInputStream.read(bArr);
                    backupDataOutput.writeEntityHeader(decodedFilename.key, length);
                    backupDataOutput.writeEntityData(bArr, length);
                    fileInputStream.close();
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
            return 0;
        } catch (IOException e2) {
            Log.e(TAG, "Unable to read backup records", e2);
            return -1000;
        }
    }

    @Override // android.app.backup.BackupTransport
    public int initializeDevice() {
        deleteContents(this.mCurrentSetDir);
        makeDataDirs();
        return 0;
    }

    @Override // android.app.backup.BackupTransport
    public String name() {
        return new ComponentName(this.mContext, getClass()).flattenToShortString();
    }

    @Override // android.app.backup.BackupTransport
    public RestoreDescription nextRestorePackage() {
        String str;
        if (this.mRestorePackages == null) {
            throw new IllegalStateException("startRestore not called");
        }
        boolean z2 = false;
        do {
            int i2 = this.mRestorePackage + 1;
            this.mRestorePackage = i2;
            PackageInfo[] packageInfoArr = this.mRestorePackages;
            if (i2 >= packageInfoArr.length) {
                return RestoreDescription.NO_MORE_PACKAGES;
            }
            str = packageInfoArr[i2].packageName;
            String[] list = new File(this.mRestoreSetIncrementalDir, str).list();
            if (list != null && list.length > 0) {
                this.mRestoreType = 1;
                z2 = true;
            }
            if (!z2 && new File(this.mRestoreSetFullDir, str).length() > 0) {
                this.mRestoreType = 2;
                this.mCurFullRestoreStream = null;
                z2 = true;
            }
        } while (!z2);
        return new RestoreDescription(str, this.mRestoreType);
    }

    @Override // android.app.backup.BackupTransport
    public int performBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        File file = new File(this.mCurrentSetIncrementalDir, packageInfo.packageName);
        file.mkdirs();
        try {
            ArrayList<KVOperation> backupStream = parseBackupStream(parcelFileDescriptor);
            ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
            int keySizes = parseKeySizes(file, arrayMap);
            for (KVOperation kVOperation : backupStream) {
                Integer num = arrayMap.get(kVOperation.key);
                if (num != null) {
                    keySizes -= num.intValue();
                }
                byte[] bArr = kVOperation.value;
                if (bArr != null) {
                    keySizes += bArr.length;
                }
            }
            if (keySizes > KEY_VALUE_BACKUP_SIZE_QUOTA) {
                return -1005;
            }
            for (KVOperation kVOperation2 : backupStream) {
                File file2 = new File(file, kVOperation2.key);
                file2.delete();
                if (kVOperation2.value != null) {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            byte[] bArr2 = kVOperation2.value;
                            fileOutputStream.write(bArr2, 0, bArr2.length);
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        }
                    } catch (IOException unused) {
                        Log.e(TAG, "Unable to update key file " + file2);
                        return -1000;
                    }
                }
            }
            return 0;
        } catch (IOException e2) {
            Log.v(TAG, "Exception reading backup input", e2);
            return -1000;
        }
    }

    @Override // android.app.backup.BackupTransport
    public int performFullBackup(PackageInfo packageInfo, ParcelFileDescriptor parcelFileDescriptor) {
        if (this.mSocket != null) {
            Log.e(TAG, "Attempt to initiate full backup while one is in progress");
            return -1000;
        }
        try {
            this.mFullBackupSize = 0L;
            this.mSocket = ParcelFileDescriptor.dup(parcelFileDescriptor.getFileDescriptor());
            this.mSocketInputStream = new FileInputStream(this.mSocket.getFileDescriptor());
            this.mFullTargetPackage = packageInfo.packageName;
            this.mFullBackupBuffer = new byte[4096];
            return 0;
        } catch (IOException unused) {
            Log.e(TAG, "Unable to process socket for full backup");
            return -1000;
        }
    }

    @Override // android.app.backup.BackupTransport
    public long requestBackupTime() {
        return 0L;
    }

    @Override // android.app.backup.BackupTransport
    public long requestFullBackupTime() {
        return 0L;
    }

    @Override // android.app.backup.BackupTransport
    public int sendBackupData(int i2) {
        if (this.mSocket == null) {
            Log.w(TAG, "Attempted sendBackupData before performFullBackup");
            return -1000;
        }
        long j2 = this.mFullBackupSize + ((long) i2);
        this.mFullBackupSize = j2;
        if (j2 > FULL_BACKUP_SIZE_QUOTA) {
            return -1005;
        }
        if (i2 > this.mFullBackupBuffer.length) {
            this.mFullBackupBuffer = new byte[i2];
        }
        if (this.mFullBackupOutputStream == null) {
            try {
                this.mFullBackupOutputStream = new BufferedOutputStream(new FileOutputStream(tarballFile(this.mFullTargetPackage)));
            } catch (FileNotFoundException unused) {
                return -1000;
            }
        }
        while (i2 > 0) {
            try {
                int i3 = this.mSocketInputStream.read(this.mFullBackupBuffer, 0, i2);
                if (i3 < 0) {
                    Log.w(TAG, "Unexpected EOD; failing backup");
                    return -1000;
                }
                this.mFullBackupOutputStream.write(this.mFullBackupBuffer, 0, i3);
                i2 -= i3;
            } catch (IOException unused2) {
                Log.e(TAG, "Error handling backup data for " + this.mFullTargetPackage);
                return -1000;
            }
        }
        return 0;
    }

    @Override // android.app.backup.BackupTransport
    public int startRestore(long j2, PackageInfo[] packageInfoArr) {
        this.mRestorePackages = packageInfoArr;
        this.mRestorePackage = -1;
        this.mRestoreSetDir = new File(this.mDataDir, Long.toString(j2));
        this.mRestoreSetIncrementalDir = new File(this.mRestoreSetDir, INCREMENTAL_DIR);
        this.mRestoreSetFullDir = new File(this.mRestoreSetDir, FULL_DATA_DIR);
        return 0;
    }

    @Override // android.app.backup.BackupTransport
    public String transportDirName() {
        return TRANSPORT_DIR_NAME;
    }
}
