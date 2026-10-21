package k0;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class sd extends lt {
    public static int N = 0;
    public static int O = 0;
    public static int P = 255;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10232c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10235f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f10255z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10231b = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10233d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10234e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{18, 13}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 2}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10236g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f10237h = {new int[]{5, 8}, new int[]{6, 7}, new int[]{48, 5}, new int[]{64, 0}, new int[]{96, 29}, new int[]{112, 6}, new int[]{128, 9}, new int[]{130, 63}, new int[]{131, 25}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10238i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10239j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10240k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10241l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10242m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f10243n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10244o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10245p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10246q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f10247r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10248s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f10249t = new h();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f10250u = new i();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f10251v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f10252w = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public o1.g0 f10253x = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f10254y = new j();
    public Runnable H = new k();
    public boolean I = true;
    public Runnable J = new b();
    public int K = -1;
    public boolean L = false;
    public String M = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f10256a;

        public a(int i2) {
            this.f10256a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            sd.this.b3(this.f10256a, 0);
            sd.this.I = true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 6:
                    boolean unused = sd.this.L;
                    i3 = 0;
                    break;
                case 3:
                    break;
                case 4:
                    i3 = 1;
                    break;
                case 5:
                    i3 = 2;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            if (sd.this.K != i3) {
                sd.this.K = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (sd.this.M.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                sd.this.M = h0.c.f2437h;
                if (sd.this.M == null) {
                    sd.this.M = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (sd.this.K != 0) {
                    sd sdVar = sd.this;
                    sdVar.x3(i3, sdVar.M);
                }
                if (sd.this.L != z4) {
                    sd.this.L = z4;
                    sd.this.K = 0;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.p();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0070  */
        /* JADX WARN: Code duplicated, block: B:28:0x009d  */
        @Override // java.lang.Runnable
        public void run() {
            sd sdVar = sd.this;
            int i2 = sdVar.f10239j + 1;
            sdVar.f10239j = i2;
            if (i2 > 3) {
                sdVar.f10239j = 0;
                z.k.s(227, 221, 2, sd.N, sd.O);
            }
            int i3 = nt.f8637c;
            if (i3 != 20) {
                if (i3 != 21) {
                    if (i3 != 93) {
                        switch (i3) {
                            case 10:
                                z.k.s(227, 238, 2, 16, 0);
                                break;
                            case 11:
                                break;
                            case 12:
                                break;
                            default:
                                switch (i3) {
                                    case 15:
                                        break;
                                    case 16:
                                        break;
                                    case 17:
                                    case 18:
                                        z.k.s(227, 238, 2, 16, 0);
                                        break;
                                    default:
                                        switch (i3) {
                                            case 25:
                                                z.k.s(227, 238, 2, 16, 0);
                                                break;
                                            case 26:
                                                break;
                                            case 27:
                                                break;
                                            default:
                                                switch (i3) {
                                                    case 31:
                                                    case 34:
                                                        z.k.s(227, 238, 2, 16, 0);
                                                        break;
                                                    case 32:
                                                        break;
                                                    case 33:
                                                        break;
                                                    default:
                                                        switch (i3) {
                                                            case 55:
                                                            case 61:
                                                            case 64:
                                                            case 67:
                                                            case 70:
                                                            case 73:
                                                            case 76:
                                                            case 79:
                                                            case 82:
                                                            case 85:
                                                            case 88:
                                                                z.k.s(227, 238, 2, 16, 0);
                                                                break;
                                                            case 56:
                                                            case 62:
                                                            case 65:
                                                            case 68:
                                                            case 71:
                                                            case 74:
                                                            case 77:
                                                            case 80:
                                                            case 83:
                                                            case 86:
                                                            case 89:
                                                                break;
                                                            case 57:
                                                            case 63:
                                                            case 66:
                                                            case 69:
                                                            case 72:
                                                            case 75:
                                                            case 78:
                                                            case 81:
                                                            case 84:
                                                            case 87:
                                                            case 90:
                                                                break;
                                                            case 58:
                                                                z.k.s(227, 238, 2, 16, 16);
                                                                break;
                                                            case 59:
                                                                z.k.s(227, 238, 2, 16, 17);
                                                                break;
                                                            case 60:
                                                                z.k.s(227, 238, 2, 16, 19);
                                                                break;
                                                            case 91:
                                                                z.k.s(227, 238, 2, 16, 18);
                                                                break;
                                                            default:
                                                                switch (i3) {
                                                                    case 95:
                                                                    case 96:
                                                                        z.k.s(227, 238, 2, 16, 0);
                                                                        break;
                                                                    case 97:
                                                                    case 98:
                                                                        break;
                                                                    case 99:
                                                                    case 100:
                                                                        break;
                                                                    default:
                                                                        switch (i3) {
                                                                            case 103:
                                                                            case 105:
                                                                            case 107:
                                                                            case 110:
                                                                            case 116:
                                                                            case 119:
                                                                            case 122:
                                                                            case 125:
                                                                            case 128:
                                                                            case 131:
                                                                                z.k.s(227, 238, 2, 16, 0);
                                                                                break;
                                                                            case 104:
                                                                            case 109:
                                                                            case 112:
                                                                            case 118:
                                                                            case 121:
                                                                            case 124:
                                                                            case 127:
                                                                                break;
                                                                            case 106:
                                                                            case 130:
                                                                            case 133:
                                                                                z.k.s(227, 238, 3, 16, 1, 2);
                                                                                break;
                                                                            case 108:
                                                                            case 111:
                                                                            case 117:
                                                                            case 120:
                                                                            case 123:
                                                                            case 126:
                                                                                break;
                                                                            case 113:
                                                                                z.k.s(227, 238, 2, 16, 32);
                                                                                break;
                                                                            case 114:
                                                                                z.k.s(227, 238, 2, 16, 33);
                                                                                break;
                                                                            case 115:
                                                                                z.k.s(227, 238, 2, 16, 34);
                                                                                break;
                                                                            case 129:
                                                                            case 132:
                                                                                break;
                                                                            default:
                                                                                switch (i3) {
                                                                                    case 135:
                                                                                    case 138:
                                                                                        z.k.s(227, 238, 2, 16, 0);
                                                                                        break;
                                                                                    case 140:
                                                                                        z.k.s(227, 238, 3, 16, 1, 2);
                                                                                        break;
                                                                                }
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                    z.k.s(227, 238, 3, 16, 1, 1);
                    return;
                }
                z.k.s(227, 238, 2, 16, 2);
                return;
            }
            z.k.s(227, 238, 2, 16, 1);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sd sdVar = sd.this;
            int i2 = sdVar.f10241l;
            if (i2 > 0) {
                int i3 = i2 - 1;
                sdVar.f10241l = i3;
                if (i3 == 0 && qt.i0().equals("com.syu.carinfo.rzc.keleijia.KeLeiJia_Set_SeatSet")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(sd.this.f10246q);
            sd.this.f10244o = 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sd sdVar = sd.this;
            int i2 = sdVar.f10244o - 1;
            sdVar.f10244o = i2;
            if (i2 <= 0) {
                l0.b0.p0(sdVar.f10246q);
                sd.this.f10244o = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 262546:
                        z.k.s(227, -30, 1, 0);
                        break;
                    case 328082:
                        z.k.s(227, -30, 1, 1);
                        break;
                    case 393618:
                        z.k.s(227, -30, 1, 4);
                        break;
                    case 459154:
                        z.k.s(227, -30, 1, 2);
                        break;
                    case 524690:
                        z.k.s(227, -30, 1, 3);
                        break;
                    case 590226:
                        z.k.s(227, -30, 1, 6);
                        break;
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, (byte) time.minute, (byte) time.hour, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, 0);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 2, 125, 10);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = sd.P;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && sd.P == 13) {
                    z.k.s(227, 139, 1, 1);
                }
                sd.P = u0.b.D;
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = u0.b.f2;
            if (i3 == 0) {
                i2 = sd.this.f10255z;
            } else if (i3 == 1) {
                i2 = sd.this.A;
            } else if (i3 == 2) {
                i2 = sd.this.C;
            } else if (i3 == 3) {
                i2 = sd.this.B;
            } else if (i3 == 5) {
                i2 = sd.this.D;
            } else if (i3 == 7) {
                i2 = sd.this.E;
            } else if (i3 != 8) {
                i2 = i3 != 9 ? 0 : sd.this.G;
            } else {
                i2 = sd.this.F;
            }
            sd.this.a3(i2);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:15:0x00b3 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:16:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:26:0x00f1 A[FALL_THROUGH] */
    @Override // k0.lt
    public void S2() {
        this.f10253x.a();
        w0.e.f17815a.a(this.f10238i, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f10238i, 1);
        u0.c.f17393t.a(this.f10238i, 1);
        u0.c.f17392s.a(this.f10238i, 1);
        l0.b0.b(this.f10238i);
        u0.c.f17386m.a(this.f10245p, 1);
        l0.b0.b(this.f10240k);
        h0.d.f2464c.a(this.J, 1);
        h0.d.f2462a.a(this.J, 1);
        qt.z(this.f10243n);
        int i2 = nt.f8637c;
        if (i2 == 92) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8320o = 1;
            mtVar.f8314i = 1;
            mtVar.f8323r = 1;
        } else if (i2 != 93) {
            switch (i2) {
                case 3:
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8306a = new String[]{"com.syu.canbus"};
                    mtVar2.f8310e = 1;
                    mtVar2.f8311f = 1;
                    mtVar2.f8312g = 1;
                    mtVar2.f8320o = 0;
                    mtVar2.f8314i = 0;
                    break;
                case 57:
                case 60:
                case 63:
                case 66:
                case 69:
                case 72:
                case 75:
                case 78:
                case 81:
                case 84:
                case 87:
                case 90:
                    mt mtVar3 = this.f7886a;
                    mtVar3.f8306a = new String[]{"com.syu.canbus"};
                    mtVar3.f8310e = 1;
                    mtVar3.f8311f = 1;
                    mtVar3.f8312g = 1;
                    mtVar3.f8320o = 1;
                    mtVar3.f8314i = 1;
                    mtVar3.f8323r = 1;
                    break;
                default:
                    switch (i2) {
                        case 18:
                        case 20:
                        case 21:
                            mt mtVar4 = this.f7886a;
                            mtVar4.f8306a = new String[]{"com.syu.canbus"};
                            mtVar4.f8310e = 1;
                            mtVar4.f8311f = 1;
                            mtVar4.f8312g = 1;
                            mtVar4.f8320o = 1;
                            mtVar4.f8314i = 1;
                            break;
                        case 19:
                            yVar.a(this.f10254y, 1);
                            mt mtVar5 = this.f7886a;
                            mtVar5.f8306a = null;
                            mtVar5.f8310e = 1;
                            mtVar5.f8311f = 0;
                            mtVar5.f8312g = 0;
                            mtVar5.f8320o = 0;
                            mtVar5.f8314i = 0;
                            break;
                        default:
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        case 30:
                                        case 34:
                                            break;
                                        case 31:
                                        case 32:
                                        case 33:
                                            mt mtVar6 = this.f7886a;
                                            mtVar6.f8306a = new String[]{"com.syu.canbus"};
                                            mtVar6.f8310e = 1;
                                            mtVar6.f8311f = 1;
                                            mtVar6.f8312g = 1;
                                            mtVar6.f8320o = 1;
                                            mtVar6.f8314i = 1;
                                            mtVar6.f8323r = 1;
                                            break;
                                        case 35:
                                        case 36:
                                        case 37:
                                        case 38:
                                        case 39:
                                        case 40:
                                        case 41:
                                        case 42:
                                        case 43:
                                        case 44:
                                        case 45:
                                        case 46:
                                        case 47:
                                        case 48:
                                        case 49:
                                            mt mtVar7 = this.f7886a;
                                            mtVar7.f8306a = new String[]{"com.syu.canbus"};
                                            mtVar7.f8310e = 1;
                                            mtVar7.f8311f = 1;
                                            mtVar7.f8312g = 1;
                                            mtVar7.f8320o = 0;
                                            mtVar7.f8314i = 0;
                                            break;
                                        default:
                                            switch (i2) {
                                                case 99:
                                                case 100:
                                                    mt mtVar8 = this.f7886a;
                                                    mtVar8.f8306a = new String[]{"com.syu.canbus"};
                                                    mtVar8.f8310e = 1;
                                                    mtVar8.f8311f = 1;
                                                    mtVar8.f8312g = 1;
                                                    mtVar8.f8320o = 1;
                                                    mtVar8.f8314i = 1;
                                                    mtVar8.f8323r = 1;
                                                    break;
                                                case 101:
                                                case 102:
                                                    mt mtVar9 = this.f7886a;
                                                    mtVar9.f8306a = new String[]{"com.syu.canbus"};
                                                    mtVar9.f8310e = 1;
                                                    mtVar9.f8311f = 1;
                                                    mtVar9.f8312g = 1;
                                                    mtVar9.f8320o = 0;
                                                    mtVar9.f8314i = 0;
                                                    break;
                                                case 103:
                                                case 104:
                                                case 105:
                                                case 106:
                                                case 107:
                                                case 108:
                                                case 109:
                                                case 110:
                                                case 111:
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 135:
                                                case 136:
                                                case 137:
                                                case 138:
                                                case 139:
                                                case 140:
                                                    break;
                                                case 134:
                                                    qt.z(this.f10249t);
                                                    mt mtVar10 = this.f7886a;
                                                    mtVar10.f8306a = null;
                                                    mtVar10.f8310e = 1;
                                                    mtVar10.f8311f = 0;
                                                    mtVar10.f8312g = 0;
                                                    mtVar10.f8320o = 0;
                                                    mtVar10.f8314i = 0;
                                                    break;
                                                default:
                                                    mt mtVar11 = this.f7886a;
                                                    mtVar11.f8306a = new String[]{"com.syu.canbus"};
                                                    mtVar11.f8310e = 1;
                                                    mtVar11.f8311f = 1;
                                                    mtVar11.f8312g = 1;
                                                    mtVar11.f8320o = 1;
                                                    mtVar11.f8314i = 0;
                                                    mtVar11.f8323r = 0;
                                                    break;
                                            }
                                            break;
                                    }
                                case 25:
                                case 26:
                                case 27:
                                    mt mtVar12 = this.f7886a;
                                    mtVar12.f8306a = new String[]{"com.syu.canbus"};
                                    mtVar12.f8310e = 1;
                                    mtVar12.f8311f = 1;
                                    mtVar12.f8312g = 1;
                                    mtVar12.f8320o = 1;
                                    mtVar12.f8314i = 1;
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            mt mtVar13 = this.f7886a;
            mtVar13.f8306a = new String[]{"com.syu.canbus"};
            mtVar13.f8310e = 1;
            mtVar13.f8311f = 1;
            mtVar13.f8312g = 1;
            mtVar13.f8320o = 1;
            mtVar13.f8314i = 1;
        }
        int i3 = nt.f8637c;
        if (i3 != 93 && i3 != 105 && i3 != 106) {
            switch (i3) {
                default:
                    switch (i3) {
                        case 15:
                        case 16:
                        case 17:
                            break;
                        default:
                            this.f7886a.f8322q = 0;
                            break;
                    }
                case 10:
                case 11:
                case 12:
                    this.f7886a.f8322q = 1;
                    break;
            }
        } else {
            this.f7886a.f8322q = 1;
        }
        if (i3 != 20) {
            this.f7886a.f8317l = 0;
        } else {
            this.f7886a.f8317l = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar14 = this.f7886a;
            mtVar14.f8314i = 0;
            mtVar14.f8322q = 1;
            qt.y(this.f10250u);
        }
        int i4 = nt.f8633a;
        if (i4 == 262546 || i4 == 328082 || i4 == 393618 || i4 == 459154 || i4 == 524690 || i4 == 590226) {
            this.f10255z = 9;
            this.A = 10;
            this.B = 3;
            this.C = 2;
            this.D = 19;
            this.E = 25;
            this.F = 23;
            this.G = 1;
            return;
        }
        if (i4 == 655762 || i4 == 6881682 || i4 == 721298 || i4 == 6095250 || i4 == 6947218 || i4 == 786834 || i4 == 852370 || i4 == 917906 || i4 == 983442 || i4 == 1048978) {
            this.F = 1;
            this.D = 6;
            this.f10255z = 12;
            this.A = 11;
            this.B = 13;
            this.C = 14;
            this.E = 21;
            this.G = 0;
            return;
        }
        this.f10255z = 32;
        this.A = 33;
        this.B = 31;
        this.C = 30;
        this.D = 21;
        this.E = 19;
        this.F = 17;
        this.G = 9;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == -127) {
            qt.y0(132, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(133, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(134, (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] & 1) << 16) | ((bArr[i2 + 6] & 255) << 8));
        }
        if (b2 == -126) {
            qt.y0(217, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(218, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(219, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            int i5 = i2 + 8;
            qt.y0(220, (bArr[i5] & 255) | ((bArr[i5] & 255) << 8));
            return;
        }
        if (b2 == 61) {
            int i6 = i2 + 2;
            if ((bArr[i6] & 128) == 0) {
                switch (bArr[i6] & 127) {
                    case 0:
                        l0.b0.l0(15, 0);
                        l0.b0.l0(15, 1);
                        break;
                    case 1:
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        break;
                    case 2:
                        l0.b0.l0(10, 0);
                        l0.b0.l0(10, 1);
                        break;
                    case 3:
                        l0.b0.l0(58, 0);
                        l0.b0.l0(58, 1);
                        break;
                    case 4:
                        l0.b0.l0(9, 0);
                        l0.b0.l0(9, 1);
                        break;
                    case 5:
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                        break;
                    case 6:
                        l0.b0.l0(65, 0);
                        l0.b0.l0(65, 1);
                        break;
                    case 7:
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        break;
                    case 8:
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        break;
                }
            }
            if ((bArr[i6] & 128) != 0) {
                switch (bArr[i6] & 127) {
                    case 0:
                        l0.b0.l0(15, 0);
                        l0.b0.l0(15, 1);
                        break;
                    case 1:
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        break;
                    case 2:
                        l0.b0.l0(10, 0);
                        l0.b0.l0(10, 1);
                        break;
                    case 3:
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        break;
                    case 4:
                        l0.b0.l0(55, 0);
                        l0.b0.l0(55, 1);
                        break;
                    case 5:
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                        break;
                    case 6:
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        break;
                    case 7:
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        break;
                    case 8:
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        break;
                }
            }
            return;
        }
        if (b2 == 62) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 0) {
                int i8 = i2 + 3;
                int i9 = bArr[i8] & 3;
                if (i9 == 1) {
                    for (int i10 = 0; i10 < ((bArr[i8] >> 2) & 63); i10++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    return;
                }
                if (i9 != 2) {
                    return;
                }
                for (int i11 = 0; i11 < ((bArr[i8] >> 2) & 63); i11++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i7 == 1) {
                l0.b0.l0(12, 0);
                l0.b0.l0(12, 1);
                return;
            }
            if (i7 == 2) {
                l0.b0.l0(25, 0);
                l0.b0.l0(25, 1);
                return;
            }
            if (i7 == 16) {
                l0.b0.l0(34, 0);
                l0.b0.l0(34, 1);
                return;
            }
            if (i7 == 20) {
                l0.b0.l0(34, 0);
                l0.b0.l0(34, 1);
                return;
            }
            if (i7 == 32) {
                l0.b0.l0(35, 0);
                l0.b0.l0(35, 1);
                return;
            }
            if (i7 == 36) {
                l0.b0.l0(35, 0);
                l0.b0.l0(35, 1);
                return;
            }
            if (i7 == 48) {
                l0.b0.l0(32, 0);
                l0.b0.l0(32, 1);
                return;
            }
            if (i7 == 52) {
                l0.b0.l0(32, 0);
                l0.b0.l0(32, 1);
                return;
            } else if (i7 == 64) {
                l0.b0.l0(33, 0);
                l0.b0.l0(33, 1);
                return;
            } else {
                if (i7 != 68) {
                    return;
                }
                l0.b0.l0(33, 0);
                l0.b0.l0(33, 1);
                return;
            }
        }
        if (b2 == 64) {
            qt.y0(188, bArr[i2 + 2] & 256);
            return;
        }
        if (b2 == 65) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                qt.y0(137, bArr[i2 + 5] & 1);
            }
            if (b3 == 2) {
                int i12 = ((((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255)) & 65535) / 100;
                qt.y0(98, i12);
                qt.y0(1031, i12);
            }
            if (b3 == 3) {
                int i13 = ((bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280)) & 65535;
                qt.y0(99, i13);
                qt.y0(1032, i13);
                return;
            }
            return;
        }
        switch (b2) {
            case -113:
                if (bArr[i2 + 2] == 1) {
                    int i14 = u0.b.D;
                    if (i14 != 12) {
                        this.f10231b = i14;
                        u0.b.f17311c.c(12);
                    }
                } else if (u0.b.D == 12) {
                    u0.b.f17311c.c(this.f10231b);
                }
                break;
            case PackageManager.INSTALL_FAILED_USER_RESTRICTED /* -111 */:
                int i15 = i2 + 2;
                int i16 = bArr[i15] & 255;
                int i17 = this.f10248s;
                if (i17 != i16) {
                    if (i16 != 0) {
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    } else if (i17 == 1 && i16 == 0 && y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    qt.y0(180, bArr[i15] & 255);
                    this.f10248s = i16;
                }
                break;
            case PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY /* -109 */:
                qt.y0(191, bArr[i2 + 2] & 255);
                qt.y0(192, bArr[i2 + 3] & 255);
                qt.y0(193, bArr[i2 + 4] & 255);
                qt.y0(194, bArr[i2 + 5] & 255);
                qt.y0(195, bArr[i2 + 6] & 255);
                qt.y0(221, bArr[i2 + 7] & 255);
                break;
            case -96:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f10236g = b4 & 255;
                int i18 = 0;
                while (true) {
                    iArr = this.f10237h;
                    if (i18 < iArr.length) {
                        int i19 = this.f10236g;
                        if (i19 != iArr[i18][0]) {
                            i18++;
                        } else if (i19 != 0) {
                            this.f10235f = i18;
                        }
                    }
                }
                if ((b5 & 255) == 1) {
                    l0.b0.l0(iArr[this.f10235f][1], 0);
                    l0.b0.l0(this.f10237h[this.f10235f][1], 1);
                }
                break;
            case 10:
                qt.y0(157, bArr[i2 + 2] & 255);
                break;
            case 16:
                qt.y0(158, bArr[i2 + 2] & 255);
                break;
            case 40:
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i20 = i2 + 2;
                    qt.y0(1, (bArr[i20] >> 7) & 1);
                    qt.y0(2, (bArr[i20] >> 6) & 1);
                } else {
                    int i21 = i2 + 2;
                    qt.y0(2, (bArr[i21] >> 7) & 1);
                    qt.y0(1, (bArr[i21] >> 6) & 1);
                }
                int i22 = i2 + 2;
                qt.y0(4, (bArr[i22] >> 5) & 1);
                qt.y0(3, (bArr[i22] >> 4) & 1);
                qt.y0(5, (bArr[i22] >> 3) & 1);
                qt.y0(0, (bArr[i22] >> 2) & 1);
                if (nt.a()) {
                    int i23 = bArr[i2 + 3] & 255;
                    if (i23 == 254 || i23 == 255) {
                        u0.d.A3(0);
                    } else if (i23 <= 160) {
                        u0.d.A3((i23 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    }
                }
                break;
            case 48:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    if (!this.f10247r) {
                        qt.l(b7, b6, false, 5400);
                    }
                }
                break;
            case 82:
                switch (bArr[i2 + 2] & 255) {
                    case 48:
                        qt.y0(31, bArr[i2 + 3] & 255);
                        break;
                    case 49:
                        qt.y0(29, bArr[i2 + 3] & 255);
                        break;
                    case 50:
                        qt.y0(32, bArr[i2 + 3] & 255);
                        break;
                    case 51:
                        qt.y0(30, bArr[i2 + 3] & 255);
                        break;
                    case 52:
                        qt.y0(52, bArr[i2 + 3] & 255);
                        break;
                }
                break;
            case 97:
                qt.y0(143, bArr[i2 + 2] & 255);
                qt.y0(139, bArr[i2 + 3] & 255);
                qt.y0(140, bArr[i2 + 4] & 255);
                qt.y0(141, bArr[i2 + 5] & 255);
                qt.y0(142, bArr[i2 + 6] & 255);
                break;
            case 125:
                int i24 = bArr[i2 + 2] & 255;
                if (i24 == 1) {
                    if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                        int i25 = i2 + 3;
                        l0.c0.b((bArr[i25] >> 3) & 1, (bArr[i25] >> 4) & 1, 0);
                    } else {
                        int i26 = i2 + 3;
                        l0.c0.a((bArr[i26] >> 3) & 1, (bArr[i26] >> 4) & 1, 0);
                    }
                    break;
                } else if (i24 == 3) {
                    int i27 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                    qt.y0(1031, i27);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i27}, null, null);
                    break;
                } else if (i24 == 8) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f10247r = true;
                    break;
                } else if (i24 == 10) {
                    qt.y0(1032, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 4);
                    break;
                }
                break;
            case 127:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            default:
                switch (b2) {
                    case 32:
                        int i28 = i2 + 2;
                        if ((bArr[i28] & 255) == 143) {
                            int i29 = u0.b.D;
                            if (i29 != 12) {
                                if (i29 != 12) {
                                    u0.b.f17311c.c(12);
                                }
                            } else if (i29 == 12) {
                                u0.b.f17311c.c(this.f10231b);
                            }
                        } else if (nt.a()) {
                            byte b8 = bArr[i28];
                            byte b9 = bArr[i2 + 3];
                            this.f10233d = b8 & 255;
                            int i30 = 0;
                            while (true) {
                                iArr2 = this.f10234e;
                                if (i30 < iArr2.length) {
                                    int i31 = this.f10233d;
                                    if (i31 != iArr2[i30][0]) {
                                        i30++;
                                    } else if (i31 != 0) {
                                        this.f10232c = i30;
                                    }
                                }
                            }
                            int i32 = this.f10233d;
                            if (i32 != 6) {
                                if (i32 == 9 || i32 == 10) {
                                    if ((b9 & 255) == 1) {
                                        int i33 = h0.c.E;
                                        if (i33 == 3 || i33 == 5) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        }
                                    }
                                } else if (i32 != 19) {
                                    if (i32 != 20) {
                                        int i34 = b9 & 255;
                                        if (i34 == 1) {
                                            if (i30 < iArr2.length) {
                                                l0.b0.l0(iArr2[i30][1], 0);
                                            }
                                        } else if (i34 == 0) {
                                            int i35 = this.f10232c;
                                            if (i35 < iArr2.length) {
                                                i4 = 255;
                                                if (i35 != 255) {
                                                    l0.b0.l0(iArr2[i35][1], 1);
                                                }
                                            } else {
                                                i4 = 255;
                                            }
                                            this.f10232c = i4;
                                        }
                                    } else if ((b9 & 255) == 1) {
                                        if (nt.f8637c == 94) {
                                            int i36 = h0.c.E;
                                            if (i36 == 3 || i36 == 4 || i36 == 5) {
                                                l0.b0.l0(26, 0);
                                                l0.b0.l0(26, 1);
                                            } else {
                                                l0.b0.l0(4, 0);
                                                l0.b0.l0(4, 1);
                                            }
                                        } else {
                                            l0.b0.l0(4, 0);
                                            l0.b0.l0(4, 1);
                                        }
                                    }
                                } else if ((b9 & 255) == 1) {
                                    if (nt.f8637c != 94) {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    } else if (h0.c.E != 4) {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    } else {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    }
                                }
                            } else if (nt.f8637c == 94) {
                                int i37 = b9 & 255;
                                if (i37 == 1) {
                                    l0.b0.l0(0, 0);
                                } else if (i37 == 0) {
                                    l0.b0.l0(0, 1);
                                }
                            } else if ((b9 & 255) == 1) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                        break;
                    case 33:
                        int i38 = nt.f8633a;
                        if (i38 == 65938 || i38 == 131474) {
                            byte b10 = bArr[i2 + 2];
                            byte b11 = bArr[i2 + 3];
                            byte b12 = bArr[i2 + 4];
                            byte b13 = bArr[i2 + 5];
                            byte b14 = bArr[i2 + 6];
                            byte b15 = bArr[i2 + 7];
                            qt.y0(204, b11);
                            qt.y0(11, (b10 >> 6) & 1);
                            qt.y0(12, (b10 >> 4) & 3);
                            qt.y0(13, (b10 >> 3) & 1);
                            qt.y0(14, (b10 >> 2) & 1);
                            qt.y0(16, (b10 >> 1) & 1);
                            qt.y0(65, (b10 >> 0) & 1);
                            qt.y0(20, (b11 >> 2) & 1);
                            qt.y0(19, (b11 >> 1) & 1);
                            qt.y0(18, (b11 >> 0) & 1);
                            qt.y0(21, b12 & 255);
                            if (b13 == 0) {
                                qt.y0(27, -1);
                            } else if (b13 == 254) {
                                qt.y0(27, -2);
                            } else if (b13 != 255) {
                                qt.y0(27, b13);
                            } else {
                                qt.y0(27, -3);
                            }
                            if (b14 == 0) {
                                qt.y0(28, -1);
                            } else if (b14 == 254) {
                                qt.y0(28, -2);
                            } else if (b14 != 255) {
                                qt.y0(28, b14);
                            } else {
                                qt.y0(28, -3);
                            }
                            qt.y0(54, (b15 >> 5) & 1);
                            qt.y0(56, (b15 >> 6) & 3);
                        } else {
                            int i39 = bArr[i2 + 2] & 255;
                            int i40 = bArr[i2 + 3] & 255;
                            int i41 = bArr[i2 + 4] & 255;
                            int i42 = bArr[i2 + 5] & 255;
                            int i43 = bArr[i2 + 6] & 255;
                            qt.y0(54, (i39 >> 7) & 1);
                            if (nt.f8633a != 8782226) {
                                qt.y0(11, (i39 >> 6) & 1);
                            } else if (((i39 >> 6) & 1) == 1) {
                                qt.y0(11, 0);
                            } else {
                                qt.y0(11, 1);
                            }
                            qt.y0(12, 3 & (i39 >> 4));
                            qt.y0(13, (i39 >> 3) & 1);
                            qt.y0(14, (i39 >> 2) & 1);
                            qt.y0(16, (i39 >> 1) & 1);
                            qt.y0(65, (i39 >> 0) & 1);
                            qt.y0(52, (i40 >> 7) & 1);
                            qt.y0(71, (i40 >> 6) & 1);
                            qt.y0(70, (i40 >> 5) & 1);
                            qt.y0(80, (i40 >> 4) & 1);
                            qt.y0(20, (i40 >> 2) & 1);
                            qt.y0(19, (i40 >> 1) & 1);
                            qt.y0(18, (i40 >> 0) & 1);
                            qt.y0(21, i41 & 255);
                            if (i42 == 0) {
                                qt.y0(27, -1);
                            } else if (i42 == 254) {
                                qt.y0(27, -2);
                            } else if (i42 != 255) {
                                qt.y0(27, i42);
                            } else {
                                qt.y0(27, -3);
                            }
                            if (i43 == 0) {
                                qt.y0(28, -1);
                            } else if (i43 == 254) {
                                qt.y0(28, -2);
                            } else if (i43 != 255) {
                                qt.y0(28, i43);
                            } else {
                                qt.y0(28, -3);
                            }
                            qt.y0(204, i40);
                        }
                        break;
                    case 34:
                        if (nt.a()) {
                            u0.d.R2(l0.c0.Z0(bArr[i2 + 2] & 255));
                            u0.d.S2(l0.c0.Z0(bArr[i2 + 3] & 255));
                            u0.d.T2(l0.c0.Z0(bArr[i2 + 4] & 255));
                            u0.d.U2(l0.c0.Z0(bArr[i2 + 5] & 255));
                        }
                        break;
                    case 35:
                        if (nt.a()) {
                            int i44 = i2 + 2;
                            int i45 = bArr[i44] & 255;
                            int i46 = i2 + 3;
                            int i47 = bArr[i46] & 255;
                            int i48 = i2 + 4;
                            int i49 = bArr[i48] & 255;
                            int i50 = i2 + 5;
                            int i51 = bArr[i50] & 255;
                            if (i45 == 0 && i47 == 0 && i49 == 0 && i51 == 0) {
                                u0.d.C2(0);
                            } else if ((l0.c0.f13013g != i45 || l0.c0.f13014h != i47 || l0.c0.f13015i != i49 || l0.c0.f13016j != i51) && u0.b.f17347o == 0) {
                                u0.d.C2(1);
                                l0.c0.f13017k = 4;
                                l0.b0.b(l0.c0.f13018l);
                            }
                            l0.c0.f13013g = i45;
                            l0.c0.f13014h = i47;
                            l0.c0.f13015i = i49;
                            l0.c0.f13016j = i51;
                            u0.d.D2(l0.c0.Z0(bArr[i44] & 255));
                            u0.d.E2(l0.c0.Z0(bArr[i46] & 255));
                            u0.d.F2(l0.c0.Z0(bArr[i48] & 255));
                            u0.d.G2(l0.c0.Z0(bArr[i50] & 255));
                        }
                        break;
                    case 36:
                        u0.d.I2(l0.c0.Z0(bArr[i2 + 2] & 255));
                        u0.d.K2(l0.c0.Z0(bArr[i2 + 3] & 255));
                        u0.d.J2(l0.c0.Z0(bArr[i2 + 4] & 255));
                        u0.d.H2(l0.c0.Z0(bArr[i2 + 5] & 255));
                        break;
                    case 37:
                        u0.d.O2(l0.c0.Z0(bArr[i2 + 2] & 255));
                        u0.d.Q2(l0.c0.Z0(bArr[i2 + 3] & 255));
                        u0.d.P2(l0.c0.Z0(bArr[i2 + 4] & 255));
                        u0.d.N2(l0.c0.Z0(bArr[i2 + 5] & 255));
                        break;
                    default:
                        switch (b2) {
                            case 113:
                                byte b16 = bArr[i2 + 2];
                                byte b17 = bArr[i2 + 3];
                                byte b18 = bArr[i2 + 4];
                                byte b19 = bArr[i2 + 5];
                                byte b20 = bArr[i2 + 6];
                                byte b21 = bArr[i2 + 7];
                                byte b22 = bArr[i2 + 8];
                                qt.y0(144, (b16 >> 7) & 1);
                                qt.y0(145, (b16 >> 6) & 1);
                                qt.y0(100, (b16 >> 4) & 3);
                                qt.y0(101, (b16 >> 3) & 1);
                                qt.y0(102, (b16 >> 2) & 1);
                                qt.y0(103, (b16 >> 1) & 1);
                                qt.y0(104, (b16 >> 0) & 1);
                                qt.y0(159, (b17 >> 5) & 7);
                                qt.y0(163, (b17 >> 4) & 1);
                                qt.y0(105, (b17 >> 3) & 1);
                                qt.y0(106, (b17 >> 2) & 1);
                                qt.y0(107, (b17 >> 0) & 3);
                                qt.y0(108, (b18 >> 7) & 1);
                                qt.y0(109, (b18 >> 6) & 1);
                                qt.y0(110, (b18 >> 5) & 1);
                                qt.y0(111, (b18 >> 4) & 1);
                                int i52 = (b18 >> 3) & 1;
                                qt.y0(112, i52);
                                qt.y0(162, i52);
                                qt.y0(113, (b18 >> 2) & 1);
                                qt.y0(114, (b18 >> 0) & 3);
                                qt.y0(161, b19 & 255);
                                qt.y0(135, b20 & 255);
                                qt.y0(115, b21 & 255);
                                qt.y0(116, b22 & 255);
                                int i53 = nt.f8633a;
                                if (65938 == i53 || 131474 == i53 || 590226 == i53) {
                                    byte b23 = bArr[i2 + 9];
                                    byte b24 = bArr[i2 + 10];
                                    byte b25 = bArr[i2 + 11];
                                    byte b26 = bArr[i2 + 12];
                                    byte b27 = bArr[i2 + 13];
                                    byte b28 = bArr[i2 + 14];
                                    qt.y0(117, (b23 >> 7) & 1);
                                    qt.y0(118, (b23 >> 6) & 1);
                                    qt.y0(119, (b24 >> 7) & 1);
                                    qt.y0(120, (b24 >> 6) & 1);
                                    qt.y0(121, (b24 >> 5) & 1);
                                    qt.y0(122, b24 & 7);
                                    qt.y0(123, b25);
                                    qt.y0(124, (b26 >> 7) & 1);
                                    qt.y0(125, 3 & (b26 >> 5));
                                    qt.y0(126, 15 & b26);
                                    qt.y0(127, (b27 >> 7) & 1);
                                    qt.y0(128, (b27 >> 6) & 1);
                                    qt.y0(129, (b27 >> 5) & 1);
                                    qt.y0(130, (b27 >> 4) & 1);
                                    qt.y0(131, b28 & 1);
                                } else if (65938 == i53 || 1048978 == i53 || 1376658 == i53 || 1769874 == i53) {
                                    byte b29 = bArr[i2 + 9];
                                    byte b30 = bArr[i2 + 10];
                                    byte b31 = bArr[i2 + 11];
                                    qt.y0(160, (b29 >> 7) & 1);
                                    qt.y0(146, (b29 >> 6) & 1);
                                    qt.y0(147, (b29 >> 5) & 1);
                                    qt.y0(148, (b29 >> 4) & 1);
                                    qt.y0(149, (b29 >> 3) & 1);
                                    qt.y0(150, (b29 >> 0) & 7);
                                    qt.y0(151, (b30 >> 0) & 255);
                                    qt.y0(152, (b31 >> 7) & 1);
                                    qt.y0(153, (b31 >> 4) & 7);
                                    qt.y0(154, 3 & (b31 >> 2));
                                    qt.y0(155, (b31 >> 1) & 1);
                                    qt.y0(156, (b31 >> 0) & 1);
                                } else {
                                    byte b32 = bArr[i2 + 9];
                                    byte b33 = bArr[i2 + 10];
                                    byte b34 = bArr[i2 + 11];
                                    qt.y0(160, (b32 >> 7) & 1);
                                    qt.y0(146, (b32 >> 6) & 1);
                                    qt.y0(147, (b32 >> 5) & 1);
                                    qt.y0(148, (b32 >> 4) & 1);
                                    qt.y0(149, (b32 >> 3) & 1);
                                    qt.y0(150, (b32 >> 0) & 7);
                                    qt.y0(151, (b33 >> 0) & 255);
                                    qt.y0(152, (b34 >> 7) & 1);
                                    qt.y0(153, (b34 >> 4) & 7);
                                    qt.y0(154, 3 & (b34 >> 2));
                                    qt.y0(155, (b34 >> 1) & 1);
                                    qt.y0(156, (b34 >> 0) & 1);
                                }
                                break;
                            case 114:
                                switch (bArr[i2 + 2]) {
                                    case -112:
                                        qt.y0(164, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_FAILED_USER_RESTRICTED /* -111 */:
                                        qt.y0(165, bArr[i2 + 3] & 255);
                                        break;
                                    case -110:
                                        qt.y0(166, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY /* -109 */:
                                        qt.y0(167, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED /* -108 */:
                                        qt.y0(196, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID /* -107 */:
                                        qt.y0(197, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME /* -106 */:
                                        qt.y0(198, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING /* -105 */:
                                        qt.y0(199, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES /* -104 */:
                                        qt.y0(200, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES /* -103 */:
                                        qt.y0(201, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION /* -102 */:
                                        qt.y0(202, bArr[i2 + 3] & 255);
                                        break;
                                    case PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST /* -101 */:
                                        qt.y0(203, bArr[i2 + 3] & 255);
                                        break;
                                    case -96:
                                        qt.y0(168, bArr[i2 + 3] & 255);
                                        break;
                                    case CameraBinderDecorator.EOPNOTSUPP /* -95 */:
                                        qt.y0(169, bArr[i2 + 3] & 255);
                                        break;
                                    case -94:
                                        qt.y0(170, bArr[i2 + 3] & 255);
                                        break;
                                    case -93:
                                        qt.y0(171, bArr[i2 + 3] & 255);
                                        break;
                                    case -92:
                                        qt.y0(172, bArr[i2 + 3] & 255);
                                        break;
                                }
                                break;
                            case 115:
                                int i54 = i2 + 2;
                                qt.y0(183, (bArr[i54] >> 7) & 1);
                                qt.y0(173, (bArr[i54] >> 6) & 1);
                                qt.y0(174, (bArr[i54] >> 5) & 1);
                                qt.y0(175, (bArr[i54] >> 4) & 1);
                                qt.y0(176, (bArr[i54] >> 3) & 1);
                                qt.y0(177, (bArr[i54] >> 2) & 1);
                                qt.y0(178, (bArr[i54] >> 1) & 1);
                                qt.y0(179, (bArr[i54] >> 0) & 1);
                                int i55 = i2 + 3;
                                qt.y0(215, (bArr[i55] >> 7) & 1);
                                qt.y0(216, (bArr[i55] >> 6) & 1);
                                qt.y0(184, (bArr[i55] >> 3) & 1);
                                qt.y0(181, (bArr[i55] >> 2) & 1);
                                qt.y0(182, (bArr[i55] >> 0) & 3);
                                int i56 = i2 + 4;
                                qt.y0(185, (bArr[i56] >> 3) & 1);
                                qt.y0(186, (bArr[i56] >> 2) & 1);
                                qt.y0(187, (bArr[i56] >> 0) & 3);
                                qt.y0(205, (bArr[i56] >> 7) & 1);
                                qt.y0(206, (bArr[i56] >> 6) & 1);
                                qt.y0(207, (bArr[i56] >> 4) & 3);
                                int i57 = i2 + 7;
                                qt.y0(208, (bArr[i57] >> 7) & 1);
                                qt.y0(209, (bArr[i57] >> 6) & 1);
                                qt.y0(210, (bArr[i57] >> 5) & 1);
                                qt.y0(211, (bArr[i57] >> 4) & 1);
                                qt.y0(212, (bArr[i57] >> 3) & 1);
                                qt.y0(213, (bArr[i57] >> 2) & 1);
                                qt.y0(214, (bArr[i57] >> 0) & 3);
                                int i58 = (bArr[i2 + 5] == 0 && bArr[i2 + 6] == 0) ? 0 : 1;
                                if (this.f10242m != i58) {
                                    this.f10242m = i58;
                                    if (i58 == 1) {
                                        v3();
                                    } else {
                                        this.f10241l = 3;
                                    }
                                }
                                break;
                            case 116:
                                int i59 = i2 + 2;
                                if (bArr[i59] != 0) {
                                    qt.a(1);
                                } else {
                                    qt.a(0);
                                }
                                byte b35 = bArr[i59];
                                if (b35 == 1) {
                                    qt.y0(Process.MEDIA_UID, 0);
                                    break;
                                } else if (b35 == 2) {
                                    qt.y0(Process.MEDIA_UID, 1);
                                    break;
                                } else if (b35 == 3) {
                                    qt.y0(Process.MEDIA_UID, 3);
                                    break;
                                } else if (b35 == 4) {
                                    qt.y0(Process.MEDIA_UID, 2);
                                    break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10253x.j();
        qt.q0(this.f10243n);
        l0.b0.p0(this.f10238i);
        w0.e.f17815a.d(this.f10238i);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f10238i);
        u0.c.f17393t.d(this.f10238i);
        u0.c.f17392s.d(this.f10238i);
        h0.d.f2464c.d(this.J);
        h0.d.f2462a.d(this.J);
        l0.b0.p0(this.f10240k);
        yVar.d(this.f10254y);
        l0.b0.p0(this.f10246q);
        u0.c.f17386m.d(this.f10245p);
        l0.b0.p0(this.f10246q);
        qt.p0(this.f10250u);
        qt.q0(this.f10249t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 222) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            b3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            w3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 2)) {
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (T2(iArr, 2)) {
                z.k.s(227, 169, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 5) {
            if (T2(iArr, 2)) {
                z.k.s(227, 169, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            return;
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE ==  " + iArr[0]);
        if (iArr.length > 0) {
            int i3 = iArr[0];
            if (i3 == 1) {
                z.k.s(227, 131, 2, 176, 2);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 131, 2, 176, 4);
            } else if (i3 != 3) {
                z.k.s(227, 131, 2, 176, 1);
            } else {
                z.k.s(227, 131, 2, 176, 3);
            }
        }
    }

    public final void a3(int i2) {
        if (this.I) {
            this.I = false;
            b3(i2, 1);
            o1.l.a().postDelayed(new a(i2), 100L);
        }
    }

    public void b3(int i2, int i3) {
        int i4 = nt.f8633a;
        if (i4 == 262546 || i4 == 328082 || i4 == 393618 || i4 == 459154 || i4 == 524690 || i4 == 590226) {
            z.k.s(227, 224, 2, i2, i3);
        } else if (i4 == 65938 || i4 == 131474) {
            z.k.s(227, 149, 2, i2, i3);
        } else {
            z.k.s(227, 168, 2, i2, i3);
        }
    }

    public final void v3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.keleijia.KeLeiJia_Set_SeatSet")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.keleijia.KeLeiJia_Set_SeatSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void w3(int i2, int i3) {
        qt.y0(189, i2);
        z.k.s(227, -35, 2, i2, i3);
        N = i2;
        int iB = this.f10253x.b(1, 0);
        int i4 = N;
        if (iB != i4) {
            this.f10253x.g(1, i4);
        }
        qt.y0(190, i3);
        O = i3;
        int iB2 = this.f10253x.b(2, 0);
        int i5 = O;
        if (iB2 != i5) {
            this.f10253x.g(2, i5);
        }
    }

    public final void x3(int i2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 15 ? str.length() : 15;
        byte[] bArr = new byte[20];
        char[] charArray = str.toCharArray();
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = (byte) charArray[i3];
        }
        int[] iArr = new int[(length + 10) - 4];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = ((byte) length) + 3;
        iArr[3] = 5;
        iArr[4] = (byte) i2;
        iArr[5] = 1;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[6 + i4] = bArr[i4];
        }
        z.k.s(iArr);
    }
}
