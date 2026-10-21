package android.app.backup;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class BackupDataInputStream extends InputStream {
    int dataSize;
    String key;
    BackupDataInput mData;
    byte[] mOneByte;

    public BackupDataInputStream(BackupDataInput backupDataInput) {
        this.mData = backupDataInput;
    }

    public String getKey() {
        return this.key;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.mOneByte;
        if (bArr == null) {
            bArr = new byte[1];
            this.mOneByte = bArr;
        }
        this.mData.readEntityData(bArr, 0, 1);
        return bArr[0];
    }

    public int size() {
        return this.dataSize;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        return this.mData.readEntityData(bArr, i2, i3);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.mData.readEntityData(bArr, 0, bArr.length);
    }
}
