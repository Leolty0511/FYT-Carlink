package android.hardware.radio;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f88b;
    public final /* synthetic */ TunerCallbackAdapter c;

    public /* synthetic */ f(TunerCallbackAdapter tunerCallbackAdapter, int i2) {
        this.f88b = i2;
        this.c = tunerCallbackAdapter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f88b;
        TunerCallbackAdapter tunerCallbackAdapter = this.c;
        switch (i2) {
            case 0:
                tunerCallbackAdapter.lambda$onProgramListChanged$8();
                break;
            default:
                tunerCallbackAdapter.lambda$onBackgroundScanComplete$7();
                break;
        }
    }
}
