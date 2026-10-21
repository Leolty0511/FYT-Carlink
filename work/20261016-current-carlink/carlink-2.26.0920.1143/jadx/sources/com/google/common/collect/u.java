package com.google.common.collect;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u implements IntConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f485b;
    public final /* synthetic */ Consumer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ IntFunction f486d;

    public /* synthetic */ u(Consumer consumer, IntFunction intFunction, int i2) {
        this.f485b = i2;
        this.c = consumer;
        this.f486d = intFunction;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i2) {
        switch (this.f485b) {
            case 0:
                CollectSpliterators.C1WithCharacteristics.lambda$forEachRemaining$1(this.c, this.f486d, i2);
                break;
            default:
                CollectSpliterators.C1WithCharacteristics.lambda$tryAdvance$0(this.c, this.f486d, i2);
                break;
        }
    }
}
