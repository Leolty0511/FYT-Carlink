package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class m7 extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int[] f7976q = new int[5];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static byte f7977r;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7981e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7984h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7978b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7979c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7980d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7982f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7983g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 2}, new int[]{24, -1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7985i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f7986j = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 58}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 33}, new int[]{29, 35}, new int[]{30, 32}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, -1}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, 54}, new int[]{37, 65}, new int[]{38, 54}, new int[]{39, 1}, new int[]{40, 18}, new int[]{41, -1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{46, 10}, new int[]{47, 5}, new int[]{48, 18}, new int[]{49, 71}, new int[]{50, -1}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{54, -1}, new int[]{55, 55}, new int[]{56, 1}, new int[]{57, 25}, new int[]{60, 66}, new int[]{61, -1}, new int[]{62, -1}, new int[]{63, 13}, new int[]{64, 25}, new int[]{65, -1}, new int[]{66, 38}, new int[]{67, 64}, new int[]{69, 7}, new int[]{70, 8}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, -1}, new int[]{74, -1}, new int[]{75, 21}, new int[]{76, 18}, new int[]{77, 27}, new int[]{78, 28}, new int[]{79, 56}, new int[]{80, 56}, new int[]{81, 63}, new int[]{82, -1}, new int[]{83, 12}, new int[]{84, -1}, new int[]{85, -1}, new int[]{86, 22}, new int[]{87, 4}, new int[]{88, 3}, new int[]{89, 4}, new int[]{90, 3}, new int[]{91, 4}, new int[]{92, 3}, new int[]{93, -1}, new int[]{94, -1}, new int[]{95, -1}, new int[]{96, -1}, new int[]{97, 62}, new int[]{98, 15}, new int[]{99, 10}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7987k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7988l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7989m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7990n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7991o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7992p = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = m7.this.f7987k;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 5) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 2);
                } else if (i2 == 5) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 1);
                }
                m7.this.f7987k = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(m7.this.f7991o);
            m7 m7Var = m7.this;
            m7Var.f7989m = 5;
            m7Var.f7979c = 0;
            m7Var.f7980d = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m7 m7Var = m7.this;
            int i2 = m7Var.f7989m - 1;
            m7Var.f7989m = i2;
            if (i2 <= 0) {
                l0.b0.p0(m7Var.f7991o);
                m7.this.f7989m = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                if (u0.b.D == 5) {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 2);
                } else {
                    z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 1);
                }
                int i3 = nt.f8637c;
                if (i3 == 0) {
                    z.k.s(227, 2, 36, 8, 8);
                    return;
                }
                if (i3 == 1) {
                    z.k.s(227, 2, 36, 6, 8);
                } else if (i3 == 2) {
                    z.k.s(227, 2, 36, 7, 8);
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    z.k.s(227, 2, 36, 9, 8);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public static int a3(int i2) {
        if (i2 == 255) {
            return 10;
        }
        return (i2 * 10) / 255;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f7992p);
        u0.c.f17386m.a(this.f7990n, 1);
        u0.c.f17374a.a(this.f7988l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -52) {
            int i5 = i2 + 2;
            qt.y0(101, bArr[i5] & 1);
            qt.y0(102, (bArr[i5] >> 1) & 1);
            int i6 = i2 + 3;
            qt.y0(103, bArr[i6] & 1);
            qt.y0(104, (bArr[i6] >> 1) & 1);
            int[] iArr3 = {bArr[i2 + 4] & 255, bArr[i2 + 5] & 255, bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, f7977r};
            qt.C0(105, iArr3, f7976q);
            f7976q = iArr3;
            byte b3 = (byte) (f7977r + 1);
            f7977r = b3;
            if (b3 > 16) {
                f7977r = (byte) 0;
                return;
            }
            return;
        }
        if (b2 == -45) {
            int i7 = i2 + 3;
            if (this.f7978b != bArr[i7]) {
                byte b4 = bArr[i7];
                this.f7978b = b4;
                if (b4 == 1) {
                    o1.u.j();
                    return;
                } else {
                    if (b4 == 0 && u0.b.D == 5) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 21) {
            qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 33) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f7985i = b5 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f7986j;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f7985i;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f7984h = i8;
                    break;
                }
                i8++;
            }
            if (b6 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (b6 == 0) {
                    int i10 = this.f7984h;
                    if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f7984h = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            if (b7 == 0) {
                this.f7979c = 0;
                this.f7980d = 0;
                return;
            }
            if (b7 != 1) {
                if (b7 == 2 && b8 != (i4 = this.f7980d)) {
                    if (b8 > i4) {
                        for (int i11 = 0; i11 < b8 - this.f7980d; i11++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b8 < i4) {
                        for (int i12 = 0; i12 < this.f7980d - b8; i12++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f7980d = b8;
                    return;
                }
                return;
            }
            int i13 = this.f7979c;
            if (b8 != i13) {
                if (b8 > i13) {
                    for (int i14 = 0; i14 < b8 - this.f7979c; i14++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b8 < i13) {
                    for (int i15 = 0; i15 < this.f7979c - b8; i15++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f7979c = b8;
                return;
            }
            return;
        }
        if (b2 == 114) {
            if (nt.a()) {
                qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
                if ((bArr[i2 + 2] & 255 & 32) == 32) {
                    u0.d.C2(1);
                } else {
                    u0.d.C2(0);
                }
                this.f7982f = bArr[i2 + 4] & 255;
                int i16 = 0;
                while (true) {
                    iArr2 = this.f7983g;
                    if (i16 >= iArr2.length) {
                        break;
                    }
                    int i17 = this.f7982f;
                    if (i17 == iArr2[i16][0]) {
                        if (i17 == 0) {
                            break;
                        }
                        this.f7981e = i16;
                        break;
                    }
                    i16++;
                }
                if (this.f7982f == 0) {
                    int i18 = this.f7981e;
                    if (i18 < iArr2.length) {
                        l0.b0.l0(iArr2[i18][1], 1);
                    }
                    this.f7981e = 255;
                } else if (i16 < iArr2.length) {
                    l0.b0.l0(iArr2[i16][1], 0);
                }
                u0.d.R2(a3(bArr[i2 + 8] & 255));
                u0.d.S2(a3(bArr[i2 + 9] & 255));
                u0.d.T2(a3(bArr[i2 + 10] & 255));
                u0.d.U2(a3(bArr[i2 + 11] & 255));
                u0.d.D2(a3(bArr[i2 + 12] & 255));
                u0.d.E2(a3(bArr[i2 + 13] & 255));
                u0.d.F2(a3(bArr[i2 + 14] & 255));
                u0.d.G2(a3(bArr[i2 + 15] & 255));
                return;
            }
            return;
        }
        if (b2 != 115) {
            return;
        }
        int i19 = i2 + 8;
        qt.y0(109, bArr[i19] & 255);
        int i20 = i2 + 3;
        qt.y0(29, (bArr[i20] >> 0) & 3);
        qt.y0(30, (bArr[i20] >> 2) & 3);
        int i21 = i2 + 2;
        qt.y0(10, (bArr[i21] >> 6) & 1);
        qt.y0(12, (bArr[i21] >> 4) & 3);
        qt.y0(13, (bArr[i21] >> 3) & 1);
        qt.y0(14, (bArr[i21] >> 2) & 1);
        qt.y0(53, (bArr[i21] >> 1) & 1);
        qt.y0(26, (bArr[i21] >> 0) & 1);
        qt.y0(38, (bArr[i20] >> 7) & 1);
        qt.y0(11, (bArr[i20] >> 6) & 1);
        qt.y0(16, (bArr[i20] >> 5) & 1);
        qt.y0(65, (bArr[i20] >> 4) & 1);
        int i22 = i2 + 4;
        int i23 = bArr[i22] & 255;
        int i24 = i2 + 5;
        int i25 = bArr[i24] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i23 = bArr[i24] & 255;
            i25 = bArr[i22] & 255;
        }
        if (i23 == -1) {
            qt.y0(27, -3);
        } else if (i23 == 0) {
            qt.y0(27, -1);
        } else if (i23 != 1) {
            qt.y0(27, i23);
        } else {
            qt.y0(27, -2);
        }
        if (i25 == -1) {
            qt.y0(28, -3);
        } else if (i25 == 0) {
            qt.y0(28, -1);
        } else if (i25 != 1) {
            qt.y0(28, i25);
        } else {
            qt.y0(28, -2);
        }
        int i26 = i2 + 6;
        qt.y0(20, (bArr[i26] >> 6) & 1);
        qt.y0(19, (bArr[i26] >> 5) & 1);
        qt.y0(18, (bArr[i26] >> 4) & 1);
        qt.y0(21, (bArr[i26] >> 0) & 15);
        int i27 = i2 + 7;
        qt.y0(24, (bArr[i27] >> 6) & 1);
        qt.y0(23, (bArr[i27] >> 5) & 1);
        qt.y0(22, (bArr[i27] >> 4) & 1);
        qt.y0(25, (bArr[i27] >> 0) & 15);
        byte b9 = bArr[i2 + 9];
        if ((b9 & 1) != 0) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b9 >> 7) & 1);
                qt.y0(2, (b9 >> 6) & 1);
            } else {
                qt.y0(1, (b9 >> 6) & 1);
                qt.y0(2, (b9 >> 7) & 1);
            }
            qt.y0(3, (b9 >> 5) & 1);
            qt.y0(4, (b9 >> 4) & 1);
            qt.y0(5, (b9 >> 3) & 1);
            qt.y0(0, (b9 >> 2) & 1);
        }
        int i28 = bArr[i19] & 255;
        int i29 = (i28 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
        if (i28 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3(i29);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7992p);
        u0.c.f17386m.d(this.f7990n);
        l0.b0.p0(this.f7991o);
        u0.c.f17374a.d(this.f7988l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, 124, 1, 0, 0);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, 124, 2, 0, 0);
                    break;
                }
                break;
            case 2:
            case 3:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, -51, iArr[0], 0, 0);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, -51, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, -51, iArr[0], iArr[1], 0);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 3, 124, iArr[0], 0, 0);
                    break;
                }
                break;
        }
    }
}
