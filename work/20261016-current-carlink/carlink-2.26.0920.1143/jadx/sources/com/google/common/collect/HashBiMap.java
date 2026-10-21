package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
public final class HashBiMap<K, V> extends Maps.IteratorBasedAbstractMap<K, V> implements BiMap<K, V>, Serializable {
    private static final double LOAD_FACTOR = 1.0d;

    @J2ktIncompatible
    @GwtIncompatible
    private static final long serialVersionUID = 0;

    @Weak
    private transient BiEntry<K, V> firstInKeyInsertionOrder;
    private transient BiEntry<K, V>[] hashTableKToV;
    private transient BiEntry<K, V>[] hashTableVToK;

    @RetainedWith
    @LazyInit
    private transient BiMap<V, K> inverse;

    @Weak
    private transient BiEntry<K, V> lastInKeyInsertionOrder;
    private transient int mask;
    private transient int modCount;
    private transient int size;

    public static final class BiEntry<K, V> extends ImmutableEntry<K, V> {
        final int keyHash;
        BiEntry<K, V> nextInKToVBucket;

        @Weak
        BiEntry<K, V> nextInKeyInsertionOrder;

        @Weak
        BiEntry<K, V> nextInVToKBucket;

        @Weak
        BiEntry<K, V> prevInKeyInsertionOrder;
        final int valueHash;

        public BiEntry(@ParametricNullness K k2, int i2, @ParametricNullness V v2, int i3) {
            super(k2, v2);
            this.keyHash = i2;
            this.valueHash = i3;
        }
    }

    public final class Inverse extends Maps.IteratorBasedAbstractMap<V, K> implements BiMap<V, K>, Serializable {

        public final class InverseKeySet extends Maps.KeySet<V, K> {
            public InverseKeySet() {
                super(Inverse.this);
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new HashBiMap<K, V>.Itr<V>(this) { // from class: com.google.common.collect.HashBiMap.Inverse.InverseKeySet.1
                    {
                        HashBiMap hashBiMap = HashBiMap.this;
                    }

                    @Override // com.google.common.collect.HashBiMap.Itr
                    @ParametricNullness
                    public V output(BiEntry<K, V> biEntry) {
                        return biEntry.value;
                    }
                };
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                BiEntry biEntrySeekByValue = HashBiMap.this.seekByValue(obj, Hashing.smearedHash(obj));
                if (biEntrySeekByValue == null) {
                    return false;
                }
                HashBiMap.this.delete(biEntrySeekByValue);
                return true;
            }
        }

        private Inverse() {
        }

        @J2ktIncompatible
        @GwtIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use InverseSerializedForm");
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public void clear() {
            forward().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return forward().containsValue(obj);
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public Iterator<Map.Entry<V, K>> entryIterator() {
            return new HashBiMap<K, V>.Itr<Map.Entry<V, K>>() { // from class: com.google.common.collect.HashBiMap.Inverse.1

                /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$Inverse$1$InverseEntry */
                public class InverseEntry extends AbstractMapEntry<V, K> {
                    BiEntry<K, V> delegate;

                    public InverseEntry(BiEntry<K, V> biEntry) {
                        this.delegate = biEntry;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    @ParametricNullness
                    public V getKey() {
                        return this.delegate.value;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    @ParametricNullness
                    public K getValue() {
                        return this.delegate.key;
                    }

                    @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                    @ParametricNullness
                    public K setValue(@ParametricNullness K k2) {
                        K k3 = this.delegate.key;
                        int iSmearedHash = Hashing.smearedHash(k2);
                        if (iSmearedHash == this.delegate.keyHash && Objects.equal(k2, k3)) {
                            return k2;
                        }
                        Preconditions.checkArgument(HashBiMap.this.seekByKey(k2, iSmearedHash) == null, "value already present: %s", k2);
                        HashBiMap.this.delete(this.delegate);
                        BiEntry<K, V> biEntry = this.delegate;
                        BiEntry<K, V> biEntry2 = new BiEntry<>(k2, iSmearedHash, biEntry.value, biEntry.valueHash);
                        this.delegate = biEntry2;
                        HashBiMap.this.insert(biEntry2, null);
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.expectedModCount = HashBiMap.this.modCount;
                        return k3;
                    }
                }

                {
                    HashBiMap hashBiMap = HashBiMap.this;
                }

                @Override // com.google.common.collect.HashBiMap.Itr
                public Map.Entry<V, K> output(BiEntry<K, V> biEntry) {
                    return new InverseEntry(biEntry);
                }
            };
        }

        @Override // java.util.Map
        public void forEach(BiConsumer<? super V, ? super K> biConsumer) {
            Preconditions.checkNotNull(biConsumer);
            HashBiMap.this.forEach(new a(biConsumer, 1));
        }

        @Override // com.google.common.collect.BiMap
        public K forcePut(@ParametricNullness V v2, @ParametricNullness K k2) {
            return (K) HashBiMap.this.putInverse(v2, k2, true);
        }

        public BiMap<K, V> forward() {
            return HashBiMap.this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(Object obj) {
            return (K) Maps.keyOrNull(HashBiMap.this.seekByValue(obj, Hashing.smearedHash(obj)));
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return forward();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return new InverseKeySet();
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        @CanIgnoreReturnValue
        public K put(@ParametricNullness V v2, @ParametricNullness K k2) {
            return (K) HashBiMap.this.putInverse(v2, k2, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(Object obj) {
            BiEntry biEntrySeekByValue = HashBiMap.this.seekByValue(obj, Hashing.smearedHash(obj));
            if (biEntrySeekByValue == null) {
                return null;
            }
            HashBiMap.this.delete(biEntrySeekByValue);
            biEntrySeekByValue.prevInKeyInsertionOrder = null;
            biEntrySeekByValue.nextInKeyInsertionOrder = null;
            return biEntrySeekByValue.key;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map
        public void replaceAll(BiFunction<? super V, ? super K, ? extends K> biFunction) {
            Preconditions.checkNotNull(biFunction);
            clear();
            for (BiEntry<K, V> biEntry = HashBiMap.this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
                V v2 = biEntry.value;
                put(v2, biFunction.apply(v2, biEntry.key));
            }
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public int size() {
            return HashBiMap.this.size;
        }

        public Object writeReplace() {
            return new InverseSerializedForm(HashBiMap.this);
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        public Set<K> values() {
            return forward().keySet();
        }
    }

    public static final class InverseSerializedForm<K, V> implements Serializable {
        private final HashBiMap<K, V> bimap;

        public InverseSerializedForm(HashBiMap<K, V> hashBiMap) {
            this.bimap = hashBiMap;
        }

        public Object readResolve() {
            return this.bimap.inverse();
        }
    }

    public abstract class Itr<T> implements Iterator<T> {
        int expectedModCount;
        BiEntry<K, V> next;
        int remaining;
        BiEntry<K, V> toRemove = null;

        public Itr() {
            this.next = HashBiMap.this.firstInKeyInsertionOrder;
            this.expectedModCount = HashBiMap.this.modCount;
            this.remaining = HashBiMap.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (HashBiMap.this.modCount == this.expectedModCount) {
                return this.next != null && this.remaining > 0;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            BiEntry<K, V> biEntry = this.next;
            java.util.Objects.requireNonNull(biEntry);
            this.next = biEntry.nextInKeyInsertionOrder;
            this.toRemove = biEntry;
            this.remaining--;
            return output(biEntry);
        }

        public abstract T output(BiEntry<K, V> biEntry);

        @Override // java.util.Iterator
        public void remove() {
            if (HashBiMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
            BiEntry<K, V> biEntry = this.toRemove;
            if (biEntry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            HashBiMap.this.delete(biEntry);
            this.expectedModCount = HashBiMap.this.modCount;
            this.toRemove = null;
        }
    }

    public final class KeySet extends Maps.KeySet<K, V> {
        public KeySet() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new HashBiMap<K, V>.Itr<K>(this) { // from class: com.google.common.collect.HashBiMap.KeySet.1
                {
                    HashBiMap hashBiMap = HashBiMap.this;
                }

                @Override // com.google.common.collect.HashBiMap.Itr
                @ParametricNullness
                public K output(BiEntry<K, V> biEntry) {
                    return biEntry.key;
                }
            };
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            BiEntry biEntrySeekByKey = HashBiMap.this.seekByKey(obj, Hashing.smearedHash(obj));
            if (biEntrySeekByKey == null) {
                return false;
            }
            HashBiMap.this.delete(biEntrySeekByKey);
            biEntrySeekByKey.prevInKeyInsertionOrder = null;
            biEntrySeekByKey.nextInKeyInsertionOrder = null;
            return true;
        }
    }

    private HashBiMap(int i2) {
        init(i2);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private BiEntry<K, V>[] createTable(int i2) {
        return new BiEntry[i2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(BiEntry<K, V> biEntry) {
        BiEntry<K, V> biEntry2;
        int i2 = biEntry.keyHash & this.mask;
        BiEntry<K, V> biEntry3 = null;
        BiEntry<K, V> biEntry4 = null;
        for (BiEntry<K, V> biEntry5 = this.hashTableKToV[i2]; biEntry5 != biEntry; biEntry5 = biEntry5.nextInKToVBucket) {
            biEntry4 = biEntry5;
        }
        if (biEntry4 == null) {
            this.hashTableKToV[i2] = biEntry.nextInKToVBucket;
        } else {
            biEntry4.nextInKToVBucket = biEntry.nextInKToVBucket;
        }
        int i3 = biEntry.valueHash & this.mask;
        BiEntry<K, V> biEntry6 = this.hashTableVToK[i3];
        while (true) {
            biEntry2 = biEntry3;
            biEntry3 = biEntry6;
            if (biEntry3 == biEntry) {
                break;
            } else {
                biEntry6 = biEntry3.nextInVToKBucket;
            }
        }
        if (biEntry2 == null) {
            this.hashTableVToK[i3] = biEntry.nextInVToKBucket;
        } else {
            biEntry2.nextInVToKBucket = biEntry.nextInVToKBucket;
        }
        BiEntry<K, V> biEntry7 = biEntry.prevInKeyInsertionOrder;
        if (biEntry7 == null) {
            this.firstInKeyInsertionOrder = biEntry.nextInKeyInsertionOrder;
        } else {
            biEntry7.nextInKeyInsertionOrder = biEntry.nextInKeyInsertionOrder;
        }
        BiEntry<K, V> biEntry8 = biEntry.nextInKeyInsertionOrder;
        if (biEntry8 == null) {
            this.lastInKeyInsertionOrder = biEntry7;
        } else {
            biEntry8.prevInKeyInsertionOrder = biEntry7;
        }
        this.size--;
        this.modCount++;
    }

    private void init(int i2) {
        CollectPreconditions.checkNonnegative(i2, "expectedSize");
        int iClosedTableSize = Hashing.closedTableSize(i2, LOAD_FACTOR);
        this.hashTableKToV = createTable(iClosedTableSize);
        this.hashTableVToK = createTable(iClosedTableSize);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.size = 0;
        this.mask = iClosedTableSize - 1;
        this.modCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insert(BiEntry<K, V> biEntry, BiEntry<K, V> biEntry2) {
        int i2 = biEntry.keyHash;
        int i3 = this.mask;
        int i4 = i2 & i3;
        BiEntry<K, V>[] biEntryArr = this.hashTableKToV;
        biEntry.nextInKToVBucket = biEntryArr[i4];
        biEntryArr[i4] = biEntry;
        int i5 = biEntry.valueHash & i3;
        BiEntry<K, V>[] biEntryArr2 = this.hashTableVToK;
        biEntry.nextInVToKBucket = biEntryArr2[i5];
        biEntryArr2[i5] = biEntry;
        if (biEntry2 == null) {
            BiEntry<K, V> biEntry3 = this.lastInKeyInsertionOrder;
            biEntry.prevInKeyInsertionOrder = biEntry3;
            biEntry.nextInKeyInsertionOrder = null;
            if (biEntry3 == null) {
                this.firstInKeyInsertionOrder = biEntry;
            } else {
                biEntry3.nextInKeyInsertionOrder = biEntry;
            }
            this.lastInKeyInsertionOrder = biEntry;
        } else {
            BiEntry<K, V> biEntry4 = biEntry2.prevInKeyInsertionOrder;
            biEntry.prevInKeyInsertionOrder = biEntry4;
            if (biEntry4 == null) {
                this.firstInKeyInsertionOrder = biEntry;
            } else {
                biEntry4.nextInKeyInsertionOrder = biEntry;
            }
            BiEntry<K, V> biEntry5 = biEntry2.nextInKeyInsertionOrder;
            biEntry.nextInKeyInsertionOrder = biEntry5;
            if (biEntry5 == null) {
                this.lastInKeyInsertionOrder = biEntry;
            } else {
                biEntry5.prevInKeyInsertionOrder = biEntry;
            }
        }
        this.size++;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public K putInverse(@ParametricNullness V v2, @ParametricNullness K k2, boolean z2) {
        int iSmearedHash = Hashing.smearedHash(v2);
        int iSmearedHash2 = Hashing.smearedHash(k2);
        BiEntry<K, V> biEntrySeekByValue = seekByValue(v2, iSmearedHash);
        BiEntry<K, V> biEntrySeekByKey = seekByKey(k2, iSmearedHash2);
        if (biEntrySeekByValue != null && iSmearedHash2 == biEntrySeekByValue.keyHash && Objects.equal(k2, biEntrySeekByValue.key)) {
            return k2;
        }
        if (biEntrySeekByKey != null && !z2) {
            throw new IllegalArgumentException("key already present: " + k2);
        }
        if (biEntrySeekByValue != null) {
            delete(biEntrySeekByValue);
        }
        if (biEntrySeekByKey != null) {
            delete(biEntrySeekByKey);
        }
        insert(new BiEntry<>(k2, iSmearedHash2, v2, iSmearedHash), biEntrySeekByKey);
        if (biEntrySeekByKey != null) {
            biEntrySeekByKey.prevInKeyInsertionOrder = null;
            biEntrySeekByKey.nextInKeyInsertionOrder = null;
        }
        if (biEntrySeekByValue != null) {
            biEntrySeekByValue.prevInKeyInsertionOrder = null;
            biEntrySeekByValue.nextInKeyInsertionOrder = null;
        }
        rehashIfNecessary();
        return (K) Maps.keyOrNull(biEntrySeekByValue);
    }

    @J2ktIncompatible
    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int count = Serialization.readCount(objectInputStream);
        init(16);
        Serialization.populateMap(this, objectInputStream, count);
    }

    private void rehashIfNecessary() {
        BiEntry<K, V>[] biEntryArr = this.hashTableKToV;
        if (Hashing.needsResizing(this.size, biEntryArr.length, LOAD_FACTOR)) {
            int length = biEntryArr.length * 2;
            this.hashTableKToV = createTable(length);
            this.hashTableVToK = createTable(length);
            this.mask = length - 1;
            this.size = 0;
            for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
                insert(biEntry, biEntry);
            }
            this.modCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BiEntry<K, V> seekByKey(Object obj, int i2) {
        for (BiEntry<K, V> biEntry = this.hashTableKToV[this.mask & i2]; biEntry != null; biEntry = biEntry.nextInKToVBucket) {
            if (i2 == biEntry.keyHash && Objects.equal(obj, biEntry.key)) {
                return biEntry;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BiEntry<K, V> seekByValue(Object obj, int i2) {
        for (BiEntry<K, V> biEntry = this.hashTableVToK[this.mask & i2]; biEntry != null; biEntry = biEntry.nextInVToKBucket) {
            if (i2 == biEntry.valueHash && Objects.equal(obj, biEntry.value)) {
                return biEntry;
            }
        }
        return null;
    }

    @J2ktIncompatible
    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Serialization.writeMap(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.size = 0;
        Arrays.fill(this.hashTableKToV, (Object) null);
        Arrays.fill(this.hashTableVToK, (Object) null);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return seekByKey(obj, Hashing.smearedHash(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return seekByValue(obj, Hashing.smearedHash(obj)) != null;
    }

    @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new HashBiMap<K, V>.Itr<Map.Entry<K, V>>() { // from class: com.google.common.collect.HashBiMap.1

            /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$1$MapEntry */
            public class MapEntry extends AbstractMapEntry<K, V> {
                BiEntry<K, V> delegate;

                public MapEntry(BiEntry<K, V> biEntry) {
                    this.delegate = biEntry;
                }

                @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                @ParametricNullness
                public K getKey() {
                    return this.delegate.key;
                }

                @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                @ParametricNullness
                public V getValue() {
                    return this.delegate.value;
                }

                @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                @ParametricNullness
                public V setValue(@ParametricNullness V v2) {
                    V v3 = this.delegate.value;
                    int iSmearedHash = Hashing.smearedHash(v2);
                    if (iSmearedHash == this.delegate.valueHash && Objects.equal(v2, v3)) {
                        return v2;
                    }
                    Preconditions.checkArgument(HashBiMap.this.seekByValue(v2, iSmearedHash) == null, "value already present: %s", v2);
                    HashBiMap.this.delete(this.delegate);
                    BiEntry<K, V> biEntry = this.delegate;
                    BiEntry<K, V> biEntry2 = new BiEntry<>(biEntry.key, biEntry.keyHash, v2, iSmearedHash);
                    HashBiMap.this.insert(biEntry2, this.delegate);
                    BiEntry<K, V> biEntry3 = this.delegate;
                    biEntry3.prevInKeyInsertionOrder = null;
                    biEntry3.nextInKeyInsertionOrder = null;
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    anonymousClass1.expectedModCount = HashBiMap.this.modCount;
                    AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                    if (anonymousClass2.toRemove == this.delegate) {
                        anonymousClass2.toRemove = biEntry2;
                    }
                    this.delegate = biEntry2;
                    return v3;
                }
            }

            @Override // com.google.common.collect.HashBiMap.Itr
            public Map.Entry<K, V> output(BiEntry<K, V> biEntry) {
                return new MapEntry(biEntry);
            }
        };
    }

    @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
            biConsumer.accept(biEntry.key, biEntry.value);
        }
    }

    @Override // com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    public V forcePut(@ParametricNullness K k2, @ParametricNullness V v2) {
        return put(k2, v2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        return (V) Maps.valueOrNull(seekByKey(obj, Hashing.smearedHash(obj)));
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        BiMap<V, K> biMap = this.inverse;
        if (biMap != null) {
            return biMap;
        }
        Inverse inverse = new Inverse();
        this.inverse = inverse;
        return inverse;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return new KeySet();
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    public V put(@ParametricNullness K k2, @ParametricNullness V v2) {
        return put(k2, v2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(Object obj) {
        BiEntry<K, V> biEntrySeekByKey = seekByKey(obj, Hashing.smearedHash(obj));
        if (biEntrySeekByKey == null) {
            return null;
        }
        delete(biEntrySeekByKey);
        biEntrySeekByKey.prevInKeyInsertionOrder = null;
        biEntrySeekByKey.nextInKeyInsertionOrder = null;
        return biEntrySeekByKey.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(biFunction);
        clear();
        for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
            K k2 = biEntry.key;
            put(k2, biFunction.apply(k2, biEntry.value));
        }
    }

    @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public static <K, V> HashBiMap<K, V> create(int i2) {
        return new HashBiMap<>(i2);
    }

    private V put(@ParametricNullness K k2, @ParametricNullness V v2, boolean z2) {
        int iSmearedHash = Hashing.smearedHash(k2);
        int iSmearedHash2 = Hashing.smearedHash(v2);
        BiEntry<K, V> biEntrySeekByKey = seekByKey(k2, iSmearedHash);
        if (biEntrySeekByKey != null && iSmearedHash2 == biEntrySeekByKey.valueHash && Objects.equal(v2, biEntrySeekByKey.value)) {
            return v2;
        }
        BiEntry<K, V> biEntrySeekByValue = seekByValue(v2, iSmearedHash2);
        if (biEntrySeekByValue != null) {
            if (!z2) {
                throw new IllegalArgumentException("value already present: " + v2);
            }
            delete(biEntrySeekByValue);
        }
        BiEntry<K, V> biEntry = new BiEntry<>(k2, iSmearedHash, v2, iSmearedHash2);
        if (biEntrySeekByKey == null) {
            insert(biEntry, null);
            rehashIfNecessary();
            return null;
        }
        delete(biEntrySeekByKey);
        insert(biEntry, biEntrySeekByKey);
        biEntrySeekByKey.prevInKeyInsertionOrder = null;
        biEntrySeekByKey.nextInKeyInsertionOrder = null;
        return biEntrySeekByKey.value;
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    public Set<V> values() {
        return inverse().keySet();
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }
}
