package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.Range;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class RangeKt {
    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> Range<T> and(Range<T> range, Range<T> range2) {
        t.b.h(range, "<this>");
        t.b.h(range2, "other");
        Range<T> rangeIntersect = range.intersect(range2);
        t.b.g(rangeIntersect, "intersect(other)");
        return rangeIntersect;
    }

    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, T t2) {
        t.b.h(range, "<this>");
        t.b.h(t2, "value");
        Range<T> rangeExtend = range.extend(t2);
        t.b.g(rangeExtend, "extend(value)");
        return rangeExtend;
    }

    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> Range<T> rangeTo(T t2, T t3) {
        t.b.h(t2, "<this>");
        t.b.h(t3, "that");
        return new Range<>(t2, t3);
    }

    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> c0.a toClosedRange(final Range<T> range) {
        t.b.h(range, "<this>");
        return new c0.a() { // from class: androidx.core.util.RangeKt.toClosedRange.1
            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            public boolean contains(Comparable comparable) {
                t.b.h(comparable, "value");
                return comparable.compareTo(getStart()) >= 0 && comparable.compareTo(getEndInclusive()) <= 0;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // c0.a
            public Comparable getEndInclusive() {
                return range.getUpper();
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // c0.a
            public Comparable getStart() {
                return range.getLower();
            }

            public boolean isEmpty() {
                return getStart().compareTo(getEndInclusive()) > 0;
            }
        };
    }

    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> Range<T> toRange(c0.a aVar) {
        t.b.h(aVar, "<this>");
        return new Range<>(aVar.getStart(), aVar.getEndInclusive());
    }

    @RequiresApi(21)
    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, Range<T> range2) {
        t.b.h(range, "<this>");
        t.b.h(range2, "other");
        Range<T> rangeExtend = range.extend(range2);
        t.b.g(rangeExtend, "extend(other)");
        return rangeExtend;
    }
}
