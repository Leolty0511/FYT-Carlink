package n0;

/* JADX INFO: loaded from: classes2.dex */
public class k0 extends c4 {
    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[5] = 22;
            return;
        }
        int[] iArr = u0.b.t4;
        iArr[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        iArr[5] = 22;
        y0.d.f18015a[14] = 5;
        y0.d.f18017c[14] = 2;
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "JLH";
        m1.a.f13515d = 55;
        u0.b.c4 = true;
        e.b.f1594b = 1;
        super.j3();
    }
}
