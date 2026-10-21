package com.android.framework.protobuf.nano;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.WifiNetworkScoreCache;
import android.os.BatteryStats;
import android.util.proto.ProtoOutputStream;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes2.dex */
public final class CodedOutputByteBufferNano {
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    public static final int LITTLE_ENDIAN_64_SIZE = 8;
    private static final int MAX_UTF8_EXPANSION = 3;
    private final ByteBuffer buffer;

    public static class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException(int i2, int i3) {
            super(m.f("CodedOutputStream was writing to a flat byte array and ran out of space (pos ", i2, " limit ", i3, ")."));
        }
    }

    private CodedOutputByteBufferNano(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    public static int computeBoolSize(int i2, boolean z2) {
        return computeBoolSizeNoTag(z2) + computeTagSize(i2);
    }

    public static int computeBoolSizeNoTag(boolean z2) {
        return 1;
    }

    public static int computeBytesSize(int i2, byte[] bArr) {
        return computeBytesSizeNoTag(bArr) + computeTagSize(i2);
    }

    public static int computeBytesSizeNoTag(byte[] bArr) {
        return computeRawVarint32Size(bArr.length) + bArr.length;
    }

    public static int computeDoubleSize(int i2, double d2) {
        return computeDoubleSizeNoTag(d2) + computeTagSize(i2);
    }

    public static int computeDoubleSizeNoTag(double d2) {
        return 8;
    }

    public static int computeEnumSize(int i2, int i3) {
        return computeEnumSizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeEnumSizeNoTag(int i2) {
        return computeRawVarint32Size(i2);
    }

    public static int computeFieldSize(int i2, int i3, Object obj) {
        switch (i3) {
            case 1:
                return computeDoubleSize(i2, ((Double) obj).doubleValue());
            case 2:
                return computeFloatSize(i2, ((Float) obj).floatValue());
            case 3:
                return computeInt64Size(i2, ((Long) obj).longValue());
            case 4:
                return computeUInt64Size(i2, ((Long) obj).longValue());
            case 5:
                return computeInt32Size(i2, ((Integer) obj).intValue());
            case 6:
                return computeFixed64Size(i2, ((Long) obj).longValue());
            case 7:
                return computeFixed32Size(i2, ((Integer) obj).intValue());
            case 8:
                return computeBoolSize(i2, ((Boolean) obj).booleanValue());
            case 9:
                return computeStringSize(i2, (String) obj);
            case 10:
                return computeGroupSize(i2, (MessageNano) obj);
            case 11:
                return computeMessageSize(i2, (MessageNano) obj);
            case 12:
                return computeBytesSize(i2, (byte[]) obj);
            case 13:
                return computeUInt32Size(i2, ((Integer) obj).intValue());
            case 14:
                return computeEnumSize(i2, ((Integer) obj).intValue());
            case 15:
                return computeSFixed32Size(i2, ((Integer) obj).intValue());
            case 16:
                return computeSFixed64Size(i2, ((Long) obj).longValue());
            case 17:
                return computeSInt32Size(i2, ((Integer) obj).intValue());
            case 18:
                return computeSInt64Size(i2, ((Long) obj).longValue());
            default:
                throw new IllegalArgumentException(c.d("Unknown type: ", i3));
        }
    }

    public static int computeFixed32Size(int i2, int i3) {
        return computeFixed32SizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeFixed64Size(int i2, long j2) {
        return computeFixed64SizeNoTag(j2) + computeTagSize(i2);
    }

    public static int computeFixed64SizeNoTag(long j2) {
        return 8;
    }

    public static int computeFloatSize(int i2, float f2) {
        return computeFloatSizeNoTag(f2) + computeTagSize(i2);
    }

    public static int computeFloatSizeNoTag(float f2) {
        return 4;
    }

    public static int computeGroupSize(int i2, MessageNano messageNano) {
        return computeGroupSizeNoTag(messageNano) + (computeTagSize(i2) * 2);
    }

    public static int computeGroupSizeNoTag(MessageNano messageNano) {
        return messageNano.getSerializedSize();
    }

    public static int computeInt32Size(int i2, int i3) {
        return computeInt32SizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeInt32SizeNoTag(int i2) {
        if (i2 >= 0) {
            return computeRawVarint32Size(i2);
        }
        return 10;
    }

    public static int computeInt64Size(int i2, long j2) {
        return computeInt64SizeNoTag(j2) + computeTagSize(i2);
    }

    public static int computeInt64SizeNoTag(long j2) {
        return computeRawVarint64Size(j2);
    }

    public static int computeMessageSize(int i2, MessageNano messageNano) {
        return computeMessageSizeNoTag(messageNano) + computeTagSize(i2);
    }

    public static int computeMessageSizeNoTag(MessageNano messageNano) {
        int serializedSize = messageNano.getSerializedSize();
        return computeRawVarint32Size(serializedSize) + serializedSize;
    }

    public static int computeRawVarint32Size(int i2) {
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

    public static int computeRawVarint64Size(long j2) {
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

    public static int computeSFixed32Size(int i2, int i3) {
        return computeSFixed32SizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeSFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeSFixed64Size(int i2, long j2) {
        return computeSFixed64SizeNoTag(j2) + computeTagSize(i2);
    }

    public static int computeSFixed64SizeNoTag(long j2) {
        return 8;
    }

    public static int computeSInt32Size(int i2, int i3) {
        return computeSInt32SizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeSInt32SizeNoTag(int i2) {
        return computeRawVarint32Size(encodeZigZag32(i2));
    }

    public static int computeSInt64Size(int i2, long j2) {
        return computeSInt64SizeNoTag(j2) + computeTagSize(i2);
    }

    public static int computeSInt64SizeNoTag(long j2) {
        return computeRawVarint64Size(encodeZigZag64(j2));
    }

    public static int computeStringSize(int i2, String str) {
        return computeStringSizeNoTag(str) + computeTagSize(i2);
    }

    public static int computeStringSizeNoTag(String str) {
        int iEncodedLength = encodedLength(str);
        return computeRawVarint32Size(iEncodedLength) + iEncodedLength;
    }

    public static int computeTagSize(int i2) {
        return computeRawVarint32Size(WireFormatNano.makeTag(i2, 0));
    }

    public static int computeUInt32Size(int i2, int i3) {
        return computeUInt32SizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeUInt32SizeNoTag(int i2) {
        return computeRawVarint32Size(i2);
    }

    public static int computeUInt64Size(int i2, long j2) {
        return computeUInt64SizeNoTag(j2) + computeTagSize(i2);
    }

    public static int computeUInt64SizeNoTag(long j2) {
        return computeRawVarint64Size(j2);
    }

    private static void encode(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            encodeDirect(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(encode(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    private static void encodeDirect(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 128) {
                byteBuffer.put((byte) cCharAt);
            } else if (cCharAt < 2048) {
                byteBuffer.put((byte) ((cCharAt >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            } else {
                if (cCharAt >= 55296 && 57343 >= cCharAt) {
                    int i3 = i2 + 1;
                    if (i3 != charSequence.length()) {
                        char cCharAt2 = charSequence.charAt(i3);
                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                            int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                            i2 = i3;
                        } else {
                            i2 = i3;
                        }
                    }
                    StringBuilder sb = new StringBuilder("Unpaired surrogate at index ");
                    sb.append(i2 - 1);
                    throw new IllegalArgumentException(sb.toString());
                }
                byteBuffer.put((byte) ((cCharAt >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt & '?') | 128));
            }
            i2++;
        }
    }

    public static int encodeZigZag32(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public static long encodeZigZag64(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int iEncodedLengthGeneral = length;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt >= 2048) {
                iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i2);
                break;
            }
            iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
            i2++;
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + ProtoOutputStream.FIELD_TYPE_DOUBLE));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        int i3 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
            } else {
                i3 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i2) < 65536) {
                        throw new IllegalArgumentException(c.d("Unpaired surrogate at index ", i2));
                    }
                    i2++;
                }
            }
            i2++;
        }
        return i3;
    }

    public static CodedOutputByteBufferNano newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public int position() {
        return this.buffer.position();
    }

    public void reset() {
        this.buffer.clear();
    }

    public int spaceLeft() {
        return this.buffer.remaining();
    }

    public void writeBool(int i2, boolean z2) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeBoolNoTag(z2);
    }

    public void writeBoolNoTag(boolean z2) throws OutOfSpaceException {
        writeRawByte(z2 ? 1 : 0);
    }

    public void writeBytes(int i2, byte[] bArr) throws OutOfSpaceException {
        writeTag(i2, 2);
        writeBytesNoTag(bArr);
    }

    public void writeBytesNoTag(byte[] bArr) throws OutOfSpaceException {
        writeRawVarint32(bArr.length);
        writeRawBytes(bArr);
    }

    public void writeDouble(int i2, double d2) throws OutOfSpaceException {
        writeTag(i2, 1);
        writeDoubleNoTag(d2);
    }

    public void writeDoubleNoTag(double d2) throws OutOfSpaceException {
        writeRawLittleEndian64(Double.doubleToLongBits(d2));
    }

    public void writeEnum(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeEnumNoTag(i3);
    }

    public void writeEnumNoTag(int i2) throws OutOfSpaceException {
        writeRawVarint32(i2);
    }

    public void writeField(int i2, int i3, Object obj) throws IOException {
        switch (i3) {
            case 1:
                writeDouble(i2, ((Double) obj).doubleValue());
                return;
            case 2:
                writeFloat(i2, ((Float) obj).floatValue());
                return;
            case 3:
                writeInt64(i2, ((Long) obj).longValue());
                return;
            case 4:
                writeUInt64(i2, ((Long) obj).longValue());
                return;
            case 5:
                writeInt32(i2, ((Integer) obj).intValue());
                return;
            case 6:
                writeFixed64(i2, ((Long) obj).longValue());
                return;
            case 7:
                writeFixed32(i2, ((Integer) obj).intValue());
                return;
            case 8:
                writeBool(i2, ((Boolean) obj).booleanValue());
                return;
            case 9:
                writeString(i2, (String) obj);
                return;
            case 10:
                writeGroup(i2, (MessageNano) obj);
                return;
            case 11:
                writeMessage(i2, (MessageNano) obj);
                return;
            case 12:
                writeBytes(i2, (byte[]) obj);
                return;
            case 13:
                writeUInt32(i2, ((Integer) obj).intValue());
                return;
            case 14:
                writeEnum(i2, ((Integer) obj).intValue());
                return;
            case 15:
                writeSFixed32(i2, ((Integer) obj).intValue());
                return;
            case 16:
                writeSFixed64(i2, ((Long) obj).longValue());
                return;
            case 17:
                writeSInt32(i2, ((Integer) obj).intValue());
                return;
            case 18:
                writeSInt64(i2, ((Long) obj).longValue());
                return;
            default:
                throw new IOException(c.d("Unknown type: ", i3));
        }
    }

    public void writeFixed32(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 5);
        writeFixed32NoTag(i3);
    }

    public void writeFixed32NoTag(int i2) throws OutOfSpaceException {
        writeRawLittleEndian32(i2);
    }

    public void writeFixed64(int i2, long j2) throws OutOfSpaceException {
        writeTag(i2, 1);
        writeFixed64NoTag(j2);
    }

    public void writeFixed64NoTag(long j2) throws OutOfSpaceException {
        writeRawLittleEndian64(j2);
    }

    public void writeFloat(int i2, float f2) throws OutOfSpaceException {
        writeTag(i2, 5);
        writeFloatNoTag(f2);
    }

    public void writeFloatNoTag(float f2) throws OutOfSpaceException {
        writeRawLittleEndian32(Float.floatToIntBits(f2));
    }

    public void writeGroup(int i2, MessageNano messageNano) throws OutOfSpaceException {
        writeTag(i2, 3);
        writeGroupNoTag(messageNano);
        writeTag(i2, 4);
    }

    public void writeGroupNoTag(MessageNano messageNano) {
        messageNano.writeTo(this);
    }

    public void writeInt32(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeInt32NoTag(i3);
    }

    public void writeInt32NoTag(int i2) throws OutOfSpaceException {
        if (i2 >= 0) {
            writeRawVarint32(i2);
        } else {
            writeRawVarint64(i2);
        }
    }

    public void writeInt64(int i2, long j2) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeInt64NoTag(j2);
    }

    public void writeInt64NoTag(long j2) throws OutOfSpaceException {
        writeRawVarint64(j2);
    }

    public void writeMessage(int i2, MessageNano messageNano) throws OutOfSpaceException {
        writeTag(i2, 2);
        writeMessageNoTag(messageNano);
    }

    public void writeMessageNoTag(MessageNano messageNano) throws OutOfSpaceException {
        writeRawVarint32(messageNano.getCachedSize());
        messageNano.writeTo(this);
    }

    public void writeRawByte(byte b2) throws OutOfSpaceException {
        if (!this.buffer.hasRemaining()) {
            throw new OutOfSpaceException(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(b2);
    }

    public void writeRawBytes(byte[] bArr) throws OutOfSpaceException {
        writeRawBytes(bArr, 0, bArr.length);
    }

    public void writeRawLittleEndian32(int i2) throws OutOfSpaceException {
        if (this.buffer.remaining() < 4) {
            throw new OutOfSpaceException(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putInt(i2);
    }

    public void writeRawLittleEndian64(long j2) throws OutOfSpaceException {
        if (this.buffer.remaining() < 8) {
            throw new OutOfSpaceException(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putLong(j2);
    }

    public void writeRawVarint32(int i2) throws OutOfSpaceException {
        while ((i2 & WifiNetworkScoreCache.INVALID_NETWORK_SCORE) != 0) {
            writeRawByte((i2 & 127) | 128);
            i2 >>>= 7;
        }
        writeRawByte(i2);
    }

    public void writeRawVarint64(long j2) throws OutOfSpaceException {
        while (((-128) & j2) != 0) {
            writeRawByte((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        writeRawByte((int) j2);
    }

    public void writeSFixed32(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 5);
        writeSFixed32NoTag(i3);
    }

    public void writeSFixed32NoTag(int i2) throws OutOfSpaceException {
        writeRawLittleEndian32(i2);
    }

    public void writeSFixed64(int i2, long j2) throws OutOfSpaceException {
        writeTag(i2, 1);
        writeSFixed64NoTag(j2);
    }

    public void writeSFixed64NoTag(long j2) throws OutOfSpaceException {
        writeRawLittleEndian64(j2);
    }

    public void writeSInt32(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeSInt32NoTag(i3);
    }

    public void writeSInt32NoTag(int i2) throws OutOfSpaceException {
        writeRawVarint32(encodeZigZag32(i2));
    }

    public void writeSInt64(int i2, long j2) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeSInt64NoTag(j2);
    }

    public void writeSInt64NoTag(long j2) throws OutOfSpaceException {
        writeRawVarint64(encodeZigZag64(j2));
    }

    public void writeString(int i2, String str) throws OutOfSpaceException {
        writeTag(i2, 2);
        writeStringNoTag(str);
    }

    public void writeStringNoTag(String str) throws OutOfSpaceException {
        try {
            int iComputeRawVarint32Size = computeRawVarint32Size(str.length());
            if (iComputeRawVarint32Size != computeRawVarint32Size(str.length() * 3)) {
                writeRawVarint32(encodedLength(str));
                encode(str, this.buffer);
                return;
            }
            int iPosition = this.buffer.position();
            if (this.buffer.remaining() < iComputeRawVarint32Size) {
                throw new OutOfSpaceException(iPosition + iComputeRawVarint32Size, this.buffer.limit());
            }
            this.buffer.position(iPosition + iComputeRawVarint32Size);
            encode(str, this.buffer);
            int iPosition2 = this.buffer.position();
            this.buffer.position(iPosition);
            writeRawVarint32((iPosition2 - iPosition) - iComputeRawVarint32Size);
            this.buffer.position(iPosition2);
        } catch (BufferOverflowException e2) {
            OutOfSpaceException outOfSpaceException = new OutOfSpaceException(this.buffer.position(), this.buffer.limit());
            outOfSpaceException.initCause(e2);
            throw outOfSpaceException;
        }
    }

    public void writeTag(int i2, int i3) throws OutOfSpaceException {
        writeRawVarint32(WireFormatNano.makeTag(i2, i3));
    }

    public void writeUInt32(int i2, int i3) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeUInt32NoTag(i3);
    }

    public void writeUInt32NoTag(int i2) throws OutOfSpaceException {
        writeRawVarint32(i2);
    }

    public void writeUInt64(int i2, long j2) throws OutOfSpaceException {
        writeTag(i2, 0);
        writeUInt64NoTag(j2);
    }

    public void writeUInt64NoTag(long j2) throws OutOfSpaceException {
        writeRawVarint64(j2);
    }

    private CodedOutputByteBufferNano(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int computeBytesSize(int i2, int i3) {
        return computeBytesSizeNoTag(i3) + computeTagSize(i2);
    }

    public static int computeBytesSizeNoTag(int i2) {
        return computeRawVarint32Size(i2) + i2;
    }

    public static CodedOutputByteBufferNano newInstance(byte[] bArr, int i2, int i3) {
        return new CodedOutputByteBufferNano(bArr, i2, i3);
    }

    public void writeRawBytes(byte[] bArr, int i2, int i3) throws OutOfSpaceException {
        if (this.buffer.remaining() < i3) {
            throw new OutOfSpaceException(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(bArr, i2, i3);
    }

    public void writeBytes(int i2, byte[] bArr, int i3, int i4) throws OutOfSpaceException {
        writeTag(i2, 2);
        writeBytesNoTag(bArr, i3, i4);
    }

    public void writeBytesNoTag(byte[] bArr, int i2, int i3) throws OutOfSpaceException {
        writeRawVarint32(i3);
        writeRawBytes(bArr, i2, i3);
    }

    public void writeRawByte(int i2) throws OutOfSpaceException {
        writeRawByte((byte) i2);
    }

    private static int encode(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        char cCharAt;
        int length = charSequence.length();
        int i6 = i3 + i2;
        int i7 = 0;
        while (i7 < length && (i5 = i7 + i2) < i6 && (cCharAt = charSequence.charAt(i7)) < 128) {
            bArr[i5] = (byte) cCharAt;
            i7++;
        }
        if (i7 == length) {
            return i2 + length;
        }
        int i8 = i2 + i7;
        while (i7 < length) {
            char cCharAt2 = charSequence.charAt(i7);
            if (cCharAt2 >= 128 || i8 >= i6) {
                if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                    int i9 = i8 + 1;
                    bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                    i8 = i9 + 1;
                    bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                        if (i8 <= i6 - 4) {
                            int i10 = i7 + 1;
                            if (i10 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i10);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i11 = i8 + 1;
                                    bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                                    int i12 = i11 + 1;
                                    bArr[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i13 = i12 + 1;
                                    bArr[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i8 = i13 + 1;
                                    bArr[i13] = (byte) ((codePoint & 63) | 128);
                                    i7 = i10;
                                } else {
                                    i7 = i10;
                                }
                            }
                            StringBuilder sb = new StringBuilder("Unpaired surrogate at index ");
                            sb.append(i7 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i8);
                    }
                    int i14 = i8 + 1;
                    bArr[i8] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i15 = i14 + 1;
                    bArr[i14] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i4 = i15 + 1;
                    bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
                }
                i7++;
            } else {
                i4 = i8 + 1;
                bArr[i8] = (byte) cCharAt2;
            }
            i8 = i4;
            i7++;
        }
        return i8;
    }
}
