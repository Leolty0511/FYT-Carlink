package f;

import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class v implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f864b;
    public final /* synthetic */ Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f865d;

    public v(AutoFragment autoFragment, int i2, Runnable runnable) {
        this.f865d = autoFragment;
        this.f864b = i2;
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AutoFragment.a(this.f865d, this.f864b + 1, this.c);
    }
}
