package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class h0 extends lt {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static Runnable f5697z = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5703g;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f5714r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f5715s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f5716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f5717u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f5718v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f5720x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f5721y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5698b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5699c = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5704h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5705i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5706j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5707k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5708l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f5709m = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{132, 13}, new int[]{133, 18}, new int[]{134, 26}, new int[]{135, -1}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{139, 34}, new int[]{140, 35}, new int[]{141, 25}, new int[]{142, 1}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 13}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 55}, new int[]{19, 56}, new int[]{20, 1}, new int[]{21, 39}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 35}, new int[]{29, 32}, new int[]{30, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{34, 6}, new int[]{35, 15}, new int[]{36, 54}, new int[]{37, 1}, new int[]{38, 38}, new int[]{39, 1}, new int[]{40, 18}, new int[]{41, 1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5710n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5711o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f5712p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5713q = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Boolean f5719w = Boolean.FALSE;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            h0.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(h0.this.f5712p);
            h0 h0Var = h0.this;
            h0Var.f5707k = 0;
            h0Var.f5708l = 0;
            h0Var.f5710n = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x004f  */
        /* JADX WARN: Code duplicated, block: B:25:0x006a A[FALL_THROUGH] */
        /* JADX WARN: Code duplicated, block: B:27:0x007c  */
        /* JADX WARN: Code duplicated, block: B:29:0x008e  */
        @Override // java.lang.Runnable
        public void run() {
            h0 h0Var = h0.this;
            int i2 = h0Var.f5710n - 1;
            h0Var.f5710n = i2;
            if (i2 <= 0) {
                l0.b0.p0(h0Var.f5712p);
                h0.this.f5710n = 5;
            }
            int i3 = nt.f8637c;
            if (i3 == 30 || i3 == 31) {
                z.k.s(227, 2, 42, 5, 0);
            } else if (i3 == 71) {
                z.k.s(227, 2, 42, 12, 0);
            } else if (i3 != 72 && i3 != 89 && i3 != 90) {
                switch (i3) {
                    case 6:
                        z.k.s(227, 2, 42, 7, 0);
                        break;
                    case 24:
                    case 26:
                    case 92:
                        z.k.s(227, 2, 42, 1, 0);
                        break;
                    case 48:
                        z.k.s(227, 2, 42, 9, 0);
                        break;
                    case 64:
                        z.k.s(227, 2, 42, 11, 0);
                        break;
                    case 74:
                    case 77:
                    case 79:
                    case 85:
                    case 110:
                        z.k.s(227, 2, 42, 16, 0);
                        break;
                    case 98:
                        z.k.s(227, 2, 42, 2, 0);
                        break;
                    default:
                        switch (i3) {
                            case 12:
                            case 17:
                                z.k.s(227, 2, 42, 2, 0);
                                break;
                            case 13:
                                z.k.s(227, 2, 42, 8, 0);
                                break;
                            case 14:
                            case 15:
                                z.k.s(227, 2, 42, 5, 0);
                                break;
                            default:
                                switch (i3) {
                                    default:
                                        switch (i3) {
                                            case 39:
                                            case 40:
                                            case 41:
                                                z.k.s(227, 2, 42, 6, 0);
                                                break;
                                            default:
                                                switch (i3) {
                                                    case 100:
                                                    case 101:
                                                    case 102:
                                                    case 103:
                                                        break;
                                                    default:
                                                        z.k.s(227, 2, 42, 0, 0);
                                                        break;
                                                }
                                                break;
                                        }
                                    case 19:
                                    case 20:
                                    case 21:
                                        z.k.s(227, 2, 42, 1, 0);
                                        break;
                                }
                            case 16:
                                z.k.s(227, 2, 42, 1, 0);
                                break;
                        }
                        break;
                }
            } else {
                z.k.s(227, 2, 42, 16, 0);
            }
            int i4 = nt.f8637c;
            if (i4 == 89) {
                z.k.s(227, 2, 36, 54, 7);
                return;
            }
            if (i4 == 90) {
                z.k.s(227, 2, 36, 55, 7);
                return;
            }
            if (i4 == 112) {
                z.k.s(227, 2, 36, 49, 7);
                return;
            }
            switch (i4) {
                case 97:
                    z.k.s(227, 2, 36, 1, 7);
                    break;
                case 98:
                    z.k.s(227, 2, 36, 5, 7);
                    break;
                case 99:
                    z.k.s(227, 2, 36, 14, 7);
                    break;
                case 100:
                    z.k.s(227, 2, 36, 42, 7);
                    break;
                case 101:
                    z.k.s(227, 2, 36, 45, 7);
                    break;
                case 102:
                    z.k.s(227, 2, 36, 40, 7);
                    break;
                case 103:
                    z.k.s(227, 2, 36, 41, 7);
                    break;
                default:
                    switch (i4) {
                        case 105:
                            z.k.s(227, 2, 36, 50, 7);
                            break;
                        case 106:
                            z.k.s(227, 2, 36, 48, 7);
                            break;
                        case 107:
                            z.k.s(227, 2, 36, 51, 7);
                            break;
                        case 108:
                            z.k.s(227, 2, 36, 53, 7);
                            break;
                    }
                    break;
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

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0 h0Var = h0.this;
            h0Var.f3(h0Var.f5717u);
        }
    }

    public static void a3() {
        int[] iArr = new int[16];
        for (int i2 = 0; i2 < 16; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 14;
        iArr[1] = 145;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[3] = 2;
        } else {
            iArr[3] = 0;
        }
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[4] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                iArr[5] = ((i5 % 10000) / 1000) + 48;
                iArr[6] = ((i5 % 1000) / 100) + 48;
                iArr[7] = 46;
                iArr[8] = ((i5 % 100) / 10) + 48;
                iArr[9] = (i5 % 10) + 48;
                iArr[10] = 77;
                iArr[11] = 104;
                iArr[12] = 122;
            } else {
                int i6 = w0.d.f17797i;
                iArr[4] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[5] = (i6 % 10000) / 1000 == 0 ? ((i6 % 10000) / 1000) + 32 : ((i6 % 10000) / 1000) + 48;
                iArr[6] = ((i6 % 1000) / 100) + 48;
                iArr[7] = ((i6 % 100) / 10) + 48;
                iArr[8] = (i6 % 10) + 48;
                iArr[9] = 75;
                iArr[10] = 104;
                iArr[11] = 122;
            }
        } else if (i3 != 4) {
            if (i3 == 6) {
                int i7 = d1.d.f1572e;
                if (i7 / 10 > 0) {
                    iArr[4] = (i7 / 10) + 48;
                }
                iArr[5] = (i7 % 10) + 48;
                iArr[6] = 45;
                int i8 = d1.d.f1571d / 100;
                int i9 = i8 / 10000;
                if (i9 > 0) {
                    iArr[7] = i9 + 48;
                }
                iArr[8] = ((i8 % 10000) / 1000) + 48;
                iArr[9] = ((i8 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i8 % 100) / 10) + 48;
                iArr[12] = ((i8 % 10) / 1) + 48;
                iArr[13] = 77;
                iArr[14] = 104;
                iArr[1] = 122;
            } else if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                int i10 = u0.b.r3 % 10000;
                iArr[4] = (i10 / 1000) + 48;
                int i11 = (i10 % 100) / 10;
                int i12 = i10 % 1000;
                if (i11 != 0) {
                    i12 /= 10;
                }
                iArr[5] = i12 + 48;
                iArr[6] = i11 + 48;
                iArr[7] = (i10 % 10) + 48;
                int i13 = u0.b.t3;
                int i14 = (i13 / 60) % 60;
                iArr[8] = 32;
                iArr[9] = (i14 / 10) + 48;
                iArr[10] = (i14 % 10) + 48;
                iArr[11] = 32;
                int i15 = i13 % 60;
                iArr[12] = (i15 / 10) + 48;
                iArr[13] = (i15 % 10) + 48;
            }
        } else if (o0.e.C != 0) {
            int i16 = o0.e.B % 10000;
            iArr[4] = (i16 / 1000) + 48;
            int i17 = (i16 % 100) / 10;
            int i18 = i16 % 1000;
            if (i17 != 0) {
                i18 /= 10;
            }
            iArr[5] = i18 + 48;
            iArr[6] = i17 + 48;
            iArr[7] = (i16 % 10) + 48;
            int i19 = o0.e.f16794r;
            int i20 = (i19 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i20 / 10) + 48;
            iArr[10] = (i20 % 10) + 48;
            iArr[11] = 32;
            int i21 = i19 % 60;
            iArr[12] = (i21 / 10) + 48;
            iArr[13] = (i21 % 10) + 48;
        }
        int[] iArr2 = new int[17];
        int i22 = 0;
        iArr2[0] = 227;
        while (i22 < 16) {
            int i23 = i22 + 1;
            iArr2[i23] = (byte) iArr[i22];
            i22 = i23;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
            case 9:
            default:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 == 0) {
                        b2 = 4;
                    } else if (1 != i2 - 0) {
                        b2 = 0;
                    } else {
                        b2 = 5;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 6;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static int c3(int i2) {
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
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        if (nt.f8637c == 9) {
            mtVar.f8314i = 0;
            qt.z(f5697z);
        }
        qt.z(l0.h0.f13058d);
        y0.g.f18095e.a(l0.h0.f13062h, 0);
        w0.e.f17815a.a(l0.h0.f13058d, 1);
        w0.e.f17819e.a(l0.h0.f13058d, 1);
        u0.c.f17386m.a(this.f5711o, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            qt.z(this.f5713q);
            this.f7886a.f8314i = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:200:0x0624  */
    /* JADX WARN: Code duplicated, block: B:214:0x065a  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int[][] iArr;
        int[][] iArr2;
        int i12;
        byte b2 = bArr[i2 + 1];
        if (b2 == -123) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            qt.y0(145, (((b3 >> 7) & 1) << 8) | ((b4 >> 7) & 1));
            qt.y0(146, (((b3 >> 6) & 1) << 8) | ((b4 >> 6) & 1));
            return;
        }
        if (b2 == -90) {
            qt.y0(213, bArr[i2 + 2]);
            qt.y0(214, bArr[i2 + 3]);
            qt.y0(215, bArr[i2 + 4]);
            qt.y0(216, bArr[i2 + 5]);
            qt.y0(217, bArr[i2 + 6]);
            qt.y0(218, bArr[i2 + 7]);
            return;
        }
        if (b2 == -79) {
            if (h3()) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            if (nt.R == 0) {
                return;
            }
            l3(b5 & 255);
            qt.y0(149, b6 & 255);
            qt.y0(150, b7 & 1);
            return;
        }
        if (b2 == -78) {
            if (h3()) {
                return;
            }
            byte b8 = bArr[i2 + 2];
            byte b9 = bArr[i2 + 3];
            byte b10 = bArr[i2 + 4];
            byte b11 = bArr[i2 + 5];
            byte b12 = bArr[i2 + 6];
            byte b13 = bArr[i2 + 7];
            byte b14 = bArr[i2 + 8];
            byte b15 = bArr[i2 + 9];
            byte b16 = bArr[i2 + 10];
            qt.y0(151, b8 & 255);
            qt.y0(152, b9 & 255);
            qt.y0(153, b10 & 255);
            qt.y0(154, ((b11 & 255) << 8) | (b12 & 255));
            qt.y0(155, ((b13 & 255) << 8) | (b14 & 255));
            qt.y0(156, b15 & 255);
            qt.y0(157, b16 & 255);
            return;
        }
        if (b2 == -77) {
            if (h3()) {
                return;
            }
            byte b17 = bArr[i2 + 2];
            qt.y0(158, (b17 & 127) | (((b17 >> 7) & 1) << 8));
            return;
        }
        if (b2 == -76) {
            if (h3()) {
                return;
            }
            j3(bArr, i2 + 2, i3 - 2);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            if (qt.k0()) {
                int i13 = i2 + 4;
                l0.c0.N1((bArr[i13] >> 0) & 1, (bArr[i13] >> 1) & 1, (bArr[i13] >> 2) & 1);
            }
            int i14 = i2 + 4;
            o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i14] >> 1) & 1) << 4) & 16) | ((((bArr[i14] >> 0) & 1) << 3) & 8) | ((u0.b.f17366w << 6) & 64)}, null, null);
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(c3(bArr[i2 + 2] & 255));
                u0.d.S2(c3(bArr[i2 + 3] & 255));
                u0.d.T2(c3(bArr[i2 + 4] & 255));
                u0.d.U2(c3(bArr[i2 + 5] & 255));
                u0.d.D2(c3(bArr[i2 + 6] & 255));
                u0.d.E2(c3(bArr[i2 + 7] & 255));
                u0.d.F2(c3(bArr[i2 + 8] & 255));
                u0.d.G2(c3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 117) {
            byte b18 = bArr[i2 + 2];
            byte b19 = bArr[i2 + 3];
            qt.y0(142, (((b18 >> 7) & 1) << 8) | ((b19 >> 7) & 1));
            qt.y0(143, (((b18 >> 6) & 1) << 8) | ((b19 >> 6) & 1));
            qt.y0(144, ((b19 >> 5) & 1) | (((b18 >> 5) & 1) << 8));
            qt.y0(212, (b18 >> 3) & 1);
            return;
        }
        if (b2 == -68) {
            if (h3()) {
                return;
            }
            qt.y0(192, bArr[i2 + 2] & 255);
            m3(bArr, i2 + 3, i3 - 3);
            return;
        }
        if (b2 == -67) {
            if (h3()) {
                return;
            }
            k3(bArr, i2 + 2, i3 - 2);
            return;
        }
        if (b2 == -62) {
            if (h3()) {
                return;
            }
            n3(bArr, i2 + 2, i3 - 2);
            return;
        }
        if (b2 != -61) {
            if (b2 != 49) {
                if (b2 == 50) {
                    int i15 = i2 + 4;
                    int i16 = i2 + 5;
                    qt.y0(169, ((bArr[i15] << 8) & 65280) | (bArr[i16] & 255));
                    qt.y0(1032, ((bArr[i15] << 8) & 65280) | (bArr[i16] & 255));
                    int i17 = i2 + 6;
                    int i18 = i2 + 7;
                    qt.y0(168, ((bArr[i17] << 8) & 65280) | (bArr[i18] & 255));
                    qt.y0(110, ((bArr[i17] << 8) & 65280) | (bArr[i18] & 255));
                    qt.y0(225, bArr[i2 + 9] & 255);
                    qt.y0(226, bArr[i2 + 10] & 255);
                    qt.y0(227, bArr[i2 + 11] & 255);
                    qt.y0(228, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                    qt.y0(229, bArr[i2 + 14] & 255);
                    qt.y0(230, bArr[i2 + 15] & 255);
                } else if (b2 == 52) {
                    qt.y0(106, ((bArr[i2 + 2] << 8) & 65280) | ((bArr[i2 + 3] << 0) & 255));
                    qt.y0(202, ((bArr[i2 + 4] << 8) & 65280) | ((bArr[i2 + 5] << 0) & 255));
                    qt.y0(196, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
                    qt.y0(203, ((bArr[i2 + 9] << 8) & 65280) | ((bArr[i2 + 10] << 0) & 255));
                    qt.y0(231, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
                    qt.y0(232, ((bArr[i2 + 14] << 8) & 65280) | ((bArr[i2 + 15] << 0) & 255));
                    qt.y0(233, ((bArr[i2 + 16] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 17] << 8) & 65280) | ((bArr[i2 + 18] << 0) & 255));
                    qt.y0(234, ((bArr[i2 + 19] << 8) & 65280) | ((bArr[i2 + 20] << 0) & 255));
                    qt.y0(235, ((bArr[i2 + 21] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 22] << 8) & 65280) | ((bArr[i2 + 23] << 0) & 255));
                    int i19 = i2 + 24;
                    qt.y0(236, (bArr[i19] >> 2) & 1);
                    qt.y0(237, (bArr[i19] >> 0) & 3);
                } else if (b2 == 53) {
                    byte b20 = (byte) (bArr[i2 + 2] & 255);
                    byte b21 = (byte) (bArr[i2 + 3] & 255);
                    byte b22 = (byte) (bArr[i2 + 4] & 255);
                    byte b23 = (byte) (bArr[i2 + 5] & 255);
                    byte b24 = (byte) (bArr[i2 + 6] & 255);
                    qt.y0(97, (((b20 >> 7) & 1) << 8) | ((b22 >> 6) & 3));
                    qt.y0(98, (((b20 >> 6) & 1) << 8) | ((b22 >> 4) & 3));
                    qt.y0(99, (((b20 >> 5) & 1) << 8) | ((b22 >> 2) & 3));
                    qt.y0(101, (b22 & 3) | (((b20 >> 4) & 1) << 8));
                    qt.y0(102, (((b20 >> 3) & 1) << 8) | ((b23 >> 7) & 1));
                    qt.y0(103, (((b20 >> 2) & 1) << 8) | ((b23 >> 6) & 1));
                    qt.y0(104, (((b20 >> 1) & 1) << 8) | ((b23 >> 5) & 1));
                    qt.y0(105, ((b20 & 1) << 8) | ((b23 >> 4) & 1));
                    qt.y0(107, (((b21 >> 7) & 1) << 8) | ((b23 >> 2) & 3));
                    qt.y0(108, (((b21 >> 6) & 1) << 8) | ((b23 >> 1) & 1));
                    qt.y0(109, (b23 & 1) | (((b21 >> 5) & 1) << 8));
                    qt.y0(111, (((b21 >> 4) & 1) << 8) | ((b24 >> 7) & 1));
                    qt.y0(100, (((b21 >> 3) & 1) << 8) | ((b24 >> 5) & 3));
                    qt.y0(165, (3 & (b24 >> 3)) | (((b21 >> 2) & 1) << 8));
                    qt.y0(198, ((b24 >> 2) & 1) | (((b21 >> 1) & 1) << 8));
                } else if (b2 == 69) {
                    byte b25 = bArr[i2 + 2];
                    byte b26 = bArr[i2 + 3];
                    qt.y0(112, (((b25 >> 7) & 1) << 8) | ((b26 >> 7) & 1));
                    qt.y0(113, (((b25 >> 6) & 1) << 8) | ((b26 >> 6) & 1));
                    qt.y0(114, (((b25 >> 5) & 1) << 8) | ((b26 >> 5) & 1));
                    qt.y0(115, (((b25 >> 4) & 1) << 8) | ((b26 >> 3) & 3));
                    qt.y0(116, (((b25 >> 3) & 1) << 8) | ((b26 >> 2) & 1));
                    qt.y0(163, (b26 & 3) | (((b25 >> 2) & 1) << 8));
                } else if (b2 == 70) {
                    byte b27 = bArr[i2 + 2];
                    byte b28 = bArr[i2 + 3];
                    qt.y0(164, (((b27 >> 7) & 1) << 8) | ((b28 >> 7) & 1));
                    qt.y0(170, (((b27 >> 6) & 1) << 8) | ((b28 >> 6) & 1));
                    qt.y0(171, (((b27 >> 5) & 1) << 8) | ((b28 >> 5) & 1));
                    qt.y0(199, (((b27 >> 4) & 1) << 8) | ((b28 >> 3) & 3));
                    qt.y0(200, (((b27 >> 3) & 1) << 8) | ((b28 >> 2) & 1));
                    qt.y0(206, (((b27 >> 2) & 1) << 8) | ((b28 >> 1) & 1));
                    qt.y0(207, ((b28 >> 0) & 1) | (((b27 >> 1) & 1) << 8));
                    qt.y0(208, ((bArr[i2 + 4] >> 0) & 3) | (((b27 >> 0) & 1) << 8));
                } else if (b2 == 85) {
                    byte b29 = bArr[i2 + 2];
                    byte b30 = bArr[i2 + 3];
                    qt.y0(117, (((b29 >> 7) & 1) << 8) | ((b30 >> 7) & 1));
                    qt.y0(118, (3 & (b30 >> 5)) | (((b29 >> 6) & 1) << 8));
                    qt.y0(119, (((b29 >> 5) & 1) << 8) | ((b30 >> 4) & 1));
                    qt.y0(120, (((b29 >> 4) & 1) << 8) | ((b30 >> 3) & 1));
                    qt.y0(121, (((b29 >> 3) & 1) << 8) | ((b30 >> 2) & 1));
                    qt.y0(122, (((b29 >> 2) & 1) << 8) | ((b30 >> 1) & 1));
                    qt.y0(123, (b30 & 1) | (((b29 >> 1) & 1) << 8));
                } else if (b2 != 86) {
                    switch (b2) {
                        case 17:
                            int i20 = i2 + 2;
                            if ((bArr[i20] & 2) != 0) {
                                qt.b(1);
                            } else {
                                qt.b(0);
                            }
                            qt.y0(194, (bArr[i20] >> 3) & 1);
                            if (u0.b.f17341m == 1) {
                                u0.b.f17338l = (bArr[i20] >> 3) & 1;
                                u0.d.x0((bArr[i20] >> 3) & 1);
                            }
                            byte b31 = bArr[i2 + 5];
                            this.f5702f = (bArr[i2 + 4] & 255) | 128;
                            int i21 = 0;
                            while (true) {
                                iArr = this.f5709m;
                                if (i21 < iArr.length) {
                                    int i22 = this.f5702f;
                                    if (i22 != iArr[i21][0]) {
                                        i21++;
                                    } else if (i22 != 0) {
                                        this.f5701e = i21;
                                    }
                                }
                            }
                            int i23 = this.f5702f;
                            if (i23 == 131) {
                                if ((b31 & 255) == 1 || this.f5705i != 0) {
                                    this.f5705i = 0;
                                } else {
                                    int i24 = h0.c.E;
                                    if (i24 == 3 || i24 == 4 || i24 == 5 || u0.i.l3().r3()) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                    this.f5705i = 1;
                                }
                            } else if (i23 != 132) {
                                if (i23 != 134) {
                                    if ((b31 & 255) == 0 || this.f5705i != 0) {
                                        int i25 = this.f5701e;
                                        if (i25 < iArr.length && i25 != 255) {
                                            l0.b0.l0(iArr[i25][1], 1);
                                        }
                                        this.f5701e = 255;
                                        this.f5705i = 0;
                                    } else if (i21 < iArr.length) {
                                        l0.b0.l0(iArr[i21][1], 0);
                                        this.f5705i = 1;
                                    }
                                } else if ((b31 & 255) == 1) {
                                    this.f5705i = 0;
                                } else {
                                    this.f5705i = 0;
                                }
                            } else if ((b31 & 255) == 1 && this.f5705i == 0) {
                                int i26 = h0.c.E;
                                if (i26 == 3 || i26 == 4 || i26 == 5 || u0.i.l3().r3()) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else {
                                    l0.b0.l0(13, 0);
                                    l0.b0.l0(13, 1);
                                }
                                this.f5705i = 1;
                            } else {
                                this.f5705i = 0;
                            }
                            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                            break;
                        case 18:
                            int i27 = bArr[i2 + 4] & 255;
                            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                qt.y0(1, (i27 >> 6) & 1);
                                qt.y0(2, (i27 >> 7) & 1);
                            } else {
                                qt.y0(1, (i27 >> 7) & 1);
                                qt.y0(2, (i27 >> 6) & 1);
                            }
                            qt.y0(3, (i27 >> 5) & 1);
                            qt.y0(4, (i27 >> 4) & 1);
                            qt.y0(5, (i27 >> 3) & 1);
                            qt.y0(0, (i27 >> 2) & 1);
                            int i28 = i2 + 8;
                            qt.y0(219, (bArr[i28] >> 7) & 1);
                            qt.y0(220, (bArr[i28] >> 6) & 1);
                            qt.y0(221, (bArr[i28] >> 3) & 1);
                            qt.y0(222, (bArr[i28] >> 2) & 1);
                            qt.y0(223, (bArr[i28] >> 1) & 1);
                            qt.y0(224, (bArr[i28] >> 0) & 1);
                            break;
                        case 19:
                            qt.y0(204, ((bArr[i2 + 6] << 8) & 65280) | ((bArr[i2 + 7] << 0) & 255));
                            qt.y0(205, ((bArr[i2 + 15] << 0) & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280));
                            break;
                        default:
                            switch (b2) {
                                case 33:
                                    this.f5703g = bArr[i2 + 2] & 255;
                                    byte b32 = bArr[i2 + 3];
                                    int i29 = 0;
                                    while (true) {
                                        iArr2 = this.f5709m;
                                        if (i29 < iArr2.length) {
                                            int i30 = this.f5703g;
                                            if (i30 != iArr2[i29][0]) {
                                                i29++;
                                            } else if (i30 != 0) {
                                                this.f5704h = i29;
                                            }
                                        }
                                    }
                                    if ((b32 & 255) == 0 || this.f5706j != 0) {
                                        int i31 = this.f5704h;
                                        if (i31 < iArr2.length && i31 != 255) {
                                            l0.b0.l0(iArr2[i31][1], 1);
                                        }
                                        this.f5704h = 255;
                                        this.f5706j = 0;
                                    } else if (i29 < iArr2.length) {
                                        l0.b0.l0(iArr2[i29][1], 0);
                                        this.f5706j = 1;
                                    }
                                    break;
                                case 34:
                                    if (nt.a()) {
                                        if (nt.f8637c == 10) {
                                            byte b33 = bArr[i2 + 2];
                                            byte b34 = bArr[i2 + 3];
                                            if (b33 == 1) {
                                                int i32 = this.f5707k;
                                                if (b34 != i32) {
                                                    if (b34 > i32) {
                                                        for (int i33 = 0; i33 < b34 - this.f5707k; i33++) {
                                                            l0.b0.l0(7, 0);
                                                        }
                                                        l0.b0.l0(7, 1);
                                                    } else if (b34 < i32) {
                                                        for (int i34 = 0; i34 < this.f5707k - b34; i34++) {
                                                            l0.b0.l0(8, 0);
                                                        }
                                                        l0.b0.l0(8, 1);
                                                    }
                                                    this.f5707k = b34;
                                                }
                                            } else if ((b33 == 2 || b33 == 3) && b34 != (i12 = this.f5708l)) {
                                                if (b34 > i12) {
                                                    for (int i35 = 0; i35 < b34 - this.f5708l; i35++) {
                                                        l0.b0.l0(31, 0);
                                                    }
                                                    l0.b0.l0(31, 1);
                                                } else if (b34 < i12) {
                                                    for (int i36 = 0; i36 < this.f5708l - b34; i36++) {
                                                        l0.b0.l0(30, 0);
                                                    }
                                                    l0.b0.l0(30, 1);
                                                }
                                                this.f5708l = b34;
                                            }
                                        } else {
                                            byte b35 = bArr[i2 + 2];
                                            byte b36 = bArr[i2 + 3];
                                            if (b35 != 1) {
                                                if (b35 == 2 && b36 != 0) {
                                                    if (b36 > 0) {
                                                        for (int i37 = 0; i37 < b36 + 0; i37++) {
                                                            l0.b0.l0(31, 0);
                                                        }
                                                        l0.b0.l0(31, 1);
                                                    } else if (b36 < 0) {
                                                        for (int i38 = 0; i38 < 0 - b36; i38++) {
                                                            l0.b0.l0(30, 0);
                                                        }
                                                        l0.b0.l0(30, 1);
                                                    }
                                                }
                                            } else if (b36 != 0) {
                                                if (b36 > 0) {
                                                    for (int i39 = 0; i39 < b36 + 0; i39++) {
                                                        l0.b0.l0(7, 0);
                                                    }
                                                    l0.b0.l0(7, 1);
                                                } else if (b36 < 0) {
                                                    for (int i40 = 0; i40 < 0 - b36; i40++) {
                                                        l0.b0.l0(8, 0);
                                                    }
                                                    l0.b0.l0(8, 1);
                                                }
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
                                            byte b37 = bArr[i2 + 2];
                                            byte b38 = bArr[i2 + 3];
                                            qt.y0(124, (((b37 >> 7) & 1) << 8) | ((b38 >> 7) & 1));
                                            qt.y0(125, (((b37 >> 6) & 1) << 8) | ((b38 >> 6) & 1));
                                            qt.y0(126, (3 & (b38 >> 4)) | (((b37 >> 5) & 1) << 8));
                                            qt.y0(127, (((b37 >> 4) & 1) << 8) | ((b38 >> 3) & 1));
                                            qt.y0(128, (((b37 >> 3) & 1) << 8) | (b38 & 3));
                                            qt.y0(189, ((b38 >> 2) & 1) | (((b37 >> 2) & 1) << 8));
                                            break;
                                        case 102:
                                            byte b39 = bArr[i2 + 2];
                                            byte b40 = bArr[i2 + 3];
                                            byte b41 = bArr[i2 + 4];
                                            byte b42 = bArr[i2 + 5];
                                            qt.y0(129, (((b39 >> 7) & 1) << 8) | ((b41 >> 6) & 3));
                                            qt.y0(130, (((b39 >> 6) & 1) << 8) | ((b41 >> 5) & 1));
                                            qt.y0(131, (((b39 >> 5) & 1) << 8) | ((b41 >> 4) & 1));
                                            qt.y0(132, (((b39 >> 4) & 1) << 8) | ((b41 >> 3) & 1));
                                            qt.y0(133, (((b39 >> 3) & 1) << 8) | ((b41 >> 2) & 1));
                                            qt.y0(134, (((b39 >> 2) & 1) << 8) | ((b41 >> 1) & 1));
                                            qt.y0(135, (b41 & 1) | (((b39 >> 1) & 1) << 8));
                                            qt.y0(136, ((b39 & 1) << 8) | ((b42 >> 7) & 1));
                                            qt.y0(137, (3 & (b42 >> 4)) | (((b40 >> 7) & 1) << 8));
                                            qt.y0(138, (((b40 >> 6) & 1) << 8) | ((b42 >> 6) & 1));
                                            qt.y0(139, (((b40 >> 5) & 1) << 8) | ((b42 >> 3) & 1));
                                            qt.y0(167, ((b42 >> 2) & 1) | (((b40 >> 4) & 1) << 8));
                                            break;
                                        case 103:
                                            byte b43 = bArr[i2 + 2];
                                            byte b44 = bArr[i2 + 3];
                                            qt.y0(140, (((b43 >> 7) & 1) << 8) | ((b44 >> 7) & 1));
                                            qt.y0(141, (3 & (b44 >> 5)) | (((b43 >> 6) & 1) << 8));
                                            qt.y0(190, ((b44 >> 2) & 1) | (((b43 >> 4) & 1) << 8));
                                            break;
                                        case 104:
                                            byte b45 = bArr[i2 + 2];
                                            byte b46 = bArr[i2 + 3];
                                            byte b47 = bArr[i2 + 4];
                                            byte b48 = bArr[i2 + 5];
                                            byte b49 = bArr[i2 + 6];
                                            byte b50 = bArr[i2 + 7];
                                            byte b51 = bArr[i2 + 8];
                                            byte b52 = bArr[i2 + 9];
                                            byte b53 = bArr[i2 + 10];
                                            byte b54 = bArr[i2 + 13];
                                            byte b55 = bArr[i2 + 14];
                                            byte b56 = bArr[i2 + 15];
                                            byte b57 = bArr[i2 + 16];
                                            qt.y0(188, b45 & 255);
                                            qt.y0(172, ((b46 & 255) << 8) | (b47 & 255));
                                            qt.y0(173, ((b48 & 255) << 8) | (b49 & 255));
                                            qt.y0(174, ((b50 & 255) << 8) | (b51 & 255));
                                            qt.y0(175, ((b52 & 255) << 8) | (b53 & 255));
                                            qt.y0(176, b54 & 1);
                                            qt.y0(177, (b54 >> 1) & 1);
                                            qt.y0(178, (b54 >> 2) & 1);
                                            qt.y0(179, b55 & 1);
                                            qt.y0(180, (b55 >> 1) & 1);
                                            qt.y0(181, (b55 >> 2) & 1);
                                            qt.y0(182, b56 & 1);
                                            qt.y0(183, (b56 >> 1) & 1);
                                            qt.y0(184, (b56 >> 2) & 1);
                                            qt.y0(185, b57 & 1);
                                            qt.y0(186, (b57 >> 1) & 1);
                                            qt.y0(187, (b57 >> 2) & 1);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    byte b58 = bArr[i2 + 2];
                    byte b59 = bArr[i2 + 3];
                    qt.y0(166, (((b58 >> 7) & 1) << 8) | ((b59 >> 7) & 1));
                    qt.y0(201, (((b58 >> 6) & 1) << 8) | ((b59 >> 6) & 1));
                    qt.y0(209, (((b58 >> 5) & 1) << 8) | ((b59 >> 3) & 3));
                    qt.y0(210, (((b58 >> 4) & 1) << 8) | ((b59 >> 2) & 1));
                    qt.y0(211, ((b59 >> 0) & 3) | (((b58 >> 3) & 1) << 8));
                }
                return;
            }
            byte b60 = bArr[i2 + 2];
            byte b61 = bArr[i2 + 3];
            byte b62 = bArr[i2 + 4];
            byte b63 = bArr[i2 + 6];
            byte b64 = bArr[i2 + 7];
            byte b65 = bArr[i2 + 10];
            byte b66 = bArr[i2 + 11];
            byte b67 = bArr[i2 + 12];
            qt.y0(10, (b60 >> 6) & 1);
            qt.y0(42, (b60 >> 5) & 1);
            qt.y0(69, (b60 >> 4) & 1);
            qt.y0(62, (b60 >> 2) & 1);
            qt.y0(11, b60 & 3);
            qt.y0(32, (b61 >> 7) & 1);
            qt.y0(31, (b61 >> 6) & 1);
            qt.y0(34, (b61 >> 5) & 1);
            qt.y0(12, (b61 >> 4) & 1);
            qt.y0(36, (b61 >> 3) & 1);
            qt.y0(67, (b61 >> 1) & 1);
            qt.y0(80, (b61 >> 0) & 1);
            int i41 = (b62 >> 7) & 1;
            qt.y0(37, i41);
            qt.y0(33, (b62 >> 6) & 1);
            qt.y0(16, (b62 >> 5) & 1);
            qt.y0(15, (b62 >> 4) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(30, (b62 >> 0) & 3);
                qt.y0(29, (b62 >> 2) & 3);
            } else {
                qt.y0(30, (b62 >> 2) & 3);
                qt.y0(29, (b62 >> 0) & 3);
            }
            int i42 = i2 + 5;
            qt.y0(95, (bArr[i42] >> 6) & 1);
            qt.y0(96, (bArr[i42] >> 7) & 1);
            qt.y0(88, (bArr[i42] >> 4) & 3);
            qt.y0(89, (bArr[i42] >> 2) & 3);
            int i43 = b63 & 255;
            if (i43 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
            } else if (i43 == 2) {
                i8 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i4 = 1;
            } else if (i43 != 3) {
                if (i43 == 5) {
                    i4 = 0;
                    i8 = 0;
                    i5 = 0;
                    i6 = 1;
                } else if (i43 != 6) {
                    switch (i43) {
                        case 11:
                            i4 = 0;
                            i8 = 0;
                            i6 = 0;
                            i7 = 0;
                            i5 = 1;
                            break;
                        case 12:
                            i4 = 0;
                            i8 = 0;
                            i6 = 0;
                            i5 = 1;
                            i7 = 1;
                            break;
                        case 13:
                            i4 = 0;
                            i8 = 0;
                            i7 = 0;
                            i5 = 1;
                            i6 = 1;
                            break;
                        case 14:
                            i4 = 0;
                            i8 = 0;
                            i5 = 1;
                            i6 = i5;
                            break;
                        default:
                            i4 = 0;
                            i8 = 0;
                            i5 = 0;
                            i6 = i5;
                            break;
                    }
                } else {
                    i4 = 0;
                    i8 = 0;
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                }
                i7 = i6;
            } else {
                i4 = 0;
                i8 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            }
            qt.y0(65, i4);
            qt.y0(77, i43);
            qt.y0(49, i8);
            qt.y0(18, i5);
            qt.y0(19, i6);
            qt.y0(20, i7);
            int i44 = b64 & 255;
            if (i44 < 0) {
                i44 = 0;
            } else if (i44 > 19) {
                i44 = 19;
            }
            qt.y0(21, i44);
            int i45 = i2 + 8;
            byte b68 = bArr[i45];
            int i46 = i2 + 9;
            byte b69 = bArr[i46];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b68 = bArr[i46];
                b69 = bArr[i45];
            }
            int i47 = b68 & 255;
            if (i47 == 254 || i47 != 255) {
                qt.y0(27, i47);
            } else {
                qt.y0(27, i47);
            }
            int i48 = b69 & 255;
            if (i48 == 254 || i48 != 255) {
                qt.y0(28, i48);
            } else {
                qt.y0(28, i48);
            }
            int i49 = b65 & 255;
            if (i49 == 1) {
                i9 = 0;
                i10 = 0;
                i11 = 1;
            } else if (i49 != 2) {
                if (i49 == 3) {
                    i11 = 0;
                    i9 = 1;
                } else if (i49 != 4) {
                    i11 = 0;
                    i9 = 0;
                } else {
                    i11 = 0;
                    i10 = 0;
                    i9 = 1;
                }
                i10 = i9;
            } else {
                i11 = 0;
                i9 = 0;
                i10 = 1;
            }
            qt.y0(43, i11);
            qt.y0(46, i9);
            qt.y0(47, i10);
            qt.y0(86, i49);
            qt.y0(44, b66 & 255);
            int i50 = b67 & 255;
            if (i50 == 254 || i50 != 255) {
                qt.y0(40, i50);
            } else {
                qt.y0(40, i50);
            }
            if (nt.a()) {
                int i51 = bArr[i2 + 13] & 255;
                if (i51 == 0) {
                    u0.d.B3(0);
                } else {
                    u0.d.B3((SystemProperties.getInt("persist.fyt.temperature", 0) == 1 || i41 == 1) ? (((i51 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i51 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
            }
            qt.y0(197, bArr[i2 + 13] & 255);
        } else if (!h3()) {
            i3(bArr, i2 + 2, i3 - 2);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5713q);
        qt.q0(l0.h0.f13058d);
        qt.q0(f5697z);
        y0.g.f18095e.d(l0.h0.f13062h);
        w0.e.f17815a.d(l0.h0.f13058d);
        w0.e.f17819e.d(l0.h0.f13058d);
        u0.c.f17386m.d(this.f5711o);
        l0.b0.p0(this.f5712p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 238) {
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
                            o3(187, (byte) 32, iArr);
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
                            z.k.s(227, 2, 59, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 15:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 2, 61, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 16:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 2, 173, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 17:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 2, 154, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public final void f3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public void g3() {
        Intent intent = new Intent("com.syu.cancle_tts");
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final boolean h3() {
        return n0.j4.f16464b == 3;
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
        if (string.equals(ProxyProperties.LOCAL_EXCL_LIST) || !qt.B0(161, string, this.f5721y)) {
            return;
        }
        this.f5721y = string;
    }

    public final void j3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0) {
                break;
            }
            stringBuffer.append((char) bArr[i5]);
        }
        String string = stringBuffer.toString();
        if (qt.B0(159, string, this.f5714r)) {
            this.f5714r = string;
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
        if (qt.B0(193, string, this.f5715s)) {
            this.f5715s = string;
        }
    }

    public final void l3(int i2) {
        int i3;
        qt.y0(148, i2);
        this.f5698b = i2;
        if (i2 == 0) {
            if (this.f5699c == 1 && (i3 = this.f5700d) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f5699c = 0;
            this.f5698b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f5699c != 0) {
                if (i4 == 0 || this.f5699c != 0) {
                    return;
                }
                z.k.s(227, 2, 186, 3, 0);
                return;
            }
            this.f5699c = 1;
            this.f5700d = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f5699c != 0 && y0.f.f18055i != 0) {
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
            ComponentName componentName = new ComponentName("com.syu.canbus", "com.syu.carinfo.klc.KlcOnStarAct");
            if (nt.f8633a == 458788) {
                componentName = new ComponentName("com.syu.canbus", "com.syu.carinfo.klc.KlcOnStarGl6Act");
            }
            intent.setComponent(componentName);
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void m3(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3 - 2; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0 && bArr[i5] == 0 && bArr[i5] == 0) {
                i3 = i4 + 3;
                this.f5719w = Boolean.TRUE;
                break;
            }
        }
        String str = new String(bArr, i2, i3, Charset.forName("UTF-8"));
        if (this.f5716t == null) {
            this.f5716t = str;
        } else {
            this.f5716t += str;
        }
        if (this.f5719w.booleanValue()) {
            if (!this.f5716t.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                this.f5717u = this.f5716t;
                g3();
                o1.l.a().postDelayed(new e(), 1500L);
                if (qt.B0(191, this.f5716t, this.f5718v)) {
                    this.f5718v = this.f5716t;
                }
            }
            this.f5716t = null;
            this.f5719w = Boolean.FALSE;
            z.k.s(227, 2, 186, 6, 0);
        }
    }

    public final void n3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            if (bArr[i5] == 0) {
                break;
            }
            stringBuffer.append((char) bArr[i5]);
        }
        String string = stringBuffer.toString();
        if (string.equals(ProxyProperties.LOCAL_EXCL_LIST) || !qt.B0(160, string, this.f5720x)) {
            return;
        }
        this.f5720x = string;
    }

    public final void o3(int i2, byte b2, int... iArr) {
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
