package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@ElementTypesAreNonnullByDefault
@FunctionalInterface
@GwtCompatible
public interface Weigher<K, V> {
    int weigh(K k2, V v2);
}
