package f;

import g.f;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static b f1841d = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1842a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1843b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f1844c = null;

    public final c a(int i2) {
        return i2 == 1 ? new a() : new d();
    }

    public void b() {
        if (this.f1844c == null) {
            this.f1844c = a(f.f(13) ? 1 : 0);
        }
    }
}
