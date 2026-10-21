package android.os;

import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Bundle implements Parcelable, Cloneable {
    public static final int BUNDLE_MAGIC = 1279544898;
    public static final Parcelable.Creator<Bundle> CREATOR;
    public static final boolean DEBUG = false;
    public static final Bundle EMPTY;
    public static final Parcel EMPTY_PARCEL;
    private static final String TAG = "Bundle";
    private boolean mAllowFds;
    private ClassLoader mClassLoader;
    private boolean mFdsKnown;
    private boolean mHasFds;
    public ArrayMap<String, Object> mMap;
    public Parcel mParcelledData;

    static {
        Bundle bundle = new Bundle();
        EMPTY = bundle;
        bundle.mMap = ArrayMap.EMPTY;
        EMPTY_PARCEL = Parcel.obtain();
        CREATOR = new Parcelable.Creator<Bundle>() { // from class: android.os.Bundle.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Bundle createFromParcel(Parcel parcel) {
                return parcel.readBundle();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Bundle[] newArray(int i2) {
                return new Bundle[i2];
            }
        };
    }

    public Bundle() {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        this.mMap = new ArrayMap<>();
        this.mClassLoader = Bundle.class.getClassLoader();
    }

    public static Bundle forPair(String str, String str2) {
        Bundle bundle = new Bundle(1);
        bundle.putString(str, str2);
        return bundle;
    }

    private void typeWarning(String str, Object obj, String str2, Object obj2, ClassCastException classCastException) {
        Log.w(TAG, "Key " + str + " expected " + str2 + " but value was a " + obj.getClass().getName() + ".  The default value " + obj2 + " was returned.");
        Log.w(TAG, "Attempt to cast generated internal exception:", classCastException);
    }

    public void clear() {
        unparcel();
        this.mMap.clear();
        this.mHasFds = false;
        this.mFdsKnown = true;
    }

    public Object clone() {
        return new Bundle(this);
    }

    public boolean containsKey(String str) {
        unparcel();
        return this.mMap.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return hasFileDescriptors() ? 1 : 0;
    }

    public Object get(String str) {
        unparcel();
        return this.mMap.get(str);
    }

    public IBinder getBinder(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (IBinder) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "IBinder", e2);
            return null;
        }
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

    public Bundle getBundle(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (Bundle) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, TAG, e2);
            return null;
        }
    }

    public byte getByte(String str) {
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

    public float getFloat(String str) {
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

    @Deprecated
    public IBinder getIBinder(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (IBinder) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "IBinder", e2);
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

    public <T extends Parcelable> T getParcelable(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (T) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Parcelable", e2);
            return null;
        }
    }

    public Parcelable[] getParcelableArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (Parcelable[]) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Parcelable[]", e2);
            return null;
        }
    }

    public <T extends Parcelable> ArrayList<T> getParcelableArrayList(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "ArrayList", e2);
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

    public short getShort(String str) {
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

    public <T extends Parcelable> SparseArray<T> getSparseParcelableArray(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (SparseArray) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "SparseArray", e2);
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

    public ArrayList<String> getStringArrayList(String str) {
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

    public boolean hasFileDescriptors() {
        if (!this.mFdsKnown) {
            Parcel parcel = this.mParcelledData;
            boolean z2 = false;
            if (parcel != null) {
                if (parcel.hasFileDescriptors()) {
                    z2 = true;
                    break;
                }
            } else {
                int size = this.mMap.size() - 1;
                boolean z3 = false;
                while (true) {
                    if (size < 0) {
                        z2 = z3;
                        break;
                    }
                    Object objValueAt = this.mMap.valueAt(size);
                    if (objValueAt instanceof Parcelable) {
                        if ((((Parcelable) objValueAt).describeContents() & 1) != 0) {
                            z2 = true;
                            break;
                        }
                    } else if (objValueAt instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) objValueAt;
                        for (int length = parcelableArr.length - 1; length >= 0; length--) {
                            if ((parcelableArr[length].describeContents() & 1) != 0) {
                                z3 = true;
                                break;
                            }
                        }
                    } else if (objValueAt instanceof SparseArray) {
                        SparseArray sparseArray = (SparseArray) objValueAt;
                        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                            if ((((Parcelable) sparseArray.get(size2)).describeContents() & 1) != 0) {
                                z3 = true;
                                break;
                                break;
                            }
                        }
                    } else if (objValueAt instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objValueAt;
                        if (arrayList.size() > 0 && (arrayList.get(0) instanceof Parcelable)) {
                            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                                Parcelable parcelable = (Parcelable) arrayList.get(size3);
                                if (parcelable != null && (parcelable.describeContents() & 1) != 0) {
                                    z3 = true;
                                    break;
                                    break;
                                }
                            }
                        }
                    }
                    size--;
                }
            }
            this.mHasFds = z2;
            this.mFdsKnown = true;
        }
        return this.mHasFds;
    }

    public boolean isEmpty() {
        unparcel();
        return this.mMap.isEmpty();
    }

    public boolean isParcelled() {
        return this.mParcelledData != null;
    }

    public Set<String> keySet() {
        unparcel();
        return this.mMap.keySet();
    }

    public void putAll(Bundle bundle) {
        unparcel();
        bundle.unparcel();
        this.mMap.putAll((ArrayMap<? extends String, ? extends Object>) bundle.mMap);
        this.mHasFds |= bundle.mHasFds;
        this.mFdsKnown = this.mFdsKnown && bundle.mFdsKnown;
    }

    public void putBinder(String str, IBinder iBinder) {
        unparcel();
        this.mMap.put(str, iBinder);
    }

    public void putBoolean(String str, boolean z2) {
        unparcel();
        this.mMap.put(str, Boolean.valueOf(z2));
    }

    public void putBooleanArray(String str, boolean[] zArr) {
        unparcel();
        this.mMap.put(str, zArr);
    }

    public void putBundle(String str, Bundle bundle) {
        unparcel();
        this.mMap.put(str, bundle);
    }

    public void putByte(String str, byte b2) {
        unparcel();
        this.mMap.put(str, Byte.valueOf(b2));
    }

    public void putByteArray(String str, byte[] bArr) {
        unparcel();
        this.mMap.put(str, bArr);
    }

    public void putChar(String str, char c2) {
        unparcel();
        this.mMap.put(str, Character.valueOf(c2));
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

    @Deprecated
    public void putIBinder(String str, IBinder iBinder) {
        unparcel();
        this.mMap.put(str, iBinder);
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

    public void putParcelable(String str, Parcelable parcelable) {
        unparcel();
        this.mMap.put(str, parcelable);
        this.mFdsKnown = false;
    }

    public void putParcelableArray(String str, Parcelable[] parcelableArr) {
        unparcel();
        this.mMap.put(str, parcelableArr);
        this.mFdsKnown = false;
    }

    public void putParcelableArrayList(String str, ArrayList<? extends Parcelable> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
        this.mFdsKnown = false;
    }

    public void putParcelableList(String str, List<? extends Parcelable> list) {
        unparcel();
        this.mMap.put(str, list);
        this.mFdsKnown = false;
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

    public void putSparseParcelableArray(String str, SparseArray<? extends Parcelable> sparseArray) {
        unparcel();
        this.mMap.put(str, sparseArray);
        this.mFdsKnown = false;
    }

    public void putString(String str, String str2) {
        unparcel();
        this.mMap.put(str, str2);
    }

    public void putStringArray(String str, String[] strArr) {
        unparcel();
        this.mMap.put(str, strArr);
    }

    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
    }

    public void readFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        if (i2 >= 0) {
            readFromParcelInner(parcel, i2);
            return;
        }
        throw new RuntimeException("Bad length in parcel: " + i2);
    }

    public void readFromParcelInner(Parcel parcel, int i2) {
        if (i2 == 0) {
            this.mParcelledData = EMPTY_PARCEL;
            this.mHasFds = false;
            this.mFdsKnown = true;
            return;
        }
        int i3 = parcel.readInt();
        if (i3 != 1279544898) {
            throw new IllegalStateException("Bad magic number for Bundle: 0x" + Integer.toHexString(i3));
        }
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition + i2);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.setDataPosition(0);
        parcelObtain.appendFrom(parcel, iDataPosition, i2);
        parcelObtain.setDataPosition(0);
        this.mParcelledData = parcelObtain;
        this.mHasFds = parcelObtain.hasFileDescriptors();
        this.mFdsKnown = true;
    }

    public void remove(String str) {
        unparcel();
        this.mMap.remove(str);
    }

    public boolean setAllowFds(boolean z2) {
        boolean z3 = this.mAllowFds;
        this.mAllowFds = z2;
        return z3;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.mClassLoader = classLoader;
    }

    public int size() {
        unparcel();
        return this.mMap.size();
    }

    public synchronized String toString() {
        Parcel parcel = this.mParcelledData;
        if (parcel == null) {
            return "Bundle[" + this.mMap.toString() + "]";
        }
        if (parcel == EMPTY_PARCEL) {
            return "Bundle[EMPTY_PARCEL]";
        }
        return "Bundle[mParcelledData.dataSize=" + this.mParcelledData.dataSize() + "]";
    }

    public synchronized void unparcel() {
        Parcel parcel = this.mParcelledData;
        if (parcel == null) {
            return;
        }
        if (parcel == EMPTY_PARCEL) {
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
            this.mMap = new ArrayMap<>(i2);
        } else {
            arrayMap2.erase();
            this.mMap.ensureCapacity(i2);
        }
        this.mParcelledData.readArrayMapInternal(this.mMap, i2, this.mClassLoader);
        this.mParcelledData.recycle();
        this.mParcelledData = null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        boolean zPushAllowFds = parcel.pushAllowFds(this.mAllowFds);
        try {
            Parcel parcel2 = this.mParcelledData;
            if (parcel2 == null) {
                ArrayMap<String, Object> arrayMap = this.mMap;
                if (arrayMap != null && arrayMap.size() > 0) {
                    int iDataPosition = parcel.dataPosition();
                    parcel.writeInt(-1);
                    parcel.writeInt(BUNDLE_MAGIC);
                    int iDataPosition2 = parcel.dataPosition();
                    parcel.writeArrayMapInternal(this.mMap);
                    int iDataPosition3 = parcel.dataPosition();
                    parcel.setDataPosition(iDataPosition);
                    parcel.writeInt(iDataPosition3 - iDataPosition2);
                    parcel.setDataPosition(iDataPosition3);
                }
                parcel.writeInt(0);
                return;
            }
            if (parcel2 == EMPTY_PARCEL) {
                parcel.writeInt(0);
            } else {
                int iDataSize = parcel2.dataSize();
                parcel.writeInt(iDataSize);
                parcel.writeInt(BUNDLE_MAGIC);
                parcel.appendFrom(this.mParcelledData, 0, iDataSize);
            }
        } finally {
            parcel.restoreAllowFds(zPushAllowFds);
        }
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

    public char getChar(String str, char c2) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return c2;
        }
        try {
            return ((Character) obj).charValue();
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Character", Character.valueOf(c2), e2);
            return c2;
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

    public float getFloat(String str, float f2) {
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

    public short getShort(String str, short s2) {
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

    public CharSequence getCharSequence(String str, CharSequence charSequence) {
        CharSequence charSequence2 = getCharSequence(str);
        return charSequence2 == null ? charSequence : charSequence2;
    }

    public String getString(String str, String str2) {
        String string = getString(str);
        return string == null ? str2 : string;
    }

    public Bundle(Parcel parcel) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        readFromParcel(parcel);
    }

    private void typeWarning(String str, Object obj, String str2, ClassCastException classCastException) {
        typeWarning(str, obj, str2, "<null>", classCastException);
    }

    public Bundle(Parcel parcel, int i2) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        readFromParcelInner(parcel, i2);
    }

    public Bundle(ClassLoader classLoader) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        this.mMap = new ArrayMap<>();
        this.mClassLoader = classLoader;
    }

    public Bundle(int i2) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        this.mMap = new ArrayMap<>(i2);
        this.mClassLoader = Bundle.class.getClassLoader();
    }

    public Bundle(Bundle bundle) {
        this.mMap = null;
        this.mParcelledData = null;
        this.mHasFds = false;
        this.mFdsKnown = true;
        this.mAllowFds = true;
        Parcel parcel = bundle.mParcelledData;
        if (parcel != null) {
            Parcel parcel2 = EMPTY_PARCEL;
            if (parcel == parcel2) {
                this.mParcelledData = parcel2;
            } else {
                Parcel parcelObtain = Parcel.obtain();
                this.mParcelledData = parcelObtain;
                Parcel parcel3 = bundle.mParcelledData;
                parcelObtain.appendFrom(parcel3, 0, parcel3.dataSize());
                this.mParcelledData.setDataPosition(0);
            }
        } else {
            this.mParcelledData = null;
        }
        if (bundle.mMap != null) {
            this.mMap = new ArrayMap<>(bundle.mMap);
        } else {
            this.mMap = null;
        }
        this.mHasFds = bundle.mHasFds;
        this.mFdsKnown = bundle.mFdsKnown;
        this.mClassLoader = bundle.mClassLoader;
    }
}
