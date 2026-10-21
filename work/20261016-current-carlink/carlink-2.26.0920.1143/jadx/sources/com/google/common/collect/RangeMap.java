package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.lang.Comparable;
import java.util.Map;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes4.dex */
@DoNotMock("Use ImmutableRangeMap or TreeRangeMap")
@GwtIncompatible
@ElementTypesAreNonnullByDefault
public interface RangeMap<K extends Comparable, V> {
    Map<Range<K>, V> asDescendingMapOfRanges();

    Map<Range<K>, V> asMapOfRanges();

    void clear();

    boolean equals(Object obj);

    V get(K k2);

    Map.Entry<Range<K>, V> getEntry(K k2);

    int hashCode();

    void merge(Range<K> range, V v2, BiFunction<? super V, ? super V, ? extends V> biFunction);

    void put(Range<K> range, V v2);

    void putAll(RangeMap<K, ? extends V> rangeMap);

    void putCoalescing(Range<K> range, V v2);

    void remove(Range<K> range);

    Range<K> span();

    RangeMap<K, V> subRangeMap(Range<K> range);

    String toString();
}
