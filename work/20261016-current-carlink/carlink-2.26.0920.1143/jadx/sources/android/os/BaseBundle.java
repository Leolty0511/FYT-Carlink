package android.os;

import android.app.m;
import android.util.ArrayMap;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseArray;
import com.android.internal.util.IndentingPrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BaseBundle {
    static final int BUNDLE_MAGIC = 1279544898;
    static final boolean DEBUG = false;
    static final int FLAG_DEFUSABLE = 1;
    private static final boolean LOG_DEFUSABLE = false;
    private static final String TAG = "Bundle";
    private static volatile boolean sShouldDefuse = false;
    private ClassLoader mClassLoader;
    public int mFlags;
    ArrayMap<String, Object> mMap;
    Parcel mParcelledData;

    public static final class NoImagePreloadHolder {
        public static final Parcel EMPTY_PARCEL = Parcel.obtain();
    }

    public BaseBundle(ClassLoader classLoader, int i2) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mMap = i2 > 0 ? new ArrayMap<>(i2) : new ArrayMap<>();
        this.mClassLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
    }

    public static void dumpStats(IndentingPrintWriter indentingPrintWriter, String str, Object obj) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeValue(obj);
        int iDataPosition = parcelObtain.dataPosition();
        parcelObtain.recycle();
        if (iDataPosition > 1024) {
            indentingPrintWriter.println(str + " [size=" + iDataPosition + "]");
            if (obj instanceof BaseBundle) {
                dumpStats(indentingPrintWriter, (BaseBundle) obj);
            } else if (obj instanceof SparseArray) {
                dumpStats(indentingPrintWriter, (SparseArray) obj);
            }
        }
    }

    private void initializeFromParcelLocked(Parcel parcel, boolean z2) {
        if (isEmptyParcel(parcel)) {
            ArrayMap<String, Object> arrayMap = this.mMap;
            if (arrayMap == null) {
                this.mMap = new ArrayMap<>(1);
            } else {
                arrayMap.erase();
            }
            this.mParcelledData = null;
            return;
        }
        int i2 = parcel.readInt();
        if (i2 < 0) {
            return;
        }
        ArrayMap<String, Object> arrayMap2 = this.mMap;
        if (arrayMap2 == null) {
            arrayMap2 = new ArrayMap<>(i2);
        } else {
            arrayMap2.erase();
            arrayMap2.ensureCapacity(i2);
        }
        try {
            try {
                parcel.readArrayMapInternal(arrayMap2, i2, this.mClassLoader);
                this.mMap = arrayMap2;
                if (z2) {
                    recycleParcel(parcel);
                }
            } catch (BadParcelableException e2) {
                if (!sShouldDefuse) {
                    throw e2;
                }
                Log.w(TAG, "Failed to parse Bundle, but defusing quietly", e2);
                arrayMap2.erase();
                this.mMap = arrayMap2;
                if (z2) {
                }
            }
            this.mParcelledData = null;
        } catch (Throwable th) {
            this.mMap = arrayMap2;
            if (z2) {
                recycleParcel(parcel);
            }
            this.mParcelledData = null;
            throw th;
        }
    }

    private static void recycleParcel(Parcel parcel) {
        if (parcel == null || isEmptyParcel(parcel)) {
            return;
        }
        parcel.recycle();
    }

    public static void setShouldDefuse(boolean z2) {
        sShouldDefuse = z2;
    }

    public void clear() {
        unparcel();
        this.mMap.clear();
    }

    public boolean containsKey(String str) {
        unparcel();
        return this.mMap.containsKey(str);
    }

    public void copyInternal(BaseBundle baseBundle, boolean z2) {
        synchronized (baseBundle) {
            if (baseBundle.mParcelledData == null) {
                this.mParcelledData = null;
            } else if (baseBundle.isEmptyParcel()) {
                this.mParcelledData = NoImagePreloadHolder.EMPTY_PARCEL;
            } else {
                Parcel parcelObtain = Parcel.obtain();
                this.mParcelledData = parcelObtain;
                Parcel parcel = baseBundle.mParcelledData;
                parcelObtain.appendFrom(parcel, 0, parcel.dataSize());
                this.mParcelledData.setDataPosition(0);
            }
            ArrayMap<String, Object> arrayMap = baseBundle.mMap;
            if (arrayMap == null) {
                this.mMap = null;
            } else if (z2) {
                int size = arrayMap.size();
                this.mMap = new ArrayMap<>(size);
                for (int i2 = 0; i2 < size; i2++) {
                    this.mMap.append(arrayMap.keyAt(i2), deepCopyValue(arrayMap.valueAt(i2)));
                }
            } else {
                this.mMap = new ArrayMap<>(baseBundle.mMap);
            }
            this.mClassLoader = baseBundle.mClassLoader;
        }
    }

    public Object deepCopyValue(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Bundle) {
            return ((Bundle) obj).deepCopy();
        }
        if (obj instanceof PersistableBundle) {
            return ((PersistableBundle) obj).deepCopy();
        }
        if (obj instanceof ArrayList) {
            return deepcopyArrayList((ArrayList) obj);
        }
        if (!obj.getClass().isArray()) {
            return obj;
        }
        if (obj instanceof int[]) {
            return ((int[]) obj).clone();
        }
        if (obj instanceof long[]) {
            return ((long[]) obj).clone();
        }
        if (obj instanceof float[]) {
            return ((float[]) obj).clone();
        }
        if (obj instanceof double[]) {
            return ((double[]) obj).clone();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).clone();
        }
        if (obj instanceof byte[]) {
            return ((byte[]) obj).clone();
        }
        if (obj instanceof short[]) {
            return ((short[]) obj).clone();
        }
        return obj instanceof char[] ? ((char[]) obj).clone() : obj;
    }

    public ArrayList deepcopyArrayList(ArrayList arrayList) {
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(deepCopyValue(arrayList.get(i2)));
        }
        return arrayList2;
    }

    public Object get(String str) {
        unparcel();
        return this.mMap.get(str);
    }

    public boolean getBoolean(String str) {
        unparcel();
        return getBoolean(str, false);
    }

    public boolean[] getBooleanArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (boolean[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "byte[]", e2);
            return null;
        }
    }

    byte getByte(String str) {
        unparcel();
        return getByte(str, (byte) 0).byteValue();
    }

    public byte[] getByteArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (byte[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "byte[]", e2);
            return null;
        }
    }

    public char getChar(String str) {
        unparcel();
        return getChar(str, (char) 0);
    }

    public char[] getCharArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (char[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "char[]", e2);
            return null;
        }
    }

    public CharSequence getCharSequence(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        try {
            return (CharSequence) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "CharSequence", e2);
            return null;
        }
    }

    public CharSequence[] getCharSequenceArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (CharSequence[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "CharSequence[]", e2);
            return null;
        }
    }

    public ArrayList<CharSequence> getCharSequenceArrayList(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "ArrayList<CharSequence>", e2);
            return null;
        }
    }

    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    public double getDouble(String str) {
        unparcel();
        return getDouble(str, 0.0d);
    }

    public double[] getDoubleArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (double[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "double[]", e2);
            return null;
        }
    }

    float getFloat(String str) {
        unparcel();
        return getFloat(str, 0.0f);
    }

    public float[] getFloatArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (float[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "float[]", e2);
            return null;
        }
    }

    public int getInt(String str) {
        unparcel();
        return getInt(str, 0);
    }

    public int[] getIntArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (int[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "int[]", e2);
            return null;
        }
    }

    public ArrayList<Integer> getIntegerArrayList(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "ArrayList<Integer>", e2);
            return null;
        }
    }

    public long getLong(String str) {
        unparcel();
        return getLong(str, 0L);
    }

    public long[] getLongArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (long[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "long[]", e2);
            return null;
        }
    }

    public ArrayMap<String, Object> getMap() {
        unparcel();
        return this.mMap;
    }

    public String getPairValue() {
        unparcel();
        int size = this.mMap.size();
        if (size > 1) {
            Log.w(TAG, "getPairValue() used on Bundle with multiple pairs.");
        }
        if (size == 0) {
            return null;
        }
        Object objValueAt = this.mMap.valueAt(0);
        try {
            return (String) objValueAt;
        } catch (ClassCastException e2) {
            typeWarning("getPairValue()", objValueAt, "String", e2);
            return null;
        }
    }

    public Serializable getSerializable(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (Serializable) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Serializable", e2);
            return null;
        }
    }

    short getShort(String str) {
        unparcel();
        return getShort(str, (short) 0);
    }

    public short[] getShortArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (short[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "short[]", e2);
            return null;
        }
    }

    public String getString(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        try {
            return (String) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "String", e2);
            return null;
        }
    }

    public String[] getStringArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (String[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "String[]", e2);
            return null;
        }
    }

    ArrayList<String> getStringArrayList(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "ArrayList<String>", e2);
            return null;
        }
    }

    public boolean isEmpty() {
        unparcel();
        return this.mMap.isEmpty();
    }

    public boolean isEmptyParcel() {
        return isEmptyParcel(this.mParcelledData);
    }

    public boolean isParcelled() {
        return this.mParcelledData != null;
    }

    public Set<String> keySet() {
        unparcel();
        return this.mMap.keySet();
    }

    public boolean kindofEquals(BaseBundle baseBundle) {
        if (baseBundle == null || isParcelled() != baseBundle.isParcelled()) {
            return false;
        }
        if (isParcelled()) {
            return this.mParcelledData.compareData(baseBundle.mParcelledData) == 0;
        }
        return this.mMap.equals(baseBundle.mMap);
    }

    public boolean maybeIsEmpty() {
        return isParcelled() ? isEmptyParcel() : isEmpty();
    }

    public void putAll(PersistableBundle persistableBundle) {
        unparcel();
        persistableBundle.unparcel();
        this.mMap.putAll((ArrayMap<? extends String, ? extends Object>) persistableBundle.mMap);
    }

    public void putBoolean(String str, boolean z2) {
        unparcel();
        this.mMap.put(str, Boolean.valueOf(z2));
    }

    public void putBooleanArray(String str, boolean[] zArr) {
        unparcel();
        this.mMap.put(str, zArr);
    }

    public void putByte(String str, byte b2) {
        unparcel();
        this.mMap.put(str, Byte.valueOf(b2));
    }

    public void putByteArray(String str, byte[] bArr) {
        unparcel();
        this.mMap.put(str, bArr);
    }

    public void putChar(String str, char c) {
        unparcel();
        this.mMap.put(str, Character.valueOf(c));
    }

    public void putCharArray(String str, char[] cArr) {
        unparcel();
        this.mMap.put(str, cArr);
    }

    public void putCharSequence(String str, CharSequence charSequence) {
        unparcel();
        this.mMap.put(str, charSequence);
    }

    public void putCharSequenceArray(String str, CharSequence[] charSequenceArr) {
        unparcel();
        this.mMap.put(str, charSequenceArr);
    }

    public void putCharSequenceArrayList(String str, ArrayList<CharSequence> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
    }

    public void putDouble(String str, double d2) {
        unparcel();
        this.mMap.put(str, Double.valueOf(d2));
    }

    public void putDoubleArray(String str, double[] dArr) {
        unparcel();
        this.mMap.put(str, dArr);
    }

    public void putFloat(String str, float f2) {
        unparcel();
        this.mMap.put(str, Float.valueOf(f2));
    }

    public void putFloatArray(String str, float[] fArr) {
        unparcel();
        this.mMap.put(str, fArr);
    }

    public void putInt(String str, int i2) {
        unparcel();
        this.mMap.put(str, Integer.valueOf(i2));
    }

    public void putIntArray(String str, int[] iArr) {
        unparcel();
        this.mMap.put(str, iArr);
    }

    public void putIntegerArrayList(String str, ArrayList<Integer> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
    }

    public void putLong(String str, long j2) {
        unparcel();
        this.mMap.put(str, Long.valueOf(j2));
    }

    public void putLongArray(String str, long[] jArr) {
        unparcel();
        this.mMap.put(str, jArr);
    }

    public void putSerializable(String str, Serializable serializable) {
        unparcel();
        this.mMap.put(str, serializable);
    }

    public void putShort(String str, short s2) {
        unparcel();
        this.mMap.put(str, Short.valueOf(s2));
    }

    public void putShortArray(String str, short[] sArr) {
        unparcel();
        this.mMap.put(str, sArr);
    }

    public void putString(String str, String str2) {
        unparcel();
        this.mMap.put(str, str2);
    }

    public void putStringArray(String str, String[] strArr) {
        unparcel();
        this.mMap.put(str, strArr);
    }

    void putStringArrayList(String str, ArrayList<String> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
    }

    public void readFromParcelInner(Parcel parcel) {
        readFromParcelInner(parcel, parcel.readInt());
    }

    public void remove(String str) {
        unparcel();
        this.mMap.remove(str);
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.mClassLoader = classLoader;
    }

    public int size() {
        unparcel();
        return this.mMap.size();
    }

    public void typeWarning(String str, Object obj, String str2, Object obj2, ClassCastException classCastException) {
        StringBuilder sbW = android.accessibilityservice.c.w("Key ", str, " expected ", str2, " but value was a ");
        sbW.append(obj.getClass().getName());
        sbW.append(".  The default value ");
        sbW.append(obj2);
        sbW.append(" was returned.");
        Log.w(TAG, sbW.toString());
        Log.w(TAG, "Attempt to cast generated internal exception:", classCastException);
    }

    public void unparcel() {
        synchronized (this) {
            Parcel parcel = this.mParcelledData;
            if (parcel != null) {
                initializeFromParcelLocked(parcel, true);
            }
        }
    }

    public void writeToParcelInner(Parcel parcel, int i2) {
        if (parcel.hasReadWriteHelper()) {
            unparcel();
        }
        synchronized (this) {
            Parcel parcel2 = this.mParcelledData;
            if (parcel2 != null) {
                if (parcel2 == NoImagePreloadHolder.EMPTY_PARCEL) {
                    parcel.writeInt(0);
                } else {
                    int iDataSize = parcel2.dataSize();
                    parcel.writeInt(iDataSize);
                    parcel.writeInt(BUNDLE_MAGIC);
                    parcel.appendFrom(this.mParcelledData, 0, iDataSize);
                }
                return;
            }
            ArrayMap<String, Object> arrayMap = this.mMap;
            if (arrayMap == null || arrayMap.size() <= 0) {
                parcel.writeInt(0);
                return;
            }
            int iDataPosition = parcel.dataPosition();
            parcel.writeInt(-1);
            parcel.writeInt(BUNDLE_MAGIC);
            int iDataPosition2 = parcel.dataPosition();
            parcel.writeArrayMapInternal(arrayMap);
            int iDataPosition3 = parcel.dataPosition();
            parcel.setDataPosition(iDataPosition);
            parcel.writeInt(iDataPosition3 - iDataPosition2);
            parcel.setDataPosition(iDataPosition3);
        }
    }

    private static boolean isEmptyParcel(Parcel parcel) {
        return parcel == NoImagePreloadHolder.EMPTY_PARCEL;
    }

    private void readFromParcelInner(Parcel parcel, int i2) {
        if (i2 < 0) {
            throw new RuntimeException(android.accessibilityservice.c.d("Bad length in parcel: ", i2));
        }
        if (i2 == 0) {
            this.mParcelledData = NoImagePreloadHolder.EMPTY_PARCEL;
            return;
        }
        int i3 = parcel.readInt();
        if (i3 == BUNDLE_MAGIC) {
            if (parcel.hasReadWriteHelper()) {
                synchronized (this) {
                    initializeFromParcelLocked(parcel, false);
                }
                return;
            }
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(MathUtils.addOrThrow(iDataPosition, i2));
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.setDataPosition(0);
            parcelObtain.appendFrom(parcel, iDataPosition, i2);
            parcelObtain.adoptClassCookies(parcel);
            parcelObtain.setDataPosition(0);
            this.mParcelledData = parcelObtain;
            return;
        }
        throw new IllegalStateException(m.d(i3, new StringBuilder("Bad magic number for Bundle: 0x")));
    }

    public boolean getBoolean(String str, boolean z2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return z2;
        }
        try {
            return ((Boolean) obj).booleanValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Boolean", Boolean.valueOf(z2), e2);
            return z2;
        }
    }

    public Byte getByte(String str, byte b2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return Byte.valueOf(b2);
        }
        try {
            return (Byte) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Byte", Byte.valueOf(b2), e2);
            return Byte.valueOf(b2);
        }
    }

    public char getChar(String str, char c) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return c;
        }
        try {
            return ((Character) obj).charValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Character", Character.valueOf(c), e2);
            return c;
        }
    }

    public double getDouble(String str, double d2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return d2;
        }
        try {
            return ((Double) obj).doubleValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Double", Double.valueOf(d2), e2);
            return d2;
        }
    }

    float getFloat(String str, float f2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return f2;
        }
        try {
            return ((Float) obj).floatValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Float", Float.valueOf(f2), e2);
            return f2;
        }
    }

    public int getInt(String str, int i2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return i2;
        }
        try {
            return ((Integer) obj).intValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Integer", Integer.valueOf(i2), e2);
            return i2;
        }
    }

    public long getLong(String str, long j2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return j2;
        }
        try {
            return ((Long) obj).longValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Long", Long.valueOf(j2), e2);
            return j2;
        }
    }

    short getShort(String str, short s2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return s2;
        }
        try {
            return ((Short) obj).shortValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Short", Short.valueOf(s2), e2);
            return s2;
        }
    }

    void putAll(ArrayMap arrayMap) {
        unparcel();
        this.mMap.putAll((ArrayMap<? extends String, ? extends Object>) arrayMap);
    }

    public CharSequence getCharSequence(String str, CharSequence charSequence) {
        CharSequence charSequence2 = getCharSequence(str);
        return charSequence2 == null ? charSequence : charSequence2;
    }

    public String getString(String str, String str2) {
        String string = getString(str);
        return string == null ? str2 : string;
    }

    public BaseBundle() {
        this((ClassLoader) null, 0);
    }

    public BaseBundle(Parcel parcel) {
        this.mMap = null;
        this.mParcelledData = null;
        readFromParcelInner(parcel);
    }

    public static void dumpStats(IndentingPrintWriter indentingPrintWriter, SparseArray sparseArray) {
        indentingPrintWriter.increaseIndent();
        if (sparseArray == null) {
            indentingPrintWriter.println("[null]");
            return;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            dumpStats(indentingPrintWriter, "0x" + Integer.toHexString(sparseArray.keyAt(i2)), sparseArray.valueAt(i2));
        }
        indentingPrintWriter.decreaseIndent();
    }

    public BaseBundle(Parcel parcel, int i2) {
        this.mMap = null;
        this.mParcelledData = null;
        readFromParcelInner(parcel, i2);
    }

    public void typeWarning(String str, Object obj, String str2, ClassCastException classCastException) {
        typeWarning(str, obj, str2, "<null>", classCastException);
    }

    public BaseBundle(ClassLoader classLoader) {
        this(classLoader, 0);
    }

    public static void dumpStats(IndentingPrintWriter indentingPrintWriter, BaseBundle baseBundle) {
        indentingPrintWriter.increaseIndent();
        if (baseBundle == null) {
            indentingPrintWriter.println("[null]");
            return;
        }
        ArrayMap<String, Object> map = baseBundle.getMap();
        for (int i2 = 0; i2 < map.size(); i2++) {
            dumpStats(indentingPrintWriter, map.keyAt(i2), map.valueAt(i2));
        }
        indentingPrintWriter.decreaseIndent();
    }

    public BaseBundle(int i2) {
        this((ClassLoader) null, i2);
    }

    public BaseBundle(BaseBundle baseBundle) {
        this.mMap = null;
        this.mParcelledData = null;
        copyInternal(baseBundle, false);
    }

    public BaseBundle(boolean z2) {
        this.mMap = null;
        this.mParcelledData = null;
    }
}
