package android.app.backup;

import android.accessibilityservice.c;
import android.os.ParcelFileDescriptor;
import android.util.ArrayMap;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class BlobBackupHelper implements BackupHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "BlobBackupHelper";
    private final int mCurrentBlobVersion;
    private final String[] mKeys;

    public BlobBackupHelper(int i2, String... strArr) {
        this.mCurrentBlobVersion = i2;
        this.mKeys = strArr;
    }

    private long checksum(byte[] bArr) {
        if (bArr == null) {
            return -1L;
        }
        try {
            CRC32 crc32 = new CRC32();
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            byte[] bArr2 = new byte[4096];
            while (true) {
                int i2 = byteArrayInputStream.read(bArr2);
                if (i2 < 0) {
                    return crc32.getValue();
                }
                crc32.update(bArr2, 0, i2);
            }
        } catch (Exception unused) {
            return -1L;
        }
    }

    private byte[] deflate(byte[] bArr) {
        if (bArr != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                new DataOutputStream(byteArrayOutputStream).writeInt(this.mCurrentBlobVersion);
                DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e2) {
                Log.w(TAG, "Unable to process payload: " + e2.getMessage());
            }
        }
        return null;
    }

    private byte[] inflate(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            int i2 = new DataInputStream(byteArrayInputStream).readInt();
            if (i2 > this.mCurrentBlobVersion) {
                Log.w(TAG, "Saved payload from unrecognized version " + i2);
                return null;
            }
            InflaterInputStream inflaterInputStream = new InflaterInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[4096];
            while (true) {
                int i3 = inflaterInputStream.read(bArr2);
                if (i3 <= 0) {
                    inflaterInputStream.close();
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, i3);
            }
        } catch (IOException e2) {
            Log.w(TAG, "Unable to process restored payload: " + e2.getMessage());
            return null;
        }
    }

    private ArrayMap<String, Long> readOldState(ParcelFileDescriptor parcelFileDescriptor) {
        ArrayMap<String, Long> arrayMap = new ArrayMap<>();
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(parcelFileDescriptor.getFileDescriptor()));
        try {
            int i2 = dataInputStream.readInt();
            if (i2 <= this.mCurrentBlobVersion) {
                int i3 = dataInputStream.readInt();
                for (int i4 = 0; i4 < i3; i4++) {
                    arrayMap.put(dataInputStream.readUTF(), Long.valueOf(dataInputStream.readLong()));
                }
            } else {
                Log.w(TAG, "Prior state from unrecognized version " + i2);
            }
        } catch (EOFException unused) {
            arrayMap.clear();
        } catch (Exception e2) {
            Log.e(TAG, "Error examining prior backup state " + e2.getMessage());
            arrayMap.clear();
        }
        return arrayMap;
    }

    private void writeBackupState(ArrayMap<String, Long> arrayMap, ParcelFileDescriptor parcelFileDescriptor) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
            dataOutputStream.writeInt(this.mCurrentBlobVersion);
            int size = arrayMap != null ? arrayMap.size() : 0;
            dataOutputStream.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                String strKeyAt = arrayMap.keyAt(i2);
                long jLongValue = arrayMap.valueAt(i2).longValue();
                dataOutputStream.writeUTF(strKeyAt);
                dataOutputStream.writeLong(jLongValue);
            }
        } catch (IOException e2) {
            Log.e(TAG, "Unable to write updated state", e2);
        }
    }

    public abstract void applyRestoredPayload(String str, byte[] bArr);

    public abstract byte[] getBackupPayload(String str);

    @Override // android.app.backup.BackupHelper
    public void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        ArrayMap<String, Long> oldState = readOldState(parcelFileDescriptor);
        ArrayMap<String, Long> arrayMap = new ArrayMap<>();
        try {
            for (String str : this.mKeys) {
                byte[] bArrDeflate = deflate(getBackupPayload(str));
                long jChecksum = checksum(bArrDeflate);
                arrayMap.put(str, Long.valueOf(jChecksum));
                Long l2 = oldState.get(str);
                if (l2 == null || jChecksum != l2.longValue()) {
                    if (bArrDeflate != null) {
                        backupDataOutput.writeEntityHeader(str, bArrDeflate.length);
                        backupDataOutput.writeEntityData(bArrDeflate, bArrDeflate.length);
                    } else {
                        backupDataOutput.writeEntityHeader(str, -1);
                    }
                }
            }
        } catch (Exception e2) {
            Log.w(TAG, "Unable to record notification state: " + e2.getMessage());
            arrayMap.clear();
        } finally {
            writeBackupState(arrayMap, parcelFileDescriptor2);
        }
    }

    @Override // android.app.backup.BackupHelper
    public void restoreEntity(BackupDataInputStream backupDataInputStream) {
        String key = backupDataInputStream.getKey();
        int i2 = 0;
        while (true) {
            try {
                String[] strArr = this.mKeys;
                if (i2 >= strArr.length || key.equals(strArr[i2])) {
                    break;
                    break;
                }
                i2++;
            } catch (Exception e2) {
                StringBuilder sbV = c.v("Exception restoring entity ", key, " : ");
                sbV.append(e2.getMessage());
                Log.e(TAG, sbV.toString());
                return;
            }
        }
        if (i2 < this.mKeys.length) {
            byte[] bArr = new byte[backupDataInputStream.size()];
            backupDataInputStream.read(bArr);
            applyRestoredPayload(key, inflate(bArr));
        } else {
            Log.e(TAG, "Unrecognized key " + key + ", ignoring");
        }
    }

    @Override // android.app.backup.BackupHelper
    public void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        writeBackupState(null, parcelFileDescriptor);
    }
}
