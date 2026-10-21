package n0;

import k0.qt;

/* JADX INFO: loaded from: classes2.dex */
public class l0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16486z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 0) {
                if (u0.b.f17335k != 0) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
        } else {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "AB";
        m1.a.f13515d = 56;
        e.b.f1594b = 1;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
    }
}
