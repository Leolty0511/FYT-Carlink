package n0;

import android.os.SystemProperties;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class m0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16496z = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16496z);
    }

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
        int[] iArr = u0.b.t4;
        iArr[5] = 22;
        iArr[7] = 22;
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        i1.w.G = false;
        i1.w.H = 0L;
        super.S2();
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        if ("32107".equals(SystemProperties.get("persist.sys.syu.audio", "32107"))) {
            C32107.z1 += 3;
        }
        super.X2();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            int[] iArr = u0.b.t4;
            iArr[7] = 22;
            o0.e.f16785k0 = 1;
            o0.g.y(5);
            iArr[3] = 2;
            y0.b.f17952b[4] = 2;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "FAD";
        m1.a.f13515d = 57;
        super.j3();
        y0.g.f18091a.a(this.f16496z, 1);
    }
}
