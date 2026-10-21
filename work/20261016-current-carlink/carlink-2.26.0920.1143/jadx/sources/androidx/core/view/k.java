package androidx.core.view;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f337b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k(Object obj, int i2) {
        this.f337b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f337b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                WindowInsetsControllerCompat.Impl20.lambda$showForType$0((View) obj);
                break;
            default:
                ViewKt.m48postOnAnimationDelayed$lambda1((z.a) obj);
                break;
        }
    }
}
