package android.hardware.camera2.utils;

/* JADX INFO: loaded from: classes.dex */
public final class HashCodeHelpers {
    public static int hashCode(int... iArr) {
        if (iArr == null) {
            return 0;
        }
        int i2 = 1;
        for (int i3 : iArr) {
            i2 = ((i2 << 5) - i2) ^ i3;
        }
        return i2;
    }

    public static <T> int hashCodeGeneric(T... tArr) {
        if (tArr == null) {
            return 0;
        }
        int length = tArr.length;
        int iHashCode = 1;
        for (int i2 = 0; i2 < length; i2++) {
            T t2 = tArr[i2];
            iHashCode = ((iHashCode << 5) - iHashCode) ^ (t2 == null ? 0 : t2.hashCode());
        }
        return iHashCode;
    }

    public static int hashCode(float... fArr) {
        if (fArr == null) {
            return 0;
        }
        int iFloatToIntBits = 1;
        for (float f2 : fArr) {
            iFloatToIntBits = ((iFloatToIntBits << 5) - iFloatToIntBits) ^ Float.floatToIntBits(f2);
        }
        return iFloatToIntBits;
    }
}
