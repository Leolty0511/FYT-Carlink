package n0;

/* JADX INFO: loaded from: classes2.dex */
public class k3 extends a {
    @Override // n0.a, n0.c4
    public void L3() {
        super.L3();
        j4.f16465c = "FXZL";
        m1.a.f13515d = 294;
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.H0("com.fangxiangtong.driver", "com.fangxiangtong.driver.ui.start.StartActivity");
    }

    @Override // n0.c4
    public boolean R3(String str) {
        boolean z2 = (!m3() || "NOR".equals(j4.f16465c) || "BUG".equals(j4.f16465c) || str.contains(j4.f16465c) || str.contains("NOR")) ? false : true;
        if (!z2) {
            z.k.s(1, 0, 52);
        }
        return z2;
    }
}
