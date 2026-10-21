package com.google.common.collect;

import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l0 implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f458b;
    public final /* synthetic */ BiConsumer c;

    public /* synthetic */ l0(BiConsumer biConsumer, int i2) {
        this.f458b = i2;
        this.c = biConsumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f458b) {
            case 0:
                JdkBackedImmutableMap.lambda$forEach$0(this.c, (Map.Entry) obj);
                break;
            case 1:
                Streams.lambda$forEachPair$8(this.c, (Streams.TemporaryPair) obj);
                break;
            default:
                Map.Entry entry = (Map.Entry) obj;
                this.c.accept(entry.getKey(), entry.getValue());
                break;
        }
    }
}
