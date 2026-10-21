package n0;

import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class x2 extends n0.a {

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16616a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16617b;

        public a(int i2) {
            this.f16617b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.e.e() != this.f16617b) {
                k4.i(this);
                return;
            }
            int i2 = this.f16616a + 1;
            this.f16616a = i2;
            if (i2 >= 2) {
                this.f16616a = 0;
                float fP = o1.q0.p();
                u0.d.c0(o1.o0.a((int) fP, 0, 255));
                boolean z2 = y0.f.C0 >= 20;
                if (z2 || fP >= 90.0f) {
                    ToolsJni.cmd_31_fan_en(1);
                } else {
                    if (z2 || fP >= 85.0f) {
                        return;
                    }
                    ToolsJni.cmd_31_fan_en(0);
                }
            }
        }
    }

    private void S3() {
        k4.a(new a(g.e.e()));
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        if (audioDevice instanceof C32107) {
            audioDevice.L0(6, C32107.CHANNEL.DVD.f15215a);
            C32107.CHANNEL channel = C32107.CHANNEL.TV;
            audioDevice.L0(2, channel.f15215a);
            audioDevice.L0(3, channel.f15215a);
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "KERD";
        m1.a.f13515d = 273;
        h0.c.f2440i0 = 1;
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        super.X2();
        S3();
    }
}
