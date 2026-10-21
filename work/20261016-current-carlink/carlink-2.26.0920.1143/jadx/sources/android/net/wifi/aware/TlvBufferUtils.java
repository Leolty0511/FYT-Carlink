package android.net.wifi.aware;

import android.accessibilityservice.c;
import android.app.m;
import java.nio.BufferOverflowException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import libcore.io.Memory;

/* JADX INFO: loaded from: classes.dex */
public class TlvBufferUtils {

    public static class TlvElement {
        public int length;
        public int offset;
        public byte[] refArray;
        public int type;

        public byte getByte() {
            if (this.length == 1) {
                return this.refArray[this.offset];
            }
            throw new IllegalArgumentException("Accesing a byte from a TLV element of length " + this.length);
        }

        public int getInt() {
            if (this.length == 4) {
                return Memory.peekInt(this.refArray, this.offset, ByteOrder.BIG_ENDIAN);
            }
            throw new IllegalArgumentException("Accesing an int from a TLV element of length " + this.length);
        }

        public short getShort() {
            if (this.length == 2) {
                return Memory.peekShort(this.refArray, this.offset, ByteOrder.BIG_ENDIAN);
            }
            throw new IllegalArgumentException("Accesing a short from a TLV element of length " + this.length);
        }

        public String getString() {
            return new String(this.refArray, this.offset, this.length);
        }

        private TlvElement(int i2, int i3, byte[] bArr, int i4) {
            this.type = i2;
            this.length = i3;
            this.refArray = bArr;
            this.offset = i4;
            if (i4 + i3 > bArr.length) {
                throw new BufferOverflowException();
            }
        }
    }

    public static class TlvIterable implements Iterable<TlvElement> {
        private byte[] mArray;
        private int mArrayLength;
        private int mLengthSize;
        private int mTypeSize;

        public TlvIterable(int i2, int i3, byte[] bArr) {
            if (i2 < 0 || i2 > 2 || i3 <= 0 || i3 > 2) {
                throw new IllegalArgumentException(m.e("Invalid sizes - typeSize=", i2, ", lengthSize=", i3));
            }
            this.mTypeSize = i2;
            this.mLengthSize = i3;
            this.mArray = bArr;
            this.mArrayLength = bArr == null ? 0 : bArr.length;
        }

        @Override // java.lang.Iterable
        public Iterator<TlvElement> iterator() {
            return new Iterator<TlvElement>() { // from class: android.net.wifi.aware.TlvBufferUtils.TlvIterable.1
                private int mOffset = 0;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.mOffset < TlvIterable.this.mArrayLength;
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                /* JADX WARN: Code duplicated, block: B:14:0x0048  */
                /* JADX WARN: Code duplicated, block: B:15:0x0053  */
                /* JADX WARN: Code duplicated, block: B:17:0x005b  */
                @Override // java.util.Iterator
                public TlvElement next() {
                    short s2;
                    short sPeekShort;
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    short sPeekShort2 = 0;
                    if (TlvIterable.this.mTypeSize != 1) {
                        if (TlvIterable.this.mTypeSize == 2) {
                            sPeekShort = Memory.peekShort(TlvIterable.this.mArray, this.mOffset, ByteOrder.BIG_ENDIAN);
                        } else {
                            s2 = 0;
                        }
                        this.mOffset = TlvIterable.this.mTypeSize + this.mOffset;
                        if (TlvIterable.this.mLengthSize == 1) {
                            sPeekShort2 = TlvIterable.this.mArray[this.mOffset];
                        } else if (TlvIterable.this.mLengthSize == 2) {
                            sPeekShort2 = Memory.peekShort(TlvIterable.this.mArray, this.mOffset, ByteOrder.BIG_ENDIAN);
                        }
                        this.mOffset = TlvIterable.this.mLengthSize + this.mOffset;
                        TlvElement tlvElement = new TlvElement(s2, sPeekShort2 == true ? 1 : 0, TlvIterable.this.mArray, this.mOffset);
                        this.mOffset += sPeekShort2;
                        return tlvElement;
                    }
                    sPeekShort = TlvIterable.this.mArray[this.mOffset];
                    s2 = sPeekShort;
                    this.mOffset = TlvIterable.this.mTypeSize + this.mOffset;
                    if (TlvIterable.this.mLengthSize == 1) {
                        sPeekShort2 = TlvIterable.this.mArray[this.mOffset];
                    } else if (TlvIterable.this.mLengthSize == 2) {
                        sPeekShort2 = Memory.peekShort(TlvIterable.this.mArray, this.mOffset, ByteOrder.BIG_ENDIAN);
                    }
                    this.mOffset = TlvIterable.this.mLengthSize + this.mOffset;
                    TlvElement tlvElement2 = new TlvElement(s2, sPeekShort2 == true ? 1 : 0, TlvIterable.this.mArray, this.mOffset);
                    this.mOffset += sPeekShort2;
                    return tlvElement2;
                }
            };
        }

        public List<byte[]> toList() {
            ArrayList arrayList = new ArrayList();
            for (TlvElement tlvElement : this) {
                byte[] bArr = tlvElement.refArray;
                int i2 = tlvElement.offset;
                arrayList.add(Arrays.copyOfRange(bArr, i2, tlvElement.length + i2));
            }
            return arrayList;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            boolean z2 = true;
            for (TlvElement tlvElement : this) {
                if (!z2) {
                    sb.append(",");
                }
                sb.append(" (");
                if (this.mTypeSize != 0) {
                    sb.append("T=" + tlvElement.type + ",");
                }
                sb.append("L=" + tlvElement.length + ") ");
                int i2 = tlvElement.length;
                if (i2 == 0) {
                    sb.append("<null>");
                } else if (i2 == 1) {
                    sb.append((int) tlvElement.getByte());
                } else if (i2 == 2) {
                    sb.append((int) tlvElement.getShort());
                } else if (i2 == 4) {
                    sb.append(tlvElement.getInt());
                } else {
                    sb.append("<bytes>");
                }
                if (tlvElement.length != 0) {
                    sb.append(" (S='" + tlvElement.getString() + "')");
                }
                z2 = false;
            }
            sb.append("]");
            return sb.toString();
        }
    }

    private TlvBufferUtils() {
    }

    public static boolean isValid(byte[] bArr, int i2, int i3) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException(c.d("Invalid arguments - typeSize must be 0, 1, or 2: typeSize=", i2));
        }
        if (i3 <= 0 || i3 > 2) {
            throw new IllegalArgumentException(c.d("Invalid arguments - lengthSize must be 1 or 2: lengthSize=", i3));
        }
        if (bArr == 0) {
            return true;
        }
        int iPeekShort = 0;
        while (true) {
            int i4 = iPeekShort + i2;
            if (i4 + i3 > bArr.length) {
                break;
            }
            iPeekShort = (i3 == 1 ? bArr[i4] : Memory.peekShort(bArr, i4, ByteOrder.BIG_ENDIAN)) + i3 + i4;
        }
        return iPeekShort == bArr.length;
    }

    public static class TlvConstructor {
        private byte[] mArray;
        private int mArrayLength;
        private int mLengthSize;
        private int mPosition;
        private int mTypeSize;

        public TlvConstructor(int i2, int i3) {
            if (i2 < 0 || i2 > 2 || i3 <= 0 || i3 > 2) {
                throw new IllegalArgumentException(m.e("Invalid sizes - typeSize=", i2, ", lengthSize=", i3));
            }
            this.mTypeSize = i2;
            this.mLengthSize = i3;
        }

        private void addHeader(int i2, int i3) {
            int i4 = this.mTypeSize;
            if (i4 == 1) {
                this.mArray[this.mPosition] = (byte) i2;
            } else if (i4 == 2) {
                Memory.pokeShort(this.mArray, this.mPosition, (short) i2, ByteOrder.BIG_ENDIAN);
            }
            int i5 = this.mPosition + this.mTypeSize;
            this.mPosition = i5;
            int i6 = this.mLengthSize;
            if (i6 == 1) {
                this.mArray[i5] = (byte) i3;
            } else if (i6 == 2) {
                Memory.pokeShort(this.mArray, i5, (short) i3, ByteOrder.BIG_ENDIAN);
            }
            this.mPosition += this.mLengthSize;
        }

        private void checkLength(int i2) {
            if (this.mPosition + this.mTypeSize + this.mLengthSize + i2 > this.mArrayLength) {
                throw new BufferOverflowException();
            }
        }

        private int getActualLength() {
            return this.mPosition;
        }

        public TlvConstructor allocate(int i2) {
            this.mArray = new byte[i2];
            this.mArrayLength = i2;
            return this;
        }

        public TlvConstructor allocateAndPut(List<byte[]> list) {
            if (list != null) {
                int i2 = 0;
                for (byte[] bArr : list) {
                    int length = this.mTypeSize + this.mLengthSize + i2;
                    if (bArr != null) {
                        length += bArr.length;
                    }
                    i2 = length;
                }
                allocate(i2);
                Iterator<byte[]> it = list.iterator();
                while (it.hasNext()) {
                    putByteArray(0, it.next());
                }
            }
            return this;
        }

        public byte[] getArray() {
            return Arrays.copyOf(this.mArray, getActualLength());
        }

        public TlvConstructor putByte(int i2, byte b2) {
            checkLength(1);
            addHeader(i2, 1);
            byte[] bArr = this.mArray;
            int i3 = this.mPosition;
            this.mPosition = i3 + 1;
            bArr[i3] = b2;
            return this;
        }

        public TlvConstructor putByteArray(int i2, byte[] bArr, int i3, int i4) {
            checkLength(i4);
            addHeader(i2, i4);
            if (i4 != 0) {
                System.arraycopy(bArr, i3, this.mArray, this.mPosition, i4);
            }
            this.mPosition += i4;
            return this;
        }

        public TlvConstructor putInt(int i2, int i3) {
            checkLength(4);
            addHeader(i2, 4);
            Memory.pokeInt(this.mArray, this.mPosition, i3, ByteOrder.BIG_ENDIAN);
            this.mPosition += 4;
            return this;
        }

        public TlvConstructor putShort(int i2, short s2) {
            checkLength(2);
            addHeader(i2, 2);
            Memory.pokeShort(this.mArray, this.mPosition, s2, ByteOrder.BIG_ENDIAN);
            this.mPosition += 2;
            return this;
        }

        public TlvConstructor putString(int i2, String str) {
            byte[] bytes;
            int length;
            if (str != null) {
                bytes = str.getBytes();
                length = bytes.length;
            } else {
                bytes = null;
                length = 0;
            }
            return putByteArray(i2, bytes, 0, length);
        }

        public TlvConstructor putZeroLengthElement(int i2) {
            checkLength(0);
            addHeader(i2, 0);
            return this;
        }

        public TlvConstructor wrap(byte[] bArr) {
            this.mArray = bArr;
            this.mArrayLength = bArr == null ? 0 : bArr.length;
            return this;
        }

        public TlvConstructor putByteArray(int i2, byte[] bArr) {
            return putByteArray(i2, bArr, 0, bArr == null ? 0 : bArr.length);
        }
    }
}
