package android.os;

import android.util.ArrayMap;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Bundle extends BaseBundle implements Cloneable, Parcelable {
    public static final Parcelable.Creator<Bundle> CREATOR;
    public static final Bundle EMPTY;
    static final int FLAG_ALLOW_FDS = 1024;
    static final int FLAG_HAS_FDS = 256;
    static final int FLAG_HAS_FDS_KNOWN = 512;
    public static final Bundle STRIPPED;

    static {
        Bundle bundle = new Bundle();
        EMPTY = bundle;
        bundle.mMap = ArrayMap.EMPTY;
        Bundle bundle2 = new Bundle();
        STRIPPED = bundle2;
        bundle2.putInt("STRIPPED", 1);
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
        this.mFlags = 1536;
    }

    public static Bundle forPair(String str, String str2) {
        Bundle bundle = new Bundle(1);
        bundle.putString(str, str2);
        return bundle;
    }

    private void maybePrefillHasFds() {
        Parcel parcel = this.mParcelledData;
        if (parcel != null) {
            if (parcel.hasFileDescriptors()) {
                this.mFlags |= 768;
            } else {
                this.mFlags |= 512;
            }
        }
    }

    @Override // android.os.BaseBundle
    public void clear() {
        super.clear();
        this.mFlags = 1536;
    }

    public Object clone() {
        return new Bundle(this);
    }

    public Bundle deepCopy() {
        Bundle bundle = new Bundle(false);
        bundle.copyInternal(this, true);
        return bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return hasFileDescriptors() ? 1 : 0;
    }

    public Bundle filterValues() {
        Bundle bundle;
        unparcel();
        ArrayMap<String, Object> arrayMap = this.mMap;
        if (arrayMap != null) {
            bundle = this;
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                Object objValueAt = arrayMap.valueAt(size);
                if (!PersistableBundle.isValidType(objValueAt)) {
                    if (objValueAt instanceof Bundle) {
                        Bundle bundleFilterValues = ((Bundle) objValueAt).filterValues();
                        if (bundleFilterValues != objValueAt) {
                            if (arrayMap == this.mMap) {
                                Bundle bundle2 = new Bundle(this);
                                bundle = bundle2;
                                arrayMap = bundle2.mMap;
                            }
                            arrayMap.setValueAt(size, bundleFilterValues);
                        }
                    } else if (!objValueAt.getClass().getName().startsWith("android.")) {
                        if (arrayMap == this.mMap) {
                            bundle = new Bundle(this);
                            arrayMap = bundle.mMap;
                        }
                        arrayMap.removeAt(size);
                    }
                }
            }
        } else {
            bundle = this;
        }
        this.mFlags = (this.mFlags | 512) & (-257);
        return bundle;
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

    public Bundle getBundle(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (Bundle) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Bundle", e2);
            return null;
        }
    }

    @Override // android.os.BaseBundle
    public byte getByte(String str) {
        return super.getByte(str);
    }

    @Override // android.os.BaseBundle
    public byte[] getByteArray(String str) {
        return super.getByteArray(str);
    }

    @Override // android.os.BaseBundle
    public char getChar(String str) {
        return super.getChar(str);
    }

    @Override // android.os.BaseBundle
    public char[] getCharArray(String str) {
        return super.getCharArray(str);
    }

    @Override // android.os.BaseBundle
    public CharSequence getCharSequence(String str) {
        return super.getCharSequence(str);
    }

    @Override // android.os.BaseBundle
    public CharSequence[] getCharSequenceArray(String str) {
        return super.getCharSequenceArray(str);
    }

    @Override // android.os.BaseBundle
    public ArrayList<CharSequence> getCharSequenceArrayList(String str) {
        return super.getCharSequenceArrayList(str);
    }

    @Override // android.os.BaseBundle
    public ClassLoader getClassLoader() {
        return super.getClassLoader();
    }

    @Override // android.os.BaseBundle
    public float getFloat(String str) {
        return super.getFloat(str);
    }

    @Override // android.os.BaseBundle
    public float[] getFloatArray(String str) {
        return super.getFloatArray(str);
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

    @Override // android.os.BaseBundle
    public ArrayList<Integer> getIntegerArrayList(String str) {
        return super.getIntegerArrayList(str);
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

    @Override // android.os.BaseBundle
    public Serializable getSerializable(String str) {
        return super.getSerializable(str);
    }

    @Override // android.os.BaseBundle
    public short getShort(String str) {
        return super.getShort(str);
    }

    @Override // android.os.BaseBundle
    public short[] getShortArray(String str) {
        return super.getShortArray(str);
    }

    public int getSize() {
        Parcel parcel = this.mParcelledData;
        if (parcel != null) {
            return parcel.dataSize();
        }
        return 0;
    }

    public SizeF getSizeF(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        try {
            return (SizeF) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "SizeF", e2);
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

    @Override // android.os.BaseBundle
    public ArrayList<String> getStringArrayList(String str) {
        return super.getStringArrayList(str);
    }

    public boolean hasFileDescriptors() {
        boolean z2;
        if ((this.mFlags & 512) == 0) {
            Parcel parcel = this.mParcelledData;
            if (parcel == null) {
                z2 = false;
                for (int size = this.mMap.size() - 1; size >= 0; size--) {
                    Object objValueAt = this.mMap.valueAt(size);
                    if (objValueAt instanceof Parcelable) {
                        if ((((Parcelable) objValueAt).describeContents() & 1) != 0) {
                            z2 = true;
                            break;
                        }
                    } else if (objValueAt instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) objValueAt;
                        for (int length = parcelableArr.length - 1; length >= 0; length--) {
                            Parcelable parcelable = parcelableArr[length];
                            if (parcelable != null && (parcelable.describeContents() & 1) != 0) {
                                z2 = true;
                                break;
                            }
                        }
                    } else if (objValueAt instanceof SparseArray) {
                        SparseArray sparseArray = (SparseArray) objValueAt;
                        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                            Parcelable parcelable2 = (Parcelable) sparseArray.valueAt(size2);
                            if (parcelable2 != null && (parcelable2.describeContents() & 1) != 0) {
                                z2 = true;
                                break;
                                break;
                            }
                        }
                    } else if (objValueAt instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objValueAt;
                        if (!arrayList.isEmpty() && (arrayList.get(0) instanceof Parcelable)) {
                            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                                Parcelable parcelable3 = (Parcelable) arrayList.get(size3);
                                if (parcelable3 != null && (parcelable3.describeContents() & 1) != 0) {
                                    z2 = true;
                                    break;
                                    break;
                                }
                            }
                        }
                    }
                }
            } else {
                if (parcel.hasFileDescriptors()) {
                    z2 = true;
                    break;
                }
                z2 = false;
            }
            if (z2) {
                this.mFlags |= 256;
            } else {
                this.mFlags &= -257;
            }
            this.mFlags |= 512;
        }
        return (this.mFlags & 256) != 0;
    }

    public void putAll(Bundle bundle) {
        unparcel();
        bundle.unparcel();
        this.mMap.putAll((ArrayMap<? extends String, ? extends Object>) bundle.mMap);
        if ((bundle.mFlags & 256) != 0) {
            this.mFlags |= 256;
        }
        if ((bundle.mFlags & 512) == 0) {
            this.mFlags &= -513;
        }
    }

    public void putBinder(String str, IBinder iBinder) {
        unparcel();
        this.mMap.put(str, iBinder);
    }

    public void putBundle(String str, Bundle bundle) {
        unparcel();
        this.mMap.put(str, bundle);
    }

    @Override // android.os.BaseBundle
    public void putByte(String str, byte b2) {
        super.putByte(str, b2);
    }

    @Override // android.os.BaseBundle
    public void putByteArray(String str, byte[] bArr) {
        super.putByteArray(str, bArr);
    }

    @Override // android.os.BaseBundle
    public void putChar(String str, char c) {
        super.putChar(str, c);
    }

    @Override // android.os.BaseBundle
    public void putCharArray(String str, char[] cArr) {
        super.putCharArray(str, cArr);
    }

    @Override // android.os.BaseBundle
    public void putCharSequence(String str, CharSequence charSequence) {
        super.putCharSequence(str, charSequence);
    }

    @Override // android.os.BaseBundle
    public void putCharSequenceArray(String str, CharSequence[] charSequenceArr) {
        super.putCharSequenceArray(str, charSequenceArr);
    }

    @Override // android.os.BaseBundle
    public void putCharSequenceArrayList(String str, ArrayList<CharSequence> arrayList) {
        super.putCharSequenceArrayList(str, arrayList);
    }

    @Override // android.os.BaseBundle
    public void putFloat(String str, float f2) {
        super.putFloat(str, f2);
    }

    @Override // android.os.BaseBundle
    public void putFloatArray(String str, float[] fArr) {
        super.putFloatArray(str, fArr);
    }

    @Deprecated
    public void putIBinder(String str, IBinder iBinder) {
        unparcel();
        this.mMap.put(str, iBinder);
    }

    @Override // android.os.BaseBundle
    public void putIntegerArrayList(String str, ArrayList<Integer> arrayList) {
        super.putIntegerArrayList(str, arrayList);
    }

    public void putParcelable(String str, Parcelable parcelable) {
        unparcel();
        this.mMap.put(str, parcelable);
        this.mFlags &= -513;
    }

    public void putParcelableArray(String str, Parcelable[] parcelableArr) {
        unparcel();
        this.mMap.put(str, parcelableArr);
        this.mFlags &= -513;
    }

    public void putParcelableArrayList(String str, ArrayList<? extends Parcelable> arrayList) {
        unparcel();
        this.mMap.put(str, arrayList);
        this.mFlags &= -513;
    }

    public void putParcelableList(String str, List<? extends Parcelable> list) {
        unparcel();
        this.mMap.put(str, list);
        this.mFlags &= -513;
    }

    @Override // android.os.BaseBundle
    public void putSerializable(String str, Serializable serializable) {
        super.putSerializable(str, serializable);
    }

    @Override // android.os.BaseBundle
    public void putShort(String str, short s2) {
        super.putShort(str, s2);
    }

    @Override // android.os.BaseBundle
    public void putShortArray(String str, short[] sArr) {
        super.putShortArray(str, sArr);
    }

    public void putSize(String str, Size size) {
        unparcel();
        this.mMap.put(str, size);
    }

    public void putSizeF(String str, SizeF sizeF) {
        unparcel();
        this.mMap.put(str, sizeF);
    }

    public void putSparseParcelableArray(String str, SparseArray<? extends Parcelable> sparseArray) {
        unparcel();
        this.mMap.put(str, sparseArray);
        this.mFlags &= -513;
    }

    @Override // android.os.BaseBundle
    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        super.putStringArrayList(str, arrayList);
    }

    public void readFromParcel(Parcel parcel) {
        super.readFromParcelInner(parcel);
        this.mFlags = 1024;
        maybePrefillHasFds();
    }

    @Override // android.os.BaseBundle
    public void remove(String str) {
        super.remove(str);
        int i2 = this.mFlags;
        if ((i2 & 256) != 0) {
            this.mFlags = i2 & (-513);
        }
    }

    public boolean setAllowFds(boolean z2) {
        int i2 = this.mFlags;
        boolean z3 = (i2 & 1024) != 0;
        if (z2) {
            this.mFlags = i2 | 1024;
        } else {
            this.mFlags = i2 & (-1025);
        }
        return z3;
    }

    @Override // android.os.BaseBundle
    public void setClassLoader(ClassLoader classLoader) {
        super.setClassLoader(classLoader);
    }

    public void setDefusable(boolean z2) {
        if (z2) {
            this.mFlags |= 1;
        } else {
            this.mFlags &= -2;
        }
    }

    public synchronized String toShortString() {
        if (this.mParcelledData == null) {
            return this.mMap.toString();
        }
        if (isEmptyParcel()) {
            return "EMPTY_PARCEL";
        }
        return "mParcelledData.dataSize=" + this.mParcelledData.dataSize();
    }

    public synchronized String toString() {
        if (this.mParcelledData == null) {
            return "Bundle[" + this.mMap.toString() + "]";
        }
        if (isEmptyParcel()) {
            return "Bundle[EMPTY_PARCEL]";
        }
        return "Bundle[mParcelledData.dataSize=" + this.mParcelledData.dataSize() + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        boolean zPushAllowFds = parcel.pushAllowFds((this.mFlags & 1024) != 0);
        try {
            super.writeToParcelInner(parcel, i2);
        } finally {
            parcel.restoreAllowFds(zPushAllowFds);
        }
    }

    @Override // android.os.BaseBundle
    public Byte getByte(String str, byte b2) {
        return super.getByte(str, b2);
    }

    @Override // android.os.BaseBundle
    public char getChar(String str, char c) {
        return super.getChar(str, c);
    }

    @Override // android.os.BaseBundle
    public CharSequence getCharSequence(String str, CharSequence charSequence) {
        return super.getCharSequence(str, charSequence);
    }

    @Override // android.os.BaseBundle
    public float getFloat(String str, float f2) {
        return super.getFloat(str, f2);
    }

    @Override // android.os.BaseBundle
    public short getShort(String str, short s2) {
        return super.getShort(str, s2);
    }

    public Bundle(Parcel parcel) {
        super(parcel);
        this.mFlags = 1024;
        maybePrefillHasFds();
    }

    public static Bundle setDefusable(Bundle bundle, boolean z2) {
        if (bundle != null) {
            bundle.setDefusable(z2);
        }
        return bundle;
    }

    public Size getSize(String str) {
        unparcel();
        Object obj = this.mMap.get(str);
        try {
            return (Size) obj;
        } catch (ClassCastException e2) {
            typeWarning(str, obj, "Size", e2);
            return null;
        }
    }

    public Bundle(Parcel parcel, int i2) {
        super(parcel, i2);
        this.mFlags = 1024;
        maybePrefillHasFds();
    }

    public Bundle(ClassLoader classLoader) {
        super(classLoader);
        this.mFlags = 1536;
    }

    public Bundle(int i2) {
        super(i2);
        this.mFlags = 1536;
    }

    public Bundle(Bundle bundle) {
        super(bundle);
        this.mFlags = bundle.mFlags;
    }

    public Bundle(PersistableBundle persistableBundle) {
        super(persistableBundle);
        this.mFlags = 1536;
    }

    public Bundle(boolean z2) {
        super(z2);
    }
}
