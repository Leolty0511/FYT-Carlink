package n0;

/* JADX INFO: loaded from: classes2.dex */
public class l extends c4 {
    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            int[] iArr = u0.b.t4;
            iArr[7] = 21;
            iArr[5] = 6;
            return;
        }
        int[] iArr2 = u0.b.t4;
        iArr2[3] = 6;
        iArr2[5] = 2;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else if (g.e.e() == 8) {
            int[] iArr = u0.b.t4;
            iArr[7] = 21;
            iArr[5] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "YLO";
        m1.a.f13515d = 18;
        y0.f.N = 20;
        super.j3();
    }
}
