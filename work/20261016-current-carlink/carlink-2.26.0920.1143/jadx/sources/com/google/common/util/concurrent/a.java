package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f523b;
    public final /* synthetic */ Service c;

    public /* synthetic */ a(Service service, int i2) {
        this.f523b = i2;
        this.c = service;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i2 = this.f523b;
        Service service = this.c;
        switch (i2) {
            case 0:
                ((AbstractExecutionThreadService) service).lambda$executor$0(runnable);
                break;
            default:
                ((AbstractIdleService) service).lambda$executor$0(runnable);
                break;
        }
    }
}
