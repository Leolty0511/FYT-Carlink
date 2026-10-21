package android.hardware.camera2.marshal.impl;

import android.hardware.camera2.marshal.MarshalHelpers;
import android.hardware.camera2.marshal.MarshalQueryable;
import android.hardware.camera2.marshal.Marshaler;
import android.hardware.camera2.utils.TypeReference;
import android.util.Log;
import java.lang.Enum;
import java.nio.ByteBuffer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MarshalQueryableEnum<T extends Enum<T>> implements MarshalQueryable<T> {
    private static final boolean DEBUG = false;
    private static final String TAG = "MarshalQueryableEnum";
    private static final int UINT8_MASK = 255;
    private static final int UINT8_MAX = 255;
    private static final int UINT8_MIN = 0;
    private static final HashMap<Class<? extends Enum>, int[]> sEnumValues = new HashMap<>();

    public class MarshalerEnum extends Marshaler<T> {
        private final Class<T> mClass;

        public MarshalerEnum(TypeReference<T> typeReference, int i2) {
            super(MarshalQueryableEnum.this, typeReference, i2);
            this.mClass = typeReference.getRawType();
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public int getNativeSize() {
            return MarshalHelpers.getPrimitiveTypeSize(this.mNativeType);
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public void marshal(T t2, ByteBuffer byteBuffer) {
            int enumValue = MarshalQueryableEnum.getEnumValue(t2);
            int i2 = this.mNativeType;
            if (i2 == 1) {
                byteBuffer.putInt(enumValue);
            } else {
                if (i2 != 0) {
                    throw new AssertionError();
                }
                if (enumValue < 0 || enumValue > 255) {
                    throw new UnsupportedOperationException(String.format("Enum value %x too large to fit into unsigned byte", Integer.valueOf(enumValue)));
                }
                byteBuffer.put((byte) enumValue);
            }
        }

        @Override // android.hardware.camera2.marshal.Marshaler
        public T unmarshal(ByteBuffer byteBuffer) {
            int i2;
            int i3 = this.mNativeType;
            if (i3 == 0) {
                i2 = byteBuffer.get() & 255;
            } else {
                if (i3 != 1) {
                    throw new AssertionError("Unexpected native type; impossible since its not supported");
                }
                i2 = byteBuffer.getInt();
            }
            return (T) MarshalQueryableEnum.getEnumFromValue(this.mClass, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends Enum<T>> T getEnumFromValue(Class<T> cls, int i2) {
        int i3;
        int[] iArr = sEnumValues.get(cls);
        if (iArr != null) {
            i3 = 0;
            while (true) {
                if (i3 >= iArr.length) {
                    i3 = -1;
                    break;
                }
                if (iArr[i3] == i2) {
                    break;
                }
                i3++;
            }
        } else {
            i3 = i2;
        }
        T[] enumConstants = cls.getEnumConstants();
        if (i3 >= 0 && i3 < enumConstants.length) {
            return enumConstants[i3];
        }
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(i2);
        objArr[1] = cls;
        objArr[2] = Boolean.valueOf(iArr != null);
        throw new IllegalArgumentException(String.format("Argument 'value' (%d) was not a valid enum value for type %s (registered? %b)", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends Enum<T>> int getEnumValue(T t2) {
        int[] iArr = sEnumValues.get(t2.getClass());
        int iOrdinal = t2.ordinal();
        return iArr != null ? iArr[iOrdinal] : iOrdinal;
    }

    public static <T extends Enum<T>> void registerEnumValues(Class<T> cls, int[] iArr) {
        if (cls.getEnumConstants().length == iArr.length) {
            sEnumValues.put(cls, iArr);
            return;
        }
        throw new IllegalArgumentException("Expected values array to be the same size as the enumTypes values " + iArr.length + " for type " + cls);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public Marshaler<T> createMarshaler(TypeReference<T> typeReference, int i2) {
        return new MarshalerEnum(typeReference, i2);
    }

    @Override // android.hardware.camera2.marshal.MarshalQueryable
    public boolean isTypeMappingSupported(TypeReference<T> typeReference, int i2) {
        if ((i2 == 1 || i2 == 0) && (typeReference.getType() instanceof Class)) {
            Class cls = (Class) typeReference.getType();
            if (cls.isEnum()) {
                try {
                    cls.getDeclaredConstructor(String.class, Integer.TYPE);
                    return true;
                } catch (NoSuchMethodException unused) {
                    Log.e(TAG, "Can't marshal class " + cls + "; no default constructor");
                } catch (SecurityException unused2) {
                    Log.e(TAG, "Can't marshal class " + cls + "; not accessible");
                }
            }
        }
        return false;
    }
}
