package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
final class JdkBackedImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    private final Map<V, K> backwardDelegate;
    private final transient ImmutableList<Map.Entry<K, V>> entries;
    private final Map<K, V> forwardDelegate;

    @RetainedWith
    @LazyInit
    private transient JdkBackedImmutableBiMap<V, K> inverse;

    public final class InverseEntries extends ImmutableList<Map.Entry<V, K>> {
        private InverseEntries() {
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return JdkBackedImmutableBiMap.this.entries.size();
        }

        @Override // java.util.List
        public Map.Entry<V, K> get(int i2) {
            Map.Entry entry = (Map.Entry) JdkBackedImmutableBiMap.this.entries.get(i2);
            return Maps.immutableEntry(entry.getValue(), entry.getKey());
        }
    }

    private JdkBackedImmutableBiMap(ImmutableList<Map.Entry<K, V>> immutableList, Map<K, V> map, Map<V, K> map2) {
        this.entries = immutableList;
        this.forwardDelegate = map;
        this.backwardDelegate = map2;
    }

    @VisibleForTesting
    public static <K, V> ImmutableBiMap<K, V> create(int i2, Map.Entry<K, V>[] entryArr) {
        HashMap mapNewHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(i2);
        HashMap mapNewHashMapWithExpectedSize2 = Maps.newHashMapWithExpectedSize(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            Map.Entry<K, V> entry = entryArr[i3];
            Objects.requireNonNull(entry);
            ImmutableMapEntry immutableMapEntryMakeImmutable = RegularImmutableMap.makeImmutable(entry);
            entryArr[i3] = immutableMapEntryMakeImmutable;
            Object objPutIfAbsent = mapNewHashMapWithExpectedSize.putIfAbsent(immutableMapEntryMakeImmutable.getKey(), immutableMapEntryMakeImmutable.getValue());
            if (objPutIfAbsent != null) {
                throw ImmutableMap.conflictException("key", immutableMapEntryMakeImmutable.getKey() + "=" + objPutIfAbsent, entryArr[i3]);
            }
            Object objPutIfAbsent2 = mapNewHashMapWithExpectedSize2.putIfAbsent(immutableMapEntryMakeImmutable.getValue(), immutableMapEntryMakeImmutable.getKey());
            if (objPutIfAbsent2 != null) {
                throw ImmutableMap.conflictException("value", objPutIfAbsent2 + "=" + immutableMapEntryMakeImmutable.getValue(), entryArr[i3]);
            }
        }
        return new JdkBackedImmutableBiMap(ImmutableList.asImmutableList(entryArr, i2), mapNewHashMapWithExpectedSize, mapNewHashMapWithExpectedSize2);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new ImmutableMapKeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.forwardDelegate.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        JdkBackedImmutableBiMap<V, K> jdkBackedImmutableBiMap = this.inverse;
        if (jdkBackedImmutableBiMap != null) {
            return jdkBackedImmutableBiMap;
        }
        JdkBackedImmutableBiMap<V, K> jdkBackedImmutableBiMap2 = new JdkBackedImmutableBiMap<>(new InverseEntries(), this.backwardDelegate, this.forwardDelegate);
        this.inverse = jdkBackedImmutableBiMap2;
        jdkBackedImmutableBiMap2.inverse = this;
        return jdkBackedImmutableBiMap2;
    }
}
