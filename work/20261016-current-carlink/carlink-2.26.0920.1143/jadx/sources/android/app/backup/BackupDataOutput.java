package android.app.backup;

import android.app.m;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BackupDataOutput {
    long mBackupWriter;
    final long mQuota;

    public BackupDataOutput(FileDescriptor fileDescriptor) {
        this(fileDescriptor, -1L);
    }

    private static native long ctor(FileDescriptor fileDescriptor);

    private static native void dtor(long j2);

    private static native void setKeyPrefix_native(long j2, String str);

    private static native int writeEntityData_native(long j2, byte[] bArr, int i2);

    private static native int writeEntityHeader_native(long j2, String str, int i2);

    public void finalize() throws Throwable {
        try {
            dtor(this.mBackupWriter);
        } finally {
            super.finalize();
        }
    }

    public long getQuota() {
        return this.mQuota;
    }

    public void setKeyPrefix(String str) {
        setKeyPrefix_native(this.mBackupWriter, str);
    }

    public int writeEntityData(byte[] bArr, int i2) throws IOException {
        int iWriteEntityData_native = writeEntityData_native(this.mBackupWriter, bArr, i2);
        if (iWriteEntityData_native >= 0) {
            return iWriteEntityData_native;
        }
        throw new IOException(m.d(iWriteEntityData_native, new StringBuilder("result=0x")));
    }

    public int writeEntityHeader(String str, int i2) throws IOException {
        int iWriteEntityHeader_native = writeEntityHeader_native(this.mBackupWriter, str, i2);
        if (iWriteEntityHeader_native >= 0) {
            return iWriteEntityHeader_native;
        }
        throw new IOException(m.d(iWriteEntityHeader_native, new StringBuilder("result=0x")));
    }

    public BackupDataOutput(FileDescriptor fileDescriptor, long j2) {
        fileDescriptor.getClass();
        this.mQuota = j2;
        long jCtor = ctor(fileDescriptor);
        this.mBackupWriter = jCtor;
        if (jCtor != 0) {
            return;
        }
        throw new RuntimeException("Native initialization failed with fd=" + fileDescriptor);
    }
}
