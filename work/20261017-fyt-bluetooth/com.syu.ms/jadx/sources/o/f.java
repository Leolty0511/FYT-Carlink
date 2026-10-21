package o;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static f f16704n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f16705o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static Object f16706p = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f16707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f16709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f16710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f16711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f16712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f16713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16716j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16717k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f16718l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16719m;

    public static f b() {
        synchronized (f16706p) {
            int i2 = f16705o;
            if (i2 <= 0) {
                return new f();
            }
            f fVar = f16704n;
            f16704n = fVar.f16707a;
            fVar.f16707a = null;
            fVar.f16708b = false;
            f16705o = i2 - 1;
            return fVar;
        }
    }

    public final void a() {
        this.f16709c = null;
        this.f16710d = null;
        this.f16711e = null;
        this.f16712f = null;
        this.f16713g = null;
        this.f16714h = 0;
        this.f16715i = 0;
        this.f16716j = 0;
        this.f16717k = 0;
        this.f16718l = 0;
        this.f16719m = 0;
    }

    public void c() {
        if (this.f16708b) {
            throw new IllegalStateException("Already recycled.");
        }
        synchronized (f16706p) {
            a();
            int i2 = f16705o;
            if (i2 < 10) {
                this.f16707a = f16704n;
                this.f16708b = true;
                f16704n = this;
                f16705o = i2 + 1;
            }
        }
    }
}
