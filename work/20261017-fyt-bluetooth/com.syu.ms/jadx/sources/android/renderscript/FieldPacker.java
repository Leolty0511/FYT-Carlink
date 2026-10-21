package android.renderscript;

import android.util.Log;
import android.widget.ExpandableListView;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class FieldPacker {
    private final byte[] mData;
    private int mLen;
    private int mPos = 0;
    private BitSet mAlignment = new BitSet();

    public FieldPacker(int i2) {
        this.mLen = i2;
        this.mData = new byte[i2];
    }

    public void addBoolean(boolean z2) {
        addI8(z2 ? (byte) 1 : (byte) 0);
    }

    public void addF32(float f2) {
        addI32(Float.floatToRawIntBits(f2));
    }

    public void addF64(double d2) {
        addI64(Double.doubleToRawLongBits(d2));
    }

    public void addI16(short s2) {
        align(2);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        this.mPos = i3;
        bArr[i2] = (byte) (s2 & 255);
        this.mPos = i3 + 1;
        bArr[i3] = (byte) (s2 >> 8);
    }

    public void addI32(int i2) {
        align(4);
        byte[] bArr = this.mData;
        int i3 = this.mPos;
        int i4 = i3 + 1;
        this.mPos = i4;
        bArr[i3] = (byte) (i2 & 255);
        int i5 = i4 + 1;
        this.mPos = i5;
        bArr[i4] = (byte) ((i2 >> 8) & 255);
        int i6 = i5 + 1;
        this.mPos = i6;
        bArr[i5] = (byte) ((i2 >> 16) & 255);
        this.mPos = i6 + 1;
        bArr[i6] = (byte) ((i2 >> 24) & 255);
    }

    public void addI64(long j2) {
        align(8);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        this.mPos = i3;
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        this.mPos = i4;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
        this.mPos = i5;
        bArr[i4] = (byte) ((j2 >> 16) & 255);
        int i6 = i5 + 1;
        this.mPos = i6;
        bArr[i5] = (byte) ((j2 >> 24) & 255);
        int i7 = i6 + 1;
        this.mPos = i7;
        bArr[i6] = (byte) ((j2 >> 32) & 255);
        int i8 = i7 + 1;
        this.mPos = i8;
        bArr[i7] = (byte) ((j2 >> 40) & 255);
        int i9 = i8 + 1;
        this.mPos = i9;
        bArr[i8] = (byte) ((j2 >> 48) & 255);
        this.mPos = i9 + 1;
        bArr[i9] = (byte) ((j2 >> 56) & 255);
    }

    public void addI8(byte b2) {
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        this.mPos = i2 + 1;
        bArr[i2] = b2;
    }

    public void addMatrix(Matrix4f matrix4f) {
        int i2 = 0;
        while (true) {
            float[] fArr = matrix4f.mMat;
            if (i2 >= fArr.length) {
                return;
            }
            addF32(fArr[i2]);
            i2++;
        }
    }

    public void addObj(BaseObj baseObj) {
        if (baseObj != null) {
            addI32(baseObj.getID(null));
        } else {
            addI32(0);
        }
    }

    public void addU16(int i2) {
        if (i2 < 0 || i2 > 65535) {
            Log.e("rs", "FieldPacker.addU16( " + i2 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(2);
        byte[] bArr = this.mData;
        int i3 = this.mPos;
        int i4 = i3 + 1;
        this.mPos = i4;
        bArr[i3] = (byte) (i2 & 255);
        this.mPos = i4 + 1;
        bArr[i4] = (byte) (i2 >> 8);
    }

    public void addU32(long j2) {
        if (j2 < 0 || j2 > ExpandableListView.PACKED_POSITION_VALUE_NULL) {
            Log.e("rs", "FieldPacker.addU32( " + j2 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(4);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        this.mPos = i3;
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        this.mPos = i4;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
        this.mPos = i5;
        bArr[i4] = (byte) ((j2 >> 16) & 255);
        this.mPos = i5 + 1;
        bArr[i5] = (byte) ((j2 >> 24) & 255);
    }

    public void addU64(long j2) {
        if (j2 < 0) {
            Log.e("rs", "FieldPacker.addU64( " + j2 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(8);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        this.mPos = i3;
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        this.mPos = i4;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
        this.mPos = i5;
        bArr[i4] = (byte) ((j2 >> 16) & 255);
        int i6 = i5 + 1;
        this.mPos = i6;
        bArr[i5] = (byte) ((j2 >> 24) & 255);
        int i7 = i6 + 1;
        this.mPos = i7;
        bArr[i6] = (byte) ((j2 >> 32) & 255);
        int i8 = i7 + 1;
        this.mPos = i8;
        bArr[i7] = (byte) ((j2 >> 40) & 255);
        int i9 = i8 + 1;
        this.mPos = i9;
        bArr[i8] = (byte) ((j2 >> 48) & 255);
        this.mPos = i9 + 1;
        bArr[i9] = (byte) ((j2 >> 56) & 255);
    }

    public void addU8(short s2) {
        if (s2 >= 0 && s2 <= 255) {
            byte[] bArr = this.mData;
            int i2 = this.mPos;
            this.mPos = i2 + 1;
            bArr[i2] = (byte) s2;
            return;
        }
        Log.e("rs", "FieldPacker.addU8( " + ((int) s2) + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public void align(int i2) {
        if (i2 > 0) {
            int i3 = i2 - 1;
            if ((i2 & i3) == 0) {
                while (true) {
                    int i4 = this.mPos;
                    if ((i4 & i3) == 0) {
                        return;
                    }
                    this.mAlignment.flip(i4);
                    byte[] bArr = this.mData;
                    int i5 = this.mPos;
                    this.mPos = i5 + 1;
                    bArr[i5] = 0;
                }
            }
        }
        throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i2);
    }

    public final byte[] getData() {
        return this.mData;
    }

    public void reset() {
        this.mPos = 0;
    }

    public void skip(int i2) {
        int i3 = this.mPos + i2;
        if (i3 >= 0 && i3 <= this.mLen) {
            this.mPos = i3;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i2);
    }

    public boolean subBoolean() {
        return subI8() == 1;
    }

    public Byte2 subByte2() {
        Byte2 byte2 = new Byte2();
        byte2.f145y = subI8();
        byte2.f144x = subI8();
        return byte2;
    }

    public Byte3 subByte3() {
        Byte3 byte3 = new Byte3();
        byte3.f148z = subI8();
        byte3.f147y = subI8();
        byte3.f146x = subI8();
        return byte3;
    }

    public Byte4 subByte4() {
        Byte4 byte4 = new Byte4();
        byte4.f149w = subI8();
        byte4.f152z = subI8();
        byte4.f151y = subI8();
        byte4.f150x = subI8();
        return byte4;
    }

    public Double2 subDouble2() {
        Double2 double2 = new Double2();
        double2.f154y = subF64();
        double2.f153x = subF64();
        return double2;
    }

    public Double3 subDouble3() {
        Double3 double3 = new Double3();
        double3.f157z = subF64();
        double3.f156y = subF64();
        double3.f155x = subF64();
        return double3;
    }

    public Double4 subDouble4() {
        Double4 double4 = new Double4();
        double4.f158w = subF64();
        double4.f161z = subF64();
        double4.f160y = subF64();
        double4.f159x = subF64();
        return double4;
    }

    public float subF32() {
        return Float.intBitsToFloat(subI32());
    }

    public double subF64() {
        return Double.longBitsToDouble(subI64());
    }

    public Float2 subFloat2() {
        Float2 float2 = new Float2();
        float2.f163y = subF32();
        float2.f162x = subF32();
        return float2;
    }

    public Float3 subFloat3() {
        Float3 float3 = new Float3();
        float3.f166z = subF32();
        float3.f165y = subF32();
        float3.f164x = subF32();
        return float3;
    }

    public Float4 subFloat4() {
        Float4 float4 = new Float4();
        float4.f167w = subF32();
        float4.f170z = subF32();
        float4.f169y = subF32();
        float4.f168x = subF32();
        return float4;
    }

    public short subI16() {
        subalign(2);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        this.mPos = i2;
        short s2 = (short) ((bArr[i2] & 255) << 8);
        int i3 = i2 - 1;
        this.mPos = i3;
        return (short) (((short) (bArr[i3] & 255)) | s2);
    }

    public int subI32() {
        subalign(4);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        this.mPos = i2;
        int i3 = (bArr[i2] & 255) << 24;
        int i4 = i2 - 1;
        this.mPos = i4;
        int i5 = i3 | ((bArr[i4] & 255) << 16);
        int i6 = i4 - 1;
        this.mPos = i6;
        int i7 = i5 | ((bArr[i6] & 255) << 8);
        int i8 = i6 - 1;
        this.mPos = i8;
        return (bArr[i8] & 255) | i7;
    }

    public long subI64() {
        subalign(8);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        this.mPos = i2;
        long j2 = ((((long) bArr[i2]) & 255) << 56) | 0;
        int i3 = i2 - 1;
        this.mPos = i3;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 48);
        int i4 = i3 - 1;
        this.mPos = i4;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 40);
        int i5 = i4 - 1;
        this.mPos = i5;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i6 = i5 - 1;
        this.mPos = i6;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 24);
        int i7 = i6 - 1;
        this.mPos = i7;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 16);
        int i8 = i7 - 1;
        this.mPos = i8;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 8);
        int i9 = i8 - 1;
        this.mPos = i9;
        return (((long) bArr[i9]) & 255) | j8;
    }

    public byte subI8() {
        subalign(1);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        this.mPos = i2;
        return bArr[i2];
    }

    public Int2 subInt2() {
        Int2 int2 = new Int2();
        int2.f172y = subI32();
        int2.f171x = subI32();
        return int2;
    }

    public Int3 subInt3() {
        Int3 int3 = new Int3();
        int3.f175z = subI32();
        int3.f174y = subI32();
        int3.f173x = subI32();
        return int3;
    }

    public Int4 subInt4() {
        Int4 int4 = new Int4();
        int4.f176w = subI32();
        int4.f179z = subI32();
        int4.f178y = subI32();
        int4.f177x = subI32();
        return int4;
    }

    public Long2 subLong2() {
        Long2 long2 = new Long2();
        long2.f181y = subI64();
        long2.f180x = subI64();
        return long2;
    }

    public Long3 subLong3() {
        Long3 long3 = new Long3();
        long3.f184z = subI64();
        long3.f183y = subI64();
        long3.f182x = subI64();
        return long3;
    }

    public Long4 subLong4() {
        Long4 long4 = new Long4();
        long4.f185w = subI64();
        long4.f188z = subI64();
        long4.f187y = subI64();
        long4.f186x = subI64();
        return long4;
    }

    public Matrix2f subMatrix2f() {
        Matrix2f matrix2f = new Matrix2f();
        for (int length = matrix2f.mMat.length - 1; length >= 0; length--) {
            matrix2f.mMat[length] = subF32();
        }
        return matrix2f;
    }

    public Matrix3f subMatrix3f() {
        Matrix3f matrix3f = new Matrix3f();
        for (int length = matrix3f.mMat.length - 1; length >= 0; length--) {
            matrix3f.mMat[length] = subF32();
        }
        return matrix3f;
    }

    public Matrix4f subMatrix4f() {
        Matrix4f matrix4f = new Matrix4f();
        for (int length = matrix4f.mMat.length - 1; length >= 0; length--) {
            matrix4f.mMat[length] = subF32();
        }
        return matrix4f;
    }

    public Short2 subShort2() {
        Short2 short2 = new Short2();
        short2.f193y = subI16();
        short2.f192x = subI16();
        return short2;
    }

    public Short3 subShort3() {
        Short3 short3 = new Short3();
        short3.f196z = subI16();
        short3.f195y = subI16();
        short3.f194x = subI16();
        return short3;
    }

    public Short4 subShort4() {
        Short4 short4 = new Short4();
        short4.f197w = subI16();
        short4.f200z = subI16();
        short4.f199y = subI16();
        short4.f198x = subI16();
        return short4;
    }

    public void subalign(int i2) {
        int i3;
        int i4 = i2 - 1;
        if ((i2 & i4) != 0) {
            throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i2);
        }
        while (true) {
            i3 = this.mPos;
            if ((i3 & i4) == 0) {
                break;
            } else {
                this.mPos = i3 - 1;
            }
        }
        if (i3 > 0) {
            while (this.mAlignment.get(this.mPos - 1)) {
                int i5 = this.mPos - 1;
                this.mPos = i5;
                this.mAlignment.flip(i5);
            }
        }
    }

    public void addF32(Float2 float2) {
        addF32(float2.f162x);
        addF32(float2.f163y);
    }

    public void addF64(Double2 double2) {
        addF64(double2.f153x);
        addF64(double2.f154y);
    }

    public void addI8(Byte2 byte2) {
        addI8(byte2.f144x);
        addI8(byte2.f145y);
    }

    public void reset(int i2) {
        if (i2 >= 0 && i2 < this.mLen) {
            this.mPos = i2;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i2);
    }

    public void addMatrix(Matrix3f matrix3f) {
        int i2 = 0;
        while (true) {
            float[] fArr = matrix3f.mMat;
            if (i2 >= fArr.length) {
                return;
            }
            addF32(fArr[i2]);
            i2++;
        }
    }

    public void addF32(Float3 float3) {
        addF32(float3.f164x);
        addF32(float3.f165y);
        addF32(float3.f166z);
    }

    public void addF64(Double3 double3) {
        addF64(double3.f155x);
        addF64(double3.f156y);
        addF64(double3.f157z);
    }

    public void addI16(Short2 short2) {
        addI16(short2.f192x);
        addI16(short2.f193y);
    }

    public void addI8(Byte3 byte3) {
        addI8(byte3.f146x);
        addI8(byte3.f147y);
        addI8(byte3.f148z);
    }

    public void addU8(Short2 short2) {
        addU8(short2.f192x);
        addU8(short2.f193y);
    }

    public void addMatrix(Matrix2f matrix2f) {
        int i2 = 0;
        while (true) {
            float[] fArr = matrix2f.mMat;
            if (i2 >= fArr.length) {
                return;
            }
            addF32(fArr[i2]);
            i2++;
        }
    }

    public FieldPacker(byte[] bArr) {
        this.mLen = bArr.length;
        this.mData = bArr;
    }

    public void addI16(Short3 short3) {
        addI16(short3.f194x);
        addI16(short3.f195y);
        addI16(short3.f196z);
    }

    public void addI32(Int2 int2) {
        addI32(int2.f171x);
        addI32(int2.f172y);
    }

    public void addU16(Int2 int2) {
        addU16(int2.f171x);
        addU16(int2.f172y);
    }

    public void addU8(Short3 short3) {
        addU8(short3.f194x);
        addU8(short3.f195y);
        addU8(short3.f196z);
    }

    public void addF32(Float4 float4) {
        addF32(float4.f168x);
        addF32(float4.f169y);
        addF32(float4.f170z);
        addF32(float4.f167w);
    }

    public void addF64(Double4 double4) {
        addF64(double4.f159x);
        addF64(double4.f160y);
        addF64(double4.f161z);
        addF64(double4.f158w);
    }

    public void addI8(Byte4 byte4) {
        addI8(byte4.f150x);
        addI8(byte4.f151y);
        addI8(byte4.f152z);
        addI8(byte4.f149w);
    }

    public void addI32(Int3 int3) {
        addI32(int3.f173x);
        addI32(int3.f174y);
        addI32(int3.f175z);
    }

    public void addU16(Int3 int3) {
        addU16(int3.f173x);
        addU16(int3.f174y);
        addU16(int3.f175z);
    }

    public void addU32(Long2 long2) {
        addU32(long2.f180x);
        addU32(long2.f181y);
    }

    public void addI16(Short4 short4) {
        addI16(short4.f198x);
        addI16(short4.f199y);
        addI16(short4.f200z);
        addI16(short4.f197w);
    }

    public void addU8(Short4 short4) {
        addU8(short4.f198x);
        addU8(short4.f199y);
        addU8(short4.f200z);
        addU8(short4.f197w);
    }

    public void addI64(Long2 long2) {
        addI64(long2.f180x);
        addI64(long2.f181y);
    }

    public void addU32(Long3 long3) {
        addU32(long3.f182x);
        addU32(long3.f183y);
        addU32(long3.f184z);
    }

    public void addI32(Int4 int4) {
        addI32(int4.f177x);
        addI32(int4.f178y);
        addI32(int4.f179z);
        addI32(int4.f176w);
    }

    public void addU16(Int4 int4) {
        addU16(int4.f177x);
        addU16(int4.f178y);
        addU16(int4.f179z);
        addU16(int4.f176w);
    }

    public void addI64(Long3 long3) {
        addI64(long3.f182x);
        addI64(long3.f183y);
        addI64(long3.f184z);
    }

    public void addU64(Long2 long2) {
        addU64(long2.f180x);
        addU64(long2.f181y);
    }

    public void addU32(Long4 long4) {
        addU32(long4.f186x);
        addU32(long4.f187y);
        addU32(long4.f188z);
        addU32(long4.f185w);
    }

    public void addU64(Long3 long3) {
        addU64(long3.f182x);
        addU64(long3.f183y);
        addU64(long3.f184z);
    }

    public void addI64(Long4 long4) {
        addI64(long4.f186x);
        addI64(long4.f187y);
        addI64(long4.f188z);
        addI64(long4.f185w);
    }

    public void addU64(Long4 long4) {
        addU64(long4.f186x);
        addU64(long4.f187y);
        addU64(long4.f188z);
        addU64(long4.f185w);
    }
}
