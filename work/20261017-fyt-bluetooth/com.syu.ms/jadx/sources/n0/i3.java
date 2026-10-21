package n0;

import android.os.SystemProperties;
import app.App;
import module.sound.AudioDevice;

/* JADX INFO: loaded from: classes2.dex */
public class i3 extends a {
    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "ZHAN2";
        m1.a.f13515d = 292;
    }

    @Override // n0.c4
    public void W2() throws Throwable {
        super.W2();
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        super.X2();
        c.g gVarG = c.g.g(App.c());
        gVarG.k(true);
        gVarG.b();
        String str = a.b.f22j;
        boolean zQ = o1.u.Q();
        if (zQ) {
            gVarG.a(new c.g.b(0, 1, str, a.b.f28p));
        } else {
            gVarG.a(new c.g.b(0, 1, a.b.f27o, a.b.f28p));
        }
        gVarG.a(new c.g.b(1, null, a.b.f23k, a.b.f24l));
        if (zQ) {
            gVarG.a(new c.g.b(2, 3, str, "com.syu.btav"));
            gVarG.a(new c.g.b(3, 8, str, a.b.f38z));
        } else {
            gVarG.a(new c.g.b(2, 3, a.b.f23k, "com.syu.bt.act.ActBtAvStart", a.b.f24l));
            gVarG.a(new c.g.b(3, 8, a.b.f37y, a.b.f38z));
        }
        int i2 = 4;
        if (!SystemProperties.getBoolean("sys.syu.mode_ignore_video", true)) {
            gVarG.a(new c.g.b(4, 9, a.b.A, a.b.B));
            i2 = 5;
        }
        gVarG.a(new c.g.b(Integer.valueOf(i2), null, "Navi", "Navi"));
    }

    @Override // n0.a, n0.c4
    public void j3() {
        super.j3();
        AudioDevice.E0 = 2;
    }
}
