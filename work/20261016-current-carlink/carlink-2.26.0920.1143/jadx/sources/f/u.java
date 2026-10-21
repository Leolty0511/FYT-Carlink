package f;

import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class u implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f863b;

    public /* synthetic */ u(AutoFragment autoFragment) {
        this.f863b = autoFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AutoFragment.a(this.f863b, 0, new n(this, 1));
    }
}
