package android.app.backup;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public class FullBackupDataOutput {
    private final BackupDataOutput mData;
    private final long mQuota;
    private long mSize;

    public FullBackupDataOutput(long j2) {
        this.mData = null;
        this.mQuota = j2;
        this.mSize = 0L;
    }

    public void addSize(long j2) {
        if (j2 > 0) {
            this.mSize += j2;
        }
    }

    public BackupDataOutput getData() {
        return this.mData;
    }

    public long getQuota() {
        return this.mQuota;
    }

    public long getSize() {
        return this.mSize;
    }

    public FullBackupDataOutput(ParcelFileDescriptor parcelFileDescriptor, long j2) {
        this.mData = new BackupDataOutput(parcelFileDescriptor.getFileDescriptor(), j2);
        this.mQuota = j2;
    }

    public FullBackupDataOutput(ParcelFileDescriptor parcelFileDescriptor) {
        this(parcelFileDescriptor, -1L);
    }
}
