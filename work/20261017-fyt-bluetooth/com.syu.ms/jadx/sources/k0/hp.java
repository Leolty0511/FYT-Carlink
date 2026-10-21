package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6121b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6124e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6122c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6123d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{135, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6125f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6126g = {new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 67}, new int[]{8, 68}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6127h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6128i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6129j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6130k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6131l = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hp.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) time.hour;
            if (b2 == 0 && b3 > 12) {
                b3 = (byte) (b3 - 12);
            }
            z.k.s(227, 193, 2, b3, (byte) time.minute);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hp.this.f6131l);
            hp.this.f6129j = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hp hpVar = hp.this;
            int i2 = hpVar.f6129j - 1;
            hpVar.f6129j = i2;
            if (i2 <= 0) {
                l0.b0.p0(hpVar.f6131l);
                hp.this.f6129j = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 240) {
                    z.k.s(227, 226, 1, 1);
                } else {
                    if (i3 != 241) {
                        return;
                    }
                    z.k.s(227, 226, 1, 0);
                }
            }
        }
    }

    public static void a3() {
        if (u0.b.f17306a0 == 0) {
            z.k.s(227, 192, 1, 0);
            return;
        }
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            if (i2 != 8 && i2 != 10) {
                z.k.s(227, 192, 1, 3);
                return;
            }
            int[] iArr = new int[5];
            for (int i4 = 0; i4 < 5; i4++) {
                iArr[i4] = 0;
            }
            iArr[0] = 192;
            iArr[1] = 3;
            iArr[2] = 2;
            int i5 = u0.b.r3;
            iArr[3] = i5 >> 8;
            iArr[4] = i5;
            int[] iArr2 = new int[6];
            iArr2[0] = 227;
            while (i3 < 5) {
                int i6 = i3 + 1;
                iArr2[i6] = iArr[i3];
                i3 = i6;
            }
            z.k.s(iArr2);
            return;
        }
        int[] iArr3 = new int[18];
        for (int i7 = 0; i7 < 18; i7++) {
            iArr3[i7] = 0;
        }
        iArr3[0] = 192;
        iArr3[1] = 16;
        iArr3[2] = 1;
        iArr3[3] = w0.d.f17798j;
        int i8 = w0.d.f17796h;
        if (i8 == 0 || i8 == 1) {
            iArr3[3] = iArr3[3] | 128;
        }
        if (i8 < 65536 || i8 > 65538) {
            int i9 = w0.d.f17797i;
            iArr3[4] = (i9 >> 8) & 255;
            iArr3[5] = i9 & 255;
        } else {
            int i10 = w0.d.f17797i;
            iArr3[4] = ((i10 / 10) >> 8) & 255;
            iArr3[5] = (i10 / 10) & 255;
        }
        int i11 = w0.d.f17796h;
        if (i11 == 65536) {
            int[] iArr4 = w0.d.f17793e;
            iArr3[6] = ((iArr4[0] / 10) >> 8) & 255;
            iArr3[7] = (iArr4[0] / 10) & 255;
            iArr3[8] = ((iArr4[1] / 10) >> 8) & 255;
            iArr3[9] = (iArr4[1] / 10) & 255;
            iArr3[10] = ((iArr4[2] / 10) >> 8) & 255;
            iArr3[11] = (iArr4[2] / 10) & 255;
            iArr3[12] = ((iArr4[3] / 10) >> 8) & 255;
            iArr3[13] = (iArr4[3] / 10) & 255;
            iArr3[14] = ((iArr4[4] / 10) >> 8) & 255;
            iArr3[15] = (iArr4[4] / 10) & 255;
            iArr3[16] = ((iArr4[5] / 10) >> 8) & 255;
            iArr3[17] = (iArr4[5] / 10) & 255;
        } else if (i11 == 65537) {
            int[] iArr5 = w0.d.f17793e;
            iArr3[6] = ((iArr5[6] / 10) >> 8) & 255;
            iArr3[7] = (iArr5[6] / 10) & 255;
            iArr3[8] = ((iArr5[7] / 10) >> 8) & 255;
            iArr3[9] = (iArr5[7] / 10) & 255;
            iArr3[10] = ((iArr5[8] / 10) >> 8) & 255;
            iArr3[11] = (iArr5[8] / 10) & 255;
            iArr3[12] = ((iArr5[9] / 10) >> 8) & 255;
            iArr3[13] = (iArr5[9] / 10) & 255;
            iArr3[14] = ((iArr5[10] / 10) >> 8) & 255;
            iArr3[15] = (iArr5[10] / 10) & 255;
            iArr3[16] = ((iArr5[11] / 10) >> 8) & 255;
            iArr3[17] = (iArr5[11] / 10) & 255;
        } else if (i11 == 65538) {
            int[] iArr6 = w0.d.f17793e;
            iArr3[6] = ((iArr6[12] / 10) >> 8) & 255;
            iArr3[7] = (iArr6[12] / 10) & 255;
            iArr3[8] = ((iArr6[13] / 10) >> 8) & 255;
            iArr3[9] = (iArr6[13] / 10) & 255;
            iArr3[10] = ((iArr6[14] / 10) >> 8) & 255;
            iArr3[11] = (iArr6[14] / 10) & 255;
            iArr3[12] = ((iArr6[15] / 10) >> 8) & 255;
            iArr3[13] = (iArr6[15] / 10) & 255;
            iArr3[14] = ((iArr6[16] / 10) >> 8) & 255;
            iArr3[15] = (iArr6[16] / 10) & 255;
            iArr3[16] = ((iArr6[17] / 10) >> 8) & 255;
            iArr3[17] = (iArr6[17] / 10) & 255;
        } else if (i11 == 0) {
            int[] iArr7 = w0.d.f17792d;
            iArr3[6] = ((iArr7[0] / 10) >> 8) & 255;
            iArr3[7] = (iArr7[0] / 10) & 255;
            iArr3[8] = ((iArr7[1] / 10) >> 8) & 255;
            iArr3[9] = (iArr7[1] / 10) & 255;
            iArr3[10] = ((iArr7[2] / 10) >> 8) & 255;
            iArr3[11] = (iArr7[2] / 10) & 255;
            iArr3[12] = ((iArr7[3] / 10) >> 8) & 255;
            iArr3[13] = (iArr7[3] / 10) & 255;
            iArr3[14] = ((iArr7[4] / 10) >> 8) & 255;
            iArr3[15] = (iArr7[4] / 10) & 255;
            iArr3[16] = ((iArr7[5] / 10) >> 8) & 255;
            iArr3[17] = (iArr7[5] / 10) & 255;
        } else if (i11 == 1) {
            int[] iArr8 = w0.d.f17792d;
            iArr3[6] = ((iArr8[6] / 10) >> 8) & 255;
            iArr3[7] = (iArr8[6] / 10) & 255;
            iArr3[8] = ((iArr8[7] / 10) >> 8) & 255;
            iArr3[9] = (iArr8[7] / 10) & 255;
            iArr3[10] = ((iArr8[8] / 10) >> 8) & 255;
            iArr3[11] = (iArr8[8] / 10) & 255;
            iArr3[12] = ((iArr8[9] / 10) >> 8) & 255;
            iArr3[13] = (iArr8[9] / 10) & 255;
            iArr3[14] = ((iArr8[10] / 10) >> 8) & 255;
            iArr3[15] = (iArr8[10] / 10) & 255;
            iArr3[16] = ((iArr8[1] / 10) >> 8) & 255;
            iArr3[17] = (iArr8[11] / 10) & 255;
        }
        int[] iArr9 = new int[19];
        iArr9[0] = 227;
        while (i3 < 18) {
            int i12 = i3 + 1;
            iArr9[i12] = iArr3[i3];
            i3 = i12;
        }
        z.k.s(iArr9);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f6130k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        qt.z(this.f6128i);
        if (nt.f8637c == 241) {
            this.f7886a.f8317l = 1;
        }
        w0.e.f17816b.a(this.f6127h, 1);
        w0.e.f17815a.a(this.f6127h, 1);
        w0.e.f17819e.a(this.f6127h, 1);
        u0.c.f17392s.a(this.f6127h, 1);
        u0.c.f17374a.a(this.f6127h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i5;
            l0.c0.f13014h = i7;
            l0.c0.f13015i = i9;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.E0(bArr[i4] & 255));
            u0.d.E2(l0.c0.E0(bArr[i6] & 255));
            u0.d.F2(l0.c0.E0(bArr[i8] & 255));
            u0.d.G2(l0.c0.E0(bArr[i10] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6122c = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f6123d;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f6122c;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f6121b = i12;
                    break;
                }
                i12++;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f6121b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f6121b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 40) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, true, GLES10.GL_AMBIENT);
                return;
            }
            if (b2 == 53) {
                qt.y0(98, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 11;
                    l0.c0.b((bArr[i16] >> 1) & 1, (bArr[i16] >> 0) & 1, 0);
                    return;
                } else {
                    int i17 = i2 + 11;
                    l0.c0.a((bArr[i17] >> 1) & 1, (bArr[i17] >> 0) & 1, 0);
                    return;
                }
            }
            if (b2 != 54) {
                return;
            }
            this.f6125f = bArr[i2 + 2] & 255;
            int i18 = 0;
            while (true) {
                iArr2 = this.f6126g;
                if (i18 >= iArr2.length) {
                    break;
                }
                int i19 = this.f6125f;
                if (i19 == iArr2[i18][0]) {
                    if (i19 == 0) {
                        break;
                    }
                    this.f6124e = i18;
                    break;
                }
                i18++;
            }
            if (this.f6125f != 0) {
                l0.b0.l0(iArr2[i18][this.f6124e], 0);
                l0.b0.l0(this.f6126g[i18][this.f6124e], 0);
                return;
            }
            return;
        }
        int i20 = i2 + 2;
        qt.y0(11, (bArr[i20] >> 6) & 1);
        qt.y0(79, (bArr[i20] >> 4) & 1);
        qt.y0(13, (bArr[i20] >> 3) & 1);
        int i21 = i2 + 3;
        qt.y0(18, (bArr[i21] >> 7) & 1);
        qt.y0(19, (bArr[i21] >> 6) & 1);
        qt.y0(20, (bArr[i21] >> 5) & 1);
        qt.y0(21, bArr[i21] & DhcpPacket.DHCP_DOMAIN_NAME);
        int i22 = i2 + 4;
        int i23 = bArr[i22] & 255;
        int i24 = i2 + 5;
        int i25 = bArr[i24] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i23 = bArr[i24] & 255;
            i25 = bArr[i22] & 255;
        }
        if (i23 == 0) {
            qt.y0(27, -2);
        } else if (i23 == 31) {
            qt.y0(27, -3);
        } else if (i23 == 255) {
            qt.y0(27, -1);
        } else if (i23 >= 1 && i23 <= 31) {
            qt.y0(27, (i23 * 5) + 175);
        } else if (i23 < 32 || i23 > 34) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, ((i23 - 32) * 5) + 160);
        }
        if (i25 == 0) {
            qt.y0(28, -2);
        } else if (i25 == 31) {
            qt.y0(28, -3);
        } else if (i25 == 255) {
            qt.y0(28, -1);
        } else if (i25 >= 1 && i25 <= 31) {
            qt.y0(28, (i25 * 5) + 175);
        } else if (i25 < 32 || i25 > 34) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, ((i25 - 32) * 5) + 160);
        }
        qt.y0(37, (bArr[i2 + 6] >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6130k);
        l0.b0.p0(this.f6131l);
        qt.q0(this.f6128i);
        w0.e.f17815a.d(this.f6127h);
        w0.e.f17819e.d(this.f6127h);
        u0.c.f17392s.d(this.f6127h);
        u0.c.f17374a.d(this.f6127h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 194, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 2) {
            return;
        }
        if (iArr[0] == 1) {
            y0.f.f18034b.a(5);
        } else if (iArr[0] == 0) {
            y0.f.f18034b.a(u0.b.D);
        }
    }
}
