package com.google.common.collect;

import java.util.function.BinaryOperator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o1 implements BinaryOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BinaryOperator f472b;

    public /* synthetic */ o1(BinaryOperator binaryOperator, int i2) {
        this.f471a = i2;
        this.f472b = binaryOperator;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f471a) {
            case 0:
                return TableCollectors.lambda$toTable$7(this.f472b, (Table) obj, (Table) obj2);
            default:
                return TableCollectors.lambda$toImmutableTable$3(this.f472b, (TableCollectors.ImmutableTableCollectorState) obj, (TableCollectors.ImmutableTableCollectorState) obj2);
        }
    }
}
