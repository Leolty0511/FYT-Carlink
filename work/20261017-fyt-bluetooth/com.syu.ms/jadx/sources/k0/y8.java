package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class y8 extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12391h;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12404u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f12405v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f12385b = new int[7][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f12386c = new int[7][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12387d = new int[16][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12388e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12389f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12390g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12392i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f12393j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 13}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, -1}, new int[]{16, 1}, new int[]{17, 5}, new int[]{18, 24}, new int[]{19, 54}, new int[]{20, 25}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f12394k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 13}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 13}, new int[]{12, 18}, new int[]{13, 6}, new int[]{14, 1}, new int[]{15, 29}, new int[]{16, 0}, new int[]{17, 54}, new int[]{18, 5}, new int[]{19, 54}, new int[]{20, 24}, new int[]{21, 74}, new int[]{22, 75}, new int[]{23, 22}, new int[]{24, 53}, new int[]{25, 4}, new int[]{26, 3}, new int[]{27, 64}, new int[]{28, 16}, new int[]{29, 11}, new int[]{30, 66}, new int[]{31, 65}, new int[]{32, 15}, new int[]{33, 1}, new int[]{34, 58}, new int[]{35, 63}, new int[]{36, 38}, new int[]{37, 55}, new int[]{38, 63}, new int[]{39, 25}, new int[]{40, 1}, new int[]{41, 17}, new int[]{42, 34}, new int[]{43, 35}, new int[]{44, 32}, new int[]{45, 33}, new int[]{48, 62}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12395l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12396m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f12397n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f12398o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12399p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f12400q = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f12401r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12402s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12403t = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8 y8Var = y8.this;
            int i2 = y8Var.f12390g;
            if (i2 > 0) {
                y8Var.f12390g = i2 - 1;
            }
            if (y8Var.f12390g == 0) {
                y8.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(y8.this.f12399p);
            y8.this.f12397n = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8 y8Var = y8.this;
            byte b2 = (byte) (y8Var.f12397n - 1);
            y8Var.f12397n = b2;
            if (b2 > 0) {
                z.k.s(227, 3, 106, 5, 1, 195);
            } else {
                l0.b0.p0(y8Var.f12399p);
                y8.this.f12397n = (byte) 5;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (y8.this.f12400q.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                y8.this.f12400q = h0.c.f2437h;
                if (y8.this.f12400q == null) {
                    y8.this.f12400q = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                y8 y8Var = y8.this;
                y8Var.l3(y8Var.f12400q);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.m3((byte) 10);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (time.year - 1792), time.month + 1, time.monthDay, 0);
        }
    }

    public static void a3() {
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        int i2 = nt.f8637c;
        int i3 = 0;
        if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 6) {
            int[] iArr = new int[15];
            for (int i4 = 0; i4 < 15; i4++) {
                iArr[i4] = 32;
            }
            iArr[0] = 13;
            iArr[1] = 225;
            iArr[2] = b3();
            int i5 = u0.b.D;
            if (i5 == 1) {
                int i6 = w0.d.f17796h;
                if (i6 - 65536 == 0 || 1 == i6 - 65536 || 2 == i6 - 65536) {
                    int i7 = w0.d.f17797i;
                    iArr[3] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                    iArr[4] = ((i7 % 10000) / 1000) + 48;
                    iArr[5] = ((i7 % 1000) / 100) + 48;
                    iArr[6] = 46;
                    iArr[7] = ((i7 % 100) / 10) + 48;
                    iArr[8] = (i7 % 10) + 48;
                    iArr[9] = 77;
                    iArr[10] = 104;
                    iArr[11] = 122;
                } else {
                    int i8 = w0.d.f17797i;
                    iArr[3] = i8 / 10000 == 0 ? (i8 / 10000) + 32 : (i8 / 10000) + 48;
                    iArr[4] = (i8 % 10000) / 1000 == 0 ? ((i8 % 10000) / 1000) + 32 : ((i8 % 10000) / 1000) + 48;
                    iArr[5] = ((i8 % 1000) / 100) + 48;
                    iArr[6] = ((i8 % 100) / 10) + 48;
                    iArr[7] = (i8 % 10) + 48;
                    iArr[8] = 75;
                    iArr[9] = 104;
                    iArr[10] = 122;
                }
            } else if (i5 != 4) {
                if (i5 != 6) {
                    if ((i5 == 8 || i5 == 9) && u0.b.s3 != 0) {
                        iArr[3] = 84;
                        int i9 = u0.b.r3 % 10000;
                        int i10 = i9 / 1000;
                        if (i10 > 0) {
                            iArr[4] = i10 + 48;
                            b4 = (byte) 1;
                        } else {
                            b4 = 0;
                        }
                        int i11 = i9 % 1000;
                        int i12 = i11 / 100;
                        if (i12 > 0 || (i12 == 0 && b4 != 0)) {
                            iArr[b4 + 4] = i12 + 48;
                            b4 = (byte) (b4 + 1);
                        }
                        int i13 = i11 % 100;
                        int i14 = i13 / 10;
                        if (i14 > 0 || (i14 == 0 && b4 != 0)) {
                            iArr[b4 + 4] = i14 + 48;
                            b4 = (byte) (b4 + 1);
                        }
                        int i15 = i13 % 10;
                        if (i15 > 0 || (i15 == 0 && b4 != 0)) {
                            iArr[b4 + 4] = (i15 / 1) + 48;
                        }
                        int i16 = u0.b.t3;
                        int i17 = (i16 / 60) % 60;
                        iArr[10] = (i17 / 10) + 48;
                        iArr[11] = (i17 % 10) + 48;
                        iArr[12] = 58;
                        int i18 = i16 % 60;
                        iArr[13] = (i18 / 10) + 48;
                        iArr[14] = (i18 % 10) + 48;
                    }
                } else if (d1.d.f1570c == 1) {
                    int i19 = d1.d.f1572e;
                    if (i19 / 10 > 0) {
                        iArr[3] = (i19 / 10) + 48;
                    }
                    iArr[4] = (i19 % 10) + 48;
                    iArr[5] = 45;
                    int i20 = d1.d.f1571d / 100;
                    int i21 = i20 / 10000;
                    if (i21 > 0) {
                        iArr[6] = i21 + 48;
                    }
                    iArr[7] = ((i20 % 10000) / 1000) + 48;
                    iArr[8] = ((i20 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i20 % 100) / 10) + 48;
                    iArr[11] = ((i20 % 10) / 1) + 48;
                    iArr[12] = 77;
                    iArr[13] = 104;
                    iArr[14] = 122;
                }
            } else if (o0.e.C != 0) {
                iArr[3] = 84;
                int i22 = o0.e.B % 10000;
                int i23 = i22 / 1000;
                if (i23 > 0) {
                    iArr[3] = i23 + 48;
                    b2 = (byte) 1;
                } else {
                    b2 = 0;
                }
                int i24 = i22 % 1000;
                int i25 = i24 / 100;
                if (i25 > 0) {
                    iArr[b2 + 4] = i25 + 48;
                    b2 = (byte) (b2 + 1);
                }
                int i26 = i24 % 100;
                int i27 = i26 / 10;
                if (i27 > 0) {
                    iArr[b2 + 4] = i27 + 48;
                    b2 = (byte) (b2 + 1);
                }
                int i28 = i26 % 10;
                if (i28 > 0) {
                    iArr[b2 + 4] = (i28 / 1) + 48;
                }
                int i29 = o0.e.f16794r;
                int i30 = (i29 / 60) % 60;
                int i31 = i30 / 10;
                if (i31 > 0) {
                    iArr[10] = i31 + 48;
                    b3 = (byte) 1;
                } else {
                    b3 = 0;
                }
                int i32 = i30 % 10;
                if (i32 > 0) {
                    iArr[b3 + 10] = i32 + 48;
                    b3 = (byte) (b3 + 1);
                }
                iArr[b3 + 10] = 58;
                byte b7 = (byte) (b3 + 1);
                int i33 = i29 % 60;
                int i34 = i33 / 10;
                if (i34 > 0) {
                    iArr[b7 + 10] = i34 + 48;
                    b7 = (byte) (b7 + 1);
                }
                int i35 = i33 % 10;
                if (i35 > 0) {
                    iArr[b7 + 10] = i35 + 48;
                }
            }
            int[] iArr2 = new int[16];
            iArr2[0] = 227;
            while (i3 < 15) {
                int i36 = i3 + 1;
                iArr2[i36] = (byte) iArr[i3];
                i3 = i36;
            }
            z.k.s(iArr2);
            return;
        }
        int[] iArr3 = new int[27];
        for (int i37 = 0; i37 < 27; i37++) {
            iArr3[i37] = 32;
        }
        iArr3[0] = 25;
        iArr3[1] = 146;
        iArr3[2] = b3();
        switch (u0.b.D) {
            case 1:
                int i38 = w0.d.f17796h;
                if (i38 - 65536 == 0 || 1 == i38 - 65536 || 2 == i38 - 65536) {
                    if (i38 - 65536 == 0) {
                        byte b8 = (byte) 1;
                        iArr3[3] = 70;
                        byte b9 = (byte) (b8 + 1);
                        iArr3[b8 + 3] = 77;
                        b5 = (byte) (b9 + 1);
                        iArr3[b9 + 3] = 49;
                    } else if (1 == i38 - 65536) {
                        byte b10 = (byte) 1;
                        iArr3[3] = 70;
                        byte b11 = (byte) (b10 + 1);
                        iArr3[b10 + 3] = 77;
                        b5 = (byte) (b11 + 1);
                        iArr3[b11 + 3] = 50;
                    } else {
                        byte b12 = (byte) 1;
                        iArr3[3] = 70;
                        byte b13 = (byte) (b12 + 1);
                        iArr3[b12 + 3] = 77;
                        b5 = (byte) (b13 + 1);
                        iArr3[b13 + 3] = 50;
                    }
                    byte b14 = (byte) (b5 + 1);
                    iArr3[b5 + 3] = 32;
                    byte b15 = (byte) (b14 + 1);
                    iArr3[b14 + 3] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                    byte b16 = (byte) (b15 + 1);
                    iArr3[b15 + 3] = 32;
                    byte b17 = (byte) (b16 + 1);
                    int i39 = b16 + 3;
                    int i40 = w0.d.f17797i;
                    iArr3[i39] = i40 / 10000 == 0 ? (i40 / 10000) + 32 : (i40 / 10000) + 48;
                    byte b18 = (byte) (b17 + 1);
                    iArr3[b17 + 3] = ((i40 % 10000) / 1000) + 48;
                    byte b19 = (byte) (b18 + 1);
                    iArr3[b18 + 3] = ((i40 % 1000) / 100) + 48;
                    byte b20 = (byte) (b19 + 1);
                    iArr3[b19 + 3] = 46;
                    byte b21 = (byte) (b20 + 1);
                    iArr3[b20 + 3] = ((i40 % 100) / 10) + 48;
                    byte b22 = (byte) (b21 + 1);
                    iArr3[b21 + 3] = (i40 % 10) + 48;
                    byte b23 = (byte) (b22 + 1);
                    iArr3[b22 + 3] = 32;
                    byte b24 = (byte) (b23 + 1);
                    iArr3[b23 + 3] = 77;
                    iArr3[b24 + 3] = 72;
                    iArr3[((byte) (b24 + 1)) + 3] = 90;
                } else {
                    if (i38 - 0 == 0) {
                        byte b25 = (byte) 1;
                        iArr3[3] = 65;
                        byte b26 = (byte) (b25 + 1);
                        iArr3[b25 + 3] = 77;
                        b6 = (byte) (b26 + 1);
                        iArr3[b26 + 3] = 49;
                    } else {
                        byte b27 = (byte) 1;
                        iArr3[3] = 65;
                        byte b28 = (byte) (b27 + 1);
                        iArr3[b27 + 3] = 77;
                        b6 = (byte) (b28 + 1);
                        iArr3[b28 + 3] = 50;
                    }
                    byte b29 = (byte) (b6 + 1);
                    iArr3[b6 + 3] = 32;
                    byte b30 = (byte) (b29 + 1);
                    iArr3[b29 + 3] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                    byte b31 = (byte) (b30 + 1);
                    iArr3[b30 + 3] = 32;
                    byte b32 = (byte) (b31 + 1);
                    int i41 = b31 + 3;
                    int i42 = w0.d.f17797i;
                    iArr3[i41] = i42 / 10000 == 0 ? (i42 / 10000) + 32 : (i42 / 10000) + 48;
                    byte b33 = (byte) (b32 + 1);
                    iArr3[b32 + 3] = (i42 % 10000) / 1000 == 0 ? ((i42 % 10000) / 1000) + 32 : ((i42 % 10000) / 1000) + 48;
                    byte b34 = (byte) (b33 + 1);
                    iArr3[b33 + 3] = ((i42 % 1000) / 100) + 48;
                    byte b35 = (byte) (b34 + 1);
                    iArr3[b34 + 3] = ((i42 % 100) / 10) + 48;
                    byte b36 = (byte) (b35 + 1);
                    iArr3[b35 + 3] = (i42 % 10) + 48;
                    byte b37 = (byte) (b36 + 1);
                    iArr3[b36 + 3] = 32;
                    byte b38 = (byte) (b37 + 1);
                    iArr3[b37 + 3] = 75;
                    iArr3[b38 + 3] = 72;
                    iArr3[((byte) (b38 + 1)) + 3] = 90;
                }
                break;
            case 2:
                byte b39 = (byte) 1;
                iArr3[3] = 32;
                byte b40 = (byte) (b39 + 1);
                iArr3[b39 + 3] = 66;
                byte b41 = (byte) (b40 + 1);
                iArr3[b40 + 3] = 84;
                byte b42 = (byte) (b41 + 1);
                iArr3[b41 + 3] = 32;
                byte b43 = (byte) (b42 + 1);
                iArr3[b42 + 3] = 80;
                byte b44 = (byte) (b43 + 1);
                iArr3[b43 + 3] = 72;
                byte b45 = (byte) (b44 + 1);
                iArr3[b44 + 3] = 79;
                byte b46 = (byte) (b45 + 1);
                iArr3[b45 + 3] = 78;
                iArr3[b46 + 3] = 69;
                iArr3[((byte) (b46 + 1)) + 3] = 32;
                break;
            case 3:
                byte b47 = (byte) 1;
                iArr3[3] = 32;
                byte b48 = (byte) (b47 + 1);
                iArr3[b47 + 3] = 66;
                byte b49 = (byte) (b48 + 1);
                iArr3[b48 + 3] = 84;
                byte b50 = (byte) (b49 + 1);
                iArr3[b49 + 3] = 32;
                byte b51 = (byte) (b50 + 1);
                iArr3[b50 + 3] = 65;
                iArr3[b51 + 3] = 86;
                iArr3[((byte) (b51 + 1)) + 3] = 32;
                break;
            case 4:
                if (o0.e.C != 0) {
                    byte b52 = (byte) 1;
                    iArr3[3] = 77;
                    byte b53 = (byte) (b52 + 1);
                    iArr3[b52 + 3] = 69;
                    byte b54 = (byte) (b53 + 1);
                    iArr3[b53 + 3] = 68;
                    byte b55 = (byte) (b54 + 1);
                    iArr3[b54 + 3] = 73;
                    byte b56 = (byte) (b55 + 1);
                    iArr3[b55 + 3] = 65;
                    iArr3[b56 + 3] = 32;
                    iArr3[((byte) (b56 + 1)) + 3] = 84;
                    int i43 = o0.e.B % 10000;
                    iArr3[10] = (i43 / 1000) + 48;
                    int i44 = (i43 % 100) / 10;
                    int i45 = i43 % 1000;
                    if (i44 != 0) {
                        i45 /= 10;
                    }
                    iArr3[11] = i45 + 48;
                    iArr3[12] = i44 + 48;
                    iArr3[13] = (i43 % 10) + 48;
                    int i46 = o0.e.f16794r;
                    int i47 = (i46 / 60) % 60;
                    iArr3[14] = 32;
                    iArr3[15] = (i47 / 10) + 48;
                    iArr3[16] = (i47 % 10) + 48;
                    iArr3[17] = 32;
                    int i48 = i46 % 60;
                    iArr3[18] = (i48 / 10) + 48;
                    iArr3[19] = (i48 % 10) + 48;
                }
                break;
            case 5:
                byte b57 = (byte) 1;
                iArr3[3] = 32;
                byte b58 = (byte) (b57 + 1);
                iArr3[b57 + 3] = 65;
                byte b59 = (byte) (b58 + 1);
                iArr3[b58 + 3] = 85;
                iArr3[b59 + 3] = 88;
                iArr3[((byte) (b59 + 1)) + 3] = 32;
                break;
            case 6:
                if (d1.d.f1570c == 1) {
                    byte b60 = (byte) 1;
                    iArr3[3] = 84;
                    byte b61 = (byte) (b60 + 1);
                    iArr3[b60 + 3] = 86;
                    byte b62 = (byte) (b61 + 1);
                    iArr3[b61 + 3] = 32;
                    int i49 = d1.d.f1572e;
                    if (i49 / 10 > 0) {
                        iArr3[b62 + 3] = (i49 / 10) + 48;
                        b62 = (byte) (b62 + 1);
                    }
                    byte b63 = (byte) (b62 + 1);
                    iArr3[b62 + 3] = (i49 % 10) + 48;
                    byte b64 = (byte) (b63 + 1);
                    iArr3[b63 + 3] = 45;
                    int i50 = d1.d.f1571d / 100;
                    int i51 = i50 / 10000;
                    if (i51 > 0) {
                        iArr3[b64 + 3] = i51 + 48;
                        b64 = (byte) (b64 + 1);
                    }
                    byte b65 = (byte) (b64 + 1);
                    iArr3[b64 + 3] = ((i50 % 10000) / 1000) + 48;
                    byte b66 = (byte) (b65 + 1);
                    iArr3[b65 + 3] = ((i50 % 1000) / 100) + 48;
                    byte b67 = (byte) (b66 + 1);
                    iArr3[b66 + 3] = 46;
                    byte b68 = (byte) (b67 + 1);
                    iArr3[b67 + 3] = ((i50 % 100) / 10) + 48;
                    byte b69 = (byte) (b68 + 1);
                    iArr3[b68 + 3] = ((i50 % 10) / 1) + 48;
                    byte b70 = (byte) (b69 + 1);
                    iArr3[b69 + 3] = 77;
                    iArr3[b70 + 3] = 104;
                    iArr3[((byte) (b70 + 1)) + 3] = 122;
                }
                break;
            case 7:
                byte b71 = (byte) 1;
                iArr3[3] = 32;
                byte b72 = (byte) (b71 + 1);
                iArr3[b71 + 3] = 73;
                byte b73 = (byte) (b72 + 1);
                iArr3[b72 + 3] = 80;
                byte b74 = (byte) (b73 + 1);
                iArr3[b73 + 3] = 79;
                iArr3[b74 + 3] = 68;
                iArr3[((byte) (b74 + 1)) + 3] = 32;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    byte b75 = (byte) 1;
                    iArr3[3] = 77;
                    byte b76 = (byte) (b75 + 1);
                    iArr3[b75 + 3] = 69;
                    byte b77 = (byte) (b76 + 1);
                    iArr3[b76 + 3] = 68;
                    byte b78 = (byte) (b77 + 1);
                    iArr3[b77 + 3] = 73;
                    iArr3[b78 + 3] = 65;
                    iArr3[((byte) (b78 + 1)) + 3] = 32;
                    int i52 = u0.b.r3 % 10000;
                    iArr3[9] = (i52 / 1000) + 48;
                    int i53 = (i52 % 100) / 10;
                    int i54 = i52 % 1000;
                    if (i53 != 0) {
                        i54 /= 10;
                    }
                    iArr3[10] = i54 + 48;
                    iArr3[11] = i53 + 48;
                    iArr3[12] = (i52 % 10) + 48;
                    int i55 = u0.b.t3;
                    int i56 = (i55 / 60) % 60;
                    iArr3[13] = 32;
                    iArr3[14] = (i56 / 10) + 48;
                    iArr3[15] = (i56 % 10) + 48;
                    iArr3[16] = 32;
                    int i57 = i55 % 60;
                    iArr3[17] = (i57 / 10) + 48;
                    iArr3[18] = (i57 % 10) + 48;
                }
                break;
        }
        int[] iArr4 = new int[28];
        iArr4[0] = 227;
        while (i3 < 27) {
            int i58 = i3 + 1;
            iArr4[i58] = (byte) iArr3[i3];
            i3 = i58;
        }
        z.k.s(iArr4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0049  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static int b3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 != i3 - 65536) {
                    if (2 == i3 - 65536) {
                        i2 = 3;
                    } else if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                if (o0.e.H != 1) {
                    i2 = 13;
                } else {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            case 11:
            default:
                i2 = 0;
                break;
            case 12:
                i2 = 254;
                break;
            case 13:
                i2 = 255;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005b  */
    @Override // k0.lt
    public void S2() {
        qt.z(this.f12403t);
        if (nt.a()) {
            u0.c.f17386m.a(this.f12398o, 1);
            qt.z(this.f12395l);
            w0.e.f17815a.a(this.f12395l, 1);
            w0.e.f17819e.a(this.f12395l, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        int i2 = nt.f8637c;
        if (i2 == 2) {
            mtVar.f8314i = 1;
            mtVar.f8322q = 1;
        } else if (i2 == 3 || i2 == 4) {
            mtVar.f8314i = 1;
            h0.d.f2464c.a(this.f12401r, 1);
            h0.d.f2462a.a(this.f12402s, 1);
        } else if (i2 == 6) {
            mtVar.f8314i = 1;
            mtVar.f8322q = 1;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:305:0x0db2  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[][] iArr;
        int[][] iArr2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -123) {
            qt.y0(162, ((bArr[i2 + 3] & 32) >> 5) | ((bArr[i2 + 2] & 32) << 3));
        }
        if (b3 == -63) {
            int i15 = nt.f8637c;
            if (i15 == 2 || i15 == 3 || i15 == 4 || i15 == 6) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 4];
                qt.y0(231, ((b4 & 128) << 1) | ((b5 >> 7) & 1));
                qt.y0(232, ((b4 & 64) << 2) | ((b5 >> 6) & 1));
                qt.y0(233, ((b4 & 32) << 3) | ((b5 >> 5) & 1));
                qt.y0(234, ((b4 & 16) << 4) | ((b5 >> 3) & 3));
                qt.y0(235, ((b5 >> 1) & 3) | ((b4 & 8) << 5));
                qt.y0(236, ((b6 >> 6) & 3) | ((b4 & 4) << 6));
                return;
            }
            int i16 = i2 + 3;
            qt.y0(180, (bArr[i16] & 128) >> 7);
            int i17 = i2 + 2;
            qt.y0(163, ((bArr[i17] & 32) << 3) | ((bArr[i16] & 32) >> 5));
            qt.y0(164, ((bArr[i17] & 16) << 4) | ((bArr[i16] & 24) >> 3));
            qt.y0(165, ((bArr[i17] & 8) << 5) | ((bArr[i16] & 6) >> 1));
            qt.y0(166, ((bArr[i17] & 4) << 6) | ((bArr[i2 + 4] & 192) >> 6));
            int[] iArr3 = new int[1];
            iArr3[0] = (bArr[i16] & 32) == 0 ? 1 : 0;
            qt.y0(174, iArr3);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(10, (b7 >> 6) & 1);
            int i18 = nt.f8637c;
            if (i18 == 2 || i18 == 3 || i18 == 4 || i18 == 6) {
                i4 = 3;
                qt.y0(13, b7 & 3);
            } else {
                qt.y0(53, (b7 >> 5) & 1);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(62, (b7 >> 2) & 1);
                i4 = 3;
            }
            int i19 = nt.f8637c;
            if (i19 == i4 || i19 == 4) {
                qt.y0(66, (b9 >> 7) & 1);
                qt.y0(17, (b9 >> 6) & 1);
            } else {
                qt.y0(66, (b8 >> 7) & 1);
                qt.y0(17, (b8 >> 6) & 1);
            }
            int i20 = nt.f8637c;
            if (i20 == 2 || i20 == 3 || i20 == 4 || i20 == 6) {
                qt.y0(36, (b8 >> 3) & 1);
                if (b10 != 1) {
                    if (b10 != 3) {
                        if (b10 != 5) {
                            if (b10 != 6) {
                                switch (b10) {
                                    case 11:
                                        i8 = 0;
                                        i6 = 0;
                                        i7 = 0;
                                        i5 = 1;
                                        break;
                                    case 12:
                                        i8 = 0;
                                        i6 = 0;
                                        i5 = 1;
                                        break;
                                    case 13:
                                        i8 = 0;
                                        i7 = 0;
                                        i5 = 1;
                                        break;
                                    case 14:
                                        i8 = 0;
                                        i5 = 1;
                                        break;
                                    default:
                                        i8 = 0;
                                        i5 = 0;
                                        i6 = 0;
                                        i7 = 0;
                                        break;
                                }
                            } else {
                                i8 = 0;
                                i5 = 0;
                                i7 = 0;
                            }
                            i6 = 1;
                        } else {
                            i8 = 0;
                            i5 = 0;
                        }
                        i6 = 1;
                    } else {
                        i8 = 0;
                        i5 = 0;
                        i6 = 0;
                    }
                    i7 = 1;
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 1;
                }
                i9 = 1;
                qt.y0(49, i8);
                qt.y0(18, i5);
                qt.y0(19, i6);
                qt.y0(20, i7);
            } else {
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(29, (b9 >> 0) & 3);
                qt.y0(30, (b9 >> 2) & 3);
                if (b10 == 1 || b10 == 2) {
                    i10 = 0;
                    i11 = 0;
                    i12 = 1;
                } else {
                    if (b10 != 3) {
                        if (b10 != 5) {
                            if (b10 != 6) {
                                switch (b10) {
                                    case 11:
                                        i10 = 0;
                                        i11 = 0;
                                        i12 = 1;
                                        break;
                                    case 12:
                                        i10 = 0;
                                        i12 = 1;
                                        break;
                                    case 13:
                                        i11 = 0;
                                        i12 = 1;
                                        break;
                                    case 14:
                                        i12 = 1;
                                        break;
                                    default:
                                        i12 = 0;
                                        i10 = 0;
                                        i11 = 0;
                                        break;
                                }
                            } else {
                                i12 = 0;
                                i11 = 0;
                            }
                            i10 = 1;
                        } else {
                            i12 = 0;
                        }
                        i10 = 1;
                    } else {
                        i12 = 0;
                        i10 = 0;
                    }
                    i11 = 1;
                }
                qt.y0(49, i12);
                qt.y0(19, i10);
                qt.y0(20, i11);
                i9 = 1;
            }
            int[] iArr4 = new int[i9];
            iArr4[0] = b11;
            qt.y0(21, iArr4);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int[] iArr5 = new int[i9];
                b2 = 255;
                iArr5[0] = b13 & 255;
                qt.y0(27, iArr5);
                int[] iArr6 = new int[i9];
                iArr6[0] = b12 & 255;
                qt.y0(28, iArr6);
            } else {
                b2 = 255;
                int[] iArr7 = new int[i9];
                iArr7[0] = b12 & 255;
                qt.y0(27, iArr7);
                int[] iArr8 = new int[i9];
                iArr8[0] = b13 & 255;
                qt.y0(28, iArr8);
            }
            if (nt.a()) {
                int i21 = bArr[i2 + 13] & b2;
                int i22 = i21 >= 80 ? ((i21 * 5) + 1000) - 400 : 1000 - (400 - (i21 * 5));
                if (i22 > 600) {
                    u0.d.A3(i22);
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 100) {
            int i23 = nt.f8637c;
            if (i23 != 2 && i23 != 3 && i23 != 4 && i23 != 6) {
                qt.y0(136, ((bArr[i2 + 2] & 128) << 1) | ((bArr[i2 + 4] & 192) >> 6));
                int i24 = i2 + 3;
                int i25 = i2 + 5;
                qt.y0(137, ((bArr[i24] & 128) << 1) | ((bArr[i25] & 192) >> 6));
                qt.y0(138, ((bArr[i25] & 32) >> 5) | ((bArr[i24] & 64) << 2));
                return;
            }
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            byte b16 = bArr[i2 + 4];
            byte b17 = bArr[i2 + 5];
            qt.y0(226, ((b14 & 128) << 1) | ((b16 >> 7) & 1));
            qt.y0(227, ((b14 & 64) << 2) | ((b16 >> 6) & 1));
            qt.y0(228, ((b14 & 32) << 3) | ((b16 >> 5) & 1));
            qt.y0(138, ((b15 & 128) << 1) | ((b17 >> 7) & 1));
            qt.y0(229, ((b15 & 64) << 2) | ((b17 >> 6) & 1));
            qt.y0(137, ((b15 & 32) << 3) | ((b17 >> 5) & 1));
            qt.y0(230, ((b17 >> 4) & 1) | ((b15 & 16) << 4));
            return;
        }
        if (b3 == 113) {
            int i26 = nt.f8637c;
            if (i26 == 2 || i26 == 3 || i26 == 4 || i26 == 6) {
                byte b18 = bArr[i2 + 2];
                byte b19 = bArr[i2 + 3];
                byte b20 = bArr[i2 + 4];
                byte b21 = bArr[i2 + 5];
                byte b22 = bArr[i2 + 6];
                byte b23 = bArr[i2 + 7];
                qt.y0(116, (b18 & 256) | ((b19 >> 7) & 1));
                qt.y0(117, b20);
                qt.y0(118, b21);
                qt.y0(119, b22);
                qt.y0(120, b23);
                return;
            }
            return;
        }
        if (b3 == 125) {
            qt.y0(273, bArr[i2 + 3] | ((bArr[i2 + 2] & 128) << 1));
            return;
        }
        if (b3 == -61) {
            byte b24 = bArr[i2 + 2];
            byte b25 = bArr[i2 + 4];
            byte b26 = bArr[i2 + 5];
            byte b27 = bArr[i2 + 6];
            byte b28 = bArr[i2 + 7];
            byte b29 = bArr[i2 + 8];
            byte b30 = bArr[i2 + 9];
            byte b31 = bArr[i2 + 10];
            byte b32 = bArr[i2 + 11];
            qt.y0(237, b24);
            qt.y0(238, b25 & 1);
            qt.y0(239, ((b26 << 8) & 65280) | (b27 & 255));
            qt.y0(240, ((b28 << 8) & 65280) | (b29 & 255));
            qt.y0(i.a.Theme_actionModeShareDrawable, (b30 & 255) * 100);
            qt.y0(i.a.Theme_actionModeFindDrawable, (((b32 & 1) << 8) & 65280) | (b31 & 255));
            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (b32 >> 7) & 1);
            return;
        }
        if (b3 == -60) {
            byte b33 = bArr[i2 + 2];
            byte b34 = bArr[i2 + 3];
            byte b35 = bArr[i2 + 4];
            qt.y0(274, b34 | ((b33 & 128) << 1));
            qt.y0(275, b35 | ((b33 & 64) << 2));
            return;
        }
        if (b3 == 30) {
            int i27 = i2 + 3;
            qt.y0(167, ((bArr[i27] & 192) << 18) | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            int i28 = i2 + 2;
            qt.y0(168, ((bArr[i27] & 48) << 20) | ((bArr[i28] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(169, ((bArr[i27] & DhcpPacket.DHCP_HOST_NAME) << 22) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(170, (bArr[i2 + 11] & 255) | ((bArr[i27] & 3) << 24) | ((bArr[i28] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b3 == 31) {
            StringBuffer stringBuffer = new StringBuffer(20);
            int i29 = i2 + 22;
            for (int i30 = i2 + 2; i30 < i29; i30++) {
                stringBuffer.append((char) bArr[i30]);
            }
            this.f12405v = this.f12404u;
            d3(stringBuffer.toString());
            qt.B0(179, this.f12404u, this.f12405v);
            return;
        }
        if (b3 == 65) {
            if (nt.a() || nt.f8637c == 3) {
                int i31 = i2 + 2;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 3;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 4;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 5;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 6;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 7;
                int i42 = bArr[i41] & 255;
                int i43 = i2 + 8;
                int i44 = bArr[i43] & 255;
                int i45 = i2 + 9;
                int i46 = bArr[i45] & 255;
                if ((bArr[i31] & 255) > 60) {
                    u0.d.R2(15);
                } else {
                    u0.d.R2((i32 * 6) / 60);
                }
                if ((bArr[i33] & 255) > 166) {
                    u0.d.S2(15);
                    i13 = 10;
                } else {
                    i13 = 10;
                    u0.d.S2((i34 * 10) / 166);
                }
                if ((bArr[i35] & 255) > 166) {
                    u0.d.T2(15);
                } else {
                    u0.d.T2((i36 * i13) / 166);
                }
                if ((bArr[i37] & 255) > 60) {
                    u0.d.U2(15);
                } else {
                    u0.d.U2((i38 * 6) / 60);
                }
                int i47 = bArr[i39] & 255;
                int i48 = bArr[i41] & 255;
                int i49 = bArr[i43] & 255;
                int i50 = bArr[i45] & 255;
                if (l0.c0.f13013g != i47 || l0.c0.f13014h != i48 || l0.c0.f13015i != i49 || l0.c0.f13016j != i50) {
                    l0.c0.f13013g = i47;
                    l0.c0.f13014h = i48;
                    l0.c0.f13015i = i49;
                    l0.c0.f13016j = i50;
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                if ((bArr[i39] & 255) >= 127) {
                    u0.d.D2(15);
                    i14 = 10;
                } else {
                    i14 = 10;
                    u0.d.D2((i40 * 10) / 127);
                }
                if ((bArr[i41] & 255) > 127) {
                    u0.d.E2(15);
                } else {
                    u0.d.E2((i42 * i14) / 127);
                }
                if ((bArr[i43] & 255) > 127) {
                    u0.d.F2(15);
                } else {
                    u0.d.F2((i44 * i14) / 127);
                }
                if ((bArr[i45] & 255) > 127) {
                    u0.d.G2(15);
                    return;
                } else {
                    u0.d.G2((i46 * i14) / 127);
                    return;
                }
            }
            return;
        }
        if (b3 == 66) {
            if (nt.a() || nt.f8637c == 3) {
                u0.d.H2(((bArr[i2 + 6] & 255) * 10) / 255);
                u0.d.I2(((bArr[i2 + 7] & 255) * 10) / 255);
                u0.d.J2(((bArr[i2 + 8] & 255) * 10) / 255);
                u0.d.K2(((bArr[i2 + 9] & 255) * 10) / 255);
                u0.d.N2(((bArr[i2 + 2] & 255) * 10) / 255);
                u0.d.O2(((bArr[i2 + 3] & 255) * 10) / 255);
                u0.d.P2(((bArr[i2 + 4] & 255) * 10) / 255);
                u0.d.Q2(((bArr[i2 + 5] & 255) * 10) / 255);
                return;
            }
            return;
        }
        if (b3 == 104) {
            int i51 = nt.f8637c;
            if (i51 == 2 || i51 == 3 || i51 == 4 || i51 == 6) {
                byte b36 = bArr[i2 + 2];
                byte b37 = bArr[i2 + 5];
                byte b38 = bArr[i2 + 6];
                byte b39 = bArr[i2 + 7];
                qt.y0(220, (((b36 >> 5) & 1) << 8) | ((b37 >> 6) & 1));
                qt.y0(221, (((b36 >> 4) & 1) << 8) | ((b37 >> 5) & 1));
                qt.y0(175, (((b36 >> 3) & 1) << 8) | ((b37 >> 4) & 1));
                qt.y0(222, (((b36 >> 1) & 1) << 8) | ((b37 >> 2) & 3));
                qt.y0(223, ((b37 >> 0) & 3) | ((b36 & 1) << 8));
                qt.y0(224, (((b36 >> 2) & 1) << 8) | b38);
                qt.y0(225, b39);
                return;
            }
            int i52 = i2 + 2;
            int i53 = i2 + 5;
            qt.y0(139, ((bArr[i52] & 32) << 3) | ((bArr[i53] & 48) >> 4));
            qt.y0(140, ((16 & bArr[i52]) << 4) | ((bArr[i53] & 8) >> 3));
            qt.y0(141, ((bArr[i52] & 8) << 5) | ((bArr[i53] & 4) >> 2));
            qt.y0(142, ((bArr[i53] & 2) >> 1) | ((bArr[i52] & 4) << 6));
            qt.y0(143, bArr[i2 + 6] & 255);
            int i54 = i2 + 3;
            qt.y0(144, ((bArr[i54] & 64) << 2) | (bArr[i2 + 7] & 255));
            qt.y0(145, ((bArr[i54] & 32) << 3) | (bArr[i2 + 8] & 255));
            int i55 = i2 + 4;
            qt.y0(146, ((bArr[i55] & 128) << 1) | (bArr[i2 + 9] & 255));
            qt.y0(147, (bArr[i2 + 10] & 255) | ((bArr[i55] & 64) << 2));
            return;
        }
        if (b3 == 105) {
            int i56 = i2 + 2;
            int i57 = i2 + 4;
            qt.y0(148, ((bArr[i56] & 128) << 1) | ((bArr[i57] & 128) >> 7));
            qt.y0(149, ((bArr[i56] & 64) << 2) | ((bArr[i57] & 64) >> 6));
            qt.y0(150, ((bArr[i56] & 32) << 3) | ((bArr[i57] & 32) >> 5));
            int i58 = i2 + 3;
            int i59 = i2 + 5;
            qt.y0(151, ((bArr[i58] & 128) << 1) | ((bArr[i59] & 128) >> 7));
            qt.y0(152, ((bArr[i59] & 64) >> 6) | ((bArr[i58] & 64) << 2));
            return;
        }
        switch (b3) {
            case 17:
                int i60 = i2 + 4;
                int i61 = bArr[i60] & 255;
                int i62 = bArr[i2 + 5] & 255;
                if (i61 == 12 && i62 == 1) {
                    o1.x.C(nt.f8643f, 201, new int[]{1}, null, null);
                }
                int i63 = nt.f8637c;
                if (i63 == 2 || i63 == 3 || i63 == 4 || i63 == 6) {
                    byte b40 = bArr[i2 + 11];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b40 >> 6) & 1);
                        qt.y0(2, (b40 >> 7) & 1);
                    } else {
                        qt.y0(1, (b40 >> 7) & 1);
                        qt.y0(2, (b40 >> 6) & 1);
                    }
                    qt.y0(3, (b40 >> 5) & 1);
                    qt.y0(4, (b40 >> 4) & 1);
                    qt.y0(5, (b40 >> 3) & 1);
                }
                if (nt.a()) {
                    int i64 = i2 + 2;
                    byte b41 = bArr[i64];
                    byte b42 = bArr[i64];
                    qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 480);
                    this.f12392i = bArr[i60] & 255;
                    if (nt.f8637c == 5) {
                        int i65 = 0;
                        while (true) {
                            iArr2 = this.f12394k;
                            if (i65 < iArr2.length) {
                                int i66 = this.f12392i;
                                if (i66 != iArr2[i65][0]) {
                                    i65++;
                                } else if (i66 != 0) {
                                    this.f12391h = i65;
                                }
                            }
                        }
                        if (this.f12392i == 0) {
                            int i67 = this.f12391h;
                            if (i67 < iArr2.length && i67 != 255) {
                                l0.b0.l0(iArr2[i67][1], 1);
                            }
                            this.f12391h = 255;
                        } else if (i65 < iArr2.length) {
                            l0.b0.l0(iArr2[i65][1], 0);
                        }
                    } else {
                        int i68 = 0;
                        while (true) {
                            iArr = this.f12393j;
                            if (i68 < iArr.length) {
                                int i69 = this.f12392i;
                                if (i69 != iArr[i68][0]) {
                                    i68++;
                                } else if (i69 != 0) {
                                    this.f12391h = i68;
                                }
                            }
                        }
                        if (this.f12392i == 0) {
                            int i70 = this.f12391h;
                            if (i70 < iArr.length && i70 != 255) {
                                l0.b0.l0(iArr[i70][1], 1);
                            }
                            this.f12391h = 255;
                        } else if (i68 < iArr.length) {
                            l0.b0.l0(iArr[i68][1], 0);
                        }
                    }
                }
                break;
            case 18:
                byte b43 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b43 >> 6) & 1);
                    qt.y0(2, (b43 >> 7) & 1);
                } else {
                    qt.y0(1, (b43 >> 7) & 1);
                    qt.y0(2, (b43 >> 6) & 1);
                }
                qt.y0(3, (b43 >> 5) & 1);
                qt.y0(4, (b43 >> 4) & 1);
                qt.y0(5, (b43 >> 3) & 1);
                qt.y0(0, (b43 >> 2) & 1);
                break;
            case 19:
                qt.y0(97, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(98, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(99, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(100, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(101, bArr[i2 + 10] & 255);
                break;
            case 20:
                qt.y0(102, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(103, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(104, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(105, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(106, bArr[i2 + 10] & 255);
                break;
            case 21:
                qt.y0(107, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(108, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(109, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(110, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(111, bArr[i2 + 10] & 255);
                break;
            case 22:
                qt.y0(113, bArr[i2 + 2] & 255);
                qt.y0(114, bArr[i2 + 3] & 255);
                qt.y0(115, bArr[i2 + 11] & 255);
                break;
            default:
                switch (b3) {
                    case 69:
                        int i71 = i2 + 2;
                        qt.y0(116, ((128 & bArr[i2 + 3]) >> 7) | ((bArr[i71] & 128) << 1));
                        qt.y0(117, ((bArr[i71] & 64) << 2) | k3((bArr[i2 + 4] & 255) - 1));
                        qt.y0(118, ((bArr[i71] & 32) << 3) | k3((bArr[i2 + 5] & 255) - 1));
                        qt.y0(119, ((16 & bArr[i71]) << 4) | k3((bArr[i2 + 6] & 255) - 1));
                        qt.y0(120, k3((255 & bArr[i2 + 7]) - 1) | ((bArr[i71] & 8) << 5));
                        int i72 = i2 + 8;
                        qt.y0(121, ((bArr[i71] & 2) << 7) | ((bArr[i72] & 192) >> 6));
                        qt.y0(122, ((bArr[i72] & 32) >> 5) | ((bArr[i71] & 1) << 8));
                        break;
                    case 70:
                        int i73 = i2 + 2;
                        qt.y0(123, (bArr[i73] & 128) << 1);
                        qt.y0(124, ((bArr[i73] & 64) << 2) | ((bArr[i2 + 3] & 128) >> 7));
                        qt.y0(125, (bArr[i2 + 4] & 255) | ((bArr[i73] & 64) << 2));
                        break;
                    case 71:
                        int i74 = i2 + 2;
                        int i75 = i2 + 9;
                        qt.y0(126, ((bArr[i75] & 192) >> 6) | ((bArr[i74] & 128) << 1));
                        qt.y0(127, ((bArr[i74] & 64) << 2) | ((bArr[i75] & 32) >> 5));
                        qt.y0(128, ((bArr[i74] & 64) << 2) | (bArr[i75] & 31));
                        int i76 = i2 + 3;
                        int i77 = i2 + 10;
                        qt.y0(129, ((bArr[i76] & 128) << 1) | ((bArr[i77] & 128) >> 7));
                        qt.y0(130, ((bArr[i76] & 64) << 2) | ((bArr[i77] & 64) >> 6));
                        qt.y0(131, ((bArr[i77] & 32) >> 5) | ((bArr[i76] & 32) << 3));
                        qt.y0(132, ((bArr[i2 + 4] & 128) << 1) | ((bArr[i2 + 11] & 128) >> 7));
                        qt.y0(133, ((bArr[i2 + 5] & 128) << 1) | ((bArr[i2 + 12] & 128) >> 7));
                        qt.y0(134, ((bArr[i2 + 6] & 128) << 1) | ((bArr[i2 + 13] & 128) >> 7));
                        qt.y0(135, ((bArr[i2 + 14] & 128) >> 7) | ((bArr[i2 + 7] & 128) << 1));
                        break;
                    case 72:
                        qt.y0(218, ((bArr[i2 + 3] >> 7) & 1) | (bArr[i2 + 2] & 256));
                        break;
                    default:
                        switch (b3) {
                            case 116:
                                int i78 = bArr[i2 + 2] & 255;
                                if (i78 > 16) {
                                    i78 = 16;
                                }
                                if (i78 > 0) {
                                    for (int i79 = 0; i79 < i78; i79++) {
                                        int[] iArr9 = {i79, bArr[i2 + 3 + i79] & 255};
                                        if (qt.C0(171, iArr9, this.f12387d[i79])) {
                                            this.f12387d[i79] = iArr9;
                                        }
                                    }
                                    while (i78 < 16) {
                                        int[] iArr10 = {i78, 0};
                                        if (qt.C0(171, iArr10, this.f12387d[i78])) {
                                            this.f12387d[i78] = iArr10;
                                        }
                                        i78++;
                                    }
                                } else {
                                    for (int i80 = 0; i80 < 16; i80++) {
                                        int[] iArr11 = {i80, 0};
                                        if (qt.C0(171, iArr11, this.f12387d[i80])) {
                                            this.f12387d[i80] = iArr11;
                                        }
                                    }
                                }
                                break;
                            case 117:
                                int i81 = bArr[i2 + 2] & 255;
                                if (i81 > 7) {
                                    i81 = 7;
                                }
                                if (i81 > 0) {
                                    for (int i82 = 0; i82 < i81; i82++) {
                                        int[] iArr12 = {i82, bArr[i2 + 3 + i82] & 255};
                                        if (qt.C0(172, iArr12, this.f12386c[i82])) {
                                            this.f12386c[i82] = iArr12;
                                        }
                                    }
                                    while (i81 < 7) {
                                        int[] iArr13 = {i81, 0};
                                        if (qt.C0(172, iArr13, this.f12386c[i81])) {
                                            this.f12386c[i81] = iArr13;
                                        }
                                        i81++;
                                    }
                                } else {
                                    for (int i83 = 0; i83 < 7; i83++) {
                                        int[] iArr14 = {i83, 0};
                                        if (qt.C0(172, iArr14, this.f12386c[i83])) {
                                            this.f12386c[i83] = iArr14;
                                        }
                                    }
                                }
                                break;
                            case 118:
                                int i84 = i2 + 2;
                                int i85 = i2 + 4;
                                qt.y0(153, ((bArr[i85] & 128) >> 7) | ((bArr[i84] & 128) << 1));
                                qt.y0(154, ((bArr[i84] & 64) << 2) | ((bArr[i85] & 64) >> 6));
                                qt.y0(155, ((bArr[i84] & 32) << 3) | ((bArr[i85] & 32) >> 5));
                                qt.y0(156, ((bArr[i85] & 16) >> 4) | ((bArr[i84] & 16) << 4));
                                qt.y0(157, ((bArr[i85] & 8) >> 3) | ((bArr[i84] & 8) << 5));
                                qt.y0(158, ((bArr[i84] & 4) << 6) | ((4 & bArr[i85]) >> 2));
                                qt.y0(159, ((bArr[i84] & 2) << 7) | ((bArr[i85] & 2) >> 1));
                                qt.y0(160, ((bArr[i84] & 1) << 8) | (bArr[i85] & 1));
                                qt.y0(161, ((bArr[i2 + 5] & 128) >> 7) | ((bArr[i2 + 3] & 128) << 1));
                                break;
                            case 119:
                                int i86 = bArr[i2 + 2] & 255;
                                if (i86 > 7) {
                                    i86 = 7;
                                }
                                if (i86 > 0) {
                                    for (int i87 = 0; i87 < i86; i87++) {
                                        int[] iArr15 = {i87, bArr[i2 + 3 + i87] & 255};
                                        if (qt.C0(173, iArr15, this.f12385b[i87])) {
                                            this.f12385b[i87] = iArr15;
                                        }
                                    }
                                    while (i86 < 7) {
                                        int[] iArr16 = {i86, 0};
                                        if (qt.C0(173, iArr16, this.f12385b[i86])) {
                                            this.f12385b[i86] = iArr16;
                                        }
                                        i86++;
                                    }
                                } else {
                                    for (int i88 = 0; i88 < 7; i88++) {
                                        int[] iArr17 = {i88, 0};
                                        if (qt.C0(173, iArr17, this.f12385b[i88])) {
                                            this.f12385b[i88] = iArr17;
                                        }
                                    }
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12403t);
        h0.d.f2464c.d(this.f12401r);
        h0.d.f2462a.d(this.f12402s);
        qt.q0(this.f12395l);
        y0.g.f18094d.d(this.f12396m);
        y0.g.f18095e.d(this.f12396m);
        w0.e.f17815a.d(this.f12395l);
        w0.e.f17819e.d(this.f12395l);
        u0.c.f17386m.d(this.f12398o);
        l0.b0.p0(this.f12399p);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 276) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.f12404u);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 16) {
                    o1.x.v(bVar, i2, this.f12387d[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f12386c[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f12385b[i4]);
                    i4++;
                }
                break;
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            e3(202, 1, iArr[0]);
            return;
        }
        if (i2 == 22) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, 58, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 23) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 104) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1 || iArr[0] == 2) {
                z.k.s(227, 3, 139, 2, iArr[0], iArr[1]);
                return;
            }
            if (iArr[0] == 3 || iArr[0] == 4) {
                z.k.s(227, 3, 139, 3, iArr[0], iArr[1]);
                return;
            }
            if (iArr[0] == 5 || iArr[0] == 6) {
                z.k.s(227, 3, 139, 4, iArr[0], iArr[1]);
                return;
            } else {
                if (iArr[0] == 7) {
                    z.k.s(227, 3, 139, 5, iArr[0], 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 105) {
            z.k.s(227, 2, 154, iArr[0], iArr[1]);
            return;
        }
        switch (i2) {
            case 30:
                break;
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                int i3 = iArr[0];
                if (i3 != 0) {
                    i3 = 1;
                }
                switch (i2) {
                    case 31:
                        e3(26, i3 << 7, 0);
                        break;
                    case 32:
                        e3(26, i3 << 6, 0);
                        break;
                    case 33:
                        e3(26, i3 << 5, 0);
                        break;
                    case 34:
                        e3(26, i3 << 4, 0);
                        break;
                    case 35:
                        e3(26, i3 << 3, 0);
                        break;
                    case 36:
                        e3(26, i3 << 2, 0);
                        break;
                    case 37:
                        e3(26, i3 << 1, 0);
                        break;
                }
                return;
            case 38:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(58, 2, (byte) iArr[0]);
                return;
            case 39:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(74, 1, iArr[0]);
                return;
            case 40:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                e3(74, 2, iArr[0]);
                return;
            case 41:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                e3(74, 3, iArr[0]);
                return;
            case 42:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                e3(74, 4, iArr[0]);
                return;
            case 43:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                e3(74, 5, iArr[0]);
                return;
            case 44:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    e3(74, 7, iArr[0]);
                }
                break;
            case 45:
                e3(75, 1, 1);
                return;
            case 46:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(75, 2, iArr[0]);
                return;
            case 47:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(75, 3, iArr[0]);
                return;
            case 48:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 1, iArr[0]);
                return;
            case 49:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 2, iArr[0]);
                return;
            case 50:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 3, iArr[0]);
                return;
            case 51:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 4, iArr[0]);
                return;
            case 52:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 5, iArr[0]);
                return;
            case 53:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 6, iArr[0]);
                return;
            case 54:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 7, iArr[0]);
                return;
            case 55:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 4) {
                    iArr[0] = 5;
                }
                e3(76, 8, iArr[0]);
                return;
            case 56:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
                e3(76, 9, iArr[0]);
                return;
            case 57:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(76, 11, iArr[0]);
                return;
            case 58:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 3, iArr[0]);
                return;
            case 59:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 4, iArr[0]);
                return;
            case 60:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 5, iArr[0]);
                return;
            case 61:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 6, iArr[0]);
                return;
            case 62:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 7, iArr[0]);
                return;
            case 63:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 8, iArr[0]);
                return;
            case 64:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 9, iArr[0]);
                return;
            case 65:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 10, iArr[0]);
                return;
            case 66:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(109, 11, iArr[0]);
                return;
            case 67:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(110, 1, iArr[0]);
                return;
            case 68:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(110, 2, iArr[0]);
                return;
            case 69:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(110, 3, iArr[0]);
                return;
            case 70:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(110, 4, iArr[0]);
                return;
            case 71:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(110, 5, iArr[0]);
                return;
            case 72:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(111, 1, iArr[0]);
                return;
            case 73:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(111, 2, iArr[0]);
                return;
            case 74:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(111, 3, iArr[0]);
                return;
            case 75:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 1, iArr[0]);
                return;
            case 76:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 2, iArr[0]);
                return;
            case 77:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 3, iArr[0]);
                return;
            case 78:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 4, iArr[0]);
                return;
            case 79:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 5, iArr[0]);
                return;
            case 80:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 6, iArr[0]);
                return;
            case 81:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 7, iArr[0]);
                return;
            case 82:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 8, iArr[0]);
                return;
            case 83:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(123, 9, iArr[0]);
                return;
            case 84:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(123, 11, iArr[0]);
                return;
            case 85:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                e3(123, 12, iArr[0]);
                return;
            case 86:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                e3(138, 3, iArr[0]);
                return;
            case 87:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 2) {
                    iArr[0] = 2;
                }
                e3(202, 3, iArr[0]);
                return;
            case 88:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
                e3(202, 4, iArr[0]);
                return;
            case 89:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 4) {
                    iArr[0] = 4;
                }
                e3(202, 5, iArr[0]);
                return;
            case 90:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
                e3(202, 6, iArr[0]);
                return;
            default:
                return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] != 0) {
            iArr[0] = 1;
        }
        e3(74, 8, iArr[0]);
    }

    public void c3() {
        int i2;
        int[] iArr = new int[25];
        int i3 = nt.f8637c;
        if (i3 == 2 || i3 == 3 || i3 == 4 || i3 == 6) {
            return;
        }
        this.f12390g = 4;
        int i4 = 0;
        for (int i5 = 0; i5 < 25; i5++) {
            iArr[i5] = 32;
        }
        iArr[0] = 26;
        iArr[1] = 145;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[26];
        iArr2[0] = 227;
        while (i4 < 25) {
            int i6 = i4 + 1;
            iArr2[i6] = (byte) iArr[i4];
            i4 = i6;
        }
        z.k.s(iArr2);
    }

    public final void d3(String str) {
        if (str == null) {
            if (this.f12404u != str) {
                this.f12404u = str;
            }
        } else {
            if (str.equals(this.f12404u)) {
                return;
            }
            this.f12404u = str;
        }
    }

    public final void e3(int i2, int i3, int i4) {
        if (i2 != 26) {
            z.k.s(227, 2, i2, i3, i4);
        } else {
            z.k.s(227, 1, i2, i3);
        }
    }

    public final int k3(int i2) {
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 8) {
            return 8;
        }
        return i2;
    }

    public final void l3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() > 12 ? 12 : str.length();
        byte[] bArr = new byte[12];
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = bytes[i2];
        }
        int[] iArr = new int[16];
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = -29;
        iArr[1] = 13;
        iArr[2] = -31;
        iArr[3] = 10;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[4 + i4] = bArr[i4];
        }
        z.k.s(iArr);
    }

    public final void m3(byte b2) {
        String str;
        switch (h0.c.E) {
            case 0:
                str = "BT DISCONNECT";
                break;
            case 1:
                str = "BT LINK";
                break;
            case 2:
                str = "BT CONNECTED";
                break;
            case 3:
                str = "BT DIALING";
                break;
            case 4:
                str = "BT RINGING";
                break;
            case 5:
                str = "BT TALKING";
                break;
            case 6:
                str = "BT PAIRING";
                break;
            default:
                str = "  ";
                break;
        }
        int length = str.length() > 12 ? 12 : str.length();
        byte[] bArr = new byte[12];
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = bytes[i2];
        }
        int[] iArr = new int[16];
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = -29;
        iArr[1] = 13;
        iArr[2] = -31;
        iArr[3] = 10;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[4 + i4] = bArr[i4];
        }
        z.k.s(iArr);
    }
}
