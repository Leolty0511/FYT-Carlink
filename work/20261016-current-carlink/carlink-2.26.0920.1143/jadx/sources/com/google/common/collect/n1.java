package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n1 implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function f466b;
    public final /* synthetic */ Function c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Function f467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BinaryOperator f468e;

    public /* synthetic */ n1(Function function, Function function2, Function function3, BinaryOperator binaryOperator, int i2) {
        this.f465a = i2;
        this.f466b = function;
        this.c = function2;
        this.f467d = function3;
        this.f468e = binaryOperator;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f465a) {
            case 0:
                TableCollectors.lambda$toTable$6(this.f466b, this.c, this.f467d, this.f468e, (Table) obj, obj2);
                break;
            default:
                TableCollectors.lambda$toImmutableTable$2(this.f466b, this.c, this.f467d, this.f468e, (TableCollectors.ImmutableTableCollectorState) obj, obj2);
                break;
        }
    }
}
