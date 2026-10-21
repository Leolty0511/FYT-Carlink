package k0;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class ii extends lt {
    public static int F = 0;
    public static int G = 1;
    public static int H = 1;
    public static int I = 0;
    public static int J = 0;
    public static int K = 0;
    public static int L = 0;
    public static int M = 0;
    public static int N = 0;
    public static int O = 0;
    public static int P = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6444n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6447q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6432b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6433c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6434d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6435e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6436f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6437g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6438h = 7;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6439i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6440j = 9;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6441k = 10;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6442l = 11;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.g0 f6443m = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6445o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f6446p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 4}, new int[]{12, 3}, new int[]{18, 13}, new int[]{128, 0}, new int[]{129, 21}, new int[]{130, 3}, new int[]{131, 4}, new int[]{132, 6}, new int[]{133, 18}, new int[]{134, 1}, new int[]{135, 54}, new int[]{136, 55}, new int[]{137, 18}, new int[]{138, 4}, new int[]{139, 7}, new int[]{140, 8}, new int[]{141, 63}, new int[]{142, 1}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6448r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[][] f6449s = {new int[]{1, 0}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 55}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 24}, new int[]{12, 18}, new int[]{13, 1}, new int[]{14, 54}, new int[]{15, -1}, new int[]{16, 9}, new int[]{17, 63}, new int[]{18, 6}, new int[]{19, 25}, new int[]{20, -1}};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f6450t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6451u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f6452v = new b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6453w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f6454x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f6455y = 0.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f6456z = 255;
    public int A = 255;
    public Runnable B = new e();
    public Runnable C = new f();
    public Runnable D = new g();
    public Runnable E = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(166, 1);
            } else {
                qt.y0(166, 0);
                qt.y0(167, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            z.k.s(227, 121, 3, i2 / BatchedScanSettings.MAX_INTERVAL_SEC, (i2 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i2 % 60);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 2) {
                int i2 = h0.c.E;
                if (i2 == 0) {
                    z.k.s(227, 119, 1, 0);
                    return;
                }
                if (i2 == 2) {
                    z.k.s(227, 119, 1, 16);
                    return;
                }
                if (i2 == 3) {
                    z.k.s(227, 119, 1, 18);
                } else if (i2 == 4) {
                    z.k.s(227, 119, 1, 17);
                } else {
                    if (i2 != 5) {
                        return;
                    }
                    z.k.s(227, 119, 1, 19);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ii.this.h3((byte) 3, h0.c.f2441j);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ii.this.f6455y = u0.b.f17359s0;
            if ((ii.this.f6455y <= 22.5d && ii.this.f6455y >= 0.0f) || (ii.this.f6455y >= 337.5d && ii.this.f6455y <= 360.0f)) {
                ii.this.A = 0;
            } else if (ii.this.f6455y > 22.5d && ii.this.f6455y < 67.5d) {
                ii.this.A = 1;
            } else if (ii.this.f6455y >= 67.5d && ii.this.f6455y <= 112.5d) {
                ii.this.A = 2;
            } else if (ii.this.f6455y > 112.5d && ii.this.f6455y < 157.5d) {
                ii.this.A = 3;
            } else if (ii.this.f6455y >= 157.5d && ii.this.f6455y <= 202.5d) {
                ii.this.A = 4;
            } else if (ii.this.f6455y > 202.5d && ii.this.f6455y < 247.5d) {
                ii.this.A = 5;
            } else if (ii.this.f6455y >= 247.5d && ii.this.f6455y <= 292.5d) {
                ii.this.A = 6;
            } else if (ii.this.f6455y <= 292.5d || ii.this.f6455y >= 337.5d) {
                ii.this.A = 0;
            } else {
                ii.this.A = 7;
            }
            if (ii.this.A != ii.this.f6456z) {
                z.k.s(227, 196, 1, ii.this.A);
                ii iiVar = ii.this;
                iiVar.f6456z = iiVar.A;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ii.this.h3((byte) 2, u0.b.i3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int[] iArr = new int[11];
            iArr[0] = 227;
            iArr[1] = 117;
            iArr[2] = 8;
            if (u0.b.f17306a0 != 1 || u0.b.f17332j != 0 || (i2 = u0.b.D) == 0) {
                iArr[3] = 0;
            } else if (i2 == 1) {
                iArr[3] = 1;
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) {
                    iArr[4] = 1;
                    int i4 = w0.d.f17797i;
                    iArr[5] = ((i4 / 10) >> 8) & 255;
                    iArr[6] = (i4 / 10) & 255;
                    iArr[7] = w0.d.f17798j;
                } else {
                    iArr[4] = 3;
                    int i5 = w0.d.f17797i;
                    iArr[5] = (i5 >> 8) & 255;
                    iArr[6] = i5 & 255;
                    iArr[7] = w0.d.f17798j;
                }
            } else if (i2 == 2) {
                iArr[3] = 6;
            } else if (i2 == 3) {
                iArr[3] = 4;
            } else if (i2 != 5) {
                switch (i2) {
                    case 8:
                    case 10:
                        iArr[3] = 4;
                        int i6 = u0.b.t3;
                        iArr[8] = (i6 / 60) % 60;
                        iArr[9] = i6 % 60;
                        break;
                    case 9:
                        iArr[3] = 3;
                        break;
                }
            } else {
                iArr[3] = 5;
            }
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                iArr[10] = 2;
            } else {
                iArr[10] = 1;
            }
            z.k.s(iArr);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.year;
            z.k.s(227, -126, 6, b2 & 255, (b2 & DhcpPacket.DHCP_DOMAIN_NAME) | (((byte) (time.month + 1)) << 4), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
            int i2 = nt.f8633a;
            if (i2 == 11338167) {
                z.k.s(227, -18, 2, 83, 2);
            } else {
                if (i2 != 11403703) {
                    return;
                }
                z.k.s(227, -18, 2, 83, 1);
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
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -18, 4, 125, 69, 0, 128);
                return;
            }
            z.k.s(227, -18, 4, 125, 69, 0, 129);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -18, 4, 125, 69, 1, 128);
                return;
            } else {
                z.k.s(227, -18, 4, 125, 69, 1, 129);
                return;
            }
        }
        if (i2 == 55) {
            z.k.s(227, -18, 4, 125, 69, 0, iArr[1]);
            return;
        }
        if (i2 == 56) {
            z.k.s(227, -18, 4, 125, 69, 1, iArr[1]);
            return;
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, -18, 4, 125, 2, 2, 1);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -18, 4, 125, 2, 2, 11);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -18, 4, 125, 2, 0, 1);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -18, 4, 125, 2, 0, 11);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -18, 4, 125, 2, 3, 1);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -18, 4, 125, 2, 3, 11);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -18, 4, 125, 2, 1, 1);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -18, 4, 125, 2, 1, 11);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -18, 3, 125, 1, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -18, 3, 125, 1, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -18, 4, 125, 2, 16, 1);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -18, 4, 125, 2, 16, 11);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 64, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 64, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 65, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 65, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 75, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 75, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 71, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 71, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 72, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 72, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    z.k.s(227, -18, 3, 125, 66, 0);
                } else if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 66, 1);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    z.k.s(227, -18, 3, 125, 68, 129);
                } else {
                    z.k.s(227, -18, 3, 125, 68, 128);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        int i2 = nt.f8633a;
        if (i2 == 2621879 || i2 == 11338167 || i2 == 11403703) {
            this.f6443m.a();
            m3(this.f6443m.b(1, 0));
            l3(this.f6443m.b(11, 1));
            k3(this.f6443m.b(2, 1), this.f6443m.b(4, 0), this.f6443m.b(6, 0), this.f6443m.b(8, 0));
            j3(this.f6443m.b(3, 1), this.f6443m.b(5, 0), this.f6443m.b(7, 0), this.f6443m.b(9, 0), this.f6443m.b(10, 0));
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        if (nt.f8633a == 2163143) {
            mtVar.f8306a = null;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.E);
        int i3 = nt.f8633a;
        if (i3 == 11338167 || i3 == 11403703) {
            qt.z(this.D);
        } else if (i3 == 6029765 || i3 == 6095301) {
            qt.z(this.D);
            u0.c.f17388o.a(this.C, 1);
            h0.d.f2462a.a(this.f6453w, 1);
            h0.d.f2473l.a(this.f6454x, 1);
            h0.d.f2465d.a(this.f6452v, 1);
            o1.h.f16865a.a(this.B, 1);
        }
        if (nt.f8633a == 6095301) {
            this.f7886a.f8313h = 2;
            u0.c.f17379f.a(this.f6451u, 1);
        }
        int i4 = nt.f8633a;
        if (i4 == 8389063 || i4 == 8323511 || i4 == 8389047) {
            this.f7886a.f8314i = 1;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6448r = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f6449s;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f6448r;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f6447q = i8;
                    break;
                }
                i8++;
            }
            int i10 = this.f6448r;
            if (i10 == 2) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
            if (i10 == 3) {
                for (int i12 = 0; i12 < (b4 & 255); i12++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i10 == 20) {
                if ((b4 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                    return;
                }
                o1.u.g("com.syu.carlink");
                return;
            }
            int i13 = b4 & 255;
            if (i13 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i13 == 0) {
                    int i14 = this.f6447q;
                    if (i14 < iArr.length) {
                        i4 = 255;
                        if (i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f6447q = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 17) {
            int i15 = bArr[i2 + 2] & 255;
            int i16 = bArr[i2 + 3] & 255;
            int i17 = bArr[i2 + 4] & 255;
            int i18 = i2 + 5;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 6;
            int i21 = bArr[i20] & 255;
            qt.y0(53, (i15 >> 7) & 1);
            qt.y0(11, (i15 >> 6) & 1);
            qt.y0(12, (i15 >> 4) & 3);
            qt.y0(13, (i15 >> 3) & 1);
            qt.y0(14, (i15 >> 2) & 1);
            qt.y0(16, (i15 >> 1) & 1);
            int i22 = i16 & 15;
            if (i22 == 1) {
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (i22 == 2) {
                i6 = 0;
                i5 = 1;
                i7 = 1;
            } else if (i22 == 3) {
                i7 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i22 == 4) {
                i7 = 0;
                i5 = 1;
                i6 = 1;
            } else if (i22 != 5) {
                i5 = 0;
                i7 = 0;
                i6 = 0;
            } else {
                i5 = 0;
                i7 = 0;
                i6 = 1;
            }
            qt.y0(20, i5);
            qt.y0(19, i7);
            qt.y0(18, i6);
            qt.y0(77, i22);
            qt.y0(21, i17 & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i19 = bArr[i20] & 255;
                i21 = bArr[i18] & 255;
            }
            int i23 = nt.f8633a;
            if (i23 == 10879428 || i23 == 10944964) {
                if (i19 == 128) {
                    qt.y0(27, -2);
                } else if (i19 == 160) {
                    qt.y0(27, -3);
                } else if (i19 <= 128 || i19 >= 160) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i19 & 255);
                }
                if (i21 == 128) {
                    qt.y0(28, -2);
                } else if (i21 == 160) {
                    qt.y0(28, -3);
                } else if (i21 <= 128 || i21 >= 160) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i21 & 255);
                }
            } else {
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 == 30) {
                    qt.y0(27, -3);
                } else if (i19 <= 0 || i19 >= 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i19 & 255);
                }
                if (i21 == 0) {
                    qt.y0(28, -2);
                } else if (i21 == 30) {
                    qt.y0(28, -3);
                } else if (i21 <= 0 || i21 >= 30) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i21 & 255);
                }
            }
            int i24 = i2 + 8;
            qt.y0(29, (bArr[i24] >> 4) & 15);
            qt.y0(30, (bArr[i24] >> 0) & 15);
            byte b5 = bArr[i2 + 7];
            if (b5 == 255 || b5 == 254) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3((b5 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 40) {
            int i25 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i25 >> 7) & 1);
                qt.y0(2, (i25 >> 6) & 1);
            } else {
                qt.y0(1, (i25 >> 6) & 1);
                qt.y0(2, (i25 >> 7) & 1);
            }
            qt.y0(3, (i25 >> 4) & 1);
            qt.y0(4, (i25 >> 5) & 1);
            qt.y0(5, (i25 >> 3) & 1);
            qt.y0(0, (i25 >> 2) & 1);
            int i26 = nt.f8633a;
            if (i26 == 6029765 || i26 == 6095301) {
                if (((bArr[i2 + 3] >> 5) & 1) == 1) {
                    u0.d.C2(1);
                    return;
                } else {
                    u0.d.C2(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 48) {
            if (this.f6450t) {
                return;
            }
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
            return;
        }
        if (b2 == 64) {
            qt.y0(144, (bArr[i2 + 2] >> 6) & 3);
            int i27 = i2 + 3;
            qt.y0(145, (bArr[i27] >> 7) & 1);
            qt.y0(146, (bArr[i27] >> 6) & 1);
            qt.y0(147, (bArr[i27] >> 5) & 1);
            return;
        }
        if (b2 == 96) {
            int i28 = i2 + 2;
            qt.y0(156, (bArr[i28] >> 6) & 1);
            qt.y0(157, (bArr[i28] >> 4) & 1);
            qt.y0(158, bArr[i2 + 3] & 255);
            qt.y0(159, bArr[i2 + 4] & 255);
            qt.y0(160, bArr[i2 + 5] & 255);
            qt.y0(161, bArr[i2 + 6] & 255);
            qt.y0(162, bArr[i2 + 7] & 255);
            qt.y0(163, bArr[i2 + 8] & 255);
            qt.y0(168, bArr[i2 + 9] & 255);
            qt.y0(169, bArr[i2 + 10] & 255);
            qt.y0(170, bArr[i2 + 11] & 255);
            int i29 = i2 + 12;
            qt.y0(171, (bArr[i29] >> 4) & 15);
            qt.y0(180, (bArr[i29] >> 0) & 15);
            return;
        }
        if (b2 == 100) {
            qt.y0(172, bArr[i2 + 2] & 255);
            qt.y0(173, bArr[i2 + 3] & 255);
            qt.y0(174, bArr[i2 + 4] & 255);
            qt.y0(175, bArr[i2 + 5] & 255);
            qt.y0(176, bArr[i2 + 6] & 255);
            qt.y0(177, bArr[i2 + 7] & 255);
            qt.y0(178, bArr[i2 + 8] & 255);
            qt.y0(179, bArr[i2 + 9] & 255);
            return;
        }
        switch (b2) {
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f6445o = b6 & 255;
                int i30 = 0;
                while (true) {
                    iArr2 = this.f6446p;
                    if (i30 < iArr2.length) {
                        int i31 = this.f6445o;
                        if (i31 != iArr2[i30][0]) {
                            i30++;
                        } else if (i31 != 0) {
                            this.f6444n = i30;
                        }
                    }
                }
                int i32 = this.f6445o;
                if (i32 != 9) {
                    if (i32 != 10) {
                        int i33 = b7 & 255;
                        if (i33 == 1) {
                            if (i30 < iArr2.length) {
                                l0.b0.l0(iArr2[i30][1], 0);
                            }
                        } else if (i33 == 0) {
                            int i34 = this.f6444n;
                            if (i34 < iArr2.length && i34 != 255) {
                                l0.b0.l0(iArr2[i34][1], 1);
                            }
                            this.f6444n = 255;
                        }
                    } else if ((b7 & 255) == 1) {
                        int i35 = h0.c.E;
                        if (i35 == 3 || i35 == 4 || i35 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if ((b7 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.e0.p(bArr[i2 + 2]));
                u0.d.S2(l0.e0.p(bArr[i2 + 3]));
                u0.d.T2(l0.e0.p(bArr[i2 + 4]));
                u0.d.U2(l0.e0.p(bArr[i2 + 5]));
                break;
            case 35:
                u0.d.D2(l0.e0.p(bArr[i2 + 2]));
                u0.d.E2(l0.e0.p(bArr[i2 + 3]));
                u0.d.F2(l0.e0.p(bArr[i2 + 4]));
                u0.d.G2(l0.e0.p(bArr[i2 + 5]));
                break;
            default:
                switch (b2) {
                    case 56:
                        int i36 = i2 + 2;
                        if ((bArr[i36] & 255) != 255) {
                            qt.y0(102, bArr[i36] & 255);
                        }
                        int i37 = i2 + 3;
                        if ((bArr[i37] & 255) != 255) {
                            qt.y0(103, bArr[i37] & 255);
                        }
                        int i38 = i2 + 4;
                        if ((bArr[i38] & 255) != 255) {
                            qt.y0(104, bArr[i38] & 255);
                        }
                        int i39 = i2 + 5;
                        if ((bArr[i39] & 255) != 255) {
                            qt.y0(105, bArr[i39] & 255);
                        }
                        int i40 = i2 + 6;
                        if ((bArr[i40] & 255) != 255) {
                            qt.y0(98, bArr[i40] & 255);
                        }
                        int i41 = i2 + 7;
                        if ((bArr[i41] & 255) != 255) {
                            qt.y0(99, bArr[i41] & 255);
                        }
                        int i42 = i2 + 8;
                        if ((bArr[i42] & 255) != 255) {
                            qt.y0(100, bArr[i42] & 255);
                        }
                        int i43 = i2 + 9;
                        if ((bArr[i43] & 255) != 255) {
                            qt.y0(101, bArr[i43] & 255);
                        }
                        break;
                    case 57:
                        int i44 = nt.f8633a;
                        if (i44 != 6029765 && i44 != 6095301 && i44 != 8454599) {
                            qt.y0(106, bArr[i2 + 2] & 255);
                            qt.y0(107, bArr[i2 + 3] & 255);
                            qt.y0(108, bArr[i2 + 4] & 255);
                            qt.y0(109, bArr[i2 + 5] & 255);
                        } else if (bArr[i2 + 1] >= 8) {
                            qt.y0(106, bArr[i2 + 6] & 255);
                            qt.y0(107, bArr[i2 + 7] & 255);
                            qt.y0(108, bArr[i2 + 8] & 255);
                            qt.y0(109, bArr[i2 + 9] & 255);
                        }
                        break;
                    case 58:
                        int i45 = bArr[i2 + 2] & 255;
                        int i46 = bArr[i2 + 3] & 255;
                        switch (i45) {
                            case 1:
                                qt.y0(110, i46);
                                break;
                            case 2:
                                qt.y0(111, i46);
                                break;
                            case 3:
                                qt.y0(136, i46);
                                break;
                            case 4:
                                qt.y0(137, i46);
                                break;
                            case 5:
                                qt.y0(138, i46);
                                break;
                            case 6:
                                qt.y0(139, i46);
                                break;
                            case 7:
                                qt.y0(140, i46);
                                break;
                            case 8:
                                qt.y0(141, i46);
                                break;
                            case 9:
                                qt.y0(142, i46);
                                break;
                            case 10:
                                qt.y0(143, i46);
                                break;
                            case 11:
                                qt.y0(148, i46);
                                break;
                            case 12:
                                qt.y0(149, i46);
                                break;
                            case 13:
                                qt.y0(150, i46);
                                break;
                            case 14:
                                qt.y0(151, i46);
                                break;
                            case 15:
                                qt.y0(152, i46);
                                break;
                            case 16:
                                qt.y0(153, i46);
                                break;
                            case 17:
                                qt.y0(154, i46);
                                break;
                            case 18:
                                qt.y0(155, i46);
                                break;
                        }
                        break;
                    case 59:
                        int i47 = i2 + 2;
                        qt.y0(164, (bArr[i47] >> 4) & 3);
                        qt.y0(165, (bArr[i47] >> 0) & 15);
                        int i48 = (bArr[i47] >> 4) & 3;
                        if (i48 == 1) {
                            qt.y0(Process.MEDIA_UID, 1);
                        } else if (i48 != 2) {
                            qt.y0(Process.MEDIA_UID, 2);
                        } else {
                            qt.y0(Process.MEDIA_UID, 0);
                        }
                        int i49 = ((bArr[i47] & 255) >> 6) & 1;
                        if (i49 == 1) {
                            qt.a(1);
                        } else if (i49 == 0) {
                            qt.a(0);
                        }
                        break;
                    case 60:
                        qt.y0(112, bArr[i2 + 2] & 255);
                        qt.y0(113, bArr[i2 + 3] & 255);
                        break;
                    case 61:
                        qt.y0(114, bArr[i2 + 2] & 255);
                        qt.y0(115, ((bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280)) & 65535);
                        break;
                    case 62:
                        qt.y0(116, (((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 16777215);
                        qt.y0(117, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                        qt.y0(118, bArr[i2 + 7] & 255);
                        qt.y0(119, bArr[i2 + 8] & 255);
                        qt.y0(120, bArr[i2 + 9] & 255);
                        qt.y0(121, bArr[i2 + 10] & 255);
                        qt.y0(122, bArr[i2 + 11] & 255);
                        qt.y0(123, bArr[i2 + 12] & 255);
                        qt.y0(124, bArr[i2 + 13] & 255);
                        break;
                    default:
                        switch (b2) {
                            case 125:
                                int i50 = bArr[i2 + 2] & 255;
                                if (i50 == 1) {
                                    if (nt.f8633a != 2163143) {
                                        if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                                            int i51 = i2 + 3;
                                            l0.c0.b((bArr[i51] >> 3) & 1, (bArr[i51] >> 4) & 1, 0);
                                        } else {
                                            int i52 = i2 + 3;
                                            l0.c0.a((bArr[i52] >> 3) & 1, (bArr[i52] >> 4) & 1, 0);
                                        }
                                    }
                                    break;
                                } else if (i50 == 3) {
                                    int i53 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                                    qt.y0(1031, i53);
                                    o1.x.C(nt.f8643f, 1049, new int[]{1, i53}, null, null);
                                    break;
                                } else if (i50 == 6) {
                                    if (nt.f8633a == 2163143) {
                                        if (qt.k0()) {
                                            if ((bArr[i2 + 3] >> 1) == 1) {
                                                u0.i.l3().g4(131072, true);
                                            } else {
                                                u0.i.l3().g4(131072, false);
                                            }
                                        } else if ((bArr[i2 + 3] >> 1) == 1) {
                                            qt.a(1);
                                        } else {
                                            qt.a(0);
                                        }
                                    }
                                    break;
                                } else if (i50 == 8) {
                                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                                    this.f6450t = true;
                                    break;
                                } else if (i50 == 10) {
                                    qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                    break;
                                }
                                break;
                            case 126:
                                if (nt.f8633a == 2163143) {
                                    int i54 = i2 + 2;
                                    l0.c0.N1((bArr[i54] >> 3) & 1, (bArr[i54] >> 4) & 1, 0);
                                }
                                break;
                            case 127:
                                qt.L(new String(bArr, i2 + 2, i3 - 2));
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
        qt.q0(this.E);
        l0.b0.p0(this.D);
        l0.b0.p0(l0.c0.f13021o);
        u0.c.f17388o.d(this.C);
        o1.h.f16865a.d(this.B);
        h0.d.f2466e.d(this.f6454x);
        h0.d.f2462a.d(this.f6453w);
        h0.d.f2465d.d(this.f6452v);
        u0.c.f17379f.d(this.f6451u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 181) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 99) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            qt.y0(167, iArr[0]);
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, -124, 1, 0);
                return;
            } else {
                z.k.s(227, -124, 1, 10);
                return;
            }
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    int i3 = nt.f8633a;
                    if (i3 == 10879428 || i3 == 10944964) {
                        z.k.s(227, 133, 1, iArr[0]);
                    } else {
                        m3(iArr[0]);
                    }
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 1) {
                        l3(iArr[0]);
                        k3(iArr[1], iArr[2], iArr[3], iArr[4]);
                    } else if (iArr[0] == 2) {
                        l3(iArr[0]);
                        j3(iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                    }
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 162, 11, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 132, 1, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 138, 3, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 135, 8, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 238, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
                    break;
                }
                break;
        }
    }

    public final void h3(byte b2, String str) {
        int i2 = 0;
        if (b2 != 3) {
            if (str == null) {
                str = "Unkown";
            }
            byte[] bytes = str.getBytes();
            int length = bytes.length <= 63 ? bytes.length : 63;
            int i3 = length + 4;
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = 0;
            }
            iArr[0] = 227;
            iArr[1] = 118;
            iArr[2] = length + 1;
            while (i2 < length) {
                iArr[i2 + 3] = bytes[i2];
                i2++;
            }
            z.k.s(iArr);
            return;
        }
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes2 = str.getBytes();
        int length2 = bytes2.length <= 62 ? bytes2.length : 62;
        int i5 = length2 + 5;
        int[] iArr2 = new int[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            iArr2[i6] = 0;
        }
        iArr2[0] = 227;
        iArr2[1] = 120;
        iArr2[2] = length2 + 1;
        iArr2[3] = 3;
        while (i2 < length2) {
            iArr2[i2 + 4] = bytes2[i2];
            i2++;
        }
        z.k.s(iArr2);
    }

    public final void i3() {
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, -122, 4, 3, (byte) time.weekDay, (byte) time.hour, (byte) time.minute);
    }

    public final void j3(int i2, int i3, int i4, int i5, int i6) {
        qt.y0(127, i2);
        qt.y0(129, i3);
        qt.y0(131, i4);
        qt.y0(133, i5);
        qt.y0(134, i6);
        if (P == 1) {
            return;
        }
        z.k.s(227, 134, 6, 2, i2, i3, i4, i5, i6);
        i3();
        H = i2;
        int iB = this.f6443m.b(3, 1);
        int i7 = H;
        if (iB != i7) {
            this.f6443m.g(3, i7);
        }
        J = i3;
        int iB2 = this.f6443m.b(5, 0);
        int i8 = J;
        if (iB2 != i8) {
            this.f6443m.g(5, i8);
        }
        L = i4;
        int iB3 = this.f6443m.b(7, 0);
        int i9 = L;
        if (iB3 != i9) {
            this.f6443m.g(7, i9);
        }
        N = i5;
        int iB4 = this.f6443m.b(9, 0);
        int i10 = N;
        if (iB4 != i10) {
            this.f6443m.g(9, i10);
        }
        O = i6;
        int iB5 = this.f6443m.b(10, 0);
        int i11 = O;
        if (iB5 != i11) {
            this.f6443m.g(10, i11);
        }
        P = 2;
        int iB6 = this.f6443m.b(11, 0);
        int i12 = P;
        if (iB6 != i12) {
            this.f6443m.g(11, i12);
        }
    }

    public final void k3(int i2, int i3, int i4, int i5) {
        qt.y0(126, i2);
        qt.y0(128, i3);
        qt.y0(130, i4);
        qt.y0(132, i5);
        if (P == 2) {
            return;
        }
        z.k.s(227, 134, 5, 1, i2, i3, i4, i5);
        i3();
        G = i2;
        int iB = this.f6443m.b(2, 1);
        int i6 = G;
        if (iB != i6) {
            this.f6443m.g(2, i6);
        }
        I = i3;
        int iB2 = this.f6443m.b(4, 0);
        int i7 = I;
        if (iB2 != i7) {
            this.f6443m.g(4, i7);
        }
        K = i4;
        int iB3 = this.f6443m.b(6, 0);
        int i8 = K;
        if (iB3 != i8) {
            this.f6443m.g(6, i8);
        }
        M = i5;
        int iB4 = this.f6443m.b(8, 0);
        int i9 = M;
        if (iB4 != i9) {
            this.f6443m.g(8, i9);
        }
        P = 1;
        int iB5 = this.f6443m.b(11, 1);
        int i10 = P;
        if (iB5 != i10) {
            this.f6443m.g(11, i10);
        }
    }

    public final void l3(int i2) {
        if (i2 < 1) {
            i2 = 1;
        } else if (i2 > 2) {
            i2 = 2;
        }
        P = i2;
        qt.y0(135, i2);
        int iB = this.f6443m.b(11, 1);
        int i3 = P;
        if (iB != i3) {
            this.f6443m.g(11, i3);
        }
    }

    public final void m3(int i2) {
        if (i2 < 1) {
            i2 = 1;
        } else if (i2 > 2) {
            i2 = 2;
        }
        F = i2;
        qt.y0(125, i2);
        z.k.s(227, 133, 1, i2);
        int iB = this.f6443m.b(1, 0);
        int i3 = F;
        if (iB != i3) {
            this.f6443m.g(1, i3);
        }
    }
}
