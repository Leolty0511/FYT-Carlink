package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class gc extends lt {
    public static int C = 0;
    public static int D = 0;
    public static int E = 10;
    public static int F = 10;
    public static int G = 10;
    public static int H = 7;
    public static int I = 7;
    public static int J = 1;
    public static int K = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5427c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5428d = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 21}, new int[]{28, 24}, new int[]{29, 54}, new int[]{30, 38}, new int[]{31, 3}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 4}, new int[]{37, 29}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 13}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 3}, new int[]{46, 18}, new int[]{47, 34}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 55}, new int[]{53, 18}, new int[]{54, 53}, new int[]{55, 22}, new int[]{56, 66}, new int[]{57, 65}, new int[]{58, 78}, new int[]{59, 64}, new int[]{60, 16}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5429e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5430f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5431g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5432h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5433i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5434j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5435k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5436l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f5437m = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f5438n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5439o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5440p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5441q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f5442r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.g0 f5443s = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f5444t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f5445u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f5446v = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f5447w = 4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f5448x = 5;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f5449y = 6;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f5450z = 7;
    public final int A = 8;
    public final int B = 9;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 7, 6, (byte) time.minute, (byte) time.hour, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gc.this.f5436l);
            gc.this.f5434j = 7;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gc gcVar = gc.this;
            int i2 = gcVar.f5434j - 1;
            gcVar.f5434j = i2;
            if (i2 <= 0) {
                l0.b0.p0(gcVar.f5436l);
                gc.this.f5434j = 7;
                return;
            }
            int i3 = u0.b.f17306a0;
            if (i3 != 1) {
                if (i3 == 0) {
                    z.k.s(227, 5, 4, 1);
                    return;
                }
                return;
            }
            z.k.s(227, 5, 4, 0);
            gc gcVar2 = gc.this;
            gcVar2.f3(gcVar2.f5443s.b(1, 0));
            z.k.s(227, 6, 144, 1, 0);
            int i4 = nt.f8637c;
            if (i4 != 4 && i4 != 5) {
                if (i4 == 7) {
                    gc gcVar3 = gc.this;
                    gcVar3.e3(gcVar3.f5443s.b(2, 0));
                    if (SystemProperties.getBoolean("persist.fyt.launchertzyguide", false)) {
                        z.k.s(227, 6, 3, 1, 2);
                        return;
                    } else {
                        gc gcVar4 = gc.this;
                        gcVar4.d3(gcVar4.f5443s.b(8, 1));
                        return;
                    }
                }
                if (i4 != 8) {
                    if (i4 == 10) {
                        if (SystemProperties.getBoolean("persist.fyt.launchertzyguide", false)) {
                            z.k.s(227, 6, 3, 1, 2);
                            return;
                        } else {
                            gc gcVar5 = gc.this;
                            gcVar5.d3(gcVar5.f5443s.b(8, 1));
                            return;
                        }
                    }
                    if (i4 != 21) {
                        gc gcVar6 = gc.this;
                        gcVar6.d3(gcVar6.f5443s.b(8, 1));
                        return;
                    }
                }
            }
            gc gcVar7 = gc.this;
            gcVar7.b3(gcVar7.f5443s.b(3, 10), gc.this.f5443s.b(4, 10), gc.this.f5443s.b(5, 10));
            gc gcVar8 = gc.this;
            gcVar8.a3(gcVar8.f5443s.b(6, 7), gc.this.f5443s.b(7, 7));
            gc gcVar9 = gc.this;
            gcVar9.c3(gcVar9.f5443s.b(9, 10));
            gc gcVar10 = gc.this;
            gcVar10.d3(gcVar10.f5443s.b(8, 1));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 0:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 27:
                    z.k.s(227, 7, 238, 32, 133, 0);
                    break;
                case 1:
                    z.k.s(227, 7, 238, 32, 1, 0);
                    break;
                case 3:
                    z.k.s(227, 7, 238, 32, 2, 0);
                    break;
                case 4:
                    z.k.s(227, 7, 238, 32, 3, 0);
                    break;
                case 5:
                    z.k.s(227, 7, 238, 32, 4, 0);
                    break;
                case 6:
                    z.k.s(227, 7, 238, 32, 129, 0);
                    break;
                case 7:
                case 10:
                    z.k.s(227, 7, 238, 32, 5, 0);
                    break;
                case 9:
                case 35:
                    z.k.s(227, 7, 238, 32, 130, 0);
                    break;
                case 19:
                    z.k.s(227, 7, 238, 32, 131, 0);
                    break;
                case 20:
                case 21:
                    z.k.s(227, 7, 238, 32, 132, 0);
                    break;
                case 22:
                    z.k.s(227, 7, 238, 32, 15, 0);
                    break;
                case 23:
                case 24:
                    z.k.s(227, 7, 238, 32, 16, 0);
                    break;
                case 25:
                    z.k.s(227, 7, 238, 32, 17, 0);
                    break;
                case 26:
                case 31:
                case 32:
                    z.k.s(227, 7, 238, 32, 19, 0);
                    break;
                case 33:
                    z.k.s(227, 7, 238, 32, 0, 0);
                    break;
                case 34:
                    z.k.s(227, 7, 238, 32, 20, 0);
                    break;
                case 36:
                    z.k.s(227, 7, 238, 32, 135, 0);
                    break;
                case 37:
                    z.k.s(227, 7, 238, 32, 136, 0);
                    break;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gc.this.f5438n = u0.b.f17359s0;
            if ((gc.this.f5438n <= 11.25d && gc.this.f5438n >= 0.0f) || (gc.this.f5438n >= 348.75d && gc.this.f5438n <= 360.0f)) {
                gc.this.f5440p = 0;
            } else if (gc.this.f5438n > 11.25d && gc.this.f5438n < 33.75d) {
                gc.this.f5440p = 15;
            } else if (gc.this.f5438n >= 33.75d && gc.this.f5438n <= 56.25d) {
                gc.this.f5440p = 14;
            } else if (gc.this.f5438n > 56.25d && gc.this.f5438n < 78.75d) {
                gc.this.f5440p = 13;
            } else if (gc.this.f5438n >= 78.75d && gc.this.f5438n <= 101.25d) {
                gc.this.f5440p = 12;
            } else if (gc.this.f5438n > 101.25d && gc.this.f5438n < 123.75d) {
                gc.this.f5440p = 11;
            } else if (gc.this.f5438n >= 123.75d && gc.this.f5438n <= 146.25d) {
                gc.this.f5440p = 10;
            } else if (gc.this.f5438n > 146.25d && gc.this.f5438n < 168.75d) {
                gc.this.f5440p = 9;
            } else if (gc.this.f5438n > 168.75d && gc.this.f5438n < 191.25d) {
                gc.this.f5440p = 8;
            } else if (gc.this.f5438n > 191.25d && gc.this.f5438n < 213.75d) {
                gc.this.f5440p = 7;
            } else if (gc.this.f5438n > 213.75d && gc.this.f5438n < 236.25d) {
                gc.this.f5440p = 6;
            } else if (gc.this.f5438n > 236.25d && gc.this.f5438n < 258.75d) {
                gc.this.f5440p = 5;
            } else if (gc.this.f5438n > 258.75d && gc.this.f5438n < 281.25d) {
                gc.this.f5440p = 4;
            } else if (gc.this.f5438n > 281.25d && gc.this.f5438n < 303.75d) {
                gc.this.f5440p = 3;
            } else if (gc.this.f5438n > 303.75d && gc.this.f5438n < 326.25d) {
                gc.this.f5440p = 2;
            } else if (gc.this.f5438n <= 326.25d || gc.this.f5438n >= 348.75d) {
                gc.this.f5440p = 0;
            } else {
                gc.this.f5440p = 1;
            }
            if (gc.this.f5440p != gc.this.f5439o) {
                z.k.s(227, 6, 134, gc.this.f5440p, 0);
                gc gcVar = gc.this;
                gcVar.f5439o = gcVar.f5440p;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            int i4 = i3 > 4 ? 7 : 14;
            if (i3 == 0) {
                i2 = 5;
            } else if (i3 == 2) {
                i2 = 4;
            } else if (i3 == 3) {
                i2 = 3;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 2;
            } else {
                i2 = 1;
            }
            if (u0.b.D == 2) {
                z.k.s(227, 6, 9, i4, i2);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 4 || i2 == 5 || i2 == 8 || i2 == 21) {
            y0.f.C0 = 30;
        } else {
            y0.f.C0 = 18;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f5443s.a();
        qt.z(this.f5437m);
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f5435k, 1);
        yVar.a(this.f5429e, 1);
        w0.e.f17815a.a(this.f5429e, 1);
        w0.e.f17819e.a(this.f5429e, 1);
        u0.c.f17392s.a(this.f5429e, 1);
        u0.c.f17393t.a(this.f5429e, 1);
        u0.c.f17374a.a(this.f5429e, 1);
        h0.d.f2462a.a(this.f5442r, 1);
        o1.h.f16865a.a(this.f5441q, 1);
        qt.z(this.f5433i);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0153  */
    /* JADX WARN: Code duplicated, block: B:45:0x015c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0182  */
    /* JADX WARN: Code duplicated, block: B:56:0x018b  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 64) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            if (i5 != 0) {
                qt.a(1);
            } else if (i5 == 0) {
                qt.a(0);
            }
            if (bArr[i4] == 1) {
                qt.y0(Process.MEDIA_UID, 2);
            } else if (bArr[i4] == 2) {
                qt.y0(Process.MEDIA_UID, 1);
            }
            this.f5432h = bArr[i4] & 255;
        }
        if (b2 == 66) {
            int i6 = bArr[i2 + 2] & 255;
            if (i6 != 0) {
                qt.a(1);
                return;
            } else {
                if (i6 == 0) {
                    qt.a(0);
                    return;
                }
                return;
            }
        }
        if (b2 == 82) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                qt.y0(103, bArr[i2 + 3] & 255);
                return;
            }
            switch (b3) {
                case 16:
                    qt.y0(106, bArr[i2 + 3] & 255);
                    break;
                case 17:
                    qt.y0(107, bArr[i2 + 3] & 255);
                    break;
                case 18:
                    qt.y0(108, bArr[i2 + 3] & 255);
                    break;
                case 19:
                    qt.y0(109, bArr[i2 + 3] & 255);
                    break;
                case 20:
                    qt.y0(110, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 96) {
            qt.y0(104, bArr[i2 + 2] + 1);
            qt.y0(113, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                }
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            }
            if (i7 != 5) {
                switch (i7) {
                    case 8:
                        qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                        break;
                    case 9:
                        u0.d.A3(((bArr[i2 + 4] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        break;
                    case 10:
                        qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                }
            }
            int i11 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i11 >> 6) & 1);
                qt.y0(1, (i11 >> 7) & 1);
            } else {
                qt.y0(2, (i11 >> 7) & 1);
                qt.y0(1, (i11 >> 6) & 1);
            }
            qt.y0(4, (i11 >> 5) & 1);
            qt.y0(3, (i11 >> 4) & 1);
            qt.y0(5, (i11 >> 3) & 1);
            qt.y0(0, (i11 >> 2) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                if (bArr[i2] >= 6) {
                    int i12 = i2 + 2;
                    if ((bArr[i12] & 255) != 255) {
                        int i13 = bArr[i12] & 128;
                        int i14 = bArr[i12] & 127;
                        u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((i13 != 0 ? 1320 - ((i14 * 9) / 5) : ((i14 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : i13 != 0 ? 1000 - (i14 * 10) : (i14 * 10) + 1000);
                    } else {
                        int i15 = i2 + 3;
                        if ((bArr[i15] & 255) != 255) {
                            u0.d.B3(((((bArr[i15] & 255) * 10) + 1000) | 268435456) & (-1));
                        } else {
                            u0.d.A3(0);
                        }
                    }
                } else {
                    int i16 = i2 + 2;
                    int i17 = bArr[i16] & 128;
                    int i18 = bArr[i16] & 127;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((i17 != 0 ? 1320 - ((i18 * 9) / 5) : ((i18 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : i17 != 0 ? 1000 - (i18 * 10) : (i18 * 10) + 1000);
                }
                break;
            case 2:
                if (nt.a()) {
                    int i19 = bArr[i2 + 2] & 255;
                    this.f5427c = i19;
                    int i20 = 0;
                    while (true) {
                        iArr = this.f5428d;
                        if (i20 < iArr.length) {
                            int i21 = this.f5427c;
                            if (i21 != iArr[i20][0]) {
                                i20++;
                            } else if (i21 != 0) {
                                this.f5426b = i20;
                            }
                        }
                    }
                    if (bArr[i2] != 5) {
                        if (bArr[i2] == 6) {
                            int i22 = bArr[i2 + 3] & 255;
                            int i23 = this.f5427c;
                            if (i23 != 25) {
                                if (i23 != 26) {
                                    if (i23 != 36) {
                                        if (i23 == 38) {
                                            for (int i24 = 0; i24 < (i22 & 255); i24++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                        } else if (i23 == 39) {
                                            for (int i25 = 0; i25 < (i22 & 255); i25++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                        } else if (i23 != 132) {
                                            if (i23 != 133) {
                                                int i26 = i22 & 255;
                                                if (i26 == 1) {
                                                    if (i20 < iArr.length) {
                                                        l0.b0.l0(iArr[i20][1], 0);
                                                    }
                                                } else if (i26 == 0) {
                                                    int i27 = this.f5426b;
                                                    if (i27 < iArr.length && i27 != 255) {
                                                        l0.b0.l0(iArr[i27][1], 1);
                                                    }
                                                    this.f5426b = 255;
                                                }
                                            }
                                        }
                                    } else if ((i22 & 255) == 1) {
                                        if (nt.f8637c != 31) {
                                            l0.b0.l0(5, 0);
                                            l0.b0.l0(5, 1);
                                        } else {
                                            l0.b0.l0(55, 0);
                                            l0.b0.l0(55, 1);
                                        }
                                    }
                                }
                                for (int i28 = 0; i28 < (i22 & 255); i28++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            for (int i29 = 0; i29 < (i22 & 255); i29++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        }
                        break;
                    } else if (i19 == 0) {
                        int i30 = this.f5426b;
                        if (i30 < iArr.length && i30 != 255) {
                            l0.b0.l0(iArr[i30][1], 1);
                        }
                        this.f5426b = 255;
                    } else if (i20 < iArr.length) {
                        l0.b0.l0(iArr[i20][1], 0);
                    }
                }
                break;
            case 3:
                int i31 = i2 + 2;
                int i32 = bArr[i31] & 127;
                int i33 = i2 + 3;
                int i34 = bArr[i33] & 127;
                int i35 = bArr[i2 + 4] & 255;
                int i36 = bArr[i2 + 5] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i32 = bArr[i33] & 127;
                    i34 = bArr[i31] & 127;
                }
                qt.y0(37, (i32 < 50 || i32 > 100) ? 0 : 1);
                if (i32 == 0) {
                    qt.y0(27, -2);
                } else if (i32 == 30) {
                    qt.y0(27, -3);
                } else if (i32 == 127) {
                    qt.y0(27, -1);
                } else if (i32 == 39) {
                    qt.y0(27, -2);
                } else if (i32 != 40) {
                    qt.y0(27, i32);
                } else {
                    qt.y0(27, -3);
                }
                if (i34 == 0) {
                    qt.y0(28, -2);
                } else if (i34 == 30) {
                    qt.y0(28, -3);
                } else if (i34 == 127) {
                    qt.y0(28, -1);
                } else if (i34 == 39) {
                    qt.y0(28, -2);
                } else if (i34 != 40) {
                    qt.y0(28, i34);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(21, i35 & 255);
                int[] iArr2 = new int[1];
                iArr2[0] = ((i36 >> 7) & 1) == 1 ? 1 : 0;
                qt.y0(12, iArr2);
                qt.y0(65, (i36 >> 6) & 1);
                qt.y0(16, (i36 >> 5) & 1);
                qt.y0(20, (i36 >> 4) & 1);
                qt.y0(19, (i36 >> 3) & 1);
                qt.y0(18, (bArr[i2 + 8] >> 0) & 1);
                qt.y0(13, (i36 >> 2) & 1);
                qt.y0(62, (i36 >> 1) & 1);
                qt.y0(11, (i36 >> 0) & 1);
                break;
            case 4:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    u0.d.R2(l0.e0.n(((b5 & 192) >> 6) & 255, 1));
                    int i37 = ((b5 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.S2(l0.e0.n(i37, 2));
                    u0.d.T2(l0.e0.n(i37, 2));
                    u0.d.U2(l0.e0.n(b5 & 3 & 255, 1));
                    u0.d.D2(l0.e0.n(((b4 & 192) >> 6) & 255, 1));
                    int i38 = ((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.E2(l0.e0.n(i38, 2));
                    u0.d.F2(l0.e0.n(i38, 2));
                    u0.d.G2(l0.e0.n(b4 & 3 & 255, 1));
                }
                break;
            case 5:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 1) & 1);
                    qt.y0(2, (b6 >> 0) & 1);
                } else {
                    qt.y0(1, (b6 >> 0) & 1);
                    qt.y0(2, (b6 >> 1) & 1);
                }
                qt.y0(4, (b6 >> 3) & 1);
                qt.y0(3, (b6 >> 2) & 1);
                qt.y0(5, (b6 >> 4) & 1);
                qt.y0(0, (b6 >> 5) & 1);
                break;
            case 6:
                qt.y0(80, bArr[i2 + 2] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5443s.j();
        h0.d.f2462a.d(this.f5442r);
        qt.q0(this.f5437m);
        o1.h.f16865a.d(this.f5441q);
        u0.c.f17386m.d(this.f5435k);
        l0.b0.p0(this.f5436l);
        w0.e.f17815a.d(this.f5429e);
        w0.e.f17819e.d(this.f5429e);
        u0.c.f17392s.d(this.f5429e);
        u0.c.f17393t.d(this.f5429e);
        u0.c.f17374a.d(this.f5429e);
        qt.q0(this.f5433i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr != null) {
                e3(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (iArr != null) {
                z.k.s(227, 6, -125, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr != null) {
                b3(iArr[0], iArr[1], iArr[2]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (iArr != null) {
                a3(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (iArr != null) {
                z.k.s(227, 6, -118, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 5) {
            if (iArr != null) {
                c3(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 8) {
            if (iArr != null) {
                d3(iArr[0]);
            }
        } else if (i2 == 1005 && iArr != null && iArr.length > 0) {
            if (iArr[0] == 9) {
                z.k.s(227, 5, -124, 5);
                return;
            }
            if (iArr[0] == 10) {
                z.k.s(227, 5, -124, 10);
            } else if (iArr[0] >= 5) {
                z.k.s(227, 5, -124, iArr[0] + 1);
            } else {
                z.k.s(227, 5, -124, iArr[0]);
            }
        }
    }

    public final void a3(int i2, int i3) {
        H = i2;
        I = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, I);
        int iB = this.f5443s.b(7, 7);
        int i4 = I;
        if (iB != i4) {
            this.f5443s.g(7, i4);
        }
        qt.y0(101, H);
        int iB2 = this.f5443s.b(6, 7);
        int i5 = H;
        if (iB2 != i5) {
            this.f5443s.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        E = i2;
        F = i3;
        G = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, E);
        int iB = this.f5443s.b(3, 10);
        int i5 = E;
        if (iB != i5) {
            this.f5443s.g(3, i5);
        }
        qt.y0(99, F);
        int iB2 = this.f5443s.b(4, 10);
        int i6 = F;
        if (iB2 != i6) {
            this.f5443s.g(4, i6);
        }
        qt.y0(100, G);
        int iB3 = this.f5443s.b(5, 10);
        int i7 = G;
        if (iB3 != i7) {
            this.f5443s.g(5, i7);
        }
    }

    public final void c3(int i2) {
        K = i2;
        z.k.s(227, 5, 5, i2);
        qt.y0(112, K);
        int iB = this.f5443s.b(9, 10);
        int i3 = K;
        if (iB != i3) {
            this.f5443s.g(9, i3);
        }
    }

    public final void d3(int i2) {
        J = i2;
        z.k.s(227, 6, 3, 1, i2);
        qt.y0(111, J);
        int iB = this.f5443s.b(8, 1);
        int i3 = J;
        if (iB != i3) {
            this.f5443s.g(8, i3);
        }
    }

    public final void e3(int i2) {
        D = i2;
        qt.y0(105, i2);
        int iB = this.f5443s.b(2, 0);
        int i3 = D;
        if (iB != i3) {
            this.f5443s.g(2, i3);
        }
    }

    public final void f3(int i2) {
        C = i2;
        qt.y0(559, i2);
        int iB = this.f5443s.b(1, 0);
        int i3 = C;
        if (iB != i3) {
            this.f5443s.g(1, i3);
        }
    }
}
