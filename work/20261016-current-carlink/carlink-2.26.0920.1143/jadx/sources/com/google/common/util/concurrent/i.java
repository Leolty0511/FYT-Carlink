package com.google.common.util.concurrent;

import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i implements DoubleUnaryOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DoubleBinaryOperator f538b;
    public final /* synthetic */ double c;

    public /* synthetic */ i(int i2, double d2, DoubleBinaryOperator doubleBinaryOperator) {
        this.f537a = i2;
        this.f538b = doubleBinaryOperator;
        this.c = d2;
    }

    @Override // java.util.function.DoubleUnaryOperator
    public final double applyAsDouble(double d2) {
        switch (this.f537a) {
            case 0:
                return AtomicDouble.lambda$accumulateAndGet$1(this.f538b, this.c, d2);
            case 1:
                return AtomicDouble.lambda$getAndAccumulate$0(this.f538b, this.c, d2);
            case 2:
                return AtomicDoubleArray.lambda$getAndAccumulate$0(this.f538b, this.c, d2);
            default:
                return AtomicDoubleArray.lambda$accumulateAndGet$1(this.f538b, this.c, d2);
        }
    }
}
