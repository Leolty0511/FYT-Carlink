package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class m3 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7937e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7938f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, 25}, new int[]{129, 40}, new int[]{130, 41}, new int[]{131, 42}, new int[]{132, 43}, new int[]{133, 44}, new int[]{134, 45}, new int[]{135, -1}, new int[]{136, 12}, new int[]{137, 2}, new int[]{138, 54}, new int[]{139, 1}, new int[]{140, 3}, new int[]{141, 4}, new int[]{142, 28}, new int[]{143, 27}, new int[]{144, 5}, new int[]{145, 21}, new int[]{146, 5}, new int[]{147, 18}, new int[]{148, 29}, new int[]{149, 11}, new int[]{150, 5}, new int[]{151, 0}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7939g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7940h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f7941i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7942j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f7943k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f7944l = 7;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f7945m = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f7946n = 9;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f7947o = 10;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f7948p = 11;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f7949q = 12;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f7950r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7951s = new a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f7952t = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7953u = new c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f7954v = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(m3.this.f7952t);
            m3 m3Var = m3.this;
            m3Var.f7950r = 5;
            m3Var.f7939g = 0;
            m3Var.f7940h = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3 m3Var = m3.this;
            int i2 = m3Var.f7950r - 1;
            m3Var.f7950r = i2;
            if (i2 <= 0) {
                l0.b0.p0(m3Var.f7952t);
                m3.this.f7950r = 5;
            } else if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 129) {
                    z.k.s(227, 2, 36, 4, 0);
                } else {
                    if (i3 != 65665) {
                        return;
                    }
                    z.k.s(227, 2, 36, 5, 0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.this.a3(u0.b.K3);
        }
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f7953u);
        u0.c.f17397x.a(this.f7954v, 1);
        u0.c.f17386m.a(this.f7951s, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 49) {
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 104) {
            int i5 = bArr[i2 + 3] & 255;
            qt.y0(107, (i5 >> 7) & 1);
            qt.y0(108, (i5 >> 6) & 1);
            qt.y0(109, (i5 >> 5) & 1);
            qt.y0(110, (i5 >> 4) & 1);
            qt.y0(111, (i5 >> 3) & 1);
            qt.y0(112, (i5 >> 2) & 1);
            qt.y0(113, (i5 >> 0) & 3);
            return;
        }
        if (b2 == 121) {
            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i2 + 5] >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f7936d = (bArr[i2 + 2] & 255) | 128;
                byte b3 = bArr[i2 + 3];
                int i6 = 0;
                while (true) {
                    iArr = this.f7938f;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f7936d;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f7937e = i6;
                        break;
                    }
                    i6++;
                }
                if ((b3 & 255) != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i8 = this.f7937e;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f7937e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                if (b4 != 1) {
                    if (b4 == 2 && b5 != (i4 = this.f7940h)) {
                        if (b5 > i4) {
                            for (int i9 = 0; i9 < b5 - this.f7940h; i9++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b5 < i4) {
                            for (int i10 = 0; i10 < this.f7940h - b5; i10++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f7940h = b5;
                        return;
                    }
                    return;
                }
                int i11 = this.f7939g;
                if (b5 != i11) {
                    if (b5 > i11) {
                        for (int i12 = 0; i12 < b5 - this.f7939g; i12++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b5 < i11) {
                        for (int i13 = 0; i13 < this.f7939g - b5; i13++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f7939g = b5;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                int i14 = i2 + 6;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 7;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 8;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 9;
                int i21 = bArr[i20] & 255;
                if (i15 >= 7 && i17 >= 7 && i19 >= 7 && i21 >= 7) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i15;
                l0.c0.f13014h = i17;
                l0.c0.f13015i = i19;
                l0.c0.f13016j = i21;
                u0.d.D2(l0.h0.o(bArr[i14] & 255));
                u0.d.E2(l0.h0.o(bArr[i16] & 255));
                u0.d.F2(l0.h0.o(bArr[i18] & 255));
                u0.d.G2(l0.h0.o(bArr[i20] & 255));
                return;
            }
            return;
        }
        if (b2 == 66) {
            qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 17:
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i23 == 20 && i25 == 1) {
                    nt.f8643f[115].s(115, new int[]{1}, null, null);
                } else if (i23 == 21 && i25 == 1) {
                    nt.f8643f[116].s(116, new int[]{1}, null, null);
                } else if (i23 == 16 && i25 == 1) {
                    a.i.A();
                }
                if (nt.a()) {
                    byte b6 = bArr[i22];
                    byte b7 = bArr[i24];
                    this.f7935c = b6 & 255;
                    int i26 = 0;
                    while (true) {
                        iArr2 = this.f7938f;
                        if (i26 < iArr2.length) {
                            int i27 = this.f7935c;
                            if (i27 != iArr2[i26][0]) {
                                i26++;
                            } else if (i27 != 0) {
                                this.f7934b = i26;
                            }
                        }
                    }
                    if ((b7 & 255) == 0) {
                        int i28 = this.f7934b;
                        if (i28 < iArr2.length && i28 != 255) {
                            l0.b0.l0(iArr2[i28][1], 1);
                        }
                        this.f7934b = 255;
                    } else if (i26 < iArr2.length) {
                        l0.b0.l0(iArr2[i26][1], 0);
                    }
                    qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                }
                break;
            case 18:
                byte b8 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                } else {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                }
                qt.y0(3, (b8 >> 5) & 1);
                qt.y0(4, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                break;
            case 19:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 20:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 21:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7953u);
        u0.c.f17397x.d(this.f7954v);
        u0.c.f17386m.d(this.f7951s);
        l0.b0.p0(this.f7952t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 244) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(1, iArr[0]);
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(2, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(3, 0);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(4, iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(5, iArr[0]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            c3(6, iArr[0]);
            return;
        }
        if (i2 == 9) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(12, iArr[0]);
            return;
        }
        if (i2 == 10) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            c3(13, iArr[0]);
            return;
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            e3(iArr[0]);
            return;
        }
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            d3(125, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 104) {
            return;
        }
        int i3 = iArr[0];
        if (i3 == 2) {
            f3(iArr[1], 5, 200, iArr[0]);
            return;
        }
        if (i3 == 3) {
            f3(iArr[1], 6, 201, iArr[0]);
            return;
        }
        switch (i3) {
            case 11:
                f3(iArr[1], 7, 202, iArr[0]);
                break;
            case 12:
                f3(iArr[1], 8, 203, iArr[0]);
                break;
            case 13:
                f3(iArr[1], 9, 204, iArr[0]);
                break;
            case 14:
                f3(iArr[1], 10, 205, iArr[0]);
                break;
            case 15:
                f3(iArr[1], 11, 206, iArr[0]);
                break;
            case 16:
                f3(iArr[1], 12, 207, iArr[0]);
                break;
        }
    }

    public final void a3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void c3(int i2, int i3) {
        z.k.s(227, 2, 109, (byte) i2, (byte) i3);
    }

    public final void d3(int i2, int i3, int i4) {
        z.k.s(227, 2, (byte) i2, (byte) i3, (byte) i4);
    }

    public final void e3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }

    public final void f3(int i2, int i3, int i4, int i5) {
        z.k.s(227, 2, -83, (byte) i5, (byte) i2);
        qt.y0(i4, i2);
        if (this.f7941i.b(i3, 0) != i2) {
            this.f7941i.g(i3, i2);
        }
    }
}
