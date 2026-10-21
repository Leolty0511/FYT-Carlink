package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class sb extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10211g;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f10224t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f10225u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f10226v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10206b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10207c = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10212h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10213i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10214j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f10215k = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{132, 13}, new int[]{133, 18}, new int[]{134, 26}, new int[]{135, -1}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{139, 34}, new int[]{140, 35}, new int[]{141, 25}, new int[]{142, 1}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 55}, new int[]{19, 56}, new int[]{20, 1}, new int[]{21, 39}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, -1}, new int[]{28, -1}, new int[]{29, -1}, new int[]{30, -1}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{34, 6}, new int[]{35, -1}, new int[]{36, 54}, new int[]{37, 65}, new int[]{38, 38}, new int[]{39, 11}, new int[]{40, 18}, new int[]{41, -1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10216l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10217m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10218n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10219o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10220p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10221q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10222r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10223s = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(sb.this.f10221q);
            sb sbVar = sb.this;
            sbVar.f10219o = 5;
            sbVar.f10216l = 0;
            sbVar.f10217m = 0;
            sbVar.f10218n = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sb sbVar = sb.this;
            int i2 = sbVar.f10219o - 1;
            sbVar.f10219o = i2;
            if (i2 <= 0) {
                l0.b0.p0(sbVar.f10221q);
                sb.this.f10219o = 5;
            } else if (u0.b.f17306a0 == 1) {
                sbVar.e3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f2;
            if (i2 == 0) {
                sb.this.b3(12);
                return;
            }
            if (i2 == 1) {
                sb.this.b3(11);
            } else if (i2 == 2) {
                sb.this.b3(14);
            } else {
                if (i2 != 3) {
                    return;
                }
                sb.this.b3(13);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 3, 96, 5, 1, 50);
            z.k.s(227, 3, 96, 5, 1, 52);
        }
    }

    public static int a3(int i2) {
        if (i2 >= 226) {
            return 10;
        }
        if (i2 >= 213) {
            return 9;
        }
        if (i2 >= 200) {
            return 8;
        }
        return (i2 * 10) / 255;
    }

    public static void m3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    b3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[36] == 1) {
                        b3(4);
                    }
                } else if (nt.f8645g[36] == 0) {
                    b3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        b3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    b3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(12);
                } else {
                    b3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(14);
                } else {
                    b3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(16);
                } else {
                    b3(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (o1.q0.v()) {
            qt.z(this.f10223s);
        }
        z.c.f18184d.a(this.f10222r, 1);
        u0.c.f17386m.a(this.f10220p, 1);
        this.f7886a.f8322q = 1;
        if (nt.a()) {
            qt.z(l0.h0.f13058d);
            y0.g.f18094d.a(l0.h0.f13062h, 0);
            y0.g.f18095e.a(l0.h0.f13062h, 0);
            w0.e.f17815a.a(l0.h0.f13058d, 1);
            w0.e.f17819e.a(l0.h0.f13058d, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:248:0x0b39  */
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
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -123) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            qt.y0(145, (((b3 >> 7) & 1) << 8) | ((b4 >> 7) & 1));
            qt.y0(146, ((b4 >> 6) & 1) | (((b3 >> 6) & 1) << 8));
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 117) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            qt.y0(142, (((b5 >> 7) & 1) << 8) | ((b6 >> 7) & 1));
            qt.y0(143, (((b5 >> 6) & 1) << 8) | ((b6 >> 6) & 1));
            qt.y0(144, ((b6 >> 5) & 1) | (((b5 >> 5) & 1) << 8));
            return;
        }
        if (b2 == -62) {
            if (g3()) {
                return;
            }
            k3(bArr, i2 + 2, i3 - 2);
            return;
        }
        if (b2 == -61) {
            if (g3()) {
                return;
            }
            h3(bArr, i2 + 2, i3 - 2);
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 2) != 0) {
                    qt.b(1);
                } else {
                    qt.b(0);
                }
            }
            int i11 = i2 + 2;
            int i12 = bArr[i11 + 2] & 255;
            int i13 = bArr[i11 + 3] & 255;
            qt.y0(110, bArr[i11 + 1] & 255);
            if (nt.a()) {
                byte b7 = bArr[i2 + 5];
                this.f10210f = (bArr[i2 + 4] & 255) | 128;
                int i14 = 0;
                while (true) {
                    iArr = this.f10215k;
                    if (i14 >= iArr.length) {
                        break;
                    }
                    int i15 = this.f10210f;
                    if (i15 == iArr[i14][0]) {
                        if (i15 == 0) {
                            break;
                        }
                        this.f10209e = i14;
                        break;
                    }
                    i14++;
                }
                int i16 = this.f10210f;
                if (i16 != 131) {
                    if (i16 != 133) {
                        if (i16 != 134) {
                            if ((b7 & 255) == 0 || this.f10213i != 0) {
                                int i17 = this.f10209e;
                                if (i17 < iArr.length) {
                                    i4 = 255;
                                    if (i17 != 255) {
                                        l0.b0.l0(iArr[i17][1], 1);
                                    }
                                } else {
                                    i4 = 255;
                                }
                                this.f10209e = i4;
                                this.f10213i = 0;
                            } else if (i14 < iArr.length) {
                                l0.b0.l0(iArr[i14][1], 0);
                                this.f10213i = 1;
                            }
                        } else if ((b7 & 255) == 1 && this.f10213i == 0) {
                            int i18 = h0.c.E;
                            if (i18 == 3) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (i18 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (i18 != 5) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            } else {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                            this.f10213i = 1;
                        } else {
                            this.f10213i = 0;
                        }
                    } else if ((b7 & 255) == 1 && this.f10213i == 0) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                        this.f10213i = 1;
                    } else {
                        this.f10213i = 0;
                    }
                } else if ((b7 & 255) == 1 && this.f10213i == 0) {
                    int i19 = h0.c.E;
                    if (i19 == 3 || i19 == 4 || i19 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    this.f10213i = 1;
                } else {
                    this.f10213i = 0;
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            } else if (i13 == 1) {
                if (i12 == 3 || i12 == 6) {
                    int i20 = h0.c.E;
                    if (i20 == 4 || i20 == 5 || i20 == 3) {
                        h0.c.f2425b.e();
                    } else if (this.f10207c == 1) {
                        z.k.s(227, 2, 186, 1, 0);
                    } else {
                        u0.d.N1();
                    }
                } else if (i12 == 5) {
                    if (h0.c.E == 4) {
                        h0.c.f2425b.n();
                    } else {
                        o1.u.a1();
                    }
                } else if (i12 == 4) {
                    o1.u.a1();
                }
            }
            qt.y0(190, (bArr[i11] >> 3) & 1);
            if (u0.b.f17341m == 1) {
                u0.b.f17338l = (bArr[i11] >> 3) & 1;
                u0.d.x0((bArr[i11] >> 3) & 1);
                return;
            }
            return;
        }
        if (b2 == 18) {
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
            qt.y0(0, (b8 >> 2) & 1);
            qt.y0(191, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 49) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 5];
            byte b13 = bArr[i2 + 6];
            byte b14 = bArr[i2 + 7];
            int i21 = i2 + 8;
            byte b15 = bArr[i21];
            int i22 = i2 + 9;
            byte b16 = bArr[i22];
            qt.y0(10, (b9 >> 6) & 1);
            qt.y0(62, (b9 >> 2) & 1);
            qt.y0(11, (b9 >> 0) & 1);
            qt.y0(12, (b10 >> 4) & 1);
            qt.y0(36, (b10 >> 3) & 1);
            qt.y0(37, (b11 >> 7) & 1);
            qt.y0(16, (b11 >> 5) & 1);
            if (((b10 >> 7) & 1) == 1) {
                qt.y0(30, 0);
                qt.y0(32, (b11 >> 2) & 3);
            } else {
                qt.y0(32, 0);
                qt.y0(30, (b11 >> 2) & 3);
            }
            if (((b10 >> 6) & 1) == 1) {
                qt.y0(29, 0);
                qt.y0(31, (b11 >> 0) & 3);
            } else {
                qt.y0(31, 0);
                qt.y0(29, (b11 >> 0) & 3);
            }
            int i23 = b13 & 255;
            if (i23 == 1) {
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 1;
            } else if (i23 == 2) {
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                i5 = 1;
                i6 = 1;
            } else if (i23 != 3) {
                if (i23 == 5) {
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i10 = 0;
                    i8 = 1;
                } else if (i23 != 6) {
                    switch (i23) {
                        case 11:
                            i5 = 0;
                            i6 = 0;
                            i8 = 0;
                            i9 = 0;
                            i10 = 0;
                            i7 = 1;
                            break;
                        case 12:
                            i5 = 0;
                            i6 = 0;
                            i8 = 0;
                            i10 = 0;
                            i7 = 1;
                            i9 = 1;
                            break;
                        case 13:
                            i5 = 0;
                            i6 = 0;
                            i9 = 0;
                            i10 = 0;
                            i7 = 1;
                            i8 = 1;
                            break;
                        case 14:
                            i5 = 0;
                            i6 = 0;
                            i10 = 0;
                            i7 = 1;
                            i8 = 1;
                            break;
                        default:
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                            i9 = 0;
                            i10 = 0;
                            break;
                    }
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i9 = 0;
                    i10 = 0;
                    i8 = 1;
                }
                i9 = i8;
            } else {
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 1;
            }
            qt.y0(65, i5);
            qt.y0(15, i6);
            qt.y0(18, i7);
            qt.y0(19, i8);
            qt.y0(20, i9);
            qt.y0(49, i10);
            qt.y0(77, b13);
            qt.y0(21, b14 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b15 = bArr[i22];
                b16 = bArr[i21];
            }
            byte b17 = b16;
            int i24 = b15 & 255;
            if (i24 == 254) {
                qt.y0(27, -2);
            } else if (i24 != 255) {
                qt.y0(27, i24);
            } else {
                qt.y0(27, -3);
            }
            int i25 = b17 & 255;
            if (i25 == 254) {
                qt.y0(28, -2);
            } else if (i25 != 255) {
                qt.y0(28, i25);
            } else {
                qt.y0(28, -3);
            }
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 50) {
            int i26 = i2 + 4;
            int i27 = i2 + 5;
            qt.y0(197, ((bArr[i26] << 8) & 65280) | (bArr[i27] & 255));
            qt.y0(1032, ((bArr[i26] << 8) & 65280) | (bArr[i27] & 255));
            int i28 = i2 + 6;
            int i29 = i2 + 7;
            qt.y0(196, ((bArr[i28] << 8) & 65280) | (bArr[i29] & 255));
            qt.y0(110, ((bArr[i28] << 8) & 65280) | (bArr[i29] & 255));
            qt.y0(191, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 52) {
            qt.y0(106, ((bArr[i2 + 2] << 8) & 65280) | ((bArr[i2 + 3] << 0) & 255));
            qt.y0(192, ((bArr[i2 + 8] << 0) & 255) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (b2 == 53) {
            byte b18 = bArr[i2 + 2];
            byte b19 = bArr[i2 + 3];
            byte b20 = bArr[i2 + 4];
            byte b21 = bArr[i2 + 5];
            byte b22 = bArr[i2 + 6];
            qt.y0(97, (((b18 >> 7) & 1) << 8) | ((b20 >> 6) & 3));
            qt.y0(98, (((b18 >> 6) & 1) << 8) | ((b20 >> 4) & 3));
            qt.y0(99, (((b18 >> 5) & 1) << 8) | ((b20 >> 2) & 3));
            qt.y0(101, (b20 & 3) | (((b18 >> 4) & 1) << 8));
            qt.y0(102, (((b18 >> 3) & 1) << 8) | ((b21 >> 7) & 1));
            qt.y0(103, (((b18 >> 2) & 1) << 8) | ((b21 >> 6) & 1));
            qt.y0(104, (((b18 >> 1) & 1) << 8) | ((b21 >> 5) & 1));
            qt.y0(105, ((b18 & 1) << 8) | ((b21 >> 4) & 1));
            qt.y0(107, (((b19 >> 7) & 1) << 8) | ((b21 >> 2) & 3));
            qt.y0(108, (((b19 >> 6) & 1) << 8) | ((b21 >> 1) & 1));
            qt.y0(109, (b21 & 1) | (((b19 >> 5) & 1) << 8));
            qt.y0(111, (((b19 >> 4) & 1) << 8) | ((b22 >> 7) & 1));
            qt.y0(100, (((b19 >> 3) & 1) << 8) | ((b22 >> 5) & 3));
            qt.y0(165, ((b22 >> 3) & 3) | (((b19 >> 2) & 1) << 8));
            return;
        }
        if (b2 == 69) {
            byte b23 = bArr[i2 + 2];
            byte b24 = bArr[i2 + 3];
            qt.y0(112, (((b23 >> 7) & 1) << 8) | ((b24 >> 7) & 1));
            qt.y0(113, (((b23 >> 6) & 1) << 8) | ((b24 >> 6) & 1));
            qt.y0(114, (((b23 >> 5) & 1) << 8) | ((b24 >> 5) & 1));
            qt.y0(115, (((b23 >> 4) & 1) << 8) | ((b24 >> 3) & 3));
            qt.y0(116, (((b23 >> 3) & 1) << 8) | ((b24 >> 2) & 1));
            qt.y0(163, (b24 & 3) | (((b23 >> 2) & 1) << 8));
            return;
        }
        if (b2 == 70) {
            byte b25 = bArr[i2 + 2];
            byte b26 = bArr[i2 + 3];
            qt.y0(164, (((b25 >> 7) & 1) << 8) | ((b26 >> 7) & 1));
            qt.y0(194, (((b25 >> 6) & 1) << 8) | ((b26 >> 6) & 1));
            qt.y0(195, ((b26 >> 5) & 1) | (((b25 >> 5) & 1) << 8));
            return;
        }
        if (b2 == 85) {
            byte b27 = bArr[i2 + 2];
            byte b28 = bArr[i2 + 3];
            qt.y0(117, (((b27 >> 7) & 1) << 8) | ((b28 >> 7) & 1));
            qt.y0(118, (3 & (b28 >> 5)) | (((b27 >> 6) & 1) << 8));
            qt.y0(119, (((b27 >> 5) & 1) << 8) | ((b28 >> 4) & 1));
            qt.y0(120, (((b27 >> 4) & 1) << 8) | ((b28 >> 3) & 1));
            qt.y0(121, (((b27 >> 3) & 1) << 8) | ((b28 >> 2) & 1));
            qt.y0(122, (((b27 >> 2) & 1) << 8) | ((b28 >> 1) & 1));
            qt.y0(123, (b28 & 1) | (((b27 >> 1) & 1) << 8));
            return;
        }
        if (b2 == 86) {
            qt.y0(166, ((bArr[i2 + 3] >> 7) & 1) | (((bArr[i2 + 2] >> 7) & 1) << 8));
            return;
        }
        switch (b2) {
            case -79:
                if (!g3()) {
                    byte b29 = bArr[i2 + 2];
                    byte b30 = bArr[i2 + 3];
                    byte b31 = bArr[i2 + 4];
                    if (nt.R != 0) {
                        j3(b29 & 255);
                        qt.y0(149, b30 & 255);
                        qt.y0(150, b31 & 1);
                        break;
                    }
                }
                break;
            case -78:
                if (!g3()) {
                    byte b32 = bArr[i2 + 2];
                    byte b33 = bArr[i2 + 3];
                    byte b34 = bArr[i2 + 4];
                    byte b35 = bArr[i2 + 5];
                    byte b36 = bArr[i2 + 6];
                    byte b37 = bArr[i2 + 7];
                    byte b38 = bArr[i2 + 8];
                    byte b39 = bArr[i2 + 9];
                    byte b40 = bArr[i2 + 10];
                    qt.y0(151, b32 & 255);
                    qt.y0(152, b33 & 255);
                    qt.y0(153, b34 & 255);
                    qt.y0(154, ((b35 & 255) << 8) | (b36 & 255));
                    qt.y0(155, ((b37 & 255) << 8) | (b38 & 255));
                    qt.y0(156, b39 & 255);
                    qt.y0(157, b40 & 255);
                    break;
                }
                break;
            case -77:
                if (!g3()) {
                    byte b41 = bArr[i2 + 2];
                    qt.y0(158, (b41 & 127) | (((b41 >> 7) & 1) << 8));
                    break;
                }
                break;
            case -76:
                if (!g3()) {
                    i3(bArr, i2 + 2, i3 - 2);
                    break;
                }
                break;
            default:
                switch (b2) {
                    case 33:
                        int i30 = i2 + 2;
                        int i31 = bArr[i30] & 255;
                        int i32 = i2 + 3;
                        if ((bArr[i32] & 255) == 1) {
                            if (i31 == 4) {
                                o1.u.y();
                            } else if (i31 == 5) {
                                o1.u.J();
                            } else if (i31 != 9) {
                                if (i31 == 37) {
                                    o1.u.C();
                                } else if (i31 == 18) {
                                    o1.u.O();
                                } else if (i31 != 19) {
                                    switch (i31) {
                                        case 23:
                                            u0.d.L1();
                                            break;
                                        case 24:
                                            u0.d.x1();
                                            break;
                                        case 25:
                                            u0.d.B1();
                                            break;
                                        case 26:
                                            u0.d.I1();
                                            break;
                                    }
                                } else {
                                    o1.u.W0();
                                }
                            } else if (h0.c.E == 4) {
                                h0.c.f2425b.n();
                            } else if (this.f10207c == 1) {
                                z.k.s(227, 2, 186, 1, 0);
                            } else {
                                u0.d.N1();
                            }
                        }
                        if (nt.a()) {
                            this.f10211g = bArr[i30] & 255;
                            byte b42 = bArr[i32];
                            int i33 = 0;
                            while (true) {
                                iArr2 = this.f10215k;
                                if (i33 < iArr2.length) {
                                    int i34 = this.f10211g;
                                    if (i34 != iArr2[i33][0]) {
                                        i33++;
                                    } else if (i34 != 0) {
                                        this.f10212h = i33;
                                    }
                                }
                            }
                            if ((b42 & 255) == 0) {
                                int i35 = this.f10212h;
                                if (i35 < iArr2.length && i35 != 255) {
                                    l0.b0.l0(iArr2[i35][1], 1);
                                }
                                this.f10212h = 255;
                            } else if (i33 < iArr2.length) {
                                l0.b0.l0(iArr2[i33][1], 0);
                            }
                        }
                        break;
                    case 34:
                        if (nt.a()) {
                            byte b43 = bArr[i2 + 2];
                            byte b44 = bArr[i2 + 3];
                            if (b43 != 1) {
                                if (b43 == 2 && b44 != 0) {
                                    if (b44 > 0) {
                                        for (int i36 = 0; i36 < b44 + 0; i36++) {
                                            l0.b0.l0(31, 0);
                                        }
                                        l0.b0.l0(31, 1);
                                    } else if (b44 < 0) {
                                        for (int i37 = 0; i37 < 0 - b44; i37++) {
                                            l0.b0.l0(30, 0);
                                        }
                                        l0.b0.l0(30, 1);
                                    }
                                }
                            } else if (b44 != 0) {
                                if (b44 > 0) {
                                    for (int i38 = 0; i38 < b44 + 0; i38++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                } else if (b44 < 0) {
                                    for (int i39 = 0; i39 < 0 - b44; i39++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                }
                            }
                        }
                        break;
                    case 35:
                        qt.y0(162, bArr[i2 + 2] & 255);
                        break;
                    default:
                        switch (b2) {
                            case 101:
                                byte b45 = bArr[i2 + 2];
                                byte b46 = bArr[i2 + 3];
                                qt.y0(124, (((b45 >> 7) & 1) << 8) | ((b46 >> 7) & 1));
                                qt.y0(125, (((b45 >> 6) & 1) << 8) | ((b46 >> 6) & 1));
                                qt.y0(126, (3 & (b46 >> 4)) | (((b45 >> 5) & 1) << 8));
                                qt.y0(127, (((b45 >> 4) & 1) << 8) | ((b46 >> 3) & 1));
                                qt.y0(128, (((b45 >> 3) & 1) << 8) | (b46 & 3));
                                qt.y0(185, ((b46 >> 2) & 1) | (((b45 >> 2) & 1) << 8));
                                break;
                            case 102:
                                byte b47 = bArr[i2 + 2];
                                byte b48 = bArr[i2 + 3];
                                byte b49 = bArr[i2 + 4];
                                byte b50 = bArr[i2 + 5];
                                qt.y0(129, (((b47 >> 7) & 1) << 8) | ((b49 >> 6) & 3));
                                qt.y0(130, (((b47 >> 6) & 1) << 8) | ((b49 >> 5) & 1));
                                qt.y0(131, (((b47 >> 5) & 1) << 8) | ((b49 >> 4) & 1));
                                qt.y0(132, (((b47 >> 4) & 1) << 8) | ((b49 >> 3) & 1));
                                qt.y0(133, (((b47 >> 3) & 1) << 8) | ((b49 >> 2) & 1));
                                qt.y0(134, (((b47 >> 2) & 1) << 8) | ((b49 >> 1) & 1));
                                qt.y0(135, (b49 & 1) | (((b47 >> 1) & 1) << 8));
                                qt.y0(136, ((b47 & 1) << 8) | ((b50 >> 7) & 1));
                                qt.y0(137, (3 & (b50 >> 4)) | (((b48 >> 7) & 1) << 8));
                                qt.y0(138, (((b48 >> 6) & 1) << 8) | ((b50 >> 6) & 1));
                                qt.y0(139, (((b48 >> 5) & 1) << 8) | ((b50 >> 3) & 1));
                                qt.y0(167, ((b50 >> 2) & 1) | (((b48 >> 4) & 1) << 8));
                                break;
                            case 103:
                                byte b51 = bArr[i2 + 2];
                                byte b52 = bArr[i2 + 3];
                                qt.y0(140, (((b51 >> 7) & 1) << 8) | ((b52 >> 7) & 1));
                                qt.y0(141, (3 & (b52 >> 5)) | (((b51 >> 6) & 1) << 8));
                                qt.y0(186, ((b52 >> 2) & 1) | (((b51 >> 4) & 1) << 8));
                                break;
                            case 104:
                                byte b53 = bArr[i2 + 2];
                                byte b54 = bArr[i2 + 3];
                                byte b55 = bArr[i2 + 4];
                                byte b56 = bArr[i2 + 5];
                                byte b57 = bArr[i2 + 6];
                                byte b58 = bArr[i2 + 7];
                                byte b59 = bArr[i2 + 8];
                                byte b60 = bArr[i2 + 9];
                                byte b61 = bArr[i2 + 10];
                                byte b62 = bArr[i2 + 13];
                                byte b63 = bArr[i2 + 14];
                                byte b64 = bArr[i2 + 15];
                                byte b65 = bArr[i2 + 16];
                                qt.y0(184, b53 & 255);
                                qt.y0(168, ((b54 & 255) << 8) | (b55 & 255));
                                qt.y0(169, ((b56 & 255) << 8) | (b57 & 255));
                                qt.y0(170, ((b58 & 255) << 8) | (b59 & 255));
                                qt.y0(171, ((b60 & 255) << 8) | (b61 & 255));
                                qt.y0(172, b62 & 1);
                                qt.y0(173, (b62 >> 1) & 1);
                                qt.y0(174, (b62 >> 2) & 1);
                                qt.y0(175, b63 & 1);
                                qt.y0(176, (b63 >> 1) & 1);
                                qt.y0(177, (b63 >> 2) & 1);
                                qt.y0(178, b64 & 1);
                                qt.y0(179, (b64 >> 1) & 1);
                                qt.y0(180, (b64 >> 2) & 1);
                                qt.y0(181, b65 & 1);
                                qt.y0(182, (b65 >> 1) & 1);
                                qt.y0(183, (b65 >> 2) & 1);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10223s);
        z.c.f18184d.d(this.f10222r);
        qt.q0(l0.h0.f13058d);
        y0.g.f18094d.d(l0.h0.f13062h);
        y0.g.f18095e.d(l0.h0.f13062h);
        w0.e.f17815a.d(l0.h0.f13058d);
        u0.c.f17386m.d(this.f10220p);
        l0.b0.p0(this.f10221q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 198) {
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
            z.k.s(227, 2, 42, iArr[0], 0);
        }
        if (i2 == 96) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, 154, 1, iArr[0]);
            return;
        }
        switch (i2) {
            case 2:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 58, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 74, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 90, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 106, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 107, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 108, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 122, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 138, iArr[0], iArr[1]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 11:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 2, 186, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 12:
                        if (iArr != null && iArr.length > 0) {
                            l3(187, (byte) 32, iArr);
                            break;
                        }
                        break;
                    case 13:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 1, 202, iArr[0]);
                            break;
                        }
                        break;
                    case 14:
                        if (iArr != null && iArr.length > 1) {
                            if (iArr[0] == 1) {
                                m3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[1], 1, 0});
                            } else if (iArr[0] == 0) {
                                m3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[1], 0, 0});
                            }
                            if (iArr[0] == 1) {
                                z.k.s(227, 2, 61, iArr[1], 1);
                            } else if (iArr[0] == 0) {
                                z.k.s(227, 2, 61, iArr[1], 0);
                            }
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public final void b3(int i2) {
        byte b2 = (byte) i2;
        m3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
        m3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        z.k.s(227, 2, 61, i2, 1);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final void e3() {
        int i2 = (nt.f8633a >> 16) & 65535;
        if (i2 == 1) {
            this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
            m3(new byte[]{90, -91, 2, 36, 1, 0, 0});
            f3(32);
            return;
        }
        if (i2 == 2) {
            this.f7886a.f8318m = new int[]{34, 36, 37, 38, 39, 41};
            m3(new byte[]{90, -91, 2, 36, 2, 0, 0});
            f3(14);
            return;
        }
        if (i2 == 3) {
            this.f7886a.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41, 42};
            m3(new byte[]{90, -91, 2, 36, 3, 0, 0});
            f3(40);
            return;
        }
        if (i2 == 4) {
            this.f7886a.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41, 42};
            m3(new byte[]{90, -91, 2, 36, 4, 0, 0});
            f3(41);
            return;
        }
        if (i2 == 5) {
            this.f7886a.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41};
            m3(new byte[]{90, -91, 2, 36, 5, 0, 0});
            f3(42);
            return;
        }
        if (i2 == 7) {
            this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
            m3(new byte[]{90, -91, 2, 36, 6, 0, 0});
            f3(5);
            return;
        }
        if (i2 == 9) {
            this.f7886a.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41};
            f3(45);
        } else {
            this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
            m3(new byte[]{90, -91, 2, 36, 1, 0, 0});
            f3(32);
        }
    }

    public final void f3(int i2) {
        z.k.s(227, 2, 36, (byte) i2, 7);
    }

    public final boolean g3() {
        return n0.j4.f16464b == 3;
    }

    public final void h3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0) {
                break;
            }
            stringBuffer.append((char) bArr[i5]);
        }
        String string = stringBuffer.toString();
        if (string.equals(ProxyProperties.LOCAL_EXCL_LIST) || !qt.B0(161, string, this.f10226v)) {
            return;
        }
        this.f10226v = string;
    }

    public final void i3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0) {
                break;
            }
            stringBuffer.append((char) bArr[i5]);
        }
        String string = stringBuffer.toString();
        if (qt.B0(159, string, this.f10224t)) {
            this.f10224t = string;
        }
    }

    public final void j3(int i2) {
        int i3;
        qt.y0(148, i2);
        if (i2 == 0) {
            if (this.f10207c == 1 && (i3 = this.f10208d) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f10207c = 0;
            this.f10206b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f10207c != 0) {
                if (i4 == 0 || this.f10207c != 0) {
                    return;
                }
                z.k.s(227, 2, 186, 3, 0);
                return;
            }
            this.f10207c = 1;
            this.f10208d = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f10207c != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.klc.KlcOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void k3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0) {
                break;
            }
            stringBuffer.append((char) bArr[i5]);
        }
        String string = stringBuffer.toString();
        if (string.equals(ProxyProperties.LOCAL_EXCL_LIST) || !qt.B0(160, string, this.f10225u)) {
            return;
        }
        this.f10225u = string;
    }

    public final void l3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 3;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = b2;
        iArr2[2] = (byte) i2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        z.k.s(iArr2);
    }
}
