package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class o3 extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f8704n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8706c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8707d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{32, 25}, new int[]{33, 27}, new int[]{34, 28}, new int[]{35, 18}, new int[]{36, 26}, new int[]{37, 21}, new int[]{38, 55}, new int[]{39, 12}, new int[]{40, 2}, new int[]{41, 5}, new int[]{42, 1}, new int[]{43, 38}, new int[]{44, 64}, new int[]{45, 53}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8708e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 13}, new int[]{32, 25}, new int[]{33, 27}, new int[]{34, 28}, new int[]{35, 18}, new int[]{36, 26}, new int[]{37, 21}, new int[]{38, 12}, new int[]{39, 12}, new int[]{40, 2}, new int[]{41, 5}, new int[]{42, 1}, new int[]{43, 38}, new int[]{44, 5}, new int[]{45, 53}, new int[]{240, 8}, new int[]{i.a.Theme_actionModeShareDrawable, 7}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f8709f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8710g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f8711h = {34, 204};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8712i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8713j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8714k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f8715l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8716m = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 139, 2, (byte) time.hour, (byte) time.minute);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18037c == 0 || y0.f.f18055i == 1) {
                z.k.s(227, -124, 1, ((y0.f.f18037c * 39) / 36) | 128);
            } else {
                z.k.s(227, -124, 1, ((y0.f.f18037c * 39) / 36) & 127);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o3.this.c3(u0.b.K3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
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
                        b3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(38);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(38);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(4);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(4);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 1) {
                        b3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 2) {
                    b3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(21);
                } else {
                    b3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(10);
                } else {
                    b3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(12);
                } else {
                    b3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f8709f.a();
        int i2 = 1;
        f3(this.f8709f.b(1, 0));
        int i3 = nt.f8637c;
        if (i3 == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            i2 = 1;
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 1;
            mtVar.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41, 42};
            z.k.s(227, 144, 2, 85, 0);
        } else if (i3 == 3) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 1;
            z.k.s(227, 51, 5, 0, this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, 0, this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, 0, this.f8711h[this.f8712i % 2], 37, 33, 170);
            int i4 = this.f8712i + 1;
            this.f8712i = i4;
            this.f8712i = i4 % 2;
            this.f7886a.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41, 42};
            i2 = 1;
        } else if (i3 == 4 || i3 == 5) {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 1;
            qt.z(this.f8713j);
            y0.g.f18094d.a(this.f8714k, 1);
            u0.c.f17397x.a(this.f8715l, 1);
        } else {
            mt mtVar4 = this.f7886a;
            mtVar4.f8306a = new String[]{"com.syu.canbus"};
            mtVar4.f8310e = 0;
            mtVar4.f8311f = 1;
            mtVar4.f8312g = 1;
            qt.z(this.f8713j);
            y0.g.f18094d.a(this.f8714k, 1);
            u0.c.f17397x.a(this.f8715l, 1);
        }
        u0.c.f17386m.a(l0.c0.f13020n, i2);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                if (nt.f8637c != 5) {
                    this.f8706c = b3 & 255;
                    int i10 = 0;
                    while (true) {
                        iArr = this.f8707d;
                        if (i10 >= iArr.length) {
                            break;
                        }
                        int i11 = this.f8706c;
                        if (i11 == iArr[i10][0]) {
                            if (i11 == 0) {
                                break;
                            }
                            this.f8705b = i10;
                            break;
                        }
                        i10++;
                    }
                    int i12 = this.f8706c;
                    if (i12 == 240) {
                        for (int i13 = 0; i13 < (b4 & 255); i13++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        return;
                    }
                    if (i12 == 241) {
                        for (int i14 = 0; i14 < (b4 & 255); i14++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        return;
                    }
                    if ((b4 & 255) != 0) {
                        if (i10 < iArr.length) {
                            l0.b0.l0(iArr[i10][1], 0);
                            return;
                        }
                        return;
                    } else {
                        int i15 = this.f8705b;
                        if (i15 < iArr.length && i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                        }
                        this.f8705b = 255;
                        return;
                    }
                }
                this.f8706c = b3 & 255;
                int i16 = 0;
                while (true) {
                    iArr2 = this.f8708e;
                    if (i16 >= iArr2.length) {
                        break;
                    }
                    int i17 = this.f8706c;
                    if (i17 == iArr2[i16][0]) {
                        if (i17 == 0) {
                            break;
                        }
                        this.f8705b = i16;
                        break;
                    }
                    i16++;
                }
                int i18 = this.f8706c;
                if (i18 == 240) {
                    for (int i19 = 0; i19 < (b4 & 255); i19++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                if (i18 == 241) {
                    for (int i20 = 0; i20 < (b4 & 255); i20++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                if ((b4 & 255) != 0) {
                    if (i16 < this.f8707d.length) {
                        l0.b0.l0(iArr2[i16][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i21 = this.f8705b;
                    int[][] iArr3 = this.f8707d;
                    if (i21 < iArr3.length && i21 != 255) {
                        l0.b0.l0(iArr3[i21][1], 1);
                    }
                    this.f8705b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = (byte) (bArr[i2 + 2] & 255);
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            int[] iArr4 = new int[1];
            iArr4[0] = (b5 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr4);
            qt.y0(13, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(65, (b5 >> 1) & 1);
            qt.y0(16, (b5 >> 0) & 1);
            byte b6 = bArr[i2 + 3];
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            int i22 = b6 & 31;
            if (i22 > 8) {
                i22 = 8;
            }
            qt.y0(21, i22);
            int i23 = i2 + 4;
            int i24 = bArr[i23] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i24 = bArr[i2 + 5] & 255;
            }
            if (i24 >= 1 && i24 <= 7) {
                qt.y0(27, i24);
            } else if (i24 == 0) {
                qt.y0(27, -2);
            } else if (i24 != 255) {
                qt.y0(27, i24);
            } else {
                qt.y0(27, -3);
            }
            int i25 = (SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i23] : bArr[i2 + 5]) & 255;
            if (i25 >= 1 && i25 <= 7) {
                qt.y0(28, i25);
            } else if (i25 == 0) {
                qt.y0(28, -2);
            } else if (i25 != 255) {
                qt.y0(28, i25);
            } else {
                qt.y0(28, -3);
            }
            if (nt.a()) {
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                int i26 = (b7 & 2) != 0 ? 1 : 0;
                u0.d.A3((b8 & 128) != 0 ? (1000 - ((b8 & 127) * 10)) - (i26 * 5) : ((b8 & 255) * 10) + 1000 + (i26 * 5));
                return;
            }
            return;
        }
        if (b2 != 3) {
            if (b2 == 4) {
                qt.y0(98, bArr[i2 + 2] & 255);
                qt.y0(99, bArr[i2 + 3] & 255);
                qt.y0(100, bArr[i2 + 4] & 255);
                return;
            }
            if (b2 == 6) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5400);
                return;
            }
            if (b2 == 9) {
                if (nt.a()) {
                    u0.d.D2(a3(bArr[i2 + 3] & 255));
                    u0.d.E2(a3(bArr[i2 + 4] & 255));
                    u0.d.F2(a3(bArr[i2 + 5] & 255));
                    u0.d.G2(a3(bArr[i2 + 6] & 255));
                    u0.d.R2(a3(bArr[i2 + 7] & 255));
                    u0.d.S2(a3(bArr[i2 + 8] & 255));
                    u0.d.T2(a3(bArr[i2 + 9] & 255));
                    u0.d.U2(a3(bArr[i2 + 10] & 255));
                    return;
                }
                return;
            }
            if (b2 != 36) {
                if (b2 == 38) {
                    int i27 = i2 + 2;
                    qt.y0(98, (bArr[i27] >> 6) & 3);
                    qt.y0(99, (bArr[i27] >> 4) & 3);
                    qt.y0(100, (bArr[i27] >> 2) & 3);
                    return;
                }
                if (b2 == 48) {
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                if (b2 == 53) {
                    int i28 = i2 + 2;
                    int i29 = i2 + 3;
                    qt.y0(102, ((bArr[i28] & 255) << 8) | (bArr[i29] & 255));
                    qt.y0(1032, ((bArr[i28] & 255) << 8) | (bArr[i29] & 255));
                    qt.y0(101, bArr[i2 + 4] & 255);
                    return;
                }
                if (b2 == 82) {
                    int i30 = (bArr[i2 + 2] >> 7) & 1;
                    if (u0.b.f17347o != 0) {
                        return;
                    }
                    if (i30 != 0) {
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
                if (b2 != 85) {
                    return;
                }
                int i31 = nt.f8637c;
                if (i31 == 2) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    byte b11 = bArr[i2 + 4];
                    byte b12 = bArr[i2 + 6];
                    int i32 = b9 & 255;
                    if (i32 == 16) {
                        qt.y0(27, -2);
                    } else if (i32 != 80) {
                        qt.y0(27, i32);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i33 = b10 & 255;
                    if (i33 == 16) {
                        qt.y0(28, -2);
                    } else if (i33 != 80) {
                        qt.y0(28, i33);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i34 = (b11 >> 4) & 15;
                    if (i34 != 1) {
                        if (i34 == 2) {
                            i7 = 0;
                            i9 = 1;
                        } else if (i34 == 3) {
                            i7 = 0;
                            i9 = 0;
                            i8 = 1;
                        } else if (i34 == 4) {
                            i9 = 0;
                            i7 = 1;
                            i8 = 1;
                        } else if (i34 != 6) {
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
                    qt.y0(77, i34);
                    qt.y0(13, (b12 >> 0) & 1);
                    qt.y0(11, (b12 >> 1) & 1);
                    qt.y0(62, (b12 >> 2) & 1);
                    qt.y0(12, (b12 >> 3) & 1);
                    qt.y0(16, (b12 >> 6) & 1);
                    qt.y0(65, (b12 >> 7) & 1);
                    return;
                }
                if (i31 == 3) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    byte b15 = bArr[i2 + 4];
                    byte b16 = bArr[i2 + 5];
                    byte b17 = bArr[i2 + 6];
                    byte b18 = bArr[i2 + 7];
                    byte b19 = bArr[i2 + 8];
                    int i35 = b13 & 255;
                    if (i35 == 16) {
                        qt.y0(27, -2);
                    } else if (i35 != 80) {
                        qt.y0(27, i35);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i36 = b14 & 255;
                    if (i36 == 16) {
                        qt.y0(28, -2);
                    } else if (i36 != 80) {
                        qt.y0(28, i36);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(21, b15 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                    int i37 = (b15 >> 4) & 15;
                    switch (i37) {
                        case 1:
                            i5 = 0;
                            i6 = 0;
                            i4 = 1;
                            break;
                        case 2:
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        case 3:
                            i4 = 0;
                            i6 = 0;
                            i5 = 1;
                            break;
                        case 4:
                            i4 = 0;
                            i5 = 1;
                            i6 = i5;
                            break;
                        case 5:
                            i5 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 6:
                            i4 = 0;
                            i5 = 0;
                            i6 = 1;
                            break;
                        default:
                            i4 = 0;
                            i5 = 0;
                            i6 = i5;
                            break;
                    }
                    qt.y0(19, i4);
                    qt.y0(20, i5);
                    qt.y0(18, i6);
                    qt.y0(77, i37);
                    qt.y0(13, (b17 >> 0) & 1);
                    qt.y0(11, (b17 >> 1) & 1);
                    qt.y0(14, (b17 >> 2) & 1);
                    qt.y0(65, (b17 >> 5) & 1);
                    qt.y0(16, (b17 >> 6) & 1);
                    qt.y0(12, (b18 >> 0) & 3);
                    qt.y0(104, (b18 >> 4) & 1);
                    qt.y0(105, (b18 >> 5) & 1);
                    return;
                }
                return;
            }
        }
        byte b20 = bArr[i2 + 2];
        byte b21 = bArr[i2 + 3];
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(1, (b20 >> 7) & 1);
            qt.y0(2, (b20 >> 6) & 1);
        } else {
            qt.y0(1, (b20 >> 6) & 1);
            qt.y0(2, (b20 >> 7) & 1);
        }
        qt.y0(4, (b20 >> 5) & 1);
        qt.y0(3, (b20 >> 4) & 1);
        qt.y0(5, (b20 >> 3) & 1);
        int i38 = nt.f8637c;
        if ((i38 == 0 || i38 == 4 || i38 == 5) && f8704n != 0) {
            int i39 = (b21 >> 5) & 1;
            if (u0.b.f17347o != 0) {
                return;
            }
            if (i39 != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8709f.j();
        qt.q0(this.f8713j);
        y0.g.f18094d.d(this.f8714k);
        u0.c.f17397x.d(this.f8715l);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
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
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            e3(0, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            e3(1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            e3(2, iArr[0]);
            return;
        }
        if (i2 == 3) {
            if (nt.f8637c != 3) {
                if (iArr == null || iArr.length < 2 || iArr[1] != 0) {
                    return;
                }
                b3(iArr[0]);
                return;
            }
            z.k.s(227, 51, 5, iArr[0], this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8711h[this.f8712i % 2], 37, 33, 170);
            int i3 = this.f8712i + 1;
            this.f8712i = i3;
            this.f8712i = i3 % 2;
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f3(iArr[0]);
            return;
        }
        if (i2 == 1003 && u0.b.f17347o == 0) {
            if (!o1.u.T(a.b.O)) {
                qt.t();
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
        }
    }

    public final int a3(int i2) {
        if (i2 != 0) {
            if (i2 == 2) {
                return 0;
            }
            if (i2 == 4) {
                return 3;
            }
            if (i2 == 6) {
                return 5;
            }
            if (i2 == 8) {
                return 6;
            }
            if (i2 == 10) {
                return 7;
            }
            if (i2 == 12) {
                return 8;
            }
            if (i2 == 14) {
                return 9;
            }
        }
        return 10;
    }

    public final void b3(int i2) {
        if (nt.f8637c == 3) {
            z.k.s(227, 51, 5, i2, this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, i2, this.f8711h[this.f8712i % 2], 37, 33, 170);
            z.k.s(227, 51, 5, i2, this.f8711h[this.f8712i % 2], 37, 33, 170);
            int i3 = this.f8712i + 1;
            this.f8712i = i3;
            this.f8712i = i3 % 2;
            return;
        }
        int i4 = (this.f8716m + 1) % 2;
        this.f8716m = i4;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i4 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }

    public final void c3(int i2) {
        int i3 = nt.f8637c;
        if (i3 == 0 || i3 == 4 || i3 == 5) {
            int[] iArr = new int[5];
            iArr[0] = 227;
            iArr[1] = 130;
            iArr[2] = 2;
            iArr[3] = 64;
            iArr[4] = i2 != 1 ? 1 : 0;
            z.k.s(iArr);
            return;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        iArr2[1] = 130;
        iArr2[2] = 2;
        iArr2[3] = 64;
        iArr2[4] = i2 == 1 ? 1 : 0;
        z.k.s(iArr2);
    }

    public final void e3(int i2, int i3) {
        if (nt.f8637c == 2) {
            z.k.s(227, -125, 2, (byte) i2, (byte) i3);
        } else {
            z.k.s(227, -126, 2, (byte) i2, (byte) i3);
        }
    }

    public final void f3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f8704n = i2;
        qt.y0(106, i2);
        int iB = this.f8709f.b(1, 0);
        int i3 = f8704n;
        if (iB != i3) {
            this.f8709f.g(1, i3);
        }
    }
}
