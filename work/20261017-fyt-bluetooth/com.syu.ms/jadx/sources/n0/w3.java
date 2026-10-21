package n0;

/* JADX INFO: loaded from: classes2.dex */
public class w3 extends c3 {
    @Override // n0.c3, n0.a, n0.c4
    public void L3() {
        super.L3();
        j4.f16465c = "XYZ";
        m1.a.f13515d = 312;
    }

    @Override // n0.c3, n0.c4
    public boolean R3(String str) {
        boolean z2 = (!m3() || "NOR".equals(j4.f16465c) || "BUG".equals(j4.f16465c) || str.contains("YIN") || str.contains(j4.f16465c)) ? false : true;
        if (!z2) {
            z.k.s(1, 0, 52);
        }
        return z2;
    }
}
