package com.google.common.collect;

import java.util.Comparator;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f460b;
    public final /* synthetic */ Comparator c;

    public /* synthetic */ m(Comparator comparator, int i2) {
        this.f460b = i2;
        this.c = comparator;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f460b) {
            case 0:
                return CollectCollectors.lambda$toImmutableSortedMap$10(this.c);
            case 1:
                return CollectCollectors.lambda$toImmutableSortedMap$8(this.c);
            case 2:
                return CollectCollectors.lambda$toImmutableSortedSet$0(this.c);
            default:
                return TreeMultiset.create(this.c);
        }
    }
}
