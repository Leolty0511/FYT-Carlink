package n0;

import android.net.dhcp.DhcpPacket;
import com.syu.jni.ToolsJni;

/* JADX INFO: loaded from: classes2.dex */
public class c2 extends c4 {
    public static int[] B = {10, 35, 60};
    public static int[] C = {5, 30, 55};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16326z = 0;
    public int A = 0;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != -3) {
                return true;
            }
            int[] iArr2 = u0.b.f17366w == 0 ? c2.B : c2.C;
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

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16328a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16329b;

        public b(int i2) {
            this.f16329b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16329b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16328a + 1;
            this.f16328a = i2;
            if (i2 >= 2) {
                this.f16328a = 0;
                float fP = o1.q0.p();
                int i3 = (int) fP;
                u0.d.c0(o1.o0.a(i3, 0, 255));
                if (c2.this.A != fP) {
                    c2.this.A = i3;
                    if (c2.this.A >= 85) {
                        ToolsJni.cmd_31_fan_en(1);
                    } else if (c2.this.A < 80) {
                        ToolsJni.cmd_31_fan_en(0);
                    }
                }
            }
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
            if (g.e.e() == 7) {
                y0.b.r();
            }
        }
        if (o1.q0.v()) {
            h0.c.f2446l0 = true;
        }
    }

    public final void W3() {
        k4.a(new b(g.e.e()));
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        W3();
        if (g.e.g() == 1) {
            z.k.k("/dev/ttyS1", 9600, 10);
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "XZC";
        m1.a.f13515d = 129;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
        h0.c.f2442j0 = 2;
        o1.v vVar = e.c.H;
        vVar.b();
        vVar.a(e.a.i(), -500);
        vVar.a(e.a.c(), DhcpPacket.MAX_LENGTH);
    }

    @Override // n0.c4
    public void x3() {
        super.x3();
        u0.b.Y2 = new a();
    }
}
