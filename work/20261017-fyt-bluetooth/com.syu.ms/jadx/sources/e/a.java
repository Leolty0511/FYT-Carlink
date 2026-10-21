package e;

import android.bluetooth.BluetoothClass;
import android.net.dhcp.DhcpPacket;
import o1.o;
import o1.u;
import o1.v;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static o f1582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static o f1583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static o f1584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static o f1585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static o f1586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static o f1587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static o f1588g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static o f1589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static o f1590i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static o f1591j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static o f1592k;

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    public class C0036a implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            u.U0();
            return false;
        }
    }

    public class b implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            u0.d.A1();
            return false;
        }
    }

    public class c implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            o0.e.f16766b.f();
            return false;
        }
    }

    public class d implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            if (u.b0()) {
                u.k();
                return false;
            }
            u.E();
            return false;
        }
    }

    public class e implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            z.k.s(1, 1, 34);
            return false;
        }
    }

    public class f implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
            return false;
        }
    }

    public class g implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (iArr == null || iArr.length < 2 || iArr[1] != 0) {
                return false;
            }
            if (iArr[0] == 220) {
                if (u0.b.n4 != 0 && u0.b.f17306a0 == 0) {
                    u0.d.U1(0);
                    z.k.s(1, 170, 145);
                } else {
                    if (u0.b.f17320f != 0) {
                        return false;
                    }
                    u0.d.U1(1);
                }
            } else {
                if (u0.b.f17320f != 0 || u0.b.f17368x == 0) {
                    return false;
                }
                u0.d.U1(1);
            }
            return true;
        }
    }

    public class h implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            u0.d.N1();
            return false;
        }
    }

    public class i implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (u0.b.f17347o == 1 || i2 != 0) {
                return false;
            }
            u0.d.U1(2);
            return false;
        }
    }

    public class j implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            u0.d.u3(2);
            return false;
        }
    }

    public class k implements o {
        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 == 0) {
                if (u0.b.f17332j != 0) {
                    u0.d.N(0);
                } else if (u0.b.f17326h != 0) {
                    u0.d.u3(0);
                } else {
                    u0.d.C3(1);
                }
            }
            return false;
        }
    }

    public static o a() {
        if (f1582a == null) {
            f1582a = new g();
        }
        return f1582a;
    }

    public static o b() {
        if (f1591j == null) {
            f1591j = new e();
        }
        return f1591j;
    }

    public static o c() {
        if (f1589h == null) {
            f1589h = new c();
        }
        return f1589h;
    }

    public static void d() {
        e.c.f1595a = a();
        v vVar = e.c.D;
        vVar.b();
        vVar.a(h(), -500);
        vVar.a(f(), 2000);
        v vVar2 = e.c.E;
        vVar2.b();
        vVar2.a(e(), -500);
        v vVar3 = e.c.F;
        vVar3.b();
        vVar3.a(c(), -500);
        vVar3.a(b(), DhcpPacket.MAX_LENGTH);
        v vVar4 = e.c.G;
        vVar4.b();
        vVar4.a(l(), -500);
        vVar4.a(b(), DhcpPacket.MAX_LENGTH);
        v vVar5 = e.c.H;
        vVar5.b();
        vVar5.a(i(), -500);
        v vVar6 = e.c.I;
        vVar6.b();
        vVar6.a(e(), -500);
        vVar6.a(f(), 2000);
    }

    public static o e() {
        if (f1588g == null) {
            f1588g = new b();
        }
        return f1588g;
    }

    public static o f() {
        if (f1584c == null) {
            f1584c = new i();
        }
        return f1584c;
    }

    public static o g() {
        if (f1592k == null) {
            f1592k = new f();
        }
        return f1592k;
    }

    public static o h() {
        if (f1583b == null) {
            f1583b = new h();
        }
        return f1583b;
    }

    public static o i() {
        if (f1587f == null) {
            f1587f = new C0036a();
        }
        return f1587f;
    }

    public static o j() {
        if (f1585d == null) {
            f1585d = new j();
        }
        return f1585d;
    }

    public static o k() {
        if (f1586e == null) {
            f1586e = new k();
        }
        return f1586e;
    }

    public static o l() {
        if (f1590i == null) {
            f1590i = new d();
        }
        return f1590i;
    }
}
