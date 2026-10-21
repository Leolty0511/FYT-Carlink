package androidx.core.widget;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f340b;
    public final /* synthetic */ ContentLoadingProgressBar c;

    public /* synthetic */ a(ContentLoadingProgressBar contentLoadingProgressBar, int i2) {
        this.f340b = i2;
        this.c = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f340b;
        ContentLoadingProgressBar contentLoadingProgressBar = this.c;
        switch (i2) {
            case 0:
                contentLoadingProgressBar.showOnUiThread();
                break;
            case 1:
                contentLoadingProgressBar.hideOnUiThread();
                break;
            case 2:
                contentLoadingProgressBar.lambda$new$0();
                break;
            default:
                contentLoadingProgressBar.lambda$new$1();
                break;
        }
    }
}
