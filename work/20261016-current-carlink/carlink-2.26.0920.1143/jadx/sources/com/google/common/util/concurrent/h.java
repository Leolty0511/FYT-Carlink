package com.google.common.util.concurrent;

import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableCollection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f535b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f536d;

    public /* synthetic */ h(Object obj, Object obj2, int i2) {
        this.f535b = i2;
        this.c = obj;
        this.f536d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f535b;
        Object obj = this.f536d;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                ((AggregateFuture) obj2).lambda$init$1((ImmutableCollection) obj);
                break;
            default:
                Callables.lambda$threadRenaming$3((Supplier) obj2, (Runnable) obj);
                break;
        }
    }
}
