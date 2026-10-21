package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class n extends lt {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f8325z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8329e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8335k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8338n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8326b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String[][] f8330f = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String[][] f8331g = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8332h = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8336l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f8337m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, -1}, new int[]{8, 33}, new int[]{9, 32}, new int[]{11, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{23, 1}, new int[]{98, 16}, new int[]{101, 11}, new int[]{129, 0}, new int[]{130, 3}, new int[]{131, 4}, new int[]{133, 38}, new int[]{134, 6}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{144, 16}, new int[]{145, 11}, new int[]{146, 1}, new int[]{147, 56}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{159, 53}, new int[]{164, 54}, new int[]{168, 18}, new int[]{170, 29}, new int[]{172, 2}, new int[]{173, 24}, new int[]{174, 39}, new int[]{176, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{180, 50}, new int[]{181, 51}, new int[]{182, -1}, new int[]{183, -1}, new int[]{184, -1}, new int[]{185, -1}, new int[]{186, 22}, new int[]{187, 54}, new int[]{188, 28}, new int[]{189, 27}, new int[]{190, 39}, new int[]{191, 5}, new int[]{192, 25}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8339o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8340p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8341q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8342r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[][] f8343s = {new int[]{1, 0}, new int[]{4, 55}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{21, 34}, new int[]{22, 35}, new int[]{25, 3}, new int[]{26, 4}, new int[]{32, 1}, new int[]{36, 54}, new int[]{42, 29}, new int[]{43, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f8344t = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f8345u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f8346v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f8347w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8348x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8349y = new e();

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
            n.this.b3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = n.this;
            nVar.f8341q = 0;
            nVar.f8342r = 0;
            l0.b0.b(nVar.f8348x);
            n.this.f8346v = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = n.this;
            int i2 = nVar.f8346v - 1;
            nVar.f8346v = i2;
            if (i2 > 0) {
                int i3 = nt.f8633a;
                if (i3 == 49) {
                    z.k.s(227, 2, 36, 29, 3);
                } else if (i3 != 115) {
                    z.k.s(227, 2, 36, 9, 3);
                } else {
                    z.k.s(227, 2, 36, 30, 3);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, 10, 1, 50);
            z.k.s(227, 2, 106, 1, 50);
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
        z.k.s(-29, 3, 218, f8325z, 2, i3);
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
        mtVar.f8320o = 1;
        mtVar.f8323r = 1;
        u0.c.f17386m.a(this.f8347w, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            qt.y(this.f8349y);
        }
        qt.z(this.f8344t);
    }

    /* JADX WARN: Code duplicated, block: B:75:0x020b  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String string;
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i2 + 1;
        byte b2 = bArr[i8];
        if (b2 == -123) {
            qt.y0(121, (bArr[i2 + 3] >> 0) & 1);
        }
        if (b2 == -90) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            qt.y0(111, b3 & 63);
            qt.y0(112, b4 & 255);
            qt.y0(113, b5 & 255);
            qt.y0(114, b6 & 255);
            qt.y0(115, b7 & 255);
            qt.y0(116, b8 & 255);
            qt.y0(117, (b9 >> 1) & 3);
            qt.y0(118, (b9 >> 0) & 1);
            return;
        }
        if (b2 == -48) {
            o1.b0.h(bArr, i2, i3);
            this.f8327c = false;
            int i9 = i2 + 2;
            if (f8325z == (bArr[i9] & 255)) {
                this.f8327c = true;
            }
            int i10 = bArr[i9] & 255;
            f8325z = i10;
            qt.y0(98, i10);
            byte b10 = bArr[i2 + 3];
            int i11 = b10 >> 4;
            int i12 = i11 & 15;
            if (i12 == 15) {
                int[] iArr4 = new int[16];
                for (int i13 = 0; i13 < 16; i13++) {
                    iArr4[i13] = bArr[i2 + 4 + i13];
                }
                qt.z0(99, iArr4, "icon");
                string = ProxyProperties.LOCAL_EXCL_LIST;
            } else {
                StringBuilder sb = new StringBuilder();
                int i14 = (i2 + i3) - 1;
                for (int i15 = i2 + 4; i15 < i14 && (bArr[i15] != 0 || bArr[i15 + 1] != 0); i15 += 2) {
                    sb.append((char) (((bArr[i15] << 8) & 65535) | (bArr[i15 + 1] & 255)));
                }
                string = sb.toString();
            }
            int i16 = i11 & 14;
            this.f8328d = i16;
            int i17 = b10 & DhcpPacket.DHCP_DOMAIN_NAME;
            this.f8329e = i17;
            if (i17 >= 0 && i17 < 3) {
                if (!this.f8327c || i17 <= 0) {
                    e3(this.f8330f);
                    e3(this.f8331g);
                    int i18 = this.f8328d;
                    if (i18 >= 0 && i18 < 5) {
                        String[][] strArr = this.f8330f;
                        if (strArr != null && strArr[i18] != null) {
                            strArr[i18][this.f8329e] = string;
                        }
                    } else if (i18 >= 10 && i18 <= 13) {
                        int i19 = i18 - 10;
                        this.f8328d = i19;
                        String[][] strArr2 = this.f8331g;
                        if (strArr2 != null && strArr2[i19] != null) {
                            strArr2[i19][this.f8329e] = string;
                        }
                    }
                } else if (i16 >= 0 && i16 < 5) {
                    String[][] strArr3 = this.f8330f;
                    if (strArr3 != null && strArr3[i16] != null) {
                        strArr3[i16][i17] = string;
                    }
                    string = d3(strArr3, i16);
                } else if (i16 >= 10 && i16 <= 13) {
                    int i20 = i16 - 10;
                    this.f8328d = i20;
                    String[][] strArr4 = this.f8331g;
                    if (strArr4 != null && strArr4[i20] != null) {
                        strArr4[i20][i17] = string;
                    }
                    string = d3(strArr4, i20);
                }
            }
            qt.z0(100, new int[]{i12, i17}, string);
            if (i12 == 1) {
                qt.z0(100, new int[]{2, 0}, ProxyProperties.LOCAL_EXCL_LIST);
                qt.z0(100, new int[]{3, 0}, ProxyProperties.LOCAL_EXCL_LIST);
                qt.z0(100, new int[]{4, 0}, ProxyProperties.LOCAL_EXCL_LIST);
                qt.z0(100, new int[]{5, 0}, ProxyProperties.LOCAL_EXCL_LIST);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 103) {
            int i21 = i2 + 3;
            qt.y0(122, (bArr[i21] >> 0) & 1);
            qt.y0(123, (bArr[i21] >> 1) & 1);
            qt.y0(124, (bArr[i21] >> 2) & 1);
            qt.y0(125, (bArr[i21] >> 3) & 1);
            qt.y0(126, (bArr[i21] >> 4) & 1);
            return;
        }
        if (b2 == -46) {
            qt.y0(101, ((bArr[i2 + 5] << 8) & 65535) | (bArr[i2 + 4] & 255));
            return;
        }
        if (b2 == -45) {
            if (nt.R == 0) {
                return;
            }
            int i22 = i2 + 3;
            if (this.f8326b != bArr[i22]) {
                this.f8326b = bArr[i22];
            }
            qt.y0(102, bArr[i22]);
            qt.y0(103, bArr[i2 + 4]);
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                this.f8334j = b11 & 255;
                int i23 = 0;
                while (true) {
                    iArr = this.f8337m;
                    if (i23 >= iArr.length) {
                        break;
                    }
                    int i24 = this.f8334j;
                    if (i24 == iArr[i23][0]) {
                        if (i24 == 0) {
                            break;
                        }
                        this.f8333i = i23;
                        break;
                    }
                    i23++;
                }
                int i25 = b12 & 255;
                if (i25 == 0) {
                    int i26 = this.f8333i;
                    if (i26 < iArr.length && i26 != 255) {
                        l0.b0.l0(iArr[i26][1], 1);
                    }
                    this.f8333i = 255;
                } else if (i23 < iArr.length) {
                    int i27 = this.f8334j;
                    if (i27 != 5) {
                        if (i27 != 6) {
                            l0.b0.l0(iArr[i23][1], 0);
                        } else if (i25 == 1) {
                            if (h0.c.E != 4) {
                                l0.b0.l0(3, 0);
                                l0.b0.l0(3, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if (i25 == 1) {
                        int i28 = h0.c.E;
                        if (i28 == 3 || i28 == 4 || i28 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b13 = bArr[i8 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int[] iArr5 = new int[1];
                iArr5[0] = (b13 & 128) == 0 ? 0 : 1;
                qt.y0(2, iArr5);
                int[] iArr6 = new int[1];
                iArr6[0] = (b13 & 64) == 0 ? 0 : 1;
                qt.y0(1, iArr6);
            } else {
                int[] iArr7 = new int[1];
                iArr7[0] = (b13 & 128) == 0 ? 0 : 1;
                qt.y0(1, iArr7);
                int[] iArr8 = new int[1];
                iArr8[0] = (b13 & 64) == 0 ? 0 : 1;
                qt.y0(2, iArr8);
            }
            int[] iArr9 = new int[1];
            iArr9[0] = (b13 & 32) == 0 ? 0 : 1;
            qt.y0(3, iArr9);
            int[] iArr10 = new int[1];
            iArr10[0] = (b13 & 16) == 0 ? 0 : 1;
            qt.y0(4, iArr10);
            int[] iArr11 = new int[1];
            iArr11[0] = (b13 & 8) == 0 ? 0 : 1;
            qt.y0(5, iArr11);
            return;
        }
        if (b2 != 33) {
            if (b2 == 34) {
                if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) != 1) {
                    byte b14 = bArr[i2 + 2];
                    byte b15 = bArr[i2 + 3];
                    if (b14 == 1) {
                        if (b15 > 0) {
                            for (int i29 = 0; i29 < b15; i29++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            return;
                        }
                        if (b15 < 0) {
                            for (int i30 = 0; i30 < 0 - b15; i30++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            return;
                        }
                        return;
                    }
                    if (b14 != 2) {
                        return;
                    }
                    if (b15 > 0) {
                        for (int i31 = 0; i31 < b15; i31++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        return;
                    }
                    if (b15 < 0) {
                        for (int i32 = 0; i32 < 0 - b15; i32++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        return;
                    }
                    return;
                }
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                if (b16 != 1) {
                    if (b16 == 2 && b17 != (i4 = this.f8342r)) {
                        if (b17 > i4) {
                            for (int i33 = 0; i33 < b17 - this.f8342r; i33++) {
                                l0.b0.l0(31, 0);
                                l0.b0.l0(31, 1);
                            }
                        } else if (b17 < i4) {
                            for (int i34 = 0; i34 < this.f8342r - b17; i34++) {
                                l0.b0.l0(30, 0);
                                l0.b0.l0(30, 1);
                            }
                        }
                        this.f8342r = b17;
                        return;
                    }
                    return;
                }
                int i35 = this.f8341q;
                if (b17 != i35) {
                    if (b17 > i35) {
                        for (int i36 = 0; i36 < b17 - this.f8341q; i36++) {
                            l0.b0.l0(7, 0);
                            l0.b0.l0(7, 1);
                        }
                    } else if (b17 < i35) {
                        for (int i37 = 0; i37 < this.f8341q - b17; i37++) {
                            l0.b0.l0(8, 0);
                            l0.b0.l0(8, 1);
                        }
                    }
                    this.f8341q = b17;
                    return;
                }
                return;
            }
            if (b2 != 49) {
                if (b2 == 50) {
                    int i38 = i2 + 4;
                    int i39 = i2 + 5;
                    qt.y0(105, ((bArr[i38] << 8) & 65280) | (bArr[i39] & 255));
                    qt.y0(1032, ((bArr[i38] << 8) & 65280) | (bArr[i39] & 255));
                    qt.y0(104, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                    return;
                }
                if (b2 != 65) {
                    if (b2 != 66) {
                        return;
                    }
                    u0.d.O2(l0.h0.o(bArr[i2 + 2] & 255));
                    u0.d.Q2(l0.h0.o(bArr[i2 + 3] & 255));
                    u0.d.P2(l0.h0.o(bArr[i2 + 4] & 255));
                    u0.d.N2(l0.h0.o(bArr[i2 + 5] & 255));
                    u0.d.I2(l0.h0.o(bArr[i2 + 6] & 255));
                    u0.d.K2(l0.h0.o(bArr[i2 + 7] & 255));
                    u0.d.J2(l0.h0.o(bArr[i2 + 8] & 255));
                    u0.d.H2(l0.h0.o(bArr[i2 + 9] & 255));
                    return;
                }
                if (nt.a()) {
                    u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                    int i40 = i2 + 6;
                    int i41 = bArr[i40] & 255;
                    int i42 = i2 + 7;
                    int i43 = bArr[i42] & 255;
                    int i44 = i2 + 8;
                    int i45 = bArr[i44] & 255;
                    int i46 = i2 + 9;
                    int i47 = bArr[i46] & 255;
                    if (i41 == 255 && i43 == 255 && i45 == 255 && i47 == 255) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i41 || l0.c0.f13014h != i43 || l0.c0.f13015i != i45 || l0.c0.f13016j != i47) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i41;
                    l0.c0.f13014h = i43;
                    l0.c0.f13015i = i45;
                    l0.c0.f13016j = i47;
                    u0.d.D2(l0.h0.o(bArr[i40] & 255));
                    u0.d.E2(l0.h0.o(bArr[i42] & 255));
                    u0.d.F2(l0.h0.o(bArr[i44] & 255));
                    u0.d.G2(l0.h0.o(bArr[i46] & 255));
                    return;
                }
                return;
            }
            qt.y0(10, (bArr[i2 + 2] >> 6) & 1);
            byte b18 = bArr[i2 + 3];
            qt.y0(15, (b18 >> 6) & 1);
            int[] iArr12 = new int[1];
            iArr12[0] = ((b18 >> 4) & 1) == 1 ? 0 : 1;
            qt.y0(12, iArr12);
            qt.y0(13, (b18 >> 3) & 1);
            qt.y0(11, (b18 >> 0) & 1);
            byte b19 = bArr[i2 + 6];
            if (b19 == 2) {
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (b19 != 3) {
                if (b19 == 5) {
                    i7 = 0;
                    i5 = 1;
                } else if (b19 != 6) {
                    switch (b19) {
                        case 11:
                            i5 = 0;
                            i6 = 0;
                            i7 = 1;
                            break;
                        case 12:
                            i5 = 0;
                            i7 = 1;
                            i6 = 1;
                            break;
                        case 13:
                            i6 = 0;
                            i7 = 1;
                            i5 = 1;
                            break;
                        case 14:
                            i7 = 1;
                            i5 = i7;
                            break;
                        default:
                            i7 = 0;
                            i5 = i7;
                            break;
                    }
                } else {
                    i7 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i7 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i7);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i48 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i48 == 254) {
                qt.y0(27, -2);
            } else if (i48 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i48 * 5);
            }
            int i49 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i49 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i49 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i49 * 5);
                return;
            }
        }
        if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) == 1) {
            this.f8339o = bArr[i2 + 2] & 255;
            byte b20 = bArr[i2 + 3];
            int i50 = 0;
            while (true) {
                iArr3 = this.f8343s;
                if (i50 >= iArr3.length) {
                    break;
                }
                int i51 = this.f8339o;
                if (i51 == iArr3[i50][0]) {
                    if (i51 == 0) {
                        break;
                    }
                    this.f8338n = i50;
                    break;
                }
                i50++;
            }
            if ((b20 & 255) != 0 && this.f8340p == 0) {
                if (i50 < iArr3.length) {
                    l0.b0.l0(iArr3[i50][1], 0);
                    this.f8340p = 1;
                    return;
                }
                return;
            }
            int i52 = this.f8338n;
            if (i52 < iArr3.length && i52 != 255) {
                l0.b0.l0(iArr3[i52][1], 1);
            }
            this.f8338n = 255;
            this.f8340p = 0;
            return;
        }
        if (nt.a()) {
            this.f8335k = (bArr[i2 + 2] & 255) | 128;
            byte b21 = bArr[i2 + 3];
            int i53 = 0;
            while (true) {
                iArr2 = this.f8337m;
                if (i53 >= iArr2.length) {
                    break;
                }
                int i54 = this.f8335k;
                if (i54 == iArr2[i53][0]) {
                    if (i54 == 0) {
                        break;
                    }
                    this.f8336l = i53;
                    break;
                }
                i53++;
            }
            if (b21 == 0) {
                int i55 = this.f8336l;
                if (i55 < iArr2.length && i55 != 255) {
                    int i56 = u0.b.D;
                    if ((i56 == 13 || i56 == 12) && f3(iArr2[i55][1]) == 1) {
                        h3(this.f8337m[this.f8336l][1]);
                    } else {
                        l0.b0.l0(this.f8337m[this.f8336l][1], 1);
                    }
                }
                this.f8336l = 255;
            } else if (i53 < iArr2.length) {
                l0.b0.l0(iArr2[i53][1], 0);
            }
        }
        if (bArr[i2 + 3] == 1) {
            return;
        }
        byte b22 = bArr[i2 + 2];
        if (b22 == 31) {
            o1.u.j();
            return;
        }
        if (b22 == 40) {
            o1.u.r();
            return;
        }
        switch (b22) {
            case 10:
                int i57 = u0.b.D;
                if (i57 == 8 || i57 == 9) {
                    u0.d.I3(37, i57, 8, 1);
                } else if (i57 == 4) {
                    o0.e.f16766b.D(0);
                } else if (i57 == 1) {
                    w0.f.B(1);
                } else if (i57 == 2) {
                    h0.c.f2425b.h(3);
                }
                break;
            case 11:
                int i58 = u0.b.D;
                if (i58 == 8 || i58 == 9) {
                    u0.d.I3(37, i58, 8, 2);
                } else if (i58 == 4) {
                    o0.e.f16766b.D(1);
                } else if (i58 == 1) {
                    w0.f.B(2);
                } else if (i58 == 2) {
                    h0.c.f2425b.h(4);
                }
                break;
            case 12:
                int i59 = u0.b.D;
                if (i59 == 8 || i59 == 9) {
                    u0.d.I3(37, i59, 8, 3);
                } else if (i59 == 4) {
                    o0.e.f16766b.D(2);
                } else if (i59 == 1) {
                    w0.f.B(3);
                } else if (i59 == 2) {
                    h0.c.f2425b.h(5);
                }
                break;
            case 13:
                int i60 = u0.b.D;
                if (i60 == 8 || i60 == 9) {
                    u0.d.I3(37, i60, 8, 4);
                } else if (i60 == 4) {
                    o0.e.f16766b.D(3);
                } else if (i60 == 1) {
                    w0.f.B(4);
                } else if (i60 == 2) {
                    h0.c.f2425b.h(6);
                }
                break;
            case 14:
                int i61 = u0.b.D;
                if (i61 == 8 || i61 == 9) {
                    u0.d.I3(37, i61, 8, 5);
                } else if (i61 == 4) {
                    o0.e.f16766b.D(4);
                } else if (i61 == 1) {
                    w0.f.B(5);
                } else if (i61 == 2) {
                    h0.c.f2425b.h(7);
                }
                break;
            case 15:
                int i62 = u0.b.D;
                if (i62 == 8 || i62 == 9) {
                    u0.d.I3(37, i62, 8, 6);
                } else if (i62 == 4) {
                    o0.e.f16766b.D(5);
                } else if (i62 == 1) {
                    w0.f.B(6);
                } else if (i62 == 2) {
                    h0.c.f2425b.h(8);
                }
                break;
            default:
                switch (b22) {
                    case 48:
                        int i63 = u0.b.D;
                        if (i63 == 8 || i63 == 9) {
                            u0.d.I3(37, i63, 8, 7);
                        } else if (i63 == 2) {
                            h0.c.f2425b.h(9);
                        }
                        break;
                    case 49:
                        int i64 = u0.b.D;
                        if (i64 == 8 || i64 == 9) {
                            u0.d.I3(37, i64, 8, 8);
                        } else if (i64 == 2) {
                            h0.c.f2425b.h(10);
                        }
                        break;
                    case 50:
                        int i65 = u0.b.D;
                        if (i65 == 8 || i65 == 9) {
                            u0.d.I3(37, i65, 8, 9);
                        } else if (i65 == 2) {
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
                        if (this.f8326b != 0) {
                            g3(218, f8325z, 1, 1);
                        }
                        break;
                    case 55:
                        if (this.f8326b != 0) {
                            g3(218, f8325z, 1, 2);
                        }
                        break;
                    case 56:
                        if (this.f8326b != 0) {
                            g3(218, f8325z, 1, 3);
                        }
                        break;
                    case 57:
                        if (this.f8326b != 0) {
                            g3(218, f8325z, 1, 4);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.f8349y);
        qt.q0(this.f8344t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                g3(218, f8325z, iArr[0], iArr[1]);
            }
        } else if (i2 == 1) {
            g3(220, f8325z, 208, 0);
        } else if (i2 == 2) {
            z.k.s(227, 2, iArr[0], iArr[1], iArr[2]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }

    public final int a3() {
        return u0.b.K3 == 1 ? 2 : 1;
    }

    public final void b3(int i2) {
        z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, a3());
    }

    public final String d3(String[][] strArr, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < strArr[i2].length; i3++) {
            stringBuffer.append(strArr[i2][i3]);
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
        z.k.s(227, 3, i2, i3, i4, i5);
    }
}
