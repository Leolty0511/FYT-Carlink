package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class tn extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f10744q = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10745b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10748e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10746c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10747d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{24, 63}, new int[]{48, 12}, new int[]{49, 25}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, 22}, new int[]{54, 53}, new int[]{64, 5}, new int[]{65, 36}, new int[]{66, 38}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10749f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10750g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 54}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 9}, new int[]{12, 1}, new int[]{49, 0}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 25}, new int[]{64, 5}, new int[]{65, 16}, new int[]{66, 54}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10751h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f10752i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10753j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10754k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10755l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10756m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f10757n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10758o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10759p = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, -58, 4, 80, (byte) (((i2 << 7) | b2) & 255), b3, b4);
            qt.y0(142, time.hour);
            qt.y0(143, time.minute);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(tn.this.f10756m);
            tn.this.f10754k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tn tnVar = tn.this;
            int i2 = tnVar.f10754k - 1;
            tnVar.f10754k = i2;
            if (i2 <= 0) {
                tnVar.f10754k = 6;
                l0.b0.p0(tnVar.f10756m);
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1 || u0.b.D == 13) {
                return;
            }
            z.k.s(227, -64, 2, 8, 19);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (tn.f10744q != u0.b.D) {
                if (tn.f10744q == 13) {
                    z.k.s(227, -64, 2, 8, 19);
                }
                tn.f10744q = u0.b.D;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tn tnVar = tn.this;
            int i2 = y0.f.Q0;
            tnVar.f10758o = i2;
            if (i2 == 0) {
                z.k.s(227, -99, 1, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, -99, 1, 1);
            }
        }
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
        mtVar.f8312g = 0;
        u0.c.f17386m.a(this.f10755l, 1);
        u0.c.f17374a.a(this.f10757n, 1);
        y0.g.f18110t.a(this.f10759p, 1);
        qt.z(this.f10753j);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            qt.y0(99, (b3 >> 7) & 1);
            qt.y0(100, (b3 >> 6) & 1);
            qt.y0(101, (b3 >> 5) & 1);
            qt.y0(103, (b5 & 255) | ((b4 & 255) << 8));
            qt.y0(102, b3 & DhcpPacket.DHCP_DOMAIN_NAME);
        }
        if (b2 == 4) {
            if (((bArr[i2 + 2] >> 7) & 1) == 1) {
                qt.y0(116, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
                qt.y0(117, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
                qt.y0(108, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
                qt.y0(109, ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255));
                qt.y0(110, ((bArr[i2 + 11] & 255) << 8) | (bArr[i2 + 12] & 255));
                qt.y0(111, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] & 255) << 8));
                return;
            }
            qt.y0(104, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(105, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(106, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(107, ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255));
            qt.y0(108, ((bArr[i2 + 11] & 255) << 8) | (bArr[i2 + 12] & 255));
            qt.y0(109, ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(110, ((bArr[i2 + 15] & 255) << 8) | (bArr[i2 + 16] & 255));
            qt.y0(111, ((bArr[i2 + 17] & 255) << 8) | (bArr[i2 + 18] & 255));
            qt.y0(112, ((bArr[i2 + 19] & 255) << 8) | (bArr[i2 + 20] & 255));
            qt.y0(113, ((bArr[i2 + 21] & 255) << 8) | (bArr[i2 + 22] & 255));
            qt.y0(114, ((bArr[i2 + 23] & 255) << 8) | (bArr[i2 + 24] & 255));
            qt.y0(115, (bArr[i2 + 26] & 255) | ((bArr[i2 + 25] & 255) << 8));
            return;
        }
        if (b2 == 41) {
            if (this.f10752i) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
            return;
        }
        if (b2 == 42) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            this.f10749f = b6 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10750g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10749f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10748e = i4;
                    break;
                }
                i4++;
            }
            int i6 = b7 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f10748e;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10748e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i8 = bArr[i2 + 2] & 255;
            if (i8 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i9 = i2 + 3;
                    l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                } else {
                    int i10 = i2 + 3;
                    l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                    return;
                }
            }
            if (i8 == 3) {
                int i11 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i11);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i11}, null, null);
                return;
            } else {
                if (i8 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f10752i = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                this.f10746c = b8 & 255;
                int i12 = 0;
                while (true) {
                    iArr2 = this.f10747d;
                    if (i12 < iArr2.length) {
                        int i13 = this.f10746c;
                        if (i13 != iArr2[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f10745b = i12;
                        }
                    }
                }
                int i14 = this.f10746c;
                if (i14 != 10) {
                    switch (i14) {
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                            if (!o1.u.Y0().equals("com.syu.canbus")) {
                                o1.u.v();
                            }
                            break;
                        default:
                            if ((b9 & 255) == 0) {
                                int i15 = this.f10745b;
                                if (i15 < iArr2.length && i15 != 255) {
                                    l0.b0.l0(iArr2[i15][1], 1);
                                }
                                this.f10745b = 255;
                            } else if (i12 < iArr2.length) {
                                l0.b0.l0(iArr2[i12][1], 0);
                            }
                            break;
                    }
                } else {
                    if ((b9 & 255) == 1) {
                        int i16 = h0.c.E;
                        if (i16 == 3 || i16 == 4 || i16 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                    }
                    break;
                }
                break;
            case 33:
                byte b10 = bArr[i2 + 2];
                qt.y0(10, (b10 >> 7) & 1);
                qt.y0(11, (b10 >> 6) & 1);
                qt.y0(12, (b10 >> 5) & 1);
                qt.y0(62, (b10 >> 4) & 1);
                qt.y0(13, (b10 >> 3) & 1);
                qt.y0(14, (b10 >> 2) & 1);
                qt.y0(16, (b10 >> 1) & 1);
                byte b11 = bArr[i2 + 3];
                qt.y0(18, (b11 >> 7) & 1);
                qt.y0(19, (b11 >> 6) & 1);
                qt.y0(20, (b11 >> 5) & 1);
                int i17 = b11 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i17 > 7) {
                    i17 = 7;
                }
                qt.y0(21, i17);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    byte b12 = bArr[i2 + 5];
                    if (b12 == -1) {
                        qt.y0(27, -3);
                    } else if (b12 != 0) {
                        qt.y0(27, b12 & 255);
                    } else {
                        qt.y0(27, -2);
                    }
                    byte b13 = bArr[i2 + 4];
                    if (b13 == -1) {
                        qt.y0(28, -3);
                    } else if (b13 != 0) {
                        qt.y0(28, b13 & 255);
                    } else {
                        qt.y0(28, -2);
                    }
                } else {
                    byte b14 = bArr[i2 + 4];
                    if (b14 == -1) {
                        qt.y0(27, -3);
                    } else if (b14 != 0) {
                        qt.y0(27, b14 & 255);
                    } else {
                        qt.y0(27, -2);
                    }
                    byte b15 = bArr[i2 + 5];
                    if (b15 == -1) {
                        qt.y0(28, -3);
                    } else if (b15 != 0) {
                        qt.y0(28, b15 & 255);
                    } else {
                        qt.y0(28, -2);
                    }
                }
                byte b16 = bArr[i2 + 6];
                qt.y0(65, (b16 >> 7) & 1);
                qt.y0(37, (b16 >> 0) & 1);
                qt.y0(67, (b16 >> 2) & 1);
                byte b17 = bArr[i2 + 8];
                if (b17 == -1) {
                    qt.y0(40, -3);
                } else if (b17 != 0) {
                    qt.y0(40, b17 & 255);
                } else {
                    qt.y0(40, -2);
                }
                byte b18 = bArr[i2 + 9];
                qt.y0(48, (b18 >> 7) & 1);
                qt.y0(46, (b18 >> 6) & 1);
                qt.y0(47, (b18 >> 5) & 1);
                qt.y0(44, b18 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(43, (bArr[i2 + 10] >> 7) & 1);
                byte b19 = bArr[i2 + 7];
                qt.y0(22, (b19 >> 2) & 1);
                qt.y0(23, (b19 >> 1) & 1);
                qt.y0(24, b19 & 1);
                byte b20 = bArr[i2 + 11];
                qt.y0(31, (b20 >> 6) & 3);
                qt.y0(29, (b20 >> 4) & 3);
                qt.y0(32, (b20 >> 2) & 3);
                qt.y0(30, b20 & 3);
                break;
            case 34:
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(a3(bArr[i18] & 255));
                u0.d.E2(a3(bArr[i20] & 255));
                u0.d.F2(a3(bArr[i22] & 255));
                u0.d.G2(a3(bArr[i24] & 255));
                break;
            case 36:
                byte b21 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b21 >> 7) & 1);
                    qt.y0(2, (b21 >> 6) & 1);
                } else {
                    qt.y0(1, (b21 >> 6) & 1);
                    qt.y0(2, (b21 >> 7) & 1);
                }
                qt.y0(3, (b21 >> 4) & 1);
                qt.y0(4, (b21 >> 5) & 1);
                qt.y0(5, (b21 >> 3) & 1);
                qt.y0(0, (b21 >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 119:
                        byte b22 = bArr[i2 + 2];
                        byte b23 = bArr[i2 + 3];
                        byte b24 = bArr[i2 + 4];
                        byte b25 = bArr[i2 + 1];
                        qt.y0(113, b22);
                        qt.y0(114, b24);
                        if (b23 == 0) {
                            str = new String(bArr, i2 + 5, b25 - 3, Charset.forName("ascii"));
                        } else if (b23 == 1) {
                            try {
                                str = new String(bArr, i2 + 5, b25 - 3, "UTF-16LE");
                            } catch (UnsupportedEncodingException e2) {
                                e2.printStackTrace();
                                str = ProxyProperties.LOCAL_EXCL_LIST;
                            }
                        } else if (b23 == 2) {
                            try {
                                str = new String(bArr, i2 + 5, b25 - 3, "GB2312");
                            } catch (UnsupportedEncodingException e3) {
                                e3.printStackTrace();
                                str = ProxyProperties.LOCAL_EXCL_LIST;
                            }
                        } else {
                            str = ProxyProperties.LOCAL_EXCL_LIST;
                        }
                        qt.x0(115, str);
                        break;
                    case 120:
                        byte b26 = bArr[i2 + 2];
                        byte b27 = bArr[i2 + 3];
                        qt.y0(116, b26 & 1);
                        qt.y0(117, b27);
                        break;
                    case 121:
                        byte b28 = bArr[i2 + 2];
                        byte b29 = bArr[i2 + 3];
                        byte b30 = bArr[i2 + 4];
                        qt.y0(118, b28 & 1);
                        qt.y0(119, (b28 >> 1) & 1);
                        qt.y0(120, b29);
                        qt.y0(121, b30);
                        break;
                    case 122:
                        qt.y0(122, bArr[i2 + 2] & 1);
                        break;
                    case 123:
                        int i26 = i2 + 2;
                        qt.y0(123, bArr[i26] & 255);
                        if (this.f10754k == 6) {
                            if (bArr[i26] != this.f10751h) {
                                byte b31 = bArr[i26];
                                this.f10751h = b31;
                                if (b31 == 5) {
                                    l0.b0.l0(54, 0);
                                    l0.b0.l0(54, 1);
                                } else if (b31 != 0) {
                                    b3();
                                }
                            } else if (bArr[i26] == 5 && u0.b.D == 13) {
                                l0.b0.l0(54, 0);
                                l0.b0.l0(54, 1);
                            } else if (bArr[i26] != 5 && bArr[i26] != 0 && u0.b.D != 13) {
                                b3();
                            }
                        }
                        if (bArr[i26] == 4) {
                            qt.y0(128, bArr[i2 + 3] & 255);
                            qt.y0(124, bArr[i2 + 4] & 255);
                            qt.y0(125, bArr[i2 + 5] & 255);
                            int i27 = i2 + 6;
                            qt.y0(134, (bArr[i27] >> 5) & 1);
                            qt.y0(133, (bArr[i27] >> 4) & 1);
                            qt.y0(132, (bArr[i27] >> 3) & 1);
                            qt.y0(131, (bArr[i27] >> 2) & 1);
                            qt.y0(130, (bArr[i27] >> 1) & 1);
                            qt.y0(129, (bArr[i27] >> 0) & 1);
                            qt.y0(126, bArr[i2 + 7] & 255);
                            qt.y0(127, bArr[i2 + 8] & 255);
                            qt.y0(140, bArr[i2 + 9] & 255);
                        } else if (bArr[i26] == 6) {
                            qt.y0(135, bArr[i2 + 3] & 255);
                            qt.y0(136, bArr[i2 + 4] & 255);
                            qt.y0(137, bArr[i2 + 5] & 255);
                            qt.y0(138, bArr[i2 + 7] & 255);
                            qt.y0(139, bArr[i2 + 8] & 255);
                            qt.y0(141, bArr[i2 + 9] & 255);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10755l);
        u0.c.f17374a.d(this.f10757n);
        l0.b0.p0(this.f10756m);
        y0.g.f18110t.d(this.f10759p);
        qt.q0(this.f10753j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 144) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, -112, 2, iArr[0], 0);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final void b3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.honda.Act_RZC_CarCD_AoDeSai")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.honda.Act_RZC_CarCD_AoDeSai");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
