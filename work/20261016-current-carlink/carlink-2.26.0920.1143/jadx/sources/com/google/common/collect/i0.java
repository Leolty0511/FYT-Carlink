package com.google.common.collect;

import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i0 implements ObjIntConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f450b;

    public /* synthetic */ i0(Object obj, int i2) {
        this.f449a = i2;
        this.f450b = obj;
    }

    @Override // java.util.function.ObjIntConsumer
    public final void accept(Object obj, int i2) {
        switch (this.f449a) {
            case 0:
                ((ImmutableMultiset.Builder) this.f450b).lambda$addAll$0(obj, i2);
                break;
            default:
                ((Multiset) this.f450b).add(obj, i2);
                break;
        }
    }
}
