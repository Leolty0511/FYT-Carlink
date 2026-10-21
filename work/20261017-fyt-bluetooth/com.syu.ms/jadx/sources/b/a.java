package b;

import android.net.ProxyProperties;
import android.os.SystemClock;
import android.util.Base64;
import java.util.ArrayList;
import java.util.List;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static a f240i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<String> f244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f245e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f246f = -2147483648L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f247g = new RunnableC0009a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f248h = new b();

    /* JADX INFO: renamed from: b.a$a, reason: collision with other inner class name */
    public class RunnableC0009a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f249a = -1;

        public RunnableC0009a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = this.f249a;
            int i3 = u0.b.f17306a0;
            if (i2 != i3) {
                a aVar = a.this;
                aVar.f241a = aVar.f242b;
                z2 = true;
            } else {
                z2 = false;
            }
            if (i3 == 0) {
                a aVar2 = a.this;
                if (aVar2.f246f != -2147483648L) {
                    aVar2.f246f = 0L;
                }
                aVar2.f245e = null;
            }
            this.f249a = i3;
            a aVar3 = a.this;
            boolean z3 = aVar3.f241a;
            if (z3) {
                u0.d.I3(129, aVar3.c(z3));
            }
            if (z2) {
                if (this.f249a == 1) {
                    h0.d.f2470i.a(a.this, 1);
                } else {
                    h0.d.f2470i.d(a.this);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iC;
            if (u0.b.f17347o == 1) {
                iC = 0;
            } else {
                a aVar = a.this;
                iC = aVar.c(aVar.f241a);
            }
            u0.d.I3(129, iC);
        }
    }

    public a() {
        this.f241a = true;
        this.f242b = true;
        this.f244d = null;
        this.f242b = m1.c.c(205, 0) == 1;
        this.f244d = s0.u(m1.c.d(202, ProxyProperties.LOCAL_EXCL_LIST));
        String strD = m1.c.d(203, ProxyProperties.LOCAL_EXCL_LIST);
        this.f241a = this.f241a && this.f242b;
        if (s0.t(strD)) {
            this.f243c = "0123";
        } else {
            this.f243c = b(strD);
        }
        u0.c.f17386m.a(this.f247g, 1);
        u0.c.f17379f.a(this.f248h, 0);
    }

    public static a e() {
        if (f240i == null) {
            f240i = new a();
        }
        return f240i;
    }

    public void a(String str) {
        if (this.f244d.contains(str)) {
            return;
        }
        this.f244d.add(str);
        m1.c.f(202, s0.v(this.f244d).toString());
        p();
    }

    public String b(String str) {
        return new String(Base64.decode(str, 0));
    }

    public int c(boolean z2) {
        int i2 = (u0.b.f17326h == 0 && this.f242b && z2) ? 1 : 0;
        this.f241a = i2 == 1;
        return i2;
    }

    public void d() {
        this.f244d.clear();
        this.f245e = null;
        u0.d.K3(128, ProxyProperties.LOCAL_EXCL_LIST);
    }

    public List<String> f() {
        return this.f244d;
    }

    public String g() {
        return this.f243c;
    }

    public boolean h() {
        return this.f242b;
    }

    public boolean i() {
        return this.f241a;
    }

    public void j(int i2) {
        if (this.f241a || !this.f242b) {
            return;
        }
        u0.d.I3(129, c(true));
        this.f245e = null;
        if (i2 != 0) {
            this.f246f = SystemClock.elapsedRealtime();
        } else {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f246f = jElapsedRealtime < 300000 ? jElapsedRealtime - 300000 : 0L;
        }
    }

    public void k(String str) {
        if (this.f244d.contains(str)) {
            if (s0.j(this.f245e, str)) {
                this.f245e = null;
            }
            this.f244d.remove(str);
            m1.c.f(202, s0.v(this.f244d).toString());
            p();
        }
    }

    public void l(boolean z2) {
        if (this.f242b != z2) {
            this.f242b = z2;
            m1.c.e(205, z2 ? 1 : 0);
            u0.d.I3(129, c(this.f241a));
        }
    }

    public void m(String str) {
        if (str == null || str.equals(this.f243c)) {
            return;
        }
        this.f243c = str;
        m1.c.f(203, n(str));
        u0.d.K3(127, this.f243c);
    }

    public String n(String str) {
        return new String(Base64.encodeToString(str.getBytes(), 0));
    }

    public void o(String str) {
        if (this.f241a && str != null && str.equals(this.f243c)) {
            this.f241a = false;
        }
        u0.d.I3(129, c(this.f241a));
    }

    public void p() {
        ArrayList arrayList = this.f244d == null ? new ArrayList() : new ArrayList(this.f244d);
        int size = arrayList.size();
        String[] strArr = null;
        if (size > 0) {
            strArr = new String[size];
            arrayList.toArray(strArr);
        }
        u0.d.K3(128, strArr);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (SystemClock.elapsedRealtime() - this.f246f >= 300000 && this.f241a && this.f244d.contains(h0.c.f2451p)) {
            this.f241a = false;
            this.f246f = 0L;
            this.f245e = h0.c.f2451p;
            u0.d.I3(129, c(false));
            return;
        }
        if (s0.t(this.f245e) || !s0.t(h0.c.f2451p)) {
            return;
        }
        this.f245e = null;
        if (h1.a.d().e() != 1) {
            j(0);
        }
    }
}
