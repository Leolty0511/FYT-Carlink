package n0;

import android.content.Intent;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class m2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16499z = new a();
    public Runnable A = new b();
    public Runnable B = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 10) {
                Intent intent = new Intent("com.microntek.irkeyDown");
                intent.putExtra("keyCode", 45);
                App.c().sendBroadcast(intent);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 10) {
                Intent intent = new Intent("com.microntek.irkeyDown");
                intent.putExtra("keyCode", 46);
                App.c().sendBroadcast(intent);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 10;
            iArr[5] = 3;
            iArr[8] = 3;
            iArr[3] = 3;
            iArr[4] = 3;
            iArr[7] = 3;
            iArr[6] = 3;
            iArr[2] = 3;
            iArr[1] = 3;
        }
    }

    @Override // n0.c4
    public void C3() {
        y0.g.f18091a.d(this.B);
        super.C3();
        z.c.f18182b.d(this.f16499z);
        z.c.f18181a.d(this.A);
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
        o0.e.f16785k0 = 1;
        o0.e.f16776g = 1;
        z.k.f("/dev/ttyS0");
        u0.b.t4[3] = 3;
        int[] iArr = y0.b.f17952b;
        iArr[4] = iArr[7];
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            o0.e.f16785k0 = 1;
            o0.e.f16776g = 1;
            z.k.f("/dev/ttyS1");
            u0.b.t4[3] = 3;
            int[] iArr = y0.b.f17952b;
            iArr[4] = iArr[7];
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "KET";
        u0.b.v3 = 2000;
        m1.a.f13515d = 8;
        for (int i2 = 0; i2 < 48; i2++) {
            y0.f.f18086x0[i2] = 5;
        }
        u0.b.V3 = true;
        u0.b.a4 = true;
        u0.b.T2 = 86;
        u0.b.U2 = 76;
        h0.c.f2442j0 = 0;
        y0.g.f18091a.a(this.B, 0);
        super.j3();
        z.c.f18182b.a(this.f16499z, 0);
        z.c.f18181a.a(this.A, 0);
    }
}
