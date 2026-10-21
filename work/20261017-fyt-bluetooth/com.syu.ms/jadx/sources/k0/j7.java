package k0;

import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class j7 extends lt {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f6691x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6693c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6694d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{15, -1}, new int[]{129, 25}, new int[]{133, 38}, new int[]{161, 7}, new int[]{162, 8}, new int[]{169, 32}, new int[]{176, 33}, new int[]{181, 5}, new int[]{182, 1}, new int[]{183, 54}, new int[]{184, 75}, new int[]{185, 74}, new int[]{192, 55}, new int[]{193, 64}, new int[]{194, 14}, new int[]{195, 19}, new int[]{196, 20}, new int[]{130, 38}, new int[]{197, 18}, new int[]{198, 5}, new int[]{199, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6695e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 62}, new int[]{11, 3}, new int[]{12, 4}, new int[]{15, -1}, new int[]{129, 25}, new int[]{130, 1}, new int[]{131, 12}, new int[]{132, 18}, new int[]{133, 2}, new int[]{134, 5}, new int[]{135, 6}, new int[]{136, 21}, new int[]{137, 54}, new int[]{138, 29}, new int[]{139, 3}, new int[]{140, 4}, new int[]{141, 38}, new int[]{142, 8}, new int[]{143, 7}, new int[]{144, 55}, new int[]{145, 3}, new int[]{146, 4}, new int[]{147, 1}, new int[]{148, 18}, new int[]{149, 18}, new int[]{150, 54}, new int[]{151, 64}, new int[]{152, 56}, new int[]{153, 38}, new int[]{154, 16}, new int[]{155, 64}, new int[]{156, 65}, new int[]{157, 66}, new int[]{158, 28}, new int[]{159, 27}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6696f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{11, 3}, new int[]{12, 4}, new int[]{15, -1}, new int[]{129, 25}, new int[]{130, 1}, new int[]{131, 12}, new int[]{132, 18}, new int[]{133, 18}, new int[]{134, 5}, new int[]{135, 6}, new int[]{136, 21}, new int[]{137, 54}, new int[]{138, 29}, new int[]{139, 3}, new int[]{140, 4}, new int[]{141, 38}, new int[]{142, 8}, new int[]{143, 7}, new int[]{144, 55}, new int[]{145, 3}, new int[]{146, 4}, new int[]{147, 1}, new int[]{148, 2}, new int[]{149, 18}, new int[]{150, 54}, new int[]{151, 64}, new int[]{152, 56}, new int[]{153, 38}, new int[]{154, 16}, new int[]{155, 64}, new int[]{156, 65}, new int[]{157, 66}, new int[]{158, 28}, new int[]{159, 27}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6697g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 25}, new int[]{9, 12}, new int[]{10, 5}, new int[]{11, 1}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, 6}, new int[]{20, 18}, new int[]{21, 2}, new int[]{22, 13}, new int[]{23, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6698h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6699i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6700j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6701k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6702l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6703m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6704n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f6705o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6706p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6707q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6708r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.g0 f6709s = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f6710t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6711u = new f();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f6712v = new g();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6713w = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j7 j7Var = j7.this;
            int i2 = j7Var.f6700j;
            if (i2 > 0) {
                j7Var.f6700j = i2 - 1;
            }
            if (j7Var.f6700j <= 0) {
                l0.b0.p0(j7Var.f6701k);
                qt.a(0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                int i2 = nt.f8633a;
                if (i2 == 131299 || i2 == 393443 || i2 == 524515 || i2 == 590051 || i2 == 327907 || i2 == 655587 || i2 == 721123 || i2 == 917731 || i2 == 983267 || i2 == 1048803 || i2 == 1114339 || i2 == 1179875 || i2 == 1310947 || i2 == 1442019 || i2 == 1769699 || i2 == 1507555 || i2 == 1573091 || i2 == 1638627 || i2 == 1704163) {
                    z.k.s(227, 144, 1, 48);
                } else {
                    z.k.s(227, 144, 1, 41);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (j7.this.f6703m != i2) {
                j7.this.f6703m = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (j7.this.f6705o.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                j7.this.f6705o = h0.c.f2437h;
                if (j7.this.f6705o == null) {
                    j7.this.f6705o = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                j7 j7Var = j7.this;
                j7Var.p3(j7Var.f6703m, j7.this.f6705o);
                if (j7.this.f6704n != z4) {
                    j7.this.f6704n = z4;
                    j7.this.f6703m = 0;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j7.this.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                j7.this.n3((byte) 112, u0.b.i3);
            } else {
                j7.this.n3((byte) 112, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
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

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            int i2 = nt.f8637c;
            if (i2 == 12 || i2 == 13 || i2 == 19 || i2 == 21) {
                z.k.s(227, 132, 6, time.year - 2020, time.month + 1, time.monthDay, b2, b3, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
            } else {
                z.k.s(227, 118, 3, b2, b3, b4);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 13:
                    z.k.s(227, 238, 2, 1, 1);
                    break;
                case 14:
                    z.k.s(227, 238, 1, 1);
                    break;
                case 15:
                    z.k.s(227, 238, 1, 2);
                    break;
                case 16:
                    z.k.s(227, 238, 1, 3);
                    break;
                case 17:
                    z.k.s(227, 238, 1, 4);
                    break;
                case 19:
                    z.k.s(227, 238, 2, 1, 2);
                    break;
                case 20:
                    z.k.s(227, 238, 1, 5);
                    break;
                case 21:
                    z.k.s(227, 238, 2, 1, 3);
                    break;
                case 22:
                    z.k.s(227, 238, 1, 6);
                    break;
                case 23:
                    z.k.s(227, 238, 1, 7);
                    break;
                case 24:
                    z.k.s(227, 238, 1, 8);
                    break;
                case 25:
                    z.k.s(227, 238, 1, 9);
                    break;
                case 26:
                    z.k.s(227, 238, 1, 10);
                    break;
                case 27:
                    z.k.s(227, 238, 1, 11);
                    break;
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
        int i3 = nt.f8637c;
        if (i3 == 12 || i3 == 21) {
            if (i2 == 38) {
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        z.k.s(227, 143, 2, 7, 0);
                    }
                    return;
                } else {
                    if (nt.f8645g[12] == 0) {
                        z.k.s(227, 143, 2, 7, 1);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 39) {
                int i4 = iArr[1];
                if (i4 == -2) {
                    z.k.s(227, 143, 2, 2, 187);
                    return;
                } else {
                    if (i4 != -1) {
                        return;
                    }
                    z.k.s(227, 143, 2, 2, 170);
                    return;
                }
            }
            if (i2 == 41) {
                if (iArr[1] != 0) {
                    z.k.s(227, 143, 2, 3, 170);
                    return;
                } else {
                    z.k.s(227, 143, 2, 3, 187);
                    return;
                }
            }
            if (i2 == 67) {
                int i5 = iArr[1];
                if (i5 == 2) {
                    z.k.s(227, 138, 2, 2, 1);
                    return;
                }
                if (i5 == 3) {
                    z.k.s(227, 138, 2, 2, 2);
                    return;
                } else if (i5 == 4) {
                    z.k.s(227, 138, 2, 2, 3);
                    return;
                } else {
                    if (i5 != 5) {
                        return;
                    }
                    z.k.s(227, 138, 2, 2, 4);
                    return;
                }
            }
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            z.k.s(227, 143, 2, 1, 0);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        z.k.s(227, 143, 2, 1, 1);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            z.k.s(227, 143, 2, 5, 0);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        z.k.s(227, 143, 2, 5, 1);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            z.k.s(227, 143, 2, 8, 0);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        z.k.s(227, 143, 2, 8, 1);
                    }
                    break;
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[15] == 1) {
                            z.k.s(227, 143, 2, 9, 0);
                        }
                    } else if (nt.f8645g[15] == 0) {
                        z.k.s(227, 143, 2, 9, 1);
                    }
                    break;
            }
        }
        if (i3 != 17 && i3 != 18) {
            if (i2 == 33) {
                if (iArr[1] != 0) {
                    if (nt.f8645g[10] == 0) {
                        z.k.s(227, 199, 5, 128, 0, 0, 0, 0);
                        z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                        return;
                    }
                    return;
                }
                if (nt.f8645g[10] == 1) {
                    z.k.s(227, 199, 5, 128, 0, 0, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (i2 == 34) {
                if (iArr[1] != 0) {
                    if (nt.f8645g[11] == 0) {
                        z.k.s(227, 199, 5, 2, 0, 0, 0, 0);
                        z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                        return;
                    }
                    return;
                }
                if (nt.f8645g[11] == 1) {
                    z.k.s(227, 199, 5, 2, 0, 0, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (i2 == 38) {
                if (iArr[1] != 0) {
                    if (nt.f8645g[12] == 0) {
                        z.k.s(227, 199, 5, 0, 0, 1, 0, 0);
                        z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                        return;
                    }
                    return;
                }
                if (nt.f8645g[12] == 1) {
                    z.k.s(227, 199, 5, 0, 0, 1, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (i2 != 39) {
                if (i2 != 41) {
                    return;
                }
                if (iArr[1] != 0) {
                    int i6 = nt.f8645g[27];
                    if (i6 < 9) {
                        i6++;
                    }
                    z.k.s(227, 199, 5, 0, 0, 0, 0, i6);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                int i7 = nt.f8645g[27];
                if (i7 > 1) {
                    i7--;
                }
                z.k.s(227, 199, 5, 0, 0, 0, 0, i7);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            int i8 = iArr[1];
            if (i8 == -2) {
                int i9 = nt.f8645g[21];
                if (i9 > 0) {
                    i9--;
                }
                z.k.s(227, 199, 5, 0, i9, 0, 0, 0);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            if (i8 != -1) {
                return;
            }
            int i10 = nt.f8645g[21];
            if (i10 < 15) {
                i10++;
            }
            z.k.s(227, 199, 5, 0, i10, 0, 0, 0);
            z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                c3(13);
                return;
            } else {
                c3(14);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                c3(15);
                return;
            } else {
                c3(16);
                return;
            }
        }
        int i11 = 255;
        if (i2 == 55) {
            int i12 = iArr[1] & 255;
            if (i12 < 18) {
                i11 = 0;
            } else if ((iArr[1] & 255) < 32) {
                i11 = i12;
            }
            z.k.s(227, 168, 2, 19, i11);
            return;
        }
        if (i2 == 56) {
            int i13 = iArr[1] & 255;
            if (i13 < 18) {
                i11 = 0;
            } else if ((iArr[1] & 255) < 32) {
                i11 = i13;
            }
            z.k.s(227, 168, 2, 20, i11);
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        c3(0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    c3(0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        c3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    c3(1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        c3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    c3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        c3(6);
                    }
                } else if (nt.f8645g[15] == 0) {
                    c3(6);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        c3(23);
                    }
                } else if (nt.f8645g[16] == 0) {
                    c3(23);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        c3(5);
                    }
                } else if (nt.f8645g[12] == 0) {
                    c3(4);
                }
                break;
            case 39:
                int i14 = iArr[1];
                if (i14 == -2) {
                    c3(12);
                } else if (i14 == -1) {
                    c3(11);
                } else {
                    z.k.s(227, 168, 2, 18, iArr[1]);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00a2  */
    @Override // k0.lt
    public void S2() {
        this.f6709s.a();
        o3(this.f6709s.b(0, 0));
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8319n = 0;
        mtVar.f8323r = 0;
        mtVar.f8322q = 0;
        int i2 = nt.f8637c;
        if (i2 != 0 && i2 != 1) {
            if (i2 != 2) {
                switch (i2) {
                    case 5:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                        break;
                    case 6:
                    case 11:
                    case 16:
                        qt.z(this.f6712v);
                        qt.z(this.f6711u);
                        break;
                    case 7:
                    case 20:
                        mtVar.f8314i = 1;
                        break;
                    case 8:
                        mtVar.f8306a = null;
                        qt.z(this.f6712v);
                        qt.z(this.f6711u);
                        break;
                    case 9:
                        mtVar.f8306a = null;
                        mtVar.f8312g = 0;
                        break;
                    case 10:
                        mtVar.f8319n = 1;
                        break;
                    case 12:
                    case 19:
                    case 21:
                        qt.z(this.f6712v);
                        this.f7886a.f8314i = 1;
                        break;
                    case 13:
                        qt.z(this.f6712v);
                        mt mtVar2 = this.f7886a;
                        mtVar2.f8312g = 0;
                        mtVar2.f8314i = 1;
                        w0.e.f17815a.a(this.f6707q, 1);
                        l0.b0.b(this.f6707q);
                        u0.c.f17388o.a(this.f6708r, 1);
                        h0.d.f2464c.a(this.f6706p, 1);
                        h0.d.f2462a.a(this.f6706p, 1);
                        break;
                    case 14:
                    case 15:
                        mtVar.f8306a = null;
                        mtVar.f8312g = 1;
                        break;
                    case 17:
                        mtVar.f8323r = 1;
                        mtVar.f8322q = 1;
                        break;
                    case 18:
                        mtVar.f8323r = 1;
                        break;
                    default:
                        mtVar.f8306a = null;
                        mtVar.f8310e = 1;
                        mtVar.f8311f = 1;
                        mtVar.f8312g = 0;
                        mtVar.f8320o = 0;
                        break;
                }
            }
        } else {
            mtVar.f8306a = null;
            mtVar.f8312g = 0;
        }
        qt.z(this.f6713w);
        qt.x(this.f6702l);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 39, 41, 42, 55, 56, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int[][] iArr3;
        int i6;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int i7;
        int i8;
        int i9;
        int i10 = bArr[i2] & 255;
        if (i10 == 48) {
            if (this.f6699i) {
                return;
            }
            int i11 = nt.f8633a;
            if (i11 != 131299 && i11 != 393443 && i11 != 524515 && i11 != 590051 && i11 != 327907 && i11 != 655587 && i11 != 721123 && i11 != 917731 && i11 != 983267 && i11 != 1048803 && i11 != 1114339 && i11 != 1179875 && i11 != 1310947 && i11 != 1442019 && i11 != 1769699 && i11 != 1507555 && i11 != 1573091 && i11 != 1638627 && i11 != 1704163) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 5400);
                return;
            }
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7866, false, 5400);
        }
        if (i10 == 80) {
            int i12 = nt.f8637c;
            if (i12 != 17 && i12 != 18) {
                if (bArr[i2 + 2] == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            int i13 = i2 + 2;
            qt.y0(139, (bArr[i13] >> 3) & 1);
            qt.y0(140, (bArr[i13] >> 2) & 1);
            qt.y0(141, (bArr[i13] >> 0) & 3);
            int i14 = i2 + 3;
            qt.y0(142, (bArr[i14] >> 4) & 1);
            qt.y0(143, (bArr[i14] >> 3) & 1);
            qt.y0(144, (bArr[i14] >> 0) & 7);
            return;
        }
        if (i10 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (nt.f8637c == 5 && f6691x == 1) {
                    int i16 = i2 + 3;
                    int i17 = (bArr[i16] >> 3) & 1;
                    int i18 = (bArr[i16] >> 4) & 1;
                    if (i17 == 1 || i18 == 1) {
                        qt.a(1);
                        this.f6700j = 5;
                        l0.b0.p0(this.f6701k);
                    } else {
                        l0.b0.b(this.f6701k);
                    }
                }
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i19 = i2 + 3;
                    l0.c0.b((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                } else {
                    int i20 = i2 + 3;
                    l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6699i = true;
                return;
            }
            if (i15 == 10) {
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i15 == 3) {
                int i21 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i21);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i21}, null, null);
                return;
            }
            if (i15 == 4) {
                int i22 = (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280);
                qt.y0(145, i22);
                o1.x.C(nt.f8643f, 1049, new int[]{5, i22 / 10}, null, null);
                return;
            } else {
                if (i15 != 5) {
                    return;
                }
                int i23 = bArr[i2 + 3] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i23 >> 6) & 1);
                    qt.y0(1, (i23 >> 7) & 1);
                } else {
                    qt.y0(2, (i23 >> 7) & 1);
                    qt.y0(1, (i23 >> 6) & 1);
                }
                qt.y0(4, (i23 >> 5) & 1);
                qt.y0(3, (i23 >> 4) & 1);
                qt.y0(5, (i23 >> 3) & 1);
                qt.y0(0, (i23 >> 2) & 1);
                return;
            }
        }
        if (i10 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i10 == 64) {
            int i24 = bArr[i2 + 2] & 255;
            int i25 = bArr[i2 + 3] & 255;
            int i26 = bArr[i2 + 4] & 255;
            int i27 = bArr[i2 + 5] & 255;
            int i28 = bArr[i2 + 6] & 255;
            int i29 = nt.f8637c;
            if (i29 == 3) {
                qt.y0(103, ((i24 & 255) << 16) | ((i25 & 255) << 8) | (i26 & 255));
                qt.y0(104, (i27 >> 4) & 15);
                qt.y0(105, i27 & 15);
                qt.y0(106, i28 & 255);
                return;
            }
            if (i29 != 7) {
                qt.y0(98, (i24 >> 6) & 3);
                qt.y0(99, (i24 >> 4) & 3);
                qt.y0(100, (i25 >> 7) & 1);
                qt.y0(101, (i25 >> 6) & 1);
                qt.y0(108, (i25 >> 5) & 1);
                qt.y0(109, (i25 >> 4) & 1);
                qt.y0(110, (i25 >> 3) & 1);
                return;
            }
            return;
        }
        if (i10 == 65) {
            if (nt.f8637c == 26) {
                qt.y0(146, (bArr[i2 + 3] >> 0) & 7);
                return;
            }
            for (int i30 = 0; i30 < 50; i30++) {
                int i31 = i2 + (i30 * 2);
                o1.x.C(nt.f8643f, 102, new int[]{i30, (bArr[i31 + 3] & 255) | ((bArr[i31 + 2] << 8) & 65280)}, null, null);
            }
            return;
        }
        switch (i10) {
            case 33:
                if (nt.a()) {
                    byte b2 = bArr[i2 + 2];
                    byte b3 = bArr[i2 + 3];
                    this.f6693c = b2 & 255;
                    int i32 = nt.f8633a;
                    if (i32 == 131299 || i32 == 327907 || i32 == 524515 || i32 == 590051 || i32 == 393443 || i32 == 655587 || i32 == 721123 || i32 == 917731 || i32 == 983267 || i32 == 1048803 || i32 == 1114339 || i32 == 1179875 || i32 == 1310947 || i32 == 1442019 || i32 == 1769699 || i32 == 1507555 || i32 == 1573091 || i32 == 1638627 || i32 == 1704163) {
                        int i33 = 0;
                        while (true) {
                            iArr = this.f6695e;
                            if (i33 < iArr.length) {
                                int i34 = this.f6693c;
                                if (i34 != iArr[i33][0]) {
                                    i33++;
                                } else if (i34 != 0) {
                                    this.f6692b = i33;
                                }
                            }
                        }
                        int i35 = this.f6693c;
                        if (i35 != 11) {
                            if (i35 != 12) {
                                if (i35 == 15) {
                                    if ((b3 & 255) == 1) {
                                        int i36 = h0.c.E;
                                        if (i36 != 3) {
                                            if (i36 == 4) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            } else if (i36 != 5) {
                                                l0.b0.l0(13, 0);
                                                l0.b0.l0(13, 1);
                                            }
                                        }
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    }
                                    break;
                                } else {
                                    int i37 = b3 & 255;
                                    if (i37 == 1) {
                                        if (i33 < iArr.length) {
                                            l0.b0.l0(iArr[i33][1], 0);
                                        }
                                    } else if (i37 == 0) {
                                        int i38 = this.f6692b;
                                        if (i38 < iArr.length) {
                                            i4 = 255;
                                            if (i38 != 255) {
                                                l0.b0.l0(iArr[i38][1], 1);
                                            }
                                        } else {
                                            i4 = 255;
                                        }
                                        this.f6692b = i4;
                                    }
                                }
                            } else if ((b3 & 255) == 1) {
                                int i39 = h0.c.E;
                                if (i39 == 3 || i39 == 4 || i39 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                        } else if ((b3 & 255) == 1) {
                            int i40 = h0.c.E;
                            if (i40 == 3 || i40 == 4 || i40 == 5) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else {
                                l0.b0.l0(3, 0);
                                l0.b0.l0(3, 1);
                            }
                        }
                    } else if (i32 == 196835 || i32 == 458979 || i32 == 786659 || i32 == 852195 || i32 == 1245411) {
                        int i41 = 0;
                        while (true) {
                            iArr2 = this.f6697g;
                            if (i41 < iArr2.length) {
                                int i42 = this.f6693c;
                                if (i42 != iArr2[i41][0]) {
                                    i41++;
                                } else if (i42 != 0) {
                                    this.f6692b = i41;
                                }
                            }
                        }
                        if (this.f6693c != 6) {
                            int i43 = b3 & 255;
                            if (i43 == 1) {
                                if (i41 < iArr2.length) {
                                    l0.b0.l0(iArr2[i41][1], 0);
                                }
                            } else if (i43 == 0) {
                                int i44 = this.f6692b;
                                if (i44 < iArr2.length) {
                                    i5 = 255;
                                    if (i44 != 255) {
                                        l0.b0.l0(iArr2[i44][1], 1);
                                    }
                                } else {
                                    i5 = 255;
                                }
                                this.f6692b = i5;
                            }
                        } else if ((b3 & 255) == 1) {
                            int i45 = h0.c.E;
                            if (i45 == 3 || i45 == 4 || i45 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                    } else {
                        int i46 = 0;
                        while (true) {
                            iArr3 = this.f6694d;
                            if (i46 < iArr3.length) {
                                int i47 = this.f6693c;
                                if (i47 != iArr3[i46][0]) {
                                    i46++;
                                } else if (i47 != 0) {
                                    this.f6692b = i46;
                                }
                            }
                        }
                        int i48 = b3 & 255;
                        if (i48 == 1) {
                            if (i46 < iArr3.length) {
                                l0.b0.l0(iArr3[i46][1], 0);
                            }
                        } else if (i48 == 0) {
                            int i49 = this.f6692b;
                            if (i49 < iArr3.length) {
                                i6 = 255;
                                if (i49 != 255) {
                                    l0.b0.l0(iArr3[i49][1], 1);
                                }
                            } else {
                                i6 = 255;
                            }
                            this.f6692b = i6;
                        }
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f6693c = (b4 | 128) & 255;
                    int i50 = nt.f8633a;
                    if (i50 != 131299 && i50 != 393443 && i50 != 524515 && i50 != 721123 && i50 != 917731 && i50 != 983267 && i50 != 1048803 && i50 != 1114339 && i50 != 1179875 && i50 != 1310947 && i50 != 1442019 && i50 != 1769699 && i50 != 1507555 && i50 != 1573091 && i50 != 1638627 && i50 != 1704163) {
                        if (i50 != 327907 && i50 != 590051 && i50 != 655587) {
                            int i51 = 0;
                            while (true) {
                                iArr6 = this.f6694d;
                                if (i51 < iArr6.length) {
                                    int i52 = this.f6693c;
                                    if (i52 != iArr6[i51][0]) {
                                        i51++;
                                    } else if (i52 != 0) {
                                        this.f6692b = i51;
                                    }
                                }
                            }
                            int i53 = this.f6693c;
                            if (i53 == 161) {
                                for (int i54 = 0; i54 < (b5 & 255); i54++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                            } else if (i53 == 162) {
                                for (int i55 = 0; i55 < (b5 & 255); i55++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            } else if (i53 == 195) {
                                for (int i56 = 0; i56 < (b5 & 255); i56++) {
                                    l0.b0.l0(67, 0);
                                }
                                l0.b0.l0(67, 1);
                            } else if (i53 == 196) {
                                for (int i57 = 0; i57 < (b5 & 255); i57++) {
                                    l0.b0.l0(68, 0);
                                }
                                l0.b0.l0(68, 1);
                            } else if ((b5 & 255) != 0) {
                                if (i51 < iArr6.length) {
                                    l0.b0.l0(iArr6[i51][1], 0);
                                }
                            } else if (i51 <= iArr6.length) {
                                l0.b0.l0(iArr6[this.f6692b][1], 1);
                            }
                            break;
                        } else {
                            int i58 = 0;
                            while (true) {
                                iArr5 = this.f6696f;
                                if (i58 < iArr5.length) {
                                    int i59 = this.f6693c;
                                    if (i59 != iArr5[i58][0]) {
                                        i58++;
                                    } else if (i59 != 0) {
                                        this.f6692b = i58;
                                    }
                                }
                            }
                            int i60 = this.f6693c;
                            if (i60 == 133) {
                                if ((b5 & 255) == 1) {
                                    if (u0.b.f17347o == 0) {
                                        qt.a(1);
                                    } else {
                                        qt.a(0);
                                    }
                                }
                                break;
                            } else if (i60 == 139) {
                                for (int i61 = 0; i61 < (b5 & 255); i61++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            } else if (i60 == 140) {
                                for (int i62 = 0; i62 < (b5 & 255); i62++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            } else if (i60 == 142) {
                                for (int i63 = 0; i63 < (b5 & 255); i63++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            } else if (i60 == 143) {
                                for (int i64 = 0; i64 < (b5 & 255); i64++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            } else {
                                switch (i60) {
                                    case 154:
                                        if ((b5 & 255) == 1) {
                                            int i65 = u0.b.D;
                                            if (i65 == 1 || i65 == 2) {
                                                l0.b0.l0(40, 0);
                                                l0.b0.l0(40, 1);
                                            } else {
                                                l0.b0.l0(16, 0);
                                                l0.b0.l0(16, 1);
                                            }
                                        }
                                        break;
                                    case 155:
                                        if ((b5 & 255) == 1) {
                                            int i66 = u0.b.D;
                                            if (i66 == 1 || i66 == 2) {
                                                l0.b0.l0(41, 0);
                                                l0.b0.l0(41, 1);
                                            } else {
                                                l0.b0.l0(64, 0);
                                                l0.b0.l0(64, 1);
                                            }
                                        }
                                        break;
                                    case 156:
                                        if ((b5 & 255) == 1) {
                                            int i67 = u0.b.D;
                                            if (i67 == 1 || i67 == 2) {
                                                l0.b0.l0(42, 0);
                                                l0.b0.l0(42, 1);
                                            } else {
                                                l0.b0.l0(65, 0);
                                                l0.b0.l0(65, 1);
                                            }
                                        }
                                        break;
                                    case 157:
                                        if ((b5 & 255) == 1) {
                                            int i68 = u0.b.D;
                                            if (i68 == 1 || i68 == 2) {
                                                l0.b0.l0(43, 0);
                                                l0.b0.l0(43, 1);
                                            } else {
                                                l0.b0.l0(66, 0);
                                                l0.b0.l0(66, 1);
                                            }
                                        }
                                        break;
                                    case 158:
                                        if ((b5 & 255) == 1) {
                                            int i69 = u0.b.D;
                                            if (i69 == 1 || i69 == 2) {
                                                l0.b0.l0(44, 0);
                                                l0.b0.l0(44, 1);
                                            } else {
                                                l0.b0.l0(28, 0);
                                                l0.b0.l0(28, 1);
                                            }
                                        }
                                        break;
                                    case 159:
                                        if ((b5 & 255) == 1) {
                                            int i70 = u0.b.D;
                                            if (i70 == 1 || i70 == 2) {
                                                l0.b0.l0(45, 0);
                                                l0.b0.l0(45, 1);
                                            } else {
                                                l0.b0.l0(27, 0);
                                                l0.b0.l0(27, 1);
                                            }
                                        }
                                        break;
                                    default:
                                        if ((b5 & 255) != 0) {
                                            if (i58 < iArr5.length) {
                                                l0.b0.l0(iArr5[i58][1], 0);
                                            }
                                        } else if (i58 <= iArr5.length) {
                                            l0.b0.l0(iArr5[this.f6692b][1], 1);
                                        }
                                        break;
                                }
                            }
                        }
                    } else {
                        int i71 = 0;
                        while (true) {
                            iArr4 = this.f6695e;
                            if (i71 < iArr4.length) {
                                int i72 = this.f6693c;
                                if (i72 != iArr4[i71][0]) {
                                    i71++;
                                } else if (i72 != 0) {
                                    this.f6692b = i71;
                                }
                            }
                        }
                        int i73 = this.f6693c;
                        if (i73 == 139) {
                            for (int i74 = 0; i74 < (b5 & 255); i74++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        } else if (i73 == 140) {
                            for (int i75 = 0; i75 < (b5 & 255); i75++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        } else if (i73 == 142) {
                            for (int i76 = 0; i76 < (b5 & 255); i76++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        } else if (i73 == 143) {
                            for (int i77 = 0; i77 < (b5 & 255); i77++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        } else {
                            switch (i73) {
                                case 154:
                                    if ((b5 & 255) == 1) {
                                        int i78 = u0.b.D;
                                        if (i78 == 1 || i78 == 2) {
                                            l0.b0.l0(40, 0);
                                            l0.b0.l0(40, 1);
                                        } else {
                                            l0.b0.l0(16, 0);
                                            l0.b0.l0(16, 1);
                                        }
                                    }
                                    break;
                                case 155:
                                    if ((b5 & 255) == 1) {
                                        int i79 = u0.b.D;
                                        if (i79 == 1 || i79 == 2) {
                                            l0.b0.l0(41, 0);
                                            l0.b0.l0(41, 1);
                                        } else {
                                            l0.b0.l0(64, 0);
                                            l0.b0.l0(64, 1);
                                        }
                                    }
                                    break;
                                case 156:
                                    if ((b5 & 255) == 1) {
                                        int i80 = u0.b.D;
                                        if (i80 == 1 || i80 == 2) {
                                            l0.b0.l0(42, 0);
                                            l0.b0.l0(42, 1);
                                        } else {
                                            l0.b0.l0(65, 0);
                                            l0.b0.l0(65, 1);
                                        }
                                    }
                                    break;
                                case 157:
                                    if ((b5 & 255) == 1) {
                                        int i81 = u0.b.D;
                                        if (i81 == 1 || i81 == 2) {
                                            l0.b0.l0(43, 0);
                                            l0.b0.l0(43, 1);
                                        } else {
                                            l0.b0.l0(66, 0);
                                            l0.b0.l0(66, 1);
                                        }
                                    }
                                    break;
                                case 158:
                                    if ((b5 & 255) == 1) {
                                        int i82 = u0.b.D;
                                        if (i82 == 1 || i82 == 2) {
                                            l0.b0.l0(44, 0);
                                            l0.b0.l0(44, 1);
                                        } else {
                                            l0.b0.l0(28, 0);
                                            l0.b0.l0(28, 1);
                                        }
                                    }
                                    break;
                                case 159:
                                    if ((b5 & 255) == 1) {
                                        int i83 = u0.b.D;
                                        if (i83 == 1 || i83 == 2) {
                                            l0.b0.l0(45, 0);
                                            l0.b0.l0(45, 1);
                                        } else {
                                            l0.b0.l0(27, 0);
                                            l0.b0.l0(27, 1);
                                        }
                                    }
                                    break;
                                default:
                                    int i84 = b5 & 255;
                                    if (i84 == 1) {
                                        if (i71 < iArr4.length) {
                                            l0.b0.l0(iArr4[i71][1], 0);
                                        }
                                        break;
                                    } else if (i84 == 0 && i71 <= iArr4.length) {
                                        l0.b0.l0(iArr4[this.f6692b][1], 1);
                                        break;
                                    }
                                    break;
                            }
                        }
                    }
                }
                break;
            case 35:
                int i85 = bArr[i2 + 2] & 255;
                int i86 = bArr[i2 + 3] & 255;
                int i87 = bArr[i2 + 4] & 255;
                int i88 = i2 + 5;
                int i89 = bArr[i88] & 255;
                int i90 = i2 + 6;
                int i91 = bArr[i90] & 255;
                int i92 = i2 + 7;
                int i93 = bArr[i92] & 255;
                qt.y0(10, (i85 >> 7) & 1);
                qt.y0(11, (i85 >> 6) & 1);
                qt.y0(12, (i85 >> 5) & 1);
                int i94 = (i85 >> 4) & 1;
                qt.y0(38, i94);
                int i95 = nt.f8633a;
                if (i95 == 786659 || i95 == 852195 || i95 == 1245411) {
                    qt.y0(13, i94);
                } else {
                    qt.y0(13, (i85 >> 3) & 1);
                }
                int i96 = nt.f8633a;
                if (i96 == 852195 || i96 == 1245411 || i96 == 196835 || i96 == 458979 || i96 == 786659) {
                    qt.y0(16, (i85 >> 3) & 1);
                    qt.y0(15, (i85 >> 2) & 1);
                    qt.y0(53, (i85 >> 1) & 1);
                    qt.y0(63, i85 & 1);
                } else {
                    qt.y0(62, (i85 >> 2) & 1);
                    qt.y0(16, (i85 >> 1) & 1);
                    qt.y0(15, (i85 >> 0) & 1);
                    int i97 = i2 + 8;
                    qt.y0(29, (bArr[i97] >> 4) & 15);
                    qt.y0(30, (bArr[i97] >> 0) & 15);
                    int i98 = i2 + 9;
                    qt.y0(31, (bArr[i98] >> 4) & 15);
                    qt.y0(32, (bArr[i98] >> 0) & 15);
                }
                int i99 = nt.f8633a;
                if (i99 != 131299 && i99 != 327907 && i99 != 524515 && i99 != 590051 && i99 != 393443 && i99 != 655587 && i99 != 721123 && i99 != 917731 && i99 != 983267 && i99 != 1048803 && i99 != 1114339 && i99 != 1179875 && i99 != 1310947 && i99 != 1442019 && i99 != 1769699 && i99 != 1507555 && i99 != 1573091 && i99 != 1638627 && i99 != 1704163) {
                    switch (i86) {
                        case 1:
                            qt.y0(19, 1);
                            qt.y0(20, 0);
                            qt.y0(18, 0);
                            break;
                        case 2:
                            qt.y0(19, 1);
                            qt.y0(20, 1);
                            qt.y0(18, 0);
                            break;
                        case 3:
                            qt.y0(19, 0);
                            qt.y0(20, 1);
                            qt.y0(18, 0);
                            break;
                        case 4:
                            qt.y0(19, 0);
                            qt.y0(20, 1);
                            qt.y0(18, 1);
                            break;
                        case 5:
                            qt.y0(19, 0);
                            qt.y0(20, 0);
                            qt.y0(18, 1);
                            break;
                        case 6:
                            qt.y0(19, 1);
                            qt.y0(20, 0);
                            qt.y0(18, 1);
                            break;
                        case 7:
                            qt.y0(19, 1);
                            qt.y0(20, 1);
                            qt.y0(18, 1);
                            break;
                    }
                } else {
                    int i100 = i86 & 15;
                    if (i100 == 0) {
                        i7 = 0;
                        i8 = 0;
                        i9 = 1;
                    } else if (i100 == 1) {
                        i8 = 0;
                        i9 = 1;
                        i7 = 1;
                    } else if (i100 != 2) {
                        if (i100 == 3) {
                            i9 = 0;
                            i7 = 1;
                        } else if (i100 != 4) {
                            i9 = 0;
                            i7 = 0;
                        } else {
                            i9 = 0;
                            i7 = 0;
                            i8 = 1;
                        }
                        i8 = i7;
                    } else {
                        i9 = 0;
                        i8 = 0;
                        i7 = 1;
                    }
                    qt.y0(19, i9);
                    qt.y0(20, i7);
                    qt.y0(18, i8);
                }
                qt.y0(21, i87 & 15);
                int i101 = nt.f8633a;
                if (i101 == 196835 || i101 == 786659 || i101 == 852195 || i101 == 1245411) {
                    if (i89 == 0) {
                        qt.y0(27, -2);
                    } else if (i89 == 255) {
                        qt.y0(27, -3);
                    } else if ((i89 > 0) && (i89 <= 15)) {
                        qt.y0(27, i89);
                    } else {
                        qt.y0(27, -1);
                    }
                    qt.y0(107, ((i91 << 8) | i93) & 65535);
                    qt.y0(64, bArr[i2 + 8] & 255);
                } else if (i101 == 458979) {
                    if ((i89 >= 1) && (i89 <= 9)) {
                        qt.y0(27, i89);
                    } else {
                        qt.y0(27, -1);
                    }
                    qt.y0(107, ((i91 << 8) | i93) & 65535);
                    qt.y0(64, bArr[i2 + 8] & 255);
                } else {
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i89 = bArr[i90] & 255;
                        i91 = bArr[i88] & 255;
                    }
                    if (i89 == 0) {
                        qt.y0(27, -2);
                    } else if (i89 == 254) {
                        qt.y0(27, -1);
                    } else if (i89 != 255) {
                        qt.y0(27, i89);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i91 == 0) {
                        qt.y0(28, -2);
                    } else if (i91 == 254) {
                        qt.y0(28, -1);
                    } else if (i91 != 255) {
                        qt.y0(28, i91);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(53, (bArr[i92] >> 5) & 1);
                }
                break;
            case 36:
                if (nt.a()) {
                    u0.d.R2(l0.c0.h1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.H0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.H0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.h1(bArr[i2 + 5] & 255));
                }
                break;
            case 37:
                int i102 = i2 + 2;
                int i103 = bArr[i102] & 255;
                int i104 = i2 + 3;
                int i105 = bArr[i104] & 255;
                int i106 = i2 + 4;
                int i107 = bArr[i106] & 255;
                int i108 = i2 + 5;
                int i109 = bArr[i108] & 255;
                if (i103 == 0 && i105 == 0 && i107 == 0 && i109 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i103 || l0.c0.f13014h != i105 || l0.c0.f13015i != i107 || l0.c0.f13016j != i109) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i103;
                l0.c0.f13014h = i105;
                l0.c0.f13015i = i107;
                l0.c0.f13016j = i109;
                u0.d.D2(l0.c0.h1(bArr[i102] & 255));
                u0.d.E2(l0.c0.H0(bArr[i104] & 255));
                u0.d.F2(l0.c0.H0(bArr[i106] & 255));
                u0.d.G2(l0.c0.h1(bArr[i108] & 255));
                break;
            case 38:
                int i110 = i2 + 2;
                u0.d.I2(l0.c0.h1(bArr[i110] & 255));
                u0.d.K2(l0.c0.h1(bArr[i110] & 255));
                int i111 = i2 + 3;
                u0.d.O2(l0.c0.h1(bArr[i111] & 255));
                u0.d.Q2(l0.c0.h1(bArr[i111] & 255));
                int i112 = i2 + 4;
                u0.d.H2(l0.c0.h1(bArr[i112] & 255));
                u0.d.J2(l0.c0.h1(bArr[i112] & 255));
                int i113 = i2 + 5;
                u0.d.N2(l0.c0.h1(bArr[i113] & 255));
                u0.d.P2(l0.c0.h1(bArr[i113] & 255));
                break;
            case 39:
                u0.d.R2(l0.c0.H0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.H0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.H0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.H0(bArr[i2 + 5] & 255));
                break;
            case 40:
                int i114 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i114 >> 6) & 1);
                    qt.y0(1, (i114 >> 7) & 1);
                } else {
                    qt.y0(2, (i114 >> 7) & 1);
                    qt.y0(1, (i114 >> 6) & 1);
                }
                qt.y0(4, (i114 >> 5) & 1);
                qt.y0(3, (i114 >> 4) & 1);
                qt.y0(0, (i114 >> 2) & 1);
                qt.y0(5, (i114 >> 3) & 1);
                break;
            case 41:
                if (!this.f6699i) {
                    qt.m(bArr[i2 + 3], bArr[i2 + 2], 7744, false, 5845);
                }
                break;
            default:
                switch (i10) {
                    case 54:
                        if (nt.a()) {
                            int i115 = nt.f8633a;
                            if (i115 == 131299 || i115 == 393443 || i115 == 327907 || i115 == 655587 || i115 == 721123 || i115 == 917731 || i115 == 983267 || i115 == 1048803 || i115 == 1114339 || i115 == 1179875 || i115 == 1310947 || i115 == 1442019 || i115 == 1769699 || i115 == 1507555 || i115 == 1573091 || i115 == 1638627 || i115 == 1704163) {
                                int i116 = bArr[i2 + 2] & 255;
                                if (i116 == 0 || i116 == 255) {
                                    u0.d.A3(0);
                                } else {
                                    u0.d.A3((i116 & 128) != 0 ? 1000 - ((i116 & 127) * 10) : (i116 * 10) + 1000);
                                }
                            }
                        }
                        break;
                    case 55:
                        int i117 = i2 + 2;
                        if (bArr[i117] == 1) {
                            int i118 = i2 + 3;
                            if (bArr[i118] == 1) {
                                qt.y0(118, bArr[i2 + 4] & 255);
                            } else if (bArr[i118] == 2) {
                                qt.y0(119, bArr[i2 + 4] & 255);
                            } else if (bArr[i118] == 3) {
                                qt.y0(120, bArr[i2 + 4] & 255);
                            }
                        } else if (bArr[i117] == 2) {
                            int i119 = i2 + 3;
                            if (bArr[i119] == 1) {
                                qt.y0(121, bArr[i2 + 4] & 255);
                            } else if (bArr[i119] == 2) {
                                qt.y0(122, bArr[i2 + 4] & 255);
                            } else if (bArr[i119] == 3) {
                                qt.y0(123, bArr[i2 + 4] & 255);
                            } else if (bArr[i119] == 4) {
                                qt.y0(124, bArr[i2 + 4] & 255);
                            }
                        } else if (bArr[i117] == 3) {
                            int i120 = i2 + 3;
                            if (bArr[i120] == 1) {
                                qt.y0(125, bArr[i2 + 4] & 255);
                            } else if (bArr[i120] == 2) {
                                qt.y0(126, bArr[i2 + 4] & 255);
                            }
                        } else if (bArr[i117] == 4) {
                            int i121 = i2 + 3;
                            if (bArr[i121] == 1) {
                                qt.y0(117, bArr[i2 + 4] & 255);
                            } else if (bArr[i121] == 2) {
                                qt.y0(136, bArr[i2 + 4] & 255);
                            } else if (bArr[i121] == 3) {
                                qt.y0(137, bArr[i2 + 4] & 255);
                            } else if (bArr[i121] == 4) {
                                qt.y0(138, bArr[i2 + 4] & 255);
                            }
                        } else if (bArr[i117] == 5) {
                            int i122 = i2 + 3;
                            if (bArr[i122] == 1) {
                                qt.y0(128, bArr[i2 + 4] & 255);
                            } else if (bArr[i122] == 2) {
                                qt.y0(129, bArr[i2 + 4] & 255);
                            }
                        }
                        break;
                    case 56:
                        int i123 = bArr[i2 + 2] & 255;
                        qt.y0(114, (i123 >> 7) & 1);
                        qt.y0(115, (i123 >> 6) & 1);
                        qt.y0(116, (i123 >> 5) & 1);
                        break;
                    case 57:
                        int i124 = bArr[i2 + 2] & 255;
                        int i125 = bArr[i2 + 3] & 255;
                        int i126 = bArr[i2 + 4] & 255;
                        int i127 = bArr[i2 + 5] & 255;
                        int i128 = bArr[i2 + 6] & 255;
                        int i129 = bArr[i2 + 7] & 255;
                        int i130 = bArr[i2 + 8] & 255;
                        qt.y0(103, ((i124 & 255) << 16) | ((i125 & 255) << 8) | (i126 & 255));
                        qt.y0(113, i127 & 255);
                        qt.y0(111, (i129 & 255) | ((i128 & 255) << 8));
                        qt.y0(112, ((i130 & 255) << 8) | (bArr[i2 + 9] & 255));
                        int i131 = i2 + 10;
                        qt.y0(104, (bArr[i131] >> 4) & 15);
                        qt.y0(105, bArr[i131] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(106, bArr[i2 + 11] & 255);
                        int i132 = nt.f8637c;
                        if (i132 == 12 || i132 == 21) {
                            if ((bArr[i131] & DhcpPacket.DHCP_DOMAIN_NAME) == 2) {
                                qt.y0(130, bArr[i2 + 12] & 255);
                            } else if ((bArr[i131] & DhcpPacket.DHCP_DOMAIN_NAME) == 3) {
                                qt.y0(131, bArr[i2 + 12] & 255);
                            }
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6712v);
        qt.q0(this.f6711u);
        w0.e.f17815a.d(this.f6707q);
        l0.b0.p0(this.f6707q);
        u0.c.f17388o.d(this.f6708r);
        h0.d.f2464c.d(this.f6706p);
        h0.d.f2462a.d(this.f6706p);
        this.f6709s.j();
        qt.q0(this.f6713w);
        qt.o0(this.f6702l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 147) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            int i3 = iArr[0] & 255;
            if (i3 == 254) {
                z.k.s(227, -125, 6, 1, 0, 0, 0, 0, 0);
                return;
            } else {
                if (i3 != 255) {
                    return;
                }
                z.k.s(227, -125, 6, 0, 0, 0, 0, 0, 0);
                return;
            }
        }
        if (i2 != 1029) {
            switch (i2) {
                case 0:
                    if (iArr != null && iArr.length >= 2) {
                        z.k.s(227, 128, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    if (iArr != null && iArr.length >= 5) {
                        z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                        break;
                    }
                    break;
                case 3:
                    if (iArr != null && iArr.length > 0) {
                        o3(iArr[0]);
                    }
                    break;
                case 4:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 134, 3, iArr[0], iArr[1], iArr[2]);
                    }
                    break;
                case 5:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 168, 2, iArr[0], iArr[1]);
                    }
                    break;
                case 6:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 144, 1, iArr[0]);
                    }
                    break;
                default:
                    break;
            }
            return;
        }
        int i4 = nt.f8637c;
        if (i4 != 12 && i4 != 13 && i4 != 21) {
            int i5 = (iArr[1] * 800) / 800;
            int i6 = (iArr[2] * 480) / 480;
            if (iArr[0] == 0) {
                z.k.s(227, -125, 6, 3, 1, (i5 >> 8) & 255, i5 & 255, (i6 >> 8) & 255, i6 & 255);
                return;
            } else {
                if (iArr[0] == 1) {
                    z.k.s(227, -125, 6, 3, 0, (i5 >> 8) & 255, i5 & 255, (i6 >> 8) & 255, i6 & 255);
                    return;
                }
                return;
            }
        }
        int iW = (iArr[1] * 1280) / a.f.w();
        int i7 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
        if (iArr[0] == 1) {
            z.k.s(227, 152, 5, 0, iW >> 8, iW & 255, i7 >> 8, i7 & 255);
        } else if (iArr[0] == 0) {
            z.k.s(227, 152, 5, 1, iW >> 8, iW & 255, i7 >> 8, i7 & 255);
        }
        if (iArr == null || iArr.length < 1) {
            return;
        }
        z.k.s(227, 133, 1, iArr[0]);
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
            } else if (i6 == 65537) {
                iArr[4] = 2;
            } else if (i6 == 65538) {
                iArr[4] = 0;
            } else if (i6 == 0) {
                iArr[4] = 17;
            } else if (i6 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 != 0 || i5 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i8 = u0.b.r3;
                iArr[4] = i8 & 255;
                iArr[5] = (i8 >> 8) & 255;
                int i9 = u0.b.s3;
                iArr[6] = i9 & 255;
                iArr[7] = (i9 >> 8) & 255;
                int i10 = u0.b.t3;
                iArr[8] = i10 / 60;
                iArr[9] = i10 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i11 = o0.e.f16794r;
            iArr[7] = i11 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i11 % 60;
        } else {
            int i12 = o0.e.C;
            iArr[4] = i12 & 255;
            iArr[5] = (i12 >> 8) & 255;
            int i13 = o0.e.B;
            iArr[6] = i13 & 255;
            iArr[7] = (i13 >> 8) & 255;
            int i14 = o0.e.f16794r;
            iArr[8] = i14 / 60;
            iArr[9] = i14 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i15 = i2 + 1;
            iArr2[i15] = iArr[i2];
            i2 = i15;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 16;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 255;
                break;
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void c3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
        a.i.a0(300L);
        z.k.s(227, 168, 2, i2, 0);
    }

    public final void n3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 16;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void o3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6691x = i2;
        qt.y0(117, i2);
        int iB = this.f6709s.b(0, 0);
        int i3 = f6691x;
        if (iB != i3) {
            this.f6709s.g(0, i3);
        }
    }

    public final void p3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -58;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        if (i2 == 1) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }
}
