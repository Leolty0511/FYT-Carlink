package n0;

import android.os.SystemProperties;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class f4 extends n0.a {

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            if (u0.b.f17326h != 1) {
                u0.d.N1();
                return false;
            }
            u0.d.u3(2);
            return false;
        }
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        if (audioDevice instanceof C32107) {
            ((C32107) audioDevice).f2(1794, 166);
        }
        super.H3(audioDevice);
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (cVar instanceof e1.e) {
            cVar.v(5, 4);
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "GDUH";
        m1.a.f13515d = 260;
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        if ("32107".equals(SystemProperties.get("persist.sys.syu.audio", "32107"))) {
            C32107.z1 += 6;
        }
        super.X2();
    }

    @Override // n0.a, n0.c4
    public void j3() {
        super.j3();
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(new a(), -500);
        vVar.a(e.a.f(), 2000);
    }
}
