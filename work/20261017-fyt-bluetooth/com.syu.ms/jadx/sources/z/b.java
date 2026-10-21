package z;

import o1.e0;
import o1.f0;
import o1.q;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f0 f18176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e0 f18177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q f18178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18180e;

    public b(f0 f0Var, e0 e0Var, q qVar, int i2) {
        this.f18176a = f0Var;
        this.f18177b = e0Var;
        this.f18178c = qVar;
        this.f18179d = i2;
        this.f18180e = e0Var.a();
    }

    public void a() {
        this.f18176a.c();
        this.f18177b.f(-1);
    }

    public void b() {
        this.f18177b.f(this.f18180e);
        this.f18177b.g(this.f18179d);
        this.f18176a.d(this.f18177b, this.f18178c);
    }
}
