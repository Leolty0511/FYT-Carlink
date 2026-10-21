package n0;

import android.provider.Settings;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class f extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16409z = -1;
    public int A = -1;
    public Runnable B = new a();
    public Runnable C = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            if (fVar.f16409z == y0.f.Q0 && fVar.A == u0.b.j4) {
                return;
            }
            int i2 = y0.f.Q0;
            fVar.f16409z = i2;
            int i3 = u0.b.j4;
            fVar.A = i3;
            if (h0.c.G == 0) {
                if (i2 == 1 || i3 == 1) {
                    z.k.s(1, 0, 178);
                } else {
                    z.k.s(1, 0, 177);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18031a;
            if (i2 != 1) {
                if (i2 == 2) {
                    int[] iArr = y0.f.f18086x0;
                    iArr[5] = 6;
                    iArr[7] = 10;
                    iArr[2] = 5;
                    iArr[3] = 8;
                    iArr[6] = 2;
                    iArr[0] = 7;
                    return;
                }
                if (i2 != 5) {
                    return;
                }
            }
            int[] iArr2 = y0.f.f18086x0;
            iArr2[0] = 8;
            iArr2[5] = 3;
            iArr2[4] = 10;
            iArr2[6] = 4;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.C);
        y0.g.f18110t.d(this.B);
        u0.c.G.d(this.B);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            int[] iArr = u0.b.t4;
            iArr[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
            iArr[5] = 22;
            y0.d.f18015a[14] = 2;
            y0.d.f18016b[14] = 2;
            y0.d.f18017c[14] = 3;
            return;
        }
        z.a.f18172w.a("/dev/snd/sound_spectrogram");
        z.k.c();
        if (o1.q0.v()) {
            int[] iArr2 = u0.b.t4;
            iArr2[7] = 6;
            iArr2[5] = 20;
        } else {
            int[] iArr3 = u0.b.t4;
            iArr3[7] = 22;
            iArr3[5] = 22;
        }
        if (j4.f16463a == 3) {
            z.k.l("/dev/ttyS0");
            int[] iArr4 = u0.b.t4;
            iArr4[7] = 6;
            iArr4[5] = 20;
            y0.b.f17952b[6] = 10;
            return;
        }
        o0.e.f16785k0 = 1;
        o0.g.y(5);
        u0.b.t4[3] = 6;
        int[] iArr5 = y0.b.f17952b;
        iArr5[4] = iArr5[7];
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
                return;
            }
            return;
        }
        if (o1.q0.v()) {
            int[] iArr = u0.b.t4;
            iArr[7] = 6;
            iArr[5] = 20;
        } else {
            int[] iArr2 = u0.b.t4;
            iArr2[7] = 22;
            iArr2[5] = 22;
        }
        if (j4.f16463a == 3) {
            z.k.l("/dev/ttyS1");
            int[] iArr3 = u0.b.t4;
            iArr3[7] = 6;
            iArr3[5] = 22;
            y0.b.f17952b[6] = 3;
            if (g.e.e() == 18 || g.e.e() == 31) {
                int[] iArr4 = u0.b.u4;
                iArr4[7] = 4;
                iArr4[5] = 3;
            }
        } else {
            o0.e.f16785k0 = 1;
            o0.g.y(5);
            u0.b.t4[3] = 22;
            int[] iArr5 = y0.b.f17952b;
            iArr5[4] = iArr5[7];
        }
        if (g.e.e() == 11) {
            u0.b.t4[7] = 24;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "ZYC";
        m1.a.f13515d = 6;
        p0.b.f17025g = 4;
        h0.c.f2442j0 = 1;
        y0.b.f17959i = 0;
        super.j3();
        y0.g.f18091a.a(this.C, 0);
        int i2 = j4.f16463a;
        if (i2 == 3) {
            Settings.Secure.putInt(App.c().getContentResolver(), "bd_gps_enabled", 0);
            p0.b.f17025g = 3;
            y0.f.N = 20;
        } else if (i2 == 4) {
            Settings.Secure.putInt(App.c().getContentResolver(), "bd_gps_enabled", 0);
        }
        y0.g.f18110t.a(this.B, 1);
        u0.c.G.a(this.B, 1);
    }
}
