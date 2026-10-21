package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f275b;
    public final /* synthetic */ Toolbar c;

    public /* synthetic */ a(Toolbar toolbar, int i2) {
        this.f275b = i2;
        this.c = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f275b;
        Toolbar toolbar = this.c;
        switch (i2) {
            case 0:
                toolbar.invalidateMenu();
                break;
            default:
                toolbar.collapseActionView();
                break;
        }
    }
}
