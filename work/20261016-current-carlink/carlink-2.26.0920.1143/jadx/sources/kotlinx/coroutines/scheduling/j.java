package kotlinx.coroutines.scheduling;

import e.r;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f1039d;

    public j(Runnable runnable, long j2, r rVar) {
        super(j2, rVar);
        this.f1039d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f1039d.run();
        } finally {
            this.c.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f1039d;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(runnable)));
        sb.append(", ");
        sb.append(this.f1038b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(']');
        return sb.toString();
    }
}
