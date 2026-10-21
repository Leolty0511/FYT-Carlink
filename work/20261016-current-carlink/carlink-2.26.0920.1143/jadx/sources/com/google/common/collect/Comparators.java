package com.google.common.collect;

import android.app.backup.FullBackup;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class Comparators {
    private Comparators() {
    }

    public static <T> Comparator<Optional<T>> emptiesFirst(Comparator<? super T> comparator) {
        Preconditions.checkNotNull(comparator);
        return Comparator.comparing(new c(27), Comparator.nullsFirst(comparator));
    }

    public static <T> Comparator<Optional<T>> emptiesLast(Comparator<? super T> comparator) {
        Preconditions.checkNotNull(comparator);
        return Comparator.comparing(new c(28), Comparator.nullsLast(comparator));
    }

    public static <T> Collector<T, ?, List<T>> greatest(int i2, Comparator<? super T> comparator) {
        return least(i2, comparator.reversed());
    }

    public static <T> boolean isInOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public static <T> boolean isInStrictOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.b0] */
    public static <T> Collector<T, ?, List<T>> least(final int i2, final Comparator<? super T> comparator) {
        CollectPreconditions.checkNonnegative(i2, FullBackup.KEY_VALUE_DATA_TOKEN);
        Preconditions.checkNotNull(comparator);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.b0
            @Override // java.util.function.Supplier
            public final Object get() {
                return TopKSelector.least(i2, comparator);
            }
        }, new r(1), new l(8), new c(5), Collector.Characteristics.UNORDERED);
    }

    public static <T, S extends T> Comparator<Iterable<S>> lexicographical(Comparator<T> comparator) {
        return new LexicographicalOrdering((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T extends Comparable<? super T>> T max(T t2, T t3) {
        return t2.compareTo(t3) >= 0 ? t2 : t3;
    }

    public static <T extends Comparable<? super T>> T min(T t2, T t3) {
        return t2.compareTo(t3) <= 0 ? t2 : t3;
    }

    @ParametricNullness
    public static <T> T max(@ParametricNullness T t2, @ParametricNullness T t3, Comparator<T> comparator) {
        return comparator.compare(t2, t3) >= 0 ? t2 : t3;
    }

    @ParametricNullness
    public static <T> T min(@ParametricNullness T t2, @ParametricNullness T t3, Comparator<T> comparator) {
        return comparator.compare(t2, t3) <= 0 ? t2 : t3;
    }
}
