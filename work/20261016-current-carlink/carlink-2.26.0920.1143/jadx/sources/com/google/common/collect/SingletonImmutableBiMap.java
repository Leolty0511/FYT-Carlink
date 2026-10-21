package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.util.Map;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true, serializable = true)
@ElementTypesAreNonnullByDefault
final class SingletonImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    private final transient ImmutableBiMap<V, K> inverse;

    @RetainedWith
    @LazyInit
    private transient ImmutableBiMap<V, K> lazyInverse;
    final transient K singleKey;
    final transient V singleValue;

    public SingletonImmutableBiMap(K k2, V v2) {
        CollectPreconditions.checkEntryNotNull(k2, v2);
        this.singleKey = k2;
        this.singleValue = v2;
        this.inverse = null;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.singleKey.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsValue(Object obj) {
        return this.singleValue.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return ImmutableSet.of(Maps.immutableEntry(this.singleKey, this.singleValue));
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return ImmutableSet.of(this.singleKey);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        j0.i(Preconditions.checkNotNull(biConsumer)).accept(this.singleKey, this.singleValue);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        if (this.singleKey.equals(obj)) {
            return this.singleValue;
        }
        return null;
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        ImmutableBiMap<V, K> immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        ImmutableBiMap<V, K> immutableBiMap2 = this.lazyInverse;
        if (immutableBiMap2 != null) {
            return immutableBiMap2;
        }
        SingletonImmutableBiMap singletonImmutableBiMap = new SingletonImmutableBiMap(this.singleValue, this.singleKey, this);
        this.lazyInverse = singletonImmutableBiMap;
        return singletonImmutableBiMap;
    }

    private SingletonImmutableBiMap(K k2, V v2, ImmutableBiMap<V, K> immutableBiMap) {
        this.singleKey = k2;
        this.singleValue = v2;
        this.inverse = immutableBiMap;
    }
}
