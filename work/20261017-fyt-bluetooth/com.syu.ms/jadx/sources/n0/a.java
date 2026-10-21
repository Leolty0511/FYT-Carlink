package n0;

import com.syu.jni.ToolsJni;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16283z = 0;

    /* JADX INFO: renamed from: n0.a$a, reason: collision with other inner class name */
    public class RunnableC0083a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16284a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16285b;

        public RunnableC0083a(int i2) {
            this.f16285b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16285b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16284a + 1;
            this.f16284a = i2;
            if (i2 >= 2) {
                this.f16284a = 0;
                float fP = o1.q0.p();
                u0.d.c0(o1.o0.a((int) fP, 0, 255));
                if (fP >= 90.0f) {
                    ToolsJni.cmd_31_fan_en(1);
                } else if (fP < 85.0f) {
                    ToolsJni.cmd_31_fan_en(0);
                }
            }
        }
    }

    @Override // n0.c4
    public void L3() {
        u0.b.h2 = true;
        j4.f16465c = "NOR";
        m1.a.f13515d = 180150002;
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
        if (g.e.e() == 7) {
            y0.b.r();
        }
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        super.S2();
    }

    public final void S3() {
        k4.a(new RunnableC0083a(g.e.e()));
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        super.X2();
    }

    @Override // n0.c4
    public void Z2() {
        S3();
        g.f.j();
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        }
    }

    @Override // n0.c4
    public void j3() {
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
    }
}
