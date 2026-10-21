package g;

import android.app.backup.FullBackup;
import android.net.ProxyProperties;
import android.util.Log;
import android.view.WindowManager;
import base.Configure;
import f1.q;
import java.util.Arrays;
import java.util.Calendar;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class m extends p {
    public static final int[] Q0 = {64, 8, 33, 3, 16, 160, 16, 32, 64, 0};
    public q.b P0 = new a();

    public class a implements q.b {
        public a() {
        }

        @Override // f1.q.b
        public void a(q qVar, int i2) {
            int[] iArrD;
            qVar.q(m.Q0);
            String strO = s0.o("persist.lsec.params", ProxyProperties.LOCAL_EXCL_LIST);
            if (s0.t(strO) || (iArrD = s0.D(strO)) == null) {
                return;
            }
            qVar.q(iArrD);
        }
    }

    public m() {
        f1.e.W = 68;
        y0.f.f18090z0[7] = 6;
        this.C = new int[]{55, 60};
        u0.b.E1 = true;
        U(false);
        w0.d.f17791c = true;
        x0.c.X2().Z2(2);
        f1.o.g().A(2, "sys.fyt.main2.vc_");
        f1.o.g().A(1, "sys.fyt.sub.vc_");
        u0.i.l3().f17452e0.b();
    }

    @Override // g.p, g.o
    public void X() {
        f1.o.a(new f1.o.f("RN6854", 0), new f1.o.d("/dev/i2c-0", 45, f1.h.class));
        f1.o.a(new f1.o.f("RN6854", 2), new f1.o.d("/dev/i2c-0", 45, f1.h.class));
        f1.o.a(new f1.o.f("TP2815", 1), new f1.o.d("/dev/i2c-1", 68, f1.a.class));
        String strH = Configure.Property.CUSTOMER_PLATFORM_P.h(ProxyProperties.LOCAL_EXCL_LIST);
        if (strH.isEmpty()) {
            strH = Configure.Property.CUSTOMER_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (strH.equals("8918L")) {
            f1.o.a(new f1.o.f("LT8918", 0), new f1.o.d("/dev/i2c-1", 33, f1.m.class));
        } else {
            long jN = s0.n("ro.build.date.utc", -1L) * 1000;
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jN);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.set(WindowManager.LayoutParams.TYPE_UNIVERSE_BACKGROUND, 5, 12, 0, 0, 0);
            if (calendar.compareTo(calendar2) < 0) {
                f1.l.f2022y0 = 112;
            }
            f1.o.a(new f1.o.f("LT8918", 0), new f1.o.d("/dev/i2c-1", 33, Configure.Property.CHIP8918_COMP_ADAPTIVE.b(false) ? f1.n.class : f1.l.class));
        }
        f1.o.a(new f1.o.f("TP9963", 2), new f1.o.d("/dev/i2c-0", 68, f1.e.class));
    }

    @Override // g.p, g.k, f1.o.e
    public void c(boolean z2, f1.o.b[] bVarArr) {
        Log.e("Qin", "========== Chip onVideoChipsInited() mulit: " + z2 + " cameraids: " + Arrays.toString(bVarArr) + " isCamera360: " + this.E);
        if (!this.f620z.m() || bVarArr == null) {
            return;
        }
        for (f1.o.b bVar : bVarArr) {
            g0(bVar.a(), bVar.b());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:38:0x0150  */
    /* JADX WARN: Code duplicated, block: B:40:0x016e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0173  */
    /* JADX WARN: Code duplicated, block: B:48:0x0196  */
    /* JADX WARN: Code duplicated, block: B:50:? A[RETURN, SYNTHETIC] */
    @Override // g.p
    public void g0(int i2, int i3) {
        boolean z2;
        int i4;
        boolean z3;
        if (i3 != 0) {
            if (i3 == 12) {
                if (i3 == 12) {
                    this.f620z.y(i2, this.P0);
                    ((f1.a) this.f620z.d(i2)).d0(true);
                }
                i4 = 10;
                this.f620z.w(10, i2);
                z2 = this.E;
            } else if (i3 != 13) {
                switch (i3) {
                    case 8:
                        this.f620z.y(i2, this.f2297x0);
                        if (i2 != 1) {
                            boolean zO = f.o();
                            boolean zP = f.p();
                            if (zO || zP) {
                                this.f620z.w(16, i2);
                            } else if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equals("6316N")) {
                                this.f620z.w(2, i2);
                                this.f620z.w(3, i2);
                                this.f620z.w(4, i2);
                                this.f620z.w(5, i2);
                                this.f620z.w(6, i2);
                                this.f620z.w(7, i2);
                                this.f620z.w(8, i2);
                                this.f620z.w(9, i2);
                                this.f620z.w(15, i2);
                                z2 = true;
                            }
                            z2 = false;
                        } else {
                            this.f620z.w(2, i2);
                            this.f620z.w(3, i2);
                            this.f620z.w(4, i2);
                            this.f620z.w(5, i2);
                            this.f620z.w(6, i2);
                            this.f620z.w(7, i2);
                            this.f620z.w(8, i2);
                            this.f620z.w(9, i2);
                            boolean zO2 = f.o();
                            boolean zP2 = f.p();
                            if (zP2) {
                                this.f620z.w(15, i2);
                            }
                            if (f.g() == 0 || zO2 || zP2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        }
                        break;
                    case 9:
                        this.f620z.w(11, i2);
                        this.f620z.w(12, i2);
                        this.f620z.w(13, i2);
                        this.f620z.w(14, i2);
                        if (f.g() != 3 && i3 == 9) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        break;
                    case 10:
                        if (i3 == 12) {
                            this.f620z.y(i2, this.P0);
                            ((f1.a) this.f620z.d(i2)).d0(true);
                        }
                        i4 = 10;
                        this.f620z.w(10, i2);
                        z2 = this.E;
                        break;
                    default:
                        switch (i3) {
                            case 15:
                            case 16:
                                this.f620z.w(11, i2);
                                this.f620z.w(12, i2);
                                this.f620z.w(13, i2);
                                this.f620z.w(14, i2);
                                if (f.g() != 3) {
                                }
                                z2 = false;
                                break;
                            case 17:
                                this.f620z.w(2, i2);
                                this.f620z.w(3, i2);
                                this.f620z.w(4, i2);
                                this.f620z.w(5, i2);
                                this.f620z.w(6, i2);
                                this.f620z.w(7, i2);
                                this.f620z.w(8, i2);
                                this.f620z.w(9, i2);
                                this.f620z.w(15, i2);
                                this.f620z.w(16, i2);
                                z3 = this.E;
                                z2 = !z3;
                                i4 = 15;
                                break;
                            case 18:
                                q qVarD = this.f620z.d(i2);
                                if (qVarD != null) {
                                    qVarD.F(q.L, "b");
                                    qVarD.F(q.M, FullBackup.APK_TREE_TOKEN);
                                }
                                this.f620z.w(2, i2);
                                this.f620z.w(3, i2);
                                this.f620z.w(4, i2);
                                this.f620z.w(5, i2);
                                this.f620z.w(6, i2);
                                this.f620z.w(7, i2);
                                this.f620z.w(8, i2);
                                this.f620z.w(9, i2);
                                this.f620z.w(15, i2);
                                this.f620z.w(16, i2);
                                z3 = this.E;
                                z2 = !z3;
                                i4 = 15;
                                break;
                            default:
                                i4 = 1;
                                z2 = false;
                                break;
                        }
                        break;
                }
            } else {
                this.f620z.w(11, i2);
                this.f620z.w(12, i2);
                this.f620z.w(13, i2);
                this.f620z.w(14, i2);
                if (f.g() != 3) {
                }
                z2 = false;
            }
            if (z2) {
                this.f620z.C(i2, i4);
            }
        }
        z2 = !this.E;
        i4 = 1;
        if (z2) {
            this.f620z.C(i2, i4);
        }
    }

    @Override // g.k, chip.Chip
    public void i() {
        boolean zM = f.m();
        this.E = zM;
        f.d(zM);
        boolean zS = f.s();
        if (!s0.l("persist.fyt.ui.txz", false)) {
            u0.d.m0("com.syu.doublecamera", !zS);
        }
        u0.d.m0(a.b.O, !zS);
        u0.d.m0(a.b.V, !zS);
        u0.d.m0(a.b.f10b0, !zS);
        u0.d.m0(a.b.Z, !zS);
    }

    @Override // chip.Chip
    public String t(String str) {
        return "32107".equals(str) ? "/dev/i2c-2" : "/dev/i2c-4";
    }
}
