package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible
public interface LoadingCache<K, V> extends Cache<K, V>, Function<K, V> {
    @Override // com.google.common.base.Function, java.util.function.Function
    @Deprecated
    V apply(K k2);

    @Override // com.google.common.cache.Cache
    ConcurrentMap<K, V> asMap();

    @CanIgnoreReturnValue
    V get(K k2);

    @CanIgnoreReturnValue
    ImmutableMap<K, V> getAll(Iterable<? extends K> iterable);

    @CanIgnoreReturnValue
    V getUnchecked(K k2);

    void refresh(K k2);
}
