package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class s8 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10170d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f10174h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10168b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10171e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f10172f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 33}, new int[]{29, 32}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{67, 1}, new int[]{68, 6}, new int[]{69, 9}, new int[]{70, 18}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{83, 5}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10173g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 18}, new int[]{135, 12}, new int[]{1, 3}, new int[]{2, 44}, new int[]{3, 43}, new int[]{4, 42}, new int[]{5, 0}, new int[]{6, 55}, new int[]{7, 13}, new int[]{8, 40}, new int[]{9, 41}, new int[]{10, 4}, new int[]{11, 29}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, -1}, new int[]{16, -1}, new int[]{17, 55}, new int[]{18, 1}, new int[]{19, 29}, new int[]{20, 21}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 31}, new int[]{26, 30}, new int[]{27, -1}, new int[]{28, -1}, new int[]{29, -1}, new int[]{52, 27}, new int[]{53, 28}, new int[]{54, -1}, new int[]{64, -1}, new int[]{67, 1}, new int[]{68, 6}, new int[]{69, 9}, new int[]{70, 18}, new int[]{80, 9}, new int[]{81, 2}, new int[]{83, 9}, new int[]{84, 54}, new int[]{96, 18}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10175i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f10176j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10177k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10178l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10179m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f10180n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10181o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10182p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10183q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10184r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10185s = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s8 s8Var = s8.this;
            int i2 = s8Var.f10178l;
            if (i2 > 0) {
                s8Var.f10178l = i2 - 1;
            }
            if (s8Var.f10178l != 0 || s8Var.f10176j) {
                return;
            }
            s8Var.f10176j = true;
            l0.b0.l0(25, 0);
            l0.b0.l0(25, 1);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(s8.this.f10183q);
            s8.this.f10181o = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s8 s8Var = s8.this;
            int i2 = s8Var.f10181o - 1;
            s8Var.f10181o = i2;
            if (i2 <= 0) {
                l0.b0.p0(s8Var.f10183q);
                s8.this.f10181o = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                z.k.s(227, 144, 1, 51);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 0) {
                z.k.s(227, 226, 1, 8);
            } else if (i2 == 5) {
                z.k.s(227, 226, 1, 10);
            } else if (i2 == 7) {
                z.k.s(227, 226, 1, 9);
            } else if (i2 == 8) {
                z.k.s(227, 226, 1, 70);
            } else if (i2 != 9) {
                switch (i2) {
                    case 11:
                        z.k.s(227, 226, 1, 72);
                        break;
                    case 12:
                        z.k.s(227, 226, 1, 73);
                        break;
                    case 13:
                        z.k.s(227, 226, 1, 11);
                        break;
                }
            } else {
                z.k.s(227, 226, 1, 71);
            }
            int i3 = nt.f8633a;
            if (i3 != 309) {
                if (i3 != 655623) {
                    z.k.s(227, 131, 2, 129, 0);
                } else {
                    z.k.s(227, 131, 2, 129, 1);
                }
            }
        }
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
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            a3(1);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        a3(1);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            a3(23);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        a3(23);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            a3(21);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        a3(21);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            a3(20);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        a3(20);
                    }
                    break;
                case 38:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[12] == 1) {
                            a3(35);
                        }
                    } else if (nt.f8645g[12] == 0) {
                        a3(34);
                    }
                    break;
                case 39:
                    int i3 = iArr[1];
                    if (i3 == -2) {
                        a3(9);
                        break;
                    } else if (i3 == -1) {
                        a3(10);
                        break;
                    }
                    break;
                case 41:
                    if (iArr[1] == 0) {
                        a3(2);
                    } else {
                        a3(3);
                    }
                    break;
                case 42:
                    if (iArr[1] == 0) {
                        a3(4);
                    } else {
                        a3(5);
                    }
                    break;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(1);
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
                        b3(12);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(12);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(27);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(27);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        b3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    b3(3);
                }
                break;
            case 39:
                int i4 = iArr[1];
                if (i4 == -2) {
                    b3(7);
                    break;
                } else if (i4 == -1) {
                    b3(6);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(5);
                } else {
                    b3(4);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(21);
                } else {
                    b3(20);
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
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f10182p, 1);
        int i2 = nt.f8637c;
        if (i2 == 1) {
            this.f7886a.f8306a = null;
        } else if (i2 != 4) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            for (int i3 = 154; i3 <= 183; i3++) {
                qt.y0(i3, 1);
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8314i = 1;
        }
        qt.z(this.f10185s);
        qt.y(this.f10175i);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        qt.z(this.f10184r);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    /* JADX WARN: Code duplicated, block: B:258:0x0a88  */
    /* JADX WARN: Code duplicated, block: B:270:0x0adb  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 != 2) {
                if (b2 == 3) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    byte b5 = bArr[i2 + 6];
                    byte b6 = bArr[i2 + 8];
                    qt.y0(10, (b3 >> 7) & 1);
                    qt.y0(11, (b3 >> 6) & 1);
                    int[] iArr4 = new int[1];
                    iArr4[0] = ((b3 >> 5) & 1) == 0 ? 1 : 0;
                    qt.y0(12, iArr4);
                    qt.y0(16, (b3 >> 4) & 1);
                    qt.y0(54, (b3 >> 3) & 1);
                    int i13 = (b4 >> 4) & 1;
                    if (i13 == 0) {
                        qt.y0(21, b3 & 7);
                    } else if (i13 == 1) {
                        if (nt.f8637c == 4) {
                            qt.y0(21, (b3 & 7) + 8);
                        } else {
                            qt.y0(21, 8);
                        }
                    }
                    qt.y0(52, (b4 >> 6) & 1);
                    int i14 = b4 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
                    switch (i14) {
                        case 1:
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                            i9 = 1;
                            break;
                        case 2:
                            i9 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                            i5 = 1;
                            break;
                        case 3:
                            i9 = 0;
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            i8 = 1;
                            break;
                        case 4:
                            i9 = 0;
                            i5 = 0;
                            i6 = 0;
                            i7 = 1;
                            i8 = i7;
                            break;
                        case 5:
                            i9 = 0;
                            i5 = 0;
                            i6 = 0;
                            i8 = 0;
                            i7 = 1;
                            break;
                        case 6:
                            i9 = 0;
                            i5 = 0;
                            i8 = 0;
                            i6 = 1;
                            i7 = 1;
                            break;
                        case 7:
                            i9 = 0;
                            i5 = 0;
                            i7 = 0;
                            i8 = 0;
                            i6 = 1;
                            break;
                        case 8:
                            i9 = 0;
                            i5 = 0;
                            i7 = 0;
                            i6 = 1;
                            i8 = 1;
                            break;
                        case 9:
                            i9 = 0;
                            i5 = 0;
                            i6 = 1;
                            i7 = i6;
                            i8 = i7;
                            break;
                        default:
                            i9 = 0;
                            i5 = 0;
                            i6 = 0;
                            i7 = i6;
                            i8 = i7;
                            break;
                    }
                    qt.y0(49, i9);
                    qt.y0(15, i5);
                    qt.y0(18, i6);
                    qt.y0(19, i7);
                    qt.y0(20, i8);
                    qt.y0(77, i14);
                    qt.y0(14, (b4 >> 5) & 1);
                    int i15 = i2 + 4;
                    byte b7 = bArr[i15];
                    int i16 = i2 + 5;
                    byte b8 = bArr[i16];
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b7 = bArr[i16];
                        b8 = bArr[i15];
                    }
                    int i17 = b7 & 255;
                    if (i17 != 0) {
                        switch (i17) {
                            case 29:
                                qt.y0(27, 160);
                                break;
                            case 30:
                                qt.y0(27, i17);
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
                                if (i17 >= 1 && i17 <= 28) {
                                    qt.y0(27, (i17 * 5) + 165);
                                }
                                break;
                        }
                    } else {
                        qt.y0(27, i17);
                    }
                    int i18 = b8 & 255;
                    if (i18 != 0) {
                        switch (i18) {
                            case 29:
                                qt.y0(28, 160);
                                break;
                            case 30:
                                qt.y0(28, i18);
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
                                if (i18 >= 1 && i18 <= 28) {
                                    qt.y0(28, (i18 * 5) + 165);
                                }
                                break;
                        }
                    } else {
                        qt.y0(28, i18);
                    }
                    qt.y0(29, (b5 >> 4) & 15);
                    qt.y0(30, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                    qt.y0(80, (b6 >> 1) & 1);
                    qt.y0(74, b6 & 1);
                    qt.y0(13, (b6 >> 4) & 1);
                    if (nt.a()) {
                        byte b9 = bArr[i2 + 7];
                        u0.d.A3((b9 & 128) > 0 ? 1000 - ((((~(b9 & 255)) + 1) & 255) * 10) : ((b9 & 255) * 10) + 1000);
                    }
                } else if (b2 == 13) {
                    qt.y0(131, bArr[i2 + 2]);
                } else if (b2 == 19) {
                    byte b10 = bArr[i2 + 2];
                    qt.y0(31, (b10 >> 4) & 3);
                    qt.y0(32, (b10 >> 0) & 3);
                } else if (b2 == 26) {
                    byte b11 = bArr[i2 + 2];
                    byte b12 = bArr[i2 + 3];
                    int i19 = b11 & 255;
                    if (i19 == 0) {
                        qt.y0(154, b12 & 1);
                        qt.y0(155, (b12 >> 1) & 1);
                        qt.y0(156, (b12 >> 2) & 1);
                        qt.y0(157, (b12 >> 3) & 1);
                        qt.y0(158, (b12 >> 4) & 1);
                        qt.y0(159, (b12 >> 5) & 1);
                        qt.y0(160, (b12 >> 6) & 1);
                        qt.y0(161, (b12 >> 7) & 1);
                    } else if (i19 == 1) {
                        qt.y0(162, (b12 & 1) == 0 ? 0 : 1);
                        qt.y0(163, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                        qt.y0(186, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                    } else if (i19 == 2) {
                        qt.y0(164, (b12 & 1) == 0 ? 0 : 1);
                        qt.y0(165, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                        qt.y0(166, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                        qt.y0(167, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                        qt.y0(168, ((b12 >> 4) & 1) == 0 ? 0 : 1);
                        qt.y0(169, ((b12 >> 5) & 1) == 0 ? 0 : 1);
                        qt.y0(170, ((b12 >> 6) & 1) == 0 ? 0 : 1);
                    } else if (i19 == 3) {
                        qt.y0(171, (b12 & 1) == 0 ? 0 : 1);
                        qt.y0(172, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                    } else if (i19 == 4) {
                        qt.y0(173, (b12 & 1) == 0 ? 0 : 1);
                        qt.y0(174, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                        qt.y0(175, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                        qt.y0(172, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                    } else if (i19 == 5) {
                        qt.y0(177, (b12 & 1) == 0 ? 0 : 1);
                        qt.y0(178, ((b12 >> 1) & 1) == 0 ? 0 : 1);
                        qt.y0(179, ((b12 >> 2) & 1) == 0 ? 0 : 1);
                        qt.y0(180, ((b12 >> 3) & 1) == 0 ? 0 : 1);
                        qt.y0(181, ((b12 >> 4) & 1) == 0 ? 0 : 1);
                        qt.y0(182, ((b12 >> 5) & 1) == 0 ? 0 : 1);
                        qt.y0(183, ((b12 >> 6) & 1) == 0 ? 0 : 1);
                    }
                } else if (b2 != 38) {
                    if (b2 == 74) {
                        int i20 = i2 + 2;
                        if (bArr[i20] == 1) {
                            qt.y0(138, (bArr[i2 + 4] & 255) * 4);
                            qt.y0(139, (bArr[i2 + 5] & 255) * 4);
                            qt.y0(140, (bArr[i2 + 6] & 255) * 4);
                            qt.y0(141, (bArr[i2 + 7] & 255) * 4);
                        } else if (bArr[i20] == 2) {
                            qt.y0(193, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                            qt.y0(194, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        }
                    } else if (b2 != 125) {
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
                                d3(bArr, i2 + 2, i3 - 2);
                                break;
                            case 9:
                                if (nt.R != 0) {
                                    e3(bArr[i2 + 2]);
                                }
                                break;
                            case 10:
                                byte b17 = bArr[i2 + 2];
                                byte b18 = bArr[i2 + 3];
                                byte b19 = bArr[i2 + 4];
                                qt.y0(117, (b17 >> 7) & 1);
                                qt.y0(118, (b17 >> 6) & 1);
                                qt.y0(119, (b17 >> 5) & 1);
                                qt.y0(120, (b17 >> 4) & 1);
                                int i21 = (b18 >> 4) & 1;
                                qt.y0(121, i21);
                                qt.y0(128, (b19 >> 4) & 1);
                                int i22 = b18 >> 6;
                                qt.y0(185, i22 & 3);
                                qt.y0(126, (b19 >> 1) & 1);
                                qt.y0(122, (b17 >> 2) & 1);
                                qt.y0(123, b17 & 3);
                                qt.y0(124, (b18 >> 7) & 1);
                                qt.y0(125, i22 & 1);
                                qt.y0(127, i21);
                                qt.y0(129, (b19 >> 5) & 1);
                                break;
                            case 11:
                                qt.y0(130, (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255)) / 16);
                                break;
                            default:
                                switch (b2) {
                                    case 34:
                                        if (nt.a()) {
                                            u0.d.R2(c3(bArr[i2 + 2] & 255));
                                            u0.d.S2(c3(bArr[i2 + 3] & 255));
                                            u0.d.T2(c3(bArr[i2 + 4] & 255));
                                            u0.d.U2(c3(bArr[i2 + 5] & 255));
                                        }
                                        break;
                                    case 35:
                                        if (nt.a()) {
                                            int i23 = i2 + 2;
                                            int i24 = bArr[i23] & 255;
                                            int i25 = i2 + 3;
                                            int i26 = bArr[i25] & 255;
                                            int i27 = i2 + 4;
                                            int i28 = bArr[i27] & 255;
                                            int i29 = i2 + 5;
                                            int i30 = bArr[i29] & 255;
                                            if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                                                u0.d.C2(0);
                                            } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                                                u0.d.C2(1);
                                                l0.c0.f13017k = 4;
                                                l0.b0.b(l0.c0.f13018l);
                                            }
                                            l0.c0.f13013g = i24;
                                            l0.c0.f13014h = i26;
                                            l0.c0.f13015i = i28;
                                            l0.c0.f13016j = i30;
                                            u0.d.D2(c3(bArr[i23] & 255));
                                            u0.d.E2(c3(bArr[i25] & 255));
                                            u0.d.F2(c3(bArr[i27] & 255));
                                            u0.d.G2(c3(bArr[i29] & 255));
                                        }
                                        break;
                                    case 36:
                                        byte b20 = bArr[i2 + 2];
                                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                            qt.y0(2, (b20 >> 6) & 1);
                                            qt.y0(1, (b20 >> 7) & 1);
                                        } else {
                                            qt.y0(2, (b20 >> 7) & 1);
                                            qt.y0(1, (b20 >> 6) & 1);
                                        }
                                        qt.y0(4, (b20 >> 5) & 1);
                                        qt.y0(3, (b20 >> 4) & 1);
                                        qt.y0(5, (b20 >> 3) & 1);
                                        break;
                                    default:
                                        switch (b2) {
                                            case 48:
                                                qt.L(new String(bArr, i2 + 2, i3 - 2));
                                                break;
                                            case 49:
                                                byte b21 = bArr[i2 + 3];
                                                byte b22 = bArr[i2 + 4];
                                                byte b23 = bArr[i2 + 6];
                                                byte b24 = bArr[i2 + 7];
                                                byte b25 = bArr[i2 + 8];
                                                byte b26 = bArr[i2 + 9];
                                                qt.y0(132, b21 & 255);
                                                int i31 = (b22 >> 7) & 1;
                                                int i32 = b22 & 127;
                                                if (i31 == 1) {
                                                    i32 = 255 - i32;
                                                }
                                                qt.y0(133, i32);
                                                qt.y0(134, ((b23 & 255) << 24) | ((b24 & 255) << 16) | ((b25 & 255) << 8) | (b26 & 255));
                                                break;
                                            case 50:
                                                byte b27 = bArr[i2 + 2];
                                                byte b28 = bArr[i2 + 3];
                                                byte b29 = bArr[i2 + 4];
                                                byte b30 = bArr[i2 + 5];
                                                byte b31 = bArr[i2 + 6];
                                                qt.y0(135, ((b27 & 255) << 8) | (b28 & 255));
                                                qt.y0(136, ((b29 & 255) << 8) | (b30 & 255));
                                                qt.y0(137, b31 & 255);
                                                break;
                                            case 51:
                                                int i33 = i2 + 2;
                                                byte b32 = bArr[i33];
                                                byte b33 = bArr[i33 + 1];
                                                byte b34 = bArr[i33 + 2];
                                                byte b35 = bArr[i33 + 3];
                                                byte b36 = bArr[i33 + 4];
                                                byte b37 = bArr[i33 + 5];
                                                byte b38 = bArr[i33 + 6];
                                                byte b39 = bArr[i33 + 7];
                                                byte b40 = bArr[i33 + 10];
                                                byte b41 = bArr[i33 + 11];
                                                byte b42 = bArr[i33 + 12];
                                                byte b43 = bArr[i33 + 13];
                                                int i34 = ((b32 & 255) << 8) | (b33 & 255);
                                                qt.y0(138, i34);
                                                int i35 = (b35 & 255) | ((b34 & 255) << 8);
                                                qt.y0(139, i35);
                                                int i36 = ((b36 & 255) << 8) | (b37 & 255);
                                                qt.y0(140, i36);
                                                int i37 = ((b38 & 255) << 8) | (255 & b39);
                                                qt.y0(141, i37);
                                                o1.x[] xVarArr = nt.f8643f;
                                                o1.x.C(xVarArr, 1049, new int[]{8, ((i34 * 4) / 10) | GLES10.GL_MODULATE}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, 8704 | ((i35 * 4) / 10)}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, 8960 | ((i36 * 4) / 10)}, null, null);
                                                o1.x.C(xVarArr, 1049, new int[]{8, 9216 | ((i37 * 4) / 10)}, null, null);
                                                qt.y0(142, b40 & 1);
                                                qt.y0(143, (b40 >> 1) & 1);
                                                qt.y0(144, (b40 >> 2) & 1);
                                                qt.y0(145, b41 & 1);
                                                qt.y0(146, (b41 >> 1) & 1);
                                                qt.y0(147, (b41 >> 2) & 1);
                                                qt.y0(148, b42 & 1);
                                                qt.y0(149, (b42 >> 1) & 1);
                                                qt.y0(150, (b42 >> 2) & 1);
                                                qt.y0(151, b43 & 1);
                                                qt.y0(152, (b43 >> 1) & 1);
                                                qt.y0(153, (b43 >> 2) & 1);
                                                break;
                                            default:
                                                switch (b2) {
                                                    case 67:
                                                        byte b44 = bArr[i2 + 2];
                                                        qt.y0(192, (b44 >> 7) & 1);
                                                        qt.y0(187, (b44 >> 6) & 1);
                                                        qt.y0(195, bArr[i2 + 3] & 255);
                                                        break;
                                                    case 68:
                                                        byte b45 = bArr[i2 + 2];
                                                        qt.y0(191, (b45 >> 7) & 1);
                                                        qt.y0(190, (b45 >> 6) & 1);
                                                        qt.y0(189, (b45 >> 5) & 1);
                                                        qt.y0(188, (b45 >> 3) & 3);
                                                        break;
                                                    case 69:
                                                        byte b46 = bArr[i2 + 2];
                                                        byte b47 = bArr[i2 + 3];
                                                        qt.y0(40, b46 & 255);
                                                        qt.y0(44, (b47 >> 4) & 15);
                                                        int i38 = b47 & DhcpPacket.DHCP_DOMAIN_NAME;
                                                        if (i38 == 1) {
                                                            i10 = 0;
                                                            i11 = 0;
                                                            i12 = 1;
                                                        } else if (i38 != 2) {
                                                            if (i38 == 3) {
                                                                i12 = 0;
                                                                i10 = 1;
                                                            } else if (i38 != 4) {
                                                                i12 = 0;
                                                                i10 = 0;
                                                            } else {
                                                                i12 = 0;
                                                                i10 = 0;
                                                                i11 = 1;
                                                            }
                                                            i11 = i10;
                                                        } else {
                                                            i12 = 0;
                                                            i11 = 0;
                                                            i10 = 1;
                                                        }
                                                        qt.y0(43, i12);
                                                        qt.y0(46, i10);
                                                        qt.y0(47, i11);
                                                        qt.y0(86, i38);
                                                        qt.y0(188, (b47 >> 3) & 3);
                                                        break;
                                                    case 70:
                                                        int i39 = bArr[i2 + 2] & 1;
                                                        qt.y0(196, i39);
                                                        o1.x.C(nt.f8643f, 196, new int[]{i39}, null, null);
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        int i40 = bArr[i2 + 2] & 255;
                        if (i40 != 1) {
                            if (i40 == 3) {
                                int i41 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                                qt.y0(1031, i41);
                                o1.x.C(nt.f8643f, 1049, new int[]{1, i41}, null, null);
                            } else if (i40 == 8) {
                                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                                this.f10180n = true;
                            }
                        } else if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i42 = i2 + 3;
                            l0.c0.b((bArr[i42] >> 3) & 1, (bArr[i42] >> 4) & 1, 0);
                        } else {
                            int i43 = i2 + 3;
                            l0.c0.a((bArr[i43] >> 3) & 1, (bArr[i43] >> 4) & 1, 0);
                        }
                    }
                } else if (!this.f10180n) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 8640);
                }
            } else if (nt.a()) {
                byte b48 = bArr[i2 + 2];
                byte b49 = bArr[i2 + 3];
                this.f10171e = b48 & 255;
                int i44 = nt.f8637c;
                if (i44 != 4 && i44 != 10) {
                    int i45 = 0;
                    while (true) {
                        iArr3 = this.f10172f;
                        if (i45 >= iArr3.length) {
                            break;
                        }
                        int i46 = this.f10171e;
                        if (i46 == iArr3[i45][0]) {
                            if (i46 == 0) {
                                break;
                            }
                            this.f10170d = i45;
                            break;
                        }
                        i45++;
                    }
                    switch (this.f10171e) {
                        case 23:
                            for (int i47 = 0; i47 < (b49 & 255); i47++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 24:
                            for (int i48 = 0; i48 < (b49 & 255); i48++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 25:
                            for (int i49 = 0; i49 < (b49 & 255); i49++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 26:
                            for (int i50 = 0; i50 < (b49 & 255); i50++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            if ((b49 & 255) == 0) {
                                int i51 = this.f10170d;
                                if (i51 < iArr3.length) {
                                    i4 = 255;
                                    if (i51 != 255) {
                                        l0.b0.l0(iArr3[i51][1], 1);
                                    }
                                } else {
                                    i4 = 255;
                                }
                                this.f10170d = i4;
                            } else if (i45 < iArr3.length) {
                                l0.b0.l0(iArr3[i45][1], 0);
                            }
                            break;
                    }
                } else {
                    int i52 = 0;
                    while (true) {
                        iArr2 = this.f10173g;
                        if (i52 >= iArr2.length) {
                            break;
                        }
                        int i53 = this.f10171e;
                        if (i53 == iArr2[i52][0]) {
                            if (i53 == 0) {
                                break;
                            }
                            this.f10170d = i52;
                            break;
                        }
                        i52++;
                    }
                    int i54 = this.f10171e;
                    if (i54 != 5) {
                        switch (i54) {
                            case 23:
                                for (int i55 = 0; i55 < (b49 & 255); i55++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 24:
                                for (int i56 = 0; i56 < (b49 & 255); i56++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 25:
                                for (int i57 = 0; i57 < (b49 & 255); i57++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            case 26:
                                for (int i58 = 0; i58 < (b49 & 255); i58++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            default:
                                if ((b49 & 255) == 0) {
                                    int i59 = this.f10170d;
                                    if (i59 < iArr2.length && i59 != 255) {
                                        l0.b0.l0(iArr2[i59][1], 1);
                                    }
                                    this.f10170d = 255;
                                } else if (i52 < iArr2.length) {
                                    l0.b0.l0(iArr2[i52][1], 0);
                                }
                                break;
                        }
                    } else if (this.f10177k != b49) {
                        this.f10177k = b49;
                        if (b49 == 1) {
                            this.f10176j = false;
                            this.f10178l = -1;
                            l0.b0.o0(this.f10179m);
                        } else if (b49 == 2) {
                            this.f10178l = 15;
                            l0.b0.a(this.f10179m);
                        } else if (b49 == 0) {
                            if (this.f10176j) {
                                this.f10176j = false;
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                            this.f10178l = -1;
                            l0.b0.o0(this.f10179m);
                        }
                    }
                }
            } else {
                int i60 = bArr[i2 + 2] & 255;
                if ((255 & bArr[i2 + 3]) == 1 && i60 == 4) {
                    o1.u.v();
                }
            }
        } else if (nt.a()) {
            byte b50 = bArr[i2 + 2];
            byte b51 = bArr[i2 + 3];
            this.f10171e = (b50 | 128) & 255;
            int i61 = 0;
            while (true) {
                iArr = this.f10172f;
                if (i61 >= iArr.length) {
                    break;
                }
                int i62 = this.f10171e;
                if (i62 == iArr[i61][0]) {
                    if (i62 == 0) {
                        break;
                    }
                    this.f10170d = i61;
                    break;
                }
                i61++;
            }
            int i63 = this.f10171e;
            if (i63 != 134) {
                if (i63 != 135) {
                    if ((b51 & 255) == 0) {
                        int i64 = this.f10170d;
                        if (i64 < iArr.length && i64 != 255) {
                            l0.b0.l0(iArr[i64][1], 1);
                        }
                        this.f10170d = 255;
                    } else if (i61 < iArr.length) {
                        l0.b0.l0(iArr[i61][1], 0);
                    }
                } else if ((b51 & 255) == 1) {
                    int i65 = h0.c.E;
                    if (i65 == 3 || i65 == 4 || i65 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
            } else if ((255 & b51) == 1) {
                if (h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                }
            }
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.f10175i);
        qt.q0(this.f10185s);
        qt.q0(this.f10184r);
        u0.c.f17386m.d(this.f10182p);
        l0.b0.p0(this.f10183q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 197) {
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
        if (i2 == 96) {
            if (T2(iArr, 1)) {
                z.k.s(227, -121, 1, iArr[0]);
                return;
            }
            return;
        }
        switch (i2) {
            case 3:
                if (T2(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
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
                f3(134, (byte) 10, iArr);
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

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, -32, 2, i2, 0);
    }

    public final void b3(int i2) {
        z.k.s(227, -126, 2, 7, i2);
        a.i.a0(50L);
        z.k.s(227, -126, 2, 7, 0);
    }

    public final int c3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final void d3(byte[] bArr, int i2, int i3) {
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
        if (qt.B0(115, string, this.f10174h)) {
            this.f10174h = string;
        }
    }

    public final void e3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f10168b == 1 && (i3 = this.f10169c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f10168b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f10168b != 0) {
                if (i4 == 0 || this.f10168b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f10168b = 1;
            this.f10169c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f10168b != 0 && y0.f.f18055i != 0) {
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

    public final void f3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 4;
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
