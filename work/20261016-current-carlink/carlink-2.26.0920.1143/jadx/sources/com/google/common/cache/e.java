package com.google.common.cache;

import java.util.function.BiPredicate;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e implements BiPredicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f409b;
    public final /* synthetic */ Predicate c;

    public /* synthetic */ e(Predicate predicate, int i2) {
        this.f409b = i2;
        this.c = predicate;
    }

    @Override // java.util.function.BiPredicate
    public final boolean test(Object obj, Object obj2) {
        switch (this.f409b) {
            case 0:
                return LocalCache.EntrySet.lambda$removeIf$0(this.c, obj, obj2);
            default:
                return LocalCache.Values.lambda$removeIf$0(this.c, obj, obj2);
        }
    }
}
