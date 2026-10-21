package o1;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f16831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16832b = false;

    public c0(Runnable runnable) {
        this.f16831a = runnable;
    }

    public void a(long j2) {
        if (this.f16832b) {
            return;
        }
        synchronized (this) {
            if (!this.f16832b) {
                this.f16832b = true;
                k.a().postDelayed(this, j2);
            }
        }
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        this.f16832b = false;
        Runnable runnable = this.f16831a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
