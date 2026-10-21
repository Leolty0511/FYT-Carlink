package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ke extends lt {
    public static int B = 255;
    public static int C = 255;
    public static Runnable D = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7252b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7258h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7261k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o1.o f7265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public o1.o f7266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.o f7267q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public o1.o f7268r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7253c = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7259i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f7260j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, 2}, new int[]{4, 13}, new int[]{23, 1}, new int[]{11, 2}, new int[]{15, 29}, new int[]{16, 6}, new int[]{32, 4}, new int[]{33, 3}, new int[]{101, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{23, 1}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{137, 29}, new int[]{138, 6}, new int[]{139, 55}, new int[]{140, 21}, new int[]{141, 1}, new int[]{193, 25}, new int[]{194, 3}, new int[]{195, 4}, new int[]{196, 29}, new int[]{197, 73}, new int[]{198, 6}, new int[]{199, 21}, new int[]{200, 54}, new int[]{201, 12}, new int[]{202, 40}, new int[]{203, 41}, new int[]{204, 42}, new int[]{205, 43}, new int[]{206, 44}, new int[]{207, 45}, new int[]{208, 16}, new int[]{209, 1}, new int[]{210, 1}, new int[]{211, 56}, new int[]{212, 38}, new int[]{213, 6}, new int[]{214, 38}, new int[]{215, 7}, new int[]{216, 8}, new int[]{217, 3}, new int[]{218, 4}, new int[]{219, 32}, new int[]{220, 33}, new int[]{221, 32}, new int[]{222, 33}, new int[]{223, 53}, new int[]{224, 1}, new int[]{225, 29}, new int[]{226, 77}, new int[]{227, 21}, new int[]{228, 54}, new int[]{229, 1}, new int[]{230, 73}, new int[]{231, 55}, new int[]{232, 18}, new int[]{233, 78}, new int[]{234, 29}, new int[]{235, 5}, new int[]{236, 2}, new int[]{237, 54}, new int[]{238, 1}, new int[]{239, 5}, new int[]{240, 76}, new int[]{i.a.Theme_actionModeShareDrawable, 25}, new int[]{i.a.Theme_actionModeFindDrawable, 78}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 21}, new int[]{i.a.Theme_actionModePopupWindowStyle, 26}, new int[]{i.a.Theme_preferenceFragmentStyle, 18}, new int[]{i.a.Theme_preferencePanelStyle, 64}, new int[]{i.a.Theme_preferenceHeaderPanelStyle, 55}, new int[]{248, 18}, new int[]{249, 2}, new int[]{250, 73}, new int[]{251, 1}, new int[]{252, 55}, new int[]{i.a.Theme_dialogTitleDecorLayout, 54}, new int[]{254, 1}, new int[]{255, 13}, new int[]{256, 33}, new int[]{257, 32}, new int[]{258, 38}, new int[]{259, 64}, new int[]{261, 7}, new int[]{262, 8}, new int[]{263, 74}, new int[]{264, 75}, new int[]{267, 21}, new int[]{268, 18}, new int[]{i.a.Theme_findOnPageNextDrawable, 27}, new int[]{i.a.Theme_findOnPagePreviousDrawable, 28}, new int[]{286, 1}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7262l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f7263m = {new int[]{1, 54}, new int[]{2, 55}, new int[]{3, 34}, new int[]{4, 35}, new int[]{5, 32}, new int[]{6, 33}, new int[]{7, 6}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 18}, new int[]{11, 26}, new int[]{12, 25}, new int[]{13, 2}, new int[]{14, 38}, new int[]{15, 21}, new int[]{16, 5}, new int[]{17, 12}, new int[]{18, 38}, new int[]{19, -1}, new int[]{20, 7}, new int[]{21, 8}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f7264n = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f7269s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f7270t = new i();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7271u = new j();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f7272v = new k();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f7273w = new a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f7274x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f7275y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f7276z = new b();
    public Runnable A = new c();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f7277a;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f7277a = time;
            time.setToNow();
            long millis = this.f7277a.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (ke.this.f7274x == millis && ke.this.f7275y == zIs24HourFormat) {
                return;
            }
            ke.this.f7274x = millis;
            ke.this.f7275y = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f7277a;
            z.k.s(227, 10, -53, 0, (byte) time2.hour, (byte) time2.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time2.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time2.month + 1), (byte) time2.monthDay, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ke.this.k3((byte) -110, u0.b.i3);
            if (u0.b.D == 9) {
                ke.this.k3((byte) -108, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 9) {
                u0.b.j3 = ProxyProperties.LOCAL_EXCL_LIST;
            }
            ke.this.k3((byte) -108, u0.b.j3);
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            ke.a3();
        }
    }

    public class e implements o1.o {
        public e() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = i.a.Theme_actionModeWebSearchDrawable;
            e.e.f1624b.c();
            return true;
        }
    }

    public class f implements o1.o {
        public f() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 251;
            e.e.f1624b.c();
            return true;
        }
    }

    public class g implements o1.o {
        public g() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 252;
            e.e.f1624b.c();
            return true;
        }
    }

    public class h implements o1.o {
        public h() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            o1.u.i();
            return true;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ke.this.f7271u);
            ke.this.f7269s = 5;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ke keVar = ke.this;
            int i2 = keVar.f7269s - 1;
            keVar.f7269s = i2;
            if (i2 <= 0) {
                l0.b0.p0(keVar.f7271u);
                ke.this.f7269s = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 0:
                        z.k.s(227, 2, 36, 3, 38);
                        break;
                    case 1:
                        z.k.s(227, 2, 36, 4, 38);
                        break;
                    case 2:
                    case 3:
                        z.k.s(227, 2, 36, 9, 15);
                        break;
                    case 4:
                    case 5:
                    case 18:
                    case 19:
                        z.k.s(227, 2, 36, 4, 12);
                        break;
                    case 6:
                        z.k.s(227, 2, 36, 4, 19);
                        break;
                    case 7:
                        z.k.s(227, 2, 36, 4, 30);
                        break;
                    case 9:
                        z.k.s(227, 2, 36, 6, 19);
                        break;
                    case 10:
                        z.k.s(227, 2, 36, 5, 19);
                        break;
                    case 11:
                        z.k.s(227, 2, 36, 10, 15);
                        break;
                    case 13:
                        z.k.s(227, 2, 36, 2, 33);
                        break;
                    case 16:
                        z.k.s(227, 2, 36, 10, 38);
                        break;
                    case 20:
                        z.k.s(227, 2, 36, 11, 38);
                        break;
                }
                int i3 = nt.f8637c;
                if (i3 == 18 || i3 == 19) {
                    z.k.s(227, 2, 108, 0, 0);
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (u0.b.E0) {
                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                    ke.this.l3(5);
                    break;
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    ke.this.l3(12);
                    break;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    ke.this.l3(11);
                    break;
                case i.a.Theme_preferencePanelStyle /* 246 */:
                    ke.this.l3(14);
                    break;
                case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                    ke.this.l3(13);
                    break;
                case 248:
                    ke.this.l3(7);
                    break;
                case 249:
                    ke.this.l3(21);
                    break;
                case 250:
                    ke.this.l3(2);
                    break;
                case 251:
                    ke.this.l3(1);
                    break;
                case 252:
                    ke.this.l3(6);
                    break;
            }
        }
    }

    public class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f7288a;

        public l(int i2) {
            this.f7288a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(-29, 2, 61, this.f7288a, 0);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.f17320f == 1) {
            int i4 = u0.b.D;
            if (i4 == 1) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                int i5 = w0.d.f17796h;
                if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                } else {
                    int i7 = w0.d.f17797i;
                    if ((i7 % 10000) / 1000 == 1) {
                        iArr[6] = ((i7 % 10000) / 1000) + 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    } else {
                        iArr[6] = 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    }
                }
            } else if (i4 == 4) {
                int i8 = o0.e.B;
                if (i8 <= 999) {
                    int i9 = i8 / 100;
                    iArr[4] = (i8 / 100) + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = ((i8 % 100) / 10) + 48;
                    iArr[6] = (i8 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i11 = o0.e.f16794r;
                iArr[8] = ((i11 / 60) / 10) + 48;
                iArr[9] = ((i11 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i11 % 60) / 10) + 48;
                iArr[12] = ((i11 % 60) % 10) + 48;
            } else if (i4 == 8) {
                int i12 = u0.b.r3;
                if (i12 <= 999) {
                    int i13 = i12 / 100;
                    iArr[4] = (i12 / 100) + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[5] = ((i12 % 100) / 10) + 48;
                    iArr[6] = (i12 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i15 = u0.b.t3;
                iArr[8] = ((i15 / 60) / 10) + 48;
                iArr[9] = ((i15 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i15 % 60) / 10) + 48;
                iArr[12] = ((i15 % 60) % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i16 = i2 + 1;
            iArr2[i16] = (byte) iArr[i2];
            i2 = i16;
        }
        z.k.s(iArr2);
    }

    public static int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 5:
            case 6:
                i2 = 12;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 != 0) {
                        i2 = 1 != i3 - 0 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 13;
                } else if (i4 != 2) {
                    i2 = i4 != 3 ? 0 : 13;
                } else {
                    i2 = 25;
                }
                break;
            case 7:
                i2 = 22;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i2;
    }

    public static int c3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 15 : 7;
        }
        return 0;
    }

    public static int d3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 7;
        }
        return 4;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0059  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 == 6) {
            mtVar.f8306a = null;
        } else if (i2 == 7) {
            this.f7265o = e.c.f1619y;
            this.f7266p = e.c.f1620z;
            this.f7267q = e.c.f1617w;
            this.f7268r = e.c.f1618x;
            e.c.f1617w = new e();
            e.c.f1620z = new f();
            e.c.f1619y = new g();
            e.c.f1618x = new h();
            e.e.f1624b.a(this.f7272v, 0);
        } else if (i2 == 12 || i2 == 14) {
            mtVar.f8306a = null;
        }
        u0.c.f17388o.a(this.f7276z, 1);
        u0.c.f17389p.a(this.A, 1);
        qt.z(this.f7273w);
        qt.z(D);
        w0.e.f17815a.a(D, 1);
        w0.e.f17819e.a(D, 1);
        u0.c.f17386m.a(this.f7270t, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        int i5;
        int[][] iArr3;
        int i6;
        int[][] iArr4;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b3 = bArr[i2 + 1];
        if (b3 == -24) {
            if (nt.a()) {
                int i11 = nt.f8633a;
                if (i11 == 131491 || i11 == 1048995 || i11 == 1311139) {
                    int i12 = bArr[i2 + 4] & 255;
                    int i13 = bArr[i2 + 5] & 255;
                    int i14 = bArr[i2 + 6] & 255;
                    int i15 = bArr[i2 + 7] & 255;
                    int i16 = bArr[i2 + 8] & 255;
                    if (i13 == 1 && ((i12 == 1 || i14 == 1 || i15 == 1 || i16 == 1) && this.f7264n)) {
                        qt.a(1);
                        this.f7264n = false;
                    } else if (i12 == 0 && i13 == 0 && i14 == 0 && i15 == 0 && i16 == 0) {
                        qt.a(0);
                        this.f7264n = true;
                    }
                } else if (i11 == 917923) {
                    int i17 = i2 + 5;
                    if ((bArr[i17] & 255) == 1 && this.f7264n) {
                        qt.a(1);
                        this.f7264n = false;
                    } else if ((bArr[i17] & 255) == 0 && !this.f7264n) {
                        qt.a(0);
                        this.f7264n = true;
                    }
                }
            }
            int i18 = nt.f8637c;
            if (i18 == 2) {
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 6];
                byte b6 = bArr[i2 + 7];
                byte b7 = bArr[i2 + 8];
                if (b6 == 1) {
                    qt.y0(Process.MEDIA_UID, 0);
                    return;
                }
                if (b7 == 1) {
                    qt.y0(Process.MEDIA_UID, 1);
                    return;
                }
                if (b5 == 1) {
                    qt.y0(Process.MEDIA_UID, 2);
                    return;
                } else if (b4 == 1) {
                    qt.y0(Process.MEDIA_UID, 3);
                    return;
                } else {
                    qt.y0(Process.MEDIA_UID, -1);
                    return;
                }
            }
            if (i18 != 14) {
                if (i18 != 16) {
                    qt.y0(Process.MEDIA_UID, -1);
                    return;
                }
                int i19 = bArr[i2 + 5] & 255;
                if (i19 == 1 && this.f7264n) {
                    qt.a(1);
                    this.f7264n = false;
                    return;
                } else {
                    if (i19 == 0) {
                        qt.a(0);
                        this.f7264n = true;
                        return;
                    }
                    return;
                }
            }
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            qt.y0(Process.MEDIA_UID, b8);
            if (b11 == 1) {
                qt.y0(149, 0);
                return;
            }
            if (b12 == 1) {
                qt.y0(149, 1);
                return;
            }
            if (b10 == 1) {
                qt.y0(149, 2);
                return;
            } else if (b9 == 1) {
                qt.y0(149, 3);
                return;
            } else {
                qt.y0(149, -1);
                return;
            }
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 52) {
            qt.y0(140, ((bArr[i2 + 8] & 255) | ((bArr[i2 + 6] & 255) << 8) | ((bArr[i2 + 7] & 255) << 4)) & 16777215);
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                if (nt.f8637c == 8) {
                    u0.d.R2(c3(bArr[i2 + 2] & 255));
                    u0.d.S2(d3(bArr[i2 + 3] & 255));
                    u0.d.T2(d3(bArr[i2 + 4] & 255));
                    u0.d.U2(c3(bArr[i2 + 5] & 255));
                    return;
                }
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                int i20 = i2 + 6;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 7;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 8;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 9;
                int i27 = bArr[i26] & 255;
                if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i27;
                u0.d.D2(d3(bArr[i20] & 255));
                u0.d.E2(d3(bArr[i22] & 255));
                u0.d.F2(d3(bArr[i24] & 255));
                u0.d.G2(d3(bArr[i26] & 255));
                return;
            }
            return;
        }
        if (b3 == 114) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            qt.y0(99, (b13 >> 7) & 1);
            qt.y0(100, (b13 >> 6) & 1);
            qt.y0(101, (b13 >> 5) & 1);
            qt.y0(102, (b13 >> 4) & 1);
            qt.y0(103, (b13 >> 3) & 1);
            qt.y0(104, (b13 >> 2) & 1);
            qt.y0(105, (b13 >> 1) & 1);
            qt.y0(106, b13 & 1);
            qt.y0(107, (b14 >> 7) & 1);
            qt.y0(108, (b14 >> 6) & 1);
            return;
        }
        if (b3 == 116) {
            if (nt.a()) {
                this.f7258h = (bArr[i2 + 2] & 255) | 128;
                int i28 = 0;
                while (true) {
                    iArr = this.f7260j;
                    if (i28 >= iArr.length) {
                        break;
                    }
                    int i29 = this.f7258h;
                    if (i29 == iArr[i28][0]) {
                        if (i29 == 0) {
                            break;
                        }
                        this.f7259i = i28;
                        break;
                    }
                    i28++;
                }
                if (this.f7258h == 128 || (bArr[i2 + 3] & 255) == 0) {
                    int i30 = this.f7259i;
                    b2 = 255;
                    if (i30 != 255 && (bArr[i2 + 3] & 255) == 0) {
                        l0.b0.l0(iArr[i30][1], 1);
                    }
                    this.f7259i = 255;
                } else {
                    if (i28 < iArr.length) {
                        l0.b0.l0(iArr[i28][1], 0);
                    }
                    b2 = 255;
                }
                int i31 = i2 + 3;
                int i32 = bArr[i31] & b2;
                int i33 = this.f7252b;
                if (i32 != i33) {
                    if (i33 == 0 && (bArr[i31] & b2) == b2) {
                        u0.d.B1();
                    } else if ((bArr[i31] & b2) != 0 && (bArr[i31] & b2) <= i33) {
                        u0.d.B1();
                    } else {
                        u0.d.I1();
                    }
                }
                this.f7252b = bArr[i31] & b2;
                return;
            }
            return;
        }
        if (b3 == 120) {
            byte b15 = bArr[i2 + 4];
            byte b16 = bArr[i2 + 9];
            qt.y0(142, (((b15 >> 7) & 1) << 8) | ((b16 >> 7) & 1));
            qt.y0(143, (((b15 >> 6) & 1) << 8) | ((b16 >> 6) & 1));
            qt.y0(144, (((b15 >> 5) & 1) << 8) | ((b16 >> 5) & 1));
            qt.y0(145, (((b15 >> 4) & 1) << 8) | ((b16 >> 4) & 1));
            qt.y0(146, (((b15 >> 3) & 1) << 8) | ((b16 >> 3) & 1));
            qt.y0(147, (((b15 >> 2) & 1) << 8) | ((b16 >> 2) & 1));
            qt.y0(148, ((b16 >> 1) & 1) | (((b15 >> 1) & 1) << 8));
            return;
        }
        if (b3 == 17) {
            if (nt.a()) {
                byte b17 = bArr[i2 + 4];
                byte b18 = bArr[i2 + 5];
                this.f7255e = b17 & 255;
                int i34 = 0;
                while (true) {
                    iArr2 = this.f7260j;
                    if (i34 >= iArr2.length) {
                        break;
                    }
                    int i35 = this.f7255e;
                    if (i35 == iArr2[i34][0]) {
                        if (i35 == 0) {
                            break;
                        }
                        this.f7254d = i34;
                        break;
                    }
                    i34++;
                }
                if ((b18 & 255) == 0) {
                    int i36 = this.f7254d;
                    if (i36 < iArr2.length) {
                        i4 = 255;
                        if (i36 != 255) {
                            l0.b0.l0(iArr2[i36][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f7254d = i4;
                } else if (i34 < iArr2.length) {
                    if (iArr2[i34][0] != 6 || ((i5 = h0.c.E) >= 3 && i5 <= 5)) {
                        l0.b0.l0(iArr2[i34][1], 0);
                    } else {
                        l0.b0.l0(13, 0);
                    }
                }
                int i37 = nt.f8637c;
                if (i37 == 0 || i37 == 1 || i37 == 2 || i37 == 3 || i37 == 4 || i37 == 5 || i37 == 6 || i37 == 7 || i37 == 8 || i37 == 9 || i37 == 10 || i37 == 13 || i37 == 14 || i37 == 16 || i37 == 18 || i37 == 19) {
                    qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                    return;
                } else {
                    qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 9600);
                    return;
                }
            }
            return;
        }
        if (b3 == 18) {
            byte b19 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b19 >> 7) & 1);
                qt.y0(1, (b19 >> 6) & 1);
            } else {
                qt.y0(1, (b19 >> 7) & 1);
                qt.y0(2, (b19 >> 6) & 1);
            }
            qt.y0(3, (b19 >> 5) & 1);
            qt.y0(4, (b19 >> 4) & 1);
            qt.y0(5, (b19 >> 3) & 1);
            qt.y0(0, (b19 >> 2) & 1);
            return;
        }
        if (b3 == 33) {
            if (nt.a()) {
                int i38 = nt.f8637c;
                if (i38 != 18 && i38 != 19) {
                    int i39 = i2 + 2;
                    this.f7256f = (bArr[i39] & 255) + 192;
                    int i40 = 0;
                    while (true) {
                        iArr4 = this.f7260j;
                        if (i40 >= iArr4.length) {
                            break;
                        }
                        int i41 = this.f7256f;
                        if (i41 == iArr4[i40][0]) {
                            if (i41 == 0) {
                                break;
                            }
                            this.f7257g = i40;
                            break;
                        }
                        i40++;
                    }
                    if ((bArr[i39] & 255) == 57) {
                        if ((bArr[i2 + 3] & 255) == 1) {
                            l0.b0.l0(5, 0);
                            l0.b0.l0(5, 1);
                            return;
                        }
                        return;
                    }
                    if ((bArr[i2 + 3] & 255) == 0) {
                        int i42 = this.f7257g;
                        if (i42 < iArr4.length) {
                            i7 = 255;
                            if (i42 != 255) {
                                l0.b0.l0(iArr4[i42][1], 1);
                            }
                        } else {
                            i7 = 255;
                        }
                        this.f7257g = i7;
                        return;
                    }
                    if (i40 < iArr4.length) {
                        if (iArr4[i40][0] == 232 && nt.f8637c == 3) {
                            l0.b0.l0(2, 0);
                            return;
                        }
                        if (iArr4[i40][0] == 203 && u0.b.D != 1) {
                            l0.b0.l0(1, 0);
                            return;
                        }
                        if (iArr4[i40][0] == 204 && u0.b.D != 1) {
                            l0.b0.l0(26, 0);
                            return;
                        }
                        if (iArr4[i40][0] == 205 && u0.b.D != 1) {
                            l0.b0.l0(18, 0);
                            return;
                        } else if (iArr4[i40][0] != 206 || u0.b.D == 1) {
                            l0.b0.l0(iArr4[i40][1], 0);
                            return;
                        } else {
                            l0.b0.l0(66, 0);
                            return;
                        }
                    }
                    return;
                }
                this.f7261k = bArr[i2 + 2] & 255;
                int i43 = i2 + 3;
                int i44 = bArr[i43] & 255;
                int i45 = 0;
                while (true) {
                    iArr3 = this.f7263m;
                    if (i45 >= iArr3.length) {
                        break;
                    }
                    int i46 = this.f7261k;
                    if (i46 == iArr3[i45][0]) {
                        if (i46 == 0) {
                            break;
                        }
                        this.f7262l = i45;
                        break;
                    }
                    i45++;
                }
                int i47 = this.f7261k;
                if (i47 == 2) {
                    if ((bArr[i43] & 255) == 1) {
                        int i48 = nt.f8637c;
                        if (i48 == 18) {
                            l0.b0.l0(55, 0);
                            l0.b0.l0(55, 1);
                            return;
                        } else {
                            if (i48 == 19) {
                                l0.b0.l0(1, 0);
                                l0.b0.l0(1, 1);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i47 == 14) {
                    if ((bArr[i43] & 255) == 1) {
                        int i49 = nt.f8637c;
                        if (i49 == 18) {
                            l0.b0.l0(38, 0);
                            l0.b0.l0(38, 1);
                            return;
                        } else {
                            if (i49 == 19) {
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i47 == 20) {
                    for (int i50 = 0; i50 < (i44 & 255); i50++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                if (i47 == 21) {
                    for (int i51 = 0; i51 < (i44 & 255); i51++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                if ((bArr[i43] & 255) == 1) {
                    if (i45 < iArr3.length) {
                        l0.b0.l0(iArr3[i45][1], 0);
                        return;
                    }
                    return;
                }
                int i52 = this.f7262l;
                if (i52 < iArr3.length) {
                    i6 = 255;
                    if (i52 != 255) {
                        l0.b0.l0(iArr3[i52][1], 1);
                    }
                } else {
                    i6 = 255;
                }
                this.f7262l = i6;
                return;
            }
            return;
        }
        if (b3 == 34) {
            if (nt.a()) {
                int i53 = i2 + 2;
                if ((bArr[i53] & 255) == 1) {
                    int i54 = B;
                    int i55 = i2 + 3;
                    if (i54 != (bArr[i55] & 255)) {
                        if ((bArr[i55] & 255) == 255 && i54 == 0) {
                            u0.d.M1();
                        } else if (!((bArr[i55] & 255) == 0 && i54 == 255) && i54 >= (bArr[i55] & 255)) {
                            u0.d.M1();
                        } else {
                            u0.d.O1();
                        }
                        B = bArr[i55] & 255;
                    }
                }
                if ((bArr[i53] & 255) == 2 || (bArr[i53] & 255) == 3 || (bArr[i53] & 255) == 4 || (bArr[i53] & 255) == 5) {
                    int i56 = C;
                    int i57 = i2 + 3;
                    if (i56 != (bArr[i57] & 255)) {
                        if ((bArr[i57] & 255) == 255 && i56 == 0) {
                            l0.b0.w(0);
                        } else if (!((bArr[i57] & 255) == 0 && i56 == 255) && i56 >= (bArr[i57] & 255)) {
                            l0.b0.w(0);
                        } else {
                            l0.b0.R(0);
                        }
                        C = bArr[i57] & 255;
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b3 != 49) {
            if (b3 == 50) {
                int i58 = i2 + 4;
                int i59 = i2 + 5;
                qt.y0(98, ((bArr[i58] << 8) & 65280) | (bArr[i59] & 255));
                qt.y0(1032, ((bArr[i58] << 8) & 65280) | (bArr[i59] & 255));
                qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            switch (b3) {
                case 102:
                    byte b20 = bArr[i2 + 2];
                    byte b21 = bArr[i2 + 3];
                    qt.y0(109, (((b20 >> 5) & 1) << 8) | ((b21 >> 7) & 1));
                    qt.y0(110, (7 & (b21 >> 4)) | (((b20 >> 4) & 1) << 8));
                    qt.y0(111, (((b20 >> 3) & 1) << 8) | ((b21 >> 3) & 1));
                    qt.y0(112, (((b20 >> 2) & 1) << 8) | ((b21 >> 2) & 1));
                    int i60 = (b20 >> 1) & 1;
                    int i61 = (b21 >> 1) & 1;
                    qt.y0(113, (i60 << 8) | i61);
                    int i62 = (b20 >> 0) & 1;
                    int i63 = (b21 >> 0) & 1;
                    qt.y0(114, (i62 << 8) | i63);
                    int i64 = nt.f8633a;
                    if (i64 == 524707 || i64 == 1114531) {
                        qt.y0(136, (i60 << 4) | i61);
                        qt.y0(137, i63 | (i62 << 4));
                    }
                    break;
                case 103:
                    byte b22 = bArr[i2 + 2];
                    byte b23 = bArr[i2 + 3];
                    byte b24 = bArr[i2 + 4];
                    byte b25 = bArr[i2 + 5];
                    byte b26 = bArr[i2 + 6];
                    qt.y0(115, (((b22 >> 6) & 1) << 8) | ((b25 >> 2) & 3));
                    qt.y0(116, (((b22 >> 5) & 1) << 8) | ((b25 >> 1) & 1));
                    qt.y0(117, (((b22 >> 4) & 1) << 8) | ((b24 >> 5) & 7));
                    qt.y0(118, ((b24 >> 2) & 7) | (((b22 >> 3) & 1) << 8));
                    qt.y0(119, (((b22 >> 2) & 1) << 8) | ((b25 >> 0) & 1));
                    int i65 = (b22 >> 1) & 1;
                    qt.y0(120, (i65 << 8) | ((b24 >> 1) & 1));
                    int i66 = (b22 >> 0) & 1;
                    qt.y0(121, ((b24 >> 0) & 1) | (i66 << 8));
                    qt.y0(122, (((b23 >> 6) & 1) << 8) | ((b26 >> 2) & 1));
                    qt.y0(123, (((b23 >> 5) & 1) << 8) | ((b26 >> 1) & 1));
                    qt.y0(124, ((b26 >> 0) & 1) | (((b23 >> 4) & 1) << 8));
                    qt.y0(125, (((b23 >> 3) & 1) << 8) | ((b25 >> 7) & 1));
                    int i67 = b23 >> 2;
                    qt.y0(126, ((i67 & 1) << 8) | ((b25 >> 6) & 1));
                    qt.y0(127, (((b23 >> 1) & 1) << 8) | ((b25 >> 5) & 1));
                    int i68 = b23 >> 0;
                    qt.y0(128, ((i68 & 1) << 8) | ((b25 >> 4) & 1));
                    int i69 = nt.f8633a;
                    if (i69 == 524707 || i69 == 1114531) {
                        qt.y0(138, (i67 & 3) | (i65 << 4));
                        qt.y0(139, (i66 << 4) | (i68 & 3));
                    }
                    break;
                case 104:
                    byte b27 = bArr[i2 + 2];
                    byte b28 = bArr[i2 + 3];
                    qt.y0(129, (((b27 >> 4) & 1) << 8) | ((b28 >> 5) & 1));
                    qt.y0(130, (((b27 >> 3) & 1) << 8) | ((b28 >> 4) & 1));
                    qt.y0(131, (((b27 >> 2) & 1) << 8) | ((b28 >> 3) & 1));
                    qt.y0(132, (((b27 >> 1) & 1) << 8) | ((b28 >> 2) & 1));
                    qt.y0(133, ((b28 >> 0) & 3) | (((b27 >> 0) & 1) << 8));
                    break;
            }
            return;
        }
        byte b29 = bArr[i2 + 2];
        byte b30 = bArr[i2 + 3];
        byte b31 = bArr[i2 + 4];
        byte b32 = bArr[i2 + 6];
        byte b33 = bArr[i2 + 7];
        int i70 = i2 + 8;
        byte b34 = bArr[i70];
        int i71 = i2 + 9;
        byte b35 = bArr[i71];
        qt.y0(10, (b29 >> 6) & 1);
        qt.y0(53, (b29 >> 5) & 1);
        qt.y0(13, (b29 >> 3) & 1);
        qt.y0(11, (b30 >> 6) & 1);
        qt.y0(80, (b30 >> 5) & 1);
        qt.y0(12, (b30 >> 4) & 1);
        qt.y0(14, (b30 >> 2) & 1);
        qt.y0(16, (b31 >> 5) & 1);
        qt.y0(65, (b31 >> 4) & 1);
        qt.y0(30, (b31 >> 2) & 3);
        qt.y0(29, b31 & 3);
        int i72 = b32 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i72 != 3) {
            if (i72 == 5) {
                i8 = 0;
                i9 = 1;
            } else if (i72 == 6) {
                i8 = 0;
                i10 = 0;
                i9 = 1;
            } else if (i72 == 11) {
                i9 = 0;
                i10 = 0;
                i8 = 1;
            } else if (i72 != 12) {
                i8 = 0;
                i9 = 0;
            } else {
                i9 = 0;
                i8 = 1;
                i10 = 1;
            }
            i10 = i9;
        } else {
            i8 = 0;
            i9 = 0;
            i10 = 1;
        }
        qt.y0(18, i8);
        qt.y0(19, i9);
        qt.y0(20, i10);
        qt.y0(77, i72);
        int[] iArr5 = new int[1];
        iArr5[0] = b33 > 8 ? (byte) 8 : b33;
        qt.y0(21, iArr5);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b34 = bArr[i71];
            b35 = bArr[i70];
        }
        byte b36 = b34;
        byte b37 = b35;
        int i73 = b36 & 255;
        if (b36 == -2) {
            qt.y0(27, -2);
        } else if (b36 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i73);
        }
        int i74 = b37 & 255;
        if (b37 == -2) {
            qt.y0(28, -2);
        } else if (b37 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i74);
        }
        if (nt.a()) {
            u0.d.A3(((bArr[i2 + 13] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17388o.d(this.f7276z);
        u0.c.f17389p.d(this.A);
        qt.q0(this.f7273w);
        e.e.f1624b.d(this.f7272v);
        e.c.f1619y = this.f7265o;
        e.c.f1620z = this.f7266p;
        e.c.f1617w = this.f7267q;
        e.c.f1618x = this.f7268r;
        qt.q0(D);
        w0.e.f17815a.d(D);
        w0.e.f17819e.d(D);
        u0.c.f17386m.d(this.f7270t);
        l0.b0.p0(this.f7271u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 107, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 108, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 109, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 4, 126, 33, 0, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            int i4 = nt.f8637c;
            if (i4 != 14) {
                if (i4 == 16) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
                    return;
                }
                return;
            } else {
                if (iArr[0] == 0) {
                    i3 = 1;
                } else {
                    i3 = iArr[0] == 1 ? 2 : 0;
                }
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 4, i3);
                return;
            }
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i5 = nt.f8637c;
            if (i5 == 2) {
                if (iArr[0] != 4) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 2, iArr[0] + 1);
                    return;
                } else {
                    z.k.s(1, 0, 121);
                    this.f7264n = false;
                    return;
                }
            }
            if (i5 != 5 && i5 != 19) {
                if (i5 == 14) {
                    z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 4, iArr[0]);
                }
            } else if (iArr[0] == 4) {
                z.k.s(1, 0, 121);
            } else if (iArr[0] == 5) {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 2, iArr[0]);
            } else {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 2, iArr[0] + 1);
            }
        }
    }

    public final void k3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void l3(int i2) {
        z.k.s(-29, 2, 61, i2, 1);
        o1.l.a().postDelayed(new l(i2), 100L);
    }
}
