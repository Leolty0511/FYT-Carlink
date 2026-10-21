package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f321b;
    public final /* synthetic */ LocationManagerCompat.PreRGnssStatusTransport c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Executor f322d;

    public /* synthetic */ n(LocationManagerCompat.PreRGnssStatusTransport preRGnssStatusTransport, Executor executor, int i2) {
        this.f321b = i2;
        this.c = preRGnssStatusTransport;
        this.f322d = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f321b;
        Executor executor = this.f322d;
        LocationManagerCompat.PreRGnssStatusTransport preRGnssStatusTransport = this.c;
        switch (i2) {
            case 0:
                preRGnssStatusTransport.lambda$onStarted$0(executor);
                break;
            default:
                preRGnssStatusTransport.lambda$onStopped$1(executor);
                break;
        }
    }
}
