package n0;

/* JADX INFO: loaded from: classes2.dex */
public class n0 extends c4 {
    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[7] = 22;
            return;
        }
        int[] iArr = u0.b.t4;
        iArr[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        iArr[7] = 22;
        int[] iArr2 = y0.d.f18017c;
        iArr2[6] = 3;
        iArr[5] = 22;
        y0.d.f18015a[14] = 5;
        iArr2[14] = 3;
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "LMA";
        m1.a.f13515d = 64;
        super.j3();
    }
}
