package android.util.proto;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.opengl.GLES32;
import android.provider.Telephony;
import android.util.Log;
import com.android.internal.logging.EventLogTags;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public final class ProtoOutputStream {
    public static final long FIELD_COUNT_MASK = 16492674416640L;
    public static final long FIELD_COUNT_PACKED = 5497558138880L;
    public static final long FIELD_COUNT_REPEATED = 2199023255552L;
    public static final int FIELD_COUNT_SHIFT = 40;
    public static final long FIELD_COUNT_SINGLE = 1099511627776L;
    public static final long FIELD_COUNT_UNKNOWN = 0;
    public static final int FIELD_ID_MASK = -8;
    public static final int FIELD_ID_SHIFT = 3;
    public static final long FIELD_TYPE_BOOL = 55834574848L;
    public static final long FIELD_TYPE_BYTES = 64424509440L;
    public static final long FIELD_TYPE_DOUBLE = 4294967296L;
    public static final long FIELD_TYPE_ENUM = 68719476736L;
    public static final long FIELD_TYPE_FIXED32 = 38654705664L;
    public static final long FIELD_TYPE_FIXED64 = 42949672960L;
    public static final long FIELD_TYPE_FLOAT = 8589934592L;
    public static final long FIELD_TYPE_INT32 = 12884901888L;
    public static final long FIELD_TYPE_INT64 = 17179869184L;
    public static final long FIELD_TYPE_MASK = 1095216660480L;
    private static final String[] FIELD_TYPE_NAMES = {"Double", "Float", "Int32", "Int64", "UInt32", "UInt64", "SInt32", "SInt64", "Fixed32", "Fixed64", "SFixed32", "SFixed64", "Bool", "String", "Bytes", "Enum", "Object"};
    public static final long FIELD_TYPE_OBJECT = 73014444032L;
    public static final long FIELD_TYPE_SFIXED32 = 47244640256L;
    public static final long FIELD_TYPE_SFIXED64 = 51539607552L;
    public static final int FIELD_TYPE_SHIFT = 32;
    public static final long FIELD_TYPE_SINT32 = 30064771072L;
    public static final long FIELD_TYPE_SINT64 = 34359738368L;
    public static final long FIELD_TYPE_STRING = 60129542144L;
    public static final long FIELD_TYPE_UINT32 = 21474836480L;
    public static final long FIELD_TYPE_UINT64 = 25769803776L;
    public static final long FIELD_TYPE_UNKNOWN = 0;
    public static final String TAG = "ProtoOutputStream";
    public static final int WIRE_TYPE_END_GROUP = 4;
    public static final int WIRE_TYPE_FIXED32 = 5;
    public static final int WIRE_TYPE_FIXED64 = 1;
    public static final int WIRE_TYPE_LENGTH_DELIMITED = 2;
    public static final int WIRE_TYPE_MASK = 7;
    public static final int WIRE_TYPE_START_GROUP = 3;
    public static final int WIRE_TYPE_VARINT = 0;
    private EncodedBuffer mBuffer;
    private boolean mCompacted;
    private int mCopyBegin;
    private int mDepth;
    private long mExpectedObjectToken;
    private int mNextObjectId;
    private OutputStream mStream;

    public ProtoOutputStream() {
        this(0);
    }

    private void assertNotCompacted() {
        if (this.mCompacted) {
            throw new IllegalArgumentException("write called after compact");
        }
    }

    public static int checkFieldId(long j2, long j3) {
        long j4 = j2 & FIELD_COUNT_MASK;
        long j5 = j2 & FIELD_TYPE_MASK;
        long j6 = j3 & FIELD_COUNT_MASK;
        long j7 = j3 & FIELD_TYPE_MASK;
        int i2 = (int) j2;
        if (i2 == 0) {
            StringBuilder sbS = c.s("Invalid proto field ", i2, " fieldId=");
            sbS.append(Long.toHexString(j2));
            throw new IllegalArgumentException(sbS.toString());
        }
        if (j5 == j7 && (j4 == j6 || (j4 == FIELD_COUNT_PACKED && j6 == FIELD_COUNT_REPEATED))) {
            return i2;
        }
        String fieldCountString = getFieldCountString(j4);
        String fieldTypeString = getFieldTypeString(j5);
        if (fieldTypeString == null || fieldCountString == null) {
            StringBuilder sb = new StringBuilder();
            if (j7 == FIELD_TYPE_OBJECT) {
                sb.append(Telephony.BaseMmsColumns.START);
            } else {
                sb.append("write");
            }
            sb.append(getFieldCountString(j6));
            sb.append(getFieldTypeString(j7));
            sb.append(" called with an invalid fieldId: 0x");
            sb.append(Long.toHexString(j2));
            sb.append(". The proto field ID might be ");
            sb.append(i2);
            sb.append('.');
            throw new IllegalArgumentException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (j7 == FIELD_TYPE_OBJECT) {
            sb2.append(Telephony.BaseMmsColumns.START);
        } else {
            sb2.append("write");
        }
        sb2.append(getFieldCountString(j6));
        sb2.append(getFieldTypeString(j7));
        sb2.append(" called for field ");
        sb2.append(i2);
        sb2.append(" which should be used with ");
        if (j5 == FIELD_TYPE_OBJECT) {
            sb2.append(Telephony.BaseMmsColumns.START);
        } else {
            sb2.append("write");
        }
        sb2.append(fieldCountString);
        sb2.append(fieldTypeString);
        if (j4 == FIELD_COUNT_PACKED) {
            sb2.append(" or writeRepeated");
            sb2.append(fieldTypeString);
        }
        sb2.append('.');
        throw new IllegalArgumentException(sb2.toString());
    }

    private void compactIfNecessary() {
        if (this.mCompacted) {
            return;
        }
        if (this.mDepth != 0) {
            throw new IllegalArgumentException(c.m(new StringBuilder("Trying to compact with "), this.mDepth, " missing calls to endObject"));
        }
        this.mBuffer.startEditing();
        int readableSize = this.mBuffer.getReadableSize();
        editEncodedSize(readableSize);
        this.mBuffer.rewindRead();
        compactSizes(readableSize);
        int i2 = this.mCopyBegin;
        if (i2 < readableSize) {
            this.mBuffer.writeFromThisBuffer(i2, readableSize - i2);
        }
        this.mBuffer.startEditing();
        this.mCompacted = true;
    }

    private void compactSizes(int i2) {
        int readPos = this.mBuffer.getReadPos() + i2;
        while (true) {
            int readPos2 = this.mBuffer.getReadPos();
            if (readPos2 >= readPos) {
                return;
            }
            int rawTag = readRawTag();
            int i3 = rawTag & 7;
            if (i3 == 0) {
                while ((this.mBuffer.readRawByte() & 128) != 0) {
                }
            } else if (i3 == 1) {
                this.mBuffer.skipRead(8);
            } else if (i3 == 2) {
                EncodedBuffer encodedBuffer = this.mBuffer;
                encodedBuffer.writeFromThisBuffer(this.mCopyBegin, encodedBuffer.getReadPos() - this.mCopyBegin);
                int rawFixed32 = this.mBuffer.readRawFixed32();
                int rawFixed33 = this.mBuffer.readRawFixed32();
                this.mBuffer.writeRawVarint32(rawFixed33);
                this.mCopyBegin = this.mBuffer.getReadPos();
                if (rawFixed32 >= 0) {
                    this.mBuffer.skipRead(rawFixed33);
                } else {
                    compactSizes(-rawFixed32);
                }
            } else {
                if (i3 == 3 || i3 == 4) {
                    throw new RuntimeException(c.d("groups not supported at index ", readPos2));
                }
                if (i3 != 5) {
                    throw new ProtoParseException("compactSizes Bad tag tag=0x" + Integer.toHexString(rawTag) + " wireType=" + i3 + " -- " + this.mBuffer.getDebugString());
                }
                this.mBuffer.skipRead(4);
            }
        }
    }

    public static int convertObjectIdToOrdinal(int i2) {
        return EventLogTags.SYSUI_VIEW_VISIBILITY - i2;
    }

    private int editEncodedSize(int i2) {
        int readPos = this.mBuffer.getReadPos() + i2;
        int rawVarint32Size = 0;
        while (true) {
            int readPos2 = this.mBuffer.getReadPos();
            if (readPos2 >= readPos) {
                return rawVarint32Size;
            }
            int rawTag = readRawTag();
            int rawVarint32Size2 = EncodedBuffer.getRawVarint32Size(rawTag) + rawVarint32Size;
            int i3 = rawTag & 7;
            if (i3 == 0) {
                do {
                    rawVarint32Size2++;
                } while ((this.mBuffer.readRawByte() & 128) != 0);
            } else if (i3 == 1) {
                rawVarint32Size2 += 8;
                this.mBuffer.skipRead(8);
            } else if (i3 == 2) {
                int rawFixed32 = this.mBuffer.readRawFixed32();
                int readPos3 = this.mBuffer.getReadPos();
                int rawFixed33 = this.mBuffer.readRawFixed32();
                if (rawFixed32 < 0) {
                    rawFixed33 = editEncodedSize(-rawFixed32);
                    this.mBuffer.editRawFixed32(readPos3, rawFixed33);
                } else {
                    if (rawFixed33 != rawFixed32) {
                        StringBuilder sbT = c.t("Pre-computed size where the precomputed size and the raw size in the buffer don't match! childRawSize=", rawFixed32, " childEncodedSize=", rawFixed33, " childEncodedSizePos=");
                        sbT.append(readPos3);
                        throw new RuntimeException(sbT.toString());
                    }
                    this.mBuffer.skipRead(rawFixed32);
                }
                rawVarint32Size = EncodedBuffer.getRawVarint32Size(rawFixed33) + rawFixed33 + rawVarint32Size2;
            } else {
                if (i3 == 3 || i3 == 4) {
                    throw new RuntimeException(c.d("groups not supported at index ", readPos2));
                }
                if (i3 != 5) {
                    throw new ProtoParseException("editEncodedSize Bad tag tag=0x" + Integer.toHexString(rawTag) + " wireType=" + i3 + " -- " + this.mBuffer.getDebugString());
                }
                rawVarint32Size2 += 4;
                this.mBuffer.skipRead(4);
            }
            rawVarint32Size = rawVarint32Size2;
        }
    }

    private void endObjectImpl(long j2, boolean z2) {
        int depthFromToken = getDepthFromToken(j2);
        boolean repeatedFromToken = getRepeatedFromToken(j2);
        int sizePosFromToken = getSizePosFromToken(j2);
        int writePos = (this.mBuffer.getWritePos() - sizePosFromToken) - 8;
        if (z2 != repeatedFromToken) {
            if (!z2) {
                throw new IllegalArgumentException("endObject called where endRepeatedObject should have been");
            }
            throw new IllegalArgumentException("endRepeatedObject called where endObject should have been");
        }
        if ((this.mDepth & 511) != depthFromToken || this.mExpectedObjectToken != j2) {
            throw new IllegalArgumentException("Mismatched startObject/endObject calls. Current depth " + this.mDepth + " token=" + token2String(j2) + " expectedToken=" + token2String(this.mExpectedObjectToken));
        }
        int i2 = sizePosFromToken + 4;
        this.mExpectedObjectToken = (((long) this.mBuffer.getRawFixed32At(sizePosFromToken)) << 32) | (((long) this.mBuffer.getRawFixed32At(i2)) & 4294967295L);
        this.mDepth--;
        if (writePos > 0) {
            this.mBuffer.editRawFixed32(sizePosFromToken, -writePos);
            this.mBuffer.editRawFixed32(i2, -1);
        } else if (!z2) {
            this.mBuffer.rewindWriteTo(sizePosFromToken - getTagSizeFromToken(j2));
        } else {
            this.mBuffer.editRawFixed32(sizePosFromToken, 0);
            this.mBuffer.editRawFixed32(i2, 0);
        }
    }

    public static int getDepthFromToken(long j2) {
        return (int) ((j2 >> 51) & 511);
    }

    private static String getFieldCountString(long j2) {
        if (j2 == 1099511627776L) {
            return "";
        }
        if (j2 == FIELD_COUNT_REPEATED) {
            return "Repeated";
        }
        if (j2 == FIELD_COUNT_PACKED) {
            return "Packed";
        }
        return null;
    }

    private String getFieldIdString(long j2) {
        long j3 = FIELD_COUNT_MASK & j2;
        getFieldCountString(j3);
        long j4 = FIELD_TYPE_MASK & j2;
        String fieldTypeString = getFieldTypeString(j4);
        if (fieldTypeString == null) {
            fieldTypeString = c.f("fieldType=", j4);
        }
        return j3 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + fieldTypeString + " tag=" + ((int) j2) + " fieldId=0x" + Long.toHexString(j2);
    }

    private static String getFieldTypeString(long j2) {
        int i2 = ((int) ((j2 & FIELD_TYPE_MASK) >>> 32)) - 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = FIELD_TYPE_NAMES;
        if (i2 < strArr.length) {
            return strArr[i2];
        }
        return null;
    }

    public static int getObjectIdFromToken(long j2) {
        return (int) ((j2 >> 32) & 524287);
    }

    public static boolean getRepeatedFromToken(long j2) {
        return ((j2 >> 60) & 1) != 0;
    }

    public static int getSizePosFromToken(long j2) {
        return (int) j2;
    }

    private static int getTagSize(int i2) {
        return EncodedBuffer.getRawVarint32Size(i2 << 3);
    }

    public static int getTagSizeFromToken(long j2) {
        return (int) ((j2 >> 61) & 7);
    }

    public static long makeFieldId(int i2, long j2) {
        return j2 | (((long) i2) & 4294967295L);
    }

    public static long makeToken(int i2, boolean z2, int i3, int i4, int i5) {
        return (z2 ? 1152921504606846976L : 0L) | ((7 & ((long) i2)) << 61) | ((511 & ((long) i3)) << 51) | ((((long) i4) & 524287) << 32) | (4294967295L & ((long) i5));
    }

    private int readRawTag() {
        if (this.mBuffer.getReadPos() == this.mBuffer.getReadableSize()) {
            return 0;
        }
        return (int) this.mBuffer.readRawUnsigned();
    }

    private long startObjectImpl(int i2, boolean z2) {
        writeTag(i2, 2);
        int writePos = this.mBuffer.getWritePos();
        this.mDepth++;
        this.mNextObjectId--;
        this.mBuffer.writeRawFixed32((int) (this.mExpectedObjectToken >> 32));
        this.mBuffer.writeRawFixed32((int) this.mExpectedObjectToken);
        long jMakeToken = makeToken(getTagSize(i2), z2, this.mDepth, this.mNextObjectId, writePos);
        this.mExpectedObjectToken = jMakeToken;
        return jMakeToken;
    }

    public static String token2String(long j2) {
        if (j2 == 0) {
            return "Token(0)";
        }
        return "Token(val=0x" + Long.toHexString(j2) + " depth=" + getDepthFromToken(j2) + " object=" + convertObjectIdToOrdinal(getObjectIdFromToken(j2)) + " tagSize=" + getTagSizeFromToken(j2) + " sizePos=" + getSizePosFromToken(j2) + ')';
    }

    private void writeBoolImpl(int i2, boolean z2) {
        if (z2) {
            writeTag(i2, 0);
            this.mBuffer.writeRawByte((byte) 1);
        }
    }

    private void writeBytesImpl(int i2, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        writeKnownLengthHeader(i2, bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    private void writeDoubleImpl(int i2, double d2) {
        if (d2 != 0.0d) {
            writeTag(i2, 1);
            this.mBuffer.writeRawFixed64(Double.doubleToLongBits(d2));
        }
    }

    private void writeEnumImpl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 0);
            writeUnsignedVarintFromSignedInt(i3);
        }
    }

    private void writeFixed32Impl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 5);
            this.mBuffer.writeRawFixed32(i3);
        }
    }

    private void writeFixed64Impl(int i2, long j2) {
        if (j2 != 0) {
            writeTag(i2, 1);
            this.mBuffer.writeRawFixed64(j2);
        }
    }

    private void writeFloatImpl(int i2, float f2) {
        if (f2 != 0.0f) {
            writeTag(i2, 5);
            this.mBuffer.writeRawFixed32(Float.floatToIntBits(f2));
        }
    }

    private void writeInt32Impl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 0);
            writeUnsignedVarintFromSignedInt(i3);
        }
    }

    private void writeInt64Impl(int i2, long j2) {
        if (j2 != 0) {
            writeTag(i2, 0);
            this.mBuffer.writeRawVarint64(j2);
        }
    }

    private void writeKnownLengthHeader(int i2, int i3) {
        writeTag(i2, 2);
        this.mBuffer.writeRawFixed32(i3);
        this.mBuffer.writeRawFixed32(i3);
    }

    private void writeRepeatedBoolImpl(int i2, boolean z2) {
        writeTag(i2, 0);
        this.mBuffer.writeRawByte(z2 ? (byte) 1 : (byte) 0);
    }

    private void writeRepeatedBytesImpl(int i2, byte[] bArr) {
        writeKnownLengthHeader(i2, bArr == null ? 0 : bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    private void writeRepeatedDoubleImpl(int i2, double d2) {
        writeTag(i2, 1);
        this.mBuffer.writeRawFixed64(Double.doubleToLongBits(d2));
    }

    private void writeRepeatedEnumImpl(int i2, int i3) {
        writeTag(i2, 0);
        writeUnsignedVarintFromSignedInt(i3);
    }

    private void writeRepeatedFixed32Impl(int i2, int i3) {
        writeTag(i2, 5);
        this.mBuffer.writeRawFixed32(i3);
    }

    private void writeRepeatedFixed64Impl(int i2, long j2) {
        writeTag(i2, 1);
        this.mBuffer.writeRawFixed64(j2);
    }

    private void writeRepeatedFloatImpl(int i2, float f2) {
        writeTag(i2, 5);
        this.mBuffer.writeRawFixed32(Float.floatToIntBits(f2));
    }

    private void writeRepeatedInt32Impl(int i2, int i3) {
        writeTag(i2, 0);
        writeUnsignedVarintFromSignedInt(i3);
    }

    private void writeRepeatedInt64Impl(int i2, long j2) {
        writeTag(i2, 0);
        this.mBuffer.writeRawVarint64(j2);
    }

    private void writeRepeatedSFixed32Impl(int i2, int i3) {
        writeTag(i2, 5);
        this.mBuffer.writeRawFixed32(i3);
    }

    private void writeRepeatedSFixed64Impl(int i2, long j2) {
        writeTag(i2, 1);
        this.mBuffer.writeRawFixed64(j2);
    }

    private void writeRepeatedSInt32Impl(int i2, int i3) {
        writeTag(i2, 0);
        this.mBuffer.writeRawZigZag32(i3);
    }

    private void writeRepeatedSInt64Impl(int i2, long j2) {
        writeTag(i2, 0);
        this.mBuffer.writeRawZigZag64(j2);
    }

    private void writeRepeatedStringImpl(int i2, String str) {
        if (str == null || str.length() == 0) {
            writeKnownLengthHeader(i2, 0);
        } else {
            writeUtf8String(i2, str);
        }
    }

    private void writeRepeatedUInt32Impl(int i2, int i3) {
        writeTag(i2, 0);
        this.mBuffer.writeRawVarint32(i3);
    }

    private void writeRepeatedUInt64Impl(int i2, long j2) {
        writeTag(i2, 0);
        this.mBuffer.writeRawVarint64(j2);
    }

    private void writeSFixed32Impl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 5);
            this.mBuffer.writeRawFixed32(i3);
        }
    }

    private void writeSFixed64Impl(int i2, long j2) {
        if (j2 != 0) {
            writeTag(i2, 1);
            this.mBuffer.writeRawFixed64(j2);
        }
    }

    private void writeSInt32Impl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 0);
            this.mBuffer.writeRawZigZag32(i3);
        }
    }

    private void writeSInt64Impl(int i2, long j2) {
        if (j2 != 0) {
            writeTag(i2, 0);
            this.mBuffer.writeRawZigZag64(j2);
        }
    }

    private void writeStringImpl(int i2, String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        writeUtf8String(i2, str);
    }

    private void writeUInt32Impl(int i2, int i3) {
        if (i3 != 0) {
            writeTag(i2, 0);
            this.mBuffer.writeRawVarint32(i3);
        }
    }

    private void writeUInt64Impl(int i2, long j2) {
        if (j2 != 0) {
            writeTag(i2, 0);
            this.mBuffer.writeRawVarint64(j2);
        }
    }

    private void writeUnsignedVarintFromSignedInt(int i2) {
        if (i2 >= 0) {
            this.mBuffer.writeRawVarint32(i2);
        } else {
            this.mBuffer.writeRawVarint64(i2);
        }
    }

    private void writeUtf8String(int i2, String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            writeKnownLengthHeader(i2, bytes.length);
            this.mBuffer.writeRawBuffer(bytes);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("not possible");
        }
    }

    public void dump(String str) {
        Log.d(str, this.mBuffer.getDebugString());
        this.mBuffer.dumpBuffers(str);
    }

    public void end(long j2) {
        endObjectImpl(j2, getRepeatedFromToken(j2));
    }

    @Deprecated
    public void endObject(long j2) {
        assertNotCompacted();
        endObjectImpl(j2, false);
    }

    @Deprecated
    public void endRepeatedObject(long j2) {
        assertNotCompacted();
        endObjectImpl(j2, true);
    }

    public void flush() {
        if (this.mStream == null || this.mDepth != 0 || this.mCompacted) {
            return;
        }
        compactIfNecessary();
        EncodedBuffer encodedBuffer = this.mBuffer;
        try {
            this.mStream.write(encodedBuffer.getBytes(encodedBuffer.getReadableSize()));
            this.mStream.flush();
        } catch (IOException e2) {
            throw new RuntimeException("Error flushing proto to stream", e2);
        }
    }

    public byte[] getBytes() {
        compactIfNecessary();
        EncodedBuffer encodedBuffer = this.mBuffer;
        return encodedBuffer.getBytes(encodedBuffer.getReadableSize());
    }

    public long start(long j2) {
        assertNotCompacted();
        int i2 = (int) j2;
        if ((FIELD_TYPE_MASK & j2) == FIELD_TYPE_OBJECT) {
            long j3 = FIELD_COUNT_MASK & j2;
            if (j3 == 1099511627776L) {
                return startObjectImpl(i2, false);
            }
            if (j3 == FIELD_COUNT_REPEATED || j3 == FIELD_COUNT_PACKED) {
                return startObjectImpl(i2, true);
            }
        }
        throw new IllegalArgumentException("Attempt to call start(long) with " + getFieldIdString(j2));
    }

    @Deprecated
    public long startObject(long j2) {
        assertNotCompacted();
        return startObjectImpl(checkFieldId(j2, 1172526071808L), false);
    }

    @Deprecated
    public long startRepeatedObject(long j2) {
        assertNotCompacted();
        return startObjectImpl(checkFieldId(j2, 2272037699584L), true);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:20:0x0050  */
    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:25:0x006e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0074  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x0085  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    public void write(long j2, double d2) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 272) {
            writeEnumImpl(i2, (int) d2);
            return;
        }
        if (i3 == 528 || i3 == 1296) {
            writeRepeatedEnumImpl(i2, (int) d2);
            return;
        }
        switch (i3) {
            case 257:
                writeDoubleImpl(i2, d2);
                return;
            case 258:
                writeFloatImpl(i2, (float) d2);
                return;
            case 259:
                writeInt32Impl(i2, (int) d2);
                return;
            case 260:
                writeInt64Impl(i2, (long) d2);
                return;
            case 261:
                writeUInt32Impl(i2, (int) d2);
                return;
            case 262:
                writeUInt64Impl(i2, (long) d2);
                return;
            case 263:
                writeSInt32Impl(i2, (int) d2);
                return;
            case 264:
                writeSInt64Impl(i2, (long) d2);
                return;
            case 265:
                writeFixed32Impl(i2, (int) d2);
                return;
            case 266:
                writeFixed64Impl(i2, (long) d2);
                return;
            case 267:
                writeSFixed32Impl(i2, (int) d2);
                return;
            case 268:
                writeSFixed64Impl(i2, (long) d2);
                return;
            case 269:
                writeBoolImpl(i2, d2 != 0.0d);
                return;
            default:
                switch (i3) {
                    case 513:
                        writeRepeatedDoubleImpl(i2, d2);
                        return;
                    case 514:
                        writeRepeatedFloatImpl(i2, (float) d2);
                        return;
                    case 515:
                        writeRepeatedInt32Impl(i2, (int) d2);
                        return;
                    case 516:
                        writeRepeatedInt64Impl(i2, (long) d2);
                        return;
                    case 517:
                        writeRepeatedUInt32Impl(i2, (int) d2);
                        return;
                    case 518:
                        writeRepeatedUInt64Impl(i2, (long) d2);
                        return;
                    case 519:
                        writeRepeatedSInt32Impl(i2, (int) d2);
                        return;
                    case 520:
                        writeRepeatedSInt64Impl(i2, (long) d2);
                        return;
                    case 521:
                        writeRepeatedFixed32Impl(i2, (int) d2);
                        return;
                    case 522:
                        writeRepeatedFixed64Impl(i2, (long) d2);
                        return;
                    case 523:
                        writeRepeatedSFixed32Impl(i2, (int) d2);
                        return;
                    case 524:
                        writeRepeatedSFixed64Impl(i2, (long) d2);
                        return;
                    case 525:
                        writeRepeatedBoolImpl(i2, d2 != 0.0d);
                        return;
                    default:
                        switch (i3) {
                            case 1281:
                                writeRepeatedDoubleImpl(i2, d2);
                                return;
                            case 1282:
                                writeRepeatedFloatImpl(i2, (float) d2);
                                return;
                            case 1283:
                                writeRepeatedInt32Impl(i2, (int) d2);
                                return;
                            case 1284:
                                writeRepeatedInt64Impl(i2, (long) d2);
                                return;
                            case 1285:
                                writeRepeatedUInt32Impl(i2, (int) d2);
                                return;
                            case 1286:
                                writeRepeatedUInt64Impl(i2, (long) d2);
                                return;
                            case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                writeRepeatedSInt32Impl(i2, (int) d2);
                                return;
                            case 1288:
                                writeRepeatedSInt64Impl(i2, (long) d2);
                                return;
                            case 1289:
                                writeRepeatedFixed32Impl(i2, (int) d2);
                                return;
                            case 1290:
                                writeRepeatedFixed64Impl(i2, (long) d2);
                                return;
                            case 1291:
                                writeRepeatedSFixed32Impl(i2, (int) d2);
                                return;
                            case 1292:
                                writeRepeatedSFixed64Impl(i2, (long) d2);
                                return;
                            case 1293:
                                writeRepeatedBoolImpl(i2, d2 != 0.0d);
                                return;
                            default:
                                throw new IllegalArgumentException("Attempt to call write(long, double) with " + getFieldIdString(j2));
                        }
                }
        }
    }

    @Deprecated
    public void writeBool(long j2, boolean z2) {
        assertNotCompacted();
        writeBoolImpl(checkFieldId(j2, 1155346202624L), z2);
    }

    @Deprecated
    public void writeBytes(long j2, byte[] bArr) {
        assertNotCompacted();
        writeBytesImpl(checkFieldId(j2, 1163936137216L), bArr);
    }

    @Deprecated
    public void writeDouble(long j2, double d2) {
        assertNotCompacted();
        writeDoubleImpl(checkFieldId(j2, 1103806595072L), d2);
    }

    @Deprecated
    public void writeEnum(long j2, int i2) {
        assertNotCompacted();
        writeEnumImpl(checkFieldId(j2, 1168231104512L), i2);
    }

    @Deprecated
    public void writeFixed32(long j2, int i2) {
        assertNotCompacted();
        writeFixed32Impl(checkFieldId(j2, 1138166333440L), i2);
    }

    @Deprecated
    public void writeFixed64(long j2, long j3) {
        assertNotCompacted();
        writeFixed64Impl(checkFieldId(j2, 1142461300736L), j3);
    }

    @Deprecated
    public void writeFloat(long j2, float f2) {
        assertNotCompacted();
        writeFloatImpl(checkFieldId(j2, 1108101562368L), f2);
    }

    @Deprecated
    public void writeInt32(long j2, int i2) {
        assertNotCompacted();
        writeInt32Impl(checkFieldId(j2, 1112396529664L), i2);
    }

    @Deprecated
    public void writeInt64(long j2, long j3) {
        assertNotCompacted();
        writeInt64Impl(checkFieldId(j2, 1116691496960L), j3);
    }

    @Deprecated
    public void writeObject(long j2, byte[] bArr) {
        assertNotCompacted();
        writeObjectImpl(checkFieldId(j2, 1172526071808L), bArr);
    }

    public void writeObjectImpl(int i2, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        writeKnownLengthHeader(i2, bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    @Deprecated
    public void writePackedBool(long j2, boolean[] zArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5553392713728L);
        int length = zArr != null ? zArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawByte(zArr[i2] ? (byte) 1 : (byte) 0);
            }
        }
    }

    @Deprecated
    public void writePackedDouble(long j2, double[] dArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5501853106176L);
        int length = dArr != null ? dArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 8);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed64(Double.doubleToLongBits(dArr[i2]));
            }
        }
    }

    @Deprecated
    public void writePackedEnum(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5566277615616L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int rawVarint32Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i2];
                rawVarint32Size += i3 >= 0 ? EncodedBuffer.getRawVarint32Size(i3) : 10;
            }
            writeKnownLengthHeader(iCheckFieldId, rawVarint32Size);
            for (int i4 = 0; i4 < length; i4++) {
                writeUnsignedVarintFromSignedInt(iArr[i4]);
            }
        }
    }

    @Deprecated
    public void writePackedFixed32(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5536212844544L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 4);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed32(iArr[i2]);
            }
        }
    }

    @Deprecated
    public void writePackedFixed64(long j2, long[] jArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5540507811840L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 8);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed64(jArr[i2]);
            }
        }
    }

    @Deprecated
    public void writePackedFloat(long j2, float[] fArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5506148073472L);
        int length = fArr != null ? fArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 4);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed32(Float.floatToIntBits(fArr[i2]));
            }
        }
    }

    @Deprecated
    public void writePackedInt32(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5510443040768L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int rawVarint32Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i2];
                rawVarint32Size += i3 >= 0 ? EncodedBuffer.getRawVarint32Size(i3) : 10;
            }
            writeKnownLengthHeader(iCheckFieldId, rawVarint32Size);
            for (int i4 = 0; i4 < length; i4++) {
                writeUnsignedVarintFromSignedInt(iArr[i4]);
            }
        }
    }

    @Deprecated
    public void writePackedInt64(long j2, long[] jArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5514738008064L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int rawVarint64Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                rawVarint64Size += EncodedBuffer.getRawVarint64Size(jArr[i2]);
            }
            writeKnownLengthHeader(iCheckFieldId, rawVarint64Size);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writePackedSFixed32(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5544802779136L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 4);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed32(iArr[i2]);
            }
        }
    }

    @Deprecated
    public void writePackedSFixed64(long j2, long[] jArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5549097746432L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            writeKnownLengthHeader(iCheckFieldId, length * 8);
            for (int i2 = 0; i2 < length; i2++) {
                this.mBuffer.writeRawFixed64(jArr[i2]);
            }
        }
    }

    @Deprecated
    public void writePackedSInt32(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5527622909952L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int rawZigZag32Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                rawZigZag32Size += EncodedBuffer.getRawZigZag32Size(iArr[i2]);
            }
            writeKnownLengthHeader(iCheckFieldId, rawZigZag32Size);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawZigZag32(iArr[i3]);
            }
        }
    }

    @Deprecated
    public void writePackedSInt64(long j2, long[] jArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5531917877248L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int rawZigZag64Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                rawZigZag64Size += EncodedBuffer.getRawZigZag64Size(jArr[i2]);
            }
            writeKnownLengthHeader(iCheckFieldId, rawZigZag64Size);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawZigZag64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writePackedUInt32(long j2, int[] iArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5519032975360L);
        int length = iArr != null ? iArr.length : 0;
        if (length > 0) {
            int rawVarint32Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                rawVarint32Size += EncodedBuffer.getRawVarint32Size(iArr[i2]);
            }
            writeKnownLengthHeader(iCheckFieldId, rawVarint32Size);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint32(iArr[i3]);
            }
        }
    }

    @Deprecated
    public void writePackedUInt64(long j2, long[] jArr) {
        assertNotCompacted();
        int iCheckFieldId = checkFieldId(j2, 5523327942656L);
        int length = jArr != null ? jArr.length : 0;
        if (length > 0) {
            int rawVarint64Size = 0;
            for (int i2 = 0; i2 < length; i2++) {
                rawVarint64Size += EncodedBuffer.getRawVarint64Size(jArr[i2]);
            }
            writeKnownLengthHeader(iCheckFieldId, rawVarint64Size);
            for (int i3 = 0; i3 < length; i3++) {
                this.mBuffer.writeRawVarint64(jArr[i3]);
            }
        }
    }

    @Deprecated
    public void writeRepeatedBool(long j2, boolean z2) {
        assertNotCompacted();
        writeRepeatedBoolImpl(checkFieldId(j2, 2254857830400L), z2);
    }

    @Deprecated
    public void writeRepeatedBytes(long j2, byte[] bArr) {
        assertNotCompacted();
        writeRepeatedBytesImpl(checkFieldId(j2, 2263447764992L), bArr);
    }

    @Deprecated
    public void writeRepeatedDouble(long j2, double d2) {
        assertNotCompacted();
        writeRepeatedDoubleImpl(checkFieldId(j2, 2203318222848L), d2);
    }

    @Deprecated
    public void writeRepeatedEnum(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedEnumImpl(checkFieldId(j2, 2267742732288L), i2);
    }

    @Deprecated
    public void writeRepeatedFixed32(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedFixed32Impl(checkFieldId(j2, 2237677961216L), i2);
    }

    @Deprecated
    public void writeRepeatedFixed64(long j2, long j3) {
        assertNotCompacted();
        writeRepeatedFixed64Impl(checkFieldId(j2, 2241972928512L), j3);
    }

    @Deprecated
    public void writeRepeatedFloat(long j2, float f2) {
        assertNotCompacted();
        writeRepeatedFloatImpl(checkFieldId(j2, 2207613190144L), f2);
    }

    @Deprecated
    public void writeRepeatedInt32(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedInt32Impl(checkFieldId(j2, 2211908157440L), i2);
    }

    @Deprecated
    public void writeRepeatedInt64(long j2, long j3) {
        assertNotCompacted();
        writeRepeatedInt64Impl(checkFieldId(j2, 2216203124736L), j3);
    }

    @Deprecated
    public void writeRepeatedObject(long j2, byte[] bArr) {
        assertNotCompacted();
        writeRepeatedObjectImpl(checkFieldId(j2, 2272037699584L), bArr);
    }

    public void writeRepeatedObjectImpl(int i2, byte[] bArr) {
        writeKnownLengthHeader(i2, bArr == null ? 0 : bArr.length);
        this.mBuffer.writeRawBuffer(bArr);
    }

    @Deprecated
    public void writeRepeatedSFixed32(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedSFixed32Impl(checkFieldId(j2, 2246267895808L), i2);
    }

    @Deprecated
    public void writeRepeatedSFixed64(long j2, long j3) {
        assertNotCompacted();
        writeRepeatedSFixed64Impl(checkFieldId(j2, 2250562863104L), j3);
    }

    @Deprecated
    public void writeRepeatedSInt32(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedSInt32Impl(checkFieldId(j2, 2229088026624L), i2);
    }

    @Deprecated
    public void writeRepeatedSInt64(long j2, long j3) {
        assertNotCompacted();
        writeRepeatedSInt64Impl(checkFieldId(j2, 2233382993920L), j3);
    }

    @Deprecated
    public void writeRepeatedString(long j2, String str) {
        assertNotCompacted();
        writeRepeatedStringImpl(checkFieldId(j2, 2259152797696L), str);
    }

    @Deprecated
    public void writeRepeatedUInt32(long j2, int i2) {
        assertNotCompacted();
        writeRepeatedUInt32Impl(checkFieldId(j2, 2220498092032L), i2);
    }

    @Deprecated
    public void writeRepeatedUInt64(long j2, long j3) {
        assertNotCompacted();
        writeRepeatedUInt64Impl(checkFieldId(j2, 2224793059328L), j3);
    }

    @Deprecated
    public void writeSFixed32(long j2, int i2) {
        assertNotCompacted();
        writeSFixed32Impl(checkFieldId(j2, 1146756268032L), i2);
    }

    @Deprecated
    public void writeSFixed64(long j2, long j3) {
        assertNotCompacted();
        writeSFixed64Impl(checkFieldId(j2, 1151051235328L), j3);
    }

    @Deprecated
    public void writeSInt32(long j2, int i2) {
        assertNotCompacted();
        writeSInt32Impl(checkFieldId(j2, 1129576398848L), i2);
    }

    @Deprecated
    public void writeSInt64(long j2, long j3) {
        assertNotCompacted();
        writeSInt64Impl(checkFieldId(j2, 1133871366144L), j3);
    }

    @Deprecated
    public void writeString(long j2, String str) {
        assertNotCompacted();
        writeStringImpl(checkFieldId(j2, 1159641169920L), str);
    }

    public void writeTag(int i2, int i3) {
        this.mBuffer.writeRawVarint32((i2 << 3) | i3);
    }

    @Deprecated
    public void writeUInt32(long j2, int i2) {
        assertNotCompacted();
        writeUInt32Impl(checkFieldId(j2, 1120986464256L), i2);
    }

    @Deprecated
    public void writeUInt64(long j2, long j3) {
        assertNotCompacted();
        writeUInt64Impl(checkFieldId(j2, 1125281431552L), j3);
    }

    public ProtoOutputStream(int i2) {
        this.mNextObjectId = -1;
        this.mBuffer = new EncodedBuffer(i2);
    }

    public ProtoOutputStream(OutputStream outputStream) {
        this();
        this.mStream = outputStream;
    }

    public ProtoOutputStream(FileDescriptor fileDescriptor) {
        this(new FileOutputStream(fileDescriptor));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    /* JADX WARN: Code duplicated, block: B:19:0x0049  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0073  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0084  */
    /* JADX WARN: Code duplicated, block: B:30:0x0088  */
    public void write(long j2, float f2) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 272) {
            writeEnumImpl(i2, (int) f2);
            return;
        }
        if (i3 != 528 && i3 != 1296) {
            switch (i3) {
                case 257:
                    writeDoubleImpl(i2, f2);
                    return;
                case 258:
                    writeFloatImpl(i2, f2);
                    return;
                case 259:
                    writeInt32Impl(i2, (int) f2);
                    return;
                case 260:
                    writeInt64Impl(i2, (long) f2);
                    return;
                case 261:
                    writeUInt32Impl(i2, (int) f2);
                    return;
                case 262:
                    writeUInt64Impl(i2, (long) f2);
                    return;
                case 263:
                    writeSInt32Impl(i2, (int) f2);
                    return;
                case 264:
                    writeSInt64Impl(i2, (long) f2);
                    return;
                case 265:
                    writeFixed32Impl(i2, (int) f2);
                    return;
                case 266:
                    writeFixed64Impl(i2, (long) f2);
                    return;
                case 267:
                    writeSFixed32Impl(i2, (int) f2);
                    return;
                case 268:
                    writeSFixed64Impl(i2, (long) f2);
                    return;
                case 269:
                    writeBoolImpl(i2, f2 != 0.0f);
                    return;
                default:
                    switch (i3) {
                        case 513:
                            writeRepeatedDoubleImpl(i2, f2);
                            return;
                        case 514:
                            writeRepeatedFloatImpl(i2, f2);
                            return;
                        case 515:
                            writeRepeatedInt32Impl(i2, (int) f2);
                            return;
                        case 516:
                            writeRepeatedInt64Impl(i2, (long) f2);
                            return;
                        case 517:
                            writeRepeatedUInt32Impl(i2, (int) f2);
                            return;
                        case 518:
                            writeRepeatedUInt64Impl(i2, (long) f2);
                            return;
                        case 519:
                            writeRepeatedSInt32Impl(i2, (int) f2);
                            return;
                        case 520:
                            writeRepeatedSInt64Impl(i2, (long) f2);
                            return;
                        case 521:
                            writeRepeatedFixed32Impl(i2, (int) f2);
                            return;
                        case 522:
                            writeRepeatedFixed64Impl(i2, (long) f2);
                            return;
                        case 523:
                            writeRepeatedSFixed32Impl(i2, (int) f2);
                            return;
                        case 524:
                            writeRepeatedSFixed64Impl(i2, (long) f2);
                            return;
                        case 525:
                            writeRepeatedBoolImpl(i2, f2 != 0.0f);
                            return;
                        default:
                            switch (i3) {
                                case 1281:
                                    writeRepeatedDoubleImpl(i2, f2);
                                    return;
                                case 1282:
                                    writeRepeatedFloatImpl(i2, f2);
                                    return;
                                case 1283:
                                    writeRepeatedInt32Impl(i2, (int) f2);
                                    return;
                                case 1284:
                                    writeRepeatedInt64Impl(i2, (long) f2);
                                    return;
                                case 1285:
                                    writeRepeatedUInt32Impl(i2, (int) f2);
                                    return;
                                case 1286:
                                    writeRepeatedUInt64Impl(i2, (long) f2);
                                    return;
                                case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                    writeRepeatedSInt32Impl(i2, (int) f2);
                                    return;
                                case 1288:
                                    writeRepeatedSInt64Impl(i2, (long) f2);
                                    return;
                                case 1289:
                                    writeRepeatedFixed32Impl(i2, (int) f2);
                                    return;
                                case 1290:
                                    writeRepeatedFixed64Impl(i2, (long) f2);
                                    return;
                                case 1291:
                                    writeRepeatedSFixed32Impl(i2, (int) f2);
                                    return;
                                case 1292:
                                    writeRepeatedSFixed64Impl(i2, (long) f2);
                                    return;
                                case 1293:
                                    writeRepeatedBoolImpl(i2, f2 != 0.0f);
                                    return;
                                default:
                                    throw new IllegalArgumentException("Attempt to call write(long, float) with " + getFieldIdString(j2));
                            }
                    }
            }
        }
        writeRepeatedEnumImpl(i2, (int) f2);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    /* JADX WARN: Code duplicated, block: B:18:0x0046  */
    /* JADX WARN: Code duplicated, block: B:19:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:21:0x0057  */
    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0072  */
    /* JADX WARN: Code duplicated, block: B:27:0x0077  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    public void write(long j2, int i2) {
        assertNotCompacted();
        int i3 = (int) j2;
        int i4 = (int) ((17587891077120L & j2) >> 32);
        if (i4 == 272) {
            writeEnumImpl(i3, i2);
            return;
        }
        if (i4 != 528 && i4 != 1296) {
            switch (i4) {
                case 257:
                    writeDoubleImpl(i3, i2);
                    return;
                case 258:
                    writeFloatImpl(i3, i2);
                    return;
                case 259:
                    writeInt32Impl(i3, i2);
                    return;
                case 260:
                    writeInt64Impl(i3, i2);
                    return;
                case 261:
                    writeUInt32Impl(i3, i2);
                    return;
                case 262:
                    writeUInt64Impl(i3, i2);
                    return;
                case 263:
                    writeSInt32Impl(i3, i2);
                    return;
                case 264:
                    writeSInt64Impl(i3, i2);
                    return;
                case 265:
                    writeFixed32Impl(i3, i2);
                    return;
                case 266:
                    writeFixed64Impl(i3, i2);
                    return;
                case 267:
                    writeSFixed32Impl(i3, i2);
                    return;
                case 268:
                    writeSFixed64Impl(i3, i2);
                    return;
                case 269:
                    writeBoolImpl(i3, i2 != 0);
                    return;
                default:
                    switch (i4) {
                        case 513:
                            writeRepeatedDoubleImpl(i3, i2);
                            return;
                        case 514:
                            writeRepeatedFloatImpl(i3, i2);
                            return;
                        case 515:
                            writeRepeatedInt32Impl(i3, i2);
                            return;
                        case 516:
                            writeRepeatedInt64Impl(i3, i2);
                            return;
                        case 517:
                            writeRepeatedUInt32Impl(i3, i2);
                            return;
                        case 518:
                            writeRepeatedUInt64Impl(i3, i2);
                            return;
                        case 519:
                            writeRepeatedSInt32Impl(i3, i2);
                            return;
                        case 520:
                            writeRepeatedSInt64Impl(i3, i2);
                            return;
                        case 521:
                            writeRepeatedFixed32Impl(i3, i2);
                            return;
                        case 522:
                            writeRepeatedFixed64Impl(i3, i2);
                            return;
                        case 523:
                            writeRepeatedSFixed32Impl(i3, i2);
                            return;
                        case 524:
                            writeRepeatedSFixed64Impl(i3, i2);
                            return;
                        case 525:
                            writeRepeatedBoolImpl(i3, i2 != 0);
                            return;
                        default:
                            switch (i4) {
                                case 1281:
                                    writeRepeatedDoubleImpl(i3, i2);
                                    return;
                                case 1282:
                                    writeRepeatedFloatImpl(i3, i2);
                                    return;
                                case 1283:
                                    writeRepeatedInt32Impl(i3, i2);
                                    return;
                                case 1284:
                                    writeRepeatedInt64Impl(i3, i2);
                                    return;
                                case 1285:
                                    writeRepeatedUInt32Impl(i3, i2);
                                    return;
                                case 1286:
                                    writeRepeatedUInt64Impl(i3, i2);
                                    return;
                                case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                    writeRepeatedSInt32Impl(i3, i2);
                                    return;
                                case 1288:
                                    writeRepeatedSInt64Impl(i3, i2);
                                    return;
                                case 1289:
                                    writeRepeatedFixed32Impl(i3, i2);
                                    return;
                                case 1290:
                                    writeRepeatedFixed64Impl(i3, i2);
                                    return;
                                case 1291:
                                    writeRepeatedSFixed32Impl(i3, i2);
                                    return;
                                case 1292:
                                    writeRepeatedSFixed64Impl(i3, i2);
                                    return;
                                case 1293:
                                    writeRepeatedBoolImpl(i3, i2 != 0);
                                    return;
                                default:
                                    throw new IllegalArgumentException("Attempt to call write(long, int) with " + getFieldIdString(j2));
                            }
                    }
            }
        }
        writeRepeatedEnumImpl(i3, i2);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:22:0x005a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0070  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    public void write(long j2, long j3) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 272) {
            writeEnumImpl(i2, (int) j3);
            return;
        }
        if (i3 != 528 && i3 != 1296) {
            switch (i3) {
                case 257:
                    writeDoubleImpl(i2, j3);
                    return;
                case 258:
                    writeFloatImpl(i2, j3);
                    return;
                case 259:
                    writeInt32Impl(i2, (int) j3);
                    return;
                case 260:
                    writeInt64Impl(i2, j3);
                    return;
                case 261:
                    writeUInt32Impl(i2, (int) j3);
                    return;
                case 262:
                    writeUInt64Impl(i2, j3);
                    return;
                case 263:
                    writeSInt32Impl(i2, (int) j3);
                    return;
                case 264:
                    writeSInt64Impl(i2, j3);
                    return;
                case 265:
                    writeFixed32Impl(i2, (int) j3);
                    return;
                case 266:
                    writeFixed64Impl(i2, j3);
                    return;
                case 267:
                    writeSFixed32Impl(i2, (int) j3);
                    return;
                case 268:
                    writeSFixed64Impl(i2, j3);
                    return;
                case 269:
                    writeBoolImpl(i2, j3 != 0);
                    return;
                default:
                    switch (i3) {
                        case 513:
                            writeRepeatedDoubleImpl(i2, j3);
                            return;
                        case 514:
                            writeRepeatedFloatImpl(i2, j3);
                            return;
                        case 515:
                            writeRepeatedInt32Impl(i2, (int) j3);
                            return;
                        case 516:
                            writeRepeatedInt64Impl(i2, j3);
                            return;
                        case 517:
                            writeRepeatedUInt32Impl(i2, (int) j3);
                            return;
                        case 518:
                            writeRepeatedUInt64Impl(i2, j3);
                            return;
                        case 519:
                            writeRepeatedSInt32Impl(i2, (int) j3);
                            return;
                        case 520:
                            writeRepeatedSInt64Impl(i2, j3);
                            return;
                        case 521:
                            writeRepeatedFixed32Impl(i2, (int) j3);
                            return;
                        case 522:
                            writeRepeatedFixed64Impl(i2, j3);
                            return;
                        case 523:
                            writeRepeatedSFixed32Impl(i2, (int) j3);
                            return;
                        case 524:
                            writeRepeatedSFixed64Impl(i2, j3);
                            return;
                        case 525:
                            writeRepeatedBoolImpl(i2, j3 != 0);
                            return;
                        default:
                            switch (i3) {
                                case 1281:
                                    writeRepeatedDoubleImpl(i2, j3);
                                    return;
                                case 1282:
                                    writeRepeatedFloatImpl(i2, j3);
                                    return;
                                case 1283:
                                    writeRepeatedInt32Impl(i2, (int) j3);
                                    return;
                                case 1284:
                                    writeRepeatedInt64Impl(i2, j3);
                                    return;
                                case 1285:
                                    writeRepeatedUInt32Impl(i2, (int) j3);
                                    return;
                                case 1286:
                                    writeRepeatedUInt64Impl(i2, j3);
                                    return;
                                case GLES32.GL_CONTEXT_LOST /* 1287 */:
                                    writeRepeatedSInt32Impl(i2, (int) j3);
                                    return;
                                case 1288:
                                    writeRepeatedSInt64Impl(i2, j3);
                                    return;
                                case 1289:
                                    writeRepeatedFixed32Impl(i2, (int) j3);
                                    return;
                                case 1290:
                                    writeRepeatedFixed64Impl(i2, j3);
                                    return;
                                case 1291:
                                    writeRepeatedSFixed32Impl(i2, (int) j3);
                                    return;
                                case 1292:
                                    writeRepeatedSFixed64Impl(i2, j3);
                                    return;
                                case 1293:
                                    writeRepeatedBoolImpl(i2, j3 != 0);
                                    return;
                                default:
                                    throw new IllegalArgumentException("Attempt to call write(long, long) with " + getFieldIdString(j2));
                            }
                    }
            }
        }
        writeRepeatedEnumImpl(i2, (int) j3);
    }

    public void write(long j2, boolean z2) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 269) {
            writeBoolImpl(i2, z2);
        } else {
            if (i3 != 525 && i3 != 1293) {
                throw new IllegalArgumentException("Attempt to call write(long, boolean) with " + getFieldIdString(j2));
            }
            writeRepeatedBoolImpl(i2, z2);
        }
    }

    public void write(long j2, String str) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 270) {
            writeStringImpl(i2, str);
        } else {
            if (i3 != 526 && i3 != 1294) {
                throw new IllegalArgumentException("Attempt to call write(long, String) with " + getFieldIdString(j2));
            }
            writeRepeatedStringImpl(i2, str);
        }
    }

    public void write(long j2, byte[] bArr) {
        assertNotCompacted();
        int i2 = (int) j2;
        int i3 = (int) ((17587891077120L & j2) >> 32);
        if (i3 == 271) {
            writeBytesImpl(i2, bArr);
            return;
        }
        if (i3 != 273) {
            if (i3 != 527) {
                if (i3 != 529) {
                    if (i3 != 1295) {
                        if (i3 != 1297) {
                            throw new IllegalArgumentException("Attempt to call write(long, byte[]) with " + getFieldIdString(j2));
                        }
                    }
                }
                writeRepeatedObjectImpl(i2, bArr);
                return;
            }
            writeRepeatedBytesImpl(i2, bArr);
            return;
        }
        writeObjectImpl(i2, bArr);
    }
}
