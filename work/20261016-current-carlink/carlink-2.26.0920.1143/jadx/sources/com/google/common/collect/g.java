package com.google.common.collect;

import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g implements IntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayTable f442b;

    public /* synthetic */ g(ArrayTable arrayTable, int i2) {
        this.f441a = i2;
        this.f442b = arrayTable;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i2) {
        switch (this.f441a) {
            case 0:
                return this.f442b.getValue(i2);
            default:
                return this.f442b.getCell(i2);
        }
    }
}
