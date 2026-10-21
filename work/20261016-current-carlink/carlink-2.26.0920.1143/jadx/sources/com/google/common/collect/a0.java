package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a0 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f427b;
    public final /* synthetic */ Predicate c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractCollection f428d;

    public /* synthetic */ a0(AbstractCollection abstractCollection, Predicate predicate, int i2) {
        this.f427b = i2;
        this.f428d = abstractCollection;
        this.c = predicate;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f427b) {
            case 0:
                return ((Collections2.FilteredCollection) this.f428d).lambda$removeIf$2(this.c, obj);
            case 1:
                return ((Collections2.TransformedCollection) this.f428d).lambda$removeIf$1(this.c, obj);
            case 2:
                return ((Lists.TransformingRandomAccessList) this.f428d).lambda$removeIf$0(this.c, obj);
            default:
                return ((Lists.TransformingSequentialList) this.f428d).lambda$removeIf$0(this.c, obj);
        }
    }
}
