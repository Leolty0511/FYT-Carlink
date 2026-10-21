package com.google.common.collect;

import java.util.Collection;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f493b;
    public final /* synthetic */ Collection c;

    public /* synthetic */ z(Collection collection, int i2) {
        this.f493b = i2;
        this.c = collection;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f493b) {
            case 0:
                return Collections2.FilteredCollection.lambda$retainAll$1(this.c, obj);
            default:
                return this.c.contains(obj);
        }
    }
}
