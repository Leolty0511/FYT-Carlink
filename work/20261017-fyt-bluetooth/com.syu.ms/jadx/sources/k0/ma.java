package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ma extends lt {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f7997u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f7998v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f7999w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f8000x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f8001y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8003c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8004d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 18}, new int[]{15, 18}, new int[]{16, 16}, new int[]{17, 2}, new int[]{32, 25}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 31}, new int[]{37, 30}, new int[]{38, 75}, new int[]{39, 74}, new int[]{40, 54}, new int[]{41, 18}, new int[]{42, 25}, new int[]{43, 55}, new int[]{44, 9}, new int[]{45, 5}, new int[]{46, 3}, new int[]{47, 4}, new int[]{48, 1}, new int[]{49, 6}, new int[]{50, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8005e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8006f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f8007g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8008h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8009i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f8010j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8011k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f8012l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8013m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8014n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8015o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8016p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8017q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8018r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f8019s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f8020t = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ma.this.f8015o);
            ma.this.f8013m = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ma maVar = ma.this;
            int i2 = maVar.f8013m - 1;
            maVar.f8013m = i2;
            if (i2 <= 0) {
                l0.b0.p0(maVar.f8015o);
                ma.this.f8013m = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 7:
                    case 11:
                    case 12:
                    case 13:
                    case 18:
                        z.k.s(227, -125, 2, 34, 1);
                        break;
                    case 8:
                        ma maVar2 = ma.this;
                        maVar2.g3(maVar2.f8007g.b(1, 0), ma.this.f8007g.b(2, 0), ma.this.f8007g.b(3, 0), ma.this.f8007g.b(4, 0), ma.this.f8007g.b(5, 0));
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 19:
                        z.k.s(227, -125, 2, 34, 2);
                        break;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 7:
                case 9:
                case 14:
                    z.k.s(227, -18, 2, 4, 1);
                    break;
                case 8:
                    z.k.s(227, -18, 2, 4, 4);
                    break;
                case 10:
                case 11:
                case 13:
                case 15:
                case 17:
                case 18:
                case 19:
                    z.k.s(227, -18, 2, 4, 2);
                    break;
                case 12:
                case 16:
                    z.k.s(227, -18, 2, 4, 3);
                    break;
                case 20:
                    z.k.s(227, -18, 2, 4, 4);
                    break;
                case 22:
                    z.k.s(227, -18, 2, 4, 3);
                    break;
                case 23:
                    z.k.s(227, -18, 2, 4, 5);
                    break;
                case 24:
                case 25:
                    z.k.s(227, -18, 2, 4, 6);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x005a  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            boolean z2 = 1;
            int i4 = 0;
            if (ma.this.f8017q != h0.c.E) {
                a.f.p().t(LogType.CANBUS, "phoneState  ===   " + ma.this.f8017q + "------ DataBt.sPhoneState =  " + h0.c.E);
                ma maVar = ma.this;
                int i5 = maVar.f8017q;
                if ((i5 != 5 && i5 != 4 && i5 != 3) || h0.c.E != 2) {
                    if (i5 == 3 && h0.c.E == 5) {
                        i4 = 4;
                    } else if (i5 != 4 || h0.c.E != 5) {
                        switch (h0.c.E) {
                            case 0:
                                i3 = 128;
                                i4 = i3;
                                break;
                            case 1:
                            case 2:
                            case 6:
                                i3 = 129;
                                i4 = i3;
                                break;
                            case 3:
                                i4 = 3;
                                break;
                            case 4:
                                i4 = 1;
                                break;
                            case 5:
                                i4 = 2;
                                break;
                        }
                    } else {
                        i4 = 2;
                    }
                }
                maVar.f8017q = h0.c.E;
                i2 = i4;
                i4 = 1;
            } else {
                i2 = 0;
            }
            if (ma.this.f8020t.equals(h0.c.f2437h)) {
                z2 = i4;
            } else {
                ma.this.f8020t = h0.c.f2437h;
                if (ma.this.f8020t == null) {
                    ma.this.f8020t = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = i4;
                }
            }
            a.f.p().t(LogType.CANBUS, "sendCmd  ===   " + z2 + "------ mphoneState =  " + i2);
            if (z2 != 0) {
                if (nt.f8637c != 21) {
                    ma maVar2 = ma.this;
                    maVar2.h3(i2, maVar2.f8020t);
                    return;
                }
                int i6 = h0.c.E;
                if (i6 == 2 || i6 == 3 || i6 == 4 || i6 == 5) {
                    z.k.s(227, 132, 1, 128);
                } else {
                    z.k.s(227, 132, 1, 0);
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
        int i3 = nt.f8637c;
        if (i3 == 9 || i3 == 10 || i3 == 20 || i3 == 22 || i3 == 23 || i3 == 24 || i3 == 25) {
            if (i2 == 33) {
                if (iArr[1] != 0) {
                    if (nt.f8645g[21] == 0) {
                        a3(11);
                        return;
                    }
                    return;
                } else {
                    if (nt.f8645g[21] != 0) {
                        a3(0);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 34) {
                if (iArr[1] != 0) {
                    if (nt.f8645g[11] == 0) {
                        a3(1);
                        return;
                    }
                    return;
                } else {
                    if (nt.f8645g[11] == 1) {
                        a3(1);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 41) {
                if (iArr[1] != 0) {
                    a3(13);
                    return;
                } else {
                    a3(14);
                    return;
                }
            }
            if (i2 == 42) {
                if (iArr[1] != 0) {
                    a3(15);
                    return;
                } else {
                    a3(16);
                    return;
                }
            }
            if (i2 == 55) {
                if (iArr[1] < 16) {
                    z.k.s(227, -88, 2, 19, 254);
                    return;
                }
                if (iArr[1] >= 16 && iArr[1] <= 32) {
                    z.k.s(227, -88, 2, 19, iArr[1] * 2);
                    return;
                } else {
                    if (iArr[1] > 32) {
                        z.k.s(227, -88, 2, 19, 255);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 56) {
                if (iArr[1] < 16) {
                    z.k.s(227, -88, 2, 20, 254);
                    return;
                }
                if (iArr[1] >= 16 && iArr[1] <= 32) {
                    z.k.s(227, -88, 2, 20, iArr[1] * 2);
                    return;
                } else {
                    if (iArr[1] > 32) {
                        z.k.s(227, -88, 2, 20, 255);
                        return;
                    }
                    return;
                }
            }
            if (i2 != 68) {
                switch (i2) {
                    case 36:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[18] == 1) {
                                a3(6);
                            }
                        } else if (nt.f8645g[18] == 0) {
                            a3(6);
                        }
                        break;
                    case 37:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[16] == 1) {
                                a3(23);
                            }
                        } else if (nt.f8645g[16] == 0) {
                            a3(23);
                        }
                        break;
                    case 38:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[12] == 1) {
                                a3(21);
                            }
                        } else if (nt.f8645g[12] == 0) {
                            a3(21);
                        }
                        break;
                    case 39:
                        if (iArr[1] == -1) {
                            a3(11);
                        } else if (iArr[1] == -2) {
                            a3(12);
                        }
                        break;
                }
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, 126, 2, 81, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, 126, 2, 81, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, 126, 2, 82, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, 126, 2, 82, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, 126, 2, 83, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, 126, 2, 83, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, 126, 2, 84, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, 126, 2, 84, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, 126, 2, 80, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, 126, 2, 80, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, 126, 2, 85, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, 126, 2, 85, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[21] == 0) {
                    a3(11);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[21] != 0) {
                    a3(0);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    a3(1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    a3(1);
                    return;
                }
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(13);
                return;
            } else {
                a3(14);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(15);
                return;
            } else {
                a3(16);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 16) {
                z.k.s(227, -88, 2, 19, 254);
                return;
            }
            if (iArr[1] >= 16 && iArr[1] <= 32) {
                z.k.s(227, -88, 2, 19, iArr[1] * 2);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -88, 2, 19, 255);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] < 16) {
                z.k.s(227, -88, 2, 20, 254);
                return;
            }
            if (iArr[1] >= 16 && iArr[1] <= 32) {
                z.k.s(227, -88, 2, 20, iArr[1] * 2);
                return;
            } else {
                if (iArr[1] > 32) {
                    z.k.s(227, -88, 2, 20, 255);
                    return;
                }
                return;
            }
        }
        if (i2 != 68) {
            switch (i2) {
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[18] == 1) {
                            a3(6);
                        }
                    } else if (nt.f8645g[18] == 0) {
                        a3(6);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            a3(23);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        a3(23);
                    }
                    break;
                case 38:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[12] == 1) {
                            a3(21);
                        }
                    } else if (nt.f8645g[12] == 0) {
                        a3(21);
                    }
                    break;
                case 39:
                    if (iArr[1] == -1) {
                        a3(11);
                    } else if (iArr[1] == -2) {
                        a3(12);
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -17, 4, 125, 2, 2, 1);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -17, 4, 125, 2, 2, 11);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -17, 4, 125, 2, 0, 1);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -17, 4, 125, 2, 0, 11);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -17, 4, 125, 2, 3, 1);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -17, 4, 125, 2, 3, 11);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -17, 4, 125, 2, 1, 1);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -17, 4, 125, 2, 1, 11);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -17, 3, 125, 1, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -17, 3, 125, 1, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -17, 4, 125, 2, 16, 1);
        } else if (iArr[1] == 12) {
            z.k.s(227, -17, 4, 125, 2, 16, 11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x008d  */
    /* JADX WARN: Code duplicated, block: B:13:0x00a0  */
    @Override // k0.lt
    public void S2() {
        this.f8007g.a();
        l0.b0.b(this.f8005e);
        w0.e.f17815a.a(this.f8005e, 1);
        u0.c.f17374a.a(this.f8005e, 1);
        u0.c.f17392s.a(this.f8005e, 1);
        u0.c.f17393t.a(this.f8005e, 1);
        h0.d.f2464c.a(this.f8018r, 1);
        h0.d.f2462a.a(this.f8018r, 1);
        qt.z(this.f8016p);
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f8014n, 1);
        int i2 = nt.f8637c;
        if (i2 != 3) {
            if (i2 != 24 && i2 != 25) {
                switch (i2) {
                    case 6:
                        mt mtVar = this.f7886a;
                        mtVar.f8306a = new String[]{"com.syu.canbus"};
                        mtVar.f8310e = 1;
                        mtVar.f8311f = 0;
                        mtVar.f8312g = 0;
                        mtVar.f8320o = 0;
                        break;
                    case 7:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                        mt mtVar2 = this.f7886a;
                        mtVar2.f8306a = new String[]{"com.syu.canbus"};
                        mtVar2.f8310e = 1;
                        mtVar2.f8314i = 1;
                        mtVar2.f8311f = 1;
                        mtVar2.f8312g = 0;
                        mtVar2.f8320o = 0;
                        break;
                    case 8:
                        mt mtVar3 = this.f7886a;
                        mtVar3.f8306a = new String[]{"com.syu.canbus"};
                        mtVar3.f8310e = 1;
                        mtVar3.f8314i = 0;
                        mtVar3.f8311f = 1;
                        mtVar3.f8312g = 0;
                        mtVar3.f8320o = 0;
                        break;
                    case 21:
                        mt mtVar4 = this.f7886a;
                        mtVar4.f8306a = new String[]{"com.syu.canbus"};
                        mtVar4.f8310e = 1;
                        mtVar4.f8314i = 1;
                        mtVar4.f8311f = 1;
                        mtVar4.f8312g = 0;
                        mtVar4.f8320o = 0;
                        yVar.a(this.f8018r, 1);
                        break;
                    default:
                        mt mtVar5 = this.f7886a;
                        mtVar5.f8306a = null;
                        mtVar5.f8310e = 1;
                        mtVar5.f8311f = 0;
                        mtVar5.f8312g = 0;
                        mtVar5.f8320o = 0;
                        break;
                }
            } else {
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8310e = 1;
                mtVar6.f8314i = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 0;
                mtVar6.f8320o = 0;
            }
        } else {
            mt mtVar7 = this.f7886a;
            mtVar7.f8306a = new String[]{"com.syu.canbus"};
            mtVar7.f8310e = 1;
            mtVar7.f8311f = 0;
            mtVar7.f8312g = 0;
            mtVar7.f8320o = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            int i7 = i2 + 2;
            qt.y0(58, (bArr[i7] >> 7) & 1);
            qt.y0(11, (bArr[i7] >> 6) & 1);
            qt.y0(12, (bArr[i7] >> 4) & 3);
            qt.y0(13, (bArr[i7] >> 3) & 1);
            qt.y0(14, (bArr[i7] >> 2) & 1);
            qt.y0(16, (bArr[i7] >> 1) & 1);
            qt.y0(53, (bArr[i7] >> 0) & 1);
            int i8 = bArr[i2 + 3] & 255;
            if (i8 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i8 != 2) {
                if (i8 == 3) {
                    i4 = 0;
                    i6 = 1;
                } else if (i8 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i8 != 5) {
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
                i6 = 0;
                i5 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            int i9 = i2 + 4;
            qt.y0(21, bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(29, (bArr[i9] >> 4) & 15);
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            int i14 = nt.f8633a;
            if (i14 == 1573174 || i14 == 1638710) {
                qt.y0(27, i11);
                qt.y0(28, i13);
                return;
            }
            if (i11 == 0) {
                qt.y0(27, -1);
            } else if (i11 == 254) {
                qt.y0(27, -2);
            } else if (i11 == 255) {
                qt.y0(27, -3);
            } else if (nt.f8637c == 21) {
                qt.y0(27, i11 - 160);
            } else {
                qt.y0(27, i11);
            }
            if (i13 == 0) {
                qt.y0(28, -1);
                return;
            }
            if (i13 == 254) {
                qt.y0(28, -2);
                return;
            }
            if (i13 == 255) {
                qt.y0(28, -3);
                return;
            } else if (nt.f8637c == 21) {
                qt.y0(28, i13 - 160);
                return;
            } else {
                qt.y0(28, i13);
                return;
            }
        }
        if (b2 == 33) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8003c = b3 & 255;
                int i15 = 0;
                while (true) {
                    iArr = this.f8004d;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    int i16 = this.f8003c;
                    if (i16 == iArr[i15][0]) {
                        if (i16 == 0) {
                            break;
                        }
                        this.f8002b = i15;
                        break;
                    }
                    i15++;
                }
                int i17 = this.f8003c;
                if (i17 == 14) {
                    if ((b4 & 255) == 1) {
                        int i18 = h0.c.E;
                        if (i18 == 3 || i18 == 4 || i18 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    return;
                }
                if (i17 == 15) {
                    if ((b4 & 255) == 1) {
                        int i19 = h0.c.E;
                        if (i19 != 3) {
                            if (i19 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                                return;
                            } else if (i19 != 5) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                                return;
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    }
                    return;
                }
                if (i17 == 33) {
                    for (int i20 = 0; i20 < (b4 & 255); i20++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                if (i17 == 34) {
                    for (int i21 = 0; i21 < (b4 & 255); i21++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                if (i17 == 36) {
                    for (int i22 = 0; i22 < (b4 & 255); i22++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    return;
                }
                if (i17 == 37) {
                    for (int i23 = 0; i23 < (b4 & 255); i23++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    return;
                }
                int i24 = b4 & 255;
                if (i24 == 1) {
                    if (i15 < iArr.length) {
                        l0.b0.l0(iArr[i15][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i24 == 0) {
                        int i25 = this.f8002b;
                        if (i25 < iArr.length && i25 != 255) {
                            l0.b0.l0(iArr[i25][1], 1);
                        }
                        this.f8002b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 48) {
            if (this.f8006f) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 8600);
            return;
        }
        if (b2 == 64) {
            qt.y0(168, bArr[i2 + 2] & 255);
            qt.y0(169, bArr[i2 + 3] & 255);
            qt.y0(170, bArr[i2 + 4] & 255);
            qt.y0(171, bArr[i2 + 5] & 255);
            qt.y0(172, bArr[i2 + 6] & 255);
            qt.y0(173, bArr[i2 + 7] & 255);
            qt.y0(174, bArr[i2 + 8] & 255);
            qt.y0(175, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 125) {
            int i26 = bArr[i2 + 2] & 255;
            if (i26 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i27 = i2 + 3;
                    l0.c0.b((bArr[i27] >> 3) & 1, (bArr[i27] >> 4) & 1, 0);
                    return;
                } else {
                    int i28 = i2 + 3;
                    l0.c0.a((bArr[i28] >> 3) & 1, (bArr[i28] >> 4) & 1, 0);
                    return;
                }
            }
            if (i26 == 3) {
                int i29 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i29);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i29}, null, null);
                return;
            }
            if (i26 != 5) {
                if (i26 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8006f = true;
                return;
            }
            int i30 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i30 >> 6) & 1);
                qt.y0(1, (i30 >> 7) & 1);
            } else {
                qt.y0(2, (i30 >> 7) & 1);
                qt.y0(1, (i30 >> 6) & 1);
            }
            qt.y0(4, (i30 >> 5) & 1);
            qt.y0(3, (i30 >> 4) & 1);
            qt.y0(5, (i30 >> 3) & 1);
            qt.y0(0, (i30 >> 2) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 82) {
            if (b2 == 83) {
                qt.y0(167, bArr[i2 + 2] & 255);
                return;
            }
            switch (b2) {
                case 38:
                    u0.d.R2(l0.c0.F0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.F0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.F0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.F0(bArr[i2 + 5] & 255));
                    break;
                case 39:
                    int i31 = i2 + 2;
                    int i32 = bArr[i31] & 255;
                    int i33 = i2 + 3;
                    int i34 = bArr[i33] & 255;
                    int i35 = i2 + 4;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 5;
                    int i38 = bArr[i37] & 255;
                    if (i32 == 0 && i34 == 0 && i36 == 0 && i38 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i32 || l0.c0.f13014h != i34 || l0.c0.f13015i != i36 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i32;
                    l0.c0.f13014h = i34;
                    l0.c0.f13015i = i36;
                    l0.c0.f13016j = i38;
                    u0.d.D2(l0.c0.F0(bArr[i31] & 255));
                    u0.d.E2(l0.c0.F0(bArr[i33] & 255));
                    u0.d.F2(l0.c0.F0(bArr[i35] & 255));
                    u0.d.G2(l0.c0.F0(bArr[i37] & 255));
                    break;
                case 40:
                    byte b5 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                    break;
            }
            return;
        }
        int i39 = i2 + 2;
        if (bArr[i39] == 1) {
            qt.y0(98, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 2) {
            qt.y0(99, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 3) {
            qt.y0(100, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 4) {
            qt.y0(101, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 5) {
            qt.y0(102, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 6) {
            qt.y0(103, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 7) {
            qt.y0(104, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 8) {
            qt.y0(105, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 9) {
            qt.y0(106, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 10) {
            qt.y0(107, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 11) {
            qt.y0(108, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 12) {
            qt.y0(109, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 13) {
            qt.y0(110, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 14) {
            qt.y0(111, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 15) {
            qt.y0(112, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 16) {
            qt.y0(113, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 17) {
            qt.y0(114, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 18) {
            qt.y0(115, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 19) {
            qt.y0(116, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 20) {
            qt.y0(117, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 21) {
            qt.y0(118, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 22) {
            qt.y0(119, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 23) {
            qt.y0(120, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 24) {
            qt.y0(121, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 25) {
            qt.y0(122, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 26) {
            qt.y0(123, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 27) {
            qt.y0(124, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 28) {
            qt.y0(125, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 29) {
            qt.y0(126, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 30) {
            qt.y0(127, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 31) {
            qt.y0(128, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 32) {
            qt.y0(129, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 33) {
            qt.y0(130, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 34) {
            qt.y0(131, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 35) {
            qt.y0(141, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 36) {
            qt.y0(142, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 37) {
            qt.y0(143, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 38) {
            qt.y0(144, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 39) {
            qt.y0(145, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 40) {
            qt.y0(146, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 41) {
            qt.y0(147, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 42) {
            qt.y0(148, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 43) {
            qt.y0(149, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 44) {
            qt.y0(150, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 45) {
            qt.y0(158, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 46) {
            qt.y0(159, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 47) {
            qt.y0(160, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 48) {
            int i40 = i2 + 3;
            qt.y0(161, bArr[i40]);
            qt.y0(132, bArr[i40]);
            return;
        }
        if (bArr[i39] == 49) {
            int i41 = i2 + 3;
            qt.y0(162, bArr[i41]);
            qt.y0(133, bArr[i41]);
            return;
        }
        if (bArr[i39] == 50) {
            int i42 = i2 + 3;
            qt.y0(163, bArr[i42]);
            qt.y0(134, bArr[i42]);
            return;
        }
        if (bArr[i39] == 51) {
            int i43 = i2 + 3;
            qt.y0(164, bArr[i43]);
            qt.y0(135, bArr[i43]);
            return;
        }
        if (bArr[i39] == 52) {
            int i44 = i2 + 3;
            qt.y0(165, bArr[i44]);
            qt.y0(136, bArr[i44]);
            return;
        }
        if (bArr[i39] == 53) {
            int i45 = i2 + 3;
            qt.y0(166, bArr[i45]);
            qt.y0(138, bArr[i45]);
            return;
        }
        if (bArr[i39] == 54) {
            qt.y0(139, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 55) {
            qt.y0(140, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 56) {
            qt.y0(156, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 57) {
            qt.y0(157, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 58) {
            qt.y0(176, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 59) {
            qt.y0(177, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 60) {
            qt.y0(178, bArr[i2 + 3]);
            return;
        }
        if (bArr[i39] == 61) {
            qt.y0(179, bArr[i2 + 3]);
        } else if (bArr[i39] == 62) {
            qt.y0(180, bArr[i2 + 3]);
        } else if (bArr[i39] == 63) {
            qt.y0(181, bArr[i2 + 3]);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8007g.j();
        l0.b0.p0(this.f8005e);
        w0.e.f17815a.d(this.f8005e);
        u0.c.f17374a.d(this.f8005e);
        u0.c.f17392s.d(this.f8005e);
        u0.c.f17393t.d(this.f8005e);
        h0.d.f2464c.d(this.f8018r);
        h0.d.f2462a.d(this.f8018r);
        qt.q0(this.f8016p);
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f8014n);
        l0.b0.p0(this.f8015o);
        yVar.d(this.f8018r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 182) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            g3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 169, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 168, 2, i2, 0);
    }

    public final void g3(int i2, int i3, int i4, int i5, int i6) {
        qt.y0(151, i2);
        qt.y0(152, i3);
        qt.y0(153, i4);
        qt.y0(154, i5);
        qt.y0(155, i6);
        f7997u = i2;
        f7998v = i3;
        f7999w = i4;
        f8000x = i5;
        f8001y = i6;
        int iB = this.f8007g.b(1, 0);
        int i7 = f7997u;
        if (iB != i7) {
            this.f8007g.g(1, i7);
        }
        int iB2 = this.f8007g.b(2, 0);
        int i8 = f7998v;
        if (iB2 != i8) {
            this.f8007g.g(2, i8);
        }
        int iB3 = this.f8007g.b(3, 0);
        int i9 = f7999w;
        if (iB3 != i9) {
            this.f8007g.g(3, i9);
        }
        int iB4 = this.f8007g.b(4, 0);
        int i10 = f8000x;
        if (iB4 != i10) {
            this.f8007g.g(4, i10);
        }
        int iB5 = this.f8007g.b(5, 0);
        int i11 = f8001y;
        if (iB5 != i11) {
            this.f8007g.g(5, i11);
        }
        z.k.s(227, 208, 5, i2, i3, i4, i5, i6);
    }

    public final void h3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = (i2 == 129 || i2 == 128) ? new int[8] : new int[charArray.length + 8];
        iArr[0] = -29;
        iArr[1] = -64;
        iArr[2] = 5;
        iArr[3] = 5;
        iArr[4] = (byte) i2;
        iArr[5] = 18;
        if (charArray.length > 0) {
            iArr[6] = 0;
            iArr[7] = 0;
            if (i2 != 129 && i2 != 128) {
                iArr[6] = 2;
                iArr[7] = charArray.length;
                iArr[2] = charArray.length + 5;
                for (int i3 = 0; i3 < str.length(); i3++) {
                    iArr[8 + i3] = charArray[i3];
                }
            }
        }
        z.k.s(iArr);
    }
}
