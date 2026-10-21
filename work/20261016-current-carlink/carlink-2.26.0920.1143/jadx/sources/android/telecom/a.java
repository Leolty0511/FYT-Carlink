package android.telecom;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f192b;
    public final /* synthetic */ Call.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Call f193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f194e;

    public /* synthetic */ a(Call.Callback callback, Call call, int i2, int i3) {
        this.f192b = i3;
        this.c = callback;
        this.f193d = call;
        this.f194e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f192b;
        Call.Callback callback = this.c;
        int i3 = this.f194e;
        Call call = this.f193d;
        switch (i2) {
            case 0:
                callback.onRttInitiationFailure(call, i3);
                break;
            case 1:
                callback.onRttRequest(call, i3);
                break;
            default:
                callback.onRttModeChanged(call, i3);
                break;
        }
    }
}
