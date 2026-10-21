package g;

import android.app.backup.FullBackup;
import android.net.ProxyProperties;
import android.util.Log;
import base.Configure;
import f1.q;
import o1.b0;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class l extends k {
    public boolean C0 = false;
    public q.b D0 = new a();
    public int[] E0;
    public int[] F0;

    public class a implements q.b {
        public a() {
        }

        @Override // f1.q.b
        public void a(q qVar, int i2) {
            int[] iArrD;
            String strO = s0.o("persist.lsec.params", ProxyProperties.LOCAL_EXCL_LIST);
            if (s0.t(strO) || (iArrD = s0.D(strO)) == null) {
                return;
            }
            Log.e("2815S", "params:" + b0.e(iArrD, 0, iArrD.length));
            qVar.q(iArrD);
        }
    }

    public l() {
        int[] iArr = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 8, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 115, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 232, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 10, 29, 80, 30, 128, 31, 128, 32, 60, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 42, 45, 84, 46, 64, 47, 0, 48, 165, 49, 134, 50, 251, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 6, 255, 7, 255, 8, 15, 17, 84, 18, 71, 19, 4, 20, 70, 21, 8, 32, 18, 33, 0, 34, 0, 35, 2, 36, 0, 37, 17, 38, 5, 39, 34, 40, 24, 48, 0, 49, 7, 50, 128, 51, 0, 52, 27, 53, 21, 54, 1, 16, 8, 64, 0};
        this.E0 = iArr;
        int[] iArr2 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 0, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 114, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 232, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 8, 29, 152, 30, 128, 31, 128, 32, 56, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 26, 45, 84, 46, 64, 47, 0, 48, 165, 49, 149, 50, 224, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 16, 8, 64, 0};
        this.F0 = iArr2;
        this.C = new int[]{65, 70};
        f1.b.f1926t0 = iArr2;
        f1.b.f1924r0 = iArr;
        b0();
        w0.d.f17791c = true;
        y0.f.f18090z0[7] = 6;
        f1.o.a(new f1.o.f("TP2815", 0), new f1.o.d("/dev/i2c-0", 68, f1.a.class));
        if (this.C0) {
            f1.o.a(new f1.o.f("TP9963", 1), new f1.o.d("/dev/i2c-1", 68, f1.f.class));
        } else {
            f1.o.a(new f1.o.f("TP9963", 1), new f1.o.d("/dev/i2c-1", 68, f1.e.class));
        }
        String strH = Configure.Property.CUSTOMER_PLATFORM_P.h(ProxyProperties.LOCAL_EXCL_LIST);
        if ((strH.isEmpty() ? Configure.Property.CUSTOMER_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST) : strH).equals("8918L")) {
            f1.o.a(new f1.o.f("LT8918", 0), new f1.o.d("/dev/i2c-0", 33, f1.m.class));
            f1.o.a(new f1.o.f("LT8918", 2), new f1.o.d("/dev/i2c-0", 33, f1.m.class));
        } else {
            boolean zB = Configure.Property.CHIP8918_COMP_ADAPTIVE.b(false);
            f1.o.a(new f1.o.f("LT8918", 0), new f1.o.d("/dev/i2c-0", 33, zB ? f1.n.class : f1.l.class));
            f1.o.a(new f1.o.f("LT8918", 2), new f1.o.d("/dev/i2c-0", 33, zB ? f1.n.class : f1.l.class));
        }
        u0.b.E1 = true;
        x0.c.X2().Z2(2);
        f1.o.g().A(2, "sys.fyt.main2.vc_");
        f1.o.g().A(1, "sys.fyt.sub.vc_");
        f1.o.g().A(0, "sys.fyt.main0.vc_");
    }

    public final void b0() {
        boolean zEquals = s0.o("sys.fyt.back_0_video_ic", ProxyProperties.LOCAL_EXCL_LIST).equals("TP2815");
        this.C0 = zEquals;
        if (!zEquals) {
            this.C0 = s0.o("sys.fyt.front_video_ic", ProxyProperties.LOCAL_EXCL_LIST).equals("TP2815");
        }
        if (!this.C0) {
            this.C0 = s0.o("sys.fyt.back_video_ic", ProxyProperties.LOCAL_EXCL_LIST).equals("TP2815");
        }
        if (!this.C0) {
            this.C0 = s0.o("ro.fyt.main_video_ic", ProxyProperties.LOCAL_EXCL_LIST).equals("TP2815");
        }
        if (this.C0) {
            return;
        }
        this.C0 = s0.o("ro.fyt.sub_video_ic", ProxyProperties.LOCAL_EXCL_LIST).equals("TP2815");
    }

    @Override // g.k, f1.o.e
    public void c(boolean z2, f1.o.b[] bVarArr) {
        super.c(z2, bVarArr);
        if (!this.f620z.m() || bVarArr == null) {
            return;
        }
        boolean z3 = false;
        int i2 = 1;
        for (f1.o.b bVar : bVarArr) {
            int iA = bVar.a();
            if (bVar.b() == 18) {
                if (this.C0) {
                    this.f620z.w(1, iA);
                } else {
                    q qVarD = this.f620z.d(iA);
                    if (qVarD != null) {
                        qVarD.F(q.L, FullBackup.APK_TREE_TOKEN);
                        qVarD.F(q.M, "b");
                    }
                    this.f620z.w(15, iA);
                    this.f620z.w(16, iA);
                    i2 = 15;
                }
                this.f620z.w(2, iA);
                this.f620z.w(3, iA);
                this.f620z.w(4, iA);
                this.f620z.w(5, iA);
                this.f620z.w(6, iA);
                this.f620z.w(7, iA);
                this.f620z.w(8, iA);
                this.f620z.w(9, iA);
                z3 = !this.E;
            } else if (bVar.b() == 12) {
                f1.a aVar = (f1.a) this.f620z.d(bVar.a());
                this.f620z.y(iA, this.D0);
                aVar.d0(true);
            }
            if (z3) {
                this.f620z.C(bVar.a(), i2);
            }
        }
    }

    @Override // g.k, chip.Chip
    public void i() {
        boolean zM = f.m();
        this.E = zM;
        f.d(zM);
        if (s0.l("persist.fyt.ui.txz", false)) {
            return;
        }
        u0.d.m0("com.syu.doublecamera", this.E);
    }

    @Override // g.k, chip.Chip
    public void k(f1.o.c cVar) {
        f1.o oVarG = f1.o.g();
        this.f620z = oVarG;
        oVarG.v(cVar);
        this.f620z.x(true);
        if (this.f620z.t("TP2850") >= 0) {
            f1.b.f1928v0 = this.A0;
            f1.b.f1929w0 = this.B0;
        }
        this.f620z.l(this);
        f1.o oVar = this.f620z;
        if (oVar == null || !oVar.m()) {
            u0.c.P.a(this.f2298y0);
        }
    }
}
