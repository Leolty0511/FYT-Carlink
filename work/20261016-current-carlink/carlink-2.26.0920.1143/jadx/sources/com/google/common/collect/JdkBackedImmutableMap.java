package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
final class JdkBackedImmutableMap<K, V> extends ImmutableMap<K, V> {
    private final transient Map<K, V> delegateMap;
    private final transient ImmutableList<Map.Entry<K, V>> entries;

    public JdkBackedImmutableMap(Map<K, V> map, ImmutableList<Map.Entry<K, V>> immutableList) {
        this.delegateMap = map;
        this.entries = immutableList;
    }

    public static <K, V> ImmutableMap<K, V> create(int i2, Map.Entry<K, V>[] entryArr, boolean z2) {
        HashMap mapNewHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(i2);
        HashMap map = null;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Map.Entry<K, V> entry = entryArr[i4];
            Objects.requireNonNull(entry);
            ImmutableMapEntry immutableMapEntryMakeImmutable = RegularImmutableMap.makeImmutable(entry);
            entryArr[i4] = immutableMapEntryMakeImmutable;
            K key = immutableMapEntryMakeImmutable.getKey();
            V value = entryArr[i4].getValue();
            Object objPut = mapNewHashMapWithExpectedSize.put(key, value);
            if (objPut != null) {
                if (z2) {
                    throw ImmutableMap.conflictException("key", entryArr[i4], entryArr[i4].getKey() + "=" + objPut);
                }
                if (map == null) {
                    map = new HashMap();
                }
                map.put(key, value);
                i3++;
            }
        }
        if (map != null) {
            Map.Entry<K, V>[] entryArr2 = new Map.Entry[i2 - i3];
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                Map.Entry<K, V> entry2 = entryArr[i6];
                Objects.requireNonNull(entry2);
                Map.Entry<K, V> entry3 = entry2;
                K key2 = entry3.getKey();
                if (map.containsKey(key2)) {
                    Object obj = map.get(key2);
                    if (obj != null) {
                        ImmutableMapEntry immutableMapEntry = new ImmutableMapEntry(key2, obj);
                        map.put(key2, null);
                        entry3 = immutableMapEntry;
                        entryArr2[i5] = entry3;
                        i5++;
                    }
                } else {
                    entryArr2[i5] = entry3;
                    i5++;
                }
            }
            entryArr = entryArr2;
        }
        return new JdkBackedImmutableMap(mapNewHashMapWithExpectedSize, ImmutableList.asImmutableList(entryArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEach$0(BiConsumer biConsumer, Map.Entry entry) {
        biConsumer.accept(entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new ImmutableMapKeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableCollection<V> createValues() {
        return new ImmutableMapValues(this);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        this.entries.forEach(new l0(biConsumer, 0));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.delegateMap.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.size();
    }
}
