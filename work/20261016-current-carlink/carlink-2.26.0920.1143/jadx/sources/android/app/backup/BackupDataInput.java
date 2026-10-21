package android.app.backup;

import android.app.m;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BackupDataInput {
    long mBackupReader;
    private EntityHeader mHeader = new EntityHeader();
    private boolean mHeaderReady;

    public static class EntityHeader {
        int dataSize;
        String key;

        private EntityHeader() {
        }
    }

    public BackupDataInput(FileDescriptor fileDescriptor) {
        fileDescriptor.getClass();
        long jCtor = ctor(fileDescriptor);
        this.mBackupReader = jCtor;
        if (jCtor != 0) {
            return;
        }
        throw new RuntimeException("Native initialization failed with fd=" + fileDescriptor);
    }

    private static native long ctor(FileDescriptor fileDescriptor);

    private static native void dtor(long j2);

    private native int readEntityData_native(long j2, byte[] bArr, int i2, int i3);

    private native int readNextHeader_native(long j2, EntityHeader entityHeader);

    private native int skipEntityData_native(long j2);

    public void finalize() throws Throwable {
        try {
            dtor(this.mBackupReader);
        } finally {
            super.finalize();
        }
    }

    public int getDataSize() {
        if (this.mHeaderReady) {
            return this.mHeader.dataSize;
        }
        throw new IllegalStateException("Entity header not read");
    }

    public String getKey() {
        if (this.mHeaderReady) {
            return this.mHeader.key;
        }
        throw new IllegalStateException("Entity header not read");
    }

    public int readEntityData(byte[] bArr, int i2, int i3) throws IOException {
        if (!this.mHeaderReady) {
            throw new IllegalStateException("Entity header not read");
        }
        int entityData_native = readEntityData_native(this.mBackupReader, bArr, i2, i3);
        if (entityData_native >= 0) {
            return entityData_native;
        }
        throw new IOException(m.d(entityData_native, new StringBuilder("result=0x")));
    }

    public boolean readNextHeader() throws IOException {
        int nextHeader_native = readNextHeader_native(this.mBackupReader, this.mHeader);
        if (nextHeader_native == 0) {
            this.mHeaderReady = true;
            return true;
        }
        if (nextHeader_native > 0) {
            this.mHeaderReady = false;
            return false;
        }
        this.mHeaderReady = false;
        throw new IOException(m.d(nextHeader_native, new StringBuilder("failed: 0x")));
    }

    public void skipEntityData() {
        if (!this.mHeaderReady) {
            throw new IllegalStateException("Entity header not read");
        }
        skipEntityData_native(this.mBackupReader);
    }
}
