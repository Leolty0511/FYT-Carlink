package android.os;

import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public class HwBlob {
    private static final String TAG = "HwBlob";
    private static final NativeAllocationRegistry sNativeRegistry = new NativeAllocationRegistry(HwBlob.class.getClassLoader(), native_init(), 128);
    private long mNativeContext;

    public HwBlob(int i2) {
        native_setup(i2);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    private static final native long native_init();

    private final native void native_setup(int i2);

    public static Boolean[] wrapArray(boolean[] zArr) {
        int length = zArr.length;
        Boolean[] boolArr = new Boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            boolArr[i2] = Boolean.valueOf(zArr[i2]);
        }
        return boolArr;
    }

    public final native boolean getBool(long j2);

    public final native double getDouble(long j2);

    public final native float getFloat(long j2);

    public final native short getInt16(long j2);

    public final native int getInt32(long j2);

    public final native long getInt64(long j2);

    public final native byte getInt8(long j2);

    public final native String getString(long j2);

    public final native long handle();

    public final native void putBlob(long j2, HwBlob hwBlob);

    public final native void putBool(long j2, boolean z2);

    public final native void putDouble(long j2, double d2);

    public final native void putFloat(long j2, float f2);

    public final native void putInt16(long j2, short s2);

    public final native void putInt32(long j2, int i2);

    public final native void putInt64(long j2, long j3);

    public final native void putInt8(long j2, byte b2);

    public final native void putString(long j2, String str);

    public static Long[] wrapArray(long[] jArr) {
        int length = jArr.length;
        Long[] lArr = new Long[length];
        for (int i2 = 0; i2 < length; i2++) {
            lArr[i2] = Long.valueOf(jArr[i2]);
        }
        return lArr;
    }

    public static Byte[] wrapArray(byte[] bArr) {
        int length = bArr.length;
        Byte[] bArr2 = new Byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2] = Byte.valueOf(bArr[i2]);
        }
        return bArr2;
    }

    public static Short[] wrapArray(short[] sArr) {
        int length = sArr.length;
        Short[] shArr = new Short[length];
        for (int i2 = 0; i2 < length; i2++) {
            shArr[i2] = Short.valueOf(sArr[i2]);
        }
        return shArr;
    }

    public static Integer[] wrapArray(int[] iArr) {
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i2 = 0; i2 < length; i2++) {
            numArr[i2] = Integer.valueOf(iArr[i2]);
        }
        return numArr;
    }

    public static Float[] wrapArray(float[] fArr) {
        int length = fArr.length;
        Float[] fArr2 = new Float[length];
        for (int i2 = 0; i2 < length; i2++) {
            fArr2[i2] = Float.valueOf(fArr[i2]);
        }
        return fArr2;
    }

    public static Double[] wrapArray(double[] dArr) {
        int length = dArr.length;
        Double[] dArr2 = new Double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr2[i2] = Double.valueOf(dArr[i2]);
        }
        return dArr2;
    }
}
