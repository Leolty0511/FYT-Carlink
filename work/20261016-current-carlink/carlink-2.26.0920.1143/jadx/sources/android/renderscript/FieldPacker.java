package android.renderscript;

import android.accessibilityservice.c;
import android.util.Log;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class FieldPacker {
    private BitSet mAlignment;
    private byte[] mData;
    private int mLen;
    private int mPos;

    public FieldPacker(int i2) {
        this.mPos = 0;
        this.mLen = i2;
        this.mData = new byte[i2];
        this.mAlignment = new BitSet();
    }

    private void add(Object obj) {
        if (obj instanceof Boolean) {
            addBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Byte) {
            addI8(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            addI16(((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Integer) {
            addI32(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            addI64(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            addF32(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            addF64(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Byte2) {
            addI8((Byte2) obj);
            return;
        }
        if (obj instanceof Byte3) {
            addI8((Byte3) obj);
            return;
        }
        if (obj instanceof Byte4) {
            addI8((Byte4) obj);
            return;
        }
        if (obj instanceof Short2) {
            addI16((Short2) obj);
            return;
        }
        if (obj instanceof Short3) {
            addI16((Short3) obj);
            return;
        }
        if (obj instanceof Short4) {
            addI16((Short4) obj);
            return;
        }
        if (obj instanceof Int2) {
            addI32((Int2) obj);
            return;
        }
        if (obj instanceof Int3) {
            addI32((Int3) obj);
            return;
        }
        if (obj instanceof Int4) {
            addI32((Int4) obj);
            return;
        }
        if (obj instanceof Long2) {
            addI64((Long2) obj);
            return;
        }
        if (obj instanceof Long3) {
            addI64((Long3) obj);
            return;
        }
        if (obj instanceof Long4) {
            addI64((Long4) obj);
            return;
        }
        if (obj instanceof Float2) {
            addF32((Float2) obj);
            return;
        }
        if (obj instanceof Float3) {
            addF32((Float3) obj);
            return;
        }
        if (obj instanceof Float4) {
            addF32((Float4) obj);
            return;
        }
        if (obj instanceof Double2) {
            addF64((Double2) obj);
            return;
        }
        if (obj instanceof Double3) {
            addF64((Double3) obj);
            return;
        }
        if (obj instanceof Double4) {
            addF64((Double4) obj);
            return;
        }
        if (obj instanceof Matrix2f) {
            addMatrix((Matrix2f) obj);
            return;
        }
        if (obj instanceof Matrix3f) {
            addMatrix((Matrix3f) obj);
        } else if (obj instanceof Matrix4f) {
            addMatrix((Matrix4f) obj);
        } else if (obj instanceof BaseObj) {
            addObj((BaseObj) obj);
        }
    }

    private void addSafely(Object obj) {
        boolean z2;
        int i2 = this.mPos;
        do {
            try {
                add(obj);
                z2 = false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                this.mPos = i2;
                resize(this.mLen * 2);
                z2 = true;
            }
        } while (z2);
    }

    public static FieldPacker createFromArray(Object[] objArr) {
        FieldPacker fieldPacker = new FieldPacker(RenderScript.sPointerSize * 8);
        for (Object obj : objArr) {
            fieldPacker.addSafely(obj);
        }
        fieldPacker.resize(fieldPacker.mPos);
        return fieldPacker;
    }

    private boolean resize(int i2) {
        if (i2 == this.mLen) {
            return false;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.mData, 0, bArr, 0, this.mPos);
        this.mData = bArr;
        this.mLen = i2;
        return true;
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
        bArr[i2] = (byte) (s2 & 255);
        this.mPos = i3 + 1;
        bArr[i3] = (byte) (s2 >> 8);
    }

    public void addI32(int i2) {
        align(4);
        byte[] bArr = this.mData;
        int i3 = this.mPos;
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >> 8) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >> 16) & 255);
        this.mPos = i6 + 1;
        bArr[i6] = (byte) ((i2 >> 24) & 255);
    }

    public void addI64(long j2) {
        align(8);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j2 >> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j2 >> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j2 >> 32) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j2 >> 40) & 255);
        int i9 = i8 + 1;
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
            if (RenderScript.sPointerSize != 8) {
                addI32((int) baseObj.getID(null));
                return;
            }
            addI64(baseObj.getID(null));
            addI64(0L);
            addI64(0L);
            addI64(0L);
            return;
        }
        if (RenderScript.sPointerSize != 8) {
            addI32(0);
            return;
        }
        addI64(0L);
        addI64(0L);
        addI64(0L);
        addI64(0L);
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
        bArr[i3] = (byte) (i2 & 255);
        this.mPos = i4 + 1;
        bArr[i4] = (byte) (i2 >> 8);
    }

    public void addU32(long j2) {
        if (j2 < 0 || j2 > 4294967295L) {
            Log.e("rs", "FieldPacker.addU32( " + j2 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(4);
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
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
        bArr[i2] = (byte) (j2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j2 >> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j2 >> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j2 >> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j2 >> 32) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j2 >> 40) & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((j2 >> 48) & 255);
        this.mPos = i9 + 1;
        bArr[i9] = (byte) ((j2 >> 56) & 255);
    }

    public void addU8(short s2) {
        if (s2 < 0 || s2 > 255) {
            Log.e("rs", "FieldPacker.addU8( " + ((int) s2) + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        byte[] bArr = this.mData;
        int i2 = this.mPos;
        this.mPos = i2 + 1;
        bArr[i2] = (byte) s2;
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
        throw new RSIllegalArgumentException(c.d("argument must be a non-negative non-zero power of 2: ", i2));
    }

    public final byte[] getData() {
        return this.mData;
    }

    public int getPos() {
        return this.mPos;
    }

    public void reset() {
        this.mPos = 0;
    }

    public void skip(int i2) {
        int i3 = this.mPos + i2;
        if (i3 < 0 || i3 > this.mLen) {
            throw new RSIllegalArgumentException(c.d("out of range argument: ", i2));
        }
        this.mPos = i3;
    }

    public boolean subBoolean() {
        return subI8() == 1;
    }

    public Byte2 subByte2() {
        Byte2 byte2 = new Byte2();
        byte2.f129y = subI8();
        byte2.f128x = subI8();
        return byte2;
    }

    public Byte3 subByte3() {
        Byte3 byte3 = new Byte3();
        byte3.f132z = subI8();
        byte3.f131y = subI8();
        byte3.f130x = subI8();
        return byte3;
    }

    public Byte4 subByte4() {
        Byte4 byte4 = new Byte4();
        byte4.f133w = subI8();
        byte4.f136z = subI8();
        byte4.f135y = subI8();
        byte4.f134x = subI8();
        return byte4;
    }

    public Double2 subDouble2() {
        Double2 double2 = new Double2();
        double2.f138y = subF64();
        double2.f137x = subF64();
        return double2;
    }

    public Double3 subDouble3() {
        Double3 double3 = new Double3();
        double3.f141z = subF64();
        double3.f140y = subF64();
        double3.f139x = subF64();
        return double3;
    }

    public Double4 subDouble4() {
        Double4 double4 = new Double4();
        double4.f142w = subF64();
        double4.f145z = subF64();
        double4.f144y = subF64();
        double4.f143x = subF64();
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
        float2.f147y = subF32();
        float2.f146x = subF32();
        return float2;
    }

    public Float3 subFloat3() {
        Float3 float3 = new Float3();
        float3.f150z = subF32();
        float3.f149y = subF32();
        float3.f148x = subF32();
        return float3;
    }

    public Float4 subFloat4() {
        Float4 float4 = new Float4();
        float4.f151w = subF32();
        float4.f154z = subF32();
        float4.f153y = subF32();
        float4.f152x = subF32();
        return float4;
    }

    public short subI16() {
        subalign(2);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        short s2 = (short) ((bArr[i2] & 255) << 8);
        int i3 = i2 - 1;
        this.mPos = i3;
        return (short) (((short) (bArr[i3] & 255)) | s2);
    }

    public int subI32() {
        subalign(4);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        int i3 = (bArr[i2] & 255) << 24;
        int i4 = i2 - 1;
        int i5 = i3 | ((bArr[i4] & 255) << 16);
        int i6 = i4 - 1;
        int i7 = i5 | ((bArr[i6] & 255) << 8);
        int i8 = i6 - 1;
        this.mPos = i8;
        return (bArr[i8] & 255) | i7;
    }

    public long subI64() {
        subalign(8);
        byte[] bArr = this.mData;
        int i2 = this.mPos - 1;
        long j2 = ((((long) bArr[i2]) & 255) << 56) | 0;
        int i3 = i2 - 1;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 48);
        int i4 = i3 - 1;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 40);
        int i5 = i4 - 1;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i6 = i5 - 1;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 24);
        int i7 = i6 - 1;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 16);
        int i8 = i7 - 1;
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
        int2.f156y = subI32();
        int2.f155x = subI32();
        return int2;
    }

    public Int3 subInt3() {
        Int3 int3 = new Int3();
        int3.f159z = subI32();
        int3.f158y = subI32();
        int3.f157x = subI32();
        return int3;
    }

    public Int4 subInt4() {
        Int4 int4 = new Int4();
        int4.f160w = subI32();
        int4.f163z = subI32();
        int4.f162y = subI32();
        int4.f161x = subI32();
        return int4;
    }

    public Long2 subLong2() {
        Long2 long2 = new Long2();
        long2.f165y = subI64();
        long2.f164x = subI64();
        return long2;
    }

    public Long3 subLong3() {
        Long3 long3 = new Long3();
        long3.f168z = subI64();
        long3.f167y = subI64();
        long3.f166x = subI64();
        return long3;
    }

    public Long4 subLong4() {
        Long4 long4 = new Long4();
        long4.f169w = subI64();
        long4.f172z = subI64();
        long4.f171y = subI64();
        long4.f170x = subI64();
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
        short2.f177y = subI16();
        short2.f176x = subI16();
        return short2;
    }

    public Short3 subShort3() {
        Short3 short3 = new Short3();
        short3.f180z = subI16();
        short3.f179y = subI16();
        short3.f178x = subI16();
        return short3;
    }

    public Short4 subShort4() {
        Short4 short4 = new Short4();
        short4.f181w = subI16();
        short4.f184z = subI16();
        short4.f183y = subI16();
        short4.f182x = subI16();
        return short4;
    }

    public void subalign(int i2) {
        int i3;
        int i4 = i2 - 1;
        if ((i2 & i4) != 0) {
            throw new RSIllegalArgumentException(c.d("argument must be a non-negative non-zero power of 2: ", i2));
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
        addF32(float2.f146x);
        addF32(float2.f147y);
    }

    public void addF64(Double2 double2) {
        addF64(double2.f137x);
        addF64(double2.f138y);
    }

    public void addI8(Byte2 byte2) {
        addI8(byte2.f128x);
        addI8(byte2.f129y);
    }

    public void reset(int i2) {
        if (i2 < 0 || i2 > this.mLen) {
            throw new RSIllegalArgumentException(c.d("out of range argument: ", i2));
        }
        this.mPos = i2;
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
        addF32(float3.f148x);
        addF32(float3.f149y);
        addF32(float3.f150z);
    }

    public void addF64(Double3 double3) {
        addF64(double3.f139x);
        addF64(double3.f140y);
        addF64(double3.f141z);
    }

    public void addI16(Short2 short2) {
        addI16(short2.f176x);
        addI16(short2.f177y);
    }

    public void addI8(Byte3 byte3) {
        addI8(byte3.f130x);
        addI8(byte3.f131y);
        addI8(byte3.f132z);
    }

    public void addU8(Short2 short2) {
        addU8(short2.f176x);
        addU8(short2.f177y);
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
        this.mPos = bArr.length;
        this.mLen = bArr.length;
        this.mData = bArr;
        this.mAlignment = new BitSet();
    }

    public void addI16(Short3 short3) {
        addI16(short3.f178x);
        addI16(short3.f179y);
        addI16(short3.f180z);
    }

    public void addI32(Int2 int2) {
        addI32(int2.f155x);
        addI32(int2.f156y);
    }

    public void addU16(Int2 int2) {
        addU16(int2.f155x);
        addU16(int2.f156y);
    }

    public void addU8(Short3 short3) {
        addU8(short3.f178x);
        addU8(short3.f179y);
        addU8(short3.f180z);
    }

    public void addF32(Float4 float4) {
        addF32(float4.f152x);
        addF32(float4.f153y);
        addF32(float4.f154z);
        addF32(float4.f151w);
    }

    public void addF64(Double4 double4) {
        addF64(double4.f143x);
        addF64(double4.f144y);
        addF64(double4.f145z);
        addF64(double4.f142w);
    }

    public void addI8(Byte4 byte4) {
        addI8(byte4.f134x);
        addI8(byte4.f135y);
        addI8(byte4.f136z);
        addI8(byte4.f133w);
    }

    public void addI32(Int3 int3) {
        addI32(int3.f157x);
        addI32(int3.f158y);
        addI32(int3.f159z);
    }

    public void addU16(Int3 int3) {
        addU16(int3.f157x);
        addU16(int3.f158y);
        addU16(int3.f159z);
    }

    public void addU32(Long2 long2) {
        addU32(long2.f164x);
        addU32(long2.f165y);
    }

    public void addI16(Short4 short4) {
        addI16(short4.f182x);
        addI16(short4.f183y);
        addI16(short4.f184z);
        addI16(short4.f181w);
    }

    public void addU8(Short4 short4) {
        addU8(short4.f182x);
        addU8(short4.f183y);
        addU8(short4.f184z);
        addU8(short4.f181w);
    }

    public void addI64(Long2 long2) {
        addI64(long2.f164x);
        addI64(long2.f165y);
    }

    public void addU32(Long3 long3) {
        addU32(long3.f166x);
        addU32(long3.f167y);
        addU32(long3.f168z);
    }

    public void addI32(Int4 int4) {
        addI32(int4.f161x);
        addI32(int4.f162y);
        addI32(int4.f163z);
        addI32(int4.f160w);
    }

    public void addU16(Int4 int4) {
        addU16(int4.f161x);
        addU16(int4.f162y);
        addU16(int4.f163z);
        addU16(int4.f160w);
    }

    public void addI64(Long3 long3) {
        addI64(long3.f166x);
        addI64(long3.f167y);
        addI64(long3.f168z);
    }

    public void addU64(Long2 long2) {
        addU64(long2.f164x);
        addU64(long2.f165y);
    }

    public void addU32(Long4 long4) {
        addU32(long4.f170x);
        addU32(long4.f171y);
        addU32(long4.f172z);
        addU32(long4.f169w);
    }

    public void addU64(Long3 long3) {
        addU64(long3.f166x);
        addU64(long3.f167y);
        addU64(long3.f168z);
    }

    public void addI64(Long4 long4) {
        addI64(long4.f170x);
        addI64(long4.f171y);
        addI64(long4.f172z);
        addI64(long4.f169w);
    }

    public void addU64(Long4 long4) {
        addU64(long4.f170x);
        addU64(long4.f171y);
        addU64(long4.f172z);
        addU64(long4.f169w);
    }
}
