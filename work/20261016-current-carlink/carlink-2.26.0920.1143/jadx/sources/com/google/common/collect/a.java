package com.google.common.collect;

import java.util.Collection;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f426b;

    public /* synthetic */ a(BiConsumer biConsumer, int i2) {
        this.f425a = i2;
        this.f426b = biConsumer;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f425a) {
            case 0:
                AbstractMapBasedMultimap.lambda$forEach$3(this.f426b, obj, (Collection) obj2);
                break;
            case 1:
                com.google.common.base.a.v(this.f426b, obj2, obj);
                break;
            case 2:
                com.google.common.base.a.v(this.f426b, obj2, obj);
                break;
            default:
                ImmutableMultimap.lambda$forEach$3(this.f426b, obj, (Collection) obj2);
                break;
        }
    }
}
