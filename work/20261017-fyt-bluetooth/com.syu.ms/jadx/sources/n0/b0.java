package n0;

import android.os.Bundle;
import com.syu.jni.SyuJniNative;
import com.syu.jni.ToolsJni;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16312z = 0;
    public Runnable A = new d();
    public Runnable B = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.P0 == 1) {
                u0.b.t4[1] = 27;
            } else {
                u0.b.t4[1] = 1;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                Bundle bundle = new Bundle();
                bundle.putInt("param0", 0);
                SyuJniNative.getInstance().syu_jni_command(31, bundle, null);
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16315a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16316b;

        public c(int i2) {
            this.f16316b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16316b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16315a + 1;
            this.f16315a = i2;
            if (i2 >= 2) {
                this.f16315a = 0;
                float fP = o1.q0.p();
                int i3 = (int) fP;
                u0.d.c0(o1.o0.a(i3, 0, 255));
                if (b0.this.f16312z != fP) {
                    b0.this.f16312z = i3;
                    if (b0.this.f16312z >= 90 && u0.b.f17306a0 == 1) {
                        ToolsJni.cmd_31_fan_en(1);
                    } else if (b0.this.f16312z < 85) {
                        ToolsJni.cmd_31_fan_en(0);
                    }
                }
            }
            if (u0.b.f17306a0 == 0) {
                ToolsJni.cmd_31_fan_en(0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            y0.f.f18086x0[0] = 17;
            int[] iArr = y0.f.f18088y0;
            iArr[0] = 20;
            iArr[6] = 7;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0 && y0.f.f18031a == 1) {
                y0.b.x();
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.A);
        u0.c.f17376c.d(this.B);
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

    public final void U3() {
        k4.a(new c(g.e.e()));
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        u0.b.P3 = 0;
        super.X2();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        U3();
        if (g.e.g() == 1) {
            u0.b.t4[5] = 25;
            u0.c.J.a(new a(), 1);
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
        u0.c.f17386m.a(new b(), 1);
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "OWA";
        m1.a.f13515d = 40;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.A, 0);
        u0.b.U2 = 40;
        int[] iArr = u0.b.h3;
        iArr[12] = -1;
        iArr[11] = -1;
        iArr[13] = -1;
        u0.c.f17376c.a(this.B, 0);
        if (j4.f16463a == 6) {
            u0.b.P3 = 1;
        }
    }
}
