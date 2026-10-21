package n0;

import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class h0 extends c4 {
    public int A;
    public int B = 0;
    public Runnable C = new b();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16435z;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16436a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16437b;

        public a(int i2) {
            this.f16437b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16437b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16436a + 1;
            this.f16436a = i2;
            if (i2 >= 2) {
                this.f16436a = 0;
                float fP = o1.q0.p();
                int i3 = (int) fP;
                u0.d.c0(o1.o0.a(i3, 0, 255));
                if (h0.this.B != fP) {
                    h0.this.B = i3;
                    if (h0.this.B >= 90) {
                        ToolsJni.cmd_31_fan_en(1);
                    } else if (h0.this.B < 85) {
                        ToolsJni.cmd_31_fan_en(0);
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 2) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 10;
            iArr[1] = 10;
            iArr[5] = 10;
            iArr[6] = 3;
            iArr[7] = 5;
            System.arraycopy(new int[]{9, 15, 22, 30, 37, 45, 55, 65, 78, 88, 96, 102, 108, 114, 120, 126, 132, 138, 146, 152, 158, 164, 169, 174, 180, 186, 189, 192, 195, 198, 200, 202, 203, 204, 205, 207}, 0, y0.d.f18026l, 1, 36);
            y0.h.M();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.C);
        y0.b.f17958h = this.f16435z;
        y0.b.f17959i = this.A;
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        if (audioDevice instanceof C32107) {
            audioDevice.L0(14, C32107.CHANNEL.AUX.f15215a);
        } else if (audioDevice instanceof module.sound.a) {
            audioDevice.L0(14, 1);
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

    public final void U3() {
        k4.a(new a(g.e.e()));
    }

    @Override // n0.c4
    public void Z2() {
        g.f.j();
    }

    @Override // n0.c4
    public void a3() {
        g.f.k();
        if (e1.a.f1656a == 5) {
            u0.b.t4[5] = 4;
        }
    }

    @Override // n0.c4
    public void b3() {
        u0.b.k2 = true;
        g.f.l();
        U3();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
                y0.d.f18016b[14] = 6;
                return;
            }
            return;
        }
        this.f16435z = y0.b.f17958h;
        y0.b.f17958h = 8;
        this.A = y0.b.f17959i;
        y0.b.f17959i = 10;
        if (g.e.e() == 11 || g.e.e() == 16 || g.e.e() == 14 || g.e.e() == 15) {
            u0.b.t4[5] = 24;
        }
        u0.b.u4[5] = 4;
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "FY";
        h0.c.f2442j0 = 3;
        m1.a.f13515d = 52;
        u0.b.f17369x0 = 0;
        u0.b.V3 = true;
        super.j3();
        y0.g.f18091a.a(this.C, 0);
        o1.u.f16983a = 1;
        y0.f.f18067o = 500;
    }
}
