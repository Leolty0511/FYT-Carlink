package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>(null, null, ImmutableMap.EMPTY_ENTRY_ARRAY, 0, 0);
    static final double MAX_LOAD_FACTOR = 1.2d;

    @VisibleForTesting
    final transient Map.Entry<K, V>[] entries;
    private final transient int hashCode;

    @RetainedWith
    @LazyInit
    private transient ImmutableBiMap<V, K> inverse;
    private final transient ImmutableMapEntry<K, V>[] keyTable;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] valueTable;

    public final class Inverse extends ImmutableBiMap<V, K> {

        public final class InverseEntrySet extends ImmutableMapEntrySet<V, K> {
            public InverseEntrySet() {
            }

            @Override // com.google.common.collect.ImmutableSet.CachingAsList
            public ImmutableList<Map.Entry<V, K>> createAsList() {
                return new ImmutableAsList<Map.Entry<V, K>>() { // from class: com.google.common.collect.RegularImmutableBiMap.Inverse.InverseEntrySet.1
                    @Override // com.google.common.collect.ImmutableAsList
                    public ImmutableCollection<Map.Entry<V, K>> delegateCollection() {
                        return InverseEntrySet.this;
                    }

                    @Override // java.util.List
                    public Map.Entry<V, K> get(int i2) {
                        Map.Entry<K, V> entry = RegularImmutableBiMap.this.entries[i2];
                        return Maps.immutableEntry(entry.getValue(), entry.getKey());
                    }
                };
            }

            @Override // java.lang.Iterable
            public void forEach(Consumer<? super Map.Entry<V, K>> consumer) {
                asList().forEach(consumer);
            }

            @Override // com.google.common.collect.ImmutableMapEntrySet, com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }

            @Override // com.google.common.collect.ImmutableMapEntrySet, com.google.common.collect.ImmutableSet
            public boolean isHashCodeFast() {
                return true;
            }

            @Override // com.google.common.collect.ImmutableMapEntrySet
            public ImmutableMap<V, K> map() {
                return Inverse.this;
            }

            @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
            public UnmodifiableIterator<Map.Entry<V, K>> iterator() {
                return asList().iterator();
            }
        }

        private Inverse() {
        }

        @J2ktIncompatible
        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use InverseSerializedForm");
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<Map.Entry<V, K>> createEntrySet() {
            return new InverseEntrySet();
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<V> createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override // java.util.Map
        public void forEach(BiConsumer<? super V, ? super K> biConsumer) {
            Preconditions.checkNotNull(biConsumer);
            RegularImmutableBiMap.this.forEach(new a(biConsumer, 2));
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public K get(Object obj) {
            if (obj != null && RegularImmutableBiMap.this.valueTable != null) {
                for (ImmutableMapEntry nextInValueBucket = RegularImmutableBiMap.this.valueTable[Hashing.smear(obj.hashCode()) & RegularImmutableBiMap.this.mask]; nextInValueBucket != null; nextInValueBucket = nextInValueBucket.getNextInValueBucket()) {
                    if (obj.equals(nextInValueBucket.getValue())) {
                        return nextInValueBucket.getKey();
                    }
                }
            }
            return null;
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.Map
        public int size() {
            return inverse().size();
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
        @J2ktIncompatible
        public Object writeReplace() {
            return new InverseSerializedForm(RegularImmutableBiMap.this);
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
        public ImmutableBiMap<K, V> inverse() {
            return RegularImmutableBiMap.this;
        }
    }

    @J2ktIncompatible
    public static class InverseSerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        private final ImmutableBiMap<K, V> forward;

        public InverseSerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            this.forward = immutableBiMap;
        }

        public Object readResolve() {
            return this.forward.inverse();
        }
    }

    private RegularImmutableBiMap(ImmutableMapEntry<K, V>[] immutableMapEntryArr, ImmutableMapEntry<K, V>[] immutableMapEntryArr2, Map.Entry<K, V>[] entryArr, int i2, int i3) {
        this.keyTable = immutableMapEntryArr;
        this.valueTable = immutableMapEntryArr2;
        this.entries = entryArr;
        this.mask = i2;
        this.hashCode = i3;
    }

    private static void checkNoConflictInValueBucket(Object obj, Map.Entry<?, ?> entry, ImmutableMapEntry<?, ?> immutableMapEntry) throws RegularImmutableMap.BucketOverflowException {
        int i2 = 0;
        while (immutableMapEntry != null) {
            ImmutableMap.checkNoConflict(!obj.equals(immutableMapEntry.getValue()), "value", entry, immutableMapEntry);
            i2++;
            if (i2 > 8) {
                throw new RegularImmutableMap.BucketOverflowException();
            }
            immutableMapEntry = immutableMapEntry.getNextInValueBucket();
        }
    }

    public static <K, V> ImmutableBiMap<K, V> fromEntries(Map.Entry<K, V>... entryArr) {
        return fromEntryArray(entryArr.length, entryArr);
    }

    public static <K, V> ImmutableBiMap<K, V> fromEntryArray(int i2, Map.Entry<K, V>[] entryArr) {
        int i3 = i2;
        Map.Entry<K, V>[] entryArr2 = entryArr;
        Preconditions.checkPositionIndex(i3, entryArr2.length);
        int iClosedTableSize = Hashing.closedTableSize(i3, MAX_LOAD_FACTOR);
        int i4 = iClosedTableSize - 1;
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray = ImmutableMapEntry.createEntryArray(iClosedTableSize);
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray2 = ImmutableMapEntry.createEntryArray(iClosedTableSize);
        Map.Entry<K, V>[] entryArrCreateEntryArray = i3 == entryArr2.length ? entryArr2 : ImmutableMapEntry.createEntryArray(i2);
        int i5 = 0;
        int i6 = 0;
        while (i5 < i3) {
            Map.Entry<K, V> entry = entryArr2[i5];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            K key = entry2.getKey();
            V value = entry2.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int iHashCode = key.hashCode();
            int iHashCode2 = value.hashCode();
            int iSmear = Hashing.smear(iHashCode) & i4;
            int iSmear2 = Hashing.smear(iHashCode2) & i4;
            ImmutableMapEntry immutableMapEntry = immutableMapEntryArrCreateEntryArray[iSmear];
            ImmutableMapEntry immutableMapEntry2 = immutableMapEntryArrCreateEntryArray2[iSmear2];
            try {
                RegularImmutableMap.checkNoConflictInKeyBucket(key, value, immutableMapEntry, true);
                checkNoConflictInValueBucket(value, entry2, immutableMapEntry2);
                ImmutableMapEntry immutableMapEntryMakeImmutable = (immutableMapEntry2 == null && immutableMapEntry == null) ? RegularImmutableMap.makeImmutable(entry2, key, value) : new ImmutableMapEntry.NonTerminalImmutableBiMapEntry(key, value, immutableMapEntry, immutableMapEntry2);
                immutableMapEntryArrCreateEntryArray[iSmear] = immutableMapEntryMakeImmutable;
                immutableMapEntryArrCreateEntryArray2[iSmear2] = immutableMapEntryMakeImmutable;
                entryArrCreateEntryArray[i5] = immutableMapEntryMakeImmutable;
                i6 += iHashCode ^ iHashCode2;
                i5++;
                i3 = i2;
                entryArr2 = entryArr;
            } catch (RegularImmutableMap.BucketOverflowException unused) {
                return JdkBackedImmutableBiMap.create(i2, entryArr);
            }
        }
        return new RegularImmutableBiMap(immutableMapEntryArrCreateEntryArray, immutableMapEntryArrCreateEntryArray2, entryArrCreateEntryArray, i4, i6);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new ImmutableMapKeySet(this);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        for (Map.Entry<K, V> entry : this.entries) {
            biConsumer.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return (V) RegularImmutableMap.get(obj, this.keyTable, this.mask);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public int hashCode() {
        return this.hashCode;
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.length;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        if (isEmpty()) {
            return ImmutableBiMap.of();
        }
        ImmutableBiMap<V, K> immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        Inverse inverse = new Inverse();
        this.inverse = inverse;
        return inverse;
    }
}
