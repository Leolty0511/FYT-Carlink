package android.util;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ArrayMap<K, V> implements Map<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    public static final ArrayMap EMPTY = new ArrayMap(true);
    public static final int[] EMPTY_IMMUTABLE_INTS = new int[0];
    private static final String TAG = "ArrayMap";
    public static Object[] mBaseCache;
    public static int mBaseCacheSize;
    public static Object[] mTwiceBaseCache;
    public static int mTwiceBaseCacheSize;
    public Object[] mArray;
    public MapCollections<K, V> mCollections;
    public int[] mHashes;
    public int mSize;

    public ArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    private void allocArrays(int i2) {
        if (this.mHashes == EMPTY_IMMUTABLE_INTS) {
            throw new UnsupportedOperationException("ArrayMap is immutable");
        }
        if (i2 == 8) {
            synchronized (ArrayMap.class) {
                Object[] objArr = mTwiceBaseCache;
                if (objArr != null) {
                    this.mArray = objArr;
                    mTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    mTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (ArrayMap.class) {
                Object[] objArr2 = mBaseCache;
                if (objArr2 != null) {
                    this.mArray = objArr2;
                    mBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    mBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[i2];
        this.mArray = new Object[i2 << 1];
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (ArrayMap.class) {
                if (mTwiceBaseCacheSize < 10) {
                    objArr[0] = mTwiceBaseCache;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    mTwiceBaseCache = objArr;
                    mTwiceBaseCacheSize++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ArrayMap.class) {
                if (mBaseCacheSize < 10) {
                    objArr[0] = mBaseCache;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    mBaseCache = objArr;
                    mBaseCacheSize++;
                }
            }
        }
    }

    private MapCollections<K, V> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<K, V>() { // from class: android.util.ArrayMap.1
                @Override // android.util.MapCollections
                public void colClear() {
                    ArrayMap.this.clear();
                }

                @Override // android.util.MapCollections
                public Object colGetEntry(int i2, int i3) {
                    return ArrayMap.this.mArray[(i2 << 1) + i3];
                }

                @Override // android.util.MapCollections
                public Map<K, V> colGetMap() {
                    return ArrayMap.this;
                }

                @Override // android.util.MapCollections
                public int colGetSize() {
                    return ArrayMap.this.mSize;
                }

                @Override // android.util.MapCollections
                public int colIndexOfKey(Object obj) {
                    return obj == null ? ArrayMap.this.indexOfNull() : ArrayMap.this.indexOf(obj, obj.hashCode());
                }

                @Override // android.util.MapCollections
                public int colIndexOfValue(Object obj) {
                    return ArrayMap.this.indexOfValue(obj);
                }

                @Override // android.util.MapCollections
                public void colPut(K k2, V v2) {
                    ArrayMap.this.put(k2, v2);
                }

                @Override // android.util.MapCollections
                public void colRemoveAt(int i2) {
                    ArrayMap.this.removeAt(i2);
                }

                @Override // android.util.MapCollections
                public V colSetValue(int i2, V v2) {
                    return (V) ArrayMap.this.setValueAt(i2, v2);
                }
            };
        }
        return this.mCollections;
    }

    public void append(K k2, V v2) {
        int i2 = this.mSize;
        int iHashCode = k2 == null ? 0 : k2.hashCode();
        int[] iArr = this.mHashes;
        if (i2 >= iArr.length) {
            throw new IllegalStateException("Array is full");
        }
        if (i2 > 0) {
            int i3 = i2 - 1;
            if (iArr[i3] > iHashCode) {
                RuntimeException runtimeException = new RuntimeException("here");
                runtimeException.fillInStackTrace();
                Log.w(TAG, "New hash " + iHashCode + " is before end of array hash " + this.mHashes[i3] + " at index " + i2 + " key " + k2, runtimeException);
                put(k2, v2);
                return;
            }
        }
        this.mSize = i2 + 1;
        iArr[i2] = iHashCode;
        int i4 = i2 << 1;
        Object[] objArr = this.mArray;
        objArr[i4] = k2;
        objArr[i4 + 1] = v2;
    }

    @Override // java.util.Map
    public void clear() {
        int i2 = this.mSize;
        if (i2 > 0) {
            freeArrays(this.mHashes, this.mArray, i2);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
        }
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.containsAllHelper(this, collection);
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            if (indexOfNull() >= 0) {
                return true;
            }
        } else if (indexOf(obj, obj.hashCode()) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i2) {
        int[] iArr = this.mHashes;
        if (iArr.length < i2) {
            Object[] objArr = this.mArray;
            allocArrays(i2);
            int i3 = this.mSize;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i3);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize << 1);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return getCollection().getEntrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.mSize; i2++) {
                try {
                    K kKeyAt = keyAt(i2);
                    V vValueAt = valueAt(i2);
                    Object obj2 = map.get(kKeyAt);
                    if (vValueAt == null) {
                        if (obj2 != null || !map.containsKey(kKeyAt)) {
                            return false;
                        }
                    } else if (!vValueAt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public void erase() {
        int i2 = this.mSize;
        if (i2 > 0) {
            int i3 = i2 << 1;
            Object[] objArr = this.mArray;
            for (int i4 = 0; i4 < i3; i4++) {
                objArr[i4] = null;
            }
            this.mSize = 0;
        }
    }

    @Override // java.util.Map
    public V get(Object obj) {
        int iIndexOfNull = obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
        if (iIndexOfNull >= 0) {
            return (V) this.mArray[(iIndexOfNull << 1) + 1];
        }
        return null;
    }

    @Override // java.util.Map
    public int hashCode() {
        int[] iArr = this.mHashes;
        Object[] objArr = this.mArray;
        int i2 = this.mSize;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public int indexOf(Object obj, int i2) {
        int i3 = this.mSize;
        if (i3 == 0) {
            return -1;
        }
        int iBinarySearch = ContainerHelpers.binarySearch(this.mHashes, i3, i2);
        if (iBinarySearch < 0 || obj.equals(this.mArray[iBinarySearch << 1])) {
            return iBinarySearch;
        }
        int i4 = iBinarySearch + 1;
        while (i4 < i3 && this.mHashes[i4] == i2) {
            if (obj.equals(this.mArray[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iBinarySearch - 1; i5 >= 0 && this.mHashes[i5] == i2; i5--) {
            if (obj.equals(this.mArray[i5 << 1])) {
                return i5;
            }
        }
        return ~i4;
    }

    public int indexOfNull() {
        int i2 = this.mSize;
        if (i2 == 0) {
            return -1;
        }
        int iBinarySearch = ContainerHelpers.binarySearch(this.mHashes, i2, 0);
        if (iBinarySearch < 0 || this.mArray[iBinarySearch << 1] == null) {
            return iBinarySearch;
        }
        int i3 = iBinarySearch + 1;
        while (i3 < i2 && this.mHashes[i3] == 0) {
            if (this.mArray[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iBinarySearch - 1; i4 >= 0 && this.mHashes[i4] == 0; i4--) {
            if (this.mArray[i4 << 1] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public int indexOfValue(Object obj) {
        int i2 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    public K keyAt(int i2) {
        return (K) this.mArray[i2 << 1];
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return getCollection().getKeySet();
    }

    @Override // java.util.Map
    public V put(K k2, V v2) {
        int i2;
        int iIndexOf;
        if (k2 == null) {
            iIndexOf = indexOfNull();
            i2 = 0;
        } else {
            int iHashCode = k2.hashCode();
            i2 = iHashCode;
            iIndexOf = indexOf(k2, iHashCode);
        }
        if (iIndexOf >= 0) {
            int i3 = (iIndexOf << 1) + 1;
            Object[] objArr = this.mArray;
            V v3 = (V) objArr[i3];
            objArr[i3] = v2;
            return v3;
        }
        int i4 = ~iIndexOf;
        int i5 = this.mSize;
        int[] iArr = this.mHashes;
        if (i5 >= iArr.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.mArray;
            allocArrays(i6);
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.mArray, 0, objArr2.length);
            }
            freeArrays(iArr, objArr2, this.mSize);
        }
        int i7 = this.mSize;
        if (i4 < i7) {
            int[] iArr3 = this.mHashes;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr3 = this.mArray;
            System.arraycopy(objArr3, i4 << 1, objArr3, i8 << 1, (this.mSize - i4) << 1);
        }
        this.mHashes[i4] = i2;
        Object[] objArr4 = this.mArray;
        int i9 = i4 << 1;
        objArr4[i9] = k2;
        objArr4[i9 + 1] = v2;
        this.mSize++;
        return null;
    }

    public void putAll(ArrayMap<? extends K, ? extends V> arrayMap) {
        int i2 = arrayMap.mSize;
        ensureCapacity(this.mSize + i2);
        if (this.mSize != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(arrayMap.keyAt(i3), arrayMap.valueAt(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(arrayMap.mHashes, 0, this.mHashes, 0, i2);
            System.arraycopy(arrayMap.mArray, 0, this.mArray, 0, i2 << 1);
            this.mSize = i2;
        }
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        int iIndexOfNull = obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
        if (iIndexOfNull >= 0) {
            return removeAt(iIndexOfNull);
        }
        return null;
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.removeAllHelper(this, collection);
    }

    public V removeAt(int i2) {
        Object[] objArr = this.mArray;
        int i3 = i2 << 1;
        V v2 = (V) objArr[i3 + 1];
        int i4 = this.mSize;
        if (i4 <= 1) {
            freeArrays(this.mHashes, objArr, i4);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
        } else {
            int[] iArr = this.mHashes;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                int i5 = i4 - 1;
                this.mSize = i5;
                if (i2 < i5) {
                    int i6 = i2 + 1;
                    System.arraycopy(iArr, i6, iArr, i2, i5 - i2);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i3, (this.mSize - i2) << 1);
                }
                Object[] objArr3 = this.mArray;
                int i7 = this.mSize;
                objArr3[i7 << 1] = null;
                objArr3[(i7 << 1) + 1] = null;
            } else {
                allocArrays(i4 > 8 ? i4 + (i4 >> 1) : 8);
                this.mSize--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i2);
                    System.arraycopy(objArr, 0, this.mArray, 0, i3);
                }
                int i8 = this.mSize;
                if (i2 < i8) {
                    int i9 = i2 + 1;
                    System.arraycopy(iArr, i9, this.mHashes, i2, i8 - i2);
                    System.arraycopy(objArr, i9 << 1, this.mArray, i3, (this.mSize - i2) << 1);
                }
            }
        }
        return v2;
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.retainAllHelper(this, collection);
    }

    public V setValueAt(int i2, V v2) {
        int i3 = (i2 << 1) + 1;
        Object[] objArr = this.mArray;
        V v3 = (V) objArr[i3];
        objArr[i3] = v2;
        return v3;
    }

    @Override // java.util.Map
    public int size() {
        return this.mSize;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K kKeyAt = keyAt(i2);
            if (kKeyAt != this) {
                sb.append(kKeyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vValueAt = valueAt(i2);
            if (vValueAt != this) {
                sb.append(vValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public V valueAt(int i2) {
        return (V) this.mArray[(i2 << 1) + 1];
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return getCollection().getValues();
    }

    public ArrayMap(int i2) {
        if (i2 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(i2);
        }
        this.mSize = 0;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    private ArrayMap(boolean z2) {
        this.mHashes = EMPTY_IMMUTABLE_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    public ArrayMap(ArrayMap arrayMap) {
        this();
        if (arrayMap != null) {
            putAll(arrayMap);
        }
    }
}
