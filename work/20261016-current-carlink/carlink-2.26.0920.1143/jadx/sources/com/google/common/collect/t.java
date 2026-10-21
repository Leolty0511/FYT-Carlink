package com.google.common.collect;

import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f483b;
    public final /* synthetic */ Consumer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Function f484d;

    public /* synthetic */ t(Consumer consumer, Function function, int i2) {
        this.f483b = i2;
        this.c = consumer;
        this.f484d = function;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f483b) {
            case 0:
                CollectSpliterators.AnonymousClass1.lambda$forEachRemaining$1(this.c, this.f484d, obj);
                break;
            default:
                CollectSpliterators.AnonymousClass1.lambda$tryAdvance$0(this.c, this.f484d, obj);
                break;
        }
    }
}
