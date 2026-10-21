package android.os;

import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.widget.GridLayout;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import dalvik.system.VMRuntime;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import libcore.util.SneakyThrow;

/* JADX INFO: loaded from: classes.dex */
public final class Parcel {
    private static final boolean DEBUG_ARRAY_MAP = false;
    private static final boolean DEBUG_RECYCLE = false;
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_HAS_REPLY_HEADER = -128;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_SERVICE_SPECIFIC = -8;
    private static final int EX_TRANSACTION_FAILED = -129;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final int POOL_SIZE = 6;
    private static final String TAG = "Parcel";
    private static final int VAL_BOOLEAN = 9;
    private static final int VAL_BOOLEANARRAY = 23;
    private static final int VAL_BUNDLE = 3;
    private static final int VAL_BYTE = 20;
    private static final int VAL_BYTEARRAY = 13;
    private static final int VAL_CHARSEQUENCE = 10;
    private static final int VAL_CHARSEQUENCEARRAY = 24;
    private static final int VAL_DOUBLE = 8;
    private static final int VAL_DOUBLEARRAY = 28;
    private static final int VAL_FLOAT = 7;
    private static final int VAL_IBINDER = 15;
    private static final int VAL_INTARRAY = 18;
    private static final int VAL_INTEGER = 1;
    private static final int VAL_LIST = 11;
    private static final int VAL_LONG = 6;
    private static final int VAL_LONGARRAY = 19;
    private static final int VAL_MAP = 2;
    private static final int VAL_NULL = -1;
    private static final int VAL_OBJECTARRAY = 17;
    private static final int VAL_PARCELABLE = 4;
    private static final int VAL_PARCELABLEARRAY = 16;
    private static final int VAL_PERSISTABLEBUNDLE = 25;
    private static final int VAL_SERIALIZABLE = 21;
    private static final int VAL_SHORT = 5;
    private static final int VAL_SIZE = 26;
    private static final int VAL_SIZEF = 27;
    private static final int VAL_SPARSEARRAY = 12;
    private static final int VAL_SPARSEBOOLEANARRAY = 22;
    private static final int VAL_STRING = 0;
    private static final int VAL_STRINGARRAY = 14;
    private ArrayMap<Class, Object> mClassCookies;
    private long mNativePtr;
    private long mNativeSize;
    private boolean mOwnsNativeParcelObject;
    private ReadWriteHelper mReadWriteHelper = ReadWriteHelper.DEFAULT;
    private RuntimeException mStack;
    private static final Parcel[] sOwnedPool = new Parcel[6];
    private static final Parcel[] sHolderPool = new Parcel[6];
    public static final Parcelable.Creator<String> STRING_CREATOR = new Parcelable.Creator<String>() { // from class: android.os.Parcel.1
        @Override // android.os.Parcelable.Creator
        public String createFromParcel(Parcel parcel) {
            return parcel.readString();
        }

        @Override // android.os.Parcelable.Creator
        public String[] newArray(int i2) {
            return new String[i2];
        }
    };
    private static final HashMap<ClassLoader, HashMap<String, Parcelable.Creator<?>>> mCreators = new HashMap<>();

    public static class ReadWriteHelper {
        public static final ReadWriteHelper DEFAULT = new ReadWriteHelper();

        public String readString(Parcel parcel) {
            return Parcel.nativeReadString(parcel.mNativePtr);
        }

        public void writeString(Parcel parcel, String str) {
            Parcel.nativeWriteString(parcel.mNativePtr, str);
        }
    }

    private Parcel(long j2) {
        init(j2);
    }

    public static native void clearFileDescriptor(FileDescriptor fileDescriptor);

    @Deprecated
    public static native void closeFileDescriptor(FileDescriptor fileDescriptor);

    private void destroy() {
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            if (this.mOwnsNativeParcelObject) {
                nativeDestroy(j2);
                updateNativeSize(0L);
            }
            this.mNativePtr = 0L;
        }
        this.mReadWriteHelper = null;
    }

    @Deprecated
    public static native FileDescriptor dupFileDescriptor(FileDescriptor fileDescriptor);

    private void freeBuffer() {
        if (this.mOwnsNativeParcelObject) {
            updateNativeSize(nativeFreeBuffer(this.mNativePtr));
        }
        this.mReadWriteHelper = ReadWriteHelper.DEFAULT;
    }

    public static native long getGlobalAllocCount();

    public static native long getGlobalAllocSize();

    private void init(long j2) {
        if (j2 != 0) {
            this.mNativePtr = j2;
            this.mOwnsNativeParcelObject = false;
        } else {
            this.mNativePtr = nativeCreate();
            this.mOwnsNativeParcelObject = true;
        }
    }

    private static native long nativeAppendFrom(long j2, long j3, int i2, int i3);

    private static native int nativeCompareData(long j2, long j3);

    private static native long nativeCreate();

    private static native byte[] nativeCreateByteArray(long j2);

    @CriticalNative
    private static native int nativeDataAvail(long j2);

    @CriticalNative
    private static native int nativeDataCapacity(long j2);

    @CriticalNative
    private static native int nativeDataPosition(long j2);

    @CriticalNative
    private static native int nativeDataSize(long j2);

    private static native void nativeDestroy(long j2);

    private static native void nativeEnforceInterface(long j2, String str);

    private static native long nativeFreeBuffer(long j2);

    @CriticalNative
    private static native long nativeGetBlobAshmemSize(long j2);

    @CriticalNative
    private static native boolean nativeHasFileDescriptors(long j2);

    private static native byte[] nativeMarshall(long j2);

    @CriticalNative
    private static native boolean nativePushAllowFds(long j2, boolean z2);

    private static native byte[] nativeReadBlob(long j2);

    private static native boolean nativeReadByteArray(long j2, byte[] bArr, int i2);

    @CriticalNative
    private static native double nativeReadDouble(long j2);

    private static native FileDescriptor nativeReadFileDescriptor(long j2);

    @CriticalNative
    private static native float nativeReadFloat(long j2);

    @CriticalNative
    private static native int nativeReadInt(long j2);

    @CriticalNative
    private static native long nativeReadLong(long j2);

    public static native String nativeReadString(long j2);

    private static native IBinder nativeReadStrongBinder(long j2);

    @CriticalNative
    private static native void nativeRestoreAllowFds(long j2, boolean z2);

    @FastNative
    private static native void nativeSetDataCapacity(long j2, int i2);

    @CriticalNative
    private static native void nativeSetDataPosition(long j2, int i2);

    @FastNative
    private static native long nativeSetDataSize(long j2, int i2);

    private static native long nativeUnmarshall(long j2, byte[] bArr, int i2, int i3);

    private static native void nativeWriteBlob(long j2, byte[] bArr, int i2, int i3);

    private static native void nativeWriteByteArray(long j2, byte[] bArr, int i2, int i3);

    @FastNative
    private static native void nativeWriteDouble(long j2, double d2);

    private static native long nativeWriteFileDescriptor(long j2, FileDescriptor fileDescriptor);

    @FastNative
    private static native void nativeWriteFloat(long j2, float f2);

    @FastNative
    private static native void nativeWriteInt(long j2, int i2);

    private static native void nativeWriteInterfaceToken(long j2, String str);

    @FastNative
    private static native void nativeWriteLong(long j2, long j3);

    public static native void nativeWriteString(long j2, String str);

    private static native void nativeWriteStrongBinder(long j2, IBinder iBinder);

    public static Parcel obtain() {
        Parcel[] parcelArr = sOwnedPool;
        synchronized (parcelArr) {
            for (int i2 = 0; i2 < 6; i2++) {
                Parcel parcel = parcelArr[i2];
                if (parcel != null) {
                    parcelArr[i2] = null;
                    parcel.mReadWriteHelper = ReadWriteHelper.DEFAULT;
                    return parcel;
                }
            }
            return new Parcel(0L);
        }
    }

    @Deprecated
    public static native FileDescriptor openFileDescriptor(String str, int i2);

    private void readArrayInternal(Object[] objArr, int i2, ClassLoader classLoader) {
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = readValue(classLoader);
        }
    }

    private void readListInternal(List list, int i2, ClassLoader classLoader) {
        while (i2 > 0) {
            list.add(readValue(classLoader));
            i2--;
        }
    }

    private void readSparseArrayInternal(SparseArray sparseArray, int i2, ClassLoader classLoader) {
        while (i2 > 0) {
            sparseArray.append(readInt(), readValue(classLoader));
            i2--;
        }
    }

    private void readSparseBooleanArrayInternal(SparseBooleanArray sparseBooleanArray, int i2) {
        while (i2 > 0) {
            int i3 = readInt();
            boolean z2 = true;
            if (readByte() != 1) {
                z2 = false;
            }
            sparseBooleanArray.append(i3, z2);
            i2--;
        }
    }

    private void readSparseIntArrayInternal(SparseIntArray sparseIntArray, int i2) {
        while (i2 > 0) {
            sparseIntArray.append(readInt(), readInt());
            i2--;
        }
    }

    private void updateNativeSize(long j2) {
        if (this.mOwnsNativeParcelObject) {
            if (j2 > 2147483647L) {
                j2 = 2147483647L;
            }
            long j3 = this.mNativeSize;
            if (j2 != j3) {
                int i2 = (int) (j2 - j3);
                if (i2 > 0) {
                    VMRuntime.getRuntime().registerNativeAllocation(i2);
                } else {
                    VMRuntime.getRuntime().registerNativeFree(-i2);
                }
                this.mNativeSize = j2;
            }
        }
    }

    public final void adoptClassCookies(Parcel parcel) {
        this.mClassCookies = parcel.mClassCookies;
    }

    public final void appendFrom(Parcel parcel, int i2, int i3) {
        updateNativeSize(nativeAppendFrom(this.mNativePtr, parcel.mNativePtr, i2, i3));
    }

    public final int compareData(Parcel parcel) {
        return nativeCompareData(this.mNativePtr, parcel.mNativePtr);
    }

    public final IBinder[] createBinderArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        IBinder[] iBinderArr = new IBinder[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iBinderArr[i3] = readStrongBinder();
        }
        return iBinderArr;
    }

    public final ArrayList<IBinder> createBinderArrayList() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayList<IBinder> arrayList = new ArrayList<>(i2);
        while (i2 > 0) {
            arrayList.add(readStrongBinder());
            i2--;
        }
        return arrayList;
    }

    public final boolean[] createBooleanArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 2)) {
            return null;
        }
        boolean[] zArr = new boolean[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            zArr[i3] = readInt() != 0;
        }
        return zArr;
    }

    public final byte[] createByteArray() {
        return nativeCreateByteArray(this.mNativePtr);
    }

    public final char[] createCharArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 2)) {
            return null;
        }
        char[] cArr = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            cArr[i3] = (char) readInt();
        }
        return cArr;
    }

    public final double[] createDoubleArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 3)) {
            return null;
        }
        double[] dArr = new double[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            dArr[i3] = readDouble();
        }
        return dArr;
    }

    public final float[] createFloatArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 2)) {
            return null;
        }
        float[] fArr = new float[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            fArr[i3] = readFloat();
        }
        return fArr;
    }

    public final int[] createIntArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 2)) {
            return null;
        }
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = readInt();
        }
        return iArr;
    }

    public final long[] createLongArray() {
        int i2 = readInt();
        if (i2 < 0 || i2 > (dataAvail() >> 3)) {
            return null;
        }
        long[] jArr = new long[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            jArr[i3] = readLong();
        }
        return jArr;
    }

    public final FileDescriptor[] createRawFileDescriptorArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        FileDescriptor[] fileDescriptorArr = new FileDescriptor[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            fileDescriptorArr[i3] = readRawFileDescriptor();
        }
        return fileDescriptorArr;
    }

    public final String[] createStringArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        String[] strArr = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = readString();
        }
        return strArr;
    }

    public final ArrayList<String> createStringArrayList() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>(i2);
        while (i2 > 0) {
            arrayList.add(readString());
            i2--;
        }
        return arrayList;
    }

    public final <T> T[] createTypedArray(Parcelable.Creator<T> creator) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        T[] tArrNewArray = creator.newArray(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            if (readInt() != 0) {
                tArrNewArray[i3] = creator.createFromParcel(this);
            }
        }
        return tArrNewArray;
    }

    public final <T> ArrayList<T> createTypedArrayList(Parcelable.Creator<T> creator) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayList<T> arrayList = new ArrayList<>(i2);
        while (i2 > 0) {
            if (readInt() != 0) {
                arrayList.add(creator.createFromParcel(this));
            } else {
                arrayList.add(null);
            }
            i2--;
        }
        return arrayList;
    }

    public final int dataAvail() {
        return nativeDataAvail(this.mNativePtr);
    }

    public final int dataCapacity() {
        return nativeDataCapacity(this.mNativePtr);
    }

    public final int dataPosition() {
        return nativeDataPosition(this.mNativePtr);
    }

    public final int dataSize() {
        return nativeDataSize(this.mNativePtr);
    }

    public final void enforceInterface(String str) {
        nativeEnforceInterface(this.mNativePtr, str);
    }

    public void finalize() {
        destroy();
    }

    public long getBlobAshmemSize() {
        return nativeGetBlobAshmemSize(this.mNativePtr);
    }

    public final Object getClassCookie(Class cls) {
        ArrayMap<Class, Object> arrayMap = this.mClassCookies;
        if (arrayMap != null) {
            return arrayMap.get(cls);
        }
        return null;
    }

    public final boolean hasFileDescriptors() {
        return nativeHasFileDescriptors(this.mNativePtr);
    }

    public boolean hasReadWriteHelper() {
        ReadWriteHelper readWriteHelper = this.mReadWriteHelper;
        return (readWriteHelper == null || readWriteHelper == ReadWriteHelper.DEFAULT) ? false : true;
    }

    public final byte[] marshall() {
        return nativeMarshall(this.mNativePtr);
    }

    public final boolean pushAllowFds(boolean z2) {
        return nativePushAllowFds(this.mNativePtr, z2);
    }

    public final Object[] readArray(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        Object[] objArr = new Object[i2];
        readArrayInternal(objArr, i2, classLoader);
        return objArr;
    }

    public final ArrayList readArrayList(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i2);
        readListInternal(arrayList, i2, classLoader);
        return arrayList;
    }

    public void readArrayMap(ArrayMap arrayMap, ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return;
        }
        readArrayMapInternal(arrayMap, i2, classLoader);
    }

    public void readArrayMapInternal(ArrayMap arrayMap, int i2, ClassLoader classLoader) {
        while (i2 > 0) {
            arrayMap.append(readString(), readValue(classLoader));
            i2--;
        }
        arrayMap.validate();
    }

    public void readArrayMapSafelyInternal(ArrayMap arrayMap, int i2, ClassLoader classLoader) {
        while (i2 > 0) {
            arrayMap.put(readString(), readValue(classLoader));
            i2--;
        }
    }

    public ArraySet<? extends Object> readArraySet(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArraySet<? extends Object> arraySet = new ArraySet<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arraySet.append(readValue(classLoader));
        }
        return arraySet;
    }

    public final void readBinderArray(IBinder[] iBinderArr) {
        int i2 = readInt();
        if (i2 != iBinderArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            iBinderArr[i3] = readStrongBinder();
        }
    }

    public final void readBinderList(List<IBinder> list) {
        int size = list.size();
        int i2 = readInt();
        int i3 = 0;
        while (i3 < size && i3 < i2) {
            list.set(i3, readStrongBinder());
            i3++;
        }
        while (i3 < i2) {
            list.add(readStrongBinder());
            i3++;
        }
        while (i3 < size) {
            list.remove(i2);
            i3++;
        }
    }

    public final byte[] readBlob() {
        return nativeReadBlob(this.mNativePtr);
    }

    public final boolean readBoolean() {
        return readInt() != 0;
    }

    public final void readBooleanArray(boolean[] zArr) {
        int i2 = readInt();
        if (i2 != zArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            zArr[i3] = readInt() != 0;
        }
    }

    public final Bundle readBundle() {
        return readBundle(null);
    }

    public final byte readByte() {
        return (byte) (readInt() & 255);
    }

    public final void readByteArray(byte[] bArr) {
        if (!nativeReadByteArray(this.mNativePtr, bArr, bArr != null ? bArr.length : 0)) {
            throw new RuntimeException("bad array lengths");
        }
    }

    public final void readCharArray(char[] cArr) {
        int i2 = readInt();
        if (i2 != cArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            cArr[i3] = (char) readInt();
        }
    }

    public final CharSequence readCharSequence() {
        return TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this);
    }

    public final CharSequence[] readCharSequenceArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        CharSequence[] charSequenceArr = new CharSequence[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            charSequenceArr[i3] = readCharSequence();
        }
        return charSequenceArr;
    }

    public final ArrayList<CharSequence> readCharSequenceList() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayList<CharSequence> arrayList = new ArrayList<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(readCharSequence());
        }
        return arrayList;
    }

    public final <T extends Parcelable> T readCreator(Parcelable.Creator<?> creator, ClassLoader classLoader) {
        return creator instanceof Parcelable.ClassLoaderCreator ? (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(this, classLoader) : (T) creator.createFromParcel(this);
    }

    public final double readDouble() {
        return nativeReadDouble(this.mNativePtr);
    }

    public final void readDoubleArray(double[] dArr) {
        int i2 = readInt();
        if (i2 != dArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            dArr[i3] = readDouble();
        }
    }

    public final void readException() {
        int exceptionCode = readExceptionCode();
        if (exceptionCode != 0) {
            readException(exceptionCode, readString());
        }
    }

    public final int readExceptionCode() {
        int i2 = readInt();
        if (i2 != -128) {
            return i2;
        }
        if (readInt() == 0) {
            Log.e(TAG, "Unexpected zero-sized Parcel reply header.");
        } else {
            StrictMode.readAndHandleBinderCallViolations(this);
        }
        return 0;
    }

    public final ParcelFileDescriptor readFileDescriptor() {
        FileDescriptor fileDescriptorNativeReadFileDescriptor = nativeReadFileDescriptor(this.mNativePtr);
        if (fileDescriptorNativeReadFileDescriptor != null) {
            return new ParcelFileDescriptor(fileDescriptorNativeReadFileDescriptor);
        }
        return null;
    }

    public final float readFloat() {
        return nativeReadFloat(this.mNativePtr);
    }

    public final void readFloatArray(float[] fArr) {
        int i2 = readInt();
        if (i2 != fArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            fArr[i3] = readFloat();
        }
    }

    public final HashMap readHashMap(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        HashMap map = new HashMap(i2);
        readMapInternal(map, i2, classLoader);
        return map;
    }

    public final int readInt() {
        return nativeReadInt(this.mNativePtr);
    }

    public final void readIntArray(int[] iArr) {
        int i2 = readInt();
        if (i2 != iArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = readInt();
        }
    }

    public final void readList(List list, ClassLoader classLoader) {
        readListInternal(list, readInt(), classLoader);
    }

    public final long readLong() {
        return nativeReadLong(this.mNativePtr);
    }

    public final void readLongArray(long[] jArr) {
        int i2 = readInt();
        if (i2 != jArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            jArr[i3] = readLong();
        }
    }

    public final void readMap(Map map, ClassLoader classLoader) {
        readMapInternal(map, readInt(), classLoader);
    }

    public void readMapInternal(Map map, int i2, ClassLoader classLoader) {
        while (i2 > 0) {
            map.put(readValue(classLoader), readValue(classLoader));
            i2--;
        }
    }

    public final <T extends Parcelable> T readParcelable(ClassLoader classLoader) {
        Parcelable.Creator<?> parcelableCreator = readParcelableCreator(classLoader);
        if (parcelableCreator == null) {
            return null;
        }
        return parcelableCreator instanceof Parcelable.ClassLoaderCreator ? (T) ((Parcelable.ClassLoaderCreator) parcelableCreator).createFromParcel(this, classLoader) : (T) parcelableCreator.createFromParcel(this);
    }

    public final Parcelable[] readParcelableArray(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            parcelableArr[i3] = readParcelable(classLoader);
        }
        return parcelableArr;
    }

    public final Parcelable.Creator<?> readParcelableCreator(ClassLoader classLoader) {
        Parcelable.Creator<?> creator;
        String string = readString();
        if (string == null) {
            return null;
        }
        HashMap<ClassLoader, HashMap<String, Parcelable.Creator<?>>> map = mCreators;
        synchronized (map) {
            HashMap<String, Parcelable.Creator<?>> map2 = map.get(classLoader);
            if (map2 == null) {
                map2 = new HashMap<>();
                map.put(classLoader, map2);
            }
            creator = map2.get(string);
            if (creator == null) {
                if (classLoader == null) {
                    try {
                        try {
                            classLoader = Parcel.class.getClassLoader();
                        } catch (ClassNotFoundException e2) {
                            Log.e(TAG, "Class not found when unmarshalling: ".concat(string), e2);
                            throw new BadParcelableException("ClassNotFoundException when unmarshalling: ".concat(string));
                        }
                    } catch (IllegalAccessException e3) {
                        Log.e(TAG, "Illegal access when unmarshalling: ".concat(string), e3);
                        throw new BadParcelableException("IllegalAccessException when unmarshalling: ".concat(string));
                    } catch (NoSuchFieldException unused) {
                        throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class ".concat(string));
                    }
                }
                Class<?> cls = Class.forName(string, false, classLoader);
                if (!Parcelable.class.isAssignableFrom(cls)) {
                    throw new BadParcelableException("Parcelable protocol requires that the class implements Parcelable");
                }
                Field field = cls.getField("CREATOR");
                if ((field.getModifiers() & 8) == 0) {
                    throw new BadParcelableException("Parcelable protocol requires the CREATOR object to be static on class ".concat(string));
                }
                if (!Parcelable.Creator.class.isAssignableFrom(field.getType())) {
                    throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class ".concat(string));
                }
                creator = (Parcelable.Creator) field.get(null);
                if (creator == null) {
                    throw new BadParcelableException("Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class ".concat(string));
                }
                map2.put(string, creator);
            }
        }
        return creator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Parcelable> List<T> readParcelableList(List<T> list, ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 == -1) {
            list.clear();
            return list;
        }
        int size = list.size();
        int i3 = 0;
        while (i3 < size && i3 < i2) {
            list.set(i3, readParcelable(classLoader));
            i3++;
        }
        while (i3 < i2) {
            list.add(readParcelable(classLoader));
            i3++;
        }
        while (i3 < size) {
            list.remove(i2);
            i3++;
        }
        return list;
    }

    public final PersistableBundle readPersistableBundle() {
        return readPersistableBundle(null);
    }

    public final FileDescriptor readRawFileDescriptor() {
        return nativeReadFileDescriptor(this.mNativePtr);
    }

    public final void readRawFileDescriptorArray(FileDescriptor[] fileDescriptorArr) {
        int i2 = readInt();
        if (i2 != fileDescriptorArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            fileDescriptorArr[i3] = readRawFileDescriptor();
        }
    }

    public final Serializable readSerializable() {
        return readSerializable(null);
    }

    public final Size readSize() {
        return new Size(readInt(), readInt());
    }

    public final SizeF readSizeF() {
        return new SizeF(readFloat(), readFloat());
    }

    public final SparseArray readSparseArray(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        SparseArray sparseArray = new SparseArray(i2);
        readSparseArrayInternal(sparseArray, i2, classLoader);
        return sparseArray;
    }

    public final SparseBooleanArray readSparseBooleanArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(i2);
        readSparseBooleanArrayInternal(sparseBooleanArray, i2);
        return sparseBooleanArray;
    }

    public final SparseIntArray readSparseIntArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        SparseIntArray sparseIntArray = new SparseIntArray(i2);
        readSparseIntArrayInternal(sparseIntArray, i2);
        return sparseIntArray;
    }

    public final String readString() {
        return this.mReadWriteHelper.readString(this);
    }

    public final void readStringArray(String[] strArr) {
        int i2 = readInt();
        if (i2 != strArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = readString();
        }
    }

    public final void readStringList(List<String> list) {
        int size = list.size();
        int i2 = readInt();
        int i3 = 0;
        while (i3 < size && i3 < i2) {
            list.set(i3, readString());
            i3++;
        }
        while (i3 < i2) {
            list.add(readString());
            i3++;
        }
        while (i3 < size) {
            list.remove(i2);
            i3++;
        }
    }

    public String readStringNoHelper() {
        return nativeReadString(this.mNativePtr);
    }

    public final IBinder readStrongBinder() {
        return nativeReadStrongBinder(this.mNativePtr);
    }

    public final <T> void readTypedArray(T[] tArr, Parcelable.Creator<T> creator) {
        int i2 = readInt();
        if (i2 != tArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (readInt() != 0) {
                tArr[i3] = creator.createFromParcel(this);
            } else {
                tArr[i3] = null;
            }
        }
    }

    public final <T> ArrayList<T> readTypedArrayList(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 <= 0) {
            return null;
        }
        GridLayout.Assoc assoc = (ArrayList<T>) new ArrayList(i2);
        Parcelable.Creator<?> parcelableCreator = null;
        for (int i3 = 0; i3 < i2; i3++) {
            if (readInt() == 0) {
                assoc.add(null);
            } else {
                if (parcelableCreator == null && (parcelableCreator = readParcelableCreator(classLoader)) == null) {
                    return null;
                }
                assoc.add(parcelableCreator instanceof Parcelable.ClassLoaderCreator ? ((Parcelable.ClassLoaderCreator) parcelableCreator).createFromParcel(this, classLoader) : parcelableCreator.createFromParcel(this));
            }
        }
        return assoc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> ArraySet<T> readTypedArraySet(ClassLoader classLoader) {
        Object objCreateFromParcel;
        int i2 = readInt();
        if (i2 <= 0) {
            return null;
        }
        ArraySet<T> arraySet = (ArraySet<T>) new ArraySet(i2);
        Parcelable.Creator<?> parcelableCreator = null;
        for (int i3 = 0; i3 < i2; i3++) {
            if (readInt() == 0) {
                objCreateFromParcel = null;
            } else {
                if (parcelableCreator == null && (parcelableCreator = readParcelableCreator(classLoader)) == null) {
                    return null;
                }
                objCreateFromParcel = parcelableCreator instanceof Parcelable.ClassLoaderCreator ? ((Parcelable.ClassLoaderCreator) parcelableCreator).createFromParcel(this, classLoader) : parcelableCreator.createFromParcel(this);
            }
            arraySet.append(objCreateFromParcel);
        }
        return arraySet;
    }

    public final <T> void readTypedList(List<T> list, Parcelable.Creator<T> creator) {
        int size = list.size();
        int i2 = readInt();
        int i3 = 0;
        while (i3 < size && i3 < i2) {
            if (readInt() != 0) {
                list.set(i3, creator.createFromParcel(this));
            } else {
                list.set(i3, null);
            }
            i3++;
        }
        while (i3 < i2) {
            if (readInt() != 0) {
                list.add(creator.createFromParcel(this));
            } else {
                list.add(null);
            }
            i3++;
        }
        while (i3 < size) {
            list.remove(i2);
            i3++;
        }
    }

    public final <T> T readTypedObject(Parcelable.Creator<T> creator) {
        if (readInt() != 0) {
            return creator.createFromParcel(this);
        }
        return null;
    }

    public final Object readValue(ClassLoader classLoader) {
        int i2 = readInt();
        switch (i2) {
            case -1:
                return null;
            case 0:
                return readString();
            case 1:
                return Integer.valueOf(readInt());
            case 2:
                return readHashMap(classLoader);
            case 3:
                return readBundle(classLoader);
            case 4:
                return readParcelable(classLoader);
            case 5:
                return Short.valueOf((short) readInt());
            case 6:
                return Long.valueOf(readLong());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Double.valueOf(readDouble());
            case 9:
                return Boolean.valueOf(readInt() == 1);
            case 10:
                return readCharSequence();
            case 11:
                return readArrayList(classLoader);
            case 12:
                return readSparseArray(classLoader);
            case 13:
                return createByteArray();
            case 14:
                return readStringArray();
            case 15:
                return readStrongBinder();
            case 16:
                return readParcelableArray(classLoader);
            case 17:
                return readArray(classLoader);
            case 18:
                return createIntArray();
            case 19:
                return createLongArray();
            case 20:
                return Byte.valueOf(readByte());
            case 21:
                return readSerializable(classLoader);
            case 22:
                return readSparseBooleanArray();
            case 23:
                return createBooleanArray();
            case 24:
                return readCharSequenceArray();
            case 25:
                return readPersistableBundle(classLoader);
            case 26:
                return readSize();
            case 27:
                return readSizeF();
            case 28:
                return createDoubleArray();
            default:
                throw new RuntimeException("Parcel " + this + ": Unmarshalling unknown type code " + i2 + " at offset " + (dataPosition() - 4));
        }
    }

    public final void recycle() {
        Parcel[] parcelArr;
        freeBuffer();
        if (this.mOwnsNativeParcelObject) {
            parcelArr = sOwnedPool;
        } else {
            this.mNativePtr = 0L;
            parcelArr = sHolderPool;
        }
        synchronized (parcelArr) {
            for (int i2 = 0; i2 < 6; i2++) {
                if (parcelArr[i2] == null) {
                    parcelArr[i2] = this;
                    return;
                }
            }
        }
    }

    public final void restoreAllowFds(boolean z2) {
        nativeRestoreAllowFds(this.mNativePtr, z2);
    }

    public final void setClassCookie(Class cls, Object obj) {
        if (this.mClassCookies == null) {
            this.mClassCookies = new ArrayMap<>();
        }
        this.mClassCookies.put(cls, obj);
    }

    public final void setDataCapacity(int i2) {
        nativeSetDataCapacity(this.mNativePtr, i2);
    }

    public final void setDataPosition(int i2) {
        nativeSetDataPosition(this.mNativePtr, i2);
    }

    public final void setDataSize(int i2) {
        updateNativeSize(nativeSetDataSize(this.mNativePtr, i2));
    }

    public void setReadWriteHelper(ReadWriteHelper readWriteHelper) {
        if (readWriteHelper == null) {
            readWriteHelper = ReadWriteHelper.DEFAULT;
        }
        this.mReadWriteHelper = readWriteHelper;
    }

    public final void unmarshall(byte[] bArr, int i2, int i3) {
        updateNativeSize(nativeUnmarshall(this.mNativePtr, bArr, i2, i3));
    }

    public final void writeArray(Object[] objArr) {
        if (objArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(objArr.length);
        for (Object obj : objArr) {
            writeValue(obj);
        }
    }

    public void writeArrayMap(ArrayMap<String, Object> arrayMap) {
        writeArrayMapInternal(arrayMap);
    }

    public void writeArrayMapInternal(ArrayMap<String, Object> arrayMap) {
        if (arrayMap == null) {
            writeInt(-1);
            return;
        }
        int size = arrayMap.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeString(arrayMap.keyAt(i2));
            writeValue(arrayMap.valueAt(i2));
        }
    }

    public void writeArraySet(ArraySet<? extends Object> arraySet) {
        int size = arraySet != null ? arraySet.size() : -1;
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeValue(arraySet.valueAt(i2));
        }
    }

    public final void writeBinderArray(IBinder[] iBinderArr) {
        if (iBinderArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(iBinderArr.length);
        for (IBinder iBinder : iBinderArr) {
            writeStrongBinder(iBinder);
        }
    }

    public final void writeBinderList(List<IBinder> list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeStrongBinder(list.get(i2));
        }
    }

    public final void writeBlob(byte[] bArr) {
        writeBlob(bArr, 0, bArr != null ? bArr.length : 0);
    }

    public final void writeBoolean(boolean z2) {
        writeInt(z2 ? 1 : 0);
    }

    public final void writeBooleanArray(boolean[] zArr) {
        if (zArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(zArr.length);
        for (boolean z2 : zArr) {
            writeInt(z2 ? 1 : 0);
        }
    }

    public final void writeBundle(Bundle bundle) {
        if (bundle == null) {
            writeInt(-1);
        } else {
            bundle.writeToParcel(this, 0);
        }
    }

    public final void writeByte(byte b2) {
        writeInt(b2);
    }

    public final void writeByteArray(byte[] bArr) {
        writeByteArray(bArr, 0, bArr != null ? bArr.length : 0);
    }

    public final void writeCharArray(char[] cArr) {
        if (cArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(cArr.length);
        for (char c : cArr) {
            writeInt(c);
        }
    }

    public final void writeCharSequence(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this, 0);
    }

    public final void writeCharSequenceArray(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(charSequenceArr.length);
        for (CharSequence charSequence : charSequenceArr) {
            writeCharSequence(charSequence);
        }
    }

    public final void writeCharSequenceList(ArrayList<CharSequence> arrayList) {
        if (arrayList == null) {
            writeInt(-1);
            return;
        }
        int size = arrayList.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeCharSequence(arrayList.get(i2));
        }
    }

    public final void writeDouble(double d2) {
        nativeWriteDouble(this.mNativePtr, d2);
    }

    public final void writeDoubleArray(double[] dArr) {
        if (dArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(dArr.length);
        for (double d2 : dArr) {
            writeDouble(d2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void writeException(Exception exc) {
        int i2;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i2 = -9;
        } else if (exc instanceof SecurityException) {
            i2 = -1;
        } else if (exc instanceof BadParcelableException) {
            i2 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i2 = -3;
        } else if (exc instanceof NullPointerException) {
            i2 = -4;
        } else if (exc instanceof IllegalStateException) {
            i2 = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i2 = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i2 = -7;
        } else {
            i2 = exc instanceof ServiceSpecificException ? -8 : 0;
        }
        writeInt(i2);
        StrictMode.clearGatheredViolations();
        if (i2 == 0) {
            if (!(exc instanceof RuntimeException)) {
                throw new RuntimeException(exc);
            }
            throw ((RuntimeException) exc);
        }
        writeString(exc.getMessage());
        if (i2 != -9) {
            if (i2 != -8) {
                return;
            }
            writeInt(((ServiceSpecificException) exc).errorCode);
            return;
        }
        int iDataPosition = dataPosition();
        writeInt(0);
        writeParcelable((Parcelable) exc, 1);
        int iDataPosition2 = dataPosition();
        setDataPosition(iDataPosition);
        writeInt(iDataPosition2 - iDataPosition);
        setDataPosition(iDataPosition2);
    }

    public final void writeFileDescriptor(FileDescriptor fileDescriptor) {
        updateNativeSize(nativeWriteFileDescriptor(this.mNativePtr, fileDescriptor));
    }

    public final void writeFloat(float f2) {
        nativeWriteFloat(this.mNativePtr, f2);
    }

    public final void writeFloatArray(float[] fArr) {
        if (fArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(fArr.length);
        for (float f2 : fArr) {
            writeFloat(f2);
        }
    }

    public final void writeInt(int i2) {
        nativeWriteInt(this.mNativePtr, i2);
    }

    public final void writeIntArray(int[] iArr) {
        if (iArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(iArr.length);
        for (int i2 : iArr) {
            writeInt(i2);
        }
    }

    public final void writeInterfaceToken(String str) {
        nativeWriteInterfaceToken(this.mNativePtr, str);
    }

    public final void writeList(List list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeValue(list.get(i2));
        }
    }

    public final void writeLong(long j2) {
        nativeWriteLong(this.mNativePtr, j2);
    }

    public final void writeLongArray(long[] jArr) {
        if (jArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(jArr.length);
        for (long j2 : jArr) {
            writeLong(j2);
        }
    }

    public final void writeMap(Map map) {
        writeMapInternal(map);
    }

    public void writeMapInternal(Map<String, Object> map) {
        if (map == null) {
            writeInt(-1);
            return;
        }
        Set<Map.Entry<String, Object>> setEntrySet = map.entrySet();
        writeInt(setEntrySet.size());
        for (Map.Entry<String, Object> entry : setEntrySet) {
            writeValue(entry.getKey());
            writeValue(entry.getValue());
        }
    }

    public final void writeNoException() {
        if (!StrictMode.hasGatheredViolations()) {
            writeInt(0);
            return;
        }
        writeInt(-128);
        int iDataPosition = dataPosition();
        writeInt(0);
        StrictMode.writeGatheredViolationsToParcel(this);
        int iDataPosition2 = dataPosition();
        setDataPosition(iDataPosition);
        writeInt(iDataPosition2 - iDataPosition);
        setDataPosition(iDataPosition2);
    }

    public final void writeParcelable(Parcelable parcelable, int i2) {
        if (parcelable == null) {
            writeString(null);
        } else {
            writeParcelableCreator(parcelable);
            parcelable.writeToParcel(this, i2);
        }
    }

    public final <T extends Parcelable> void writeParcelableArray(T[] tArr, int i2) {
        if (tArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(tArr.length);
        for (T t2 : tArr) {
            writeParcelable(t2, i2);
        }
    }

    public final void writeParcelableCreator(Parcelable parcelable) {
        writeString(parcelable.getClass().getName());
    }

    public final <T extends Parcelable> void writeParcelableList(List<T> list, int i2) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            writeParcelable(list.get(i3), i2);
        }
    }

    public final void writePersistableBundle(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            writeInt(-1);
        } else {
            persistableBundle.writeToParcel(this, 0);
        }
    }

    public final void writeRawFileDescriptor(FileDescriptor fileDescriptor) {
        nativeWriteFileDescriptor(this.mNativePtr, fileDescriptor);
    }

    public final void writeRawFileDescriptorArray(FileDescriptor[] fileDescriptorArr) {
        if (fileDescriptorArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(fileDescriptorArr.length);
        for (FileDescriptor fileDescriptor : fileDescriptorArr) {
            writeRawFileDescriptor(fileDescriptor);
        }
    }

    public final void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e2) {
            throw new RuntimeException(android.accessibilityservice.c.k("Parcelable encountered IOException writing serializable object (name = ", name, ")"), e2);
        }
    }

    public final void writeSize(Size size) {
        writeInt(size.getWidth());
        writeInt(size.getHeight());
    }

    public final void writeSizeF(SizeF sizeF) {
        writeFloat(sizeF.getWidth());
        writeFloat(sizeF.getHeight());
    }

    public final void writeSparseArray(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseArray.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeInt(sparseArray.keyAt(i2));
            writeValue(sparseArray.valueAt(i2));
        }
    }

    public final void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray) {
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeInt(sparseBooleanArray.keyAt(i2));
            writeByte(sparseBooleanArray.valueAt(i2) ? (byte) 1 : (byte) 0);
        }
    }

    public final void writeSparseIntArray(SparseIntArray sparseIntArray) {
        if (sparseIntArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseIntArray.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeInt(sparseIntArray.keyAt(i2));
            writeInt(sparseIntArray.valueAt(i2));
        }
    }

    public final void writeString(String str) {
        this.mReadWriteHelper.writeString(this, str);
    }

    public final void writeStringArray(String[] strArr) {
        if (strArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(strArr.length);
        for (String str : strArr) {
            writeString(str);
        }
    }

    public final void writeStringList(List<String> list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeString(list.get(i2));
        }
    }

    public void writeStringNoHelper(String str) {
        nativeWriteString(this.mNativePtr, str);
    }

    public final void writeStrongBinder(IBinder iBinder) {
        nativeWriteStrongBinder(this.mNativePtr, iBinder);
    }

    public final void writeStrongInterface(IInterface iInterface) {
        writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    public final <T extends Parcelable> void writeTypedArray(T[] tArr, int i2) {
        if (tArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(tArr.length);
        for (T t2 : tArr) {
            if (t2 != null) {
                writeInt(1);
                t2.writeToParcel(this, i2);
            } else {
                writeInt(0);
            }
        }
    }

    public final <T extends Parcelable> void writeTypedArrayList(ArrayList<T> arrayList, int i2) {
        if (arrayList == null) {
            writeInt(-1);
            return;
        }
        int size = arrayList.size();
        writeInt(size);
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            T t2 = arrayList.get(i3);
            if (t2 != null) {
                writeInt(1);
                if (!z2) {
                    writeParcelableCreator(t2);
                    z2 = true;
                }
                t2.writeToParcel(this, i2);
            } else {
                writeInt(0);
            }
        }
    }

    public final <T extends Parcelable> void writeTypedArraySet(ArraySet<T> arraySet, int i2) {
        if (arraySet == null) {
            writeInt(-1);
            return;
        }
        int size = arraySet.size();
        writeInt(size);
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            T tValueAt = arraySet.valueAt(i3);
            if (tValueAt != null) {
                writeInt(1);
                if (!z2) {
                    writeParcelableCreator(tValueAt);
                    z2 = true;
                }
                tValueAt.writeToParcel(this, i2);
            } else {
                writeInt(0);
            }
        }
    }

    public final <T extends Parcelable> void writeTypedList(List<T> list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t2 = list.get(i2);
            if (t2 != null) {
                writeInt(1);
                t2.writeToParcel(this, 0);
            } else {
                writeInt(0);
            }
        }
    }

    public final <T extends Parcelable> void writeTypedObject(T t2, int i2) {
        if (t2 == null) {
            writeInt(0);
        } else {
            writeInt(1);
            t2.writeToParcel(this, i2);
        }
    }

    public final void writeValue(Object obj) {
        if (obj == null) {
            writeInt(-1);
            return;
        }
        if (obj instanceof String) {
            writeInt(0);
            writeString((String) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(1);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Map) {
            writeInt(2);
            writeMap((Map) obj);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(3);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof PersistableBundle) {
            writeInt(25);
            writePersistableBundle((PersistableBundle) obj);
            return;
        }
        if (obj instanceof Parcelable) {
            writeInt(4);
            writeParcelable((Parcelable) obj, 0);
            return;
        }
        if (obj instanceof Short) {
            writeInt(5);
            writeInt(((Short) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            writeInt(6);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            writeInt(7);
            writeFloat(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            writeInt(8);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(9);
            writeInt(((Boolean) obj).booleanValue() ? 1 : 0);
            return;
        }
        if (obj instanceof CharSequence) {
            writeInt(10);
            writeCharSequence((CharSequence) obj);
            return;
        }
        if (obj instanceof List) {
            writeInt(11);
            writeList((List) obj);
            return;
        }
        if (obj instanceof SparseArray) {
            writeInt(12);
            writeSparseArray((SparseArray) obj);
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(23);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            writeInt(13);
            writeByteArray((byte[]) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(14);
            writeStringArray((String[]) obj);
            return;
        }
        if (obj instanceof CharSequence[]) {
            writeInt(24);
            writeCharSequenceArray((CharSequence[]) obj);
            return;
        }
        if (obj instanceof IBinder) {
            writeInt(15);
            writeStrongBinder((IBinder) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            writeInt(16);
            writeParcelableArray((Parcelable[]) obj, 0);
            return;
        }
        if (obj instanceof int[]) {
            writeInt(18);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof long[]) {
            writeInt(19);
            writeLongArray((long[]) obj);
            return;
        }
        if (obj instanceof Byte) {
            writeInt(20);
            writeInt(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Size) {
            writeInt(26);
            writeSize((Size) obj);
            return;
        }
        if (obj instanceof SizeF) {
            writeInt(27);
            writeSizeF((SizeF) obj);
            return;
        }
        if (obj instanceof double[]) {
            writeInt(28);
            writeDoubleArray((double[]) obj);
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray() && cls.getComponentType() == Object.class) {
            writeInt(17);
            writeArray((Object[]) obj);
        } else if (obj instanceof Serializable) {
            writeInt(21);
            writeSerializable((Serializable) obj);
        } else {
            throw new RuntimeException("Parcel: unable to marshal value " + obj);
        }
    }

    private final Serializable readSerializable(final ClassLoader classLoader) {
        String string = readString();
        if (string == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(createByteArray())) { // from class: android.os.Parcel.2
                @Override // java.io.ObjectInputStream
                public Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
                    Class<?> cls;
                    return (classLoader == null || (cls = Class.forName(objectStreamClass.getName(), false, classLoader)) == null) ? super.resolveClass(objectStreamClass) : cls;
                }
            }.readObject();
        } catch (IOException e2) {
            throw new RuntimeException(android.accessibilityservice.c.k("Parcelable encountered IOException reading a Serializable object (name = ", string, ")"), e2);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException(android.accessibilityservice.c.k("Parcelable encountered ClassNotFoundException reading a Serializable object (name = ", string, ")"), e3);
        }
    }

    public final Bundle readBundle(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        Bundle bundle = new Bundle(this, i2);
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        return bundle;
    }

    public final PersistableBundle readPersistableBundle(ClassLoader classLoader) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        PersistableBundle persistableBundle = new PersistableBundle(this, i2);
        if (classLoader != null) {
            persistableBundle.setClassLoader(classLoader);
        }
        return persistableBundle;
    }

    public final void writeBlob(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            writeInt(-1);
        } else {
            Arrays.checkOffsetAndCount(bArr.length, i2, i3);
            nativeWriteBlob(this.mNativePtr, bArr, i2, i3);
        }
    }

    public final void writeByteArray(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            writeInt(-1);
        } else {
            Arrays.checkOffsetAndCount(bArr.length, i2, i3);
            nativeWriteByteArray(this.mNativePtr, bArr, i2, i3);
        }
    }

    public final void readException(int i2, String str) {
        switch (i2) {
            case -9:
                if (readInt() > 0) {
                    SneakyThrow.sneakyThrow((Exception) readParcelable(Parcelable.class.getClassLoader()));
                } else {
                    throw new RuntimeException(android.accessibilityservice.c.D(str, " [missing Parcelable]"));
                }
                break;
            case -8:
                throw new ServiceSpecificException(readInt(), str);
            case -7:
                throw new UnsupportedOperationException(str);
            case -6:
                throw new NetworkOnMainThreadException();
            case -5:
                throw new IllegalStateException(str);
            case -4:
                throw new NullPointerException(str);
            case -3:
                throw new IllegalArgumentException(str);
            case -2:
                throw new BadParcelableException(str);
            case -1:
                break;
            default:
                throw new RuntimeException("Unknown exception code: " + i2 + " msg " + str);
        }
        throw new SecurityException(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Parcelable> T[] readParcelableArray(ClassLoader classLoader, Class<T> cls) {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        T[] tArr = (T[]) ((Parcelable[]) Array.newInstance((Class<?>) cls, i2));
        for (int i3 = 0; i3 < i2; i3++) {
            tArr[i3] = readParcelable(classLoader);
        }
        return tArr;
    }

    public final String[] readStringArray() {
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        String[] strArr = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = readString();
        }
        return strArr;
    }

    @Deprecated
    public final <T> T[] readTypedArray(Parcelable.Creator<T> creator) {
        return (T[]) createTypedArray(creator);
    }

    public static final Parcel obtain(int i2) {
        throw new UnsupportedOperationException();
    }

    public static final Parcel obtain(long j2) {
        Parcel[] parcelArr = sHolderPool;
        synchronized (parcelArr) {
            for (int i2 = 0; i2 < 6; i2++) {
                Parcel parcel = parcelArr[i2];
                if (parcel != null) {
                    parcelArr[i2] = null;
                    parcel.init(j2);
                    return parcel;
                }
            }
            return new Parcel(j2);
        }
    }
}
