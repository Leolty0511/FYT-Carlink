package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ld extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7586e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7587f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{23, 1}, new int[]{43, 5}, new int[]{44, 74}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7588g = {new int[]{1, 25}, new int[]{37, 1}, new int[]{43, 5}, new int[]{55, 55}, new int[]{67, 2}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7589h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7590i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7591j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7592k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7593l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7594m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7595n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7596o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7597p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7598q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ld.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ld ldVar = ld.this;
            ldVar.f7589h = 0;
            ldVar.f7590i = 0;
            l0.b0.b(ldVar.f7594m);
            ld.this.f7592k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ld ldVar = ld.this;
            int i2 = ldVar.f7592k - 1;
            ldVar.f7592k = i2;
            if (i2 <= 0) {
                l0.b0.p0(ldVar.f7594m);
                ld.this.f7592k = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 3, 106, 5, 1, 135);
                int i3 = nt.f8637c;
                if (i3 != 0) {
                    if (i3 == 8) {
                        z.k.s(227, 2, 36, 11, 53);
                        return;
                    }
                    if (i3 == 10) {
                        z.k.s(227, 2, 36, 14, 53);
                        return;
                    }
                    if (i3 == 25) {
                        z.k.s(227, 2, 36, 21, 53);
                        return;
                    }
                    if (i3 != 28) {
                        if (i3 != 32) {
                            if (i3 != 14) {
                                if (i3 != 15) {
                                    switch (i3) {
                                        case 38:
                                            z.k.s(227, 2, 36, 29, 53);
                                            break;
                                        case 39:
                                            z.k.s(227, 2, 36, 18, 53);
                                            break;
                                        case 40:
                                            z.k.s(227, 2, 36, 24, 53);
                                            break;
                                        case 41:
                                            z.k.s(227, 2, 36, 26, 53);
                                            break;
                                        case 42:
                                            z.k.s(227, 2, 36, 27, 53);
                                            break;
                                        case 43:
                                            z.k.s(227, 2, 36, 28, 53);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                        z.k.s(227, 2, 36, 20, 53);
                        return;
                    }
                    z.k.s(227, 2, 36, 22, 53);
                    return;
                }
                z.k.s(227, 2, 36, 19, 53);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                ld.this.e3((byte) -110, u0.b.i3);
            } else {
                ld.this.e3((byte) -110, " ");
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                ld.this.e3((byte) -109, u0.b.k3);
            } else {
                ld.this.e3((byte) -109, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18037c;
            if (i2 > 30) {
                i2 = 30;
            }
            z.k.s(227, 2, -116, 3, i2);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
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

    public static int c3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
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
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 != 1) {
                    i2 = (i4 != 2 && i4 != 3) ? 0 : 13;
                } else {
                    i2 = 7;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036  */
    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7593l, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 25 && i2 != 28 && i2 != 32 && i2 != 38 && i2 != 40) {
            switch (i2) {
                case 42:
                case 43:
                case 44:
                    mtVar.f8314i = 1;
                    break;
            }
        } else {
            mtVar.f8314i = 1;
        }
        if (i2 != 0) {
            if (i2 != 8) {
                if (i2 != 28 && i2 != 32 && i2 != 14 && i2 != 15) {
                    if (i2 != 43) {
                        if (i2 != 44) {
                            switch (i2) {
                                case 39:
                                    break;
                                case 40:
                                    break;
                                case 41:
                                    break;
                                default:
                                    w0.e.f17815a.a(this.f7591j, 1);
                                    w0.e.f17819e.a(this.f7591j, 1);
                                    u0.c.f17374a.a(this.f7591j, 1);
                                    u0.c.f17388o.a(this.f7595n, 1);
                                    u0.c.f17390q.a(this.f7596o, 1);
                                    qt.z(this.f7598q);
                                    break;
                            }
                        }
                    }
                }
            }
            qt.z(this.f7598q);
            return;
        }
        y0.g.f18094d.a(this.f7597p, 1);
        qt.z(this.f7598q);
        w0.e.f17815a.a(this.f7591j, 1);
        w0.e.f17819e.a(this.f7591j, 1);
        u0.c.f17374a.a(this.f7591j, 1);
        u0.c.f17388o.a(this.f7595n, 1);
        u0.c.f17390q.a(this.f7596o, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2 + 1];
        if (b2 == -121) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = bArr[i2 + 3] & 255;
            int i13 = bArr[i2 + 4] & 255;
            int i14 = bArr[i2 + 5] & 255;
            int i15 = bArr[i2 + 6] & 255;
            int i16 = bArr[i2 + 7] & 255;
            int i17 = bArr[i2 + 8] & 255;
            int i18 = bArr[i2 + 9] & 255;
            int i19 = (i11 >> 7) & 1;
            qt.y0(100, i19);
            int i20 = i19 << 8;
            qt.y0(101, i20 | ((i13 >> 7) & 1));
            qt.y0(102, i20 | ((i13 >> 5) & 3));
            qt.y0(103, (((i11 >> 6) & 1) << 8) | ((i13 >> 4) & 1));
            qt.y0(104, (((i11 >> 5) & 1) << 8) | ((i13 >> 3) & 1));
            qt.y0(105, (((i11 >> 4) & 1) << 8) | ((i13 >> 2) & 1));
            qt.y0(106, (((i11 >> 3) & 1) << 8) | ((i13 >> 1) & 1));
            qt.y0(107, ((i13 >> 0) & 1) | (((i11 >> 2) & 1) << 8));
            qt.y0(108, (((i11 >> 1) & 1) << 8) | ((i14 >> 6) & 3));
            qt.y0(135, (((i12 >> 0) & 1) << 8) | ((i14 >> 5) & 1));
            qt.y0(109, (((i11 >> 0) & 1) << 8) | (i14 & 31));
            qt.y0(110, (((i12 >> 7) & 1) << 8) | ((i15 >> 4) & 15));
            qt.y0(111, (((i12 >> 6) & 1) << 8) | ((i15 >> 3) & 1));
            qt.y0(112, (((i12 >> 5) & 1) << 8) | ((i15 >> 2) & 1));
            qt.y0(113, (((i12 >> 4) & 1) << 8) | ((i15 >> 1) & 1));
            qt.y0(114, (((i12 >> 3) & 1) << 8) | ((i15 >> 0) & 1));
            qt.y0(115, (((i12 >> 2) & 1) << 8) | ((i16 >> 7) & 1));
            qt.y0(116, (((i12 >> 1) & 1) << 8) | ((i16 >> 5) & 3));
            qt.y0(119, (i16 >> 4) & 1);
            qt.y0(120, (i16 >> 3) & 1);
            qt.y0(121, (((i18 >> 4) & 1) << 8) | ((i17 >> 5) & 1));
            qt.y0(118, (((i18 >> 3) & 1) << 8) | ((i17 >> 4) & 1));
            qt.y0(117, (((i18 >> 5) & 1) << 8) | ((i17 >> 3) & 1));
            qt.y0(122, (((i18 >> 2) & 1) << 8) | ((i17 >> 2) & 1));
            qt.y0(123, (((i18 >> 1) & 1) << 8) | ((i17 >> 1) & 1));
            qt.y0(124, (((i18 >> 0) & 1) << 8) | ((i17 >> 0) & 1));
            return;
        }
        if (b2 == -24) {
            if (qt.k0()) {
                return;
            }
            if (bArr[i2 + 5] != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            int i21 = i2 + 6;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 7;
            int i24 = bArr[i23] & 255;
            int i25 = i2 + 8;
            int i26 = bArr[i25] & 255;
            int i27 = i2 + 9;
            int i28 = bArr[i27] & 255;
            if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 8;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i22;
            l0.c0.f13014h = i24;
            l0.c0.f13015i = i26;
            l0.c0.f13016j = i28;
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            u0.d.D2(l0.c0.b1(bArr[i21] & 255));
            u0.d.E2(l0.c0.b1(bArr[i23] & 255));
            u0.d.F2(l0.c0.b1(bArr[i25] & 255));
            u0.d.G2(l0.c0.b1(bArr[i27] & 255));
            return;
        }
        if (b2 == 97) {
            int i29 = bArr[i2 + 2] & 255;
            byte b3 = bArr[i2 + 3];
            int i30 = bArr[i2 + 4] & 255;
            int i31 = bArr[i2 + 5] & 255;
            int i32 = bArr[i2 + 6] & 255;
            byte b4 = bArr[i2 + 7];
            byte b5 = bArr[i2 + 8];
            byte b6 = bArr[i2 + 9];
            int i33 = ((i29 >> 0) & 1) << 8;
            qt.y0(125, (7 & (i30 >> 3)) | i33);
            qt.y0(126, ((i30 >> 2) & 1) | i33);
            qt.y0(127, ((i30 >> 1) & 1) | i33);
            qt.y0(128, ((i30 >> 0) & 1) | i33);
            qt.y0(129, (255 & i31) | i33);
            qt.y0(130, (((i29 >> 5) & 1) << 8) | ((i32 >> 5) & 1));
            qt.y0(131, (((i29 >> 4) & 1) << 8) | ((i32 >> 4) & 1));
            qt.y0(132, (3 & (i32 >> 2)) | (((i29 >> 3) & 1) << 8));
            qt.y0(133, (((i29 >> 2) & 1) << 8) | ((i32 >> 1) & 1));
            qt.y0(134, (((i29 >> 1) & 1) << 8) | ((i32 >> 0) & 1));
            return;
        }
        if (b2 == 17) {
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            this.f7584c = b7 & 255;
            int i34 = 0;
            while (true) {
                iArr = this.f7587f;
                if (i34 >= iArr.length) {
                    break;
                }
                int i35 = this.f7584c;
                if (i35 == iArr[i34][0]) {
                    if (i35 == 0) {
                        break;
                    }
                    this.f7583b = i34;
                    break;
                }
                i34++;
            }
            if ((b8 & 255) == 0) {
                int i36 = this.f7583b;
                if (i36 < iArr.length) {
                    i4 = 255;
                    if (i36 != 255) {
                        l0.b0.l0(iArr[i36][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f7583b = i4;
            } else if (i34 < iArr.length) {
                l0.b0.l0(iArr[i34][1], 0);
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 10000);
            return;
        }
        if (b2 == 18) {
            byte b9 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b9 >> 6) & 1);
                qt.y0(2, (b9 >> 7) & 1);
            } else {
                qt.y0(1, (b9 >> 7) & 1);
                qt.y0(2, (b9 >> 6) & 1);
            }
            qt.y0(3, (b9 >> 5) & 1);
            qt.y0(4, (b9 >> 4) & 1);
            qt.y0(5, (b9 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            this.f7585d = bArr[i2 + 2] & 255;
            byte b10 = bArr[i2 + 3];
            int i37 = 0;
            while (true) {
                iArr2 = this.f7588g;
                if (i37 >= iArr2.length) {
                    break;
                }
                int i38 = this.f7585d;
                if (i38 == iArr2[i37][0]) {
                    if (i38 == 0) {
                        break;
                    }
                    this.f7586e = i37;
                    break;
                }
                i37++;
            }
            if ((b10 & 255) != 0) {
                if (i37 < iArr2.length) {
                    l0.b0.l0(iArr2[i37][1], 0);
                    return;
                }
                return;
            }
            int i39 = this.f7586e;
            if (i39 < iArr2.length) {
                i5 = 255;
                if (i39 != 255) {
                    l0.b0.l0(iArr2[i39][1], 1);
                }
            } else {
                i5 = 255;
            }
            this.f7586e = i5;
            return;
        }
        if (b2 == 34) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            if (b11 == 1 && b12 != (i6 = this.f7589h)) {
                if (b12 > i6) {
                    for (int i40 = 0; i40 < b12 - this.f7589h; i40++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b12 < i6) {
                    for (int i41 = 0; i41 < this.f7589h - b12; i41++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f7589h = b12;
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            int i42 = i2 + 4;
            int i43 = i2 + 5;
            qt.y0(99, ((bArr[i42] << 8) & 65535) | (bArr[i43] & 255));
            qt.y0(1032, ((bArr[i42] << 8) & 65280) | (bArr[i43] & 255));
            qt.y0(1031, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b13 = bArr[i2 + 2];
        byte b14 = bArr[i2 + 3];
        byte b15 = bArr[i2 + 4];
        byte b16 = bArr[i2 + 6];
        byte b17 = bArr[i2 + 7];
        int i44 = i2 + 8;
        byte b18 = bArr[i44];
        int i45 = i2 + 9;
        byte b19 = bArr[i45];
        qt.y0(10, (b13 >> 6) & 1);
        qt.y0(53, (b13 >> 5) & 1);
        qt.y0(13, (b13 >> 3) & 1);
        qt.y0(11, (b14 >> 6) & 1);
        qt.y0(12, (b14 >> 4) & 1);
        qt.y0(14, (b14 >> 2) & 1);
        qt.y0(17, (b15 >> 6) & 1);
        qt.y0(16, (b15 >> 5) & 1);
        qt.y0(65, (b15 >> 4) & 1);
        if (b16 == 1) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        } else if (b16 == 3) {
            i10 = 0;
            i7 = 0;
            i9 = 0;
            i8 = 1;
        } else if (b16 == 5) {
            i10 = 0;
            i9 = 0;
            i7 = 1;
            i8 = 1;
        } else if (b16 != 6) {
            switch (b16) {
                case 11:
                    i10 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 1;
                    break;
                case 12:
                    i10 = 0;
                    i7 = 0;
                    i8 = 1;
                    i9 = i8;
                    break;
                case 13:
                    i10 = 0;
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                    break;
                case 14:
                    i10 = 0;
                    i7 = 1;
                    i8 = i7;
                    i9 = i8;
                    break;
                default:
                    i10 = 0;
                    i7 = 0;
                    i8 = i7;
                    i9 = i8;
                    break;
            }
        } else {
            i10 = 0;
            i8 = 0;
            i9 = 0;
            i7 = 1;
        }
        qt.y0(77, b16 & 255);
        qt.y0(49, i10);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(18, i9);
        qt.y0(21, b17);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b18 = bArr[i45];
            b19 = bArr[i44];
        }
        byte b20 = b19;
        int i46 = b18 & 255;
        if (i46 == 254) {
            qt.y0(27, -2);
        } else if (i46 != 255) {
            qt.y0(27, i46 * 5);
        } else {
            qt.y0(27, -3);
        }
        int i47 = b20 & 255;
        if (i47 == 254) {
            qt.y0(28, -2);
        } else if (i47 != 255) {
            qt.y0(28, i47 * 5);
        } else {
            qt.y0(28, -3);
        }
        int i48 = bArr[i2 + 13] & 255;
        int i49 = (i48 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
        if (i48 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3(i49);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7598q);
        u0.c.f17386m.d(this.f7593l);
        y0.g.f18094d.d(this.f7597p);
        w0.e.f17815a.d(this.f7591j);
        w0.e.f17819e.d(this.f7591j);
        u0.c.f17374a.d(this.f7591j);
        u0.c.f17388o.d(this.f7595n);
        u0.c.f17390q.d(this.f7596o);
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
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            if (iArr[0] == 170 && iArr[1] == 254) {
                z.k.s(227, 2, -3, 4, 8);
                return;
            } else {
                z.k.s(227, 2, -116, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE = ints[0]  = " + iArr[0]);
            z.k.s(227, 2, -3, 4, iArr[0] + 4);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
            int i3 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
            if (iArr[1] == 1) {
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        if (nt.f8637c == 20) {
            iArr[2] = c3();
        } else {
            iArr[2] = b3();
        }
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

    public final void e3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 32 ? bytes.length : 32;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = bytes[i2];
        }
        z.k.s(iArr);
    }
}
