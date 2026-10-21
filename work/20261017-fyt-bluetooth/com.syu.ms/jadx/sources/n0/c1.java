package n0;

/* JADX INFO: loaded from: classes2.dex */
public class c1 extends c4 {
    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
            return;
        }
        z.a.f18172w.a("/dev/snd/sound_spectrogram");
        z.k.c();
        if (g.e.e() == 7) {
            y0.b.r();
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "LYU";
        m1.a.f13515d = 85;
        super.j3();
        int[] iArr = u0.b.h3;
        iArr[3] = -1;
        iArr[4] = -1;
        iArr[8] = -1;
        iArr[5] = -1;
        iArr[6] = -1;
        iArr[12] = -1;
        iArr[13] = -1;
    }
}
