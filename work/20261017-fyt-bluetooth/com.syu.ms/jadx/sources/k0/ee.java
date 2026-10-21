package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ee extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4710c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4711d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{6, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{5, 18}, new int[]{8, 13}, new int[]{18, 0}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 6}, new int[]{35, 9}, new int[]{37, 54}, new int[]{38, 5}, new int[]{129, 25}, new int[]{130, 7}, new int[]{131, 8}, new int[]{132, 12}, new int[]{133, 6}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 38}, new int[]{137, 19}, new int[]{138, 20}, new int[]{139, 40}, new int[]{140, 41}, new int[]{141, 42}, new int[]{142, 43}, new int[]{143, 44}, new int[]{144, 45}, new int[]{145, 26}, new int[]{146, 18}, new int[]{147, 24}, new int[]{148, 54}, new int[]{149, 5}, new int[]{150, 65}, new int[]{151, 15}, new int[]{152, 54}, new int[]{153, 38}, new int[]{154, 18}, new int[]{155, 39}, new int[]{156, 53}, new int[]{157, 18}, new int[]{158, 26}, new int[]{159, 6}, new int[]{160, 5}, new int[]{161, 10}, new int[]{162, 54}, new int[]{163, 16}, new int[]{164, 38}, new int[]{165, 29}, new int[]{166, 54}, new int[]{167, 55}, new int[]{168, 1}, new int[]{193, 7}, new int[]{194, 8}, new int[]{195, 4}, new int[]{196, 3}, new int[]{197, 2}, new int[]{199, 5}, new int[]{200, 9}, new int[]{201, 12}, new int[]{202, 13}, new int[]{152, 54}, new int[]{153, 13}, new int[]{154, 18}, new int[]{155, 64}, new int[]{156, 2}, new int[]{157, 18}, new int[]{158, 26}, new int[]{159, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f4712e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4713f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4714g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4715h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4716i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4717j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4718k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4719l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f4720m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4721n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4722o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4723p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4724q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4725r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f4726s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4727t = new g();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f4728u = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4729v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4730w = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c != 12) {
                l0.c0.t();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.G();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (ee.this.f4719l == millis && ee.this.f4720m == b2) {
                return;
            }
            ee.this.f4719l = millis;
            ee.this.f4720m = b2;
            z.k.s(227, -90, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 10) {
                z.k.s(227, -125, 2, 1, 0);
            } else {
                if (i2 != 11) {
                    return;
                }
                z.k.s(227, -125, 2, 1, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ee.this.f4726s);
            ee.this.f4723p = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 12) {
                ee.p3(new byte[]{46, -127, 1, 1, 0});
                if (ee.this.f4724q == 0) {
                    ee.p3(new byte[]{46, -112, 1, 33, 0});
                }
                ee eeVar = ee.this;
                int i2 = eeVar.f4724q;
                if (i2 > 0) {
                    eeVar.f4724q = i2 - 1;
                    return;
                }
                return;
            }
            ee eeVar2 = ee.this;
            int i3 = eeVar2.f4723p - 1;
            eeVar2.f4723p = i3;
            if (i3 <= 0) {
                l0.b0.p0(eeVar2.f4726s);
                ee.this.f4723p = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 127);
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 4;
            boolean z2 = true;
            boolean z3 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 6:
                default:
                    i3 = 5;
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                    i3 = 1;
                    break;
                case 5:
                    break;
            }
            if (ee.this.f4729v != i3) {
                ee.this.f4729v = i3;
            } else {
                z2 = false;
            }
            if (z2) {
                if (ee.this.f4729v != 0) {
                    ee eeVar = ee.this;
                    eeVar.o3(eeVar.f4729v);
                }
                if (ee.this.f4730w != z3) {
                    ee.this.f4730w = z3;
                    ee.this.f4729v = 0;
                }
            }
            if (ee.this.f4728u.equals(h0.c.f2437h)) {
                return;
            }
            ee.this.f4728u = h0.c.f2437h;
            ee eeVar2 = ee.this;
            eeVar2.n3(eeVar2.f4728u);
        }
    }

    public static void p3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0076  */
    @Override // k0.lt
    public void S2() {
        o1.y yVar = w0.e.f17815a;
        yVar.a(this.f4716i, 1);
        u0.c.f17393t.a(this.f4716i, 1);
        u0.c.f17392s.a(this.f4716i, 1);
        u0.c.f17374a.a(this.f4716i, 1);
        l0.b0.b(this.f4716i);
        u0.c.f17386m.a(this.f4725r, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        l0.b0.b(this.f4722o);
        int i2 = nt.f8637c;
        if (i2 != 17) {
            switch (i2) {
                case 6:
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8306a = null;
                    mtVar2.f8310e = 0;
                    mtVar2.f8311f = 0;
                    mtVar2.f8312g = 0;
                    mtVar2.f8314i = 0;
                    break;
                case 7:
                case 8:
                    yVar.a(this.f4717j, 1);
                    break;
                case 9:
                    qt.z(this.f4718k);
                    yVar.a(this.f4717j, 1);
                    break;
                case 10:
                case 11:
                    mt mtVar3 = this.f7886a;
                    mtVar3.f8306a = new String[]{"com.syu.canbus"};
                    mtVar3.f8314i = 1;
                    yVar.a(this.f4717j, 1);
                    break;
                case 12:
                    mt mtVar4 = this.f7886a;
                    mtVar4.f8306a = null;
                    mtVar4.f8314i = 1;
                    break;
            }
        } else {
            mt mtVar5 = this.f7886a;
            mtVar5.f8306a = null;
            mtVar5.f8314i = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[][] iArr3;
        byte b2 = bArr[i2];
        int i13 = 0;
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            if (!nt.a() || (i4 = bArr[i2 + 3] & 255) == 254 || i4 == 255) {
                return;
            }
            if (i4 < 40) {
                i13 = 1000 - ((40 - i4) * 10);
            } else if (i4 >= 40 && i4 <= 200) {
                i13 = ((i4 - 40) * 10) + 1000;
            }
            u0.d.A3(i13);
        }
        if (b2 == 48) {
            if (this.f4721n) {
                return;
            }
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 5400);
            return;
        }
        if (b2 == 64) {
            int i14 = bArr[i2 + 2] & 255;
            if (i14 < 2 || i14 >= 6) {
                return;
            }
            qt.y0(Process.MEDIA_UID, i14 - 2);
            return;
        }
        if (b2 == 67) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f4710c = (b4 | 192) & 255;
                int i15 = 0;
                while (true) {
                    iArr = this.f4711d;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    int i16 = this.f4710c;
                    if (i16 == iArr[i15][0]) {
                        if (i16 == 0) {
                            break;
                        }
                        this.f4709b = i15;
                        break;
                    }
                    i15++;
                }
                if ((b5 & 255) != 0) {
                    if (i15 < iArr.length) {
                        l0.b0.l0(iArr[i15][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i15 <= iArr.length) {
                        l0.b0.l0(iArr[this.f4709b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                    return;
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                }
            }
            if (i17 == 3) {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            } else if (i17 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f4721n = true;
                return;
            } else {
                if (i17 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    this.f4710c = b6 & 255;
                    int i21 = 0;
                    while (true) {
                        iArr2 = this.f4711d;
                        if (i21 < iArr2.length) {
                            int i22 = this.f4710c;
                            if (i22 != iArr2[i21][0]) {
                                i21++;
                            } else if (i22 != 0) {
                                this.f4709b = i21;
                            }
                        }
                    }
                    int i23 = nt.f8637c;
                    if (i23 == 8 || i23 == 7) {
                        if (this.f4710c != 10) {
                            int i24 = b7 & 255;
                            if (i24 != 1) {
                                if (i24 == 0) {
                                    int i25 = this.f4709b;
                                    if (i25 < iArr2.length) {
                                        i5 = 255;
                                        if (i25 != 255) {
                                            l0.b0.l0(iArr2[i25][1], 1);
                                        }
                                    } else {
                                        i5 = 255;
                                    }
                                    this.f4709b = i5;
                                }
                            } else if (i21 < iArr2.length) {
                                l0.b0.l0(iArr2[i21][1], 0);
                            }
                        } else {
                            int i26 = h0.c.E;
                            if (i26 == 4 || i26 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                    } else if (i23 != 9) {
                        int i27 = b7 & 255;
                        if (i27 != 1) {
                            if (i27 == 0) {
                                int i28 = this.f4709b;
                                if (i28 < iArr2.length) {
                                    i6 = 255;
                                    if (i28 != 255) {
                                        l0.b0.l0(iArr2[i28][1], 1);
                                    }
                                } else {
                                    i6 = 255;
                                }
                                this.f4709b = i6;
                            }
                        } else if (i21 < iArr2.length) {
                            l0.b0.l0(iArr2[i21][1], 0);
                        }
                    } else {
                        int i29 = this.f4710c;
                        if (i29 != 3) {
                            if (i29 != 4) {
                                int i30 = b7 & 255;
                                if (i30 != 1) {
                                    if (i30 == 0) {
                                        int i31 = this.f4709b;
                                        if (i31 < iArr2.length && i31 != 255) {
                                            l0.b0.l0(iArr2[i31][1], 1);
                                        }
                                        this.f4709b = 255;
                                    }
                                } else if (i21 < iArr2.length) {
                                    l0.b0.l0(iArr2[i21][1], 0);
                                }
                            } else {
                                int i32 = h0.c.E;
                                if (i32 == 3 || i32 == 4 || i32 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                        } else if (h0.c.E == 3) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                }
                break;
            case 33:
                if (nt.f8633a != 786845) {
                    byte b8 = bArr[i2 + 2];
                    byte b9 = bArr[i2 + 3];
                    byte b10 = bArr[i2 + 4];
                    int i33 = i2 + 5;
                    byte b11 = bArr[i33];
                    int i34 = i2 + 6;
                    byte b12 = bArr[i34];
                    qt.y0(10, (b8 >> 7) & 1);
                    qt.y0(11, (b8 >> 6) & 1);
                    qt.y0(12, (b8 >> 4) & 3);
                    qt.y0(13, (b8 >> 3) & 1);
                    qt.y0(16, (b8 >> 1) & 1);
                    int i35 = b9 & DhcpPacket.DHCP_DOMAIN_NAME;
                    if (i35 != 1) {
                        if (i35 == 2) {
                            i7 = 0;
                            i9 = 1;
                        } else if (i35 == 3) {
                            i7 = 0;
                            i9 = 0;
                            i8 = 1;
                        } else if (i35 == 4) {
                            i9 = 0;
                            i7 = 1;
                            i8 = 1;
                        } else if (i35 != 5) {
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
                    qt.y0(18, i7);
                    qt.y0(19, i9);
                    qt.y0(20, i8);
                    qt.y0(77, b9 & 255);
                    qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b11 = bArr[i34];
                        b12 = bArr[i33];
                    }
                    byte b13 = b12;
                    if (nt.f8633a != 590237) {
                        int i36 = b11 & 255;
                        if (i36 == 241) {
                            qt.y0(27, -2);
                        } else if (i36 == 242) {
                            qt.y0(27, -3);
                        } else {
                            int i37 = ((b11 >> 7) & 1) == 0 ? ((b11 & 31) + 16) * 2 : (b11 & 31) + 36;
                            if (i37 > 64) {
                                i37 = 64;
                            }
                            qt.y0(27, i37);
                        }
                        int i38 = b13 & 255;
                        if (i38 == 241) {
                            qt.y0(28, -2);
                        } else if (i38 != 242) {
                            int i39 = ((b13 >> 7) & 1) == 0 ? ((b13 & 31) + 16) * 2 : (b13 & 31) + 36;
                            qt.y0(28, i39 > 64 ? 64 : i39);
                        } else {
                            qt.y0(28, -3);
                        }
                    } else {
                        int i40 = ((b11 >> 7) & 1) == 0 ? ((b11 & 31) + 16) * 2 : (b11 & 31) + 36;
                        if (i40 > 64) {
                            i40 = 64;
                        }
                        qt.y0(27, i40);
                        int i41 = ((b13 >> 7) & 1) == 0 ? ((b13 & 31) + 16) * 2 : (b13 & 31) + 36;
                        qt.y0(28, i41 > 64 ? 64 : i41);
                    }
                } else {
                    a.f.p().t(LogType.CANBUS, "rec obd data---->" + o1.b0.d(bArr, i2, bArr[i2 + 1] + 2));
                    int i42 = bArr[i2 + 2] & 255;
                    int i43 = (i42 >> 5) & 7;
                    if (i43 != 1) {
                        if (i43 == 2) {
                            i10 = 0;
                            i12 = 1;
                        } else if (i43 == 3) {
                            i10 = 0;
                            i12 = 0;
                            i11 = 1;
                        } else if (i43 == 4) {
                            i12 = 0;
                            i10 = 1;
                            i11 = 1;
                        } else if (i43 != 5) {
                            i10 = 0;
                            i12 = 0;
                        } else {
                            i12 = 0;
                            i11 = 0;
                            i10 = 1;
                        }
                        i11 = i12;
                    } else {
                        i10 = 0;
                        i11 = 0;
                        i12 = 1;
                    }
                    qt.y0(18, i10);
                    qt.y0(19, i12);
                    qt.y0(20, i11);
                    qt.y0(77, i43);
                    qt.y0(13, (i42 >> 4) & 1);
                    if (((i42 >> 3) & 1) == 1) {
                        qt.y0(12, 0);
                    } else if (((i42 >> 2) & 1) == 1) {
                        qt.y0(12, 1);
                    }
                    qt.y0(11, (i42 >> 1) & 1);
                    if (((i42 >> 0) & 1) == 1) {
                        qt.y0(10, 0);
                    } else {
                        qt.y0(10, 1);
                    }
                    int i44 = bArr[i2 + 3] & 255;
                    qt.y0(21, (i44 >> 4) & 15);
                    qt.y0(53, (i44 >> 3) & 1);
                    qt.y0(15, (i44 >> 2) & 1);
                    qt.y0(38, (i44 >> 1) & 1);
                    qt.y0(14, (i44 >> 0) & 1);
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, (bArr[i2 + 4] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 5] >> 2) & 63);
                    } else {
                        qt.y0(27, (bArr[i2 + 5] >> 2) & 63);
                        qt.y0(28, (bArr[i2 + 4] >> 2) & 63);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.d1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.d1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.d1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.d1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i45 = i2 + 2;
                int i46 = bArr[i45] & 255;
                int i47 = i2 + 3;
                int i48 = bArr[i47] & 255;
                int i49 = i2 + 4;
                int i50 = bArr[i49] & 255;
                int i51 = i2 + 5;
                int i52 = bArr[i51] & 255;
                if (i46 == 0 && i48 == 0 && i50 == 0 && i52 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i46 || l0.c0.f13014h != i48 || l0.c0.f13015i != i50 || l0.c0.f13016j != i52) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i46;
                l0.c0.f13014h = i48;
                l0.c0.f13015i = i50;
                l0.c0.f13016j = i52;
                u0.d.D2(l0.c0.d1(bArr[i45] & 255));
                u0.d.E2(l0.c0.d1(bArr[i47] & 255));
                u0.d.F2(l0.c0.d1(bArr[i49] & 255));
                u0.d.G2(l0.c0.d1(bArr[i51] & 255));
                break;
            case 36:
                if (nt.a()) {
                    byte b14 = bArr[i2 + 2];
                    byte b15 = bArr[i2 + 3];
                    this.f4710c = (b14 | 128) & 255;
                    int i53 = 0;
                    while (true) {
                        iArr3 = this.f4711d;
                        if (i53 < iArr3.length) {
                            int i54 = this.f4710c;
                            if (i54 != iArr3[i53][0]) {
                                i53++;
                            } else if (i54 != 0) {
                                this.f4709b = i53;
                            }
                        }
                    }
                    if (nt.f8633a == 262557) {
                        if (this.f4710c == 156) {
                            o1.u.r();
                        } else if ((b14 & 255) == 0) {
                            if (i53 <= iArr3.length) {
                                l0.b0.l0(iArr3[this.f4709b][1], 1);
                            }
                        } else if (i53 < iArr3.length) {
                            l0.b0.l0(iArr3[i53][1], 0);
                        }
                        break;
                    } else {
                        int i55 = this.f4710c;
                        if (i55 != 130) {
                            if (i55 != 131) {
                                if (i55 != 137) {
                                    if (i55 != 138) {
                                        if ((b15 & 255) == 0) {
                                            if (i53 <= iArr3.length) {
                                                l0.b0.l0(iArr3[this.f4709b][1], 1);
                                            }
                                        } else if (i53 < iArr3.length) {
                                            l0.b0.l0(iArr3[i53][1], 0);
                                        }
                                        break;
                                    } else if ((b15 & 255) != 0 && i53 < iArr3.length) {
                                        l0.b0.l0(iArr3[i53][1], 0);
                                        l0.b0.l0(this.f4711d[i53][1], 1);
                                        break;
                                    }
                                } else if ((b15 & 255) != 0 && i53 < iArr3.length) {
                                    l0.b0.l0(iArr3[i53][1], 0);
                                    l0.b0.l0(this.f4711d[i53][1], 1);
                                    break;
                                }
                            } else if ((b15 & 255) != 0 && i53 < iArr3.length) {
                                l0.b0.l0(iArr3[i53][1], 0);
                                l0.b0.l0(this.f4711d[i53][1], 1);
                                break;
                            }
                        } else if ((b15 & 255) != 0 && i53 < iArr3.length) {
                            l0.b0.l0(iArr3[i53][1], 0);
                            l0.b0.l0(this.f4711d[i53][1], 1);
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = w0.e.f17815a;
        yVar.d(this.f4716i);
        o1.y yVar2 = u0.c.f17393t;
        yVar2.d(this.f4716i);
        o1.y yVar3 = u0.c.f17392s;
        yVar3.d(this.f4716i);
        o1.y yVar4 = u0.c.f17374a;
        yVar4.d(this.f4716i);
        l0.b0.p0(this.f4716i);
        l0.b0.p0(this.f4722o);
        yVar.d(this.f4717j);
        yVar2.d(this.f4717j);
        yVar3.d(this.f4717j);
        yVar4.d(this.f4717j);
        h0.d.f2464c.d(this.f4727t);
        qt.q0(this.f4718k);
        u0.c.f17386m.d(this.f4725r);
        l0.b0.p0(this.f4726s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -88, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            p3(new byte[]{46, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5], 0});
            this.f4724q = 1;
            return;
        }
        if (i2 == 5) {
            p3(new byte[]{46, -112, 1, 33, 0});
            this.f4724q = 1;
        } else if (i2 == 1005 && iArr != null && iArr.length > 0 && nt.f8637c == 4) {
            if (iArr[0] == 4) {
                z.k.s(1, 0, 121);
            } else {
                z.k.s(227, -89, 1, iArr[0] + 1);
            }
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f4713f + bArr.length > 1024) {
            this.f4713f = 0;
            this.f4714g = 0;
            this.f4715h = 0;
        }
        System.arraycopy(bArr, 0, this.f4712e, this.f4713f, bArr.length);
        int length = this.f4713f + bArr.length;
        this.f4713f = length;
        int i5 = this.f4715h;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4712e[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4715h;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4712e[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4712e;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4714g = this.f4715h + 1;
            } else {
                this.f4714g = 1;
            }
            this.f4715h = 0;
        }
        int i7 = this.f4713f - 2;
        while (true) {
            i2 = this.f4714g;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4712e;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4715h = i8;
                int i9 = i8 + i2 + 3;
                this.f4715h = i9;
                if (i9 >= this.f4713f) {
                    this.f4715h = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4715h;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4712e[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4712e;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4714g;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4714g = this.f4715h;
                } else {
                    this.f4714g++;
                }
                this.f4715h = 0;
            }
            this.f4714g++;
        }
        if (i2 != 0) {
            int i12 = this.f4713f - i2;
            this.f4713f = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4712e;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4714g = 0;
        }
    }

    public final void n3(String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = 4;
        iArr[4] = 2;
        for (int i2 = 0; i2 < str.length(); i2++) {
            iArr[5 + i2] = (byte) charArray[i2];
        }
        z.k.s(iArr);
    }

    public final void o3(int i2) {
        z.k.s(-29, -59, 2, 0, (byte) i2);
    }
}
