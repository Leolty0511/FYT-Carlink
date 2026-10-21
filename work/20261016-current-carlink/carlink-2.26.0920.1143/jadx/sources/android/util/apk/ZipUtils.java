package android.util.apk;

import android.accessibilityservice.c;
import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
abstract class ZipUtils {
    private static final int UINT16_MAX_VALUE = 65535;
    private static final int ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER = 1347094023;
    private static final int ZIP64_EOCD_LOCATOR_SIZE = 20;
    private static final int ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET = 16;
    private static final int ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET = 12;
    private static final int ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET = 20;
    private static final int ZIP_EOCD_REC_MIN_SIZE = 22;
    private static final int ZIP_EOCD_REC_SIG = 101010256;

    private ZipUtils() {
    }

    private static void assertByteOrderLittleEndian(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static Pair<ByteBuffer, Long> findZipEndOfCentralDirectoryRecord(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> pairFindZipEndOfCentralDirectoryRecord = findZipEndOfCentralDirectoryRecord(randomAccessFile, 0);
        return pairFindZipEndOfCentralDirectoryRecord != null ? pairFindZipEndOfCentralDirectoryRecord : findZipEndOfCentralDirectoryRecord(randomAccessFile, 65535);
    }

    private static int getUnsignedInt16(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getShort(i2) & 65535;
    }

    private static long getUnsignedInt32(ByteBuffer byteBuffer, int i2) {
        return ((long) byteBuffer.getInt(i2)) & 4294967295L;
    }

    public static long getZipEocdCentralDirectoryOffset(ByteBuffer byteBuffer) {
        assertByteOrderLittleEndian(byteBuffer);
        return getUnsignedInt32(byteBuffer, byteBuffer.position() + 16);
    }

    public static long getZipEocdCentralDirectorySizeBytes(ByteBuffer byteBuffer) {
        assertByteOrderLittleEndian(byteBuffer);
        return getUnsignedInt32(byteBuffer, byteBuffer.position() + 12);
    }

    public static final boolean isZip64EndOfCentralDirectoryLocatorPresent(RandomAccessFile randomAccessFile, long j2) throws IOException {
        long j3 = j2 - 20;
        if (j3 < 0) {
            return false;
        }
        randomAccessFile.seek(j3);
        return randomAccessFile.readInt() == ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER;
    }

    private static void setUnsignedInt32(ByteBuffer byteBuffer, int i2, long j2) {
        if (j2 < 0 || j2 > 4294967295L) {
            throw new IllegalArgumentException(c.f("uint32 value of out range: ", j2));
        }
        byteBuffer.putInt(byteBuffer.position() + i2, (int) j2);
    }

    public static void setZipEocdCentralDirectoryOffset(ByteBuffer byteBuffer, long j2) {
        assertByteOrderLittleEndian(byteBuffer);
        setUnsignedInt32(byteBuffer, byteBuffer.position() + 16, j2);
    }

    private static Pair<ByteBuffer, Long> findZipEndOfCentralDirectoryRecord(RandomAccessFile randomAccessFile, int i2) throws IOException {
        if (i2 >= 0 && i2 <= 65535) {
            long length = randomAccessFile.length();
            if (length < 22) {
                return null;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i2, length - 22)) + 22);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            long jCapacity = length - ((long) byteBufferAllocate.capacity());
            randomAccessFile.seek(jCapacity);
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            int iFindZipEndOfCentralDirectoryRecord = findZipEndOfCentralDirectoryRecord(byteBufferAllocate);
            if (iFindZipEndOfCentralDirectoryRecord == -1) {
                return null;
            }
            byteBufferAllocate.position(iFindZipEndOfCentralDirectoryRecord);
            ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
            byteBufferSlice.order(byteOrder);
            return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + ((long) iFindZipEndOfCentralDirectoryRecord)));
        }
        throw new IllegalArgumentException(c.d("maxCommentSize: ", i2));
    }

    private static int findZipEndOfCentralDirectoryRecord(ByteBuffer byteBuffer) {
        assertByteOrderLittleEndian(byteBuffer);
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i2 = iCapacity - 22;
        int iMin = Math.min(i2, 65535);
        for (int i3 = 0; i3 <= iMin; i3++) {
            int i4 = i2 - i3;
            if (byteBuffer.getInt(i4) == ZIP_EOCD_REC_SIG && getUnsignedInt16(byteBuffer, i4 + 20) == i3) {
                return i4;
            }
        }
        return -1;
    }
}
