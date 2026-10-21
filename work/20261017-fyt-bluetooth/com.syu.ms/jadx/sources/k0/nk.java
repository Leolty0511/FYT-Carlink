package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.widget.Toast;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class nk extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static Toast f8537s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f8538t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static Runnable f8539u = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8540b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8543e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f8546h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f8548j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8541c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8542d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8544f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8545g = {new int[]{1, 25}, new int[]{6, 6}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 58}, new int[]{22, 38}, new int[]{23, 3}, new int[]{24, 4}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 35}, new int[]{29, 32}, new int[]{30, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{37, 1}, new int[]{40, 18}, new int[]{43, 5}, new int[]{44, 2}, new int[]{49, 56}, new int[]{55, 55}, new int[]{57, 25}, new int[]{63, 38}, new int[]{64, 55}, new int[]{65, 24}, new int[]{66, 38}, new int[]{67, 64}, new int[]{69, 7}, new int[]{70, 8}, new int[]{75, 21}, new int[]{77, 3}, new int[]{78, 4}, new int[]{86, 22}, new int[]{87, 27}, new int[]{88, 28}, new int[]{97, 72}, new int[]{98, 71}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8547i = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8549k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8550l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8551m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8552n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8553o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8554p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8555q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8556r = new f();

    public class a implements Runnable {

        /* JADX INFO: renamed from: k0.nk$a$a, reason: collision with other inner class name */
        public class RunnableC0067a implements Runnable {

            /* JADX INFO: renamed from: k0.nk$a$a$a, reason: collision with other inner class name */
            public class RunnableC0068a implements Runnable {
                public RunnableC0068a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    nk.this.f8546h = null;
                }
            }

            public RunnableC0067a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent("com.syu.execute_tts");
                intent.putExtra("raw_text", nk.this.f8546h);
                intent.setPackage("com.syu.voice");
                App.c().startService(intent);
                o1.l.a().postDelayed(new RunnableC0068a(), 10000L);
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nk.this.n3();
            o1.l.a().postDelayed(new RunnableC0067a(), 1000L);
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (nk.f8537s == null) {
                Toast unused = nk.f8537s = Toast.makeText(App.c(), ProxyProperties.LOCAL_EXCL_LIST, 1);
            }
            nk.f8537s.setText(nk.f8538t);
            nk.f8537s.show();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            int i3 = time.hour;
            byte b3 = (byte) i3;
            byte b4 = (byte) time.minute;
            if (i3 > 12) {
                time.hour = i3 - 12;
                i2 = 1;
            } else {
                i2 = 0;
            }
            z.k.s(227, 10, -53, 0, 0, 0, b3, b4, b2, i2, 0, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nk nkVar = nk.this;
            nkVar.f8550l = 0;
            nkVar.f8551m = 0;
            l0.b0.b(nkVar.f8555q);
            nk.this.f8553o = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nk nkVar = nk.this;
            int i2 = nkVar.f8553o - 1;
            nkVar.f8553o = i2;
            if (i2 <= 0) {
                l0.b0.p0(nkVar.f8555q);
                nk.this.f8553o = 5;
            }
            switch (nt.f8633a) {
                case 1507771:
                    z.k.s(227, 2, 36, 9, 49);
                    break;
                case 3146172:
                    z.k.s(227, 2, 36, 8, 49);
                    break;
                case 4063675:
                    z.k.s(227, 2, 36, 2, 49);
                    break;
                case 4129211:
                    z.k.s(227, 2, 36, 3, 49);
                    break;
                case 4194747:
                    z.k.s(227, 2, 36, 4, 49);
                    break;
                case 4194748:
                    z.k.s(227, 2, 36, 23, 49);
                    break;
                case 4260283:
                    z.k.s(227, 2, 36, 5, 49);
                    break;
                case 4325819:
                    z.k.s(227, 2, 36, 6, 49);
                    break;
                case 4587963:
                    z.k.s(227, 2, 36, 14, 49);
                    break;
                case 5308859:
                    z.k.s(227, 2, 36, 7, 49);
                    break;
                case 6095291:
                    z.k.s(227, 2, 36, 13, 49);
                    break;
                case 7143867:
                    z.k.s(227, 2, 36, 11, 49);
                    break;
                case 7209403:
                    z.k.s(227, 2, 36, 12, 49);
                    break;
                case 8651195:
                    z.k.s(227, 2, 36, 16, 49);
                    break;
                case 15204795:
                    if (App.c().getResources().getConfiguration().orientation != 1) {
                        z.k.s(227, 2, 36, 19, 49);
                    } else {
                        z.k.s(227, 2, 36, 20, 49);
                    }
                    break;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nk.a3();
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
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0) {
                iArr[3] = 48;
                iArr[4] = 49;
                iArr[5] = 32;
                int i6 = w0.d.f17797i;
                iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else if (1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[3] = 49;
                iArr[4] = 48;
                iArr[5] = 32;
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i7 % 100) / 10) + 48;
            } else if (i5 - 0 == 0) {
                iArr[3] = 48;
                iArr[4] = 49;
                iArr[5] = 32;
                int i8 = w0.d.f17797i;
                if (i8 / 1000 == 0) {
                    iArr[6] = ((i8 % 1000) / 100) + 48;
                    iArr[7] = ((i8 % 100) / 10) + 48;
                    iArr[8] = (i8 % 10) + 48;
                    iArr[9] = 32;
                    iArr[10] = 32;
                } else {
                    iArr[6] = (i8 % 10000) / 1000;
                    iArr[7] = ((i8 % 1000) / 100) + 48;
                    iArr[8] = ((i8 % 100) / 10) + 48;
                    iArr[9] = (i8 % 10) + 48;
                    iArr[10] = 32;
                }
            } else {
                iArr[3] = 48;
                iArr[4] = 51;
                iArr[5] = 32;
                int i9 = w0.d.f17797i;
                if (i9 / 1000 == 0) {
                    iArr[6] = ((i9 % 1000) / 100) + 48;
                    iArr[7] = ((i9 % 100) / 10) + 48;
                    iArr[8] = (i9 % 10) + 48;
                    iArr[9] = 32;
                    iArr[10] = 32;
                } else {
                    iArr[6] = (i9 % 10000) / 1000;
                    iArr[7] = ((i9 % 1000) / 100) + 48;
                    iArr[8] = ((i9 % 100) / 10) + 48;
                    iArr[9] = (i9 % 10) + 48;
                    iArr[10] = 32;
                }
            }
        } else if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
            int i10 = u0.b.r3 % 1000;
            iArr[3] = i10 / 100;
            int i11 = (i10 % 100) / 10;
            iArr[4] = i11 == 0 ? 48 : i11 + 48;
            iArr[5] = (i10 % 10) + 48;
            iArr[6] = 32;
            iArr[7] = 48;
            int i12 = u0.b.s3 % 1000;
            iArr[8] = i12 / 100;
            int i13 = (i12 % 100) / 10;
            iArr[9] = i13 == 0 ? 48 : i13 + 48;
            iArr[10] = (i12 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i14 = i2 + 1;
            iArr2[i14] = (byte) iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    public static int b3() {
        int i2 = u0.b.D;
        int i3 = 13;
        if (i2 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0) {
                i3 = 1;
            } else if (1 == i4 - 65536) {
                i3 = 2;
            } else if (2 == i4 - 65536) {
                i3 = 3;
            } else if (i4 + 0 == 0) {
                i3 = 4;
            } else {
                i3 = 1 == i4 - 0 ? 5 : 0;
            }
        } else if (i2 == 2) {
            i3 = 10;
        } else if (i2 != 13) {
            switch (i2) {
                case 4:
                    if (o0.e.H == 1) {
                        i3 = 6;
                    }
                    break;
                case 5:
                    i3 = 12;
                    break;
                case 6:
                    i3 = 8;
                    break;
                case 7:
                    i3 = 11;
                    break;
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    i3 = 23;
                    break;
            }
        } else {
            i3 = 12;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i3;
    }

    public static int c3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public static void d3(String str) {
        f8538t = str;
        o1.m.a().post(f8539u);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8313h = 0;
        switch (nt.f8633a) {
            case 1507771:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 0;
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8317l = 1;
                }
                break;
            case 4063675:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 1;
                u0.c.f17386m.a(this.f8556r, 1);
                u0.c.f17374a.a(this.f8556r, 1);
                w0.e.f17815a.a(this.f8556r, 1);
                w0.e.f17819e.a(this.f8556r, 1);
                break;
            case 4129211:
            case 7209403:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 0;
                break;
            case 4194747:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 0;
                break;
            case 4194748:
            case 4325819:
            case 15204795:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 0;
                break;
            case 4260283:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 1;
                mtVar.f8314i = 0;
                break;
            case 4587963:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 1;
                break;
            case 5308859:
            case 8651195:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8317l = 1;
                mtVar.f8314i = 0;
                qt.z(this.f8552n);
                break;
            case 6095291:
            case 7143867:
                mtVar.f8306a = null;
                mtVar.f8317l = 1;
                mtVar.f8314i = 0;
                break;
        }
        if (App.c().getResources().getConfiguration().orientation != 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8311f = 1;
            mtVar2.f8314i = 1;
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8311f = 0;
            mtVar3.f8314i = 0;
        }
        mt mtVar4 = this.f7886a;
        mtVar4.f8310e = 1;
        mtVar4.f8312g = 0;
        mtVar4.f8307b = 0;
        mtVar4.f8308c = 0;
        mtVar4.f8309d = 0;
        mtVar4.f8320o = 1;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f8554p, 1);
        yVar.a(this.f8556r, 1);
        w0.e.f17815a.a(this.f8556r, 1);
        w0.e.f17819e.a(this.f8556r, 1);
        u0.c.f17374a.a(this.f8556r, 1);
        if (nt.f8633a != 4587963) {
            this.f7886a.f8322q = 0;
        } else {
            this.f7886a.f8322q = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2;
        int i10;
        int i11;
        int i12;
        int[][] iArr;
        int i13;
        int[][] iArr2;
        int i14;
        int i15;
        byte b3 = bArr[i2 + 1];
        if (b3 == -90) {
            qt.y0(145, bArr[i2 + 2]);
            qt.y0(146, bArr[i2 + 3]);
            qt.y0(147, bArr[i2 + 4]);
            qt.y0(148, bArr[i2 + 5]);
            qt.y0(149, bArr[i2 + 6]);
            qt.y0(150, bArr[i2 + 7]);
            int i16 = i2 + 8;
            qt.y0(151, (bArr[i16] >> 4) & 1);
            qt.y0(152, (bArr[i16] >> 3) & 1);
            qt.y0(153, (bArr[i16] >> 0) & 7);
            qt.y0(154, bArr[i2 + 9]);
            return;
        }
        if (b3 == -87) {
            int i17 = i2 + 2;
            qt.y0(155, (bArr[i17] >> 7) & 1);
            qt.y0(156, (bArr[i17] >> 4) & 7);
            if (this.f8549k != ((bArr[i17] >> 4) & 7)) {
                int i18 = (bArr[i17] >> 4) & 7;
                this.f8549k = i18;
                if (i18 == 3) {
                    int i19 = u0.b.D;
                    if (i19 == 13 || i19 == 11) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                    }
                } else if (i18 == 5 && !o1.u.S(a.b.Q)) {
                    o1.u.f(a.b.R);
                }
            }
            int i20 = this.f8549k;
            if (i20 == 1 || i20 == 4) {
                qt.y0(157, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            } else {
                if (i20 == 2) {
                    qt.y0(158, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(159, bArr[i2 + 8] & 255);
                    qt.y0(160, bArr[i2 + 9] & 255);
                    return;
                }
                return;
            }
        }
        if (b3 == -24) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 8];
            this.f8548j = null;
            switch (b5) {
                case 17:
                    this.f8548j = "请在预定停车位旁边横向暂时停车，选择停车方法";
                    break;
                case 18:
                    this.f8548j = "请使用方向键和旋转键调节蓝色线框到预定停车位，请确定红色线没有与障碍物重叠后按决定键";
                    break;
                case 19:
                    this.f8548j = "请按开始键启动引擎";
                    break;
                case 20:
                    this.f8548j = "开始进库引导，请直接确认车辆周围的安全";
                    break;
                case 21:
                    this.f8548j = "请选择方向盘直到线框颜色变绿为止";
                    break;
                case 22:
                    this.f8548j = "进入线框后请挂倒车档";
                    break;
                case 23:
                    this.f8548j = "请旋转方向盘直至橙色线与蓝色线重合为止";
                    break;
                case 24:
                    this.f8548j = "倒车退入蓝色线框";
                    break;
                case 25:
                    this.f8548j = "请选择方向盘到直行方向为止";
                    break;
                case 26:
                    this.f8548j = "倒车退入预定停车位";
                    break;
                case 27:
                    this.f8548j = "结束引导";
                    break;
                case 28:
                    this.f8548j = "开始纵向停车引导，请直接确认车辆周围的安全";
                    break;
                case 29:
                    this.f8548j = "请旋转方向盘直至橙色线与绿色线重合为止";
                    break;
                case 30:
                    this.f8548j = "倒车退入绿色线框";
                    break;
                case 31:
                    this.f8548j = "倒车退入绿色线框后，请反向旋转方向盘";
                    break;
                default:
                    switch (b5) {
                        case 33:
                            this.f8548j = "请直接确认车辆周围的安全";
                            break;
                        case 34:
                            this.f8548j = "请右转方向盘，直到线框延时变蓝为止";
                            break;
                        case 35:
                            this.f8548j = "请左转方向盘，直到线框延时变蓝为止";
                            break;
                        case 36:
                            this.f8548j = "请保持方向盘方向，前进进入蓝色线框";
                            break;
                        case 37:
                            this.f8548j = "请使用方向键和旋转键，调节蓝色线框到预定停车位";
                            break;
                        case 38:
                            this.f8548j = "请确认红色线没有与障碍物重叠后，按下开始键";
                            break;
                        case 39:
                            this.f8548j = "请向右转方向盘，直至橙色线与蓝色线重合为止";
                            break;
                        case 40:
                            this.f8548j = "请向左转方向盘，直至橙色线与蓝色线重合为止";
                            break;
                        case 41:
                            this.f8548j = "请确认线框变蓝后，保存方向盘前进进入蓝色线框";
                            break;
                        case 42:
                            this.f8548j = "请保持方向盘方向，倒车退入蓝色线框";
                            break;
                        case 43:
                            this.f8548j = "请右转方向盘回到直行方向";
                            break;
                        case 44:
                            this.f8548j = "请左转方向盘回到直行方向";
                            break;
                        case 45:
                            this.f8548j = "请向右转方向盘直到框线颜色变绿为止";
                            break;
                        case 46:
                            this.f8548j = "请向左转方向盘直到框线颜色变绿为止";
                            break;
                        case 47:
                            this.f8548j = "请保持方向盘方向，进入绿色线框";
                            break;
                        case 48:
                            this.f8548j = "请向右转方向盘，直至橙色线与绿色线重合为止";
                            break;
                        case 49:
                            this.f8548j = "请向左转方向盘，直至橙色线与绿色线重合为止";
                            break;
                        case 50:
                            this.f8548j = "请确认线框变绿后，包车方向盘前进进入绿色线框";
                            break;
                        case 51:
                            this.f8548j = "请保持方向盘方向，倒车退入绿色线框";
                            break;
                        case 52:
                            this.f8548j = "请保持方向盘方向，前进进入黄色线框";
                            break;
                        case 53:
                            this.f8548j = "不能引导";
                            d3("因车辆向前移动了");
                            break;
                        case 54:
                            this.f8548j = "不能引导";
                            d3("因车辆向后移动了");
                            break;
                        case 55:
                            this.f8548j = "不能引导";
                            d3("红色线框状态下车辆已经移动");
                            break;
                        case 56:
                            this.f8548j = "不能引导";
                            d3("方向盘动作过大");
                            break;
                        case 57:
                            this.f8548j = "不能引导";
                            d3("车辆移动超过线框范围");
                            break;
                        case 58:
                            this.f8548j = "不能引导";
                            d3("线框重合前车辆已经移动");
                            break;
                        case 59:
                            this.f8548j = "不能引导";
                            d3("距离目标线框过远");
                            break;
                        case 60:
                            this.f8548j = "不能引导";
                            d3("车辆速度过快");
                            break;
                        case 61:
                            this.f8548j = "不能引导";
                            d3("车辆已到线框前但向后移动了");
                            break;
                        case 62:
                            this.f8548j = "不能引导";
                            break;
                        case 63:
                            this.f8548j = "请微调方向盘使蓝色线与预定停车位相合，并随之倒车进入橙色线框";
                            break;
                        case 64:
                            this.f8548j = "请向右转方向盘直至预定停车位相合为止";
                            break;
                        case 65:
                            this.f8548j = "请向左转方向盘直至预定停车位相合为止";
                            break;
                        case 66:
                            this.f8548j = "请保持方向盘方向倒车";
                            break;
                        case 67:
                            this.f8548j = "请将车辆摆直后停车";
                            break;
                        case 68:
                            this.f8548j = "请选择绿色预备线框或使用方向键旋转键调节蓝色线框到预定停车位置";
                            break;
                        default:
                            switch (b5) {
                                case 80:
                                    this.f8548j = "进入线框后请挂前进挡";
                                    break;
                                case 81:
                                    this.f8548j = "请挂倒车档";
                                    break;
                                case 82:
                                    this.f8548j = "请挂前进挡";
                                    break;
                                case 83:
                                    this.f8548j = "反向旋转方向盘";
                                    break;
                                case 84:
                                    this.f8548j = "请旋转方向盘，直到线框变绿为止，保持方向盘方向前进进入绿色线框";
                                    break;
                                default:
                                    switch (b5) {
                                        case 96:
                                            this.f8548j = "咚        咚         咚";
                                            break;
                                        case 97:
                                            this.f8548j = "咚  咚   咚";
                                            break;
                                        case 98:
                                            this.f8548j = "咚咚咚";
                                            break;
                                        case 99:
                                            this.f8548j = "叮咚";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
            String str = this.f8548j;
            if (str != null && this.f8546h != str) {
                i3(str);
            }
            qt.y0(141, b4 & 255);
            qt.y0(142, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(143, b6 & 255);
            qt.y0(144, b8 & 255);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 6];
            byte b13 = bArr[i2 + 7];
            int i21 = i2 + 8;
            byte b14 = bArr[i21];
            int i22 = i2 + 9;
            byte b15 = bArr[i22];
            qt.y0(37, (b9 >> 7) & 1);
            qt.y0(10, (b9 >> 6) & 1);
            qt.y0(13, (b9 >> 3) & 1);
            qt.y0(30, (b9 >> 0) & 7);
            qt.y0(72, (b10 >> 7) & 1);
            qt.y0(11, (b10 >> 6) & 1);
            qt.y0(12, (b10 >> 3) & 3);
            qt.y0(14, (b10 >> 2) & 1);
            qt.y0(67, (b10 >> 1) & 1);
            qt.y0(79, (b11 >> 7) & 1);
            qt.y0(33, (b11 >> 6) & 1);
            qt.y0(16, (b11 >> 5) & 1);
            qt.y0(65, (b11 >> 4) & 1);
            qt.y0(29, 7 & (b11 >> 0));
            if (bArr[i2 + 5] == 1) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
            }
            int i23 = (b12 >> 0) & 15;
            if (i23 != 3) {
                if (i23 == 12) {
                    i4 = 0;
                    i6 = 1;
                } else if (i23 == 5) {
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                } else if (i23 != 6) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                i5 = i6;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(19, i4);
            qt.y0(20, i6);
            qt.y0(18, i5);
            qt.y0(77, i23);
            int i24 = (b12 >> 4) & 15;
            if (i24 != 3) {
                if (i24 == 12) {
                    i7 = 0;
                    i9 = 1;
                } else if (i24 == 5) {
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                } else if (i24 != 6) {
                    i7 = 0;
                    i9 = 0;
                } else {
                    i9 = 0;
                    i8 = 0;
                    i7 = 1;
                }
                i8 = i9;
            } else {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            }
            qt.y0(23, i7);
            qt.y0(24, i9);
            qt.y0(22, i8);
            qt.y0(87, i24);
            qt.y0(21, b13 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b14 = bArr[i22];
                b15 = bArr[i21];
            }
            byte b16 = b15;
            int i25 = b14 & 255;
            if (i25 == 254) {
                qt.y0(27, -2);
                b2 = 255;
            } else {
                if (i25 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i25);
                }
                b2 = 255;
            }
            int i26 = b16 & b2;
            if (i26 == 254) {
                qt.y0(28, -2);
            } else if (i26 == b2) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i26);
            }
            byte b17 = bArr[i2 + 10];
            if (b17 == 1) {
                i10 = 0;
                i11 = 0;
                i12 = 1;
            } else if (b17 == 2) {
                i11 = 0;
                i12 = 0;
                i10 = 1;
            } else if (b17 == 3) {
                i12 = 0;
                i10 = 1;
                i11 = 1;
            } else if (b17 != 4) {
                i10 = 0;
                i11 = 0;
                i12 = 0;
            } else {
                i10 = 0;
                i12 = 0;
                i11 = 1;
            }
            qt.y0(47, i10);
            qt.y0(46, i11);
            qt.y0(43, i12);
            qt.y0(44, bArr[i2 + 11] & 255);
            int i27 = i2 + 12;
            if ((bArr[i27] & 255) == 254) {
                qt.y0(40, -2);
                return;
            } else if ((bArr[i27] & 255) == 255) {
                qt.y0(40, -3);
                return;
            } else {
                qt.y0(40, bArr[i27] & 255);
                return;
            }
        }
        if (b3 == 53) {
            int i28 = i2 + 7;
            qt.y0(113, (bArr[i28] >> 4) & 15);
            qt.y0(114, (bArr[i28] >> 0) & 15);
            int i29 = i2 + 8;
            qt.y0(115, (bArr[i29] >> 7) & 1);
            qt.y0(116, (bArr[i29] >> 6) & 1);
            qt.y0(117, (bArr[i29] >> 5) & 1);
            return;
        }
        if (b3 == 65) {
            u0.d.R2(c3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(c3(bArr[i2 + 5] & 255));
            int i30 = i2 + 6;
            int i31 = bArr[i30] & 255;
            int i32 = i2 + 7;
            int i33 = bArr[i32] & 255;
            int i34 = i2 + 8;
            int i35 = bArr[i34] & 255;
            int i36 = i2 + 9;
            int i37 = bArr[i36] & 255;
            if (c3(i31) == 15 && c3(i33) == 15 && c3(i35) == 15 && c3(i37) == 15) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i31 || l0.c0.f13014h != i33 || l0.c0.f13015i != i35 || l0.c0.f13016j != i37) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i31;
            l0.c0.f13014h = i33;
            l0.c0.f13015i = i35;
            l0.c0.f13016j = i37;
            u0.d.D2(c3(bArr[i30] & 255));
            u0.d.E2(c3(bArr[i32] & 255));
            u0.d.F2(c3(bArr[i34] & 255));
            u0.d.G2(c3(bArr[i36] & 255));
            return;
        }
        if (b3 == 72) {
            qt.y0(137, bArr[i2 + 4] & 255);
            qt.y0(138, bArr[i2 + 5] & 255);
            qt.y0(139, bArr[i2 + 6] & 255);
            qt.y0(140, bArr[i2 + 7] & 255);
            return;
        }
        if (b3 == 17) {
            byte b18 = bArr[i2 + 4];
            byte b19 = bArr[i2 + 5];
            this.f8541c = b18 & 255;
            int i38 = 0;
            while (true) {
                iArr = this.f8542d;
                if (i38 >= iArr.length) {
                    break;
                }
                int i39 = this.f8541c;
                if (i39 == iArr[i38][0]) {
                    if (i39 == 0) {
                        break;
                    }
                    this.f8540b = i38;
                    break;
                }
                i38++;
            }
            int i40 = b19 & 255;
            if (i40 == 1) {
                if (i38 < iArr.length) {
                    l0.b0.l0(iArr[i38][1], 0);
                }
            } else if (i40 == 0) {
                int i41 = this.f8540b;
                if (i41 < iArr.length) {
                    i13 = 255;
                    if (i41 != 255) {
                        l0.b0.l0(iArr[i41][1], 1);
                    }
                } else {
                    i13 = 255;
                }
                this.f8540b = i13;
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b3 == 18) {
            int i42 = bArr[i2 + 4] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i42 >> 6) & 1);
                qt.y0(2, (i42 >> 7) & 1);
            } else {
                qt.y0(1, (i42 >> 7) & 1);
                qt.y0(2, (i42 >> 6) & 1);
            }
            qt.y0(3, (i42 >> 5) & 1);
            qt.y0(4, (i42 >> 4) & 1);
            qt.y0(5, (i42 >> 3) & 1);
            return;
        }
        if (b3 == 22) {
            qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(101, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(102, (bArr[i2 + 13] & 255) | ((bArr[i2 + 12] << 8) & 65280));
            return;
        }
        if (b3 == 23) {
            qt.y0(103, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(104, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(105, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(106, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(107, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(108, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(109, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(110, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(111, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(112, (bArr[i2 + 21] & 255) | ((bArr[i2 + 20] << 8) & 65280));
            return;
        }
        if (b3 == 33) {
            byte b20 = bArr[i2 + 2];
            byte b21 = bArr[i2 + 3];
            this.f8544f = b20 & 255;
            int i43 = 0;
            while (true) {
                iArr2 = this.f8545g;
                if (i43 >= iArr2.length) {
                    break;
                }
                int i44 = this.f8544f;
                if (i44 == iArr2[i43][0]) {
                    if (i44 == 0) {
                        break;
                    }
                    this.f8543e = i43;
                    break;
                }
                i43++;
            }
            int i45 = this.f8544f;
            if (i45 == 18) {
                k3();
                return;
            }
            if (i45 == 55) {
                m3();
                return;
            }
            if (i45 == 57) {
                l3();
                return;
            }
            int i46 = b21 & 255;
            if (i46 == 1) {
                if (i43 < iArr2.length) {
                    l0.b0.l0(iArr2[i43][1], 0);
                    return;
                }
                return;
            } else {
                if (i46 == 0) {
                    int i47 = this.f8543e;
                    if (i47 < iArr2.length) {
                        i14 = 255;
                        if (i47 != 255) {
                            l0.b0.l0(iArr2[i47][1], 1);
                        }
                    } else {
                        i14 = 255;
                    }
                    this.f8543e = i14;
                    return;
                }
                return;
            }
        }
        if (b3 == 34) {
            byte b22 = bArr[i2 + 2];
            byte b23 = bArr[i2 + 3];
            if (b22 != 1) {
                if (b22 == 2 && b23 != (i15 = this.f8551m)) {
                    if (b23 > i15) {
                        for (int i48 = 0; i48 < b23 - this.f8551m; i48++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b23 < i15) {
                        for (int i49 = 0; i49 < this.f8551m - b23; i49++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f8551m = b23;
                    return;
                }
                return;
            }
            int i50 = this.f8550l;
            if (b23 != i50) {
                if (b23 > i50) {
                    for (int i51 = 0; i51 < b23 - this.f8550l; i51++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b23 < i50) {
                    for (int i52 = 0; i52 < this.f8550l - b23; i52++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f8550l = b23;
                return;
            }
            return;
        }
        if (b3 != 97) {
            if (b3 != 98) {
                return;
            }
            int i53 = i2 + 2;
            qt.y0(178, (bArr[i53] >> 6) & 3);
            qt.y0(179, (bArr[i53] >> 5) & 1);
            qt.y0(180, (bArr[i53] >> 4) & 1);
            qt.y0(181, (bArr[i2 + 3] >> 4) & 1);
            int i54 = i2 + 4;
            qt.y0(182, (bArr[i54] >> 4) & 15);
            qt.y0(183, 15 & (bArr[i54] >> 0));
            int i55 = i2 + 5;
            qt.y0(184, (bArr[i55] >> 7) & 1);
            qt.y0(185, (bArr[i55] >> 6) & 1);
            qt.y0(186, (bArr[i55] >> 5) & 1);
            qt.y0(187, (bArr[i55] >> 4) & 1);
            qt.y0(188, (bArr[i55] >> 3) & 1);
            qt.y0(189, (bArr[i55] >> 2) & 1);
            qt.y0(190, (bArr[i55] >> 1) & 1);
            qt.y0(191, (bArr[i55] >> 0) & 1);
            int i56 = i2 + 6;
            qt.y0(192, (bArr[i56] >> 7) & 1);
            qt.y0(193, (bArr[i56] >> 6) & 1);
            qt.y0(194, (bArr[i56] >> 5) & 1);
            int i57 = i2 + 9;
            qt.y0(195, (bArr[i57] >> 7) & 1);
            qt.y0(196, (bArr[i57] >> 6) & 1);
            return;
        }
        int i58 = i2 + 2;
        qt.y0(118, (bArr[i58] >> 7) & 1);
        qt.y0(119, (bArr[i58] >> 4) & 7);
        qt.y0(120, (bArr[i58] >> 1) & 7);
        qt.y0(177, (bArr[i58] >> 0) & 1);
        int i59 = i2 + 3;
        qt.y0(121, (bArr[i59] >> 7) & 1);
        qt.y0(122, (bArr[i59] >> 4) & 7);
        qt.y0(123, (bArr[i59] >> 1) & 7);
        qt.y0(123, (bArr[i59] >> 1) & 7);
        qt.y0(124, (bArr[i59] >> 0) & 1);
        int i60 = i2 + 4;
        qt.y0(125, (bArr[i60] >> 7) & 1);
        qt.y0(127, (bArr[i60] >> 6) & 1);
        qt.y0(128, (bArr[i60] >> 5) & 1);
        qt.y0(129, (bArr[i60] >> 4) & 1);
        qt.y0(128, (bArr[i60] >> 5) & 1);
        qt.y0(129, (bArr[i60] >> 3) & 3);
        qt.y0(130, (bArr[i60] >> 2) & 1);
        qt.y0(131, (bArr[i60] >> 1) & 1);
        qt.y0(132, (bArr[i60] >> 0) & 1);
        int i61 = i2 + 5;
        qt.y0(133, (bArr[i61] >> 6) & 3);
        qt.y0(134, (bArr[i61] >> 4) & 3);
        qt.y0(135, (bArr[i61] >> 2) & 3);
        qt.y0(136, (bArr[i61] >> 0) & 3);
        int i62 = i2 + 6;
        qt.y0(161, (bArr[i62] >> 7) & 1);
        qt.y0(162, (bArr[i62] >> 5) & 3);
        qt.y0(163, (bArr[i62] >> 3) & 3);
        qt.y0(164, (bArr[i62] >> 2) & 1);
        qt.y0(165, (bArr[i62] >> 1) & 1);
        qt.y0(166, (bArr[i62] >> 0) & 1);
        int i63 = i2 + 7;
        qt.y0(167, (bArr[i63] >> 7) & 1);
        qt.y0(168, (bArr[i63] >> 6) & 1);
        qt.y0(169, (bArr[i63] >> 5) & 1);
        qt.y0(170, (bArr[i63] >> 4) & 1);
        qt.y0(171, (bArr[i63] >> 2) & 3);
        qt.y0(172, (bArr[i63] >> 0) & 3);
        int i64 = i2 + 8;
        qt.y0(173, (bArr[i64] >> 4) & 1);
        qt.y0(174, (bArr[i64] >> 3) & 1);
        qt.y0(175, (bArr[i64] >> 2) & 1);
        qt.y0(176, (bArr[i64] >> 0) & 3);
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f8556r);
        u0.c.f17374a.d(this.f8556r);
        w0.e.f17815a.d(this.f8556r);
        w0.e.f17819e.d(this.f8556r);
        yVar.d(this.f8554p);
        qt.q0(this.f8552n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 197) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 1);
            a.i.a0(100L);
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 1, 0);
        }
        switch (i2) {
            case 0:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, 61, iArr[0], iArr[1]);
                }
                break;
            case 1:
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 3:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 2, 59, iArr[0], iArr[1]);
                }
                break;
            case 4:
                z.k.s(227, 2, 42, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 2, 173, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 4, 110, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 7:
                z.k.s(227, 2, 154, iArr[0], iArr[1]);
                break;
        }
    }

    public final void i3(String str) {
        this.f8546h = str;
        o1.l.a().removeCallbacks(this.f8547i);
        o1.l.a().postDelayed(this.f8547i, 500L);
    }

    public String j3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void k3() {
        try {
            if (j3().equals("com.syu.carinfo.wc.infeinidi.WcInfeinidiCarSet")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.infeinidi.WcInfeinidiCarSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void l3() {
        try {
            if (j3().equals("com.syu.carinfo.wc.infeinidi.WcInfinitCarInfo")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.infeinidi.WcInfinitCarInfo");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void m3() {
        try {
            if (j3().equals("com.syu.carinfo.wc.infeinidi.WcInfinitCarTire")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.infeinidi.WcInfinitCarTire");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void n3() {
        Intent intent = new Intent("com.syu.cancle_tts");
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }
}
