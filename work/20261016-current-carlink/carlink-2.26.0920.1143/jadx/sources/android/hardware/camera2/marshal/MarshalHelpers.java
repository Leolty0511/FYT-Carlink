package android.hardware.camera2.marshal;

import android.accessibilityservice.c;
import android.util.Rational;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class MarshalHelpers {
    public static final int SIZEOF_BYTE = 1;
    public static final int SIZEOF_DOUBLE = 8;
    public static final int SIZEOF_FLOAT = 4;
    public static final int SIZEOF_INT32 = 4;
    public static final int SIZEOF_INT64 = 8;
    public static final int SIZEOF_RATIONAL = 8;

    private MarshalHelpers() {
        throw new AssertionError();
    }

    public static int checkNativeType(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
            return i2;
        }
        throw new UnsupportedOperationException(c.d("Unknown nativeType ", i2));
    }

    public static int checkNativeTypeEquals(int i2, int i3) {
        if (i2 == i3) {
            return i3;
        }
        throw new UnsupportedOperationException(String.format("Expected native type %d, but got %d", Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static <T> Class<T> checkPrimitiveClass(Class<T> cls) {
        Preconditions.checkNotNull(cls, "klass must not be null");
        if (isPrimitiveClass(cls)) {
            return cls;
        }
        throw new UnsupportedOperationException("Unsupported class '" + cls + "'; expected a metadata primitive class");
    }

    public static int getPrimitiveTypeSize(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1 || i2 == 2) {
            return 4;
        }
        if (i2 == 3 || i2 == 4 || i2 == 5) {
            return 8;
        }
        throw new UnsupportedOperationException(c.d("Unknown type, can't get size for ", i2));
    }

    public static <T> boolean isPrimitiveClass(Class<T> cls) {
        if (cls == null) {
            return false;
        }
        return cls == Byte.TYPE || cls == Byte.class || cls == Integer.TYPE || cls == Integer.class || cls == Float.TYPE || cls == Float.class || cls == Long.TYPE || cls == Long.class || cls == Double.TYPE || cls == Double.class || cls == Rational.class;
    }

    public static String toStringNativeType(int i2) {
        if (i2 == 0) {
            return "TYPE_BYTE";
        }
        if (i2 == 1) {
            return "TYPE_INT32";
        }
        if (i2 == 2) {
            return "TYPE_FLOAT";
        }
        if (i2 == 3) {
            return "TYPE_INT64";
        }
        if (i2 != 4) {
            return i2 != 5 ? c.e("UNKNOWN(", i2, ")") : "TYPE_RATIONAL";
        }
        return "TYPE_DOUBLE";
    }

    public static <T> Class<T> wrapClassIfPrimitive(Class<T> cls) {
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        return cls == Double.TYPE ? Double.class : cls;
    }
}
