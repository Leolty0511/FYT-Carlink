package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(ImmutableMap.EMPTY_ENTRY_ARRAY, null, 0);

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;

    @VisibleForTesting
    static final int MAX_HASH_BUCKET_LENGTH = 8;

    @VisibleForTesting
    static final double MAX_LOAD_FACTOR = 1.2d;

    @J2ktIncompatible
    private static final long serialVersionUID = 0;

    @VisibleForTesting
    final transient Map.Entry<K, V>[] entries;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] table;

    public static class BucketOverflowException extends Exception {
    }

    @GwtCompatible(emulated = true)
    public static final class KeySet<K> extends IndexedImmutableSet<K> {
        private final RegularImmutableMap<K, ?> map;

        @GwtIncompatible
        @J2ktIncompatible
        public static class SerializedForm<K> implements Serializable {

            @J2ktIncompatible
            private static final long serialVersionUID = 0;
            final ImmutableMap<K, ?> map;

            public SerializedForm(ImmutableMap<K, ?> immutableMap) {
                this.map = immutableMap;
            }

            public Object readResolve() {
                return this.map.keySet();
            }
        }

        public KeySet(RegularImmutableMap<K, ?> regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public K get(int i2) {
            return this.map.entries[i2].getKey();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }
    }

    @GwtCompatible(emulated = true)
    public static final class Values<K, V> extends ImmutableList<V> {
        final RegularImmutableMap<K, V> map;

        @GwtIncompatible
        @J2ktIncompatible
        public static class SerializedForm<V> implements Serializable {

            @J2ktIncompatible
            private static final long serialVersionUID = 0;
            final ImmutableMap<?, V> map;

            public SerializedForm(ImmutableMap<?, V> immutableMap) {
                this.map = immutableMap;
            }

            public Object readResolve() {
                return this.map.values();
            }
        }

        public Values(RegularImmutableMap<K, V> regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // java.util.List
        public V get(int i2) {
            return this.map.entries[i2].getValue();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.map.size();
        }
    }

    private RegularImmutableMap(Map.Entry<K, V>[] entryArr, ImmutableMapEntry<K, V>[] immutableMapEntryArr, int i2) {
        this.entries = entryArr;
        this.table = immutableMapEntryArr;
        this.mask = i2;
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMapEntry<K, V> checkNoConflictInKeyBucket(Object obj, Object obj2, ImmutableMapEntry<K, V> immutableMapEntry, boolean z2) {
        int i2 = 0;
        while (immutableMapEntry != null) {
            if (immutableMapEntry.getKey().equals(obj)) {
                if (!z2) {
                    return immutableMapEntry;
                }
                ImmutableMap.checkNoConflict(false, "key", immutableMapEntry, obj + "=" + obj2);
            }
            i2++;
            if (i2 > 8) {
                throw new BucketOverflowException();
            }
            immutableMapEntry = immutableMapEntry.getNextInKeyBucket();
        }
        return null;
    }

    public static <K, V> ImmutableMap<K, V> fromEntries(Map.Entry<K, V>... entryArr) {
        return fromEntryArray(entryArr.length, entryArr, true);
    }

    public static <K, V> ImmutableMap<K, V> fromEntryArray(int i2, Map.Entry<K, V>[] entryArr, boolean z2) {
        Preconditions.checkPositionIndex(i2, entryArr.length);
        if (i2 == 0) {
            return (ImmutableMap<K, V>) EMPTY;
        }
        try {
            return fromEntryArrayCheckingBucketOverflow(i2, entryArr, z2);
        } catch (BucketOverflowException unused) {
            return JdkBackedImmutableMap.create(i2, entryArr, z2);
        }
    }

    private static <K, V> ImmutableMap<K, V> fromEntryArrayCheckingBucketOverflow(int i2, Map.Entry<K, V>[] entryArr, boolean z2) {
        Map.Entry<K, V>[] entryArrCreateEntryArray = i2 == entryArr.length ? entryArr : ImmutableMapEntry.createEntryArray(i2);
        int iClosedTableSize = Hashing.closedTableSize(i2, MAX_LOAD_FACTOR);
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray = ImmutableMapEntry.createEntryArray(iClosedTableSize);
        int i3 = iClosedTableSize - 1;
        IdentityHashMap identityHashMap = null;
        int i4 = 0;
        for (int i5 = i2 - 1; i5 >= 0; i5--) {
            Map.Entry<K, V> entry = entryArr[i5];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            K key = entry2.getKey();
            V value = entry2.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int iSmear = Hashing.smear(key.hashCode()) & i3;
            ImmutableMapEntry immutableMapEntry = immutableMapEntryArrCreateEntryArray[iSmear];
            ImmutableMapEntry immutableMapEntryCheckNoConflictInKeyBucket = checkNoConflictInKeyBucket(key, value, immutableMapEntry, z2);
            if (immutableMapEntryCheckNoConflictInKeyBucket == null) {
                immutableMapEntryCheckNoConflictInKeyBucket = immutableMapEntry == null ? makeImmutable(entry2, key, value) : new ImmutableMapEntry.NonTerminalImmutableMapEntry(key, value, immutableMapEntry);
                immutableMapEntryArrCreateEntryArray[iSmear] = immutableMapEntryCheckNoConflictInKeyBucket;
            } else {
                if (identityHashMap == null) {
                    identityHashMap = new IdentityHashMap();
                }
                identityHashMap.put(immutableMapEntryCheckNoConflictInKeyBucket, Boolean.TRUE);
                i4++;
                if (entryArrCreateEntryArray == entryArr) {
                    entryArrCreateEntryArray = (Map.Entry[]) entryArrCreateEntryArray.clone();
                }
            }
            entryArrCreateEntryArray[i5] = immutableMapEntryCheckNoConflictInKeyBucket;
        }
        if (identityHashMap != null) {
            entryArrCreateEntryArray = removeDuplicates(entryArrCreateEntryArray, i2, i2 - i4, identityHashMap);
            if (Hashing.closedTableSize(entryArrCreateEntryArray.length, MAX_LOAD_FACTOR) != iClosedTableSize) {
                return fromEntryArrayCheckingBucketOverflow(entryArrCreateEntryArray.length, entryArrCreateEntryArray, true);
            }
        }
        return new RegularImmutableMap(entryArrCreateEntryArray, immutableMapEntryArrCreateEntryArray, i3);
    }

    public static <K, V> ImmutableMapEntry<K, V> makeImmutable(Map.Entry<K, V> entry, K k2, V v2) {
        return (entry instanceof ImmutableMapEntry) && ((ImmutableMapEntry) entry).isReusable() ? (ImmutableMapEntry) entry : new ImmutableMapEntry<>(k2, v2);
    }

    public static <K, V> Map.Entry<K, V>[] removeDuplicates(Map.Entry<K, V>[] entryArr, int i2, int i3, IdentityHashMap<Map.Entry<K, V>, Boolean> identityHashMap) {
        ImmutableMapEntry[] immutableMapEntryArrCreateEntryArray = ImmutableMapEntry.createEntryArray(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            Map.Entry<K, V> entry = entryArr[i5];
            Boolean bool = identityHashMap.get(entry);
            if (bool == null) {
                immutableMapEntryArrCreateEntryArray[i4] = entry;
                i4++;
            } else if (bool.booleanValue()) {
                identityHashMap.put(entry, Boolean.FALSE);
                immutableMapEntryArrCreateEntryArray[i4] = entry;
                i4++;
            }
        }
        return immutableMapEntryArrCreateEntryArray;
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new KeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableCollection<V> createValues() {
        return new Values(this);
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
        return (V) get(obj, this.table, this.mask);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.length;
    }

    public static <V> V get(Object obj, ImmutableMapEntry<?, V>[] immutableMapEntryArr, int i2) {
        if (obj != null && immutableMapEntryArr != null) {
            for (ImmutableMapEntry<?, V> nextInKeyBucket = immutableMapEntryArr[i2 & Hashing.smear(obj.hashCode())]; nextInKeyBucket != null; nextInKeyBucket = nextInKeyBucket.getNextInKeyBucket()) {
                if (obj.equals(nextInKeyBucket.getKey())) {
                    return nextInKeyBucket.getValue();
                }
            }
        }
        return null;
    }

    public static <K, V> ImmutableMapEntry<K, V> makeImmutable(Map.Entry<K, V> entry) {
        return makeImmutable(entry, entry.getKey(), entry.getValue());
    }
}
