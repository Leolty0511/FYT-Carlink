package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemClock;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class y extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12284d;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f12294n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f12295o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f12296p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12282b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12285e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f12286f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{136, 13}, new int[]{137, 12}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 79}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 29}, new int[]{27, 16}, new int[]{28, 34}, new int[]{29, 35}, new int[]{30, 44}, new int[]{31, 45}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 16}, new int[]{83, 5}, new int[]{84, 54}, new int[]{85, 1}, new int[]{86, 1}, new int[]{87, 1}, new int[]{88, 32}, new int[]{89, 33}, new int[]{90, 34}, new int[]{91, 35}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12287g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{136, 13}, new int[]{137, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{4, 2}, new int[]{5, 21}, new int[]{6, 3}, new int[]{7, 25}, new int[]{8, 29}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{14, -1}, new int[]{15, -1}, new int[]{16, 39}, new int[]{17, 11}, new int[]{18, 29}, new int[]{19, 56}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 4}, new int[]{27, 16}, new int[]{28, -1}, new int[]{29, -1}, new int[]{52, -1}, new int[]{53, -1}, new int[]{54, 22}, new int[]{64, 53}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f12288h = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 18}, new int[]{135, 12}, new int[]{1, 8}, new int[]{2, 7}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 1}, new int[]{7, 12}, new int[]{8, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f12289i = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{11, 0}, new int[]{9, 3}, new int[]{6, 4}, new int[]{80, 38}, new int[]{2, 6}, new int[]{18, 18}, new int[]{12, 40}, new int[]{13, 41}, new int[]{14, 42}, new int[]{15, 43}, new int[]{30, 44}, new int[]{31, 45}, new int[]{17, 11}, new int[]{5, 2}, new int[]{10, 39}, new int[]{3, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{19, 78}, new int[]{27, 16}, new int[]{1, 5}, new int[]{22, 2}, new int[]{20, 1}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f12290j = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 5}, new int[]{22, 2}, new int[]{27, 1}, new int[]{18, 18}, new int[]{9, 3}, new int[]{6, 4}, new int[]{12, 40}, new int[]{13, 41}, new int[]{14, 42}, new int[]{15, 43}, new int[]{30, 44}, new int[]{31, 45}, new int[]{82, 10}, new int[]{19, 65}, new int[]{2, 6}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{20, 63}, new int[]{80, 16}, new int[]{4, 58}, new int[]{5, 21}, new int[]{10, 39}, new int[]{82, 78}, new int[]{17, 11}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f12291k = {new int[]{129, 26}, new int[]{130, 8}, new int[]{131, 7}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 2}, new int[]{135, 3}, new int[]{136, 4}, new int[]{137, 18}, new int[]{1, 5}, new int[]{22, 2}, new int[]{27, 1}, new int[]{18, 18}, new int[]{9, 3}, new int[]{6, 4}, new int[]{12, 40}, new int[]{13, 41}, new int[]{14, 42}, new int[]{15, 43}, new int[]{30, 44}, new int[]{31, 45}, new int[]{82, 10}, new int[]{19, 65}, new int[]{2, 6}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{20, 63}, new int[]{80, 16}, new int[]{4, 58}, new int[]{5, 21}, new int[]{10, 39}, new int[]{82, 78}, new int[]{17, 11}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f12292l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 67}, new int[]{4, 68}, new int[]{5, 2}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 9}, new int[]{9, 16}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f12293m = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 13}, new int[]{6, 6}, new int[]{7, 24}, new int[]{8, 6}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{17, 11}, new int[]{18, 63}, new int[]{19, 56}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 67}, new int[]{26, 68}, new int[]{27, 16}, new int[]{28, 34}, new int[]{29, 35}, new int[]{52, 19}, new int[]{53, 20}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 16}, new int[]{83, 9}, new int[]{84, 54}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12297q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12298r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12299s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12300t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f12301u = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(y.this.f12300t);
            y.this.f12298r = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y yVar = y.this;
            int i2 = yVar.f12298r - 1;
            yVar.f12298r = i2;
            if (i2 <= 0) {
                l0.b0.p0(yVar.f12300t);
                y.this.f12298r = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                z.k.s(227, 144, 1, 51);
                if (nt.f8633a == 262169) {
                    z.k.s(227, 202, 1, 2);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != 1) {
                if (i2 == 5) {
                    z.k.s(227, 143, 1, 6);
                    return;
                } else if (i2 != 13) {
                    z.k.s(227, 143, 1, 0);
                    return;
                } else {
                    z.k.s(227, 143, 1, 7);
                    return;
                }
            }
            int i3 = w0.d.f17796h;
            if (i3 - 65536 == 0) {
                z.k.s(227, 143, 1, 2);
                return;
            }
            if (1 == i3 - 65536 || 2 == i3 - 65536) {
                z.k.s(227, 143, 1, 3);
            } else if (i3 + 0 == 0 || 1 == i3 + 0) {
                z.k.s(227, 143, 1, 1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 6) {
            for (int i2 = 154; i2 <= 183; i2++) {
                qt.y0(i2, 1);
            }
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8314i = 0;
        } else if (nt.f8633a == 2359321) {
            qt.y0(158, 1);
            qt.y0(171, 1);
            qt.y0(175, 1);
            qt.y0(174, 1);
            qt.y0(177, 1);
            qt.y0(178, 1);
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8314i = 0;
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = new String[]{"com.syu.canbus"};
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 1;
            mtVar3.f8314i = 1;
        }
        int i3 = nt.f8633a;
        if (i3 == 458777 || i3 == 524313 || i3 == 2752537 || i3 == 2818073) {
            this.f7886a.f8314i = 0;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        this.f7886a.f8320o = 1;
        u0.c.f17386m.a(this.f12299s, 1);
        qt.x(this.f12297q);
        if (nt.f8633a == 2162713) {
            u0.c.f17374a.a(this.f12301u, 1);
            w0.e.f17819e.a(this.f12301u, 1);
            mt mtVar4 = this.f7886a;
            mtVar4.f8317l = 1;
            mtVar4.f8312g = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:463:0x0dd4  */
    /* JADX WARN: Code duplicated, block: B:466:0x0dd9 A[LOOP:12: B:464:0x0dd5->B:466:0x0dd9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:468:0x0de8  */
    /* JADX WARN: Code duplicated, block: B:471:0x0ded A[LOOP:13: B:469:0x0de9->B:471:0x0ded, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:76:0x03da  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int[][] iArr7;
        int[][] iArr8;
        int[][] iArr9;
        int i4;
        int i5;
        int[][] iArr10;
        int[][] iArr11;
        int[][] iArr12;
        int[][] iArr13;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[][] iArr14;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12285e = (b3 | 128) & 255;
            int i13 = nt.f8633a;
            if (i13 == 2162713) {
                if (b3 != 33) {
                    if (b3 == 34) {
                        o1.u.i();
                    } else if (b3 == 35) {
                        o1.u.t0();
                    } else {
                        int i14 = 0;
                        while (true) {
                            iArr7 = this.f12286f;
                            if (i14 >= iArr7.length) {
                                break;
                            }
                            int i15 = this.f12285e;
                            if (i15 == iArr7[i14][0]) {
                                if (i15 == 0) {
                                    break;
                                }
                                this.f12284d = i14;
                                break;
                            }
                            i14++;
                        }
                        int i16 = b4 & 255;
                        if (i16 == 1) {
                            if (i14 < iArr7.length) {
                                l0.b0.l0(iArr7[i14][1], 0);
                            }
                        } else if (i16 == 0) {
                            int i17 = this.f12284d;
                            if (i17 < iArr7.length && i17 != 255) {
                                l0.b0.l0(iArr7[i17][1], 1);
                            }
                            this.f12284d = 255;
                        }
                    }
                }
            } else if (i13 == 2228249 || i13 == 2490393) {
                int i18 = 0;
                while (true) {
                    iArr = this.f12289i;
                    if (i18 >= iArr.length) {
                        break;
                    }
                    int i19 = this.f12285e;
                    if (i19 == iArr[i18][0]) {
                        if (i19 == 0) {
                            break;
                        }
                        this.f12284d = i18;
                        break;
                    }
                    i18++;
                }
                int i20 = b4 & 255;
                if (i20 == 1) {
                    if (i18 < iArr.length) {
                        l0.b0.l0(iArr[i18][1], 0);
                    }
                } else if (i20 == 0) {
                    int i21 = this.f12284d;
                    if (i21 < iArr.length && i21 != 255) {
                        l0.b0.l0(iArr[i21][1], 1);
                    }
                    this.f12284d = 255;
                }
            } else if (i13 == 2359321) {
                int i22 = 0;
                while (true) {
                    iArr6 = this.f12288h;
                    if (i22 >= iArr6.length) {
                        break;
                    }
                    int i23 = this.f12285e;
                    if (i23 == iArr6[i22][0]) {
                        if (i23 == 0) {
                            break;
                        }
                        this.f12284d = i22;
                        break;
                    }
                    i22++;
                }
                int i24 = b4 & 255;
                if (i24 == 1) {
                    if (i22 < iArr6.length) {
                        if (this.f12285e == 135 && h0.c.E == 5) {
                            l0.b0.l0(26, 0);
                        } else {
                            l0.b0.l0(iArr6[i22][1], 0);
                        }
                    }
                } else if (i24 == 0 && i22 <= iArr6.length) {
                    l0.b0.l0(iArr6[this.f12284d][1], 1);
                }
            } else if (nt.a()) {
                int i25 = nt.f8633a;
                if (i25 == 65561) {
                    int i26 = 0;
                    while (true) {
                        iArr5 = this.f12287g;
                        if (i26 >= iArr5.length) {
                            break;
                        }
                        int i27 = this.f12285e;
                        if (i27 == iArr5[i26][0]) {
                            if (i27 == 0) {
                                break;
                            }
                            this.f12284d = i26;
                            break;
                        }
                        i26++;
                    }
                    int i28 = b4 & 255;
                    if (i28 == 1) {
                        if (i26 < iArr5.length) {
                            l0.b0.l0(iArr5[i26][1], 0);
                        }
                    } else if (i28 == 0) {
                        int i29 = this.f12284d;
                        if (i29 < iArr5.length && i29 != 255) {
                            l0.b0.l0(iArr5[i29][1], 1);
                        }
                        this.f12284d = 255;
                    }
                } else if (i25 == 2621465) {
                    int i30 = 0;
                    while (true) {
                        iArr4 = this.f12291k;
                        if (i30 >= iArr4.length) {
                            break;
                        }
                        int i31 = this.f12285e;
                        if (i31 == iArr4[i30][0]) {
                            if (i31 == 0) {
                                break;
                            }
                            this.f12284d = i30;
                            break;
                        }
                        i30++;
                    }
                    int i32 = this.f12285e;
                    if (i32 != 129) {
                        if (i32 != 137) {
                            int i33 = b4 & 255;
                            if (i33 == 1) {
                                if (i30 < iArr4.length) {
                                    l0.b0.l0(iArr4[i30][1], 0);
                                }
                            } else if (i33 == 0) {
                                int i34 = this.f12284d;
                                if (i34 < iArr4.length && i34 != 255) {
                                    l0.b0.l0(iArr4[i34][1], 1);
                                }
                                this.f12284d = 255;
                            }
                        } else if ((b4 & 255) == 1) {
                            if (h0.c.E != 4) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if ((b4 & 255) == 1) {
                        int i35 = h0.c.E;
                        if (i35 == 3 || i35 == 4 || i35 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i25 == 196633 || i25 == 393241) {
                    int i36 = 0;
                    while (true) {
                        iArr2 = this.f12288h;
                        if (i36 >= iArr2.length) {
                            break;
                        }
                        int i37 = this.f12285e;
                        if (i37 == iArr2[i36][0]) {
                            if (i37 == 0) {
                                break;
                            }
                            this.f12284d = i36;
                            break;
                        }
                        i36++;
                    }
                    int i38 = b4 & 255;
                    if (i38 == 1) {
                        if (i36 < iArr2.length) {
                            l0.b0.l0(iArr2[i36][1], 0);
                        }
                    } else if (i38 == 0 && i36 <= iArr2.length) {
                        l0.b0.l0(iArr2[this.f12284d][1], 1);
                    }
                } else {
                    int i39 = 0;
                    while (true) {
                        iArr3 = this.f12286f;
                        if (i39 >= iArr3.length) {
                            break;
                        }
                        int i40 = this.f12285e;
                        if (i40 == iArr3[i39][0]) {
                            if (i40 == 0) {
                                break;
                            }
                            this.f12284d = i39;
                            break;
                        }
                        i39++;
                    }
                    int i41 = this.f12285e;
                    if (i41 != 134) {
                        if (i41 != 135) {
                            int i42 = b4 & 255;
                            if (i42 == 1) {
                                if (i39 < iArr3.length) {
                                    l0.b0.l0(iArr3[i39][1], 0);
                                }
                            } else if (i42 == 0) {
                                int i43 = this.f12284d;
                                if (i43 < iArr3.length && i43 != 255) {
                                    l0.b0.l0(iArr3[i43][1], 1);
                                }
                                this.f12284d = 255;
                            }
                        } else if ((b4 & 255) == 1) {
                            int i44 = h0.c.E;
                            if (i44 == 3 || i44 == 4 || i44 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                    } else if ((b4 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                }
            }
        } else if (b2 == 2) {
            int i45 = i2 + 2;
            int i46 = bArr[i45] & 255;
            int i47 = i2 + 3;
            if ((bArr[i47] & 255) == 1 && i46 == 4) {
                o1.u.v();
            }
            byte b5 = bArr[i45];
            byte b6 = bArr[i47];
            this.f12285e = b5 & 255;
            int i48 = nt.f8633a;
            if (i48 == 2359321) {
                int i49 = 0;
                while (true) {
                    iArr13 = this.f12293m;
                    if (i49 >= iArr13.length) {
                        break;
                    }
                    int i50 = this.f12285e;
                    if (i50 == iArr13[i49][0]) {
                        if (i50 == 0) {
                            break;
                        }
                        this.f12284d = i49;
                        break;
                    }
                    i49++;
                }
                int i51 = b6 & 255;
                if (i51 == 1) {
                    if (i49 < iArr13.length) {
                        l0.b0.l0(iArr13[i49][1], 0);
                    }
                } else if (i51 == 0) {
                    int i52 = this.f12284d;
                    if (i52 < iArr13.length && i52 != 255) {
                        l0.b0.l0(iArr13[i52][1], 1);
                    }
                    this.f12284d = 255;
                }
            } else if (i48 == 2228249) {
                int i53 = 0;
                while (true) {
                    iArr12 = this.f12289i;
                    if (i53 >= iArr12.length) {
                        break;
                    }
                    int i54 = this.f12285e;
                    if (i54 == iArr12[i53][0]) {
                        if (i54 == 0) {
                            break;
                        }
                        this.f12284d = i53;
                        break;
                    }
                    i53++;
                }
                int i55 = b6 & 255;
                if (i55 == 1) {
                    if (i53 < iArr12.length) {
                        l0.b0.l0(iArr12[i53][1], 0);
                    }
                } else if (i55 == 0) {
                    int i56 = this.f12284d;
                    if (i56 < iArr12.length && i56 != 255) {
                        l0.b0.l0(iArr12[i56][1], 1);
                    }
                    this.f12284d = 255;
                }
            } else if (i48 == 2490393) {
                int i57 = 0;
                while (true) {
                    iArr11 = this.f12290j;
                    if (i57 >= iArr11.length) {
                        break;
                    }
                    int i58 = this.f12285e;
                    if (i58 == iArr11[i57][0]) {
                        if (i58 == 0) {
                            break;
                        }
                        this.f12284d = i57;
                        break;
                    }
                    i57++;
                }
                int i59 = b6 & 255;
                if (i59 == 1) {
                    if (i57 < iArr11.length) {
                        l0.b0.l0(iArr11[i57][1], 0);
                    }
                } else if (i59 == 0) {
                    int i60 = this.f12284d;
                    if (i60 < iArr11.length && i60 != 255) {
                        l0.b0.l0(iArr11[i60][1], 1);
                    }
                    this.f12284d = 255;
                }
            } else if (nt.a()) {
                int i61 = nt.f8633a;
                if (i61 == 65561) {
                    int i62 = 0;
                    while (true) {
                        iArr10 = this.f12287g;
                        if (i62 >= iArr10.length) {
                            break;
                        }
                        int i63 = this.f12285e;
                        if (i63 == iArr10[i62][0]) {
                            if (i63 == 0) {
                                break;
                            }
                            this.f12284d = i62;
                            break;
                        }
                        i62++;
                    }
                    switch (this.f12285e) {
                        case 23:
                            for (int i64 = 0; i64 < (b6 & 255); i64++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 24:
                            for (int i65 = 0; i65 < (b6 & 255); i65++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 25:
                            for (int i66 = 0; i66 < (b6 & 255); i66++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 26:
                            for (int i67 = 0; i67 < (b6 & 255); i67++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            if ((b6 & 255) != 0) {
                                if (i62 < iArr10.length) {
                                    l0.b0.l0(iArr10[i62][1], 0);
                                }
                            } else if (i62 <= iArr10.length) {
                                l0.b0.l0(iArr10[this.f12284d][1], 1);
                            }
                            break;
                    }
                } else if (i61 == 196633 || i61 == 393241) {
                    int i68 = 0;
                    while (true) {
                        iArr8 = this.f12288h;
                        if (i68 >= iArr8.length) {
                            break;
                        }
                        int i69 = this.f12285e;
                        if (i69 == iArr8[i68][0]) {
                            if (i69 == 0) {
                                break;
                            }
                            this.f12284d = i68;
                            break;
                        }
                        i68++;
                    }
                    int i70 = b6 & 255;
                    if (i70 == 1) {
                        if (i68 < iArr8.length) {
                            l0.b0.l0(iArr8[i68][1], 0);
                        }
                    } else if (i70 == 0) {
                        int i71 = this.f12284d;
                        if (i71 < iArr8.length && i71 != 255) {
                            l0.b0.l0(iArr8[i71][1], 1);
                        }
                        this.f12284d = 255;
                    }
                } else {
                    int i72 = 0;
                    while (true) {
                        iArr9 = this.f12286f;
                        if (i72 >= iArr9.length) {
                            break;
                        }
                        int i73 = this.f12285e;
                        if (i73 == iArr9[i72][0]) {
                            if (i73 == 0) {
                                break;
                            }
                            this.f12284d = i72;
                            break;
                        }
                        i72++;
                    }
                    int i74 = this.f12285e;
                    if (i74 != 9) {
                        if (i74 != 84) {
                            if (i74 == 52) {
                                for (i4 = 0; i4 < (b6 & 255); i4++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            } else if (i74 != 53) {
                                switch (i74) {
                                    case 23:
                                        for (int i75 = 0; i75 < (b6 & 255); i75++) {
                                            l0.b0.l0(7, 0);
                                        }
                                        l0.b0.l0(7, 1);
                                        break;
                                    case 24:
                                        for (int i76 = 0; i76 < (b6 & 255); i76++) {
                                            l0.b0.l0(8, 0);
                                        }
                                        l0.b0.l0(8, 1);
                                        break;
                                    case 25:
                                        while (i4 < (b6 & 255)) {
                                            l0.b0.l0(31, 0);
                                        }
                                        l0.b0.l0(31, 1);
                                        break;
                                    case 26:
                                        for (i5 = 0; i5 < (b6 & 255); i5++) {
                                            l0.b0.l0(30, 0);
                                        }
                                        l0.b0.l0(30, 1);
                                        break;
                                    default:
                                        int i77 = b6 & 255;
                                        if (i77 == 1) {
                                            if (i72 < iArr9.length) {
                                                l0.b0.l0(iArr9[i72][1], 0);
                                            }
                                        } else if (i77 == 0) {
                                            int i78 = this.f12284d;
                                            if (i78 < iArr9.length && i78 != 255) {
                                                l0.b0.l0(iArr9[i78][1], 1);
                                            }
                                            this.f12284d = 255;
                                        }
                                        break;
                                }
                            } else {
                                while (i5 < (b6 & 255)) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                            }
                        } else if ((b6 & 255) == 1) {
                            o1.u.i();
                        }
                    } else if ((b6 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                }
            }
        } else if (b2 == 3) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 6];
            byte b10 = bArr[i2 + 8];
            qt.y0(10, (b7 >> 7) & 1);
            qt.y0(11, (b7 >> 6) & 1);
            qt.y0(12, (b7 >> 5) & 1);
            qt.y0(16, (b7 >> 4) & 1);
            qt.y0(54, (b7 >> 3) & 1);
            int i79 = (b8 >> 4) & 1;
            if (i79 == 0) {
                qt.y0(21, b7 & 7);
            } else if (i79 == 1) {
                qt.y0(21, 8);
            }
            int i80 = (b8 >> 7) & 1;
            qt.y0(37, i80);
            qt.y0(52, (b8 >> 6) & 1);
            int i81 = b8 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            switch (i81) {
                case 1:
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                    break;
                case 2:
                    i10 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i6 = 1;
                    break;
                case 3:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 1;
                    break;
                case 4:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 1;
                    i9 = i8;
                    break;
                case 5:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i9 = 0;
                    i8 = 1;
                    break;
                case 6:
                    i10 = 0;
                    i6 = 0;
                    i9 = 0;
                    i7 = 1;
                    i8 = 1;
                    break;
                case 7:
                    i10 = 0;
                    i6 = 0;
                    i8 = 0;
                    i9 = 0;
                    i7 = 1;
                    break;
                case 8:
                    i10 = 0;
                    i6 = 0;
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                    break;
                case 9:
                    i10 = 0;
                    i6 = 0;
                    i7 = 1;
                    i8 = i7;
                    i9 = i8;
                    break;
                default:
                    i10 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = i7;
                    i9 = i8;
                    break;
            }
            qt.y0(49, i10);
            qt.y0(15, i6);
            qt.y0(18, i7);
            qt.y0(19, i8);
            qt.y0(20, i9);
            qt.y0(77, i81);
            int i82 = i2 + 4;
            byte b11 = bArr[i82];
            int i83 = i2 + 5;
            byte b12 = bArr[i83];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b11 = bArr[i83];
                b12 = bArr[i82];
            }
            int i84 = b11 & 255;
            if (i80 == 1) {
                if (i84 == 0) {
                    qt.y0(27, -2);
                } else if (i84 == 254) {
                    qt.y0(27, -3);
                } else if (i84 == 255) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i84 * 10);
                }
            } else if (i84 == 0) {
                qt.y0(27, -2);
            } else if (i84 != 255) {
                switch (i84) {
                    case 29:
                        qt.y0(27, 160);
                        break;
                    case 30:
                        qt.y0(27, -3);
                        break;
                    case 31:
                        qt.y0(27, 165);
                        break;
                    case 32:
                        qt.y0(27, 150);
                        break;
                    case 33:
                        qt.y0(27, 155);
                        break;
                    case 34:
                        qt.y0(27, 310);
                        break;
                    default:
                        if (i84 >= 1 && i84 <= 28) {
                            qt.y0(27, (i84 * 5) + 165);
                        }
                        break;
                }
            } else {
                qt.y0(27, -1);
            }
            int i85 = b12 & 255;
            if (i80 == 1) {
                if (i85 == 0) {
                    qt.y0(28, -2);
                } else if (i85 == 254) {
                    qt.y0(28, -3);
                } else if (i85 == 255) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i85 * 10);
                }
            } else if (i85 == 0) {
                qt.y0(28, -2);
            } else if (i85 != 255) {
                switch (i85) {
                    case 29:
                        qt.y0(28, 160);
                        break;
                    case 30:
                        qt.y0(28, -3);
                        break;
                    case 31:
                        qt.y0(28, 165);
                        break;
                    case 32:
                        qt.y0(28, 150);
                        break;
                    case 33:
                        qt.y0(28, 155);
                        break;
                    case 34:
                        qt.y0(28, 310);
                        break;
                    default:
                        if (i85 >= 1 && i85 <= 28) {
                            qt.y0(28, (i85 * 5) + 165);
                        }
                        break;
                }
            } else {
                qt.y0(28, -1);
            }
            qt.y0(29, (b9 >> 4) & 15);
            qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i86 = i2 + 9;
            qt.y0(31, (bArr[i86] >> 4) & 3);
            qt.y0(32, bArr[i86] & 3);
            if (nt.a()) {
                int i87 = i2 + 7;
                int i88 = bArr[i87] & 255;
                if (nt.f8645g[37] == 0) {
                    if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                        i11 = (((i88 & 128) != 0 ? 1320 - ((256 - i88) * 18) : (i88 * 18) + 1320) / 10) * 10;
                    } else {
                        i12 = (i88 & 128) != 0 ? 1000 - ((256 - i88) * 10) : ((i88 & 255) * 10) + 1000;
                    }
                    u0.d.B3(i12);
                    qt.y0(133, bArr[i87] & 255);
                } else {
                    i11 = (i88 * 10) + 1000;
                }
                i12 = (i11 | 268435456) & (-1);
                u0.d.B3(i12);
                qt.y0(133, bArr[i87] & 255);
            }
            int i89 = nt.f8633a;
            if (i89 == 2162713 || i89 == 2359321) {
                qt.y0(13, (b10 >> 2) & 1);
                qt.y0(33, (b10 >> 0) & 1);
            }
            qt.y0(14, (b8 >> 5) & 1);
            qt.y0(13, (b10 >> 0) & 1);
        } else if (b2 == 13) {
            qt.y0(131, bArr[i2 + 2]);
        } else if (b2 == 38) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7800);
        } else if (b2 == 68) {
            qt.y0(197, (bArr[i2 + 2] >> 2) & 1);
        } else if (b2 == 101) {
            int i90 = bArr[i2 + 2] & 255;
            int i91 = bArr[i2 + 3] & 255;
            int i92 = bArr[i2 + 4] & 255;
            int i93 = bArr[i2 + 5] & 255;
            int i94 = (i90 << 8) | i91;
            qt.y0(135, i94);
            qt.y0(1032, i94);
            int i95 = (i92 << 8) | i93;
            qt.y0(130, i95);
            qt.y0(1031, i95);
        } else if (b2 != 104) {
            switch (b2) {
                case 5:
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    qt.y0(97, (b13 >> 6) & 3);
                    qt.y0(98, (b13 >> 4) & 3);
                    qt.y0(99, (b13 >> 2) & 3);
                    qt.y0(100, (b13 >> 1) & 1);
                    qt.y0(101, b13 & 1);
                    if (((b14 >> 6) & 1) == 0) {
                        qt.y0(102, (b14 >> 3) & 1);
                    } else {
                        qt.y0(102, (b14 >> 4) & 3);
                    }
                    qt.y0(103, b14 & 3);
                    break;
                case 6:
                    byte b15 = bArr[i2 + 2];
                    byte b16 = bArr[i2 + 3];
                    qt.y0(104, (b15 >> 7) & 1);
                    qt.y0(105, (b15 >> 5) & 3);
                    qt.y0(106, (b15 >> 4) & 1);
                    qt.y0(107, (b15 >> 3) & 1);
                    qt.y0(108, (b15 >> 1) & 3);
                    qt.y0(109, b15 & 1);
                    qt.y0(110, (b16 >> 7) & 1);
                    qt.y0(111, (b16 >> 5) & 3);
                    qt.y0(112, (b16 >> 4) & 1);
                    qt.y0(113, (b16 >> 3) & 1);
                    qt.y0(114, b16 & 1);
                    break;
                case 7:
                    qt.y0(184, bArr[i2 + 2] & 1);
                    break;
                case 8:
                    if (!b3()) {
                        c3(bArr, i2 + 2, i3 - 2);
                    }
                    break;
                case 9:
                    if (!b3() && nt.R != 0) {
                        d3(bArr[i2 + 2]);
                    }
                    break;
                case 10:
                    byte b17 = bArr[i2 + 2];
                    byte b18 = bArr[i2 + 3];
                    qt.y0(117, (b17 >> 7) & 1);
                    qt.y0(118, (b17 >> 6) & 1);
                    qt.y0(119, (b17 >> 5) & 1);
                    qt.y0(120, (b17 >> 4) & 1);
                    qt.y0(121, (b17 >> 3) & 1);
                    qt.y0(122, (b17 >> 2) & 1);
                    qt.y0(123, b17 & 3);
                    qt.y0(124, (b18 >> 7) & 1);
                    qt.y0(125, (b18 >> 6) & 1);
                    qt.y0(126, (b18 >> 5) & 1);
                    int i96 = nt.f8637c;
                    if (i96 == 7 || i96 == 8) {
                        qt.y0(127, (bArr[i2 + 4] >> 4) & 3);
                    } else {
                        qt.y0(127, (b18 >> 4) & 1);
                    }
                    qt.y0(128, (b18 >> 3) & 1);
                    qt.y0(129, (b18 >> 2) & 1);
                    qt.y0(185, b18 & 3);
                    break;
                case 11:
                    qt.y0(130, (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255)) / 16);
                    break;
                default:
                    switch (b2) {
                        case 26:
                            byte b19 = bArr[i2 + 2];
                            byte b20 = bArr[i2 + 3];
                            int i97 = b19 & 255;
                            if (i97 == 0) {
                                qt.y0(154, b20 & 1);
                                qt.y0(155, (b20 >> 1) & 1);
                                qt.y0(156, (b20 >> 2) & 1);
                                qt.y0(157, (b20 >> 3) & 1);
                                qt.y0(158, (b20 >> 4) & 1);
                                qt.y0(159, (b20 >> 5) & 1);
                                qt.y0(160, (b20 >> 6) & 1);
                                qt.y0(161, (b20 >> 7) & 1);
                            } else if (i97 == 1) {
                                qt.y0(162, (b20 & 1) == 0 ? 0 : 1);
                                qt.y0(163, ((b20 >> 1) & 1) == 0 ? 0 : 1);
                                qt.y0(186, ((b20 >> 2) & 1) == 0 ? 0 : 1);
                            } else if (i97 == 2) {
                                qt.y0(164, (b20 & 1) == 0 ? 0 : 1);
                                qt.y0(165, ((b20 >> 1) & 1) == 0 ? 0 : 1);
                                qt.y0(166, ((b20 >> 2) & 1) == 0 ? 0 : 1);
                                qt.y0(167, ((b20 >> 3) & 1) == 0 ? 0 : 1);
                                qt.y0(168, ((b20 >> 4) & 1) == 0 ? 0 : 1);
                                qt.y0(169, ((b20 >> 5) & 1) == 0 ? 0 : 1);
                                qt.y0(170, ((b20 >> 6) & 1) == 0 ? 0 : 1);
                            } else if (i97 == 3) {
                                qt.y0(171, (b20 & 1) == 0 ? 0 : 1);
                                qt.y0(172, ((b20 >> 1) & 1) == 0 ? 0 : 1);
                            } else if (i97 == 4) {
                                qt.y0(173, (b20 & 1) == 0 ? 0 : 1);
                                qt.y0(174, ((b20 >> 1) & 1) == 0 ? 0 : 1);
                                qt.y0(175, ((b20 >> 2) & 1) == 0 ? 0 : 1);
                                qt.y0(172, ((b20 >> 3) & 1) == 0 ? 0 : 1);
                            } else if (i97 == 5) {
                                qt.y0(177, (b20 & 1) == 0 ? 0 : 1);
                                qt.y0(178, ((b20 >> 1) & 1) == 0 ? 0 : 1);
                                qt.y0(179, ((b20 >> 2) & 1) == 0 ? 0 : 1);
                                qt.y0(180, ((b20 >> 3) & 1) == 0 ? 0 : 1);
                                qt.y0(181, ((b20 >> 4) & 1) == 0 ? 0 : 1);
                                qt.y0(182, ((b20 >> 5) & 1) == 0 ? 0 : 1);
                                qt.y0(183, ((b20 >> 6) & 1) == 0 ? 0 : 1);
                            }
                            break;
                        case 27:
                            byte b21 = bArr[i2 + 2];
                            byte b22 = bArr[i2 + 3];
                            if (nt.f8633a == 2162713) {
                                qt.y0(42, (b21 >> 0) & 1);
                                qt.y0(43, (b21 >> 4) & 1);
                                qt.y0(47, (b21 >> 2) & 1);
                                qt.y0(46, (b21 >> 3) & 1);
                                int i98 = b22 & 255;
                                if (i98 == 0) {
                                    qt.y0(27, i98 & 255);
                                    break;
                                } else {
                                    switch (i98) {
                                        case 31:
                                            qt.y0(27, i98 & 255);
                                            break;
                                        case 32:
                                            qt.y0(27, 175);
                                            break;
                                        case 33:
                                            qt.y0(27, 170);
                                            break;
                                        case 34:
                                            qt.y0(27, 165);
                                            break;
                                        default:
                                            if (i98 >= 1 && i98 <= 29) {
                                                qt.y0(27, (i98 * 5) + 175);
                                            }
                                            break;
                                    }
                                }
                            }
                            break;
                        case 28:
                            if (nt.f8633a == 2162713) {
                                byte b23 = bArr[i2 + 2];
                                byte b24 = bArr[i2 + 3];
                                this.f12285e = b23;
                                int i99 = 0;
                                while (true) {
                                    iArr14 = this.f12292l;
                                    if (i99 < iArr14.length) {
                                        int i100 = this.f12285e;
                                        if (i100 != iArr14[i99][0]) {
                                            i99++;
                                        } else if (i100 != 0) {
                                            this.f12284d = i99;
                                        }
                                    }
                                }
                                if (i99 < iArr14.length) {
                                    if ((b24 & 255) != 0) {
                                        this.f12294n = SystemClock.uptimeMillis();
                                    } else {
                                        long jUptimeMillis = SystemClock.uptimeMillis();
                                        this.f12295o = jUptimeMillis;
                                        if (jUptimeMillis - this.f12294n < 1000) {
                                            l0.b0.l0(this.f12292l[i99][1], 0);
                                            l0.b0.l0(this.f12292l[this.f12284d][1], 1);
                                        } else {
                                            int[][] iArr15 = this.f12292l;
                                            if (iArr15[i99][1] != 2) {
                                                l0.b0.l0(iArr15[i99][1], 0);
                                                l0.b0.l0(this.f12292l[this.f12284d][1], 1);
                                            } else if (!o1.u.S(a.b.Q)) {
                                                o1.u.z();
                                            }
                                        }
                                        this.f12294n = 0L;
                                        this.f12295o = 0L;
                                    }
                                }
                            }
                            break;
                        default:
                            switch (b2) {
                                case 34:
                                    if (nt.a()) {
                                        u0.d.R2(a3(bArr[i2 + 2] & 255));
                                        u0.d.S2(a3(bArr[i2 + 3] & 255));
                                        u0.d.T2(a3(bArr[i2 + 4] & 255));
                                        u0.d.U2(a3(bArr[i2 + 5] & 255));
                                    }
                                    break;
                                case 35:
                                    if (nt.a()) {
                                        u0.d.D2(a3(bArr[i2 + 2] & 255));
                                        u0.d.E2(a3(bArr[i2 + 3] & 255));
                                        u0.d.F2(a3(bArr[i2 + 4] & 255));
                                        u0.d.G2(a3(bArr[i2 + 5] & 255));
                                    }
                                    break;
                                case 36:
                                    byte b25 = bArr[i2 + 2];
                                    byte b26 = bArr[i2 + 3];
                                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                        qt.y0(2, (b25 >> 6) & 1);
                                        qt.y0(1, (b25 >> 7) & 1);
                                    } else {
                                        qt.y0(2, (b25 >> 7) & 1);
                                        qt.y0(1, (b25 >> 6) & 1);
                                    }
                                    qt.y0(4, (b25 >> 5) & 1);
                                    qt.y0(3, (b25 >> 4) & 1);
                                    qt.y0(5, (b25 >> 3) & 1);
                                    qt.y0(0, (b26 >> 7) & 1);
                                    if ((b26 & 1) == 1) {
                                        qt.a(1);
                                    } else {
                                        qt.a(0);
                                    }
                                    break;
                                default:
                                    switch (b2) {
                                        case 49:
                                            byte b27 = bArr[i2 + 3];
                                            byte b28 = bArr[i2 + 4];
                                            byte b29 = bArr[i2 + 6];
                                            byte b30 = bArr[i2 + 7];
                                            byte b31 = bArr[i2 + 8];
                                            byte b32 = bArr[i2 + 9];
                                            qt.y0(132, b27 & 255);
                                            qt.y0(134, ((b29 & 255) << 24) | ((b30 & 255) << 16) | ((b31 & 255) << 8) | (b32 & 255));
                                            break;
                                        case 50:
                                            byte b33 = bArr[i2 + 2];
                                            byte b34 = bArr[i2 + 3];
                                            byte b35 = bArr[i2 + 4];
                                            byte b36 = bArr[i2 + 5];
                                            byte b37 = bArr[i2 + 6];
                                            int i101 = ((b33 & 255) << 8) | (b34 & 255);
                                            qt.y0(135, i101);
                                            qt.y0(1032, i101);
                                            qt.y0(136, ((b35 & 255) << 8) | (b36 & 255));
                                            qt.y0(137, b37 & 255);
                                            break;
                                        case 51:
                                            int i102 = i2 + 2;
                                            byte b38 = bArr[i102];
                                            byte b39 = bArr[i102 + 1];
                                            byte b40 = bArr[i102 + 2];
                                            byte b41 = bArr[i102 + 3];
                                            byte b42 = bArr[i102 + 4];
                                            byte b43 = bArr[i102 + 5];
                                            byte b44 = bArr[i102 + 6];
                                            byte b45 = bArr[i102 + 7];
                                            byte b46 = bArr[i102 + 10];
                                            byte b47 = bArr[i102 + 11];
                                            byte b48 = bArr[i102 + 12];
                                            byte b49 = bArr[i102 + 13];
                                            int i103 = ((b38 & 255) << 8) | (b39 & 255);
                                            qt.y0(138, i103);
                                            int i104 = ((b40 & 255) << 8) | (b41 & 255);
                                            qt.y0(139, i104);
                                            int i105 = (b43 & 255) | ((b42 & 255) << 8);
                                            qt.y0(140, i105);
                                            int i106 = ((b44 & 255) << 8) | (255 & b45);
                                            qt.y0(141, i106);
                                            o1.x[] xVarArr = nt.f8643f;
                                            o1.x.C(xVarArr, 1049, new int[]{8, ((i103 * 4) / 10) | GLES10.GL_MODULATE}, null, null);
                                            o1.x.C(xVarArr, 1049, new int[]{8, ((i104 * 4) / 10) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                            o1.x.C(xVarArr, 1049, new int[]{8, ((i105 * 4) / 10) | GLES10.GL_TEXTURE_ENV}, null, null);
                                            o1.x.C(xVarArr, 1049, new int[]{8, ((i106 * 4) / 10) | 9216}, null, null);
                                            qt.y0(142, b46 & 1);
                                            qt.y0(143, (b46 >> 1) & 1);
                                            qt.y0(144, (b46 >> 2) & 1);
                                            qt.y0(145, b47 & 1);
                                            qt.y0(146, (b47 >> 1) & 1);
                                            qt.y0(147, (b47 >> 2) & 1);
                                            qt.y0(148, b48 & 1);
                                            qt.y0(149, (b48 >> 1) & 1);
                                            qt.y0(150, (b48 >> 2) & 1);
                                            qt.y0(151, b49 & 1);
                                            qt.y0(152, (b49 >> 1) & 1);
                                            qt.y0(153, (b49 >> 2) & 1);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            qt.y0(187, bArr[i2 + 2] & 255);
            qt.y0(188, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(189, bArr[i2 + 5] & 255);
            qt.y0(190, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(191, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12299s);
        l0.b0.p0(this.f12300t);
        qt.o0(this.f12297q);
        u0.c.f17374a.d(this.f12301u);
        w0.e.f17819e.d(this.f12301u);
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
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
            }
            return;
        }
        if (i2 == 17) {
            if (T2(iArr, 1)) {
                z.k.s(227, 113, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 96) {
            if (T2(iArr, 1)) {
                if (iArr[0] == 16) {
                    z.k.s(227, -118, 1, 17);
                    return;
                } else {
                    z.k.s(227, -121, 1, iArr[0]);
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 3:
                if (T2(iArr, 2)) {
                    if (nt.f8633a != 2162713) {
                        z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    } else {
                        z.k.s(227, 116, 2, iArr[0], iArr[1]);
                    }
                }
                break;
            case 4:
                if (T2(iArr, 1)) {
                    z.k.s(227, 132, 1, iArr[0]);
                }
                break;
            case 5:
                if (T2(iArr, 1)) {
                    z.k.s(227, 133, 1, iArr[0]);
                }
                break;
            case 6:
                e3(134, (byte) 10, iArr);
                break;
            case 7:
                if (T2(iArr, 1)) {
                    z.k.s(227, 136, 1, iArr[0]);
                }
                break;
            case 8:
                if (T2(iArr, 1)) {
                    z.k.s(227, 144, 1, iArr[0]);
                }
                break;
            case 9:
                if (T2(iArr, 1)) {
                    z.k.s(227, 139, 1, iArr[0]);
                }
                break;
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final boolean b3() {
        return n0.j4.f16464b == 3;
    }

    public final void c3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            int i6 = ((bArr[i5] & 240) >> 4) & 255;
            if (i6 == 15) {
                break;
            }
            if (i6 > -1 && i6 < 10) {
                stringBuffer.append((char) (i6 + 48));
            } else if (i6 == 10) {
                stringBuffer.append('*');
            } else if (i6 == 11) {
                stringBuffer.append('#');
            }
            int i7 = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            if (i7 == 15) {
                break;
            }
            if (i7 > -1 && i7 < 10) {
                stringBuffer.append((char) (i7 + 48));
            } else if (i7 == 10) {
                stringBuffer.append('*');
            } else if (i7 == 11) {
                stringBuffer.append('#');
            }
        }
        String string = stringBuffer.toString();
        if (qt.B0(115, string, this.f12296p)) {
            this.f12296p = string;
        }
    }

    public final void d3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f12282b == 1 && (i3 = this.f12283c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f12282b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f12282b != 0) {
                if (i4 == 0 || this.f12282b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f12282b = 1;
            this.f12283c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f12282b != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.xp.yinglang.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.xp.yinglang.YLOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void e3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 3;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = (byte) i2;
        iArr2[2] = b2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i7 = 0; i7 < i4; i7++) {
            stringBuffer.append(iArr2[i7] + "\n");
        }
        z.k.s(iArr2);
    }
}
