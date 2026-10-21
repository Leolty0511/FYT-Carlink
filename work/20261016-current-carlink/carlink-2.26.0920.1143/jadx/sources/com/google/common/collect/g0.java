package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g0 implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f444b;

    public /* synthetic */ g0(Consumer consumer, int i2) {
        this.f443a = i2;
        this.f444b = consumer;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f443a) {
            case 0:
                android.widget.d.l(this.f444b, obj);
                break;
            case 1:
                android.widget.d.l(this.f444b, obj2);
                break;
            case 2:
                android.widget.d.l(this.f444b, obj);
                break;
            default:
                android.widget.d.l(this.f444b, obj2);
                break;
        }
    }
}
