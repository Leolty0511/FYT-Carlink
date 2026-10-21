package com.google.common.collect;

import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f462b;
    public final /* synthetic */ Function c;

    public /* synthetic */ n(Function function, int i2) {
        this.f462b = i2;
        this.c = function;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f462b) {
            case 0:
                return CollectCollectors.lambda$flatteningToImmutableListMultimap$19(this.c, obj);
            case 1:
                return CollectCollectors.lambda$flatteningToImmutableListMultimap$20(this.c, obj);
            case 2:
                return CollectCollectors.lambda$flatteningToImmutableSetMultimap$22(this.c, obj);
            default:
                return CollectCollectors.lambda$flatteningToImmutableSetMultimap$23(this.c, obj);
        }
    }
}
