package k0;

import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class w2 extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f11562o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f11563p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static Runnable f11564q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f11565r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f11566s = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11577l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f11567b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f11568c = new int[6];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f11569d = new int[12];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f11570e = new int[30];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f11571f = new int[30];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f11572g = new int[30];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f11573h = new int[30];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f11574i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11575j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11576k = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11578m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f11579n = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 5}, new int[]{5, 18}, new int[]{6, 6}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 13}, new int[]{12, -1}, new int[]{57, -1}};

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = w2.f11562o;
            if (i2 > 0) {
                w2.f11562o = i2 - 1;
            }
            if (w2.f11562o == 0) {
                w2.a3();
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = b3();
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
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    iArr[4] = 84;
                    int i7 = u0.b.r3 % 10000;
                    iArr[5] = (i7 / 1000) + 48;
                    int i8 = (i7 % 100) / 10;
                    int i9 = i7 % 1000;
                    if (i8 != 0) {
                        i9 /= 10;
                    }
                    iArr[6] = i9 + 48;
                    iArr[7] = i8 + 48;
                    iArr[8] = (i7 % 10) + 48;
                    int i10 = u0.b.t3;
                    int i11 = (i10 / 60) % 60;
                    iArr[9] = 32;
                    iArr[10] = (i11 / 10) + 48;
                    iArr[11] = (i11 % 10) + 48;
                    iArr[12] = 32;
                    int i12 = i10 % 60;
                    iArr[13] = (i12 / 10) + 48;
                    iArr[14] = (i12 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i13 = d1.d.f1572e;
                if (i13 / 10 > 0) {
                    iArr[3] = (i13 / 10) + 48;
                }
                iArr[4] = (i13 % 10) + 48;
                iArr[5] = 45;
                int i14 = d1.d.f1571d / 100;
                int i15 = i14 / 10000;
                if (i15 > 0) {
                    iArr[6] = i15 + 48;
                }
                iArr[7] = ((i14 % 10000) / 1000) + 48;
                iArr[8] = ((i14 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i14 % 100) / 10) + 48;
                iArr[11] = ((i14 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
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
        iArr2[0] = 227;
        int i22 = 0;
        while (i22 < 15) {
            int i23 = i22 + 1;
            iArr2[i23] = (byte) iArr[i22];
            i22 = i23;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
                b2 = 10;
                break;
            case 3:
                b2 = 19;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 != 1) {
                    b2 = (i3 != 2 && i3 != 3) ? (byte) 0 : (byte) 13;
                } else {
                    b2 = 6;
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
            case 9:
            default:
                b2 = 0;
                break;
            case 11:
                if (f11563p != 0) {
                    b2 = 4;
                } else {
                    b2 = 1;
                }
                break;
            case 12:
                b2 = -123;
                break;
            case 13:
                b2 = 21;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static int c3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
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
        mtVar.f8313h = 1;
        mtVar.f8315j = 1;
        mtVar.f8320o = 0;
        this.f11574i.a();
        e3(this.f11574i.b(1, 0));
        d3(this.f11574i.b(1, 0));
        if (nt.a()) {
            qt.z(f11564q);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        int i4 = 10;
        if (b2 == -124) {
            int i5 = bArr[i2 + 2] & 255;
            int i6 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] & 255) << 8);
            i4 = i5 != 0 ? 1 : 10;
            qt.y0(128, i5);
            qt.y0(135, i6 * i4);
            qt.y0(140, bArr[i2 + 5] & 255);
            qt.y0(137, bArr[i2 + 6] & 255);
        }
        if (b2 == -123) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                for (int i7 = 0; i7 < 6; i7++) {
                    int i8 = i7 * 2;
                    int iC = o1.p0.c(bArr[i2 + 4 + i8], bArr[i2 + 3 + i8]);
                    int[] iArr2 = this.f11568c;
                    if (iArr2[i7] != iC) {
                        iArr2[i7] = iC;
                        o1.x.C(nt.f8643f, 129, new int[]{i7, iC}, null, null);
                    }
                }
                return;
            }
            if (b3 != 2) {
                return;
            }
            for (int i9 = 0; i9 < 12; i9++) {
                int i10 = i9 * 2;
                int iC2 = o1.p0.c(bArr[i2 + 4 + i10], bArr[i2 + 3 + i10]);
                int[] iArr3 = this.f11569d;
                if (iArr3[i9] != iC2) {
                    iArr3[i9] = iC2;
                    o1.x.C(nt.f8643f, 130, new int[]{i9, iC2 * 10}, null, null);
                }
            }
            return;
        }
        if (b2 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            int i11 = bArr[i2 + 2] & 255;
            if (u0.b.f17347o != 0) {
                return;
            }
            if (i11 != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
                return;
            } else {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                }
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
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
        if (b2 == 17) {
            int i12 = i2 + 4;
            if (bArr[i12] == 12) {
                if (o1.u.Y0().equals("com.syu.canbus")) {
                    o1.u.k();
                } else {
                    o1.u.v();
                }
            }
            if (nt.a()) {
                byte b4 = bArr[i12];
                byte b5 = bArr[i2 + 5];
                this.f11578m = b4 & 255;
                int i13 = 0;
                while (true) {
                    iArr = this.f11579n;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f11578m;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f11577l = i13;
                        break;
                    }
                    i13++;
                }
                if ((b5 & 255) == 0) {
                    int i15 = this.f11577l;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f11577l = 255;
                } else if (i13 < iArr.length) {
                    int i16 = h0.c.E;
                    if ((i16 == 4 || i16 == 3 || i16 == 5) && iArr[i13][0] == 6) {
                        l0.b0.l0(26, 0);
                    } else {
                        l0.b0.l0(iArr[i13][1], 0);
                    }
                }
                qt.l(bArr[i2 + 9], bArr[i2 + 8], false, 5000);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b6 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            }
            qt.y0(3, (b6 >> 5) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(0, (b6 >> 2) & 1);
            return;
        }
        if (b2 == 22) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
            byte b7 = bArr[i2 + 14];
            qt.y0(104, b7 & 3 & 255);
            qt.y0(105, (b7 >> 2) & 3 & 255);
            qt.y0(106, (b7 >> 4) & 3 & 255);
            qt.y0(107, (b7 >> 6) & 1 & 255);
            qt.y0(108, (b7 >> 7) & 1 & 255);
            int i17 = bArr[i2 + 15] & 255;
            if (i17 < 0) {
                i4 = 0;
            } else if (i17 <= 10) {
                i4 = i17;
            }
            qt.y0(109, this.f11567b[i4]);
            return;
        }
        if (b2 == 23) {
            qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
            return;
        }
        switch (b2) {
            case -121:
                for (int i18 = 0; i18 < 30; i18++) {
                    int i19 = i18 * 2;
                    int iC3 = o1.p0.c(bArr[i2 + 3 + i19], bArr[i2 + 2 + i19]);
                    int[] iArr4 = this.f11571f;
                    if (iArr4[i18] != iC3) {
                        iArr4[i18] = iC3;
                        o1.x.C(nt.f8643f, 131, new int[]{i18, iC3 * 10}, null, null);
                    }
                }
                break;
            case -120:
                qt.y0(30, bArr[i2 + 2] & 255);
                for (int i20 = 0; i20 < 12; i20++) {
                    int i21 = bArr[i2 + 3 + i20] & 255;
                    int[] iArr5 = this.f11573h;
                    if (iArr5[i20] != i21) {
                        iArr5[i20] = i21;
                        o1.x.C(nt.f8643f, 132, new int[]{i20, i21}, null, null);
                    }
                }
                break;
            case -119:
                for (int i22 = 0; i22 < 30; i22++) {
                    int i23 = i22 * 2;
                    int iC4 = o1.p0.c(bArr[i2 + 3 + i23], bArr[i2 + 2 + i23]);
                    int[] iArr6 = this.f11570e;
                    if (iArr6[i22] != iC4) {
                        iArr6[i22] = iC4;
                        o1.x.C(nt.f8643f, 133, new int[]{i22, iC4}, null, null);
                    }
                }
                break;
            case -118:
                qt.y0(138, bArr[i2 + 2] & 255);
                for (int i24 = 0; i24 < 30; i24++) {
                    int i25 = bArr[i2 + 3 + i24] & 255;
                    int[] iArr7 = this.f11572g;
                    if (iArr7[i24] != i25) {
                        iArr7[i24] = i25;
                        o1.x.C(nt.f8643f, 134, new int[]{i24, i25}, null, null);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11574i.j();
        if (nt.a()) {
            qt.q0(f11564q);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 141) {
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
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 1) {
                iArr[0] = 1;
            }
            d3(iArr[0]);
        }
        if (i2 == 100) {
            if (iArr == null || iArr.length <= 0 || iArr[0] != 3) {
                return;
            }
            z.k.s(227, 2, -14, 4, -1);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 2) {
                iArr[0] = 2;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            e3(iArr[0]);
            return;
        }
        switch (i2) {
            case 3:
                f3(1, iArr[0]);
                break;
            case 4:
                f3(2, (byte) iArr[0]);
                break;
            case 5:
                f3(4, (byte) iArr[0]);
                break;
            case 6:
                f3(5, (byte) iArr[0]);
                break;
            case 7:
                f3(7, (byte) iArr[0]);
                break;
            case 8:
                f3(8, (byte) iArr[0]);
                break;
        }
    }

    public final void d3(int i2) {
        f11566s = i2;
        z.k.s(227, 5, -14, (byte) i2, -1);
        qt.y0(117, f11566s);
        int iB = this.f11574i.b(1, 0);
        int i3 = f11566s;
        if (iB != i3) {
            this.f11574i.g(1, i3);
        }
    }

    public final void e3(int i2) {
        f11565r = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f11574i.b(1, 0);
        int i3 = f11565r;
        if (iB != i3) {
            this.f11574i.g(1, i3);
        }
    }

    public final void f3(int i2, int i3) {
        z.k.s(-29, 2, -15, (byte) i2, (byte) i3);
    }
}
