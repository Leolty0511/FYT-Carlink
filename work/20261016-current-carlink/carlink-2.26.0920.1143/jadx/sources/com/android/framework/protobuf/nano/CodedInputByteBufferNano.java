package com.android.framework.protobuf.nano;

import android.accessibilityservice.c;
import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes2.dex */
public final class CodedInputByteBufferNano {
    private static final int DEFAULT_RECURSION_LIMIT = 64;
    private static final int DEFAULT_SIZE_LIMIT = 67108864;
    private final byte[] buffer;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int bufferStart;
    private int lastTag;
    private int recursionDepth;
    private int currentLimit = Integer.MAX_VALUE;
    private int recursionLimit = 64;
    private int sizeLimit = 67108864;

    private CodedInputByteBufferNano(byte[] bArr, int i2, int i3) {
        this.buffer = bArr;
        this.bufferStart = i2;
        this.bufferSize = i3 + i2;
        this.bufferPos = i2;
    }

    public static int decodeZigZag32(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long decodeZigZag64(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static CodedInputByteBufferNano newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    private void recomputeBufferSizeAfterLimit() {
        int i2 = this.bufferSize + this.bufferSizeAfterLimit;
        this.bufferSize = i2;
        int i3 = this.currentLimit;
        if (i2 <= i3) {
            this.bufferSizeAfterLimit = 0;
            return;
        }
        int i4 = i2 - i3;
        this.bufferSizeAfterLimit = i4;
        this.bufferSize = i2 - i4;
    }

    public void checkLastTagWas(int i2) throws InvalidProtocolBufferNanoException {
        if (this.lastTag != i2) {
            throw InvalidProtocolBufferNanoException.invalidEndTag();
        }
    }

    public int getAbsolutePosition() {
        return this.bufferPos;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public int getBytesUntilLimit() {
        int i2 = this.currentLimit;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.bufferPos;
    }

    public byte[] getData(int i2, int i3) {
        if (i3 == 0) {
            return WireFormatNano.EMPTY_BYTES;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.buffer, this.bufferStart + i2, bArr, 0, i3);
        return bArr;
    }

    public int getPosition() {
        return this.bufferPos - this.bufferStart;
    }

    public boolean isAtEnd() {
        return this.bufferPos == this.bufferSize;
    }

    public void popLimit(int i2) {
        this.currentLimit = i2;
        recomputeBufferSizeAfterLimit();
    }

    public int pushLimit(int i2) throws InvalidProtocolBufferNanoException {
        if (i2 < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i3 = i2 + this.bufferPos;
        int i4 = this.currentLimit;
        if (i3 > i4) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        this.currentLimit = i3;
        recomputeBufferSizeAfterLimit();
        return i4;
    }

    public boolean readBool() {
        return readRawVarint32() != 0;
    }

    public byte[] readBytes() throws InvalidProtocolBufferNanoException {
        int rawVarint32 = readRawVarint32();
        int i2 = this.bufferSize;
        int i3 = this.bufferPos;
        if (rawVarint32 > i2 - i3 || rawVarint32 <= 0) {
            return rawVarint32 == 0 ? WireFormatNano.EMPTY_BYTES : readRawBytes(rawVarint32);
        }
        byte[] bArr = new byte[rawVarint32];
        System.arraycopy(this.buffer, i3, bArr, 0, rawVarint32);
        this.bufferPos += rawVarint32;
        return bArr;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    public int readEnum() {
        return readRawVarint32();
    }

    public int readFixed32() {
        return readRawLittleEndian32();
    }

    public long readFixed64() {
        return readRawLittleEndian64();
    }

    public float readFloat() {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    public void readGroup(MessageNano messageNano, int i2) throws InvalidProtocolBufferNanoException {
        int i3 = this.recursionDepth;
        if (i3 >= this.recursionLimit) {
            throw InvalidProtocolBufferNanoException.recursionLimitExceeded();
        }
        this.recursionDepth = i3 + 1;
        messageNano.mergeFrom(this);
        checkLastTagWas(WireFormatNano.makeTag(i2, 4));
        this.recursionDepth--;
    }

    public int readInt32() {
        return readRawVarint32();
    }

    public long readInt64() {
        return readRawVarint64();
    }

    public void readMessage(MessageNano messageNano) throws InvalidProtocolBufferNanoException {
        int rawVarint32 = readRawVarint32();
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferNanoException.recursionLimitExceeded();
        }
        int iPushLimit = pushLimit(rawVarint32);
        this.recursionDepth++;
        messageNano.mergeFrom(this);
        checkLastTagWas(0);
        this.recursionDepth--;
        popLimit(iPushLimit);
    }

    public Object readPrimitiveField(int i2) {
        switch (i2) {
            case 1:
                return Double.valueOf(readDouble());
            case 2:
                return Float.valueOf(readFloat());
            case 3:
                return Long.valueOf(readInt64());
            case 4:
                return Long.valueOf(readUInt64());
            case 5:
                return Integer.valueOf(readInt32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Integer.valueOf(readFixed32());
            case 8:
                return Boolean.valueOf(readBool());
            case 9:
                return readString();
            case 10:
            case 11:
            default:
                throw new IllegalArgumentException(c.d("Unknown type ", i2));
            case 12:
                return readBytes();
            case 13:
                return Integer.valueOf(readUInt32());
            case 14:
                return Integer.valueOf(readEnum());
            case 15:
                return Integer.valueOf(readSFixed32());
            case 16:
                return Long.valueOf(readSFixed64());
            case 17:
                return Integer.valueOf(readSInt32());
            case 18:
                return Long.valueOf(readSInt64());
        }
    }

    public byte readRawByte() throws InvalidProtocolBufferNanoException {
        int i2 = this.bufferPos;
        if (i2 == this.bufferSize) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        byte[] bArr = this.buffer;
        this.bufferPos = i2 + 1;
        return bArr[i2];
    }

    public byte[] readRawBytes(int i2) throws InvalidProtocolBufferNanoException {
        if (i2 < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i3 = this.bufferPos;
        int i4 = i3 + i2;
        int i5 = this.currentLimit;
        if (i4 > i5) {
            skipRawBytes(i5 - i3);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        if (i2 > this.bufferSize - i3) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, i3, bArr, 0, i2);
        this.bufferPos += i2;
        return bArr;
    }

    public int readRawLittleEndian32() throws InvalidProtocolBufferNanoException {
        return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
    }

    public long readRawLittleEndian64() throws InvalidProtocolBufferNanoException {
        byte rawByte = readRawByte();
        return ((((long) readRawByte()) & 255) << 8) | (((long) rawByte) & 255) | ((((long) readRawByte()) & 255) << 16) | ((((long) readRawByte()) & 255) << 24) | ((((long) readRawByte()) & 255) << 32) | ((((long) readRawByte()) & 255) << 40) | ((((long) readRawByte()) & 255) << 48) | ((((long) readRawByte()) & 255) << 56);
    }

    public int readRawVarint32() throws InvalidProtocolBufferNanoException {
        int i2;
        byte rawByte = readRawByte();
        if (rawByte >= 0) {
            return rawByte;
        }
        int i3 = rawByte & Ascii.DEL;
        byte rawByte2 = readRawByte();
        if (rawByte2 >= 0) {
            i2 = rawByte2 << 7;
        } else {
            i3 |= (rawByte2 & Ascii.DEL) << 7;
            byte rawByte3 = readRawByte();
            if (rawByte3 >= 0) {
                i2 = rawByte3 << 14;
            } else {
                i3 |= (rawByte3 & Ascii.DEL) << 14;
                byte rawByte4 = readRawByte();
                if (rawByte4 < 0) {
                    int i4 = i3 | ((rawByte4 & Ascii.DEL) << 21);
                    byte rawByte5 = readRawByte();
                    int i5 = i4 | (rawByte5 << Ascii.FS);
                    if (rawByte5 >= 0) {
                        return i5;
                    }
                    for (int i6 = 0; i6 < 5; i6++) {
                        if (readRawByte() >= 0) {
                            return i5;
                        }
                    }
                    throw InvalidProtocolBufferNanoException.malformedVarint();
                }
                i2 = rawByte4 << Ascii.NAK;
            }
        }
        return i3 | i2;
    }

    public long readRawVarint64() throws InvalidProtocolBufferNanoException {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte rawByte = readRawByte();
            j2 |= ((long) (rawByte & Ascii.DEL)) << i2;
            if ((rawByte & 128) == 0) {
                return j2;
            }
        }
        throw InvalidProtocolBufferNanoException.malformedVarint();
    }

    public int readSFixed32() {
        return readRawLittleEndian32();
    }

    public long readSFixed64() {
        return readRawLittleEndian64();
    }

    public int readSInt32() {
        return decodeZigZag32(readRawVarint32());
    }

    public long readSInt64() {
        return decodeZigZag64(readRawVarint64());
    }

    public String readString() throws InvalidProtocolBufferNanoException {
        int rawVarint32 = readRawVarint32();
        int i2 = this.bufferSize;
        int i3 = this.bufferPos;
        if (rawVarint32 > i2 - i3 || rawVarint32 <= 0) {
            return new String(readRawBytes(rawVarint32), InternalNano.UTF_8);
        }
        String str = new String(this.buffer, i3, rawVarint32, InternalNano.UTF_8);
        this.bufferPos += rawVarint32;
        return str;
    }

    public int readTag() throws InvalidProtocolBufferNanoException {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        int rawVarint32 = readRawVarint32();
        this.lastTag = rawVarint32;
        if (rawVarint32 != 0) {
            return rawVarint32;
        }
        throw InvalidProtocolBufferNanoException.invalidTag();
    }

    public int readUInt32() {
        return readRawVarint32();
    }

    public long readUInt64() {
        return readRawVarint64();
    }

    public void resetSizeCounter() {
    }

    public void rewindToPosition(int i2) {
        int i3 = this.bufferPos;
        int i4 = this.bufferStart;
        if (i2 > i3 - i4) {
            StringBuilder sbS = c.s("Position ", i2, " is beyond current ");
            sbS.append(this.bufferPos - this.bufferStart);
            throw new IllegalArgumentException(sbS.toString());
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(c.d("Bad position ", i2));
        }
        this.bufferPos = i4 + i2;
    }

    public int setRecursionLimit(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(c.d("Recursion limit cannot be negative: ", i2));
        }
        int i3 = this.recursionLimit;
        this.recursionLimit = i2;
        return i3;
    }

    public int setSizeLimit(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(c.d("Size limit cannot be negative: ", i2));
        }
        int i3 = this.sizeLimit;
        this.sizeLimit = i2;
        return i3;
    }

    public boolean skipField(int i2) throws InvalidProtocolBufferNanoException {
        int tagWireType = WireFormatNano.getTagWireType(i2);
        if (tagWireType == 0) {
            readInt32();
            return true;
        }
        if (tagWireType == 1) {
            readRawLittleEndian64();
            return true;
        }
        if (tagWireType == 2) {
            skipRawBytes(readRawVarint32());
            return true;
        }
        if (tagWireType == 3) {
            skipMessage();
            checkLastTagWas(WireFormatNano.makeTag(WireFormatNano.getTagFieldNumber(i2), 4));
            return true;
        }
        if (tagWireType == 4) {
            return false;
        }
        if (tagWireType != 5) {
            throw InvalidProtocolBufferNanoException.invalidWireType();
        }
        readRawLittleEndian32();
        return true;
    }

    public void skipMessage() throws InvalidProtocolBufferNanoException {
        int tag;
        do {
            tag = readTag();
            if (tag == 0) {
                return;
            }
        } while (skipField(tag));
    }

    public void skipRawBytes(int i2) throws InvalidProtocolBufferNanoException {
        if (i2 < 0) {
            throw InvalidProtocolBufferNanoException.negativeSize();
        }
        int i3 = this.bufferPos;
        int i4 = i3 + i2;
        int i5 = this.currentLimit;
        if (i4 > i5) {
            skipRawBytes(i5 - i3);
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        if (i2 > this.bufferSize - i3) {
            throw InvalidProtocolBufferNanoException.truncatedMessage();
        }
        this.bufferPos = i3 + i2;
    }

    public static CodedInputByteBufferNano newInstance(byte[] bArr, int i2, int i3) {
        return new CodedInputByteBufferNano(bArr, i2, i3);
    }
}
