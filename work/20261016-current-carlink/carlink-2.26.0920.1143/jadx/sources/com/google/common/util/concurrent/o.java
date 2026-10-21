package com.google.common.util.concurrent;

import java.util.function.LongBinaryOperator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o implements LongBinaryOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f545a;

    public /* synthetic */ o(int i2) {
        this.f545a = i2;
    }

    @Override // java.util.function.LongBinaryOperator
    public final long applyAsLong(long j2, long j3) {
        switch (this.f545a) {
            case 0:
                break;
            default:
                break;
        }
        return j2 + j3;
    }
}
