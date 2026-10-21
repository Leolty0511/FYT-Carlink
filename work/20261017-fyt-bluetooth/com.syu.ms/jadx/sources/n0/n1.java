package n0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class n1 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16505z = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.h("/dev/ttyS0");
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 8) {
            u0.b.P2 = 180;
            u0.b.R2 = 180;
        } else {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
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
            if (SystemProperties.getInt("ro.fyt.bt_type", 0) == 1) {
                int[] iArr = y0.b.f17952b;
                iArr[3] = 0;
                iArr[2] = 0;
            }
        }
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.e() == 8) {
            u0.b.P2 = 90;
            u0.b.R2 = 90;
        } else {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "CNC";
        m1.a.f13515d = 102;
        u0.b.h2 = true;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
        a.f.D(new ui.d());
        u0.b.h3[2] = -1;
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        if (g.e.e() == 7 && SystemProperties.getInt("ro.fyt.bt_type", 0) == 1) {
            o1.k.a().postDelayed(new a(), 2000L);
        } else {
            z.k.d();
        }
    }
}
