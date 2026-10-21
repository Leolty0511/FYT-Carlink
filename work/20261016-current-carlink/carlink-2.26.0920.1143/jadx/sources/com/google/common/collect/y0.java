package com.google.common.collect;

import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y0 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f492b;
    public final /* synthetic */ Set c;

    public /* synthetic */ y0(Set set, int i2) {
        this.f492b = i2;
        this.c = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f492b) {
            case 0:
                return Sets.AnonymousClass1.lambda$stream$0(this.c, obj);
            case 1:
                return Sets.AnonymousClass3.lambda$parallelStream$1(this.c, obj);
            case 2:
                return Sets.AnonymousClass3.lambda$stream$0(this.c, obj);
            case 3:
                return this.c.contains(obj);
            default:
                return this.c.contains(obj);
        }
    }
}
