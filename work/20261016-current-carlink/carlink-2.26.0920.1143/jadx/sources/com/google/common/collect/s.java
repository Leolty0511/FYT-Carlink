package com.google.common.collect;

import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f481b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s(Object obj, int i2) {
        this.f481b = i2;
        this.c = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f481b) {
            case 0:
                return CollectCollectors.lambda$toImmutableEnumMap$15((BinaryOperator) this.c);
            case 1:
                return Iterables.AnonymousClass1.lambda$spliterator$0((Iterable) this.c);
            case 2:
                return ((MultimapBuilder.ListMultimapBuilder) this.c).build();
            default:
                return ((MultimapBuilder.SetMultimapBuilder) this.c).build();
        }
    }
}
