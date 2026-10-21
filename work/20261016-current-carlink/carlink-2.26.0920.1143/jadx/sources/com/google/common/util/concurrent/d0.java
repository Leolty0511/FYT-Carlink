package com.google.common.util.concurrent;

import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d0 implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f528b;
    public final /* synthetic */ int c;

    public /* synthetic */ d0(int i2, int i3) {
        this.f528b = i3;
        this.c = i2;
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final Object get() {
        switch (this.f528b) {
            case 0:
                return Striped.lambda$semaphore$1(this.c);
            default:
                return Striped.lambda$lazyWeakSemaphore$2(this.c);
        }
    }
}
