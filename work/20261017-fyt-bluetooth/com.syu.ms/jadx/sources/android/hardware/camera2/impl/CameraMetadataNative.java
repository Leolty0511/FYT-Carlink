package android.hardware.camera2.impl;

import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.Face;
import android.hardware.camera2.Rational;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class CameraMetadataNative extends CameraMetadata implements Parcelable {
    public static final Parcelable.Creator<CameraMetadataNative> CREATOR;
    private static final int NATIVE_JPEG_FORMAT = 33;
    public static final int NUM_TYPES = 6;
    private static final String TAG = "CameraMetadataJV";
    public static final int TYPE_BYTE = 0;
    public static final int TYPE_DOUBLE = 4;
    public static final int TYPE_FLOAT = 2;
    public static final int TYPE_INT32 = 1;
    public static final int TYPE_INT64 = 3;
    public static final int TYPE_RATIONAL = 5;
    private static final boolean VERBOSE;
    private static final HashMap<Class<? extends Enum>, int[]> sEnumValues;
    public static HashMap<Class<?>, MetadataMarshalClass<?>> sMarshalerMap;
    private long mMetadataPtr;

    static {
        boolean zIsLoggable = Log.isLoggable(TAG, 2);
        VERBOSE = zIsLoggable;
        CREATOR = new Parcelable.Creator<CameraMetadataNative>() { // from class: android.hardware.camera2.impl.CameraMetadataNative.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CameraMetadataNative createFromParcel(Parcel parcel) {
                CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
                cameraMetadataNative.readFromParcel(parcel);
                return cameraMetadataNative;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CameraMetadataNative[] newArray(int i2) {
                return new CameraMetadataNative[i2];
            }
        };
        sEnumValues = new HashMap<>();
        sMarshalerMap = new HashMap<>();
        nativeClassInit();
        if (zIsLoggable) {
            Log.v(TAG, "Shall register metadata marshalers");
        }
        registerMarshaler(new MetadataMarshalRect());
        registerMarshaler(new MetadataMarshalSize());
        registerMarshaler(new MetadataMarshalString());
        if (zIsLoggable) {
            Log.v(TAG, "Registered metadata marshalers");
        }
    }

    public CameraMetadataNative() {
        long jNativeAllocate = nativeAllocate();
        this.mMetadataPtr = jNativeAllocate;
        if (jNativeAllocate == 0) {
            throw new OutOfMemoryError("Failed to allocate native CameraMetadata");
        }
    }

    private void close() {
        nativeClose();
        this.mMetadataPtr = 0L;
    }

    private Rect[] fixFaceRectangles() {
        Rect[] rectArr = (Rect[]) getBase(CaptureResult.STATISTICS_FACE_RECTANGLES);
        if (rectArr == null) {
            return null;
        }
        Rect[] rectArr2 = new Rect[rectArr.length];
        for (int i2 = 0; i2 < rectArr.length; i2++) {
            rectArr2[i2] = new Rect(rectArr[i2].left, rectArr[i2].top, rectArr[i2].right - rectArr[i2].left, rectArr[i2].bottom - rectArr[i2].top);
        }
        return rectArr2;
    }

    private int[] getAvailableFormats() {
        int[] iArr = (int[]) getBase(CameraCharacteristics.SCALER_AVAILABLE_FORMATS);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == 33) {
                iArr[i2] = 256;
            }
        }
        return iArr;
    }

    private <T> T getBase(CameraMetadata.Key<T> key) {
        int tag = key.getTag();
        byte[] values = readValues(tag);
        if (values == null) {
            return null;
        }
        return (T) unpackSingle(ByteBuffer.wrap(values).order(ByteOrder.nativeOrder()), key.getType(), getNativeType(tag));
    }

    private static <T extends Enum<T>> T getEnumFromValue(Class<T> cls, int i2) {
        int i3;
        int[] iArr = sEnumValues.get(cls);
        if (iArr != null) {
            i3 = -1;
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] == i2) {
                    i3 = i4;
                    break;
                }
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

    private static <T extends Enum<T>> int getEnumValue(T t2) {
        int[] iArr = sEnumValues.get(t2.getClass());
        int iOrdinal = t2.ordinal();
        return iArr != null ? iArr[iOrdinal] : iOrdinal;
    }

    private static Class<?> getExpectedType(int i2) {
        if (i2 == 0) {
            return Byte.TYPE;
        }
        if (i2 == 1) {
            return Integer.TYPE;
        }
        if (i2 == 2) {
            return Float.TYPE;
        }
        if (i2 == 3) {
            return Long.TYPE;
        }
        if (i2 == 4) {
            return Double.TYPE;
        }
        if (i2 == 5) {
            return Rational.class;
        }
        throw new UnsupportedOperationException("Unknown type, can't map to Java type " + i2);
    }

    private Face[] getFaces() {
        Integer num = (Integer) get(CaptureResult.STATISTICS_FACE_DETECT_MODE);
        int i2 = 0;
        Integer num2 = 1;
        if (num == null) {
            Log.w(TAG, "Face detect mode metadata is null, assuming the mode is SIMPLE");
            num = num2;
        } else {
            if (num.intValue() == 0) {
                return new Face[0];
            }
            if (num.intValue() != 1 && num.intValue() != 2) {
                Log.w(TAG, "Unknown face detect mode: " + num);
                return new Face[0];
            }
        }
        byte[] bArr = (byte[]) get(CaptureResult.STATISTICS_FACE_SCORES);
        Rect[] rectArr = (Rect[]) get(CaptureResult.STATISTICS_FACE_RECTANGLES);
        if (bArr == null || rectArr == null) {
            Log.w(TAG, "Expect face scores and rectangles to be non-null");
            return new Face[0];
        }
        if (bArr.length != rectArr.length) {
            Log.w(TAG, String.format("Face score size(%d) doesn match face rectangle size(%d)!", Integer.valueOf(bArr.length), Integer.valueOf(rectArr.length)));
        }
        int iMin = Math.min(bArr.length, rectArr.length);
        int[] iArr = (int[]) get(CaptureResult.STATISTICS_FACE_IDS);
        int[] iArr2 = (int[]) get(CaptureResult.STATISTICS_FACE_LANDMARKS);
        if (num.intValue() != 2) {
            num2 = num;
        } else if (iArr == null || iArr2 == null) {
            Log.w(TAG, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode");
        } else {
            if (iArr.length != iMin || iArr2.length != iMin * 6) {
                Log.w(TAG, String.format("Face id size(%d), or face landmark size(%d) don'tmatch face number(%d)!", Integer.valueOf(iArr.length), Integer.valueOf(iArr2.length * 6), Integer.valueOf(iMin)));
            }
            iMin = Math.min(Math.min(iMin, iArr.length), iArr2.length / 6);
            num2 = num;
        }
        ArrayList arrayList = new ArrayList();
        if (num2.intValue() == 1) {
            while (i2 < iMin) {
                if (bArr[i2] <= 100 && bArr[i2] >= 1) {
                    arrayList.add(new Face(rectArr[i2], bArr[i2]));
                }
                i2++;
            }
        } else {
            while (i2 < iMin) {
                if (bArr[i2] <= 100 && bArr[i2] >= 1 && iArr[i2] >= 0) {
                    int i3 = i2 * 6;
                    arrayList.add(new Face(rectArr[i2], bArr[i2], iArr[i2], new Point(iArr2[i3], iArr2[i3 + 1]), new Point(iArr2[i3 + 2], iArr2[i3 + 3]), new Point(iArr2[i3 + 4], iArr2[i3 + 5])));
                }
                i2++;
            }
        }
        Face[] faceArr = new Face[arrayList.size()];
        arrayList.toArray(faceArr);
        return faceArr;
    }

    private static <T> MetadataMarshalClass<T> getMarshaler(Class<T> cls, int i2) {
        MetadataMarshalClass<T> metadataMarshalClass = (MetadataMarshalClass) sMarshalerMap.get(cls);
        if (metadataMarshalClass == null || metadataMarshalClass.isNativeTypeSupported(i2)) {
            return metadataMarshalClass;
        }
        throw new UnsupportedOperationException("Unsupported type " + i2 + " to be marshalled to/from a " + cls);
    }

    public static int getNativeType(int i2) {
        return nativeGetTypeFromTag(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T getOverride(CameraMetadata.Key<T> key) {
        if (key.equals(CameraCharacteristics.SCALER_AVAILABLE_FORMATS)) {
            return (T) getAvailableFormats();
        }
        if (key.equals(CaptureResult.STATISTICS_FACES)) {
            return (T) getFaces();
        }
        if (key.equals(CaptureResult.STATISTICS_FACE_RECTANGLES)) {
            return (T) fixFaceRectangles();
        }
        return null;
    }

    public static int getTag(String str) {
        return nativeGetTagFromKey(str);
    }

    private static int getTypeSize(int i2) {
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1 || i2 == 2) {
            return 4;
        }
        if (i2 == 3 || i2 == 4 || i2 == 5) {
            return 8;
        }
        throw new UnsupportedOperationException("Unknown type, can't get size " + i2);
    }

    private native long nativeAllocate();

    private native long nativeAllocateCopy(CameraMetadataNative cameraMetadataNative);

    private static native void nativeClassInit();

    private native synchronized void nativeClose();

    private native synchronized int nativeGetEntryCount();

    private static native int nativeGetTagFromKey(String str);

    private static native int nativeGetTypeFromTag(int i2);

    private native synchronized boolean nativeIsEmpty();

    private native synchronized void nativeReadFromParcel(Parcel parcel);

    private native synchronized byte[] nativeReadValues(int i2);

    private native synchronized void nativeSwap(CameraMetadataNative cameraMetadataNative);

    private native synchronized void nativeWriteToParcel(Parcel parcel);

    private native synchronized void nativeWriteValues(int i2, byte[] bArr);

    private static <T> int packArray(T t2, ByteBuffer byteBuffer, Class<T> cls, int i2, boolean z2) {
        int length = Array.getLength(t2);
        Class<?> componentType = cls.getComponentType();
        int iPackSingle = 0;
        for (int i3 = 0; i3 < length; i3++) {
            iPackSingle += packSingle(Array.get(t2, i3), byteBuffer, componentType, i2, z2);
        }
        return iPackSingle;
    }

    private static <T> int packClass(T t2, ByteBuffer byteBuffer, Class<T> cls, int i2, boolean z2) {
        MetadataMarshalClass marshaler = getMarshaler(cls, i2);
        if (marshaler != null) {
            return marshaler.marshal(t2, byteBuffer, i2, z2);
        }
        throw new IllegalArgumentException(String.format("Unknown Key type: %s", cls));
    }

    private static <T extends Enum<T>> int packEnum(T t2, ByteBuffer byteBuffer, Class<T> cls, int i2, boolean z2) {
        return packSingleNative(Integer.valueOf(getEnumValue(t2)), byteBuffer, Integer.TYPE, i2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> int packSingle(T t2, ByteBuffer byteBuffer, Class<T> cls, int i2, boolean z2) {
        if (cls.isPrimitive() || cls == Rational.class) {
            return packSingleNative(t2, byteBuffer, cls, i2, z2);
        }
        if (cls.isEnum()) {
            return packEnum((Enum) t2, byteBuffer, cls, i2, z2);
        }
        return cls.isArray() ? packArray(t2, byteBuffer, cls, i2, z2) : packClass(t2, byteBuffer, cls, i2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v7 */
    private static <T> int packSingleNative(T t2, ByteBuffer byteBuffer, Class<T> cls, int i2, boolean z2) {
        boolean z3;
        ?? r2;
        boolean z4;
        if (!z2) {
            if (i2 == 0 && cls == Boolean.TYPE) {
                z4 = (T) Byte.valueOf(((Boolean) t2).booleanValue() ? (byte) 1 : (byte) 0);
            } else if (i2 == 0 && cls == Integer.TYPE) {
                z3 = (T) Byte.valueOf((byte) ((Integer) t2).intValue());
            } else {
                r2 = t2;
                if (cls != getExpectedType(i2)) {
                    throw new UnsupportedOperationException("Tried to pack a type of " + cls + " but we expected the type to be " + getExpectedType(i2));
                }
            }
            if (i2 == 0) {
                r2 = z3;
                r2 = z4;
                byteBuffer.put(((Byte) r2).byteValue());
            } else {
                r2 = z3;
                if (i2 == 1) {
                    r2 = z4;
                    byteBuffer.putInt(((Integer) r2).intValue());
                } else if (i2 == 2) {
                    r2 = z4;
                    byteBuffer.putFloat(((Float) r2).floatValue());
                } else if (i2 == 3) {
                    r2 = z4;
                    byteBuffer.putLong(((Long) r2).longValue());
                } else if (i2 == 4) {
                    r2 = z4;
                    byteBuffer.putDouble(((Double) r2).doubleValue());
                } else if (i2 == 5) {
                    r2 = z4;
                    Rational rational = (Rational) r2;
                    byteBuffer.putInt(rational.getNumerator());
                    byteBuffer.putInt(rational.getDenominator());
                }
            }
        }
        r2 = z4;
        return getTypeSize(i2);
    }

    public static <T extends Enum<T>> void registerEnumValues(Class<T> cls, int[] iArr) {
        if (cls.getEnumConstants().length != iArr.length) {
            throw new IllegalArgumentException("Expected values array to be the same size as the enumTypes values " + iArr.length + " for type " + cls);
        }
        if (VERBOSE) {
            Log.v(TAG, "Registered enum values for type " + cls + " values");
        }
        sEnumValues.put(cls, iArr);
    }

    private static <T> void registerMarshaler(MetadataMarshalClass<T> metadataMarshalClass) {
        sMarshalerMap.put(metadataMarshalClass.getMarshalingClass(), metadataMarshalClass);
    }

    private boolean setAvailableFormats(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = iArr[i2];
            if (iArr[i2] == 256) {
                iArr2[i2] = 33;
            }
        }
        setBase(CameraCharacteristics.SCALER_AVAILABLE_FORMATS, iArr2);
        return true;
    }

    private <T> void setBase(CameraMetadata.Key<T> key, T t2) {
        int tag = key.getTag();
        if (t2 == null) {
            writeValues(tag, null);
            return;
        }
        int nativeType = getNativeType(tag);
        byte[] bArr = new byte[packSingle(t2, null, key.getType(), nativeType, true)];
        packSingle(t2, ByteBuffer.wrap(bArr).order(ByteOrder.nativeOrder()), key.getType(), nativeType, false);
        writeValues(tag, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> boolean setOverride(CameraMetadata.Key<T> key, T t2) {
        if (key.equals(CameraCharacteristics.SCALER_AVAILABLE_FORMATS)) {
            return setAvailableFormats((int[]) t2);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T unpackArray(ByteBuffer byteBuffer, Class<T> cls, int i2) {
        T t2;
        Class<?> componentType = cls.getComponentType();
        int typeSize = getTypeSize(i2);
        MetadataMarshalClass marshaler = getMarshaler(componentType, i2);
        if (marshaler != null) {
            typeSize = marshaler.getNativeSize(i2);
        }
        if (typeSize != -1) {
            int iRemaining = byteBuffer.remaining();
            int i3 = iRemaining / typeSize;
            if (VERBOSE) {
                Log.v(TAG, String.format("Attempting to unpack array (count = %d, element size = %d, bytes remaining = %d) for type %s", Integer.valueOf(i3), Integer.valueOf(typeSize), Integer.valueOf(iRemaining), cls));
            }
            t2 = (T) Array.newInstance(componentType, i3);
            for (int i4 = 0; i4 < i3; i4++) {
                Array.set(t2, i4, unpackSingle(byteBuffer, componentType, i2));
            }
        } else {
            ArrayList arrayList = new ArrayList();
            int typeSize2 = getTypeSize(i2);
            while (byteBuffer.remaining() >= typeSize2) {
                arrayList.add(unpackSingle(byteBuffer, componentType, i2));
            }
            t2 = (T) arrayList.toArray((Object[]) Array.newInstance(componentType, 0));
        }
        if (byteBuffer.remaining() != 0) {
            Log.e(TAG, "Trailing bytes (" + byteBuffer.remaining() + ") left over after unpacking " + cls);
        }
        return t2;
    }

    private static <T> T unpackClass(ByteBuffer byteBuffer, Class<T> cls, int i2) {
        MetadataMarshalClass marshaler = getMarshaler(cls, i2);
        if (marshaler != null) {
            return (T) marshaler.unmarshal(byteBuffer, i2);
        }
        throw new IllegalArgumentException("Unknown class type: " + cls);
    }

    private static <T extends Enum<T>> T unpackEnum(ByteBuffer byteBuffer, Class<T> cls, int i2) {
        return (T) getEnumFromValue(cls, ((Integer) unpackSingleNative(byteBuffer, Integer.TYPE, i2)).intValue());
    }

    private static <T> T unpackSingle(ByteBuffer byteBuffer, Class<T> cls, int i2) {
        if (cls.isPrimitive() || cls == Rational.class) {
            return (T) unpackSingleNative(byteBuffer, cls, i2);
        }
        if (cls.isEnum()) {
            return (T) unpackEnum(byteBuffer, cls, i2);
        }
        return cls.isArray() ? (T) unpackArray(byteBuffer, cls, i2) : (T) unpackClass(byteBuffer, cls, i2);
    }

    private static <T> T unpackSingleNative(ByteBuffer byteBuffer, Class<T> cls, int i2) {
        T t2;
        if (i2 == 0) {
            t2 = (T) Byte.valueOf(byteBuffer.get());
        } else if (i2 == 1) {
            t2 = (T) Integer.valueOf(byteBuffer.getInt());
        } else if (i2 == 2) {
            t2 = (T) Float.valueOf(byteBuffer.getFloat());
        } else if (i2 == 3) {
            t2 = (T) Long.valueOf(byteBuffer.getLong());
        } else if (i2 == 4) {
            t2 = (T) Double.valueOf(byteBuffer.getDouble());
        } else {
            if (i2 != 5) {
                throw new UnsupportedOperationException("Unknown type, can't unpack a native type " + i2);
            }
            t2 = (T) new Rational(byteBuffer.getInt(), byteBuffer.getInt());
        }
        if (i2 == 0 && cls == Boolean.TYPE) {
            return (T) Boolean.valueOf(((Byte) t2).byteValue() != 0);
        }
        if (i2 == 0 && cls == Integer.TYPE) {
            return (T) Integer.valueOf(((Byte) t2).byteValue());
        }
        if (cls == getExpectedType(i2)) {
            return t2;
        }
        throw new UnsupportedOperationException("Tried to unpack a type of " + cls + " but we expected the type to be " + getExpectedType(i2));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // android.hardware.camera2.CameraMetadata
    public <T> T get(CameraMetadata.Key<T> key) {
        T t2 = (T) getOverride(key);
        return t2 != null ? t2 : (T) getBase(key);
    }

    public int getEntryCount() {
        return nativeGetEntryCount();
    }

    public boolean isEmpty() {
        return nativeIsEmpty();
    }

    public void readFromParcel(Parcel parcel) {
        nativeReadFromParcel(parcel);
    }

    public byte[] readValues(int i2) {
        return nativeReadValues(i2);
    }

    public <T> void set(CameraMetadata.Key<T> key, T t2) {
        if (setOverride(key, t2)) {
            return;
        }
        setBase(key, t2);
    }

    public void swap(CameraMetadataNative cameraMetadataNative) {
        nativeSwap(cameraMetadataNative);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        nativeWriteToParcel(parcel);
    }

    public void writeValues(int i2, byte[] bArr) {
        nativeWriteValues(i2, bArr);
    }

    public CameraMetadataNative(CameraMetadataNative cameraMetadataNative) {
        long jNativeAllocateCopy = nativeAllocateCopy(cameraMetadataNative);
        this.mMetadataPtr = jNativeAllocateCopy;
        if (jNativeAllocateCopy == 0) {
            throw new OutOfMemoryError("Failed to allocate native CameraMetadata");
        }
    }
}
