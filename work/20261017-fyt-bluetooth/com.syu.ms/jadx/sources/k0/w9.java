package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class w9 extends lt {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f11679v;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11683e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11687i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11688j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11689k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f11680b = new int[57];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11684f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11685g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, -1}, new int[]{8, 33}, new int[]{9, 32}, new int[]{11, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{98, 16}, new int[]{101, 11}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{133, 38}, new int[]{134, 6}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, 16}, new int[]{145, 11}, new int[]{146, 1}, new int[]{147, 56}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{159, 53}, new int[]{164, 54}, new int[]{168, 18}, new int[]{170, 29}, new int[]{172, 2}, new int[]{173, 24}, new int[]{174, 39}, new int[]{176, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{180, 50}, new int[]{181, 51}, new int[]{182, -1}, new int[]{183, -1}, new int[]{184, -1}, new int[]{185, -1}, new int[]{186, 22}, new int[]{187, 54}, new int[]{188, 28}, new int[]{189, 27}, new int[]{190, 39}, new int[]{191, 5}, new int[]{192, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11686h = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String[][] f11690l = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String[][] f11691m = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11692n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11693o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f11694p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11695q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11696r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11697s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f11698t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f11699u = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w9 w9Var = w9.this;
            byte b2 = (byte) (w9Var.f11694p + 1);
            w9Var.f11694p = b2;
            if (b2 > 5) {
                l0.b0.o0(w9Var.f11695q);
                w9.this.f11694p = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.h0.t();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w9 w9Var = w9.this;
            w9Var.f11692n = 0;
            w9Var.f11693o = 0;
            z.k.s(227, 2, 36, 32, 3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w9.this.b3(u0.b.K3);
        }
    }

    public static int g3(int i2) {
        return (i2 == 32 || i2 == 33 || i2 == 34 || i2 == 35 || i2 == 27 || i2 == 28 || i2 == 3 || i2 == 4 || i2 == 29) ? 1 : 0;
    }

    public static void i3(int i2) {
        int i3;
        if (i2 == 32) {
            i3 = 14;
        } else if (i2 == 33) {
            i3 = 15;
        } else if (i2 == 34) {
            i3 = 12;
        } else if (i2 == 35) {
            i3 = 13;
        } else if (i2 == 3) {
            i3 = 10;
        } else if (i2 == 4) {
            i3 = 11;
        } else {
            i3 = i2 == 29 ? 16 : 0;
        }
        z.k.s(-29, 3, -38, f11679v, 2, (byte) i3);
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        f3(this.f11690l);
        f3(this.f11691m);
        u0.c.f17397x.a(this.f11699u, 1);
        if (o1.q0.v()) {
            qt.y(this.f11698t);
        }
        if (nt.a()) {
            qt.z(this.f11696r);
            u0.c.f17386m.a(this.f11697s, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x016c  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:62:0x01ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:64:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:68:0x01e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:70:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:71:0x01fd  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String string;
        int i4;
        int i5;
        int[][] iArr;
        int i6;
        byte b2;
        int[][] iArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        char c2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = i2 + 1;
        byte b3 = bArr[i19];
        if (b3 == -48) {
            this.f11687i = false;
            int i20 = i2 + 2;
            if (f11679v == (bArr[i20] & 255)) {
                this.f11687i = true;
            }
            int i21 = bArr[i20] & 255;
            f11679v = i21;
            qt.y0(104, i21);
            byte b4 = bArr[i2 + 3];
            int i22 = b4 >> 4;
            int i23 = i22 & 15;
            if (i23 == 15) {
                int[] iArr3 = new int[16];
                for (int i24 = 0; i24 < 16; i24++) {
                    iArr3[i24] = bArr[i2 + 4 + i24];
                }
                qt.z0(105, iArr3, "icon");
                string = ProxyProperties.LOCAL_EXCL_LIST;
            } else {
                StringBuilder sb = new StringBuilder();
                int i25 = (i2 + i3) - 1;
                for (int i26 = i2 + 4; i26 < i25 && (bArr[i26] != 0 || bArr[i26 + 1] != 0); i26 += 2) {
                    sb.append((char) (((bArr[i26] << 8) & 65535) | (bArr[i26 + 1] & 255)));
                }
                string = sb.toString();
            }
            int i27 = i22 & 14;
            this.f11688j = i27;
            int i28 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
            this.f11689k = i28;
            if (i28 >= 0 && i28 < 3) {
                if (!this.f11687i || i28 <= 0) {
                    f3(this.f11690l);
                    f3(this.f11691m);
                    int i29 = this.f11688j;
                    if (i29 >= 0 && i29 < 5) {
                        String[][] strArr = this.f11690l;
                        if (strArr != null && strArr[i29] != null) {
                            strArr[i29][this.f11689k] = string;
                        }
                    } else if (i29 >= 10 && i29 <= 13) {
                        int i30 = i29 - 10;
                        this.f11688j = i30;
                        String[][] strArr2 = this.f11691m;
                        if (strArr2 != null && strArr2[i30] != null) {
                            strArr2[i30][this.f11689k] = string;
                        }
                    }
                } else if (i27 >= 0 && i27 < 5) {
                    String[][] strArr3 = this.f11690l;
                    if (strArr3 != null && strArr3[i27] != null) {
                        strArr3[i27][i28] = string;
                    }
                    string = e3(strArr3);
                } else if (i27 >= 10 && i27 <= 13) {
                    int i31 = i27 - 10;
                    this.f11688j = i31;
                    String[][] strArr4 = this.f11691m;
                    if (strArr4 != null && strArr4[i31] != null) {
                        strArr4[i31][i28] = string;
                    }
                    string = e3(strArr4);
                }
            }
            qt.z0(106, new int[]{i23, i28}, string);
            return;
        }
        if (b3 == -32) {
            byte b5 = bArr[i2 + 2];
            if (b5 == 1) {
                o1.u.x0();
                int i32 = bArr[i2 + 3] & 255;
                if (i32 == 1) {
                    w0.d.f17790b.x(65536);
                    return;
                }
                if (i32 == 2) {
                    w0.d.f17790b.x(65537);
                    return;
                } else if (i32 == 3) {
                    w0.d.f17790b.x(0);
                    return;
                } else {
                    if (i32 != 4) {
                        return;
                    }
                    w0.d.f17790b.x(1);
                    return;
                }
            }
            if (b5 == 2) {
                w0.d.f17790b.l(1, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8));
                return;
            }
            if (b5 == 3) {
                int i33 = bArr[i2 + 4] & 255;
                if (i33 > 99) {
                    i33 = 99;
                }
                w0.d.f17790b.l(1, ((bArr[i2 + 3] & 255) * 100) + i33);
                return;
            }
            if (b5 == 4) {
                w0.f.f(bArr[i2 + 3] & 255);
                return;
            }
            if (b5 == 22) {
                o1.u.q();
                return;
            }
            switch (b5) {
                case 6:
                    o0.e.f16766b.D(bArr[i2 + 3] & 255);
                    break;
                case 7:
                    o1.u.E();
                    int i34 = bArr[i2 + 3] & 255;
                    if (i34 == 1) {
                        o0.e.f16766b.o();
                        break;
                    } else if (i34 == 2) {
                        o0.e.f16766b.n();
                        break;
                    }
                    break;
                case 8:
                case 9:
                    o0.e.f16766b.s(1);
                    break;
                case 10:
                    o0.e.f16766b.s(0);
                    break;
                case 11:
                case 12:
                case 13:
                    o0.e.f16766b.t();
                    break;
            }
            return;
        }
        if (b3 == -24) {
            qt.y0(99, bArr[i2 + 4] & 255);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                u0.d.D2(l0.h0.o(bArr[i2 + 6] & 255));
                u0.d.E2(l0.h0.o(bArr[i2 + 7] & 255));
                u0.d.F2(l0.h0.o(bArr[i2 + 8] & 255));
                u0.d.G2(l0.h0.o(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b3 == 104) {
            int i35 = (bArr[i2 + 3] >> 4) & 1;
            qt.y0(100, i35);
            qt.y0(37, i35);
            return;
        }
        if (b3 == 116) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            byte b14 = bArr[i2 + 10];
            byte b15 = bArr[i2 + 11];
            int i36 = b6 & 1;
            int[] iArr4 = this.f11680b;
            if (iArr4[1] != i36) {
                iArr4[1] = i36;
                i4 = 2;
                o1.x.B(nt.f8643f, 107, new int[]{1, iArr4[1]});
            } else {
                i4 = 2;
            }
            int i37 = b7 & 1;
            int[] iArr5 = this.f11680b;
            if (iArr5[i4] != i37) {
                iArr5[i4] = i37;
                o1.x[] xVarArr = nt.f8643f;
                int[] iArr6 = new int[i4];
                iArr6[0] = i4;
                iArr6[1] = iArr5[i4];
                o1.x.B(xVarArr, 107, iArr6);
            }
            int i38 = (b7 >> 1) & 1;
            int[] iArr7 = this.f11680b;
            if (iArr7[3] != i38) {
                iArr7[3] = i38;
                i5 = 2;
                o1.x.B(nt.f8643f, 107, new int[]{3, iArr7[3]});
            } else {
                i5 = 2;
            }
            int i39 = (b7 >> 2) & 1;
            int[] iArr8 = this.f11680b;
            if (iArr8[4] != i39) {
                iArr8[4] = i39;
                o1.x[] xVarArr2 = nt.f8643f;
                int[] iArr9 = new int[i5];
                iArr9[0] = 4;
                iArr9[1] = iArr8[4];
                o1.x.B(xVarArr2, 107, iArr9);
            }
            int i40 = b8 & 1;
            int[] iArr10 = this.f11680b;
            if (iArr10[5] != i40) {
                iArr10[5] = i40;
                o1.x.B(nt.f8643f, 107, new int[]{5, iArr10[5]});
            }
            int i41 = (b8 >> 1) & 1;
            int[] iArr11 = this.f11680b;
            if (iArr11[6] != i41) {
                iArr11[6] = i41;
                o1.x.B(nt.f8643f, 107, new int[]{6, iArr11[6]});
            }
            int i42 = (b8 >> 2) & 1;
            int[] iArr12 = this.f11680b;
            if (iArr12[7] != i42) {
                iArr12[7] = i42;
                o1.x.B(nt.f8643f, 107, new int[]{7, iArr12[7]});
            }
            int i43 = (b8 >> 3) & 1;
            int[] iArr13 = this.f11680b;
            if (iArr13[8] != i43) {
                iArr13[8] = i43;
                o1.x.B(nt.f8643f, 107, new int[]{8, iArr13[8]});
            }
            int i44 = (b8 >> 4) & 1;
            int[] iArr14 = this.f11680b;
            if (iArr14[9] != i44) {
                iArr14[9] = i44;
                o1.x.B(nt.f8643f, 107, new int[]{9, iArr14[9]});
            }
            int i45 = (b8 >> 5) & 1;
            int[] iArr15 = this.f11680b;
            if (iArr15[10] != i45) {
                iArr15[10] = i45;
                o1.x.B(nt.f8643f, 107, new int[]{10, iArr15[10]});
            }
            int i46 = (b8 >> 6) & 1;
            int[] iArr16 = this.f11680b;
            if (iArr16[11] != i46) {
                iArr16[11] = i46;
                o1.x.B(nt.f8643f, 107, new int[]{11, iArr16[11]});
            }
            int i47 = (b8 >> 7) & 1;
            int[] iArr17 = this.f11680b;
            if (iArr17[12] != i47) {
                iArr17[12] = i47;
                o1.x.B(nt.f8643f, 107, new int[]{12, iArr17[12]});
            }
            int i48 = b9 & 1;
            int[] iArr18 = this.f11680b;
            if (iArr18[13] != i48) {
                iArr18[13] = i48;
                o1.x.B(nt.f8643f, 107, new int[]{13, iArr18[13]});
            }
            int i49 = (b9 >> 1) & 1;
            int[] iArr19 = this.f11680b;
            if (iArr19[14] != i49) {
                iArr19[14] = i49;
                o1.x.B(nt.f8643f, 107, new int[]{14, iArr19[14]});
            }
            int i50 = (b9 >> 2) & 1;
            int[] iArr20 = this.f11680b;
            if (iArr20[15] != i50) {
                iArr20[15] = i50;
                o1.x.B(nt.f8643f, 107, new int[]{15, iArr20[15]});
            }
            int i51 = (b9 >> 3) & 1;
            int[] iArr21 = this.f11680b;
            if (iArr21[16] != i51) {
                iArr21[16] = i51;
                o1.x.B(nt.f8643f, 107, new int[]{16, iArr21[16]});
            }
            int i52 = (b9 >> 4) & 1;
            int[] iArr22 = this.f11680b;
            if (iArr22[17] != i52) {
                iArr22[17] = i52;
                o1.x.B(nt.f8643f, 107, new int[]{17, iArr22[17]});
            }
            int i53 = b10 & 1;
            int[] iArr23 = this.f11680b;
            if (iArr23[18] != i53) {
                iArr23[18] = i53;
                o1.x.B(nt.f8643f, 107, new int[]{18, iArr23[18]});
            }
            int i54 = (b10 >> 1) & 1;
            int[] iArr24 = this.f11680b;
            if (iArr24[19] != i54) {
                iArr24[19] = i54;
                o1.x.B(nt.f8643f, 107, new int[]{19, iArr24[19]});
            }
            int i55 = (b10 >> 2) & 1;
            int[] iArr25 = this.f11680b;
            if (iArr25[20] != i55) {
                iArr25[20] = i55;
                o1.x.B(nt.f8643f, 107, new int[]{20, iArr25[20]});
            }
            int i56 = (b10 >> 3) & 1;
            int[] iArr26 = this.f11680b;
            if (iArr26[21] != i56) {
                iArr26[21] = i56;
                o1.x.B(nt.f8643f, 107, new int[]{21, iArr26[21]});
            }
            int i57 = (b10 >> 4) & 1;
            int[] iArr27 = this.f11680b;
            if (iArr27[22] != i57) {
                iArr27[22] = i57;
                o1.x.B(nt.f8643f, 107, new int[]{22, iArr27[22]});
            }
            int i58 = (b10 >> 5) & 1;
            int[] iArr28 = this.f11680b;
            if (iArr28[23] != i58) {
                iArr28[23] = i58;
                o1.x.B(nt.f8643f, 107, new int[]{23, iArr28[23]});
            }
            int i59 = (b10 >> 6) & 1;
            int[] iArr29 = this.f11680b;
            if (iArr29[24] != i59) {
                iArr29[24] = i59;
                o1.x.B(nt.f8643f, 107, new int[]{24, iArr29[24]});
            }
            int i60 = b11 & 1;
            int[] iArr30 = this.f11680b;
            if (iArr30[25] != i60) {
                iArr30[25] = i60;
                o1.x.B(nt.f8643f, 107, new int[]{25, iArr30[25]});
            }
            int i61 = (b11 >> 1) & 1;
            int[] iArr31 = this.f11680b;
            if (iArr31[26] != i61) {
                iArr31[26] = i61;
                o1.x.B(nt.f8643f, 107, new int[]{26, iArr31[26]});
            }
            int i62 = (b11 >> 2) & 1;
            int[] iArr32 = this.f11680b;
            if (iArr32[27] != i62) {
                iArr32[27] = i62;
                o1.x.B(nt.f8643f, 107, new int[]{27, iArr32[27]});
            }
            int i63 = (b11 >> 3) & 1;
            int[] iArr33 = this.f11680b;
            if (iArr33[28] != i63) {
                iArr33[28] = i63;
                o1.x.B(nt.f8643f, 107, new int[]{28, iArr33[28]});
            }
            int i64 = (b11 >> 4) & 1;
            int[] iArr34 = this.f11680b;
            if (iArr34[29] != i64) {
                iArr34[29] = i64;
                o1.x.B(nt.f8643f, 107, new int[]{29, iArr34[29]});
            }
            int i65 = (b11 >> 5) & 1;
            int[] iArr35 = this.f11680b;
            if (iArr35[30] != i65) {
                iArr35[30] = i65;
                o1.x.B(nt.f8643f, 107, new int[]{30, iArr35[30]});
            }
            int i66 = (b11 >> 6) & 1;
            int[] iArr36 = this.f11680b;
            if (iArr36[31] != i66) {
                iArr36[31] = i66;
                o1.x.B(nt.f8643f, 107, new int[]{31, iArr36[31]});
            }
            int i67 = (b11 >> 7) & 1;
            int[] iArr37 = this.f11680b;
            if (iArr37[32] != i67) {
                iArr37[32] = i67;
                o1.x.B(nt.f8643f, 107, new int[]{32, iArr37[32]});
            }
            int i68 = b12 & 1;
            int[] iArr38 = this.f11680b;
            if (iArr38[33] != i68) {
                iArr38[33] = i68;
                o1.x.B(nt.f8643f, 107, new int[]{33, iArr38[33]});
            }
            int i69 = (b12 >> 1) & 1;
            int[] iArr39 = this.f11680b;
            if (iArr39[34] != i69) {
                iArr39[34] = i69;
                o1.x.B(nt.f8643f, 107, new int[]{34, iArr39[34]});
            }
            int i70 = (b12 >> 2) & 1;
            int[] iArr40 = this.f11680b;
            if (iArr40[35] != i70) {
                iArr40[35] = i70;
                o1.x.B(nt.f8643f, 107, new int[]{35, iArr40[35]});
            }
            int i71 = (b12 >> 3) & 1;
            int[] iArr41 = this.f11680b;
            if (iArr41[36] != i71) {
                iArr41[36] = i71;
                o1.x.B(nt.f8643f, 107, new int[]{36, iArr41[36]});
            }
            int i72 = (b12 >> 4) & 1;
            int[] iArr42 = this.f11680b;
            if (iArr42[37] != i72) {
                iArr42[37] = i72;
                o1.x.B(nt.f8643f, 107, new int[]{37, iArr42[37]});
            }
            int i73 = b13 & 1;
            int[] iArr43 = this.f11680b;
            if (iArr43[38] != i73) {
                iArr43[38] = i73;
                o1.x.B(nt.f8643f, 107, new int[]{38, iArr43[38]});
            }
            int i74 = (b13 >> 1) & 1;
            int[] iArr44 = this.f11680b;
            if (iArr44[39] != i74) {
                iArr44[39] = i74;
                o1.x.B(nt.f8643f, 107, new int[]{39, iArr44[39]});
            }
            int i75 = (b13 >> 2) & 1;
            int[] iArr45 = this.f11680b;
            if (iArr45[40] != i75) {
                iArr45[40] = i75;
                o1.x.B(nt.f8643f, 107, new int[]{40, iArr45[40]});
            }
            int i76 = (b13 >> 3) & 1;
            int[] iArr46 = this.f11680b;
            if (iArr46[41] != i76) {
                iArr46[41] = i76;
                o1.x.B(nt.f8643f, 107, new int[]{41, iArr46[41]});
            }
            int i77 = (b13 >> 4) & 1;
            int[] iArr47 = this.f11680b;
            if (iArr47[42] != i77) {
                iArr47[42] = i77;
                o1.x.B(nt.f8643f, 107, new int[]{42, iArr47[42]});
            }
            int i78 = (b13 >> 5) & 1;
            int[] iArr48 = this.f11680b;
            if (iArr48[43] != i78) {
                iArr48[43] = i78;
                o1.x.B(nt.f8643f, 107, new int[]{43, iArr48[43]});
            }
            int i79 = (b13 >> 6) & 1;
            int[] iArr49 = this.f11680b;
            if (iArr49[44] != i79) {
                iArr49[44] = i79;
                o1.x.B(nt.f8643f, 107, new int[]{44, iArr49[44]});
            }
            int i80 = (b13 >> 7) & 1;
            int[] iArr50 = this.f11680b;
            if (iArr50[45] != i80) {
                iArr50[45] = i80;
                o1.x.B(nt.f8643f, 107, new int[]{45, iArr50[45]});
            }
            int i81 = (b14 >> 2) & 1;
            int[] iArr51 = this.f11680b;
            if (iArr51[46] != i81) {
                iArr51[46] = i81;
                o1.x.B(nt.f8643f, 107, new int[]{46, iArr51[46]});
            }
            int i82 = (b14 >> 3) & 1;
            int[] iArr52 = this.f11680b;
            if (iArr52[47] != i82) {
                iArr52[47] = i82;
                o1.x.B(nt.f8643f, 107, new int[]{47, iArr52[47]});
            }
            int i83 = (b14 >> 4) & 1;
            int[] iArr53 = this.f11680b;
            if (iArr53[48] != i83) {
                iArr53[48] = i83;
                o1.x.B(nt.f8643f, 107, new int[]{48, iArr53[48]});
            }
            int i84 = (b14 >> 5) & 1;
            int[] iArr54 = this.f11680b;
            if (iArr54[49] != i84) {
                iArr54[49] = i84;
                o1.x.B(nt.f8643f, 107, new int[]{49, iArr54[49]});
            }
            int i85 = (b14 >> 6) & 1;
            int[] iArr55 = this.f11680b;
            if (iArr55[50] != i85) {
                iArr55[50] = i85;
                o1.x.B(nt.f8643f, 107, new int[]{50, iArr55[50]});
            }
            int i86 = b15 & 1;
            int[] iArr56 = this.f11680b;
            if (iArr56[51] != i86) {
                iArr56[51] = i86;
                o1.x.B(nt.f8643f, 107, new int[]{51, iArr56[51]});
            }
            int i87 = (b15 >> 3) & 1;
            int[] iArr57 = this.f11680b;
            if (iArr57[52] != i87) {
                iArr57[52] = i87;
                o1.x.B(nt.f8643f, 107, new int[]{52, iArr57[52]});
            }
            int i88 = (b15 >> 4) & 1;
            int[] iArr58 = this.f11680b;
            if (iArr58[53] != i88) {
                iArr58[53] = i88;
                o1.x.B(nt.f8643f, 107, new int[]{53, iArr58[53]});
            }
            int i89 = (b15 >> 5) & 1;
            int[] iArr59 = this.f11680b;
            if (iArr59[54] != i89) {
                iArr59[54] = i89;
                o1.x.B(nt.f8643f, 107, new int[]{54, iArr59[54]});
            }
            int i90 = (b15 >> 6) & 1;
            int[] iArr60 = this.f11680b;
            if (iArr60[55] != i90) {
                iArr60[55] = i90;
                o1.x.B(nt.f8643f, 107, new int[]{55, iArr60[55]});
            }
            int i91 = (b15 >> 7) & 1;
            int[] iArr61 = this.f11680b;
            if (iArr61[56] != i91) {
                iArr61[56] = i91;
                o1.x.B(nt.f8643f, 107, new int[]{56, iArr61[56]});
                return;
            }
            return;
        }
        if (b3 == -46) {
            qt.y0(103, ((bArr[i2 + 5] << 8) & 65535) | (bArr[i2 + 4] & 255));
            return;
        }
        if (b3 == -45) {
            if (nt.R == 0) {
                return;
            }
            int i92 = i2 + 3;
            if (this.f11686h != bArr[i92]) {
                this.f11686h = bArr[i92];
                j3(bArr[i92]);
            }
            qt.y0(101, bArr[i92]);
            qt.y0(102, bArr[i2 + 4]);
            return;
        }
        if (b3 == 17) {
            qt.y0(98, bArr[i19 + 2] & 255);
            if (nt.a()) {
                this.f11682d = bArr[i2 + 4] & 255;
                byte b16 = bArr[i2 + 5];
                int i93 = 0;
                while (true) {
                    iArr = this.f11685g;
                    if (i93 >= iArr.length) {
                        break;
                    }
                    int i94 = this.f11682d;
                    if (i94 == iArr[i93][0]) {
                        if (i94 == 0) {
                            break;
                        }
                        this.f11681c = i93;
                        break;
                    }
                    i93++;
                }
                int i95 = b16 & 255;
                if (i95 == 1) {
                    if (i93 < iArr.length && (b2 = this.f11694p) == 0) {
                        this.f11694p = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i93][1], 0);
                        l0.b0.a(this.f11695q);
                    }
                } else if (i95 == 0) {
                    int i96 = this.f11681c;
                    if (i96 < iArr.length) {
                        i6 = 255;
                        if (i96 != 255) {
                            l0.b0.l0(iArr[i96][1], 1);
                            l0.b0.o0(this.f11695q);
                            this.f11694p = (byte) 0;
                        }
                    } else {
                        i6 = 255;
                    }
                    this.f11681c = i6;
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b3 == 18) {
            byte b17 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b17 >> 7) & 1);
                qt.y0(1, (b17 >> 6) & 1);
            } else {
                qt.y0(1, (b17 >> 7) & 1);
                qt.y0(2, (b17 >> 6) & 1);
            }
            qt.y0(3, (b17 >> 5) & 1);
            qt.y0(4, (b17 >> 4) & 1);
            qt.y0(5, (b17 >> 3) & 1);
            return;
        }
        if (b3 != 33) {
            if (b3 == 34) {
                if (nt.a()) {
                    byte b18 = bArr[i2 + 2];
                    byte b19 = bArr[i2 + 3];
                    if (b18 == 1 && b19 != (i12 = this.f11692n)) {
                        if (b19 > i12) {
                            for (int i97 = 0; i97 < b19 - this.f11692n; i97++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b19 < i12) {
                            for (int i98 = 0; i98 < this.f11692n - b19; i98++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f11692n = b19;
                        return;
                    }
                    return;
                }
                return;
            }
            if (b3 != 49) {
                if (b3 != 50) {
                    return;
                }
                int i99 = i2 + 4;
                int i100 = i2 + 5;
                qt.y0(110, ((bArr[i99] << 8) & 65280) | (bArr[i100] & 255));
                qt.y0(1032, ((bArr[i99] << 8) & 65280) | (bArr[i100] & 255));
                qt.y0(109, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            byte b20 = bArr[i2 + 2];
            byte b21 = bArr[i2 + 3];
            byte b22 = bArr[i2 + 4];
            byte b23 = bArr[i2 + 6];
            byte b24 = bArr[i2 + 7];
            int i101 = i2 + 8;
            byte b25 = bArr[i101];
            int i102 = i2 + 9;
            byte b26 = bArr[i102];
            byte b27 = bArr[i2 + 10];
            byte b28 = bArr[i2 + 11];
            byte b29 = bArr[i2 + 12];
            qt.y0(10, (b20 >> 6) & 1);
            qt.y0(15, (b21 >> 7) & 1);
            qt.y0(53, (b21 >> 6) & 1);
            int[] iArr62 = new int[1];
            iArr62[0] = ((b21 >> 4) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr62);
            qt.y0(13, (b21 >> 3) & 1);
            qt.y0(11, (b21 >> 0) & 1);
            qt.y0(16, (b22 >> 5) & 1);
            qt.y0(65, (b22 >> 4) & 1);
            qt.y0(30, (b22 >> 2) & 3);
            qt.y0(29, (b22 >> 0) & 3);
            int i103 = b23 & 255;
            if (i103 != 1) {
                if (i103 == 2) {
                    i15 = 1;
                    i13 = 0;
                    i14 = 0;
                    i16 = 0;
                } else if (i103 == 3) {
                    i16 = 1;
                    i13 = 0;
                    i14 = 0;
                    i15 = 0;
                } else if (i103 == 5) {
                    i14 = 1;
                    i16 = 1;
                    i13 = 0;
                    i15 = 0;
                } else if (i103 != 6) {
                    switch (i103) {
                        case 11:
                            i15 = 1;
                            i13 = 0;
                            i14 = 0;
                            i16 = 0;
                            break;
                        case 12:
                            i16 = 1;
                            i15 = 1;
                            i13 = 0;
                            i14 = 0;
                            break;
                        case 13:
                            i14 = 1;
                            i15 = 1;
                            i13 = 0;
                            i16 = 0;
                            break;
                        case 14:
                            i14 = 1;
                            i16 = 1;
                            i15 = 1;
                            i13 = 0;
                            break;
                        default:
                            i13 = 0;
                            i14 = 0;
                            break;
                    }
                } else {
                    i14 = 1;
                    i13 = 0;
                    i16 = 0;
                    i15 = i16;
                }
                qt.y0(49, i13);
                qt.y0(19, i14);
                qt.y0(20, i16);
                qt.y0(18, i15);
                qt.y0(21, b24 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b25 = bArr[i102];
                    b26 = bArr[i101];
                }
                byte b30 = b26;
                i17 = b25 & 255;
                if (i17 != 254) {
                    qt.y0(27, -2);
                } else if (i17 != 255) {
                    qt.y0(27, i17 * 5);
                } else {
                    qt.y0(27, -3);
                }
                i18 = b30 & 255;
                if (i18 != 254) {
                    qt.y0(28, -2);
                } else if (i18 != 255) {
                    qt.y0(28, i18 * 5);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(54, (b27 >> 7) & 1);
                qt.y0(55, (b27 >> 6) & 1);
                qt.y0(25, b28 & 255);
                qt.y0(52, 255 & b29);
                return;
            }
            i13 = 1;
            i14 = 0;
            i16 = i14;
            i15 = i16;
            qt.y0(49, i13);
            qt.y0(19, i14);
            qt.y0(20, i16);
            qt.y0(18, i15);
            qt.y0(21, b24 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b25 = bArr[i102];
                b26 = bArr[i101];
            }
            byte b31 = b26;
            i17 = b25 & 255;
            if (i17 != 254) {
                qt.y0(27, -2);
            } else if (i17 != 255) {
                qt.y0(27, i17 * 5);
            } else {
                qt.y0(27, -3);
            }
            i18 = b31 & 255;
            if (i18 != 254) {
                qt.y0(28, -2);
            } else if (i18 != 255) {
                qt.y0(28, i18 * 5);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(54, (b27 >> 7) & 1);
            qt.y0(55, (b27 >> 6) & 1);
            qt.y0(25, b28 & 255);
            qt.y0(52, 255 & b29);
            return;
        }
        int i104 = i2 + 2;
        byte b32 = bArr[i104];
        if (b32 == 31) {
            o1.u.j();
        } else if (b32 != 40) {
            switch (b32) {
                case 10:
                    int i105 = u0.b.D;
                    if (i105 == 8 || i105 == 9) {
                        u0.d.I3(37, i105, 8, 1);
                    } else if (i105 == 4) {
                        o0.e.f16766b.D(0);
                    } else if (i105 == 1) {
                        w0.f.f(1);
                    } else if (i105 == 2) {
                        h0.c.f2425b.h(3);
                    }
                    break;
                case 11:
                    int i106 = u0.b.D;
                    if (i106 == 8) {
                        i8 = 2;
                        i9 = 3;
                    } else if (i106 == 9) {
                        i9 = 3;
                        i8 = 2;
                    } else if (i106 == 4) {
                        o0.e.f16766b.D(1);
                    } else if (i106 == 1) {
                        w0.f.f(2);
                    } else if (i106 == 2) {
                        h0.c.f2425b.h(4);
                    }
                    int[] iArr63 = new int[i9];
                    iArr63[0] = i106;
                    iArr63[1] = 8;
                    iArr63[i8] = i8;
                    u0.d.I3(37, iArr63);
                    break;
                case 12:
                    int i107 = u0.b.D;
                    if (i107 == 8 || i107 == 9) {
                        u0.d.I3(37, i107, 8, 3);
                    } else if (i107 == 4) {
                        o0.e.f16766b.D(2);
                    } else if (i107 == 1) {
                        w0.f.f(3);
                    } else if (i107 == 2) {
                        h0.c.f2425b.h(5);
                    }
                    break;
                case 13:
                    int i108 = u0.b.D;
                    if (i108 == 8 || i108 == 9) {
                        u0.d.I3(37, i108, 8, 4);
                    } else if (i108 == 4) {
                        o0.e.f16766b.D(3);
                    } else if (i108 == 1) {
                        w0.f.f(4);
                    } else if (i108 == 2) {
                        h0.c.f2425b.h(6);
                    }
                    break;
                case 14:
                    int i109 = u0.b.D;
                    if (i109 == 8) {
                        i10 = 5;
                        c2 = 2;
                        i11 = 3;
                    } else if (i109 == 9) {
                        i10 = 5;
                        i11 = 3;
                        c2 = 2;
                    } else if (i109 == 4) {
                        o0.e.f16766b.D(4);
                    } else if (i109 == 1) {
                        w0.f.f(5);
                    } else if (i109 == 2) {
                        h0.c.f2425b.h(7);
                    }
                    int[] iArr64 = new int[i11];
                    iArr64[0] = i109;
                    iArr64[1] = 8;
                    iArr64[c2] = i10;
                    u0.d.I3(37, iArr64);
                    break;
                case 15:
                    int i110 = u0.b.D;
                    if (i110 == 8 || i110 == 9) {
                        u0.d.I3(37, i110, 8, 6);
                    } else if (i110 == 4) {
                        o0.e.f16766b.D(5);
                    } else if (i110 == 1) {
                        w0.f.f(6);
                    } else if (i110 == 2) {
                        h0.c.f2425b.h(8);
                    }
                    break;
                default:
                    switch (b32) {
                        case 48:
                            int i111 = u0.b.D;
                            if (i111 == 8 || i111 == 9) {
                                u0.d.I3(37, i111, 8, 7);
                            } else if (i111 == 2) {
                                h0.c.f2425b.h(9);
                            }
                            break;
                        case 49:
                            int i112 = u0.b.D;
                            if (i112 == 8 || i112 == 9) {
                                u0.d.I3(37, i112, 8, 8);
                            } else if (i112 == 2) {
                                h0.c.f2425b.h(10);
                            }
                            break;
                        case 50:
                            int i113 = u0.b.D;
                            if (i113 == 8 || i113 == 9) {
                                u0.d.I3(37, i113, 8, 9);
                            } else if (i113 == 2) {
                                h0.c.f2425b.h(11);
                            }
                            break;
                        case 51:
                            if (u0.b.D == 2) {
                                h0.c.f2425b.h(2);
                            }
                            break;
                        case 52:
                            if (u0.b.D == 2) {
                                h0.c.f2425b.h(13);
                            }
                            break;
                        case 53:
                            if (u0.b.D == 2) {
                                h0.c.f2425b.h(14);
                            }
                            break;
                        case 54:
                            if (this.f11686h != 0) {
                                h3(218, f11679v, 1, 1);
                            }
                            break;
                        case 55:
                            if (this.f11686h != 0) {
                                h3(218, f11679v, 1, 2);
                            }
                            break;
                        case 56:
                            if (this.f11686h != 0) {
                                h3(218, f11679v, 1, 3);
                            }
                            break;
                        case 57:
                            if (this.f11686h != 0) {
                                h3(218, f11679v, 1, 4);
                            }
                            break;
                    }
                    break;
            }
        } else {
            o1.u.r();
        }
        if (nt.a()) {
            this.f11683e = (bArr[i104] & 255) | 128;
            byte b33 = bArr[i2 + 3];
            int i114 = 0;
            while (true) {
                iArr2 = this.f11685g;
                if (i114 < iArr2.length) {
                    int i115 = this.f11683e;
                    if (i115 != iArr2[i114][0]) {
                        i114++;
                    } else if (i115 != 0) {
                        this.f11684f = i114;
                    }
                }
            }
            if ((b33 & 255) != 0) {
                if (i114 < iArr2.length) {
                    l0.b0.l0(iArr2[i114][1], 0);
                    return;
                }
                return;
            }
            if (i114 > iArr2.length) {
                i7 = 255;
            } else {
                int i116 = this.f11684f;
                if (i116 != 255) {
                    int i117 = u0.b.D;
                    if ((i117 == 13 || i117 == 12) && g3(iArr2[i116][1]) == 1) {
                        i3(this.f11684f);
                    } else {
                        l0.b0.l0(this.f11685g[this.f11684f][1], 1);
                    }
                    i7 = 255;
                } else {
                    i7 = 255;
                }
            }
            this.f11684f = i7;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17397x.d(this.f11699u);
        qt.p0(this.f11698t);
        qt.q0(this.f11696r);
        u0.c.f17386m.d(this.f11697s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                h3(218, f11679v, iArr[0], iArr[1]);
            }
        } else {
            if (i2 == 1) {
                h3(220, f11679v, 208, 0);
                return;
            }
            if (i2 == 3) {
                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) iArr[0], (byte) iArr[1]);
            } else if (i2 == 4) {
                z.k.s(227, 2, 109, (byte) iArr[0], (byte) iArr[1]);
            } else {
                if (i2 != 5) {
                    return;
                }
                z.k.s(227, 2, -14, (byte) iArr[0], (byte) iArr[1]);
            }
        }
    }

    public final int a3() {
        return u0.b.K3 == 1 ? 2 : 1;
    }

    public final void b3(int i2) {
        z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, a3());
    }

    public final String e3(String[][] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            for (int i3 = 0; i3 < strArr[i2].length; i3++) {
                stringBuffer.append(strArr[i2][i3]);
            }
        }
        return stringBuffer.toString();
    }

    public final void f3(String[][] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            for (int i3 = 0; i3 < strArr[i2].length; i3++) {
                strArr[i2][i3] = ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
    }

    public final void h3(int i2, int i3, int i4, int i5) {
        z.k.s(-29, 3, (byte) i2, (byte) i3, (byte) i4, (byte) i5);
    }

    public final void j3(int i2) {
        int i3 = h0.c.E;
        if (i3 == 3 || i3 == 4 || i3 == 5) {
            return;
        }
        if (i2 == 1) {
            if (!o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.f("com.syu.canbus.sync");
            }
        } else if (i2 == 2) {
            if (!o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.f("com.syu.canbus.sync");
            }
        } else if (i2 == 0 && o1.u.T(a.b.C)) {
            o1.u.k();
        }
        o1.x.C(nt.f8643f, 111, new int[]{i2}, null, null);
    }
}
