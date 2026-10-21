package android.view;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f244b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e(Object obj, int i2) {
        this.f244b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f244b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((SurfaceView) obj).onDrawFinished();
                break;
            case 1:
                ((SurfaceView) obj).lambda$onDrawFinished$0();
                break;
            default:
                ((ViewRootImpl) obj).postDrawFinished();
                break;
        }
    }
}
