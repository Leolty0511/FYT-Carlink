package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f525b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c(Object obj, int i2) {
        this.f525b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f525b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((AbstractExecutionThreadService.AnonymousClass1) obj).lambda$doStart$1();
                break;
            case 1:
                ((JdkFutureAdapters.ListenableFutureAdapter) obj).lambda$addListener$0();
                break;
            case 2:
                WrappingExecutorService.lambda$wrapTask$0((Callable) obj);
                break;
            case 3:
                ClosingFuture.lambda$closeQuietly$0((AutoCloseable) obj);
                break;
            default:
                ((Future) obj).cancel(false);
                break;
        }
    }
}
