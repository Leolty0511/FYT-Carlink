package android.util.proto;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.net.wifi.WifiNetworkScoreCache;
import android.os.BatteryStats;
import android.util.Log;
import com.google.common.base.Ascii;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class EncodedBuffer {
    private static final String TAG = "EncodedBuffer";
    private int mBufferCount;
    private final ArrayList<byte[]> mBuffers;
    private final int mChunkSize;
    private int mReadBufIndex;
    private byte[] mReadBuffer;
    private int mReadIndex;
    private int mReadLimit;
    private int mReadableSize;
    private int mWriteBufIndex;
    private byte[] mWriteBuffer;
    private int mWriteIndex;

    public EncodedBuffer() {
        this(0);
    }

    public static void dumpByteString(String str, String str2, byte[] bArr) {
        dumpByteString(str, str2, 0, bArr);
    }

    public static int getRawVarint32Size(int i2) {
        if ((i2 & WifiNetworkScoreCache.INVALID_NETWORK_SCORE) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int getRawVarint64Size(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if ((BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int getRawZigZag32Size(int i2) {
        return getRawVarint32Size(zigZag32(i2));
    }

    public static int getRawZigZag64Size(long j2) {
        return getRawVarint64Size(zigZag64(j2));
    }

    private void nextWriteBuffer() {
        int i2 = this.mWriteBufIndex + 1;
        this.mWriteBufIndex = i2;
        if (i2 >= this.mBufferCount) {
            byte[] bArr = new byte[this.mChunkSize];
            this.mWriteBuffer = bArr;
            this.mBuffers.add(bArr);
            this.mBufferCount++;
        } else {
            this.mWriteBuffer = this.mBuffers.get(i2);
        }
        this.mWriteIndex = 0;
    }

    private static int zigZag32(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private static long zigZag64(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public void dumpBuffers(String str) {
        int size = this.mBuffers.size();
        int iDumpByteString = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iDumpByteString += dumpByteString(str, c.e("{", i2, "} "), iDumpByteString, this.mBuffers.get(i2));
        }
    }

    public void editRawFixed32(int i2, int i3) {
        byte[] bArr = this.mBuffers.get(i2 / this.mChunkSize);
        int i4 = this.mChunkSize;
        bArr[i2 % i4] = (byte) i3;
        int i5 = i2 + 1;
        byte[] bArr2 = this.mBuffers.get(i5 / i4);
        int i6 = this.mChunkSize;
        bArr2[i5 % i6] = (byte) (i3 >> 8);
        int i7 = i2 + 2;
        byte[] bArr3 = this.mBuffers.get(i7 / i6);
        int i8 = this.mChunkSize;
        bArr3[i7 % i8] = (byte) (i3 >> 16);
        int i9 = i2 + 3;
        this.mBuffers.get(i9 / i8)[i9 % this.mChunkSize] = (byte) (i3 >> 24);
    }

    public byte[] getBytes(int i2) {
        byte[] bArr = new byte[i2];
        int i3 = i2 / this.mChunkSize;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            System.arraycopy(this.mBuffers.get(i4), 0, bArr, i5, this.mChunkSize);
            i5 += this.mChunkSize;
            i4++;
        }
        int i6 = i2 - (i3 * this.mChunkSize);
        if (i6 > 0) {
            System.arraycopy(this.mBuffers.get(i4), 0, bArr, i5, i6);
        }
        return bArr;
    }

    public int getChunkCount() {
        return this.mBuffers.size();
    }

    public String getDebugString() {
        StringBuilder sb = new StringBuilder("EncodedBuffer( mChunkSize=");
        sb.append(this.mChunkSize);
        sb.append(" mBuffers.size=");
        sb.append(this.mBuffers.size());
        sb.append(" mBufferCount=");
        sb.append(this.mBufferCount);
        sb.append(" mWriteIndex=");
        sb.append(this.mWriteIndex);
        sb.append(" mWriteBufIndex=");
        sb.append(this.mWriteBufIndex);
        sb.append(" mReadBufIndex=");
        sb.append(this.mReadBufIndex);
        sb.append(" mReadIndex=");
        sb.append(this.mReadIndex);
        sb.append(" mReadableSize=");
        sb.append(this.mReadableSize);
        sb.append(" mReadLimit=");
        return c.m(sb, this.mReadLimit, " )");
    }

    public int getRawFixed32At(int i2) {
        byte[] bArr = this.mBuffers.get(i2 / this.mChunkSize);
        int i3 = this.mChunkSize;
        int i4 = bArr[i2 % i3] & 255;
        int i5 = i2 + 1;
        byte[] bArr2 = this.mBuffers.get(i5 / i3);
        int i6 = this.mChunkSize;
        int i7 = i4 | ((bArr2[i5 % i6] & 255) << 8);
        int i8 = i2 + 2;
        byte[] bArr3 = this.mBuffers.get(i8 / i6);
        int i9 = this.mChunkSize;
        int i10 = i2 + 3;
        return ((this.mBuffers.get(i10 / i9)[i10 % this.mChunkSize] & 255) << 24) | i7 | ((bArr3[i8 % i9] & 255) << 16);
    }

    public int getReadPos() {
        return (this.mReadBufIndex * this.mChunkSize) + this.mReadIndex;
    }

    public int getReadableSize() {
        return this.mReadableSize;
    }

    public int getWriteBufIndex() {
        return this.mWriteBufIndex;
    }

    public int getWriteIndex() {
        return this.mWriteIndex;
    }

    public int getWritePos() {
        return (this.mWriteBufIndex * this.mChunkSize) + this.mWriteIndex;
    }

    public byte readRawByte() {
        int i2 = this.mReadBufIndex;
        int i3 = this.mBufferCount;
        if (i2 > i3 || (i2 == i3 - 1 && this.mReadIndex >= this.mReadLimit)) {
            throw new IndexOutOfBoundsException("Trying to read too much data mReadBufIndex=" + this.mReadBufIndex + " mBufferCount=" + this.mBufferCount + " mReadIndex=" + this.mReadIndex + " mReadLimit=" + this.mReadLimit);
        }
        if (this.mReadIndex >= this.mChunkSize) {
            int i4 = i2 + 1;
            this.mReadBufIndex = i4;
            this.mReadBuffer = this.mBuffers.get(i4);
            this.mReadIndex = 0;
        }
        byte[] bArr = this.mReadBuffer;
        int i5 = this.mReadIndex;
        this.mReadIndex = i5 + 1;
        return bArr[i5];
    }

    public int readRawFixed32() {
        return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
    }

    public long readRawUnsigned() {
        int i2 = 0;
        long j2 = 0;
        do {
            byte rawByte = readRawByte();
            j2 |= ((long) (rawByte & Ascii.DEL)) << i2;
            if ((rawByte & 128) == 0) {
                return j2;
            }
            i2 += 7;
        } while (i2 <= 64);
        throw new ProtoParseException("Varint too long -- " + getDebugString());
    }

    public void rewindRead() {
        this.mReadBuffer = this.mBuffers.get(0);
        this.mReadBufIndex = 0;
        this.mReadIndex = 0;
    }

    public void rewindWriteTo(int i2) {
        if (i2 > getWritePos()) {
            throw new RuntimeException(c.d("rewindWriteTo only can go backwards", i2));
        }
        int i3 = this.mChunkSize;
        int i4 = i2 / i3;
        this.mWriteBufIndex = i4;
        int i5 = i2 % i3;
        this.mWriteIndex = i5;
        if (i5 == 0 && i4 != 0) {
            this.mWriteIndex = i3;
            this.mWriteBufIndex = i4 - 1;
        }
        this.mWriteBuffer = this.mBuffers.get(this.mWriteBufIndex);
    }

    public void skipRead(int i2) {
        if (i2 < 0) {
            throw new RuntimeException(c.d("skipRead with negative amount=", i2));
        }
        if (i2 == 0) {
            return;
        }
        int i3 = this.mChunkSize;
        int i4 = this.mReadIndex;
        if (i2 <= i3 - i4) {
            this.mReadIndex = i4 + i2;
            return;
        }
        int i5 = i2 - (i3 - i4);
        int i6 = i5 % i3;
        this.mReadIndex = i6;
        if (i6 == 0) {
            this.mReadIndex = i3;
            this.mReadBufIndex = (i5 / i3) + this.mReadBufIndex;
        } else {
            this.mReadBufIndex = (i5 / i3) + 1 + this.mReadBufIndex;
        }
        this.mReadBuffer = this.mBuffers.get(this.mReadBufIndex);
    }

    public void startEditing() {
        int i2 = this.mWriteBufIndex * this.mChunkSize;
        int i3 = this.mWriteIndex;
        this.mReadableSize = i2 + i3;
        this.mReadLimit = i3;
        byte[] bArr = this.mBuffers.get(0);
        this.mWriteBuffer = bArr;
        this.mWriteIndex = 0;
        this.mWriteBufIndex = 0;
        this.mReadBuffer = bArr;
        this.mReadBufIndex = 0;
        this.mReadIndex = 0;
    }

    public void writeFromThisBuffer(int i2, int i3) {
        if (this.mReadLimit < 0) {
            throw new IllegalStateException("writeFromThisBuffer before startEditing");
        }
        if (i2 < getWritePos()) {
            StringBuilder sbT = c.t("Can only move forward in the buffer -- srcOffset=", i2, " size=", i3, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbT.append(getDebugString());
            throw new IllegalArgumentException(sbT.toString());
        }
        if (i2 + i3 > this.mReadableSize) {
            StringBuilder sbT2 = c.t("Trying to move more data than there is -- srcOffset=", i2, " size=", i3, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbT2.append(getDebugString());
            throw new IllegalArgumentException(sbT2.toString());
        }
        if (i3 == 0) {
            return;
        }
        int i4 = this.mWriteBufIndex;
        int i5 = this.mChunkSize;
        int i6 = this.mWriteIndex;
        if (i2 == (i4 * i5) + i6) {
            if (i3 <= i5 - i6) {
                this.mWriteIndex = i6 + i3;
                return;
            }
            int i7 = i3 - (i5 - i6);
            int i8 = i7 % i5;
            this.mWriteIndex = i8;
            if (i8 == 0) {
                this.mWriteIndex = i5;
                this.mWriteBufIndex = (i7 / i5) + i4;
            } else {
                this.mWriteBufIndex = (i7 / i5) + 1 + i4;
            }
            this.mWriteBuffer = this.mBuffers.get(this.mWriteBufIndex);
            return;
        }
        int i9 = i2 / i5;
        byte[] bArr = this.mBuffers.get(i9);
        int i10 = i2 % this.mChunkSize;
        while (i3 > 0) {
            if (this.mWriteIndex >= this.mChunkSize) {
                nextWriteBuffer();
            }
            if (i10 >= this.mChunkSize) {
                i9++;
                bArr = this.mBuffers.get(i9);
                i10 = 0;
            }
            int i11 = this.mChunkSize;
            int iMin = Math.min(i3, Math.min(i11 - this.mWriteIndex, i11 - i10));
            System.arraycopy(bArr, i10, this.mWriteBuffer, this.mWriteIndex, iMin);
            this.mWriteIndex += iMin;
            i10 += iMin;
            i3 -= iMin;
        }
    }

    public void writeRawBuffer(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        writeRawBuffer(bArr, 0, bArr.length);
    }

    public void writeRawByte(byte b2) {
        if (this.mWriteIndex >= this.mChunkSize) {
            nextWriteBuffer();
        }
        byte[] bArr = this.mWriteBuffer;
        int i2 = this.mWriteIndex;
        this.mWriteIndex = i2 + 1;
        bArr[i2] = b2;
    }

    public void writeRawFixed32(int i2) {
        writeRawByte((byte) i2);
        writeRawByte((byte) (i2 >> 8));
        writeRawByte((byte) (i2 >> 16));
        writeRawByte((byte) (i2 >> 24));
    }

    public void writeRawFixed64(long j2) {
        writeRawByte((byte) j2);
        writeRawByte((byte) (j2 >> 8));
        writeRawByte((byte) (j2 >> 16));
        writeRawByte((byte) (j2 >> 24));
        writeRawByte((byte) (j2 >> 32));
        writeRawByte((byte) (j2 >> 40));
        writeRawByte((byte) (j2 >> 48));
        writeRawByte((byte) (j2 >> 56));
    }

    public void writeRawVarint32(int i2) {
        while ((i2 & WifiNetworkScoreCache.INVALID_NETWORK_SCORE) != 0) {
            writeRawByte((byte) ((i2 & 127) | 128));
            i2 >>>= 7;
        }
        writeRawByte((byte) i2);
    }

    public void writeRawVarint64(long j2) {
        while (((-128) & j2) != 0) {
            writeRawByte((byte) ((127 & j2) | 128));
            j2 >>>= 7;
        }
        writeRawByte((byte) j2);
    }

    public void writeRawZigZag32(int i2) {
        writeRawVarint32(zigZag32(i2));
    }

    public void writeRawZigZag64(long j2) {
        writeRawVarint64(zigZag64(j2));
    }

    public EncodedBuffer(int i2) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        this.mBuffers = arrayList;
        this.mReadLimit = -1;
        this.mReadableSize = -1;
        i2 = i2 <= 0 ? 8192 : i2;
        this.mChunkSize = i2;
        byte[] bArr = new byte[i2];
        this.mWriteBuffer = bArr;
        arrayList.add(bArr);
        this.mBufferCount = 1;
    }

    private static int dumpByteString(String str, String str2, int i2, byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (i3 % 16 == 0) {
                if (i3 != 0) {
                    Log.d(str, stringBuffer.toString());
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append(str2);
                stringBuffer.append('[');
                stringBuffer.append(i2 + i3);
                stringBuffer.append(']');
                stringBuffer.append(' ');
            } else {
                stringBuffer.append(' ');
            }
            byte b2 = bArr[i3];
            byte b3 = (byte) ((b2 >> 4) & 15);
            if (b3 < 10) {
                stringBuffer.append((char) (b3 + 48));
            } else {
                stringBuffer.append((char) (b3 + 87));
            }
            byte b4 = (byte) (b2 & 15);
            if (b4 < 10) {
                stringBuffer.append((char) (b4 + 48));
            } else {
                stringBuffer.append((char) (b4 + 87));
            }
        }
        Log.d(str, stringBuffer.toString());
        return length;
    }

    public void writeRawBuffer(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            return;
        }
        int i4 = this.mChunkSize;
        int i5 = this.mWriteIndex;
        int i6 = i3 < i4 - i5 ? i3 : i4 - i5;
        if (i6 > 0) {
            System.arraycopy(bArr, i2, this.mWriteBuffer, i5, i6);
            this.mWriteIndex += i6;
            i3 -= i6;
            i2 += i6;
        }
        while (i3 > 0) {
            nextWriteBuffer();
            int i7 = this.mChunkSize;
            if (i3 < i7) {
                i7 = i3;
            }
            System.arraycopy(bArr, i2, this.mWriteBuffer, this.mWriteIndex, i7);
            this.mWriteIndex += i7;
            i3 -= i7;
            i2 += i7;
        }
    }
}
