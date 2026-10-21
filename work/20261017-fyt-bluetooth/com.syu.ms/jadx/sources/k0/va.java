package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class va extends lt {
    public static int A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11255d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11258g;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11265n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11266o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11267p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11256e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11257f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 18}, new int[]{11, 2}, new int[]{12, 25}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{23, 1}, new int[]{27, 26}, new int[]{40, 13}, new int[]{45, 54}, new int[]{48, 58}, new int[]{49, 5}, new int[]{55, 55}, new int[]{98, 16}, new int[]{101, 11}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{134, 6}, new int[]{133, 38}, new int[]{138, -1}, new int[]{139, -1}, new int[]{140, -1}, new int[]{141, -1}, new int[]{142, -1}, new int[]{143, -1}, new int[]{144, 36}, new int[]{145, 11}, new int[]{146, 1}, new int[]{147, 56}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{159, -1}, new int[]{164, -1}, new int[]{168, -1}, new int[]{170, 29}, new int[]{172, 2}, new int[]{173, 24}, new int[]{174, 39}, new int[]{176, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{180, -1}, new int[]{181, -1}, new int[]{182, -1}, new int[]{183, -1}, new int[]{184, -1}, new int[]{185, -1}, new int[]{186, 54}, new int[]{187, 54}, new int[]{188, 28}, new int[]{189, 27}, new int[]{190, 39}, new int[]{191, 9}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11259h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11260i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11261j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11262k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f11263l = {new int[]{1, 0}, new int[]{4, 55}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{21, 34}, new int[]{22, 35}, new int[]{25, 3}, new int[]{26, 4}, new int[]{32, 1}, new int[]{36, 54}, new int[]{42, 29}, new int[]{43, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11264m = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String[][] f11268q = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String[][] f11269r = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11270s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f11271t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f11272u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11273v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11274w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f11275x = new c();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f11276y = new d();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f11277z = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.h0.t();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            va vaVar = va.this;
            vaVar.f11270s = 0;
            vaVar.f11271t = 0;
            vaVar.f11261j = 0;
            vaVar.f11262k = 0;
            l0.b0.b(vaVar.f11275x);
            va.this.f11273v = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            va vaVar = va.this;
            int i2 = vaVar.f11273v - 1;
            vaVar.f11273v = i2;
            if (i2 <= 0) {
                l0.b0.p0(vaVar.f11275x);
                va.this.f11273v = 5;
                return;
            }
            int i3 = nt.f8637c;
            if (i3 == 0) {
                z.k.s(227, 2, 36, 9, 3);
            } else if (i3 == 1) {
                z.k.s(227, 2, 36, 28, 3);
            } else {
                if (i3 != 2) {
                    return;
                }
                z.k.s(227, 2, 36, 61, 3);
            }
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
            va.this.b3(u0.b.K3);
        }
    }

    public static int f3(int i2) {
        return (i2 == 32 || i2 == 33 || i2 == 34 || i2 == 35 || i2 == 27 || i2 == 28 || i2 == 3 || i2 == 4 || i2 == 29) ? 1 : 0;
    }

    public static void h3(int i2) {
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
        z.k.s(-29, 3, -38, A, 2, (byte) i3);
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
        mtVar.f8311f = 1;
        mtVar.f8320o = 1;
        e3(this.f11268q);
        e3(this.f11269r);
        if (o1.q0.v()) {
            qt.y(this.f11276y);
        }
        if (nt.a()) {
            qt.z(this.f11272u);
            u0.c.f17386m.a(this.f11274w, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01b4  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String string;
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int[][] iArr3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = i2 + 1;
        byte b2 = bArr[i14];
        if (b2 == -123) {
            qt.y0(102, bArr[i2 + 3] & 1);
            return;
        }
        byte b3 = 8;
        if (b2 == -48) {
            this.f11265n = false;
            int i15 = i2 + 2;
            if (A == (bArr[i15] & 255)) {
                this.f11265n = true;
            }
            int i16 = bArr[i15] & 255;
            A = i16;
            qt.y0(112, i16);
            byte b4 = bArr[i2 + 3];
            int i17 = b4 >> 4;
            int i18 = i17 & 15;
            if (i18 == 15) {
                int[] iArr4 = new int[16];
                for (int i19 = 0; i19 < 16; i19++) {
                    iArr4[i19] = bArr[i2 + 4 + i19];
                }
                o1.x.B(nt.f8643f, 113, iArr4);
                string = ProxyProperties.LOCAL_EXCL_LIST;
            } else {
                StringBuilder sb = new StringBuilder();
                int i20 = i2 + 4;
                int i21 = (i2 + i3) - 1;
                while (i20 < i21 && (bArr[i20] != 0 || bArr[i20 + 1] != 0)) {
                    sb.append((char) (((bArr[i20] << b3) & 65535) | (bArr[i20 + 1] & 255)));
                    i20 += 2;
                    b3 = 8;
                }
                string = sb.toString();
            }
            int i22 = i17 & 14;
            this.f11266o = i22;
            int i23 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
            this.f11267p = i23;
            if (i23 >= 0 && i23 < 3) {
                if (!this.f11265n || i23 <= 0) {
                    e3(this.f11268q);
                    e3(this.f11269r);
                    int i24 = this.f11266o;
                    if (i24 >= 0 && i24 < 5) {
                        String[][] strArr = this.f11268q;
                        if (strArr != null && strArr[i24] != null) {
                            strArr[i24][this.f11267p] = string;
                        }
                    } else if (i24 >= 10 && i24 <= 13) {
                        int i25 = i24 - 10;
                        this.f11266o = i25;
                        String[][] strArr2 = this.f11269r;
                        if (strArr2 != null && strArr2[i25] != null) {
                            strArr2[i25][this.f11267p] = string;
                        }
                    }
                } else if (i22 >= 0 && i22 < 5) {
                    String[][] strArr3 = this.f11268q;
                    if (strArr3 != null && strArr3[i22] != null) {
                        strArr3[i22][i23] = string;
                    }
                    string = d3(strArr3);
                } else if (i22 >= 10 && i22 <= 13) {
                    int i26 = i22 - 10;
                    this.f11266o = i26;
                    String[][] strArr4 = this.f11269r;
                    if (strArr4 != null && strArr4[i26] != null) {
                        strArr4[i26][i23] = string;
                    }
                    string = d3(strArr4);
                }
            }
            qt.z0(114, new int[]{i18, i23}, string);
            return;
        }
        if (b2 == -32) {
            byte b5 = bArr[i2 + 2];
            if (b5 == 1) {
                o1.u.x0();
                int i27 = bArr[i2 + 3] & 255;
                if (i27 == 1) {
                    w0.d.f17790b.x(65536);
                    return;
                }
                if (i27 == 2) {
                    w0.d.f17790b.x(65537);
                    return;
                } else if (i27 == 3) {
                    w0.d.f17790b.x(0);
                    return;
                } else {
                    if (i27 != 4) {
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
                int i28 = bArr[i2 + 4] & 255;
                w0.d.f17790b.l(1, ((bArr[i2 + 3] & 255) * 100) + (i28 <= 99 ? i28 : 99));
                return;
            }
            if (b5 == 4) {
                w0.f.B(bArr[i2 + 3] & 255);
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
                    int i29 = bArr[i2 + 3] & 255;
                    if (i29 == 1) {
                        o0.e.f16766b.o();
                        break;
                    } else if (i29 == 2) {
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
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
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
        if (b2 == -46) {
            qt.y0(111, ((bArr[i2 + 5] << 8) & 65535) | (bArr[i2 + 4] & 255));
            return;
        }
        if (b2 == -45) {
            if (nt.R == 0) {
                return;
            }
            int i30 = i2 + 3;
            if (this.f11264m != bArr[i30]) {
                this.f11264m = bArr[i30];
                i3(bArr[i30]);
            }
            qt.y0(109, bArr[i30]);
            qt.y0(110, bArr[i2 + 4]);
            return;
        }
        if (b2 == 17) {
            qt.y0(106, bArr[i14 + 2] & 255);
            if (nt.a()) {
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                this.f11254c = b6 & 255;
                int i31 = 0;
                while (true) {
                    iArr = this.f11257f;
                    if (i31 >= iArr.length) {
                        break;
                    }
                    int i32 = this.f11254c;
                    if (i32 == iArr[i31][0]) {
                        if (i32 == 0) {
                            break;
                        }
                        this.f11253b = i31;
                        break;
                    }
                    i31++;
                }
                int i33 = this.f11254c;
                if (i33 != 5) {
                    if (i33 != 6) {
                        int i34 = b7 & 255;
                        if (i34 == 1) {
                            if (i31 < iArr.length) {
                                l0.b0.l0(iArr[i31][1], 0);
                            }
                        } else if (i34 == 0) {
                            int i35 = this.f11253b;
                            if (i35 < iArr.length && i35 != 255) {
                                l0.b0.l0(iArr[i35][1], 1);
                            }
                            this.f11253b = 255;
                        }
                    } else if ((b7 & 255) == 1) {
                        if (h0.c.E == 4 || u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                } else if ((b7 & 255) == 1) {
                    int i36 = h0.c.E;
                    if (i36 == 3 || i36 == 4 || i36 == 5 || u0.i.l3().r3()) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b8 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b8 >> 7) & 1);
                qt.y0(1, (b8 >> 6) & 1);
            } else {
                qt.y0(1, (b8 >> 7) & 1);
                qt.y0(2, (b8 >> 6) & 1);
            }
            qt.y0(3, (b8 >> 5) & 1);
            qt.y0(4, (b8 >> 4) & 1);
            qt.y0(5, (b8 >> 3) & 1);
            return;
        }
        if (b2 != 33) {
            if (b2 == 34) {
                if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) != 1) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    if (b9 == 1 && b10 != (i8 = this.f11270s)) {
                        if (b10 > i8) {
                            for (int i37 = 0; i37 < b10 - this.f11270s; i37++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b10 < i8) {
                            for (int i38 = 0; i38 < this.f11270s - b10; i38++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f11270s = b10;
                        return;
                    }
                    return;
                }
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                if (b11 != 1) {
                    if (b11 == 2 && b12 != (i9 = this.f11262k)) {
                        if (b12 > i9) {
                            for (int i39 = 0; i39 < b12 - this.f11262k; i39++) {
                                l0.b0.l0(31, 0);
                                l0.b0.l0(31, 1);
                            }
                        } else if (b12 < i9) {
                            for (int i40 = 0; i40 < this.f11262k - b12; i40++) {
                                l0.b0.l0(30, 0);
                                l0.b0.l0(30, 1);
                            }
                        }
                        this.f11262k = b12;
                        return;
                    }
                    return;
                }
                int i41 = this.f11261j;
                if (b12 != i41) {
                    if (b12 > i41) {
                        for (int i42 = 0; i42 < b12 - this.f11261j; i42++) {
                            l0.b0.l0(7, 0);
                            l0.b0.l0(7, 1);
                        }
                    } else if (b12 < i41) {
                        for (int i43 = 0; i43 < this.f11261j - b12; i43++) {
                            l0.b0.l0(8, 0);
                            l0.b0.l0(8, 1);
                        }
                    }
                    this.f11261j = b12;
                    return;
                }
                return;
            }
            if (b2 != 49) {
                if (b2 == 50) {
                    int i44 = i2 + 4;
                    int i45 = i2 + 5;
                    qt.y0(99, ((bArr[i44] << 8) & 65280) | (bArr[i45] & 255));
                    qt.y0(1032, ((bArr[i44] << 8) & 65280) | (bArr[i45] & 255));
                    qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                    return;
                }
                if (b2 == 103) {
                    qt.y0(101, bArr[i2 + 3] & 1);
                    return;
                }
                if (b2 != 104) {
                    return;
                }
                byte b13 = bArr[i2 + 3];
                qt.y0(103, (b13 >> 7) & 1);
                qt.y0(104, (b13 >> 6) & 1);
                qt.y0(105, (b13 >> 5) & 1);
                int i46 = (b13 >> 4) & 1;
                qt.y0(108, i46);
                qt.y0(117, (b13 >> 2) & 1);
                qt.y0(118, (b13 >> 1) & 1);
                qt.y0(119, (b13 >> 0) & 1);
                qt.y0(37, i46);
                return;
            }
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            byte b16 = bArr[i2 + 4];
            byte b17 = bArr[i2 + 6];
            byte b18 = bArr[i2 + 7];
            int i47 = i2 + 8;
            byte b19 = bArr[i47];
            int i48 = i2 + 9;
            byte b20 = bArr[i48];
            byte b21 = bArr[i2 + 10];
            byte b22 = bArr[i2 + 11];
            byte b23 = bArr[i2 + 12];
            qt.y0(10, (b14 >> 6) & 1);
            qt.y0(53, (b15 >> 6) & 1);
            int[] iArr5 = new int[1];
            iArr5[0] = ((b15 >> 4) & 1) == 1 ? 0 : 1;
            qt.y0(12, iArr5);
            qt.y0(13, (b15 >> 3) & 1);
            qt.y0(11, (b15 >> 0) & 1);
            qt.y0(65, (b16 >> 4) & 1);
            qt.y0(16, (b16 >> 5) & 1);
            int i49 = b17 & 255;
            if (i49 == 1) {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 1;
            } else if (i49 == 2) {
                i13 = 0;
                i10 = 0;
                i11 = 0;
                i12 = 1;
            } else if (i49 == 3) {
                i13 = 0;
                i10 = 0;
                i12 = 0;
                i11 = 1;
            } else if (i49 == 5) {
                i13 = 0;
                i12 = 0;
                i10 = 1;
                i11 = 1;
            } else if (i49 != 6) {
                switch (i49) {
                    case 11:
                        i13 = 0;
                        i10 = 0;
                        i11 = 0;
                        i12 = 1;
                        break;
                    case 12:
                        i13 = 0;
                        i10 = 0;
                        i11 = 1;
                        i12 = i11;
                        break;
                    case 13:
                        i13 = 0;
                        i11 = 0;
                        i10 = 1;
                        i12 = 1;
                        break;
                    case 14:
                        i13 = 0;
                        i10 = 1;
                        i11 = i10;
                        i12 = i11;
                        break;
                    default:
                        i13 = 0;
                        i10 = 0;
                        i11 = i10;
                        i12 = i11;
                        break;
                }
            } else {
                i13 = 0;
                i11 = 0;
                i12 = 0;
                i10 = 1;
            }
            qt.y0(49, i13);
            qt.y0(19, i10);
            qt.y0(20, i11);
            qt.y0(18, i12);
            qt.y0(21, b18 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b19 = bArr[i48];
                b20 = bArr[i47];
            }
            byte b24 = b20;
            int i50 = b19 & 255;
            if (i50 == 254) {
                qt.y0(27, -2);
            } else if (i50 != 255) {
                qt.y0(27, i50 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i51 = b24 & 255;
            if (i51 == 254) {
                qt.y0(28, -2);
            } else if (i51 != 255) {
                qt.y0(28, i51 * 5);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(25, 255 & b22);
            return;
        }
        if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) == 1) {
            this.f11259h = bArr[i2 + 2] & 255;
            byte b25 = bArr[i2 + 3];
            int i52 = 0;
            while (true) {
                iArr3 = this.f11263l;
                if (i52 >= iArr3.length) {
                    break;
                }
                int i53 = this.f11259h;
                if (i53 == iArr3[i52][0]) {
                    if (i53 == 0) {
                        break;
                    }
                    this.f11258g = i52;
                    break;
                }
                i52++;
            }
            if ((b25 & 255) != 0 && this.f11260i == 0) {
                if (i52 < iArr3.length) {
                    l0.b0.l0(iArr3[i52][1], 0);
                    this.f11260i = 1;
                    return;
                }
                return;
            }
            int i54 = this.f11258g;
            if (i54 < iArr3.length) {
                i7 = 255;
                if (i54 != 255) {
                    l0.b0.l0(iArr3[i54][1], 1);
                }
            } else {
                i7 = 255;
            }
            this.f11258g = i7;
            this.f11260i = 0;
            return;
        }
        int i55 = i2 + 2;
        byte b26 = bArr[i55];
        if (b26 == 31) {
            o1.u.j();
        } else if (b26 == 36) {
            o1.u.c1();
        } else if (b26 != 40) {
            switch (b26) {
                case 10:
                    int i56 = u0.b.D;
                    if (i56 == 8 || i56 == 9) {
                        u0.d.I3(37, i56, 8, 1);
                    } else if (i56 == 4) {
                        o0.e.f16766b.D(0);
                    } else if (i56 == 1) {
                        w0.f.B(1);
                    } else if (i56 == 2) {
                        h0.c.f2425b.h(3);
                    }
                    break;
                case 11:
                    int i57 = u0.b.D;
                    if (i57 == 8) {
                        i5 = 2;
                        i6 = 3;
                    } else if (i57 == 9) {
                        i6 = 3;
                        i5 = 2;
                    } else if (i57 == 4) {
                        o0.e.f16766b.D(1);
                    } else if (i57 == 1) {
                        w0.f.B(2);
                    } else if (i57 == 2) {
                        h0.c.f2425b.h(4);
                    }
                    int[] iArr6 = new int[i6];
                    iArr6[0] = i57;
                    iArr6[1] = 8;
                    iArr6[i5] = i5;
                    u0.d.I3(37, iArr6);
                    break;
                case 12:
                    int i58 = u0.b.D;
                    if (i58 == 8 || i58 == 9) {
                        u0.d.I3(37, i58, 8, 3);
                    } else if (i58 == 4) {
                        o0.e.f16766b.D(2);
                    } else if (i58 == 1) {
                        w0.f.B(3);
                    } else if (i58 == 2) {
                        h0.c.f2425b.h(5);
                    }
                    break;
                case 13:
                    int i59 = u0.b.D;
                    if (i59 == 8 || i59 == 9) {
                        u0.d.I3(37, i59, 8, 4);
                    } else if (i59 == 4) {
                        o0.e.f16766b.D(3);
                    } else if (i59 == 1) {
                        w0.f.B(4);
                    } else if (i59 == 2) {
                        h0.c.f2425b.h(6);
                    }
                    break;
                case 14:
                    int i60 = u0.b.D;
                    if (i60 == 8 || i60 == 9) {
                        u0.d.I3(37, i60, 8, 5);
                    } else if (i60 == 4) {
                        o0.e.f16766b.D(4);
                    } else if (i60 == 1) {
                        w0.f.B(5);
                    } else if (i60 == 2) {
                        h0.c.f2425b.h(7);
                    }
                    break;
                case 15:
                    int i61 = u0.b.D;
                    if (i61 == 8 || i61 == 9) {
                        u0.d.I3(37, i61, 8, 6);
                    } else if (i61 == 4) {
                        o0.e.f16766b.D(5);
                    } else if (i61 == 1) {
                        w0.f.B(6);
                    } else if (i61 == 2) {
                        h0.c.f2425b.h(8);
                    }
                    break;
                default:
                    switch (b26) {
                        case 48:
                            int i62 = u0.b.D;
                            if (i62 == 8 || i62 == 9) {
                                u0.d.I3(37, i62, 8, 7);
                            } else if (i62 == 2) {
                                h0.c.f2425b.h(9);
                            }
                            break;
                        case 49:
                            int i63 = u0.b.D;
                            if (i63 == 8 || i63 == 9) {
                                u0.d.I3(37, i63, 8, 8);
                            } else if (i63 == 2) {
                                h0.c.f2425b.h(10);
                            }
                            break;
                        case 50:
                            int i64 = u0.b.D;
                            if (i64 == 8 || i64 == 9) {
                                u0.d.I3(37, i64, 8, 9);
                            } else if (i64 == 2) {
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
                            if (this.f11264m != 0) {
                                g3(218, A, 1, 1);
                            }
                            break;
                        case 55:
                            if (this.f11264m != 0) {
                                g3(218, A, 1, 2);
                            }
                            break;
                        case 56:
                            if (this.f11264m != 0) {
                                g3(218, A, 1, 3);
                            }
                            break;
                        case 57:
                            if (this.f11264m != 0) {
                                g3(218, A, 1, 4);
                            }
                            break;
                    }
                    break;
            }
        } else {
            o1.u.r();
        }
        if (nt.a()) {
            this.f11255d = (bArr[i55] & 255) | 128;
            byte b27 = bArr[i2 + 3];
            int i65 = 0;
            while (true) {
                iArr2 = this.f11257f;
                if (i65 < iArr2.length) {
                    int i66 = this.f11255d;
                    if (i66 != iArr2[i65][0]) {
                        i65++;
                    } else if (i66 != 0) {
                        this.f11256e = i65;
                    }
                }
            }
            if ((b27 & 255) != 0) {
                if (i65 < iArr2.length) {
                    l0.b0.l0(iArr2[i65][1], 0);
                    return;
                }
                return;
            }
            if (i65 > iArr2.length) {
                i4 = 255;
            } else {
                int i67 = this.f11256e;
                if (i67 != 255) {
                    int i68 = u0.b.D;
                    if ((i68 == 13 || i68 == 12) && f3(iArr2[i67][1]) == 1) {
                        h3(this.f11256e);
                    } else {
                        l0.b0.l0(this.f11257f[this.f11256e][1], 1);
                    }
                    i4 = 255;
                } else {
                    i4 = 255;
                }
            }
            this.f11256e = i4;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.f11276y);
        qt.q0(this.f11272u);
        u0.c.f17386m.d(this.f11274w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                g3(218, A, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            g3(220, A, 208, 0);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 2, 109, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, 2, -14, (byte) iArr[0], (byte) iArr[1]);
        } else if (i2 == 6 && T2(iArr, 3)) {
            z.k.s(227, 2, (byte) iArr[0], (byte) iArr[1], iArr[2]);
        }
    }

    public final int a3() {
        return u0.b.K3 == 1 ? 2 : 1;
    }

    public final void b3(int i2) {
        z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, a3());
    }

    public final String d3(String[][] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            for (int i3 = 0; i3 < strArr[i2].length; i3++) {
                stringBuffer.append(strArr[i2][i3]);
            }
        }
        return stringBuffer.toString();
    }

    public final void e3(String[][] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            for (int i3 = 0; i3 < strArr[i2].length; i3++) {
                strArr[i2][i3] = ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
    }

    public final void g3(int i2, int i3, int i4, int i5) {
        z.k.s(-29, 3, (byte) i2, (byte) i3, (byte) i4, (byte) i5);
    }

    public final void i3(int i2) {
        int i3;
        if (u0.b.f17306a0 == 0 || (i3 = h0.c.E) == 3 || i3 == 4 || i3 == 5) {
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
        } else if (i2 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
            o1.u.k();
        }
        o1.x.C(nt.f8643f, 100, new int[]{i2}, null, null);
    }
}
