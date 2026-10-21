package com.google.common.collect;

import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q0 implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f478b;
    public final /* synthetic */ Consumer c;

    public /* synthetic */ q0(Consumer consumer, int i2) {
        this.f478b = i2;
        this.c = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f478b) {
            case 0:
                Multimaps.Keys.lambda$forEach$0(this.c, (Map.Entry) obj);
                break;
            default:
                t0.d(this.c, (Multiset.Entry) obj);
                break;
        }
    }
}
