package n0;

import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class c3 extends n0.a {

    public class a implements c.f.a {
        public a() {
        }

        @Override // c.f.a
        public boolean a() {
            if (o1.u.k0(App.c(), "vn.gotech.voice")) {
                o1.u.J0("vn.gotech.voice");
                return true;
            }
            if (!o1.u.k0(App.c(), "ai.zalo.kiki.car")) {
                return false;
            }
            o1.u.J0("ai.zalo.kiki.car");
            return true;
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "YIN";
        m1.a.f13515d = 278;
    }

    @Override // n0.c4
    public boolean R3(String str) {
        boolean z2 = (!m3() || "NOR".equals(j4.f16465c) || "BUG".equals(j4.f16465c) || str.contains("XYZ") || str.contains(j4.f16465c)) ? false : true;
        if (!z2) {
            z.k.s(1, 0, 52);
        }
        return z2;
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        c.f.b().h(7, new a());
    }
}
