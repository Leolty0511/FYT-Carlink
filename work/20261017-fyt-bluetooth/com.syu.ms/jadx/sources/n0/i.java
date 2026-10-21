package n0;

import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class i extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16448z = 0;
    public Runnable A = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17326h == 1) {
                o1.n0.d(110);
            } else {
                o1.n0.b();
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16450a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16451b;

        public b(int i2) {
            this.f16451b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16451b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16450a + 1;
            this.f16450a = i2;
            if (i2 >= 2) {
                this.f16450a = 0;
                float fP = o1.q0.p();
                int i3 = (int) fP;
                u0.d.c0(o1.o0.a(i3, 0, 255));
                if (i.this.f16448z != fP) {
                    i.this.f16448z = i3;
                    if (i.this.f16448z >= 90) {
                        ToolsJni.cmd_31_fan_en(1);
                    } else if (i.this.f16448z < 85) {
                        ToolsJni.cmd_31_fan_en(0);
                    }
                }
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
            iArr[3] = 6;
            iArr[5] = 4;
            iArr[0] = 7;
            y0.f.f18088y0[0] = 15;
            iArr[8] = 0;
            iArr[3] = 8;
            iArr[4] = 0;
            iArr[7] = 5;
            iArr[6] = 9;
            iArr[2] = 10;
            iArr[1] = 0;
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.A);
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        if (audioDevice instanceof C32107) {
            audioDevice.M0(138, 9);
        }
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
    }

    @Override // n0.c4
    public void P2() {
        u0.c.f17384k.a(new a(), 1);
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
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            int[] iArr2 = u0.b.t4;
            iArr2[7] = 22;
            iArr2[5] = 7;
            o0.e.f16776g = 0;
        }
        if (o1.q0.v()) {
            if (g.e.e() == 8) {
                u0.b.P2 = 100;
                u0.b.R2 = 100;
            } else {
                u0.b.P2 = 0;
                u0.b.R2 = 0;
            }
        }
    }

    public final void U3() {
        k4.a(new b(g.e.e()));
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        j4.f16465c = "PCBA";
        u0.b.P3 = 0;
        super.X2();
        U3();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        U3();
        if (g.e.g() == 1) {
            int[] iArr = u0.b.t4;
            iArr[7] = 22;
            iArr[5] = 7;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "NOR";
        m1.a.f13515d = 9;
        y0.f.T = 16;
        u0.b.P3 = 1;
        e.b.f1594b = 1;
        super.j3();
        y0.g.f18091a.a(this.A, 0);
    }
}
