package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class u8 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10935c;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.o f10951s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f10934b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10936d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10937e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 2}, new int[]{7, 2}, new int[]{5, 12}, new int[]{8, 26}, new int[]{9, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f10938f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 0}, new int[]{16, 1}, new int[]{17, 5}, new int[]{18, 54}, new int[]{19, 55}, new int[]{20, 54}, new int[]{21, 13}, new int[]{22, 18}, new int[]{23, 6}, new int[]{24, 24}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10939g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{5, 18}, new int[]{8, 26}, new int[]{9, 18}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f10940h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 13}, new int[]{8, 18}, new int[]{9, 26}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f10941i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f10942j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f10943k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{16, 13}, new int[]{17, 50}, new int[]{18, 12}, new int[]{19, 18}, new int[]{32, 5}, new int[]{33, 1}, new int[]{34, 54}, new int[]{35, 54}, new int[]{36, 54}, new int[]{37, 53}, new int[]{38, 21}, new int[]{39, 6}, new int[]{40, 9}, new int[]{41, 55}, new int[]{42, 29}, new int[]{43, 32}, new int[]{44, 33}, new int[]{45, 38}, new int[]{46, 31}, new int[]{47, 30}, new int[]{128, 25}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10944l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10945m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f10946n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10947o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10948p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10949q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10950r = new g();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f10952t = new i();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f10953u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f10954v = new j();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int[] f10955a;

        public a(int[] iArr) {
            this.f10955a = iArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -32, 2, this.f10955a[0], 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 9:
                case 10:
                case 11:
                case 13:
                case 14:
                case 15:
                case 16:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                    break;
                case 12:
                case 17:
                case 18:
                case 19:
                default:
                    l0.c0.C();
                    break;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 0) {
                z.k.s(227, -18, 2, 144, 2);
                return;
            }
            if (i2 == 2) {
                z.k.s(227, -30, 1, 1);
                return;
            }
            if (i2 == 9) {
                z.k.s(227, -18, 2, 82, 0);
                return;
            }
            if (i2 != 11) {
                switch (i2) {
                    case 14:
                    case 22:
                        z.k.s(227, -18, 2, 82, 2);
                        break;
                    case 15:
                    case 23:
                        z.k.s(227, -18, 2, 82, 3);
                        break;
                    case 16:
                    case 18:
                    case 19:
                    case 24:
                        z.k.s(227, -18, 2, 82, 4);
                        break;
                    case 17:
                        z.k.s(227, -30, 1, 2);
                        break;
                    case 20:
                        z.k.s(227, -18, 2, 82, 6);
                        break;
                    case 25:
                        z.k.s(227, -18, 2, 82, 7);
                        break;
                    case 26:
                        z.k.s(227, -18, 2, 82, 8);
                        break;
                    case 27:
                        z.k.s(227, -18, 2, 82, 9);
                        break;
                    case 28:
                        z.k.s(227, -18, 2, 82, 10);
                        break;
                }
                return;
            }
            z.k.s(227, -18, 2, 82, 1);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(u8.this.f10948p);
            u8.this.f10946n = (byte) 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u8 u8Var = u8.this;
            byte b2 = (byte) (u8Var.f10946n - 1);
            u8Var.f10946n = b2;
            if (b2 <= 0) {
                l0.b0.p0(u8Var.f10948p);
                u8.this.f10946n = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (nt.f8637c == 17) {
                qt.y0(135, u8.this.f10934b.b(1, 1));
                z.k.s(227, -126, 1, u8.this.f10934b.b(1, 1));
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0011. Please report as an issue. */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8 = u0.b.D;
            if (i8 != 1) {
                if (i8 == 2) {
                    i6 = 5;
                } else {
                    if (i8 != 3) {
                        switch (i8) {
                            case 8:
                            case 9:
                            case 10:
                                i6 = 8;
                                break;
                            default:
                                i2 = 0;
                                i4 = 0;
                                i3 = 0;
                                i5 = 0;
                                i6 = 0;
                                break;
                        }
                        z.k.s(227, 192, 8, i6, i7, i2, i3, i4, i5, 0, 0);
                    }
                    i6 = 11;
                }
                i2 = 0;
                i4 = 0;
                i3 = 0;
                i5 = 0;
                i7 = 0;
                z.k.s(227, 192, 8, i6, i7, i2, i3, i4, i5, 0, 0);
            }
            int i9 = w0.d.f17796h;
            if (i9 - 65536 == 0) {
                i2 = 1;
            } else if (1 == i9 - 65536) {
                i2 = 2;
            } else if (2 == i9 - 65536) {
                i2 = 3;
            } else if (i9 + 0 == 0) {
                i2 = 17;
            } else {
                i2 = 1 == i9 - 0 ? 18 : 0;
            }
            int i10 = w0.d.f17797i;
            i3 = i10 & 255;
            i4 = (i10 >> 8) & 255;
            i5 = w0.d.f17798j & 255;
            i6 = 1;
            i7 = i6;
            z.k.s(227, 192, 8, i6, i7, i2, i3, i4, i5, 0, 0);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            byte b7 = (byte) time.second;
            int i3 = nt.f8633a;
            if (i3 == 393481) {
                z.k.s(227, -31, 2, (byte) (((i2 & 1) << 7) | (b5 & 31)), b6);
                return;
            }
            if (i3 == 327945) {
                z.k.s(227, -125, 7, b2, b3, b4, i2, b5, b6, 0);
                return;
            }
            if (i3 == 590089 || i3 == 655625 || i3 == 721161 || i3 == 1376521 || i3 == 852233 || i3 == 917769 || i3 == 983305 || i3 == 1048841 || i3 == 1179913 || i3 == 1245449 || i3 == 1442057 || i3 == 1310985 || i3 == 1638665 || i3 == 1835273 || i3 == 1900809 || i3 == 1704201) {
                z.k.s(227, -90, 6, b2, b3, b4, ((byte) ((i2 << 7) & 128)) | (b5 & 127), b6, b7);
            } else {
                z.k.s(227, -125, 7, b2, b3, 0, b4, b5, b6, 0);
            }
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
            u0.b.E0 = 230;
            e.e.f1624b.c();
            return true;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.E0;
            if (i2 != 230) {
                if (i2 == 242 && nt.f8633a == 327945) {
                    u8.this.l3("com.syu.carinfo.ztt600.ZTTireAct_Luz");
                    return;
                }
                return;
            }
            try {
                int i3 = nt.f8633a;
                if (i3 == 393481) {
                    u8.this.l3("com.syu.carinfo.ztt600.PM25Act_Bnr");
                } else if (i3 == 327945) {
                    u8.this.l3("com.syu.carinfo.ztt600.PM25Act_Luz");
                }
            } catch (Exception unused) {
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:11:0x0015  */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            boolean z2 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                case 1:
                case 2:
                case 6:
                    if (z2 == u8.this.f10953u) {
                        i2 = 0;
                    } else {
                        i2 = 4;
                    }
                    break;
                case 3:
                    i2 = 2;
                    break;
                case 4:
                    i2 = 1;
                    break;
                case 5:
                    i2 = 3;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (u8.this.f10953u != z2) {
                u8.this.f10953u = z2;
                i2 = 0;
            }
            z.k.s(227, -59, 1, i2);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] == 0) {
                if (b3()) {
                    a3(2);
                }
                return;
            } else {
                if (b3()) {
                    a3(3);
                    return;
                }
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                if (b3()) {
                    a3(3);
                    return;
                }
                return;
            } else {
                if (b3()) {
                    a3(2);
                    return;
                }
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -128, 2, 80, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -128, 2, 80, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -128, 2, 81, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -128, 2, 81, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -128, 2, 82, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -128, 2, 82, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -128, 2, 83, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -128, 2, 83, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -128, 2, 84, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -128, 2, 84, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -128, 2, 85, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -128, 2, 85, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1 && b3()) {
                        a3(1);
                        break;
                    }
                } else if (nt.f8645g[10] == 0 && b3()) {
                    a3(1);
                    break;
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1 && b3()) {
                        a3(23);
                        break;
                    }
                } else if (nt.f8645g[11] == 0 && b3()) {
                    a3(23);
                    break;
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1 && b3()) {
                        a3(24);
                        break;
                    }
                } else if (nt.f8645g[13] == 0 && b3()) {
                    a3(24);
                    break;
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (b3() && nt.f8645g[65] == 1) {
                        a3(19);
                        break;
                    }
                } else if (b3() && nt.f8645g[65] == 0) {
                    a3(19);
                    break;
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (b3() && nt.f8645g[16] == 1) {
                        a3(18);
                        break;
                    }
                } else if (b3() && nt.f8645g[16] == 0) {
                    a3(18);
                    break;
                }
                break;
            case 38:
                if (iArr[1] != 1) {
                    if (iArr[1] == 0 && nt.f8645g[12] == 1 && b3()) {
                        a3(25);
                        break;
                    }
                } else if (nt.f8645g[12] == 0 && b3()) {
                    a3(25);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    if (b3()) {
                        a3(9);
                    }
                } else if (b3()) {
                    a3(10);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            w0.e.f17815a.a(this.f10944l, 1);
            u0.c.f17393t.a(this.f10944l, 1);
            u0.c.f17392s.a(this.f10944l, 1);
            u0.c.f17374a.a(this.f10944l, 1);
            l0.b0.b(this.f10944l);
            u0.c.f17386m.a(this.f10947o, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        qt.z(this.f10945m);
        mt mtVar2 = this.f7886a;
        mtVar2.f8313h = 0;
        switch (nt.f8637c) {
            case 0:
                mtVar2.f8314i = 1;
                break;
            case 1:
            case 2:
                mtVar2.f8306a = null;
                break;
            case 3:
                mtVar2.f8314i = 1;
                mtVar2.f8313h = 1;
                h0.d.f2462a.a(this.f10954v, 1);
                break;
            case 5:
                mtVar2.f8312g = 1;
                e.e.f1624b.a(this.f10952t, 1);
                h3();
                qt.z(this.f10950r);
            case 6:
                mt mtVar3 = this.f7886a;
                mtVar3.f8314i = 1;
                mtVar3.f8312g = 1;
                e.e.f1624b.a(this.f10952t, 1);
                h3();
                qt.z(this.f10950r);
                break;
            case 7:
                z.k.s(227, -58, 2, 19, 1);
                mt mtVar4 = this.f7886a;
                mtVar4.f8314i = 1;
                mtVar4.f8313h = 1;
                h0.d.f2462a.a(this.f10954v, 1);
                u0.c.f17374a.a(this.f10949q, 1);
                break;
            case 8:
                mtVar2.f8312g = 1;
                break;
            case 9:
            case 11:
            case 13:
            case 14:
            case 21:
                mtVar2.f8312g = 1;
                qt.z(this.f10950r);
                break;
            case 10:
                mtVar2.f8306a = null;
                mtVar2.f8312g = 1;
                qt.z(this.f10950r);
                break;
            case 12:
                z.k.s(227, -58, 2, 19, 0);
                mt mtVar5 = this.f7886a;
                mtVar5.f8314i = 1;
                mtVar5.f8313h = 1;
                h0.d.f2462a.a(this.f10954v, 1);
                u0.c.f17374a.a(this.f10949q, 1);
                break;
            case 16:
            case 18:
            case 19:
            case 24:
                mtVar2.f8312g = 1;
                qt.z(this.f10950r);
                h0.d.f2462a.a(this.f10954v, 1);
                break;
            case 17:
                this.f10934b.a();
                qt.y0(135, this.f10934b.b(1, 1));
                z.k.s(227, -126, 1, this.f10934b.b(1, 1));
                break;
            case 20:
            case 22:
                mtVar2.f8312g = 1;
                mtVar2.f8314i = 1;
                qt.z(this.f10950r);
                break;
            case 25:
            case 26:
            case 28:
                mtVar2.f8312g = 1;
                mtVar2.f8314i = 1;
                qt.z(this.f10950r);
                h0.d.f2462a.a(this.f10954v, 1);
                break;
            case 27:
                mtVar2.f8306a = null;
                mtVar2.f8312g = 1;
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        int i4;
        int[][] iArr;
        int i5;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int i6;
        int[][] iArr5;
        int i7;
        int[][] iArr6;
        int i8;
        int i9;
        int i10;
        byte b3;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        byte b4 = bArr[i2];
        if (b4 == 20) {
            qt.y0(121, bArr[i2 + 2]);
        }
        if (b4 == 22) {
            int i16 = nt.f8633a;
            if (i16 == 459017 || i16 == 786697) {
                qt.y0(1031, ((bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280)) / 16);
                return;
            }
            return;
        }
        if (b4 == 48) {
            int i17 = nt.f8633a;
            if (i17 == 590089 || i17 == 655625 || i17 == 721161 || i17 == 1376521 || i17 == 917769 || i17 == 1442057 || i17 == 1310985 || i17 == 1638665 || i17 == 1835273 || i17 == 1900809 || i17 == 1704201 || i17 == 852233 || i17 == 983305 || i17 == 1507593 || i17 == 1048841 || i17 == 1573129 || i17 == 1179913 || i17 == 1245449) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 6400);
                return;
            } else {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
        }
        if (b4 == 104) {
            int i18 = nt.f8633a;
            if (i18 == 393481 || i18 == 524553) {
                qt.y0(1032, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            return;
        }
        if (b4 == 106) {
            int i19 = nt.f8633a;
            if (i19 == 393481 || i19 == 524553) {
                qt.y0(1031, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            return;
        }
        if (b4 == 127) {
            this.f10946n = (byte) 0;
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 29) {
            int i20 = nt.f8633a;
            if (i20 == 459017 || i20 == 786697) {
                u0.d.D2(bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.E2(bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.F2(bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.G2(bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                return;
            }
            return;
        }
        if (b4 == 30) {
            int i21 = nt.f8633a;
            if (i21 == 459017 || i21 == 786697) {
                u0.d.R2(bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.S2(bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.T2(bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                u0.d.U2(bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                return;
            }
            return;
        }
        if (b4 == 53) {
            if (nt.f8633a == 327945) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 9216);
                return;
            }
            return;
        }
        if (b4 == 54) {
            int i22 = nt.f8633a;
            if ((i22 == 590089 || i22 == 655625 || i22 == 721161 || i22 == 1376521 || i22 == 917769 || i22 == 1442057 || i22 == 1310985 || i22 == 1638665 || i22 == 1835273 || i22 == 1900809 || i22 == 1704201 || i22 == 852233 || i22 == 983305 || i22 == 1507593 || i22 == 1048841 || i22 == 1573129 || i22 == 1179913 || i22 == 1245449) && (i4 = (b2 = bArr[i2 + 2]) & 127) <= 127) {
                u0.d.A3((b2 & 128) == 128 ? 1000 - (i4 * 10) : (i4 * 10) + 1000);
                return;
            }
            return;
        }
        if (b4 == 56) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            byte b10 = bArr[i2 + 7];
            byte b11 = bArr[i2 + 8];
            byte b12 = bArr[i2 + 9];
            qt.y0(99, b5 & 255);
            qt.y0(100, b6 & 255);
            qt.y0(101, b7 & 255);
            qt.y0(102, b8 & 255);
            qt.y0(103, b9 & 255);
            qt.y0(104, b10 & 255);
            qt.y0(105, b11 & 255);
            qt.y0(106, b12 & 255);
            return;
        }
        if (b4 == 57) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            qt.y0(107, (b13 >> 7) & 1);
            qt.y0(108, (b13 >> 6) & 1);
            qt.y0(109, (b13 >> 5) & 1);
            qt.y0(110, (b13 >> 4) & 1);
            qt.y0(112, (b13 >> 3) & 1);
            qt.y0(111, (b13 >> 2) & 1);
            qt.y0(113, (b14 >> 4) & 1);
            qt.y0(114, (b14 >> 3) & 1);
            qt.y0(115, (b14 >> 2) & 1);
            qt.y0(116, (b14 >> 7) & 1);
            qt.y0(117, (b14 >> 6) & 1);
            qt.y0(118, (b14 >> 5) & 1);
            qt.y0(119, (b14 >> 0) & 1);
            return;
        }
        if (b4 == 80) {
            int i23 = nt.f8633a;
            if (i23 == 459017 || i23 == 786697) {
                qt.y0(1032, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            return;
        }
        if (b4 == 81) {
            int i24 = nt.f8633a;
            if (i24 == 590089 || i24 == 721161 || i24 == 1376521 || i24 == 917769 || i24 == 1442057 || i24 == 1310985 || i24 == 1638665 || i24 == 1835273 || i24 == 1900809 || i24 == 1704201 || i24 == 983305 || i24 == 1048841 || i24 == 1573129 || i24 == 852233 || i24 == 1507593 || i24 == 1179913 || i24 == 1245449) {
                byte b15 = bArr[i2 + 2];
                qt.y0(158, (b15 >> 7) & 1);
                qt.y0(160, (b15 >> 5) & 3);
                qt.y0(163, (b15 >> 3) & 3);
                qt.y0(161, (b15 >> 2) & 1);
                qt.y0(162, (b15 >> 1) & 1);
                qt.y0(159, (b15 >> 0) & 1);
                int i25 = i2 + 3;
                qt.y0(164, (bArr[i25] >> 7) & 1);
                qt.y0(165, (bArr[i25] >> 6) & 1);
                qt.y0(166, (bArr[i25] >> 5) & 1);
                qt.y0(167, (bArr[i25] >> 4) & 1);
                qt.y0(172, (bArr[i25] >> 3) & 1);
                qt.y0(168, bArr[i2 + 4] & 255);
                int i26 = i2 + 5;
                qt.y0(169, (bArr[i26] >> 7) & 1);
                qt.y0(170, (bArr[i26] >> 6) & 1);
                qt.y0(171, (bArr[i26] >> 4) & 3);
                int i27 = i2 + 6;
                qt.y0(173, (bArr[i27] >> 7) & 1);
                qt.y0(174, (bArr[i27] >> 6) & 1);
                qt.y0(175, (bArr[i27] >> 4) & 3);
                qt.y0(176, (bArr[i27] >> 3) & 1);
                qt.y0(177, (bArr[i27] >> 2) & 1);
                qt.y0(178, (bArr[i27] >> 1) & 1);
                qt.y0(179, (bArr[i27] >> 0) & 1);
                int i28 = i2 + 7;
                qt.y0(180, (bArr[i28] >> 7) & 1);
                qt.y0(181, (bArr[i28] >> 6) & 1);
                qt.y0(182, (bArr[i28] >> 5) & 1);
                qt.y0(183, (bArr[i28] >> 3) & 3);
                qt.y0(184, (bArr[i28] >> 2) & 1);
                return;
            }
            return;
        }
        switch (b4) {
            case 32:
                if (nt.a()) {
                    int i29 = i2 + 2;
                    byte b16 = bArr[i29];
                    int i30 = i2 + 3;
                    byte b17 = bArr[i30];
                    this.f10936d = b16 & 255;
                    int i31 = nt.f8633a;
                    if (i31 == 131337 || i31 == 1114377) {
                        int i32 = 0;
                        while (true) {
                            iArr = this.f10937e;
                            if (i32 < iArr.length) {
                                int i33 = this.f10936d;
                                if (i33 != iArr[i32][0]) {
                                    i32++;
                                } else if (i33 != 0) {
                                    this.f10935c = i32;
                                }
                            }
                        }
                        if ((b17 & 255) == 0) {
                            int i34 = this.f10935c;
                            if (i34 < iArr.length) {
                                i5 = 255;
                                if (i34 != 255) {
                                    l0.b0.l0(iArr[i34][1], 1);
                                }
                            } else {
                                i5 = 255;
                            }
                            this.f10935c = i5;
                        } else if (i32 < iArr.length) {
                            l0.b0.l0(iArr[i32][1], 0);
                        }
                    } else if (i31 == 327945) {
                        byte b18 = bArr[i29];
                        byte b19 = bArr[i30];
                        int i35 = 0;
                        while (true) {
                            iArr6 = this.f10940h;
                            if (i35 < iArr6.length) {
                                if (iArr6[i35][0] != b18) {
                                    i35++;
                                } else if (b18 != 0) {
                                    this.f10935c = i35;
                                }
                            }
                        }
                        if (b19 == 0) {
                            if (i35 < iArr6.length) {
                                l0.b0.l0(iArr6[this.f10935c][1], 1);
                            }
                        } else if (i35 < iArr6.length) {
                            l0.b0.l0(iArr6[i35][1], 0);
                        }
                    } else if (i31 == 393481 || i31 == 524553) {
                        byte b20 = bArr[i29];
                        byte b21 = bArr[i30];
                        int i36 = 0;
                        while (true) {
                            iArr2 = this.f10941i;
                            if (i36 < iArr2.length) {
                                if (iArr2[i36][0] != b20) {
                                    i36++;
                                } else if (b20 != 0) {
                                    this.f10935c = i36;
                                }
                            }
                        }
                        if (b21 == 0) {
                            int i37 = this.f10935c;
                            if (i37 < iArr2.length) {
                                l0.b0.l0(iArr2[i37][1], 1);
                            }
                        } else if (i36 < iArr2.length) {
                            l0.b0.l0(iArr2[i36][1], 0);
                        }
                    } else if (i31 == 459017 || i31 == 786697) {
                        byte b22 = bArr[i29];
                        byte b23 = bArr[i30];
                        int i38 = 0;
                        while (true) {
                            iArr3 = this.f10942j;
                            if (i38 < iArr3.length) {
                                if (iArr3[i38][0] != b22) {
                                    i38++;
                                } else if (b22 != 0) {
                                    this.f10935c = i38;
                                }
                            }
                        }
                        if (b23 != 1) {
                            if (b23 != 2) {
                                int i39 = this.f10935c;
                                if (i39 < iArr3.length) {
                                    l0.b0.l0(iArr3[i39][1], 1);
                                }
                            } else if (i38 < iArr3.length) {
                                l0.b0.l0(iArr3[i38][1], 2);
                            }
                        } else if (i38 < iArr3.length) {
                            l0.b0.l0(iArr3[i38][1], 0);
                        }
                    } else if (i31 == 590089 || i31 == 655625 || i31 == 721161 || i31 == 1376521 || i31 == 852233 || i31 == 917769 || i31 == 1442057 || i31 == 1310985 || i31 == 1638665 || i31 == 1835273 || i31 == 1704201 || i31 == 983305 || i31 == 1507593 || i31 == 1048841 || i31 == 1573129 || i31 == 1179913 || i31 == 1245449 || i31 == 1900809) {
                        byte b24 = bArr[i29];
                        byte b25 = bArr[i30];
                        this.f10936d = b24 & 255;
                        int i40 = 0;
                        while (true) {
                            iArr4 = this.f10943k;
                            if (i40 < iArr4.length) {
                                int i41 = this.f10936d;
                                if (i41 != iArr4[i40][0]) {
                                    i40++;
                                } else if (i41 != 0) {
                                    this.f10935c = i40;
                                }
                            }
                        }
                        if (this.f10936d == 129) {
                            if ((b25 & 255) == 1) {
                                int i42 = u0.b.f17347o;
                                if (i42 == 1) {
                                    qt.a(0);
                                } else if (i42 == 0) {
                                    qt.a(1);
                                }
                            }
                        } else if ((b25 & 255) == 0) {
                            int i43 = this.f10935c;
                            if (i43 < iArr4.length) {
                                i6 = 255;
                                if (i43 != 255) {
                                    l0.b0.l0(iArr4[i43][1], 1);
                                }
                            } else {
                                i6 = 255;
                            }
                            this.f10935c = i6;
                        } else if (i40 < iArr4.length) {
                            l0.b0.l0(iArr4[i40][1], 0);
                        }
                    } else {
                        int i44 = 0;
                        while (true) {
                            iArr5 = this.f10938f;
                            if (i44 < iArr5.length) {
                                int i45 = this.f10936d;
                                if (i45 != iArr5[i44][0]) {
                                    i44++;
                                } else if (i45 != 0) {
                                    this.f10935c = i44;
                                }
                            }
                        }
                        int i46 = b17 & 255;
                        if (i46 != 1) {
                            if (i46 == 0) {
                                int i47 = this.f10935c;
                                if (i47 < iArr5.length) {
                                    i7 = 255;
                                    if (i47 != 255) {
                                        l0.b0.l0(iArr5[i47][1], 1);
                                    }
                                } else {
                                    i7 = 255;
                                }
                                this.f10935c = i7;
                            }
                        } else if (i44 < iArr5.length) {
                            l0.b0.l0(iArr5[i44][1], 0);
                        }
                    }
                }
                break;
            case 33:
                int i48 = bArr[i2 + 2] & 255;
                int i49 = bArr[i2 + 3] & 255;
                int i50 = i2 + 4;
                int i51 = bArr[i50] & 255;
                int i52 = i2 + 5;
                int i53 = bArr[i52] & 255;
                int i54 = i2 + 6;
                int i55 = bArr[i54] & 255;
                int i56 = i2 + 7;
                int i57 = bArr[i56] & 255;
                int i58 = nt.f8633a;
                if (i58 == 459017 || i58 == 196873 || i58 == 786697) {
                    qt.y0(10, (i48 >> 7) & 1);
                    qt.y0(11, (i48 >> 6) & 1);
                    qt.y0(12, (i48 >> 5) & 1);
                    qt.y0(13, (i48 >> 3) & 1);
                    qt.y0(14, (i48 >> 2) & 1);
                    if (i49 != 1) {
                        if (i49 == 2) {
                            i8 = 0;
                            i10 = 1;
                        } else if (i49 == 3) {
                            i8 = 0;
                            i10 = 0;
                            i9 = 1;
                        } else if (i49 == 4) {
                            i10 = 0;
                            i8 = 1;
                            i9 = 1;
                        } else if (i49 != 5) {
                            i8 = 0;
                            i10 = 0;
                        } else {
                            i10 = 0;
                            i9 = 0;
                            i8 = 1;
                        }
                        i9 = i10;
                    } else {
                        i8 = 0;
                        i9 = 0;
                        i10 = 1;
                    }
                    qt.y0(18, i8);
                    qt.y0(19, i10);
                    qt.y0(20, i9);
                    qt.y0(77, i49);
                    qt.y0(21, i51 & 15);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i53 = bArr[i54] & 255;
                        i55 = 255 & bArr[i52];
                    }
                    if (i53 == 0) {
                        qt.y0(27, -2);
                    } else if (i53 == 31) {
                        qt.y0(27, -3);
                    } else if (i53 <= 0 || i53 >= 15) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i53);
                    }
                    if (i55 == 0) {
                        qt.y0(28, -2);
                    } else if (i55 == 31) {
                        qt.y0(28, -3);
                    } else if (i55 <= 0 || i55 >= 15) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, i55);
                    }
                    qt.y0(65, (i57 >> 7) & 1);
                    qt.y0(16, (i57 >> 6) & 1);
                    qt.y0(53, (i57 >> 3) & 1);
                    qt.y0(58, (i57 >> 2) & 1);
                } else {
                    int i59 = nt.f8637c;
                    if (i59 == 5) {
                        qt.y0(10, (i48 >> 7) & 1);
                        qt.y0(11, (i48 >> 6) & 1);
                        qt.y0(12, (i48 >> 5) & 1);
                        qt.y0(33, (i48 >> 4) & 1);
                        qt.y0(13, (i48 >> 3) & 1);
                        qt.y0(14, (i48 >> 2) & 1);
                        qt.y0(16, (i48 >> 1) & 1);
                        qt.y0(65, (i48 >> 0) & 1);
                        qt.y0(18, (i49 >> 7) & 1);
                        qt.y0(19, (i49 >> 6) & 1);
                        int i60 = i49 >> 5;
                        qt.y0(20, i60 & 1);
                        qt.y0(77, i60 & 7);
                        qt.y0(21, i49 & 15);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i51 = bArr[i52] & 255;
                            i53 = 255 & bArr[i50];
                        }
                        if (i51 == 0) {
                            qt.y0(27, -2);
                        } else if (i51 == 127) {
                            qt.y0(27, -3);
                        } else if (i51 <= 29 || i51 > 64) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, i51 * 5);
                        }
                        if (i53 == 0) {
                            qt.y0(28, -2);
                        } else if (i53 == 127) {
                            qt.y0(28, -3);
                        } else if (i53 <= 29 || i53 > 64) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, i53 * 5);
                        }
                        qt.y0(53, (i55 >> 7) & 1);
                        qt.y0(37, (i55 >> 6) & 1);
                        qt.y0(29, (i55 >> 2) & 3);
                        qt.y0(30, i55 & 3);
                        u0.d.A3((bArr[i56] * 10) + 1000);
                    } else if (i59 == 6 || i59 == 8) {
                        qt.y0(10, (i48 >> 7) & 1);
                        qt.y0(11, (i48 >> 6) & 1);
                        qt.y0(12, (i48 >> 5) & 1);
                        qt.y0(16, (i48 >> 4) & 1);
                        qt.y0(65, (i48 >> 3) & 1);
                        qt.y0(13, (i48 >> 2) & 1);
                        qt.y0(53, (i48 >> 1) & 1);
                        qt.y0(58, (i48 >> 0) & 1);
                        qt.y0(19, (i49 >> 7) & 1);
                        qt.y0(20, (i49 >> 6) & 1);
                        int i61 = i49 >> 5;
                        qt.y0(18, i61 & 1);
                        qt.y0(77, i61 & 7);
                        qt.y0(14, (i49 >> 4) & 1);
                        qt.y0(21, i49 & 15);
                        qt.y0(151, i51 & 15);
                        qt.y0(27, i53);
                        qt.y0(28, bArr[i2 + 8]);
                        u0.d.A3((i55 * 10) + 1000);
                        qt.y0(29, i57 & 3);
                        qt.y0(30, (i57 >> 4) & 3);
                    } else {
                        qt.y0(10, (i48 >> 7) & 1);
                        qt.y0(11, (i48 >> 6) & 1);
                        qt.y0(12, (i48 >> 5) & 1);
                        qt.y0(14, (i48 >> 2) & 1);
                        qt.y0(13, (i48 >> 3) & 1);
                        qt.y0(16, (i48 >> 0) & 1);
                        qt.y0(18, (i49 >> 7) & 1);
                        qt.y0(19, (i49 >> 6) & 1);
                        qt.y0(20, (i49 >> 5) & 1);
                        qt.y0(21, i49 & 15);
                        qt.y0(37, (i51 >> 7) & 1);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i51 = bArr[i52] & 255;
                            i53 = 255 & bArr[i50];
                        }
                        if (i51 == 0) {
                            qt.y0(27, -2);
                        } else if (i51 != 31) {
                            qt.y0(27, i51 & 127);
                        } else {
                            qt.y0(27, -3);
                        }
                        if (i53 == 0) {
                            qt.y0(28, -2);
                        } else if (i53 != 31) {
                            qt.y0(28, i53 & 127);
                        } else {
                            qt.y0(28, -3);
                        }
                        qt.y0(65, (i55 >> 7) & 1);
                        qt.y0(53, (i55 >> 3) & 1);
                        qt.y0(30, i57 & 3);
                        qt.y0(29, (i57 >> 4) & 3);
                        qt.y0(58, (bArr[i2 + 8] >> 7) & 1);
                    }
                }
                break;
            case 34:
                int i62 = nt.f8633a;
                if (i62 == 265 || i62 == 65801) {
                    u0.d.R2(l0.c0.o1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.o1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.o1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.o1(bArr[i2 + 5] & 255));
                } else if (i62 == 131337 || i62 == 1114377) {
                    u0.d.R2(l0.c0.p1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.p1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.p1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.p1(bArr[i2 + 5] & 255));
                } else if (i62 == 327945) {
                    u0.d.C2((bArr[i2 + 2] >> 1) & 15);
                    u0.d.D2(j3(bArr[i2 + 3] & 255));
                    u0.d.E2(j3(bArr[i2 + 4] & 255));
                    u0.d.F2(j3(bArr[i2 + 5] & 255));
                    u0.d.G2(j3(bArr[i2 + 6] & 255));
                    u0.d.R2(j3(bArr[i2 + 7] & 255));
                    u0.d.S2(j3(bArr[i2 + 8] & 255));
                    u0.d.T2(j3(bArr[i2 + 9] & 255));
                    u0.d.U2(j3(bArr[i2 + 10] & 255));
                } else if (i62 == 1704201) {
                    int i63 = i2 + 2;
                    qt.y0(42, (bArr[i63] >> 7) & 1);
                    qt.y0(78, (bArr[i63] >> 6) & 1);
                    qt.y0(86, (bArr[i63] >> 5) & 1);
                    qt.y0(44, (bArr[i63] >> 0) & 15);
                }
                break;
            case 35:
                int i64 = nt.f8633a;
                if (i64 == 265 || i64 == 65801) {
                    b3 = 255;
                    u0.d.D2(l0.c0.n1(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.n1(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.n1(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.n1(bArr[i2 + 5] & 255));
                } else if (i64 == 131337 || i64 == 1114377) {
                    b3 = 255;
                    u0.d.D2(l0.c0.p1(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.p1(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.p1(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.p1(bArr[i2 + 5] & 255));
                } else {
                    b3 = 255;
                }
                int i65 = bArr[i2 + 2] & b3;
                int i66 = bArr[i2 + 3] & b3;
                int i67 = bArr[i2 + 4] & b3;
                int i68 = bArr[i2 + 5] & b3;
                int i69 = nt.f8633a;
                if (i69 == 590089 || i69 == 655625 || i69 == 721161 || i69 == 1376521 || i69 == 917769 || i69 == 1442057 || i69 == 1310985 || i69 == 1638665 || i69 == 1835273 || i69 == 1900809 || i69 == 1704201 || i69 == 852233 || i69 == 983305 || i69 == 1507593 || i69 == 1048841 || i69 == 1573129 || i69 == 1179913 || i69 == 1245449) {
                    qt.y0(10, (i65 >> 7) & 1);
                    qt.y0(11, (i65 >> 6) & 1);
                    qt.y0(12, (i65 >> 5) & 1);
                    qt.y0(13, (i65 >> 3) & 1);
                    qt.y0(16, (i65 >> 1) & 1);
                    qt.y0(65, (i65 >> 0) & 1);
                    switch (i66) {
                        case 1:
                            i11 = 0;
                            i12 = 0;
                            i13 = 0;
                            i14 = 1;
                            break;
                        case 2:
                            i12 = 0;
                            i13 = 0;
                            i14 = 1;
                            i11 = 1;
                            break;
                        case 3:
                            i14 = 0;
                            i12 = 0;
                            i13 = 0;
                            i11 = 1;
                            break;
                        case 4:
                            i14 = 0;
                            i13 = 0;
                            i11 = 1;
                            i12 = 1;
                            break;
                        case 5:
                            i14 = 0;
                            i11 = 0;
                            i13 = 0;
                            i12 = 1;
                            break;
                        case 6:
                            i14 = 0;
                            i11 = 0;
                            i12 = 0;
                            i13 = 1;
                            break;
                        default:
                            i14 = 0;
                            i11 = 0;
                            i12 = 0;
                            i13 = 0;
                            break;
                    }
                    qt.y0(19, i14);
                    qt.y0(20, i11);
                    qt.y0(18, i12);
                    qt.y0(49, i13);
                    qt.y0(21, i67);
                    if (i68 == 0) {
                        qt.y0(27, -2);
                    } else if (i68 == 18) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, (i68 & 255) + 15);
                    }
                }
                break;
            case 36:
                byte b26 = bArr[i2 + 2];
                int i70 = nt.f8633a;
                if (i70 != 131337 && i70 != 1114377 && nt.a()) {
                    if ((bArr[i2 + 3] & 1) != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
                if (nt.f8633a == 327945) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b26 >> 6) & 1);
                        qt.y0(2, (b26 >> 7) & 1);
                    } else {
                        qt.y0(1, (b26 >> 7) & 1);
                        qt.y0(2, (b26 >> 6) & 1);
                    }
                    qt.y0(3, (b26 >> 5) & 1);
                    qt.y0(4, (b26 >> 4) & 1);
                    qt.y0(5, (b26 >> 3) & 1);
                    qt.y0(0, (b26 >> 2) & 1);
                    qt.y0(136, (b26 >> 1) & 1);
                    qt.y0(137, (b26 >> 0) & 1);
                } else {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b26 >> 7) & 1);
                        qt.y0(2, (b26 >> 6) & 1);
                    } else {
                        qt.y0(1, (b26 >> 6) & 1);
                        qt.y0(2, (b26 >> 7) & 1);
                    }
                    qt.y0(3, (b26 >> 4) & 1);
                    qt.y0(4, (b26 >> 5) & 1);
                    qt.y0(5, (b26 >> 3) & 1);
                    qt.y0(0, (b26 >> 2) & 1);
                    qt.y0(98, (b26 >> 0) & 1);
                }
                if (nt.f8633a == 393481) {
                    byte b27 = bArr[i2 + 3];
                    qt.y0(136, (b27 >> 3) & 1);
                    qt.y0(137, (b27 >> 4) & 1);
                }
                break;
            case 37:
                qt.y0(103, bArr[i2 + 2] & 255);
                qt.y0(104, bArr[i2 + 3] & 255);
                qt.y0(105, bArr[i2 + 4] & 255);
                qt.y0(106, bArr[i2 + 5] & 255);
                break;
            case 38:
                int i71 = i2 + 2;
                byte b28 = bArr[i71];
                int i72 = i2 + 3;
                byte b29 = bArr[i72];
                int i73 = i2 + 4;
                byte b30 = bArr[i73];
                int i74 = i2 + 5;
                byte b31 = bArr[i74];
                byte b32 = bArr[i2 + 6];
                int i75 = nt.f8633a;
                if (i75 == 1048841 || i75 == 1573129 || i75 == 1179913 || i75 == 1245449 || i75 == 1638665 || i75 == 1835273 || i75 == 1900809 || i75 == 1704201) {
                    u0.d.D2(l0.c0.x1(bArr[i71] & 255));
                    u0.d.E2(l0.c0.x1(bArr[i72] & 255));
                    u0.d.F2(l0.c0.x1(bArr[i73] & 255));
                    u0.d.G2(l0.c0.x1(bArr[i74] & 255));
                } else {
                    qt.y0(138, (b28 >> 7) & 1);
                    qt.y0(139, ((((b28 >> 3) & 1) << 8) & 65280) | b32);
                    qt.y0(140, ((((b28 >> 2) & 1) << 8) & 65280) | b31);
                    qt.y0(142, ((((b28 >> 1) & 1) << 8) & 65280) | b30);
                    qt.y0(141, ((((b28 >> 0) & 1) << 8) & 65280) | b29);
                }
                break;
            case 39:
                int i76 = nt.f8633a;
                if (i76 == 327945) {
                    qt.y0(150, bArr[i2 + 2]);
                    break;
                } else if (i76 == 1048841 || i76 == 1573129 || i76 == 1179913 || i76 == 1245449 || i76 == 1638665 || i76 == 1835273 || i76 == 1900809 || i76 == 1704201) {
                    u0.d.R2(l0.c0.x1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.x1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.x1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.x1(bArr[i2 + 5] & 255));
                    break;
                } else if (i76 != 393481 && i76 != 524553 && nt.a()) {
                    int i77 = bArr[i2 + 3] & 255;
                    if (i77 < 70) {
                        int i78 = 70 - i77;
                        i15 = (1000 - ((i78 / 2) * 10)) - ((i78 % 2) * 5);
                    } else {
                        int i79 = i77 - 70;
                        i15 = ((i79 / 2) * 10) + 1000 + ((i79 % 2) * 5);
                    }
                    u0.d.A3(i15);
                    break;
                }
                break;
            case 40:
                byte b33 = bArr[i2 + 2];
                byte b34 = bArr[i2 + 3];
                byte b35 = bArr[i2 + 4];
                byte b36 = bArr[i2 + 5];
                byte b37 = bArr[i2 + 6];
                byte b38 = bArr[i2 + 7];
                byte b39 = bArr[i2 + 8];
                byte b40 = bArr[i2 + 9];
                byte b41 = bArr[i2 + 10];
                qt.y0(146, (b34 & 255) | ((b38 << 8) & 65280));
                qt.y0(145, (b35 & 255) | ((b39 << 8) & 65280));
                qt.y0(144, (b36 & 255) | ((b40 << 8) & 65280));
                qt.y0(143, ((b41 << 8) & 65280) | (b37 & 255));
                break;
            case 41:
                switch (nt.f8633a) {
                    case 265:
                    case 65801:
                        qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 9728);
                        break;
                    case 131337:
                    case 1114377:
                        qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5837);
                        break;
                    case 327945:
                        qt.y0(147, bArr[i2 + 2] & 255);
                        qt.y0(148, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(149, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                        break;
                    case 393481:
                    case 524553:
                        qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 9157);
                        break;
                    case 459017:
                    case 786697:
                        qt.o(bArr[i2 + 2], false, 100);
                        break;
                    default:
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 23880);
                        break;
                }
                break;
            case 42:
                if (nt.f8633a == 265) {
                    qt.y0(147, bArr[i2 + 2]);
                    qt.y0(148, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                    qt.y0(149, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                }
                break;
            default:
                switch (b4) {
                    case 64:
                        byte b42 = bArr[i2 + 2];
                        byte b43 = bArr[i2 + 3];
                        byte b44 = bArr[i2 + 4];
                        byte b45 = bArr[i2 + 5];
                        byte b46 = bArr[i2 + 6];
                        qt.y0(122, b42 & 1);
                        qt.y0(123, b43 & 1);
                        qt.y0(124, (b43 >> 1) & 1);
                        qt.y0(125, (b43 >> 2) & 1);
                        qt.y0(126, (b43 >> 3) & 1);
                        qt.y0(127, b44 & 3);
                        qt.y0(128, b45 & 1);
                        qt.y0(129, (b45 >> 1) & 1);
                        qt.y0(130, (b45 >> 2) & 1);
                        qt.y0(131, (b45 >> 3) & 1);
                        qt.y0(132, (b45 >> 4) & 1);
                        qt.y0(133, (b45 >> 5) & 1);
                        qt.y0(134, (b45 >> 6) & 1);
                        qt.y0(153, (b43 >> 7) & 1);
                        qt.y0(154, (b43 >> 6) & 1);
                        qt.y0(155, (b43 >> 4) & 3);
                        qt.y0(156, b46 & 1);
                        qt.y0(157, (b46 >> 1) & 1);
                        break;
                    case 65:
                        int i80 = i2 + 2;
                        qt.y0(185, (bArr[i80] >> 2) & 1);
                        qt.y0(186, (bArr[i80] >> 1) & 1);
                        qt.y0(187, (bArr[i80] >> 0) & 1);
                        qt.y0(188, bArr[i2 + 3] & 255);
                        qt.y0(189, bArr[i2 + 4] & 255);
                        qt.y0(190, bArr[i2 + 5] & 255);
                        qt.y0(191, bArr[i2 + 6] & 255);
                        qt.y0(192, bArr[i2 + 7] & 255);
                        qt.y0(193, bArr[i2 + 8] & 255);
                        break;
                    case 66:
                        qt.y0(194, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(195, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(196, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(197, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(198, bArr[i2 + 11] & 255);
                        qt.y0(199, bArr[i2 + 12] & 255);
                        qt.y0(200, bArr[i2 + 13] & 255);
                        qt.y0(201, ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 14] & 255));
                        qt.y0(202, ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 16] & 255));
                        qt.y0(203, bArr[i2 + 18] & 255);
                        qt.y0(204, bArr[i2 + 19] & 255);
                        qt.y0(205, bArr[i2 + 20] & 255);
                        break;
                    default:
                        switch (b4) {
                            case 112:
                                byte b47 = bArr[i2 + 2];
                                if (nt.f8633a == 524553) {
                                    qt.y0(152, b47);
                                }
                                break;
                            case 113:
                                byte b48 = bArr[i2 + 2];
                                byte b49 = bArr[i2 + 3];
                                int i81 = nt.f8633a;
                                if (i81 == 393481 || i81 == 524553) {
                                    qt.y0(150, ((b49 << 8) & 65280) | (b48 & 255));
                                    nt.f8645g[150] = -1;
                                }
                                break;
                            case 114:
                                int i82 = nt.f8633a;
                                if (i82 == 393481 || i82 == 524553) {
                                    u0.d.D2(i3(bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.E2(i3(bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.F2(i3(bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.G2(i3(bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.R2(i3(bArr[i2 + 6] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.S2(i3(bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.T2(i3(bArr[i2 + 8] & DhcpPacket.DHCP_DOMAIN_NAME));
                                    u0.d.U2(i3(bArr[i2 + 9] & DhcpPacket.DHCP_DOMAIN_NAME));
                                }
                                break;
                            case 115:
                                if (nt.f8633a == 393481) {
                                    byte b50 = bArr[i2 + 2];
                                    byte b51 = bArr[i2 + 3];
                                    qt.y0(148, b50 & 255);
                                    qt.y0(149, b51 & 255);
                                }
                                break;
                            case 116:
                                int i83 = nt.f8633a;
                                if (i83 == 393481 || i83 == 524553) {
                                    qt.y0(37, bArr[i2 + 2] & 255);
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
        w0.e.f17815a.d(this.f10944l);
        w0.e.f17819e.d(this.f10944l);
        u0.c.f17393t.d(this.f10944l);
        u0.c.f17392s.d(this.f10944l);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f10944l);
        l0.b0.p0(this.f10944l);
        qt.q0(this.f10945m);
        h0.d.f2462a.d(this.f10954v);
        yVar.d(this.f10949q);
        this.f10934b.j();
        e.e.f1624b.d(this.f10952t);
        m3();
        qt.q0(this.f10950r);
        u0.c.f17386m.d(this.f10947o);
        l0.b0.p0(this.f10948p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 206) {
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
            if (iArr[0] == 1) {
                if (u0.b.f17347o == 1) {
                    z.k.s(227, -58, 2, 13, 0);
                } else {
                    z.k.s(227, -58, 2, 13, 1);
                }
            }
            int[] iArr2 = new int[5];
            iArr2[0] = 227;
            iArr2[1] = -58;
            iArr2[2] = 2;
            iArr2[3] = 13;
            iArr2[4] = iArr[0] != 1 ? 1 : 0;
            z.k.s(iArr2);
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -89, 1, iArr[0] + 1);
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    int i3 = nt.f8633a;
                    if (i3 != 327945) {
                        if (i3 == 393481 || i3 == 524553) {
                            if (T2(iArr, 1)) {
                                z.k.s(227, -32, 2, iArr[0], 1);
                                o1.l.a().postDelayed(new a(iArr), 100L);
                            }
                        } else if (i3 != 265) {
                            z.k.s(227, -88, 2, iArr[0], 1);
                        } else {
                            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                        }
                    } else if (T2(iArr, 2)) {
                        z.k.s(227, -126, 2, iArr[0], iArr[1]);
                    }
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    int i4 = nt.f8633a;
                    if (i4 != 393481 && i4 != 524553) {
                        z.k.s(227, -58, 2, iArr[0], iArr[1]);
                    } else if (T2(iArr, 2)) {
                        z.k.s(227, iArr[0], 1, iArr[1]);
                    }
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0 && iArr[0] != this.f10934b.b(1, 1)) {
                    qt.y0(135, iArr[0]);
                    this.f10934b.e(1, iArr[0]);
                    z.k.s(227, -126, 1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length == 2) {
                    z.k.s(227, -125, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -32, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, -112, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length >= 3) {
                    z.k.s(227, -31, 3, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, -118, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, -116, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 224, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 224, 2, i2, 0);
    }

    public final boolean b3() {
        switch (nt.f8637c) {
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                return true;
            default:
                return false;
        }
    }

    public final void h3() {
        this.f10951s = e.c.f1608n;
        e.c.f1608n = new h();
    }

    public final int i3(int i2) {
        return i2 - 1;
    }

    public final int j3(int i2) {
        if (i2 <= 0 || i2 >= 26) {
            return i2 == 30 ? 10 : 0;
        }
        return (int) (i2 / 2.7777777f);
    }

    public String k3() {
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

    public final void l3(String str) {
        if (k3().equals(str)) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void m3() {
        e.c.f1608n = this.f10951s;
    }
}
