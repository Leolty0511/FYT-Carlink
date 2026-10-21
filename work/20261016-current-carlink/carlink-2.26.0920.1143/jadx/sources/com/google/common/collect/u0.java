package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class u0 {
    public static void a(RangeSet rangeSet, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            rangeSet.add((Range) it.next());
        }
    }

    public static boolean b(RangeSet rangeSet, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (!rangeSet.encloses((Range) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static void c(RangeSet rangeSet, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            rangeSet.remove((Range) it.next());
        }
    }
}
