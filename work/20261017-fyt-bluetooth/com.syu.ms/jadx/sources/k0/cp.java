package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class cp extends lt {
    public static int B = 0;
    public static int C = 0;
    public static int D = 0;
    public static int E = 0;
    public static int F = 0;
    public static int G = 50;
    public static int H = 128;
    public static int I = 128;
    public static int J = 128;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4166c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4167d = {new int[]{1, 1}, new int[]{2, 24}, new int[]{3, 54}, new int[]{4, 0}, new int[]{5, 63}, new int[]{6, 2}, new int[]{7, 32}, new int[]{8, 33}, new int[]{9, 34}, new int[]{10, 35}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{80, 18}, new int[]{81, 26}, new int[]{32, 12}, new int[]{33, 13}, new int[]{48, 29}, new int[]{49, 30}, new int[]{50, 31}, new int[]{51, 34}, new int[]{52, 35}, new int[]{53, 32}, new int[]{54, 33}, new int[]{55, -1}, new int[]{56, -1}, new int[]{57, -1}, new int[]{58, -1}, new int[]{59, 6}, new int[]{60, 5}, new int[]{61, -1}, new int[]{62, -1}, new int[]{63, -1}, new int[]{64, 62}, new int[]{65, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4168e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4169f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4170g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4171h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4172i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4173j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4174k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4175l = 7;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4176m = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4177n = 9;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f4178o = 14;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f4179p = 18;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f4180q = 19;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f4181r = 20;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f4182s = 21;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f4183t = 22;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public o1.g0 f4184u = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f4185v = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f4186w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f4187x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f4188y = new e();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f4189z = new f();
    public Runnable A = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cp.this.f4174k);
            cp.this.f4172i = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cp cpVar = cp.this;
            int i2 = cpVar.f4172i - 1;
            cpVar.f4172i = i2;
            if (i2 <= 0) {
                l0.b0.p0(cpVar.f4174k);
                cp.this.f4172i = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                cp cpVar2 = cp.this;
                cpVar2.i3(cpVar2.f4184u.b(18, 0), cp.this.f4184u.b(19, 50), cp.this.f4184u.b(20, 128), cp.this.f4184u.b(21, 128), cp.this.f4184u.b(22, 128));
                cp cpVar3 = cp.this;
                cpVar3.m3(cpVar3.f4184u.b(7, 0));
                cp cpVar4 = cp.this;
                cpVar4.j3(cpVar4.f4184u.b(14, 0));
                z.k.s(227, 144, 2, 48, 0);
                int i3 = nt.f8633a;
                if (i3 == 2359749) {
                    z.k.s(227, 198, 2, 14, 0);
                } else if (i3 == 8192455) {
                    z.k.s(227, 198, 2, 14, 2);
                } else {
                    if (i3 != 8257991) {
                        return;
                    }
                    z.k.s(227, 198, 2, 14, 1);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!cp.this.f4185v.equals(h0.c.f2437h)) {
                cp.this.f4185v = h0.c.f2437h;
                if (cp.this.f4185v == null) {
                    cp.this.f4185v = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = cp.this.f4185v.isEmpty() ? false : true;
                }
            }
            if (z2) {
                cp cpVar = cp.this;
                cpVar.n3(cpVar.f4185v);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = u0.b.D;
            if (i3 == 1) {
                i2 = 1;
            } else if (i3 != 4) {
                switch (i3) {
                    case 8:
                    case 9:
                    case 10:
                        i2 = 3;
                        break;
                    default:
                        i2 = 7;
                        break;
                }
            } else {
                i2 = 2;
            }
            z.k.s(227, -126, 1, u0.b.f17306a0 != 0 ? i2 : 7);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.D == 1) {
                int i3 = w0.d.f17798j;
                int i4 = i3 % 6;
                if (i4 == 0 && i3 != 0) {
                    i4 = 6;
                }
                int i5 = w0.d.f17796h;
                if (i5 != 0 && i5 != 1) {
                    switch (i5) {
                        case 65536:
                        case 65537:
                        case 65538:
                        default:
                            i2 = 0;
                            break;
                    }
                } else {
                    i2 = 1;
                }
                a.f.p().t(LogType.CANBUS, "APP_ID_RADIO  --> band  = " + i2 + "--- channel = " + i4 + "--- DataRadio.sFreq = " + w0.d.f17797i);
                int i6 = w0.d.f17797i;
                z.k.s(227, -125, 4, i2, i4, (byte) ((i6 >> 8) & 255), (byte) (i6 & 255));
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                int i3 = u0.b.r3;
                z.k.s(227, -122, 2, (i3 >> 8) & 255, i3 % 255);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -121, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, (byte) (time.month + 1), (byte) time.monthDay, time.hour, time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
        }
    }

    public static int a3(int i2) {
        switch (i2) {
            case 1:
                return 9;
            case 2:
                return 7;
            case 3:
                return 5;
            case 4:
                return 3;
            case 5:
                return 2;
            case 6:
                return 1;
            case 7:
                return 0;
            default:
                return 15;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        int i2 = nt.f8633a;
        if (i2 == 5636552) {
            mtVar.f8314i = 1;
            mtVar.f8317l = 1;
        } else if (i2 == 8192455) {
            mtVar.f8314i = 1;
        } else if (i2 == 10027463) {
            mtVar.f8314i = 1;
            mtVar.f8317l = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        this.f4184u.a();
        u0.c.f17386m.a(this.f4173j, 1);
        int i3 = nt.f8633a;
        if (i3 == 5636552 || i3 == 10027463) {
            return;
        }
        w0.e.f17815a.a(this.f4188y, 1);
        w0.e.f17819e.a(this.f4188y, 1);
        w0.e.f17816b.a(this.f4188y, 1);
        u0.c.f17392s.a(this.f4189z, 1);
        u0.c.f17374a.a(this.f4187x, 1);
        h0.d.f2464c.a(this.f4186w, 1);
        qt.z(this.A);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                int i12 = bArr[i2 + 2] & 255;
                this.f4166c = i12;
                int i13 = 0;
                while (true) {
                    iArr = this.f4167d;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f4166c;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f4165b = i13;
                        break;
                    }
                    i13++;
                }
                if (i12 != 0) {
                    if (i13 < iArr.length) {
                        l0.b0.l0(iArr[i13][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i15 = this.f4165b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f4165b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            int i16 = i2 + 2;
            byte b3 = bArr[i16];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            l0.c0.a((bArr[i16] >> 1) & 1, (bArr[i16] >> 2) & 1, 0);
            int i17 = i2 + 3;
            if (this.f4169f == ((bArr[i17] >> 7) & 1) && this.f4168e == ((bArr[i16] >> 0) & 1)) {
                return;
            }
            int i18 = (bArr[i17] >> 7) & 1;
            this.f4169f = i18;
            int i19 = (bArr[i16] >> 0) & 1;
            this.f4168e = i19;
            if (u0.b.f17357r0 == 0) {
                if (i18 == 1 || i19 == 1) {
                    if (!this.f4171h && !o1.u.a0()) {
                        this.f4171h = true;
                        SystemProperties.set("persist.lesc.video.ignore", "true");
                        a.i.a0(200L);
                        o1.u.z();
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        this.f4170g = y0.f.f18037c;
                        y0.h.t0((int) f2);
                    }
                    u0.d.C2(0);
                    return;
                }
                if (i18 == 0 && i19 == 0) {
                    if (this.f4171h && o1.u.a0()) {
                        y0.h.t0(this.f4170g);
                        a.i.a0(100L);
                        o1.u.k();
                        a.i.a0(350L);
                        SystemProperties.set("persist.lesc.video.ignore", "false");
                    }
                    this.f4171h = false;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 != 3) {
            if (b2 == 5) {
                int i20 = bArr[i2 + 2] & 255;
                if (i20 == 255 || i20 == 0) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i20 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            if (b2 == 9) {
                int i21 = i2 + 2;
                qt.y0(29, (bArr[i21] >> 4) & 15);
                qt.y0(30, (bArr[i21] >> 0) & 15);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 13) {
                qt.m(bArr[i2 + 2], 0, 128, true, 127);
                return;
            }
            if (b2 == 14) {
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = bArr[i22] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = bArr[i25] & 255;
                if (i23 == 0 && i24 == 0 && i26 == 0 && i27 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i27;
                u0.d.D2(a3(bArr[i22] & 255));
                u0.d.E2(a3(bArr[i22] & 255));
                u0.d.F2(a3(bArr[i25] & 255));
                u0.d.G2(a3(bArr[i25] & 255));
                int i28 = i2 + 4;
                u0.d.R2(a3(bArr[i28] & 255));
                u0.d.S2(a3(bArr[i28] & 255));
                int i29 = i2 + 5;
                u0.d.T2(a3(bArr[i29] & 255));
                u0.d.U2(a3(bArr[i29] & 255));
                return;
            }
            switch (b2) {
                case 55:
                    int i30 = i2 + 2;
                    if ((bArr[i30] & 255) != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                    qt.y0(117, bArr[i30] & 255);
                    break;
                case 56:
                    int i31 = i2 + 2;
                    qt.y0(103, (bArr[i31] >> 7) & 1);
                    qt.y0(104, (bArr[i31] >> 6) & 1);
                    qt.y0(105, (bArr[i31] >> 3) & 7);
                    qt.y0(106, (bArr[i31] >> 0) & 7);
                    qt.y0(107, bArr[i2 + 3] & 255);
                    qt.y0(108, bArr[i2 + 4] & 255);
                    qt.y0(109, bArr[i2 + 5] & 255);
                    qt.y0(110, bArr[i2 + 6] & 255);
                    qt.y0(111, bArr[i2 + 7] & 255);
                    qt.y0(112, bArr[i2 + 8] & 255);
                    qt.y0(113, bArr[i2 + 9] & 255);
                    qt.y0(114, bArr[i2 + 10] & 255);
                    qt.y0(115, bArr[i2 + 11] & 255);
                    qt.y0(116, bArr[i2 + 12] & 255);
                    break;
                case 57:
                    int i32 = i2 + 2;
                    qt.y0(118, (bArr[i32] >> 7) & 1);
                    qt.y0(119, (bArr[i32] >> 6) & 1);
                    qt.y0(120, (bArr[i32] >> 5) & 1);
                    qt.y0(121, (bArr[i32] >> 4) & 1);
                    qt.y0(122, (bArr[i32] >> 3) & 1);
                    qt.y0(123, (bArr[i32] >> 2) & 1);
                    qt.y0(124, (bArr[i32] >> 1) & 1);
                    qt.y0(125, (bArr[i32] >> 0) & 1);
                    int i33 = i2 + 3;
                    qt.y0(126, (bArr[i33] >> 7) & 1);
                    qt.y0(127, (bArr[i33] >> 4) & 7);
                    qt.y0(128, (bArr[i33] >> 2) & 3);
                    int i34 = i2 + 4;
                    qt.y0(129, (3 & (bArr[i33] >> 0)) | (4 & ((bArr[i34] & 2) << 1)));
                    qt.y0(130, (bArr[i34] >> 5) & 7);
                    qt.y0(131, (bArr[i34] >> 2) & 7);
                    break;
            }
            return;
        }
        int i35 = i2 + 2;
        qt.y0(10, (bArr[i35] >> 7) & 1);
        qt.y0(13, (bArr[i35] >> 6) & 1);
        qt.y0(12, (bArr[i35] >> 5) & 1);
        qt.y0(16, (bArr[i35] >> 4) & 1);
        qt.y0(57, (bArr[i35] >> 3) & 1);
        qt.y0(15, (bArr[i35] >> 2) & 1);
        qt.y0(11, (bArr[i35] >> 1) & 1);
        qt.y0(37, (bArr[i35] >> 0) & 1);
        int i36 = i2 + 3;
        switch ((bArr[i36] >> 4) & 15) {
            case 0:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                i7 = 1;
                break;
            case 1:
                i4 = 0;
                i6 = 1;
                i7 = i6;
                i5 = i7;
                break;
            case 2:
                i4 = 0;
                i7 = 0;
                i6 = 1;
                i5 = 1;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i7 = 0;
                i5 = 1;
                break;
            case 4:
                i4 = 0;
                i6 = 0;
                i7 = 1;
                i5 = i7;
                break;
            case 5:
                i4 = 0;
                i6 = 0;
                i5 = 0;
                i7 = 1;
                break;
            case 6:
                i4 = 0;
                i7 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 7:
                i6 = 0;
                i7 = 0;
                i5 = 0;
                i4 = 1;
                break;
            default:
                i4 = 0;
                i6 = 0;
                i7 = i6;
                i5 = i7;
                break;
        }
        qt.y0(49, i4);
        qt.y0(18, i6);
        qt.y0(19, i7);
        qt.y0(20, i5);
        qt.y0(21, (bArr[i36] >> 0) & 15);
        int i37 = i2 + 4;
        int i38 = bArr[i37] & 255;
        int i39 = i2 + 5;
        int i40 = bArr[i39] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i38 = bArr[i39] & 255;
            i40 = bArr[i37] & 255;
        }
        if (i38 == 0) {
            qt.y0(27, -2);
        } else if (i38 == 14) {
            qt.y0(27, -3);
        } else if (i38 < 1 || i38 > 13) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i38);
        }
        if (i40 == 0) {
            qt.y0(28, -2);
        } else if (i40 == 14) {
            qt.y0(28, -3);
        } else if (i40 < 1 || i40 > 13) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i40);
        }
        switch ((bArr[i2 + 6] >> 4) & 15) {
            case 0:
                i8 = 0;
                i9 = 0;
                i10 = 1;
                i11 = 1;
                break;
            case 1:
                i8 = 0;
                i10 = 1;
                i11 = i10;
                i9 = i11;
                break;
            case 2:
                i8 = 0;
                i11 = 0;
                i10 = 1;
                i9 = 1;
                break;
            case 3:
                i8 = 0;
                i10 = 0;
                i11 = 0;
                i9 = 1;
                break;
            case 4:
                i8 = 0;
                i10 = 0;
                i11 = 1;
                i9 = i11;
                break;
            case 5:
                i8 = 0;
                i10 = 0;
                i9 = 0;
                i11 = 1;
                break;
            case 6:
                i8 = 0;
                i11 = 0;
                i9 = 0;
                i10 = 1;
                break;
            case 7:
                i10 = 0;
                i11 = 0;
                i9 = 0;
                i8 = 1;
                break;
            default:
                i8 = 0;
                i10 = 0;
                i11 = i10;
                i9 = i11;
                break;
        }
        qt.y0(50, i8);
        qt.y0(22, i10);
        qt.y0(23, i11);
        qt.y0(24, i9);
        int i41 = nt.f8633a;
        if (i41 == 10027463 || i41 == 5636552) {
            qt.y0(55, (bArr[i2 + 7] >> 7) & 1);
        } else {
            qt.y0(80, bArr[i2 + 7] & 255);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4184u.j();
        u0.c.f17386m.d(this.f4173j);
        qt.q0(this.A);
        l0.b0.p0(this.f4174k);
        w0.e.f17815a.d(this.f4188y);
        w0.e.f17819e.d(this.f4188y);
        w0.e.f17816b.d(this.f4188y);
        u0.c.f17392s.d(this.f4189z);
        u0.c.f17374a.d(this.f4187x);
        h0.d.f2464c.d(this.f4186w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 136) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 136, 1, iArr[0]);
                break;
            case 2:
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 192, 1, iArr[0]);
                break;
            case 4:
                if ((iArr[0] & 255) == 254) {
                    m3(iArr[1]);
                } else if ((iArr[0] & 255) == 249) {
                    j3(iArr[1]);
                }
                break;
            case 5:
                l3(iArr[0]);
                k3(iArr[1]);
                break;
            case 6:
                if (nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                }
                break;
            case 7:
                i3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 8:
                z.k.s(227, 200, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
        }
    }

    public final void i3(int i2, int i3, int i4, int i5, int i6) {
        qt.y0(98, i2);
        qt.y0(99, i3);
        qt.y0(100, i4);
        qt.y0(101, i5);
        qt.y0(102, i6);
        z.k.s(227, 153, 5, i2, i3, i4, i5, i6);
        F = i2;
        int iB = this.f4184u.b(18, 0);
        int i7 = F;
        if (iB != i7) {
            this.f4184u.g(18, i7);
        }
        G = i3;
        int iB2 = this.f4184u.b(19, 0);
        int i8 = G;
        if (iB2 != i8) {
            this.f4184u.g(19, i8);
        }
        H = i4;
        int iB3 = this.f4184u.b(20, 0);
        int i9 = H;
        if (iB3 != i9) {
            this.f4184u.g(20, i9);
        }
        I = i5;
        int iB4 = this.f4184u.b(21, 0);
        int i10 = I;
        if (iB4 != i10) {
            this.f4184u.g(21, i10);
        }
        J = i6;
        int iB5 = this.f4184u.b(22, 0);
        int i11 = J;
        if (iB5 != i11) {
            this.f4184u.g(22, i11);
        }
    }

    public final void j3(int i2) {
        qt.y0(135, i2);
        Log.v("zed", "update   U_CAR_BENZ_TYPE = " + i2);
        E = i2;
        int iB = this.f4184u.b(14, 0);
        int i3 = E;
        if (iB != i3) {
            this.f4184u.g(14, i3);
        }
    }

    public final void k3(int i2) {
        qt.y0(133, 65535 & i2);
        D = i2;
        if (this.f4184u.b(9, 0) != D) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(D)));
            this.f4184u.g(9, D);
        }
    }

    public final void l3(int i2) {
        qt.y0(132, 65535 & i2);
        C = i2;
        if (this.f4184u.b(8, 0) != C) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(C)));
            this.f4184u.g(8, C);
        }
    }

    public final void m3(int i2) {
        qt.y0(134, i2);
        B = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = B;
            if (i3 == 0) {
                ((f1.l) qVarE).d0(-1);
            } else if (i3 == 1) {
                ((f1.l) qVarE).d0(222);
            } else if (i3 == 2) {
                ((f1.l) qVarE).d0(218);
            } else if (i3 == 3) {
                ((f1.l) qVarE).d0(219);
            }
        }
        int iB = this.f4184u.b(7, 0);
        int i4 = B;
        if (iB != i4) {
            this.f4184u.g(7, i4);
        }
    }

    public final void n3(String str) {
        if (str == null) {
            z.k.s(227, -123, 2, 0, 0);
            return;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 30 ? bytes.length : 30;
        int[] iArr = new int[length + 5];
        iArr[0] = 227;
        iArr[1] = 133;
        iArr[2] = length + 2;
        iArr[3] = 1;
        if (length > 15) {
            iArr[4] = (15 & (length - 15)) | 240;
        } else {
            iArr[4] = (length << 4) & 240;
        }
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 5] = bytes[i2];
        }
        if (u0.b.D == 12) {
            z.k.s(iArr);
        }
    }
}
