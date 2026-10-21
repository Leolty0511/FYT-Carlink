package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemClock;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11739c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11740d = {new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11741e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f11742f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11743g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11744h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = wf.this.f11743g;
            if (i2 != i3) {
                if (i3 == 13) {
                    z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                wf.this.f11743g = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f11744h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 == 19) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8314i = 1;
            mtVar.f8317l = 0;
            mtVar.f8315j = 0;
            mtVar.f8320o = 0;
            z.k.s(227, 114, 9, 3, 7, 1, 1, 3, i.a.Theme_actionModeWebSearchDrawable, 227, 251, 251);
            return;
        }
        if (i2 != 58) {
            return;
        }
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        z.k.s(227, 114, 9, 3, 7, 2, 1, 3, i.a.Theme_actionModeWebSearchDrawable, 227, i.a.Theme_preferenceHeaderPanelStyle, 251);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int[][] iArr2;
        byte b2 = bArr[i2];
        boolean z2 = false;
        if (b2 == 26) {
            byte b3 = bArr[i2 + 3];
            int i6 = b3 & 255;
            if ((b3 & 128) != 0) {
                i6 = (255 - i6) + 1;
                z2 = true;
            }
            u0.d.A3(z2 ? 1000 - (i6 * 10) : (i6 * 10) + 1000);
        }
        if (b2 == 32) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f11739c = b4 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f11740d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11739c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11738b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b5 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 != 0 || i7 > iArr.length) {
                    return;
                }
                l0.b0.l0(iArr[this.f11738b][1], 1);
                return;
            }
        }
        if (b2 == 36) {
            if (nt.f8637c != 58) {
                return;
            }
            int i10 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i10 >> 6) & 1);
                qt.y0(1, (i10 >> 7) & 1);
            } else {
                qt.y0(1, (i10 >> 6) & 1);
                qt.y0(2, (i10 >> 7) & 1);
            }
            qt.y0(3, (i10 >> 4) & 1);
            qt.y0(4, (i10 >> 5) & 1);
            qt.y0(5, (i10 >> 3) & 1);
            return;
        }
        if (b2 == 40) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            int i11 = i2 + 4;
            byte b8 = bArr[i11];
            int i12 = i2 + 5;
            byte b9 = bArr[i12];
            byte b10 = bArr[i2 + 6];
            qt.y0(10, (b6 >> 7) & 1);
            qt.y0(11, (b6 >> 6) & 1);
            qt.y0(12, (b6 >> 5) & 1);
            qt.y0(13, (b6 >> 4) & 1);
            qt.y0(14, (b6 >> 2) & 1);
            qt.y0(65, (b6 >> 1) & 1);
            qt.y0(38, (b6 >> 0) & 1);
            qt.y0(18, (b7 >> 7) & 1);
            qt.y0(19, (b7 >> 6) & 1);
            qt.y0(20, (b7 >> 5) & 1);
            qt.y0(16, (b10 >> 6) & 1);
            qt.y0(67, (b10 >> 2) & 1);
            qt.y0(75, (b10 >> 1) & 1);
            qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i5 = b8;
                i4 = b9;
                i5 = bArr[i12] & 255;
                i4 = bArr[i11] & 255;
            }
            i5 = b8;
            i4 = b9;
            int i13 = i5 & 255;
            if (i5 == 0) {
                qt.y0(27, -2);
            } else if (i5 == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i13);
            }
            int i14 = i4 & 255;
            if (i4 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i4 == 31) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i14);
                return;
            }
        }
        if (b2 == 41) {
            if (nt.f8637c != 58) {
                return;
            }
            int i15 = i2 + 3;
            qt.j(bArr[i2 + 2], 7 & bArr[i15], (bArr[i15] >> 3) & 1, 380);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            byte b13 = bArr[i2 + 4];
            byte b14 = bArr[i2 + 5];
            qt.y0(120, (b11 >> 4) & 15);
            qt.y0(121, (b11 >> 0) & 15);
            qt.y0(117, (b12 >> 4) & 15);
            qt.y0(119, (b12 >> 0) & 15);
            qt.y0(118, (b13 >> 4) & 15);
            qt.y0(116, (b13 >> 0) & 15);
            qt.y0(122, (b14 >> 0) & 255);
            return;
        }
        switch (b2) {
            case 16:
                qt.y0(100, (((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535);
                qt.y0(101, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                qt.y0(102, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 65535);
                qt.y0(103, (((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & 65535);
                qt.y0(104, (((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255)) & 65535);
                qt.y0(105, ((bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280)) & 65535);
                break;
            case 17:
                int i16 = i2 + 3;
                if (bArr[i16] == 1 && App.c().getResources().getConfiguration().orientation != 1) {
                    int i17 = i2 + 2;
                    if (bArr[i17] == 4 || bArr[i17] == 5) {
                        a3("com.syu.carinfo.daojun.lexus.djLexusRadio");
                    } else if (bArr[i17] != 7) {
                        byte b15 = bArr[i17];
                        byte b16 = bArr[i16];
                        this.f11739c = b15 & 255;
                        int i18 = 0;
                        while (true) {
                            iArr2 = this.f11740d;
                            if (i18 < iArr2.length) {
                                int i19 = this.f11739c;
                                if (i19 != iArr2[i18][0]) {
                                    i18++;
                                } else if (i19 != 0) {
                                    this.f11738b = i18;
                                }
                            }
                        }
                        if (i18 < iArr2.length) {
                            l0.b0.l0(iArr2[i18][1], 0);
                            l0.b0.l0(this.f11740d[i18][1], 1);
                        }
                        if (bArr[i17] > 3) {
                            c3(bArr[i17]);
                        }
                    } else {
                        a3("com.syu.carinfo.daojun.lexus.djLexusCd");
                    }
                    break;
                }
                break;
            case 18:
                if (nt.f8637c == 58) {
                    qt.y0(126, bArr[i2 + 2] & 255);
                    qt.y0(127, bArr[i2 + 3] & 255);
                    qt.y0(128, bArr[i2 + 4] & 255);
                    qt.y0(129, bArr[i2 + 5] & 255);
                    qt.y0(130, bArr[i2 + 6] & 255);
                    qt.y0(131, bArr[i2 + 7] & 255);
                    break;
                }
                break;
            default:
                switch (b2) {
                    case 28:
                        byte b17 = bArr[i2 + 2];
                        byte b18 = bArr[i2 + 3];
                        byte b19 = bArr[i2 + 4];
                        byte b20 = bArr[i2 + 5];
                        byte b21 = bArr[i2 + 6];
                        byte b22 = bArr[i2 + 7];
                        byte b23 = bArr[i2 + 8];
                        byte b24 = bArr[i2 + 9];
                        if (this.f11741e != b17) {
                            this.f11741e = b17;
                            if (b17 == 1) {
                                o1.x.C(nt.f8643f, 125, new int[]{1}, null, null);
                            } else if (b17 == 2) {
                                o1.x.C(nt.f8643f, 124, new int[]{1}, null, null);
                            } else if (b17 == 11) {
                                b3("com.syu.carui.ActivityDJ_LexusDVD_ES_H");
                            }
                        }
                        if (b17 == 1) {
                            qt.y0(98, b19 & 255);
                            qt.y0(106, b23 & 255);
                            qt.y0(99, (((b20 << 8) & 65280) | (b21 & 255)) & 65535);
                        } else if (b17 != 2 && b17 != 17) {
                        }
                        qt.y0(107, b19 & 255);
                        qt.y0(108, b20 & 255);
                        qt.y0(109, b21 & 255);
                        qt.y0(110, (b22 >> 0) & 1);
                        qt.y0(111, (b22 >> 1) & 1);
                        qt.y0(123, (b22 >> 2) & 1);
                        qt.y0(112, (b22 >> 4) & 1);
                        qt.y0(113, (b22 >> 5) & 1);
                        qt.y0(114, b23 & 255);
                        qt.y0(115, b24 & 255);
                        break;
                    case 29:
                        if (nt.f8637c == 58) {
                            int i20 = i2 + 2;
                            u0.d.D2(l0.c0.e1(bArr[i20]));
                            u0.d.E2(l0.c0.e1(bArr[i20]));
                            int i21 = i2 + 5;
                            u0.d.F2(l0.c0.e1(bArr[i21]));
                            u0.d.G2(l0.c0.e1(bArr[i21]));
                            break;
                        }
                        break;
                    case 30:
                        if (nt.f8637c == 58) {
                            u0.d.R2(l0.c0.e1(bArr[i2 + 2]));
                            int i22 = i2 + 3;
                            u0.d.S2(l0.c0.e1(bArr[i22]));
                            u0.d.T2(l0.c0.e1(bArr[i22]));
                            u0.d.U2(l0.c0.e1(bArr[i2 + 5]));
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f11744h);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 138) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 113, 2, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 116, 2, iArr[0], iArr[1]);
                break;
            case 2:
                o1.u.J();
                break;
            case 3:
                z.k.s(227, 138, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 202, 8, iArr[0], 0, 0, 0, 0, 0, 0, 0);
                break;
            case 6:
                b3("com.syu.carui.ActivityDJ_LexusDVD_ES_H");
                break;
        }
    }

    public final void a3(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(274857984);
        App.c().startActivity(intent);
    }

    public final void b3(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.syu.carui", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(274857984);
        App.c().startActivity(intent);
    }

    public final void c3(byte b2) {
        z.k.s(227, 116, 2, b2, 1);
        SystemClock.sleep(100L);
        z.k.s(227, 116, 2, b2, 0);
    }
}
