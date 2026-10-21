package n0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class m extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16492z = new c();

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
            int length = iArr2.length;
            int iC = o1.n0.c(iArr2, u0.b.K) - 1;
            if (u0.b.f17332j == 1 && u0.b.f17320f != 0) {
                u0.d.N(0);
                return true;
            }
            if (iC > -1 && iC < length) {
                u0.d.V(o1.o0.a(iArr2[iC], 0, u0.b.Q));
                o1.n0.b();
            } else if (iC == -1) {
                u0.d.N(1);
                a.i.a0(200L);
                u0.d.V(u0.b.Q);
            }
            return true;
        }
    }

    public class b extends c.d {
        public b() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (!o1.u.k0(App.c(), "com.example.sg467.newalarm")) {
                return false;
            }
            Intent intent = new Intent("com.syu.ms");
            intent.putExtra("command", "KEYCODE_VOICE");
            intent.setPackage("com.example.sg467.newalarm");
            intent.setFlags(32);
            App.c().sendBroadcast(intent);
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
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
            y0.f.f18086x0[0] = 8;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16492z);
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (g.e.a() == 7 && (cVar instanceof e1.e)) {
            cVar.v(5, 3);
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            z.k.f("/dev/ttyS0");
            int[] iArr = y0.b.f17952b;
            iArr[4] = iArr[7];
            u0.b.t4[7] = 22;
        }
        o0.e.f16787l0 = 8;
        o0.e.f16789m0 = 9;
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        g.g gVar = g.e.f2254a;
        if (gVar != null && (gVar instanceof g.j)) {
            ((g.j) gVar).a0(1);
        }
        super.S2();
        o0.e.f16787l0 = 8;
        o0.e.f16789m0 = 9;
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        super.X2();
        c.e.d().i(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, new b());
    }

    @Override // n0.c4
    public void b3() {
        u0.b.k2 = true;
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
        o0.e.f16787l0 = 8;
        o0.e.f16789m0 = 9;
        if (o1.q0.v()) {
            return;
        }
        if (g.e.e() == 8) {
            u0.b.P2 = 100;
            u0.b.R2 = 100;
        } else {
            u0.b.P2 = 0;
            u0.b.R2 = 0;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "SBD";
        m1.a.f13515d = 19;
        u0.b.V3 = true;
        super.j3();
        y0.g.f18091a.a(this.f16492z, 0);
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        u0.b.Y2 = new a();
    }
}
