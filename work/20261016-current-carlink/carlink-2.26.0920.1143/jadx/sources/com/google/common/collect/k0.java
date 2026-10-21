package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k0 implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f455b;
    public final /* synthetic */ Comparator c;

    public /* synthetic */ k0(Comparator comparator, int i2) {
        this.f455b = i2;
        this.c = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = this.f455b;
        Comparator comparator = this.c;
        switch (i2) {
            case 0:
                return Iterators.MergingIterator.lambda$new$0(comparator, (PeekingIterator) obj, (PeekingIterator) obj2);
            default:
                return ImmutableSortedMap.lambda$fromEntries$0(comparator, (Map.Entry) obj, (Map.Entry) obj2);
        }
    }
}
