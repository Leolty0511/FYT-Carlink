package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class r3 extends lt implements o1.q {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f9766t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9770e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9771f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{134, 6}, new int[]{135, 21}, new int[]{137, 12}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{160, 1}, new int[]{164, 54}, new int[]{168, 18}, new int[]{170, 29}, new int[]{172, 2}, new int[]{175, 5}, new int[]{179, 24}, new int[]{180, 18}, new int[]{181, 26}, new int[]{183, 55}, new int[]{191, 5}, new int[]{194, 38}, new int[]{195, 12}, new int[]{197, 7}, new int[]{198, 8}, new int[]{199, 18}, new int[]{200, 26}, new int[]{201, 21}, new int[]{202, 55}, new int[]{203, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f9772g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9773h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9774i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9775j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f9776k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f9777l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9778m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9779n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f9780o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9781p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9782q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[] f9783r = {34, 204};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9784s = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r3 r3Var = r3.this;
            r3Var.f9774i = 0;
            r3Var.f9775j = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, -75, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public static int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 != 4) {
            return i2 != 5 ? 15 : 8;
        }
        return 6;
    }

    public static int c3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
            default:
                return 15;
        }
    }

    public static void d3(int i2) {
        int i3;
        int i4 = i2 & 255;
        if (i4 != 255) {
            int i5 = i4 / 2;
            int i6 = i4 % 2;
            if (i4 < 40) {
                i3 = (1000 - ((i6 > 0 ? (40 - i5) - 1 : 40 - i5) * 10)) - (i6 * 5);
            } else {
                i3 = ((i5 - 40) * 10) + 1000 + (i6 * 5);
            }
        } else {
            i3 = 0;
        }
        if (i3 > 600) {
            u0.d.A3(i3);
        }
    }

    public static void f3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (((byte) (b2 & 255)) ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        int i2;
        int i3 = nt.f8637c;
        if (i3 == 3) {
            i2 = 1;
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8314i = 1;
        } else if (i3 == 4 || i3 == 5) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 1;
            mtVar2.f8314i = 0;
            f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
            f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
            f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
            i2 = 1;
            int i4 = this.f9784s + 1;
            this.f9784s = i4;
            this.f9784s = i4 % 2;
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8310e = 0;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 1;
            i2 = 1;
        }
        this.f9772g.a();
        qt.z(this.f9782q);
        u0.c.f17386m.a(this.f9781p, i2);
    }

    /* JADX WARN: Code duplicated, block: B:222:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x011e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0121  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0134  */
    /* JADX WARN: Code duplicated, block: B:60:0x013f  */
    /* JADX WARN: Code duplicated, block: B:61:0x014a  */
    /* JADX WARN: Code duplicated, block: B:64:0x015b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x015d  */
    /* JADX WARN: Code duplicated, block: B:66:0x0168  */
    /* JADX WARN: Code duplicated, block: B:67:0x0173  */
    /* JADX WARN: Code duplicated, block: B:70:0x0183  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        byte b2;
        byte b3;
        byte b4 = bArr[i2 + 1];
        if (b4 == -24) {
            int i13 = (bArr[i2 + 3] & 255) - 1;
            if (i13 < 0) {
                i13 = 0;
            } else if (i13 > 2) {
                i13 = 2;
            }
            qt.y0(Process.MEDIA_UID, i13);
            if ((bArr[i2 + 2] & 255) != 0) {
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
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i14 = i2 + 6;
            u0.d.D2(a3(bArr[i14] & 255));
            int i15 = i2 + 7;
            u0.d.E2(b3(bArr[i15] & 255));
            int i16 = i2 + 8;
            u0.d.F2(b3(bArr[i16] & 255));
            int i17 = i2 + 9;
            u0.d.G2(a3(255 & bArr[i17]));
            if (bArr[i14] == 0 && bArr[i15] == 0 && bArr[i16] == 0 && bArr[i17] == 0) {
                u0.d.C2(0);
                return;
            } else {
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                    return;
                }
                return;
            }
        }
        if (b4 == 85) {
            int i18 = nt.f8637c;
            if (i18 == 4 || i18 == 5) {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i19 = i2 + 2;
                    int i20 = bArr[i19] & 255;
                    if (i20 == 16) {
                        qt.y0(28, -3);
                    } else if (i20 != 80) {
                        qt.y0(28, ((66 - bArr[i19]) & 255) + 34);
                    } else {
                        qt.y0(28, -2);
                    }
                    int i21 = i2 + 3;
                    int i22 = bArr[i21] & 255;
                    if (i22 == 16) {
                        qt.y0(27, -2);
                    } else if (i22 != 80) {
                        qt.y0(27, bArr[i21] & 255);
                    } else {
                        qt.y0(27, -3);
                    }
                } else {
                    int i23 = i2 + 2;
                    int i24 = bArr[i23] & 255;
                    if (i24 == 16) {
                        qt.y0(27, -2);
                    } else if (i24 != 80) {
                        qt.y0(27, bArr[i23] & 255);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i25 = i2 + 3;
                    int i26 = bArr[i25] & 255;
                    if (i26 == 16) {
                        qt.y0(28, -2);
                    } else if (i26 != 80) {
                        qt.y0(28, bArr[i25] & 255);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                int i27 = i2 + 4;
                qt.y0(21, bArr[i27] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i28 = (bArr[i27] >> 4) & 15;
                if (i28 != 1) {
                    if (i28 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i28 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i28 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i28 != 6) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(77, (bArr[i27] >> 4) & 15);
                int i29 = i2 + 5;
                qt.y0(29, (bArr[i29] >> 0) & 3);
                qt.y0(30, (bArr[i29] >> 2) & 3);
                qt.y0(31, (bArr[i29] >> 4) & 3);
                qt.y0(32, (bArr[i29] >> 6) & 3);
                int i30 = i2 + 6;
                qt.y0(13, (bArr[i30] >> 0) & 1);
                qt.y0(11, (bArr[i30] >> 1) & 1);
                if (((bArr[i30] >> 2) & 1) == 1) {
                    qt.y0(14, 0);
                } else {
                    qt.y0(14, 1);
                }
                qt.y0(65, (bArr[i30] >> 5) & 1);
                qt.y0(16, (bArr[i30] >> 6) & 1);
                qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
                return;
            }
            return;
        }
        if (b4 == 17) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f9768c = b5 & 255;
                int i31 = 0;
                while (true) {
                    iArr = this.f9771f;
                    if (i31 >= iArr.length) {
                        break;
                    }
                    int i32 = this.f9768c;
                    if (i32 == iArr[i31][0]) {
                        if (i32 == 0) {
                            break;
                        }
                        this.f9767b = i31;
                        break;
                    }
                    i31++;
                }
                if ((b6 & 255) == 0) {
                    int i33 = this.f9767b;
                    if (i33 < iArr.length && i33 != 255) {
                        l0.b0.l0(iArr[i33][1], 1);
                    }
                    this.f9767b = 255;
                } else if (i31 < iArr.length) {
                    l0.b0.l0(iArr[i31][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b4 == 18) {
            byte b7 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            } else {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            }
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b4 == 33) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 3];
                this.f9769d = (bArr[i2 + 2] & 255) | 128;
                int i34 = 0;
                while (true) {
                    iArr2 = this.f9771f;
                    if (i34 >= iArr2.length) {
                        break;
                    }
                    int i35 = this.f9769d;
                    if (i35 == iArr2[i34][0]) {
                        if (i35 == 0) {
                            break;
                        }
                        this.f9770e = i34;
                        break;
                    }
                    i34++;
                }
                if ((b8 & 255) != 0) {
                    if (i34 < iArr2.length) {
                        l0.b0.l0(iArr2[i34][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i36 = this.f9770e;
                    if (i36 < iArr2.length && i36 != 255) {
                        l0.b0.l0(iArr2[i36][1], 1);
                    }
                    this.f9770e = 255;
                    return;
                }
            }
            return;
        }
        if (b4 == 34) {
            if (nt.a()) {
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                if (b9 == 1 && b10 != (i7 = this.f9774i)) {
                    if (b10 > i7) {
                        for (int i37 = 0; i37 < b10 - this.f9774i; i37++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b10 < i7) {
                        for (int i38 = 0; i38 < this.f9774i - b10; i38++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f9774i = b10;
                    return;
                }
                return;
            }
            return;
        }
        if (b4 != 49) {
            if (b4 != 50) {
                return;
            }
            qt.y0(99, bArr[i2 + 8] & 255);
            qt.y0(100, bArr[i2 + 11] & 255);
            qt.y0(101, bArr[i2 + 14] & 255);
            return;
        }
        int i39 = nt.f8637c;
        if (i39 == 4 || i39 == 5) {
            return;
        }
        byte b11 = bArr[i2 + 2];
        qt.y0(10, (b11 & 64) == 0 ? 0 : 1);
        qt.y0(14, (b11 >> 2) & 1);
        int[] iArr3 = new int[1];
        iArr3[0] = (b11 & 3) == 0 ? 0 : 1;
        qt.y0(11, iArr3);
        byte b12 = bArr[i2 + 3];
        int[] iArr4 = new int[1];
        iArr4[0] = (b12 & 16) == 0 ? 1 : 0;
        qt.y0(12, iArr4);
        qt.y0(13, (b12 >> 3) & 1);
        byte b13 = bArr[i2 + 4];
        qt.y0(16, (b13 >> 5) & 1);
        qt.y0(65, (b13 >> 4) & 1);
        byte b14 = bArr[i2 + 6];
        if (b14 != 10) {
            switch (b14) {
                case 2:
                    i10 = 0;
                    i9 = 0;
                    i8 = 1;
                    break;
                case 3:
                    i8 = 0;
                    i10 = 0;
                    i9 = 1;
                    break;
                case 4:
                    i10 = 0;
                    i8 = 1;
                    i9 = 1;
                    break;
                case 5:
                    i8 = 0;
                    i10 = 1;
                    i9 = i10;
                    break;
                case 6:
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                    break;
                case 7:
                    i9 = 0;
                    i8 = 1;
                    i10 = 1;
                    break;
                default:
                    i8 = 0;
                    break;
            }
            qt.y0(18, i8);
            qt.y0(19, i10);
            qt.y0(20, i9);
            i11 = bArr[i2 + 7] & 255;
            if (i11 > 8) {
                i12 = 8;
            } else {
                i12 = i11;
            }
            qt.y0(21, i12);
            b2 = bArr[i2 + 8];
            if (b2 != -1) {
                qt.y0(27, -3);
            } else if (b2 != 0) {
                qt.y0(27, b2 & 255);
            } else {
                qt.y0(27, -2);
            }
            b3 = bArr[i2 + 9];
            if (b3 != -1) {
                qt.y0(28, -3);
            } else if (b3 != 0) {
                qt.y0(28, b3 & 255);
            } else {
                qt.y0(28, -2);
            }
            if (nt.a()) {
                d3(bArr[i2 + 13] & 255);
            }
        }
        i8 = 1;
        i10 = i8;
        i9 = i10;
        qt.y0(18, i8);
        qt.y0(19, i10);
        qt.y0(20, i9);
        i11 = bArr[i2 + 7] & 255;
        if (i11 > 8) {
            i12 = 8;
        } else {
            i12 = i11;
        }
        qt.y0(21, i12);
        b2 = bArr[i2 + 8];
        if (b2 != -1) {
            qt.y0(27, -3);
        } else if (b2 != 0) {
            qt.y0(27, b2 & 255);
        } else {
            qt.y0(27, -2);
        }
        b3 = bArr[i2 + 9];
        if (b3 != -1) {
            qt.y0(28, -3);
        } else if (b3 != 0) {
            qt.y0(28, b3 & 255);
        } else {
            qt.y0(28, -2);
        }
        if (nt.a()) {
            d3(bArr[i2 + 13] & 255);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9772g.j();
        qt.q0(this.f9782q);
        u0.c.f17386m.d(this.f9781p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1) {
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                if (iArr[0] < 0) {
                    iArr[0] = 0;
                } else if (iArr[0] > 2) {
                    iArr[0] = 2;
                }
                iArr[0] = iArr[0] + 1;
                e3(iArr[0]);
                return;
            }
            return;
        }
        if (iArr != null) {
            switch (iArr[0]) {
                case 9:
                    if (nt.W != 0) {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 11, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 11, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 11, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    } else {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    }
                    break;
                case 10:
                    if (nt.W != 0) {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, DhcpPacket.DHCP_HOST_NAME, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, DhcpPacket.DHCP_HOST_NAME, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, DhcpPacket.DHCP_HOST_NAME, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    } else {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    }
                    break;
                case 11:
                    if (nt.W != 0) {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 10, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 10, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 10, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    } else {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    }
                    break;
                case 12:
                    if (nt.W != 0) {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 9, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 9, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, 9, (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    } else {
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                        f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    }
                    break;
                default:
                    f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    f3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f9783r[this.f9784s % 2], 37, 0, -86, 0});
                    break;
            }
        }
        int i3 = this.f9784s + 1;
        this.f9784s = i3;
        this.f9784s = i3 % 2;
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
        if (this.f9777l + bArr.length > 1024) {
            this.f9777l = 0;
            this.f9778m = 0;
            this.f9779n = 0;
        }
        System.arraycopy(bArr, 0, this.f9776k, this.f9777l, bArr.length);
        int length = this.f9777l + bArr.length;
        this.f9777l = length;
        int i5 = this.f9779n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f9776k[1];
            int i6 = 2;
            while (true) {
                i4 = this.f9779n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f9776k[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f9776k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f9778m = this.f9779n + 1;
            } else {
                this.f9778m = 1;
            }
            this.f9779n = 0;
        }
        int i7 = this.f9777l - 2;
        while (true) {
            i2 = this.f9778m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f9776k;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f9779n = i8;
                int i9 = i8 + i2 + 3;
                this.f9779n = i9;
                if (i9 >= this.f9777l) {
                    this.f9779n = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f9779n;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f9776k[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f9776k;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f9778m;
                    byte b6 = bArr4[i11 + 1];
                    this.f9780o = b6;
                    bArr4[i11 + 1] = bArr4[i11 + 2];
                    bArr4[i11 + 2] = b6;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f9778m = this.f9779n;
                } else {
                    this.f9778m++;
                }
                this.f9779n = 0;
            }
            this.f9778m++;
        }
        if (i2 != 0) {
            int i12 = this.f9777l - i2;
            this.f9777l = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f9776k;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f9778m = 0;
        }
    }

    public final void e3(int i2) {
        f9766t = i2;
        z.k.s(227, 2, -14, 10, (byte) i2);
        int iB = this.f9772g.b(1, 0);
        int i3 = f9766t;
        if (iB != i3) {
            this.f9772g.g(1, i3);
        }
    }
}
