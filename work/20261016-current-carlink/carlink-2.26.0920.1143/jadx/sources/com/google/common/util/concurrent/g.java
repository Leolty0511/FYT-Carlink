package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f532b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f534e;

    public /* synthetic */ g(int i2, int i3, Object obj, Object obj2) {
        this.f532b = i3;
        this.f533d = obj;
        this.f534e = obj2;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f532b;
        int i3 = this.c;
        Object obj = this.f534e;
        Object obj2 = this.f533d;
        switch (i2) {
            case 0:
                ((AggregateFuture) obj2).lambda$init$0((ListenableFuture) obj, i3);
                break;
            default:
                Futures.InCompletionOrderState.access$600((Futures.InCompletionOrderState) obj2, (ImmutableList) obj, i3);
                break;
        }
    }
}
