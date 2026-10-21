package g;

import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import com.syu.ms.R;
import f1.q;

/* JADX INFO: loaded from: classes.dex */
public class i extends m {
    public i() {
        f1.e.W = 64;
        f1.a.N0 = R.raw.tp2815_4ch_ahd_1080p25fps;
    }

    @Override // g.o, chip.Chip
    public void V() {
        this.f598d = "/dev/i2c-0";
        this.f601g = ProxyProperties.LOCAL_EXCL_LIST;
        this.f602h = ProxyProperties.LOCAL_EXCL_LIST;
        this.f603i = "/dev/ttyHS1";
        this.f604j = ProxyProperties.LOCAL_EXCL_LIST;
    }

    @Override // g.m, g.p, g.o
    public void X() {
        f1.o.a(new f1.o.f("TP2815", 1), new f1.o.d("cam_sensor_id1", 68, f1.a.class, p1.b.class));
        f1.o.a(new f1.o.f("TP2850", 2), new f1.o.d("cam_sensor_id2", 68, f1.b.class, p1.b.class));
        f1.o.a(new f1.o.f("TP9963", 2), new f1.o.d(ProxyProperties.LOCAL_EXCL_LIST, -1, f1.p.class, null));
        f1.o.g().A(0, "sys.fyt.main.vc_");
        f1.o.g().A(1, "sys.fyt.sub.vc_");
    }

    @Override // g.p, g.k, g.o, chip.Chip, g.g
    public void a() {
        super.a();
    }

    @Override // g.p, g.k, g.o, chip.Chip, g.g
    public void b() {
        super.b();
    }

    @Override // g.m, g.p
    public void g0(int i2, int i3) {
        super.g0(i2, i3);
        q qVarD = f1.o.g().d(i2);
        if (qVarD != null) {
            p1.a aVarR = qVarD.r();
            if (aVarR instanceof p1.b) {
                ((p1.b) aVarR).g(i2);
            }
            if (qVarD instanceof f1.e) {
                qVarD.l(0, MediaProperties.HEIGHT_720, 240);
                qVarD.l(1, MediaProperties.HEIGHT_720, MediaProperties.HEIGHT_288);
            }
        }
    }

    @Override // g.m, chip.Chip
    public String t(String str) {
        return this.f598d;
    }
}
