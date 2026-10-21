package com.google.common.cache;

import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c implements BiFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f406a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f407b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c(Object obj, BiFunction biFunction) {
        this.f407b = obj;
        this.c = biFunction;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f406a) {
            case 0:
                return LocalCache.lambda$computeIfAbsent$0((Function) this.c, this.f407b, obj, obj2);
            default:
                return LocalCache.lambda$merge$2(this.f407b, (BiFunction) this.c, obj, obj2);
        }
    }

    public /* synthetic */ c(Function function, Object obj) {
        this.c = function;
        this.f407b = obj;
    }
}
