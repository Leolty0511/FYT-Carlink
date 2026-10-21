package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f531b;
    public final /* synthetic */ AbstractScheduledService.ServiceDelegate c;

    public /* synthetic */ f(AbstractScheduledService.ServiceDelegate serviceDelegate, int i2) {
        this.f531b = i2;
        this.c = serviceDelegate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f531b;
        AbstractScheduledService.ServiceDelegate serviceDelegate = this.c;
        switch (i2) {
            case 0:
                serviceDelegate.lambda$doStop$2();
                break;
            default:
                serviceDelegate.lambda$doStart$1();
                break;
        }
    }
}
