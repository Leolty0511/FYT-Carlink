package com.google.common.util.concurrent;

import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q implements LongUnaryOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LongBinaryOperator f547b;
    public final /* synthetic */ long c;

    public /* synthetic */ q(LongBinaryOperator longBinaryOperator, long j2, int i2) {
        this.f546a = i2;
        this.f547b = longBinaryOperator;
        this.c = j2;
    }

    @Override // java.util.function.LongUnaryOperator
    public final long applyAsLong(long j2) {
        switch (this.f546a) {
            case 0:
                return AtomicLongMap.lambda$accumulateAndGet$2(this.f547b, this.c, j2);
            default:
                return AtomicLongMap.lambda$getAndAccumulate$3(this.f547b, this.c, j2);
        }
    }
}
