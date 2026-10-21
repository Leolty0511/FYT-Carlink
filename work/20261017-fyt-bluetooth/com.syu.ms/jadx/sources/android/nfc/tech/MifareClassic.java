package android.nfc.tech;

import android.nfc.Tag;
import android.nfc.TagLostException;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class MifareClassic extends BasicTagTechnology {
    public static final int BLOCK_SIZE = 16;
    public static final byte[] KEY_DEFAULT = {-1, -1, -1, -1, -1, -1};
    public static final byte[] KEY_MIFARE_APPLICATION_DIRECTORY = {-96, -95, -94, -93, -92, -91};
    public static final byte[] KEY_NFC_FORUM = {-45, -9, -45, -9, -45, -9};
    private static final int MAX_BLOCK_COUNT = 256;
    private static final int MAX_SECTOR_COUNT = 40;
    public static final int SIZE_1K = 1024;
    public static final int SIZE_2K = 2048;
    public static final int SIZE_4K = 4096;
    public static final int SIZE_MINI = 320;
    private static final String TAG = "NFC";
    public static final int TYPE_CLASSIC = 0;
    public static final int TYPE_PLUS = 1;
    public static final int TYPE_PRO = 2;
    public static final int TYPE_UNKNOWN = -1;
    private boolean mIsEmulated;
    private int mSize;
    private int mType;

    public MifareClassic(Tag tag) {
        super(tag, 8);
        NfcA nfcA = NfcA.get(tag);
        this.mIsEmulated = false;
        short sak = nfcA.getSak();
        if (sak != 1) {
            if (sak == 24) {
                this.mType = 0;
                this.mSize = 4096;
                return;
            }
            if (sak == 40) {
                this.mType = 0;
                this.mSize = 1024;
                this.mIsEmulated = true;
                return;
            }
            if (sak == 56) {
                this.mType = 0;
                this.mSize = 4096;
                this.mIsEmulated = true;
                return;
            }
            if (sak == 136) {
                this.mType = 0;
                this.mSize = 1024;
                return;
            }
            if (sak == 152 || sak == 184) {
                this.mType = 2;
                this.mSize = 4096;
                return;
            }
            if (sak != 8) {
                if (sak == 9) {
                    this.mType = 0;
                    this.mSize = 320;
                    return;
                }
                if (sak == 16) {
                    this.mType = 1;
                    this.mSize = 2048;
                    return;
                } else if (sak == 17) {
                    this.mType = 1;
                    this.mSize = 4096;
                    return;
                } else {
                    throw new RuntimeException("Tag incorrectly enumerated as MIFARE Classic, SAK = " + ((int) nfcA.getSak()));
                }
            }
        }
        this.mType = 0;
        this.mSize = 1024;
    }

    private boolean authenticate(int i2, byte[] bArr, boolean z2) throws TagLostException {
        validateSector(i2);
        checkConnected();
        byte[] bArr2 = new byte[12];
        if (z2) {
            bArr2[0] = 96;
        } else {
            bArr2[0] = 97;
        }
        bArr2[1] = (byte) sectorToBlock(i2);
        byte[] id = getTag().getId();
        System.arraycopy(id, id.length - 4, bArr2, 2, 4);
        System.arraycopy(bArr, 0, bArr2, 6, 6);
        try {
            return transceive(bArr2, false) != null;
        } catch (TagLostException e2) {
            throw e2;
        } catch (IOException unused) {
        }
    }

    public static MifareClassic get(Tag tag) {
        if (!tag.hasTech(8)) {
            return null;
        }
        try {
            return new MifareClassic(tag);
        } catch (RemoteException unused) {
            return null;
        }
    }

    private static void validateBlock(int i2) {
        if (i2 < 0 || i2 >= 256) {
            throw new IndexOutOfBoundsException("block out of bounds: " + i2);
        }
    }

    private static void validateSector(int i2) {
        if (i2 < 0 || i2 >= 40) {
            throw new IndexOutOfBoundsException("sector out of bounds: " + i2);
        }
    }

    private static void validateValueOperand(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("value operand negative");
        }
    }

    public boolean authenticateSectorWithKeyA(int i2, byte[] bArr) {
        return authenticate(i2, bArr, true);
    }

    public boolean authenticateSectorWithKeyB(int i2, byte[] bArr) {
        return authenticate(i2, bArr, false);
    }

    public int blockToSector(int i2) {
        validateBlock(i2);
        return i2 < 128 ? i2 / 4 : ((i2 - 128) / 16) + 32;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void connect() {
        super.connect();
    }

    public void decrement(int i2, int i3) {
        validateBlock(i2);
        validateValueOperand(i3);
        checkConnected();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) -64);
        byteBufferAllocate.put((byte) i2);
        byteBufferAllocate.putInt(i3);
        transceive(byteBufferAllocate.array(), false);
    }

    public int getBlockCount() {
        return this.mSize / 16;
    }

    public int getBlockCountInSector(int i2) {
        validateSector(i2);
        return i2 < 32 ? 4 : 16;
    }

    public int getMaxTransceiveLength() {
        return getMaxTransceiveLengthInternal();
    }

    public int getSectorCount() {
        int i2 = this.mSize;
        if (i2 == 320) {
            return 5;
        }
        if (i2 == 1024) {
            return 16;
        }
        if (i2 != 2048) {
            return i2 != 4096 ? 0 : 40;
        }
        return 32;
    }

    public int getSize() {
        return this.mSize;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    public int getTimeout() {
        try {
            return this.mTag.getTagService().getTimeout(8);
        } catch (RemoteException e2) {
            Log.e("NFC", "NFC service dead", e2);
            return 0;
        }
    }

    public int getType() {
        return this.mType;
    }

    public void increment(int i2, int i3) {
        validateBlock(i2);
        validateValueOperand(i3);
        checkConnected();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) -63);
        byteBufferAllocate.put((byte) i2);
        byteBufferAllocate.putInt(i3);
        transceive(byteBufferAllocate.array(), false);
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    public boolean isEmulated() {
        return this.mIsEmulated;
    }

    public byte[] readBlock(int i2) {
        validateBlock(i2);
        checkConnected();
        return transceive(new byte[]{48, (byte) i2}, false);
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() {
        super.reconnect();
    }

    public void restore(int i2) {
        validateBlock(i2);
        checkConnected();
        transceive(new byte[]{-62, (byte) i2}, false);
    }

    public int sectorToBlock(int i2) {
        return i2 < 32 ? i2 * 4 : ((i2 - 32) * 16) + 128;
    }

    public void setTimeout(int i2) {
        try {
            if (this.mTag.getTagService().setTimeout(8, i2) == 0) {
            } else {
                throw new IllegalArgumentException("The supplied timeout is not valid");
            }
        } catch (RemoteException e2) {
            Log.e("NFC", "NFC service dead", e2);
        }
    }

    public byte[] transceive(byte[] bArr) {
        return transceive(bArr, true);
    }

    public void transfer(int i2) {
        validateBlock(i2);
        checkConnected();
        transceive(new byte[]{-80, (byte) i2}, false);
    }

    public void writeBlock(int i2, byte[] bArr) {
        validateBlock(i2);
        checkConnected();
        if (bArr.length != 16) {
            throw new IllegalArgumentException("must write 16-bytes");
        }
        byte[] bArr2 = new byte[bArr.length + 2];
        bArr2[0] = -96;
        bArr2[1] = (byte) i2;
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        transceive(bArr2, false);
    }
}
