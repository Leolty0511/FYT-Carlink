package com.google.common.collect;

import android.view.View;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;
    private static final Object NOT_FOUND = new Object();

    @VisibleForTesting
    transient int[] entries;
    private transient Set<Map.Entry<K, V>> entrySetView;
    private transient Set<K> keySetView;

    @VisibleForTesting
    transient Object[] keys;
    private transient int metadata;
    private transient int size;
    private transient Object table;

    @VisibleForTesting
    transient Object[] values;
    private transient Collection<V> valuesView;

    public class EntrySetView extends Maps.EntrySet<K, V> {
        public EntrySetView() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Map.Entry lambda$spliterator$0(int i2) {
            return new MapEntry(i2);
        }

        @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iIndexOf = CompactHashMap.this.indexOf(entry.getKey());
            return iIndexOf != -1 && Objects.equal(CompactHashMap.this.value(iIndexOf), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override // com.google.common.collect.Maps.EntrySet
        public Map<K, V> map() {
            return CompactHashMap.this;
        }

        @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays()) {
                return false;
            }
            int iHashTableMask = CompactHashMap.this.hashTableMask();
            int iRemove = CompactHashing.remove(entry.getKey(), entry.getValue(), iHashTableMask, CompactHashMap.this.requireTable(), CompactHashMap.this.requireEntries(), CompactHashMap.this.requireKeys(), CompactHashMap.this.requireValues());
            if (iRemove == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(iRemove, iHashTableMask);
            CompactHashMap.access$310(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<Map.Entry<K, V>> spliterator() {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().spliterator() : CollectSpliterators.indexed(CompactHashMap.this.size, 17, new h(this, 1));
        }
    }

    public abstract class Itr<T> implements Iterator<T> {
        int currentIndex;
        int expectedMetadata;
        int indexToRemove;

        private Itr() {
            this.expectedMetadata = CompactHashMap.this.metadata;
            this.currentIndex = CompactHashMap.this.firstEntryIndex();
            this.indexToRemove = -1;
        }

        private void checkForConcurrentModification() {
            if (CompactHashMap.this.metadata != this.expectedMetadata) {
                throw new ConcurrentModificationException();
            }
        }

        @ParametricNullness
        public abstract T getOutput(int i2);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentIndex >= 0;
        }

        public void incrementExpectedModCount() {
            this.expectedMetadata += 32;
        }

        @Override // java.util.Iterator
        @ParametricNullness
        public T next() {
            checkForConcurrentModification();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i2 = this.currentIndex;
            this.indexToRemove = i2;
            T output = getOutput(i2);
            this.currentIndex = CompactHashMap.this.getSuccessor(this.currentIndex);
            return output;
        }

        @Override // java.util.Iterator
        public void remove() {
            checkForConcurrentModification();
            CollectPreconditions.checkRemove(this.indexToRemove >= 0);
            incrementExpectedModCount();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.key(this.indexToRemove));
            this.currentIndex = CompactHashMap.this.adjustAfterRemove(this.currentIndex, this.indexToRemove);
            this.indexToRemove = -1;
        }
    }

    public final class MapEntry extends AbstractMapEntry<K, V> {

        @ParametricNullness
        private final K key;
        private int lastKnownIndex;

        public MapEntry(int i2) {
            this.key = (K) CompactHashMap.this.key(i2);
            this.lastKnownIndex = i2;
        }

        private void updateLastKnownIndex() {
            int i2 = this.lastKnownIndex;
            if (i2 == -1 || i2 >= CompactHashMap.this.size() || !Objects.equal(this.key, CompactHashMap.this.key(this.lastKnownIndex))) {
                this.lastKnownIndex = CompactHashMap.this.indexOf(this.key);
            }
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public V getValue() {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return (V) NullnessCasts.uncheckedCastNullableTToT(mapDelegateOrNull.get(this.key));
            }
            updateLastKnownIndex();
            int i2 = this.lastKnownIndex;
            return i2 == -1 ? (V) NullnessCasts.unsafeNull() : (V) CompactHashMap.this.value(i2);
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        @ParametricNullness
        public V setValue(@ParametricNullness V v2) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return (V) NullnessCasts.uncheckedCastNullableTToT(mapDelegateOrNull.put(this.key, v2));
            }
            updateLastKnownIndex();
            int i2 = this.lastKnownIndex;
            if (i2 == -1) {
                CompactHashMap.this.put(this.key, v2);
                return (V) NullnessCasts.unsafeNull();
            }
            V v3 = (V) CompactHashMap.this.value(i2);
            CompactHashMap.this.setValue(this.lastKnownIndex, v2);
            return v3;
        }
    }

    public CompactHashMap() {
        init(3);
    }

    public static /* synthetic */ int access$310(CompactHashMap compactHashMap) {
        int i2 = compactHashMap.size;
        compactHashMap.size = i2 - 1;
        return i2;
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i2) {
        return new CompactHashMap<>(i2);
    }

    private int entry(int i2) {
        return requireEntries()[i2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int indexOf(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iSmearedHash = Hashing.smearedHash(obj);
        int iHashTableMask = hashTableMask();
        int iTableGet = CompactHashing.tableGet(requireTable(), iSmearedHash & iHashTableMask);
        if (iTableGet == 0) {
            return -1;
        }
        int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
        do {
            int i2 = iTableGet - 1;
            int iEntry = entry(i2);
            if (CompactHashing.getHashPrefix(iEntry, iHashTableMask) == hashPrefix && Objects.equal(obj, key(i2))) {
                return i2;
            }
            iTableGet = CompactHashing.getNext(iEntry, iHashTableMask);
        } while (iTableGet != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K key(int i2) {
        return (K) requireKeys()[i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @J2ktIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(android.accessibilityservice.c.d("Invalid size: ", i2));
        }
        init(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeHelper(Object obj) {
        if (needsAllocArrays()) {
            return NOT_FOUND;
        }
        int iHashTableMask = hashTableMask();
        int iRemove = CompactHashing.remove(obj, null, iHashTableMask, requireTable(), requireEntries(), requireKeys(), null);
        if (iRemove == -1) {
            return NOT_FOUND;
        }
        V vValue = value(iRemove);
        moveLastEntry(iRemove, iHashTableMask);
        this.size--;
        incrementModCount();
        return vValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] requireEntries() {
        int[] iArr = this.entries;
        java.util.Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireKeys() {
        Object[] objArr = this.keys;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object requireTable() {
        Object obj = this.table;
        java.util.Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireValues() {
        Object[] objArr = this.values;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    private void resizeMeMaybe(int i2) {
        int iMin;
        int length = requireEntries().length;
        if (i2 <= length || (iMin = Math.min(View.LAST_APP_AUTOFILL_ID, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    @CanIgnoreReturnValue
    private int resizeTable(int i2, int i3, int i4, int i5) {
        Object objCreateTable = CompactHashing.createTable(i3);
        int i6 = i3 - 1;
        if (i5 != 0) {
            CompactHashing.tableSet(objCreateTable, i4 & i6, i5 + 1);
        }
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        for (int i7 = 0; i7 <= i2; i7++) {
            int iTableGet = CompactHashing.tableGet(objRequireTable, i7);
            while (iTableGet != 0) {
                int i8 = iTableGet - 1;
                int i9 = iArrRequireEntries[i8];
                int hashPrefix = CompactHashing.getHashPrefix(i9, i2) | i7;
                int i10 = hashPrefix & i6;
                int iTableGet2 = CompactHashing.tableGet(objCreateTable, i10);
                CompactHashing.tableSet(objCreateTable, i10, iTableGet);
                iArrRequireEntries[i8] = CompactHashing.maskCombine(hashPrefix, iTableGet2, i6);
                iTableGet = CompactHashing.getNext(i9, i2);
            }
        }
        this.table = objCreateTable;
        setHashTableMask(i6);
        return i6;
    }

    private void setEntry(int i2, int i3) {
        requireEntries()[i2] = i3;
    }

    private void setHashTableMask(int i2) {
        this.metadata = CompactHashing.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(i2), 31);
    }

    private void setKey(int i2, K k2) {
        requireKeys()[i2] = k2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i2, V v2) {
        requireValues()[i2] = v2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V value(int i2) {
        return (V) requireValues()[i2];
    }

    @J2ktIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itEntrySetIterator = entrySetIterator();
        while (itEntrySetIterator.hasNext()) {
            Map.Entry<K, V> next = itEntrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public void accessEntry(int i2) {
    }

    public int adjustAfterRemove(int i2, int i3) {
        return i2 - 1;
    }

    @CanIgnoreReturnValue
    public int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i2 = this.metadata;
        int iTableSize = CompactHashing.tableSize(i2);
        this.table = CompactHashing.createTable(iTableSize);
        setHashTableMask(iTableSize - 1);
        this.entries = new int[i2];
        this.keys = new Object[i2];
        this.values = new Object[i2];
        return i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, View.LAST_APP_AUTOFILL_ID);
            mapDelegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireKeys(), 0, this.size, (Object) null);
        Arrays.fill(requireValues(), 0, this.size, (Object) null);
        CompactHashing.tableClear(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsKey(obj);
        }
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i2 = 0; i2 < this.size; i2++) {
            if (Objects.equal(obj, value(i2))) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(key(iFirstEntryIndex), value(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.table = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    public Set<Map.Entry<K, V>> createEntrySet() {
        return new EntrySetView();
    }

    public Map<K, V> createHashFloodingResistantDelegate(int i2) {
        return new LinkedHashMap(i2, 1.0f);
    }

    public Set<K> createKeySet() {
        return new KeySetView();
    }

    public Collection<V> createValues() {
        return new ValuesView();
    }

    @VisibleForTesting
    public Map<K, V> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySetView;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
        this.entrySetView = setCreateEntrySet;
        return setCreateEntrySet;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().iterator() : new CompactHashMap<K, V>.Itr<Map.Entry<K, V>>() { // from class: com.google.common.collect.CompactHashMap.2
            @Override // com.google.common.collect.CompactHashMap.Itr
            public Map.Entry<K, V> getOutput(int i2) {
                return new MapEntry(i2);
            }
        };
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            mapDelegateOrNull.forEach(biConsumer);
            return;
        }
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            biConsumer.accept(key(iFirstEntryIndex), value(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return null;
        }
        accessEntry(iIndexOf);
        return value(iIndexOf);
    }

    public int getSuccessor(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.size) {
            return i3;
        }
        return -1;
    }

    public void incrementModCount() {
        this.metadata += 32;
    }

    public void init(int i2) {
        Preconditions.checkArgument(i2 >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i2, 1, View.LAST_APP_AUTOFILL_ID);
    }

    public void insertEntry(int i2, @ParametricNullness K k2, @ParametricNullness V v2, int i3, int i4) {
        setEntry(i2, CompactHashing.maskCombine(i3, 0, i4));
        setKey(i2, k2);
        setValue(i2, v2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySetView;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.keySetView = setCreateKeySet;
        return setCreateKeySet;
    }

    public Iterator<K> keySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().iterator() : new CompactHashMap<K, V>.Itr<K>() { // from class: com.google.common.collect.CompactHashMap.1
            @Override // com.google.common.collect.CompactHashMap.Itr
            @ParametricNullness
            public K getOutput(int i2) {
                return (K) CompactHashMap.this.key(i2);
            }
        };
    }

    public void moveLastEntry(int i2, int i3) {
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireKeys = requireKeys();
        Object[] objArrRequireValues = requireValues();
        int size = size() - 1;
        if (i2 >= size) {
            objArrRequireKeys[i2] = null;
            objArrRequireValues[i2] = null;
            iArrRequireEntries[i2] = 0;
            return;
        }
        Object obj = objArrRequireKeys[size];
        objArrRequireKeys[i2] = obj;
        objArrRequireValues[i2] = objArrRequireValues[size];
        objArrRequireKeys[size] = null;
        objArrRequireValues[size] = null;
        iArrRequireEntries[i2] = iArrRequireEntries[size];
        iArrRequireEntries[size] = 0;
        int iSmearedHash = Hashing.smearedHash(obj) & i3;
        int iTableGet = CompactHashing.tableGet(objRequireTable, iSmearedHash);
        int i4 = size + 1;
        if (iTableGet == i4) {
            CompactHashing.tableSet(objRequireTable, iSmearedHash, i2 + 1);
            return;
        }
        while (true) {
            int i5 = iTableGet - 1;
            int i6 = iArrRequireEntries[i5];
            int next = CompactHashing.getNext(i6, i3);
            if (next == i4) {
                iArrRequireEntries[i5] = CompactHashing.maskCombine(i6, i2 + 1, i3);
                return;
            }
            iTableGet = next;
        }
    }

    @VisibleForTesting
    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(@ParametricNullness K k2, @ParametricNullness V v2) {
        int iResizeTable;
        int i2;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(k2, v2);
        }
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireKeys = requireKeys();
        Object[] objArrRequireValues = requireValues();
        int i3 = this.size;
        int i4 = i3 + 1;
        int iSmearedHash = Hashing.smearedHash(k2);
        int iHashTableMask = hashTableMask();
        int i5 = iSmearedHash & iHashTableMask;
        int iTableGet = CompactHashing.tableGet(requireTable(), i5);
        if (iTableGet != 0) {
            int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
            int i6 = 0;
            while (true) {
                int i7 = iTableGet - 1;
                int i8 = iArrRequireEntries[i7];
                if (CompactHashing.getHashPrefix(i8, iHashTableMask) == hashPrefix && Objects.equal(k2, objArrRequireKeys[i7])) {
                    V v3 = (V) objArrRequireValues[i7];
                    objArrRequireValues[i7] = v2;
                    accessEntry(i7);
                    return v3;
                }
                int next = CompactHashing.getNext(i8, iHashTableMask);
                i6++;
                if (next != 0) {
                    iTableGet = next;
                } else {
                    if (i6 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k2, v2);
                    }
                    if (i4 > iHashTableMask) {
                        iResizeTable = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i3);
                        i2 = iResizeTable;
                    } else {
                        iArrRequireEntries[i7] = CompactHashing.maskCombine(i8, i4, iHashTableMask);
                        i2 = iHashTableMask;
                    }
                }
            }
        } else if (i4 > iHashTableMask) {
            iResizeTable = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i3);
            i2 = iResizeTable;
        } else {
            CompactHashing.tableSet(requireTable(), i5, i4);
            i2 = iHashTableMask;
        }
        resizeMeMaybe(i4);
        insertEntry(i3, k2, v2, iSmearedHash, i2);
        this.size = i4;
        incrementModCount();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        V v2 = (V) removeHelper(obj);
        if (v2 == NOT_FOUND) {
            return null;
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(biFunction);
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            mapDelegateOrNull.replaceAll(biFunction);
            return;
        }
        for (int i2 = 0; i2 < this.size; i2++) {
            setValue(i2, biFunction.apply(key(i2), value(i2)));
        }
    }

    public void resizeEntries(int i2) {
        this.entries = Arrays.copyOf(requireEntries(), i2);
        this.keys = Arrays.copyOf(requireKeys(), i2);
        this.values = Arrays.copyOf(requireValues(), i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.size;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            mapCreateHashFloodingResistantDelegate.putAll(mapDelegateOrNull);
            this.table = mapCreateHashFloodingResistantDelegate;
            return;
        }
        int i2 = this.size;
        if (i2 < requireEntries().length) {
            resizeEntries(i2);
        }
        int iTableSize = CompactHashing.tableSize(i2);
        int iHashTableMask = hashTableMask();
        if (iTableSize < iHashTableMask) {
            resizeTable(iHashTableMask, iTableSize, 0, 0);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.valuesView = collectionCreateValues;
        return collectionCreateValues;
    }

    public Iterator<V> valuesIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.values().iterator() : new CompactHashMap<K, V>.Itr<V>() { // from class: com.google.common.collect.CompactHashMap.3
            @Override // com.google.common.collect.CompactHashMap.Itr
            @ParametricNullness
            public V getOutput(int i2) {
                return (V) CompactHashMap.this.value(i2);
            }
        };
    }

    public CompactHashMap(int i2) {
        init(i2);
    }

    public class KeySetView extends Maps.KeySet<K, V> {
        public KeySetView() {
            super(CompactHashMap.this);
        }

        @Override // com.google.common.collect.Maps.KeySet, java.lang.Iterable
        public void forEach(Consumer<? super K> consumer) {
            Preconditions.checkNotNull(consumer);
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                mapDelegateOrNull.keySet().forEach(consumer);
                return;
            }
            int iFirstEntryIndex = CompactHashMap.this.firstEntryIndex();
            while (iFirstEntryIndex >= 0) {
                consumer.accept(CompactHashMap.this.key(iFirstEntryIndex));
                iFirstEntryIndex = CompactHashMap.this.getSuccessor(iFirstEntryIndex);
            }
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.keySet().remove(obj);
            }
            return CompactHashMap.this.removeHelper(obj) != CompactHashMap.NOT_FOUND;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<K> spliterator() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return Spliterators.spliterator(new Object[0], 17);
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().spliterator() : Spliterators.spliterator(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size, 17);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return new Object[0];
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().toArray() : ObjectArrays.copyAsObjectArray(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            if (CompactHashMap.this.needsAllocArrays()) {
                if (tArr.length > 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return (T[]) mapDelegateOrNull.keySet().toArray(tArr);
            }
            return (T[]) ObjectArrays.toArrayImpl(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size, tArr);
        }
    }

    public class ValuesView extends Maps.Values<K, V> {
        public ValuesView() {
            super(CompactHashMap.this);
        }

        @Override // com.google.common.collect.Maps.Values, java.lang.Iterable
        public void forEach(Consumer<? super V> consumer) {
            Preconditions.checkNotNull(consumer);
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                mapDelegateOrNull.values().forEach(consumer);
                return;
            }
            int iFirstEntryIndex = CompactHashMap.this.firstEntryIndex();
            while (iFirstEntryIndex >= 0) {
                consumer.accept(CompactHashMap.this.value(iFirstEntryIndex));
                iFirstEntryIndex = CompactHashMap.this.getSuccessor(iFirstEntryIndex);
            }
        }

        @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return CompactHashMap.this.valuesIterator();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return Spliterators.spliterator(new Object[0], 16);
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.values().spliterator() : Spliterators.spliterator(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size, 16);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return new Object[0];
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.values().toArray() : ObjectArrays.copyAsObjectArray(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            if (CompactHashMap.this.needsAllocArrays()) {
                if (tArr.length > 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return (T[]) mapDelegateOrNull.values().toArray(tArr);
            }
            return (T[]) ObjectArrays.toArrayImpl(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size, tArr);
        }
    }
}
