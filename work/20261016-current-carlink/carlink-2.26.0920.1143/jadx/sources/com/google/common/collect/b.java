package com.google.common.collect;

import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f429b;
    public final /* synthetic */ BiConsumer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f430d;

    public /* synthetic */ b(BiConsumer biConsumer, Object obj, int i2) {
        this.f429b = i2;
        this.c = biConsumer;
        this.f430d = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f429b) {
            case 0:
                com.google.common.base.a.v(this.c, this.f430d, obj);
                break;
            default:
                com.google.common.base.a.v(this.c, this.f430d, obj);
                break;
        }
    }
}
