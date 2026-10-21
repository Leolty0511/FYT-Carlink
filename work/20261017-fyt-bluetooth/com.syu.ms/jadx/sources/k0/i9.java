package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class i9 extends lt {
    public static int K;
    public static int L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6314e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6318i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6321l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f6311b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6312c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6313d = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6315f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6316g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f6317h = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 29}, new int[]{24, 6}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 13}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6319j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f6320k = {new int[]{1, 25}, new int[]{2, 11}, new int[]{3, 5}, new int[]{4, 2}, new int[]{5, 21}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 55}, new int[]{9, 12}, new int[]{10, 1}, new int[]{11, 38}, new int[]{12, 6}, new int[]{13, 18}, new int[]{14, 13}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 39}, new int[]{40, 64}, new int[]{41, 18}, new int[]{42, 13}, new int[]{43, 25}, new int[]{44, 16}, new int[]{45, 66}, new int[]{46, 65}, new int[]{47, 63}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6322m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f6323n = {new int[]{1, 0}, new int[]{2, 5}, new int[]{3, 21}, new int[]{4, 2}, new int[]{5, 1}, new int[]{6, 25}, new int[]{7, 3}, new int[]{8, 4}, new int[]{9, 7}, new int[]{10, 8}, new int[]{11, 29}, new int[]{12, 12}, new int[]{13, 18}, new int[]{14, 53}, new int[]{15, 18}, new int[]{16, 26}, new int[]{17, 13}, new int[]{18, 54}, new int[]{19, 6}, new int[]{20, 5}, new int[]{21, 62}, new int[]{22, -1}, new int[]{23, 63}, new int[]{24, -1}, new int[]{25, 55}, new int[]{26, 16}, new int[]{27, 54}, new int[]{28, 38}, new int[]{51, 18}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f6324o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6325p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6326q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6327r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6328s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6329t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6330u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6331v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6332w = new a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int[] f6333x = {34, 204};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6334y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f6335z = false;
    public int A = 0;
    public Runnable B = new b();
    public Runnable C = new c();
    public Runnable D = new d();
    public float E = 0.0f;
    public int F = 255;
    public int G = 255;
    public Runnable H = new e();
    public Runnable I = new f();
    public Runnable J = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 49, 0);
                z.k.s(227, 144, 2, 50, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(i9.this.C);
            i9.this.A = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i9 i9Var = i9.this;
            int i2 = i9Var.A - 1;
            i9Var.A = i2;
            if (i2 <= 0) {
                l0.b0.p0(i9Var.C);
                i9.this.A = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                i9 i9Var2 = i9.this;
                i9Var2.u3(i9Var2.f6311b.b(2, 0));
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i9.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i9.this.E = u0.b.f17359s0;
            if ((i9.this.E <= 10.0f && i9.this.E >= 0.0f) || (i9.this.E >= 350.0d && i9.this.E <= 360.0f)) {
                i9.this.G = 0;
            } else if (i9.this.E > 10.0f && i9.this.E < 20.0f) {
                i9.this.G = 1;
            } else if (i9.this.E > 20.0f && i9.this.E < 30.0f) {
                i9.this.G = 2;
            } else if (i9.this.E > 30.0f && i9.this.E < 40.0f) {
                i9.this.G = 3;
            } else if (i9.this.E > 40.0f && i9.this.E < 50.0f) {
                i9.this.G = 4;
            } else if (i9.this.E > 50.0f && i9.this.E < 60.0f) {
                i9.this.G = 5;
            } else if (i9.this.E > 60.0f && i9.this.E < 70.0f) {
                i9.this.G = 6;
            } else if (i9.this.E > 70.0f && i9.this.E < 80.0f) {
                i9.this.G = 7;
            } else if (i9.this.E > 80.0f && i9.this.E < 100.0f) {
                i9.this.G = 8;
            } else if (i9.this.E > 100.0f && i9.this.E < 110.0f) {
                i9.this.G = 9;
            } else if (i9.this.E > 110.0f && i9.this.E < 120.0f) {
                i9.this.G = 10;
            } else if (i9.this.E > 120.0f && i9.this.E < 130.0f) {
                i9.this.G = 11;
            } else if (i9.this.E > 130.0f && i9.this.E < 140.0f) {
                i9.this.G = 12;
            } else if (i9.this.E > 140.0f && i9.this.E < 150.0f) {
                i9.this.G = 13;
            } else if (i9.this.E > 150.0f && i9.this.E < 160.0f) {
                i9.this.G = 14;
            } else if (i9.this.E > 160.0f && i9.this.E < 170.0f) {
                i9.this.G = 15;
            } else if (i9.this.E > 170.0f && i9.this.E < 190.0f) {
                i9.this.G = 16;
            } else if (i9.this.E > 190.0f && i9.this.E < 200.0f) {
                i9.this.G = 17;
            } else if (i9.this.E > 200.0f && i9.this.E < 210.0f) {
                i9.this.G = 18;
            } else if (i9.this.E > 210.0f && i9.this.E < 220.0f) {
                i9.this.G = 19;
            } else if (i9.this.E > 220.0f && i9.this.E < 230.0f) {
                i9.this.G = 20;
            } else if (i9.this.E > 230.0f && i9.this.E < 240.0f) {
                i9.this.G = 21;
            } else if (i9.this.E > 240.0f && i9.this.E < 250.0f) {
                i9.this.G = 22;
            } else if (i9.this.E > 250.0f && i9.this.E < 260.0f) {
                i9.this.G = 23;
            } else if (i9.this.E > 260.0f && i9.this.E < 280.0f) {
                i9.this.G = 24;
            } else if (i9.this.E > 280.0f && i9.this.E < 290.0f) {
                i9.this.G = 25;
            } else if (i9.this.E > 290.0f && i9.this.E < 300.0f) {
                i9.this.G = 26;
            } else if (i9.this.E > 300.0f && i9.this.E < 310.0f) {
                i9.this.G = 27;
            } else if (i9.this.E > 310.0f && i9.this.E < 320.0f) {
                i9.this.G = 28;
            } else if (i9.this.E > 320.0f && i9.this.E < 330.0f) {
                i9.this.G = 29;
            } else if (i9.this.E > 330.0f && i9.this.E < 340.0f) {
                i9.this.G = 30;
            } else if (i9.this.E <= 340.0f || i9.this.E >= 350.0f) {
                i9.this.G = 3;
            } else {
                i9.this.G = 31;
            }
            if (i9.this.G != i9.this.F) {
                z.k.s(227, 134, 2, i9.this.G, 0);
                i9 i9Var = i9.this;
                i9Var.F = i9Var.G;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 9:
                    z.k.s(227, -18, 2, 2, 2);
                    break;
                case 10:
                case 17:
                    z.k.s(227, -18, 2, 2, 4);
                    break;
                case 11:
                    z.k.s(227, -18, 2, 2, 1);
                    break;
                case 12:
                    z.k.s(227, -18, 2, 2, 3);
                    break;
                case 18:
                    z.k.s(227, -18, 2, 2, 5);
                    break;
                case 20:
                    z.k.s(227, -18, 2, 2, 6);
                    break;
                case 22:
                    z.k.s(227, -18, 2, 2, 7);
                    break;
                case 23:
                    z.k.s(227, -18, 2, 2, 8);
                    break;
                case 24:
                    z.k.s(227, -18, 2, 2, 9);
                    break;
                case 25:
                case 34:
                    z.k.s(227, -18, 2, 2, 10);
                    break;
                case 26:
                    z.k.s(227, -18, 2, 2, 12);
                    break;
                case 27:
                    z.k.s(227, -18, 2, 2, 11);
                    break;
                case 28:
                    z.k.s(227, -18, 2, 2, 13);
                    break;
                case 30:
                    z.k.s(227, -18, 2, 2, 14);
                    break;
                case 31:
                case 35:
                    z.k.s(227, -18, 2, 2, 15);
                    break;
                case 33:
                    z.k.s(227, -18, 2, 2, 16);
                    break;
                case 36:
                    z.k.s(227, -18, 2, 2, 65);
                    break;
                case 37:
                    z.k.s(227, -18, 2, 2, 129);
                    break;
                case 38:
                    z.k.s(227, -18, 2, 2, 66);
                    break;
                case 39:
                    z.k.s(227, -18, 2, 2, 11);
                    break;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, time.minute, time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1));
        }
    }

    public static void a3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[7];
            iArr[0] = 192;
            iArr[1] = 5;
            iArr[2] = 1;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[3] = 0;
            } else if (i4 == 65537) {
                iArr[3] = 1;
            } else if (i4 == 65538) {
                iArr[3] = 2;
            } else if (i4 == 0) {
                iArr[3] = 16;
            } else if (i4 == 1) {
                iArr[3] = 17;
            }
            int i5 = w0.d.f17797i;
            iArr[4] = i5 & 255;
            iArr[5] = (i5 >> 8) & 255;
            int i6 = w0.d.f17798j;
            if (i6 % 6 != 0 || i6 == 0) {
                iArr[6] = i6 % 6;
            } else {
                iArr[6] = 6;
            }
            int[] iArr2 = new int[8];
            iArr2[0] = 227;
            while (i3 < 7) {
                int i7 = i3 + 1;
                iArr2[i7] = iArr[i3];
                i3 = i7;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 8 || i2 == 10) {
            int i8 = u0.b.s3;
            int i9 = u0.b.r3;
            int i10 = u0.b.t3;
            int i11 = u0.b.u3;
            int[] iArr3 = {192, 10, 8, 0, (i8 >> 8) & 255, i8 & 255, (i9 >> 8) & 255, i9 & 255, (i10 >> 8) & 255, i10 & 255, (i11 >> 8) & 255, i11 & 255};
            int[] iArr4 = new int[13];
            iArr4[0] = 227;
            while (i3 < 12) {
                int i12 = i3 + 1;
                iArr4[i12] = iArr3[i3];
                i3 = i12;
            }
            z.k.s(iArr4);
            return;
        }
        int[] iArr5 = {192, 2, 12, 0};
        if (i2 == 2) {
            iArr5[2] = 5;
            int i13 = h0.c.E;
            if (i13 == 3) {
                iArr5[3] = 3;
            } else if (i13 == 4) {
                iArr5[3] = 1;
            } else if (i13 != 5) {
                iArr5[3] = 0;
            } else {
                iArr5[3] = 4;
            }
            iArr5[3] = 64;
        } else if (i2 == 3) {
            iArr5[2] = 11;
        }
        if (u0.b.f17306a0 == 0) {
            iArr5[2] = 0;
        }
        int[] iArr6 = new int[5];
        iArr6[0] = 227;
        while (i3 < 4) {
            int i14 = i3 + 1;
            iArr6[i14] = iArr5[i3];
            i3 = i14;
        }
        z.k.s(iArr6);
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
                int i3 = nt.f8637c;
                if (i3 == 1 || i3 == 2) {
                    d3(9);
                    return;
                } else {
                    e3(13);
                    return;
                }
            }
            int i4 = nt.f8637c;
            if (i4 != 1 && i4 != 2) {
                e3(14);
                return;
            }
            d3(10);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                int i5 = nt.f8637c;
                if (i5 == 1 || i5 == 2) {
                    d3(11);
                    return;
                } else {
                    e3(15);
                    return;
                }
            }
            int i6 = nt.f8637c;
            if (i6 == 1 || i6 == 2) {
                d3(12);
                return;
            } else {
                e3(16);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -17, 3, 125, 1, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -17, 3, 125, 1, 0);
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
            } else if (iArr[1] == 11) {
                z.k.s(227, -17, 4, 125, 2, 16, 1);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -17, 4, 125, 2, 16, 11);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] != 0) {
                        int i7 = nt.f8637c;
                        if (i7 == 1 || i7 == 2) {
                            d3(1);
                        } else {
                            e3(0);
                        }
                    }
                } else if (nt.f8645g[21] == 0) {
                    int i8 = nt.f8637c;
                    if (i8 == 1 || i8 == 2) {
                        d3(1);
                    } else {
                        e3(1);
                    }
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        int i9 = nt.f8637c;
                        if (i9 == 1 || i9 == 2) {
                            d3(16);
                        } else {
                            e3(1);
                        }
                    }
                } else if (nt.f8645g[11] == 0) {
                    int i10 = nt.f8637c;
                    if (i10 == 1 || i10 == 2) {
                        d3(16);
                    } else {
                        e3(1);
                    }
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        int i11 = nt.f8637c;
                        if (i11 == 1 || i11 == 2) {
                            d3(2);
                        } else {
                            e3(2);
                        }
                    }
                } else if (nt.f8645g[13] == 0) {
                    int i12 = nt.f8637c;
                    if (i12 == 1 || i12 == 2) {
                        d3(2);
                    } else {
                        e3(2);
                    }
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        int i13 = nt.f8637c;
                        if (i13 == 1 || i13 == 2) {
                            d3(38);
                        } else {
                            e3(6);
                        }
                    }
                } else if (nt.f8645g[65] == 0) {
                    int i14 = nt.f8637c;
                    if (i14 == 1 || i14 == 2) {
                        d3(38);
                    } else {
                        e3(6);
                    }
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        int i15 = nt.f8637c;
                        if (i15 == 1 || i15 == 2) {
                            d3(4);
                        } else {
                            e3(23);
                        }
                    }
                } else if (nt.f8645g[16] == 0) {
                    int i16 = nt.f8637c;
                    if (i16 == 1 || i16 == 2) {
                        d3(4);
                    } else {
                        e3(23);
                    }
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    int i17 = nt.f8637c;
                    if (i17 == 1 || i17 == 2) {
                        int[] iArr2 = nt.f8645g;
                        if (iArr2[12] == 1) {
                            d3(35);
                        } else if (iArr2[12] == 1) {
                            e3(21);
                        }
                    }
                } else if (iArr[1] == 0) {
                    int i18 = nt.f8637c;
                    if (i18 == 1 || i18 == 2) {
                        int[] iArr3 = nt.f8645g;
                        if (iArr3[12] == 2) {
                            d3(35);
                        } else if (iArr3[12] == 0) {
                            e3(21);
                        }
                    }
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    int i19 = nt.f8637c;
                    if (i19 == 1 || i19 == 2) {
                        d3(21);
                    } else {
                        e3(12);
                    }
                } else {
                    int i20 = nt.f8637c;
                    if (i20 == 1 || i20 == 2) {
                        d3(20);
                    } else {
                        e3(11);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f6311b.a();
        u0.c.f17386m.a(this.B, 1);
        l0.b0.b(this.I);
        o1.h.f16865a.a(this.H, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        switch (i2) {
            case 4:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 17:
            case 19:
            case 20:
            case 21:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 30:
            case 31:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
                mtVar.f8314i = 1;
                break;
            case 5:
            case 6:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 22:
            case 29:
            case 32:
            default:
                mtVar.f8314i = 0;
                break;
        }
        if (i2 == 15 || i2 == 16 || i2 == 32) {
            mtVar.f8306a = null;
        }
        mtVar.f8313h = 0;
        if (nt.f8633a == 393496) {
            mtVar.f8313h = 1;
        }
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
        qt.y(this.f6332w);
        qt.z(this.J);
        l0.b0.b(this.D);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        byte b2 = bArr[i2];
        int i9 = 0;
        if (b2 == 20) {
            int i10 = bArr[i2 + 2] & 255;
            if (i10 == 0) {
                qt.y0(99, -2);
            }
            if (i10 == 255) {
                qt.y0(99, -1);
                return;
            } else {
                if (i10 < 0 || i10 > 8) {
                    return;
                }
                qt.y0(99, i10);
                return;
            }
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 65) {
            if (bArr[i2 + 2] == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 85) {
            int i11 = nt.f8637c;
            if (i11 != 1 && i11 != 2) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                switch (b4) {
                    case 1:
                        qt.y0(188, b5);
                        break;
                    case 2:
                        qt.y0(189, b5);
                        break;
                    case 3:
                        qt.y0(190, b5);
                        break;
                    case 4:
                        qt.y0(191, b5);
                        break;
                    case 5:
                        qt.y0(192, b5);
                        break;
                    case 6:
                        qt.y0(193, b5);
                        break;
                    case 7:
                        qt.y0(194, b5);
                        break;
                    case 8:
                        qt.y0(195, b5);
                        break;
                }
            }
            int i12 = i2 + 2;
            byte b6 = bArr[i12];
            int i13 = i2 + 3;
            byte b7 = bArr[i13];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i13];
                b7 = bArr[i12];
            }
            int i14 = b6 & 255;
            if (i14 != 16) {
                if (i14 == 80) {
                    qt.y0(27, -3);
                } else if (i14 < 16) {
                    qt.y0(27, -2);
                } else {
                    qt.y0(27, i14);
                }
                i4 = -2;
            } else {
                i4 = -2;
                qt.y0(27, -2);
            }
            int i15 = b7 & 255;
            if (i15 == 16) {
                qt.y0(28, -2);
            } else if (i15 == 80) {
                qt.y0(28, -3);
            } else if (i15 < 16) {
                qt.y0(28, i4);
            } else {
                qt.y0(28, i15);
            }
            qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
            int i16 = (b8 >> 4) & 15;
            if (i16 == 1) {
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (i16 == 2) {
                i6 = 0;
                i7 = 1;
                i5 = 1;
            } else if (i16 != 3) {
                if (i16 != 4) {
                    i7 = 0;
                    i5 = 0;
                } else {
                    i7 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i7 = 0;
                i6 = 0;
                i5 = 1;
            }
            qt.y0(19, i7);
            qt.y0(20, i5);
            qt.y0(18, i6);
            qt.y0(77, i16);
            qt.y0(29, b9 & 3);
            qt.y0(30, (b9 >> 4) & 3);
            qt.y0(13, (b10 >> 0) & 1);
            qt.y0(11, (b10 >> 1) & 1);
            qt.y0(65, (b10 >> 5) & 1);
            qt.y0(16, (b10 >> 6) & 1);
            qt.y0(15, (b10 >> 7) & 1);
            qt.y0(12, (b11 >> 0) & 3);
            qt.y0(80, (b11 >> 5) & 1);
            if (!nt.a() || (i8 = bArr[i2 + 9] & 255) == 255) {
                return;
            }
            if (i8 < 40) {
                i9 = 1000 - ((40 - i8) * 10);
            } else if (i8 >= 40 && i8 <= 200) {
                i9 = ((i8 - 40) * 10) + 1000;
            }
            u0.d.A3(i9);
            return;
        }
        if (b2 == 88) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            switch (b13) {
                case 1:
                    qt.y0(196, b14);
                    break;
                case 2:
                    qt.y0(197, b14);
                    break;
                case 3:
                    qt.y0(198, b14);
                    break;
                case 4:
                    qt.y0(199, b14);
                    break;
                case 5:
                    qt.y0(200, b14);
                    break;
                case 6:
                    qt.y0(201, b14);
                    break;
                case 7:
                    qt.y0(202, b14);
                    break;
                case 8:
                    qt.y0(203, b14);
                    break;
            }
        }
        if (b2 == 104) {
            int i17 = ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255);
            qt.y0(105, i17);
            qt.y0(1032, i17);
            return;
        }
        if (b2 == 106) {
            int i18 = ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255);
            qt.y0(104, i18);
            qt.y0(1031, i18);
            return;
        }
        if (b2 == 125) {
            int i19 = bArr[i2 + 2] & 255;
            if (i19 == 1) {
                if (!qt.k0()) {
                    if (L == 1) {
                        int i20 = i2 + 3;
                        l0.c0.b((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
                        return;
                    }
                    return;
                }
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i21 = i2 + 3;
                    l0.c0.b((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
                    return;
                } else {
                    int i22 = i2 + 3;
                    l0.c0.a((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                    return;
                }
            }
            if (i19 == 3) {
                int i23 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i23);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i23}, null, null);
                return;
            }
            if (i19 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6335z = true;
                return;
            }
            if (i19 == 10) {
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i19 != 128) {
                return;
            }
            int i24 = bArr[i2 + 3] & 255;
            int i25 = bArr[i2 + 4] & 255;
            this.f6322m = i24 & 255;
            int i26 = 0;
            while (true) {
                iArr = this.f6323n;
                if (i26 >= iArr.length) {
                    break;
                }
                int i27 = this.f6322m;
                if (i27 == iArr[i26][0]) {
                    if (i27 == 0) {
                        break;
                    }
                    this.f6321l = i26;
                    break;
                }
                i26++;
            }
            int i28 = this.f6322m;
            if (i28 == 22) {
                if ((i25 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                    return;
                }
                o1.u.g("com.syu.carlink");
                return;
            }
            if (i28 != 24) {
                if ((i25 & 255) != 0) {
                    if (i26 < iArr.length) {
                        l0.b0.l0(iArr[i26][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i29 = this.f6321l;
                    if (i29 < iArr.length && i29 != 255) {
                        l0.b0.l0(iArr[i29][1], 1);
                    }
                    this.f6321l = 255;
                    return;
                }
            }
            if ((i25 & 255) == 1) {
                if (qt.k0()) {
                    if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                        return;
                    }
                    c.e.d().c(591);
                    return;
                }
                if (u0.b.f17347o == 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        switch (b2) {
            case 16:
                if (u0.b.f17347o != 1) {
                    byte b15 = bArr[i2 + 2];
                    byte b16 = bArr[i2 + 3];
                    byte b17 = bArr[i2 + 4];
                    int i30 = (b17 >> 0) & 15;
                    qt.y0(21, i30);
                    if (i30 != 0) {
                        qt.y0(25, b15);
                        qt.y0(12, (b16 >> 7) & 1);
                        qt.y0(65, (b16 >> 6) & 1);
                        qt.y0(16, (b16 >> 5) & 1);
                        qt.y0(20, (b16 >> 4) & 1);
                        qt.y0(18, (b16 >> 3) & 1);
                        qt.y0(13, (b16 >> 2) & 1);
                        qt.y0(58, (b16 >> 1) & 1);
                        qt.y0(11, (b16 >> 0) & 1);
                        qt.y0(53, (b17 >> 7) & 1);
                        qt.y0(14, (b17 >> 6) & 1);
                        int i31 = i2 + 5;
                        byte b18 = bArr[i31];
                        int i32 = i2 + 6;
                        byte b19 = bArr[i32];
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            b18 = bArr[i32];
                            b19 = bArr[i31];
                        }
                        if (b18 == 1) {
                            qt.y0(27, -2);
                        } else if (b18 == 57) {
                            qt.y0(27, -3);
                        } else if (b18 < 3 || b18 > 55) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, (int) (((((double) (b18 - 1)) * 2.5d) + 180.0d) * 10.0d));
                        }
                        if (b19 == 1) {
                            qt.y0(28, -2);
                        } else if (b19 == 57) {
                            qt.y0(28, -3);
                        } else if (b19 < 3 || b19 > 55) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, (int) (((((double) (b19 - 1)) * 2.5d) + 180.0d) * 10.0d));
                        }
                        qt.y0(57, (b17 >> 5) & 1);
                        int i33 = (b17 >> 4) & 1;
                        qt.y0(38, i33);
                        switch (nt.f8633a) {
                            case 262424:
                            case 524568:
                            case 1245464:
                            case 1573144:
                            case 1835288:
                                if (!SystemProperties.getBoolean("persist.fyt.showduduair", false) && this.f6326q != i33) {
                                    this.f6326q = i33;
                                    if (i33 == 1) {
                                        if (!o3().equals("com.syu.carinfo.rzc.gs4.Rzc_Gs8_AirControlAct")) {
                                            q3();
                                            this.f6327r = 1;
                                        }
                                    } else if (i33 == 0) {
                                        if (this.f6327r == 1 && o3().equals("com.syu.carinfo.rzc.gs4.Rzc_Gs8_AirControlAct")) {
                                            l0.b0.l0(6, 0);
                                            l0.b0.l0(6, 1);
                                        }
                                        this.f6327r = 0;
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                }
                break;
            case 17:
                if (u0.b.f17347o != 1) {
                    byte b20 = bArr[i2 + 2];
                    byte b21 = bArr[i2 + 3];
                    qt.y0(47, (b20 >> 7) & 1);
                    qt.y0(46, (b20 >> 6) & 1);
                    qt.y0(43, (b20 >> 5) & 1);
                    qt.y0(44, b20 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i34 = b21 & 255;
                    if (i34 == 1) {
                        qt.y0(40, -2);
                    } else if (i34 == 57) {
                        qt.y0(40, -3);
                    } else if (i34 > 55 || i34 < 3) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, (int) (((((double) (i34 - 1)) * 2.5d) + 180.0d) * 10.0d));
                    }
                    break;
                }
                break;
            case 18:
                if (nt.a()) {
                    byte b22 = bArr[i2 + 2];
                    byte b23 = bArr[i2 + 3];
                    this.f6315f = b22 & 255;
                    int i35 = 0;
                    while (true) {
                        iArr2 = this.f6317h;
                        if (i35 < iArr2.length) {
                            int i36 = this.f6315f;
                            if (i36 == iArr2[i35][0]) {
                                if (i36 != 0) {
                                    this.f6314e = i35;
                                }
                                this.f6316g = i36;
                            } else {
                                i35++;
                            }
                        }
                    }
                    if (this.f6316g == 17 && this.f6315f == 0) {
                        if (this.f6324o) {
                            this.f6324o = false;
                        } else {
                            l0.b0.l0(2, 0);
                            l0.b0.l0(2, 1);
                        }
                        this.f6316g = this.f6315f;
                    } else {
                        int i37 = this.f6315f;
                        if (i37 == 17) {
                            int i38 = nt.f8637c;
                            if (i38 == 36 || i38 == 38) {
                                if (this.f6325p != b23) {
                                    this.f6325p = b23;
                                    if (b23 == 1) {
                                        this.f6324o = false;
                                    } else if (b23 == 2) {
                                        this.f6324o = true;
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                            } else if (b23 == 1) {
                                l0.b0.l0(2, 0);
                                l0.b0.l0(2, 1);
                            }
                        } else if (i37 == 49) {
                            int i39 = nt.f8637c;
                            if (i39 == 36 || i39 == 38) {
                                if (b23 == 1) {
                                    int i40 = h0.c.E;
                                    if (i40 == 3 || i40 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else if (u0.i.l3().r3()) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    } else {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    }
                                }
                            } else if (b23 == 1) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                        } else if (i37 != 51) {
                            int i41 = b23 & 255;
                            if (i41 == 1) {
                                if (i35 < iArr2.length) {
                                    l0.b0.l0(iArr2[i35][1], 0);
                                }
                            } else if (i41 == 0) {
                                int i42 = this.f6314e;
                                if (i42 < iArr2.length && i42 != 255) {
                                    l0.b0.l0(iArr2[i42][1], 1);
                                }
                                this.f6314e = 255;
                            }
                        } else if (b23 == 1) {
                            int i43 = h0.c.E;
                            if (i43 == 3 || i43 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (u0.i.l3().r3()) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    }
                }
                break;
            default:
                switch (b2) {
                    case 48:
                        break;
                    case 49:
                        if (nt.a()) {
                            byte b24 = bArr[i2 + 2];
                            byte b25 = bArr[i2 + 3];
                            if (!this.f6335z) {
                                qt.m(b25, b24, 7680, true, 4864);
                            }
                        }
                        break;
                    case 50:
                        if (nt.a()) {
                            int i44 = i2 + 2;
                            byte b26 = bArr[i44];
                            byte b27 = bArr[i2 + 3];
                            this.f6328s = b26 & 255;
                            this.f6329t = b27 & 255;
                            if (bArr[i44] == 0) {
                                int i45 = i2 + 4;
                                int iB3 = b3(bArr[i45] & 255);
                                int i46 = i2 + 5;
                                int iB4 = b3(bArr[i46] & 255);
                                int i47 = i2 + 6;
                                int iB5 = b3(bArr[i47] & 255);
                                int i48 = i2 + 7;
                                int iB6 = b3(bArr[i48] & 255);
                                if (iB3 >= 10 && iB4 >= 10 && iB5 >= 10 && iB6 >= 10 && l0.c0.f13013g >= 10 && l0.c0.f13014h >= 10 && l0.c0.f13015i >= 10 && l0.c0.f13016j >= 10) {
                                    u0.d.C2(0);
                                } else if ((l0.c0.f13009c != iB3 || l0.c0.f13010d != iB4 || l0.c0.f13011e != iB5 || l0.c0.f13012f != iB6) && u0.b.f17347o == 0) {
                                    u0.d.C2(1);
                                }
                                l0.c0.f13009c = iB3;
                                l0.c0.f13010d = iB4;
                                l0.c0.f13011e = iB5;
                                l0.c0.f13012f = iB6;
                                u0.d.R2(b3(bArr[i45] & 255));
                                u0.d.S2(b3(bArr[i46] & 255));
                                u0.d.T2(b3(bArr[i47] & 255));
                                u0.d.U2(b3(bArr[i48] & 255));
                            }
                        }
                        break;
                    case 51:
                        if (nt.a()) {
                            int i49 = i2 + 2;
                            byte b28 = bArr[i49];
                            byte b29 = bArr[i2 + 3];
                            this.f6330u = b28 & 255;
                            this.f6331v = b29 & 255;
                            if (bArr[i49] == 0) {
                                int i50 = i2 + 4;
                                int iC3 = c3(bArr[i50] & 255);
                                int i51 = i2 + 5;
                                int iC4 = c3(bArr[i51] & 255);
                                int i52 = i2 + 6;
                                int iC5 = c3(bArr[i52] & 255);
                                int i53 = i2 + 7;
                                int iC6 = c3(bArr[i53] & 255);
                                if (iC3 >= 10 && iC4 >= 10 && iC5 >= 10 && iC6 >= 10 && l0.c0.f13009c >= 10 && l0.c0.f13010d >= 10 && l0.c0.f13011e >= 10 && l0.c0.f13012f >= 10) {
                                    u0.d.C2(0);
                                } else if ((l0.c0.f13013g != iC3 || l0.c0.f13014h != iC4 || l0.c0.f13015i != iC5 || l0.c0.f13016j != iC6) && u0.b.f17347o == 0) {
                                    u0.d.C2(1);
                                }
                                l0.c0.f13013g = iC3;
                                l0.c0.f13014h = iC4;
                                l0.c0.f13015i = iC5;
                                l0.c0.f13016j = iC6;
                                u0.d.D2(c3(bArr[i50] & 255));
                                u0.d.E2(c3(bArr[i51] & 255));
                                u0.d.F2(c3(bArr[i52] & 255));
                                u0.d.G2(c3(bArr[i53] & 255));
                            }
                        }
                        break;
                    default:
                        switch (b2) {
                            case 80:
                                byte b30 = bArr[i2 + 2];
                                byte b31 = bArr[i2 + 3];
                                this.f6319j = b30 & 255;
                                int i54 = 0;
                                while (true) {
                                    iArr3 = this.f6320k;
                                    if (i54 < iArr3.length) {
                                        int i55 = this.f6319j;
                                        if (i55 != iArr3[i54][0]) {
                                            i54++;
                                        } else if (i55 != 0) {
                                            this.f6318i = i54;
                                        }
                                    }
                                }
                                switch (this.f6319j) {
                                    case 14:
                                        if (nt.f8637c == 35) {
                                            if ((b31 & 255) == 1) {
                                                l0.b0.l0(16, 0);
                                                l0.b0.l0(16, 1);
                                            }
                                        } else if ((b31 & 255) == 1) {
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                        }
                                        break;
                                    case 15:
                                    default:
                                        int i56 = b31 & 255;
                                        if (i56 == 1) {
                                            if (i54 < iArr3.length) {
                                                l0.b0.l0(iArr3[i54][1], 0);
                                            }
                                        } else if (i56 == 0) {
                                            int i57 = this.f6318i;
                                            if (i57 < iArr3.length && i57 != 255) {
                                                l0.b0.l0(iArr3[i57][1], 1);
                                            }
                                            this.f6318i = 255;
                                        }
                                        break;
                                    case 16:
                                        for (int i58 = 0; i58 < (b31 & 255); i58++) {
                                            l0.b0.l0(7, 0);
                                        }
                                        l0.b0.l0(7, 1);
                                        break;
                                    case 17:
                                        for (int i59 = 0; i59 < (b31 & 255); i59++) {
                                            l0.b0.l0(8, 0);
                                        }
                                        l0.b0.l0(8, 1);
                                        break;
                                    case 18:
                                        if (nt.f8637c == 35) {
                                            for (int i60 = 0; i60 < (b31 & 255); i60++) {
                                                l0.b0.l0(4, 0);
                                            }
                                            l0.b0.l0(4, 1);
                                        } else {
                                            for (int i61 = 0; i61 < (b31 & 255); i61++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                        }
                                        break;
                                    case 19:
                                        if (nt.f8637c == 35) {
                                            for (int i62 = 0; i62 < (b31 & 255); i62++) {
                                                l0.b0.l0(3, 0);
                                            }
                                            l0.b0.l0(3, 1);
                                        } else {
                                            for (int i63 = 0; i63 < (b31 & 255); i63++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                        }
                                        break;
                                }
                                break;
                            case 81:
                                if (bArr[i2 + 2] == 2) {
                                    qt.y0(101, 1);
                                } else {
                                    qt.y0(101, 0);
                                }
                                break;
                            case 82:
                                byte b32 = bArr[i2 + 2];
                                byte b33 = bArr[i2 + 3];
                                qt.y0(98, (((b32 << 8) & 65280) | (b33 & 255)) & 65535);
                                switch (b32) {
                                    case 1:
                                        qt.y0(106, b33);
                                        break;
                                    case 2:
                                        qt.y0(131, b33);
                                        break;
                                    case 3:
                                        qt.y0(107, b33);
                                        break;
                                    case 4:
                                        qt.y0(108, b33);
                                        break;
                                    case 5:
                                        qt.y0(109, b33);
                                        break;
                                    case 6:
                                        qt.y0(110, b33);
                                        break;
                                    case 7:
                                        qt.y0(111, b33);
                                        break;
                                    case 8:
                                        qt.y0(112, b33);
                                        break;
                                    case 9:
                                        qt.y0(113, b33);
                                        break;
                                    case 10:
                                        qt.y0(114, b33);
                                        break;
                                    case 11:
                                        qt.y0(115, b33);
                                        break;
                                    case 12:
                                        qt.y0(116, b33);
                                        break;
                                    case 13:
                                        qt.y0(117, b33);
                                        break;
                                    case 14:
                                        qt.y0(118, b33);
                                        break;
                                    case 15:
                                        qt.y0(119, b33);
                                        break;
                                    case 16:
                                        qt.y0(120, b33);
                                        break;
                                    case 17:
                                        qt.y0(121, b33);
                                        break;
                                    case 18:
                                        qt.y0(123, b33);
                                        break;
                                    case 19:
                                        qt.y0(124, b33);
                                        break;
                                    case 20:
                                        qt.y0(125, b33);
                                        break;
                                    case 21:
                                        qt.y0(126, b33);
                                        break;
                                    case 22:
                                        qt.y0(29, b33);
                                        break;
                                    case 23:
                                        qt.y0(30, b33);
                                        break;
                                    case 24:
                                        qt.y0(127, b33);
                                        break;
                                    case 25:
                                        qt.y0(128, b33);
                                        break;
                                    case 26:
                                        qt.y0(129, b33);
                                        break;
                                    case 27:
                                        qt.y0(130, b33);
                                        break;
                                    case 28:
                                        qt.y0(152, b33);
                                        break;
                                    case 29:
                                        qt.y0(153, b33);
                                        break;
                                    case 30:
                                        qt.y0(154, b33);
                                        break;
                                    case 31:
                                        qt.y0(155, b33);
                                        break;
                                    case 32:
                                        qt.y0(156, b33);
                                        break;
                                    case 33:
                                        qt.y0(157, b33);
                                        break;
                                    case 34:
                                        qt.y0(158, b33);
                                        break;
                                    case 35:
                                        qt.y0(159, b33);
                                        break;
                                    case 36:
                                        qt.y0(160, b33);
                                        break;
                                    case 37:
                                        qt.y0(161, b33);
                                        break;
                                    case 38:
                                        qt.y0(162, b33);
                                        break;
                                    case 39:
                                        qt.y0(164, b33);
                                        break;
                                    case 40:
                                        qt.y0(165, b33);
                                        break;
                                    case 41:
                                        qt.y0(166, b33);
                                        break;
                                    case 42:
                                        qt.y0(167, b33);
                                        break;
                                    case 43:
                                        qt.y0(168, b33);
                                        break;
                                    case 44:
                                        qt.y0(169, b33);
                                        break;
                                    case 45:
                                        qt.y0(170, b33);
                                        break;
                                    case 46:
                                        qt.y0(171, b33);
                                        break;
                                    case 47:
                                        qt.y0(172, b33);
                                        break;
                                    case 48:
                                        qt.y0(173, b33);
                                        break;
                                    case 49:
                                        qt.y0(174, b33);
                                        break;
                                    case 50:
                                        qt.y0(175, b33);
                                        break;
                                    case 51:
                                        qt.y0(176, b33);
                                        break;
                                    case 52:
                                        qt.y0(179, b33);
                                        break;
                                    case 53:
                                        qt.y0(180, b33);
                                        break;
                                    case 54:
                                        qt.y0(181, b33);
                                        break;
                                    case 55:
                                        qt.y0(182, b33);
                                        break;
                                    case 56:
                                        qt.y0(183, b33);
                                        break;
                                    case 57:
                                        qt.y0(184, b33);
                                        break;
                                    case 58:
                                        qt.y0(185, b33);
                                        break;
                                    case 59:
                                        qt.y0(186, b33);
                                        break;
                                    case 60:
                                        qt.y0(187, b33);
                                        break;
                                    case 61:
                                        qt.y0(218, b33);
                                        break;
                                    case 62:
                                        qt.y0(219, b33);
                                        break;
                                }
                                break;
                            case 83:
                                qt.y0(136, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                                qt.y0(137, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                                int i64 = i2 + 6;
                                qt.y0(138, (bArr[i64] >> 0) & 1);
                                qt.y0(139, (bArr[i64] >> 1) & 1);
                                qt.y0(140, (bArr[i64] >> 2) & 1);
                                qt.y0(141, (bArr[i64] >> 3) & 1);
                                qt.y0(142, (bArr[i64] >> 4) & 1);
                                qt.y0(143, (bArr[i64] >> 5) & 1);
                                qt.y0(144, (bArr[i64] >> 6) & 1);
                                qt.y0(145, (bArr[i64] >> 7) & 1);
                                qt.y0(146, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 65535);
                                qt.y0(147, bArr[i2 + 9] & 255);
                                qt.y0(148, bArr[i2 + 10] & 255);
                                int i65 = i2 + 11;
                                qt.y0(150, (bArr[i65] >> 7) & 1);
                                int i66 = nt.f8637c;
                                if (i66 == 34 || i66 == 39) {
                                    qt.y0(204, (bArr[i65] >> 6) & 1);
                                    qt.y0(205, (bArr[i65] >> 5) & 1);
                                    qt.y0(206, (bArr[i65] >> 4) & 1);
                                    qt.y0(207, (bArr[i65] >> 0) & 3);
                                    qt.y0(208, bArr[i2 + 12] & 255);
                                    qt.y0(220, bArr[i2 + 13] & 255);
                                } else {
                                    qt.y0(177, (bArr[i65] >> 6) & 1);
                                    qt.y0(178, (bArr[i65] >> 2) & 15);
                                    qt.y0(149, bArr[i65] & 3);
                                    int i67 = i2 + 12;
                                    qt.y0(209, (bArr[i67] >> 7) & 1);
                                    qt.y0(210, (bArr[i67] >> 6) & 1);
                                    qt.y0(211, (bArr[i67] >> 5) & 1);
                                    qt.y0(212, (bArr[i67] >> 4) & 1);
                                    qt.y0(213, (bArr[i67] >> 0) & 15);
                                    qt.y0(214, bArr[i2 + 13] & 255);
                                    qt.y0(215, bArr[i2 + 14] & 255);
                                    qt.y0(216, bArr[i2 + 15] & 255);
                                    qt.y0(217, bArr[i2 + 16] & 255);
                                }
                                break;
                        }
                        break;
                }
                while (i9 < i3 - 3) {
                    if (bArr[i9 + 2] != 47 || bArr[i9 + 3] != 48) {
                        i9++;
                    }
                    break;
                }
                qt.L(new String(bArr, i2 + 2, i9));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6311b.j();
        qt.q0(this.J);
        qt.p0(this.f6332w);
        u0.c.f17386m.d(this.B);
        l0.b0.p0(this.C);
        l0.b0.p0(this.I);
        o1.h.f16865a.d(this.H);
        l0.b0.p0(this.D);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 221) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            n3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr[0] != 27) {
                this.f6327r = 0;
            }
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (p3(iArr, 1)) {
                r3(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (iArr[0] != 2) {
                z.k.s(227, 169, 2, iArr[0], iArr[1]);
                return;
            } else {
                z.k.s(227, 169, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
        }
        if (i2 == 32) {
            z.k.s(227, 51, 5, iArr[0], this.f6333x[this.f6334y % 2], 37, 33, 170);
            z.k.s(227, 51, 5, iArr[0], this.f6333x[this.f6334y % 2], 37, 33, 170);
            z.k.s(227, 51, 5, iArr[0], this.f6333x[this.f6334y % 2], 37, 33, 170);
            int i3 = this.f6334y + 1;
            this.f6334y = i3;
            this.f6334y = i3 % 2;
            return;
        }
        if (i2 == 1003) {
            if (p3(iArr, 1)) {
                z.k.s(227, 132, 1, iArr[0] != 0 ? 0 : 255);
                return;
            }
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length < 1) {
                return;
            }
            int i4 = nt.f8633a;
            if (i4 == 327960 || i4 == 393496) {
                t3(iArr[0]);
                return;
            } else {
                s3(iArr[0]);
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 1280) / a.f.w();
                int i5 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
                z.k.s(227, 201, 4, 2, (i5 >> 4) & 255, (i5 & 240) | ((iW >> 8) & 15), iW & 255);
                return;
            }
            return;
        }
        if (i2 == 48) {
            if (p3(iArr, 1)) {
                z.k.s(227, 144, 2, 83, 0);
            }
        } else if (i2 == 49 && p3(iArr, 1)) {
            u3(iArr[0]);
        }
    }

    public final int b3(int i2) {
        if (this.f6328s == 0) {
            int i3 = this.f6329t;
            if (i3 <= 10 && i3 > 0) {
                if (i2 >= i3) {
                    return 15;
                }
                return i2 * (10 / i3);
            }
            int i4 = i3 / 10;
            if (i4 != 0) {
                return i2 / i4;
            }
        }
        return 0;
    }

    public final int c3(int i2) {
        if (this.f6330u == 0) {
            int i3 = this.f6331v;
            if (i3 <= 10 && i3 > 0) {
                if (i2 >= i3) {
                    return 15;
                }
                return i2 * (10 / i3);
            }
            int i4 = i3 / 10;
            if (i4 != 0) {
                return i2 / i4;
            }
        }
        return 0;
    }

    public final void d3(int i2) {
        Z0(32, new int[]{i2}, null, null);
    }

    public final void e3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 168, 2, i2, 0);
    }

    public final void n3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public String o3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final boolean p3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void q3() {
        try {
            if (o3().equals("com.syu.carinfo.rzc.gs4.Rzc_Gs8_AirControlAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.gs4.Rzc_Gs8_AirControlAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void r3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 224, 2, b2, 1);
        a.i.a0(100L);
        z.k.s(227, 224, 2, b2, 0);
    }

    public final void s3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        int iB = this.f6311b.b(1, 0);
        int i3 = K;
        if (iB != i3) {
            this.f6311b.g(1, i3);
        }
        if (i2 == 0) {
            K = 1;
        }
        if (i2 == 1) {
            K = 2;
        }
        if (i2 == 2) {
            K = 7;
        }
        if (i2 == 3) {
            K = 8;
        }
        z.k.s(227, 167, 1, (byte) K);
        qt.y0(Process.MEDIA_UID, i2);
    }

    public final void t3(int i2) {
        z.k.s(227, 199, 1, (byte) i2);
    }

    public final void u3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        L = i2;
        qt.y0(163, i2);
        int iB = this.f6311b.b(2, 0);
        int i3 = L;
        if (iB != i3) {
            this.f6311b.g(2, i3);
        }
    }
}
