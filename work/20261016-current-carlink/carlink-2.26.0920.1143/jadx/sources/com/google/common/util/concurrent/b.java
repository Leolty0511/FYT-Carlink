package com.google.common.util.concurrent;

import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f524b;
    public final /* synthetic */ AbstractService c;

    public /* synthetic */ b(AbstractService abstractService, int i2) {
        this.f524b = i2;
        this.c = abstractService;
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final Object get() {
        switch (this.f524b) {
            case 0:
                return ((AbstractExecutionThreadService.AnonymousClass1) this.c).lambda$doStart$0();
            default:
                return ((AbstractScheduledService.ServiceDelegate) this.c).lambda$doStart$0();
        }
    }
}
