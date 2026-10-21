package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f529b;
    public final /* synthetic */ AbstractIdleService.DelegateService c;

    public /* synthetic */ e(AbstractIdleService.DelegateService delegateService, int i2) {
        this.f529b = i2;
        this.c = delegateService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f529b;
        AbstractIdleService.DelegateService delegateService = this.c;
        switch (i2) {
            case 0:
                delegateService.lambda$doStop$1();
                break;
            default:
                delegateService.lambda$doStart$0();
                break;
        }
    }
}
