package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class i8 extends lt {
    public static int A = 0;
    public static int B = 0;
    public static int C = 0;
    public static int D = 0;
    public static int E = 0;
    public static int F = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f6281x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f6282y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f6283z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6285c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6286d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{129, 3}, new int[]{130, 4}, new int[]{131, 2}, new int[]{132, 54}, new int[]{133, 12}, new int[]{134, 8}, new int[]{135, 7}, new int[]{136, 0}, new int[]{137, 5}, new int[]{138, 6}, new int[]{139, 55}, new int[]{140, 18}, new int[]{141, 1}, new int[]{142, 24}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6287e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{129, 3}, new int[]{130, 4}, new int[]{131, 2}, new int[]{132, 55}, new int[]{133, 12}, new int[]{134, 7}, new int[]{135, 8}, new int[]{136, 0}, new int[]{137, 40}, new int[]{138, 41}, new int[]{139, 42}, new int[]{140, 43}, new int[]{141, 44}, new int[]{142, 45}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6288f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{129, 30}, new int[]{130, 31}, new int[]{131, 29}, new int[]{132, 54}, new int[]{133, 12}, new int[]{134, 7}, new int[]{135, 8}, new int[]{136, 0}, new int[]{137, 5}, new int[]{138, 6}, new int[]{139, 55}, new int[]{140, 18}, new int[]{141, 1}, new int[]{142, 24}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6289g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6290h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f6291i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6292j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6293k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6294l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f6295m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f6296n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f6297o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f6298p = 7;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f6299q = 8;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f6300r = 9;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f6301s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6302t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6303u = new c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f6304v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f6305w = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(i8.this.f6304v);
            i8.this.f6302t = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            i8 i8Var = i8.this;
            int i3 = i8Var.f6302t - 1;
            i8Var.f6302t = i3;
            if (i3 <= 0) {
                l0.b0.p0(i8Var.f6304v);
                i8.this.f6302t = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1 || (i2 = nt.f8633a) == 1835263 || i2 == 1900799) {
                return;
            }
            i8 i8Var2 = i8.this;
            i8Var2.p3(i8Var2.f6291i.b(1, 0));
            i8 i8Var3 = i8.this;
            i8Var3.q3(i8Var3.f6291i.b(2, 0));
            i8 i8Var4 = i8.this;
            i8Var4.q3(i8Var4.f6291i.b(3, 1));
            i8 i8Var5 = i8.this;
            i8Var5.j3(i8Var5.f6291i.b(4, 0));
            i8 i8Var6 = i8.this;
            i8Var6.k3(i8Var6.f6291i.b(5, 0));
            i8 i8Var7 = i8.this;
            i8Var7.l3(i8Var7.f6291i.b(6, 0));
            i8 i8Var8 = i8.this;
            i8Var8.m3(i8Var8.f6291i.b(7, 0));
            i8 i8Var9 = i8.this;
            i8Var9.n3(i8Var9.f6291i.b(8, 0));
            i8 i8Var10 = i8.this;
            i8Var10.o3(i8Var10.f6291i.b(9, 0));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            int i2 = nt.f8633a;
            if (i2 == 1835263 || i2 == 1900799) {
                z.k.s(227, 201, 6, time.minute, time.hour, b4, b3, b2, 0);
            } else if (i2 == 393471 || i2 == 459007) {
                z.k.s(227, 201, 3, time.minute, time.hour, zIs24HourFormat ? 1 : 0);
            } else {
                z.k.s(227, 166, 6, b2, b3, b4, time.hour, time.minute, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        int i2;
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a() && (i2 = nt.f8633a) != 1835263 && i2 != 1900799) {
            y0.g.f18094d.a(this.f6290h, 1);
            y0.g.f18095e.a(this.f6290h, 1);
            w0.e.f17815a.a(this.f6289g, 1);
            w0.e.f17819e.a(this.f6289g, 1);
            u0.c.f17393t.a(this.f6289g, 1);
            u0.c.f17392s.a(this.f6289g, 1);
            u0.c.f17374a.a(this.f6289g, 1);
        }
        u0.c.f17386m.a(this.f6303u, 1);
        int i3 = nt.f8633a;
        if (i3 == 459007 || i3 == 524543 || i3 == 196863 || i3 == 393471) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8314i = 1;
        } else if (i3 == 1835263 || i3 == 1900799) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8314i = 0;
        }
        qt.z(this.f6305w);
        int i4 = nt.f8633a;
        if (i4 == 1835263 || i4 == 1900799) {
            return;
        }
        this.f6291i.a();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            int i7 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i7 >> 7) & 1);
                qt.y0(2, (i7 >> 6) & 1);
            } else {
                qt.y0(2, (i7 >> 7) & 1);
                qt.y0(1, (i7 >> 6) & 1);
            }
            qt.y0(4, (i7 >> 5) & 1);
            qt.y0(3, (i7 >> 4) & 1);
            qt.y0(5, (i7 >> 3) & 1);
        }
        if (b2 == 41) {
            if (this.f6301s) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5570);
            return;
        }
        if (b2 == 54) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                u0.d.A3((b3 & 128) != 0 ? 1000 - ((b3 & 127) * 10) : ((b3 & 127) * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 65) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            byte b8 = bArr[i2 + 6];
            byte b9 = bArr[i2 + 7];
            byte b10 = bArr[i2 + 8];
            byte b11 = bArr[i2 + 9];
            if (nt.f8633a != 459007) {
                qt.y0(121, 15 & (b4 >> 4));
                qt.y0(122, (b4 >> 3) & 1);
                qt.y0(123, (b4 >> 2) & 1);
                qt.y0(124, b5 & 255);
                qt.y0(125, b6 & 255);
                qt.y0(126, b7 & 255);
                qt.y0(127, b8 & 255);
                qt.y0(128, b9 & 255);
                qt.y0(129, b10 & 255);
                qt.y0(130, b11 & 255);
                return;
            }
            qt.y0(131, (b4 >> 7) & 1);
            qt.y0(132, (b4 >> 6) & 1);
            qt.y0(133, (b4 >> 5) & 1);
            qt.y0(134, (b4 >> 4) & 1);
            qt.y0(135, (b4 >> 3) & 1);
            qt.y0(136, (b4 >> 2) & 1);
            qt.y0(137, b5 & 255);
            qt.y0(138, b6 & 255);
            int i8 = b7 & 255;
            qt.y0(139, i8);
            if (b6 == 0) {
                i8 += 5;
            }
            qt.y0(Process.MEDIA_UID, i8);
            return;
        }
        if (b2 == 96) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            byte b16 = bArr[i2 + 6];
            byte b17 = bArr[i2 + 7];
            byte b18 = bArr[i2 + 8];
            byte b19 = bArr[i2 + 9];
            byte b20 = bArr[i2 + 10];
            byte b21 = bArr[i2 + 11];
            byte b22 = bArr[i2 + 12];
            if ((b12 & 128) == 0) {
                qt.y0(119, 1);
                return;
            }
            qt.y0(119, 0);
            qt.y0(107, (b13 >> 7) & 1);
            int i9 = b13 >> 4;
            int i10 = i9 & 3;
            if (i10 == 0) {
                qt.y0(108, 0);
                qt.y0(109, 0);
            } else if (i10 == 1) {
                qt.y0(108, 0);
                qt.y0(109, 1);
            } else if (i10 == 2) {
                qt.y0(108, 1);
                qt.y0(109, 0);
            }
            qt.y0(110, i9 & 1);
            int i11 = (b13 >> 0) & 3;
            if (i11 == 0) {
                qt.y0(111, 0);
                qt.y0(112, 0);
            } else if (i11 == 1) {
                qt.y0(111, 0);
                qt.y0(112, 1);
            } else if (i11 == 2) {
                qt.y0(111, 1);
                qt.y0(112, 0);
            }
            qt.y0(116, (b14 >> 7) & 1);
            int i12 = b14 >> 4;
            int i13 = i12 & 3;
            if (i13 == 0) {
                qt.y0(117, 0);
                qt.y0(118, 0);
            } else if (i13 == 1) {
                qt.y0(117, 0);
                qt.y0(118, 1);
            } else if (i13 == 2) {
                qt.y0(117, 1);
                qt.y0(118, 0);
            }
            qt.y0(113, i12 & 1);
            int i14 = (b14 >> 0) & 3;
            if (i14 == 0) {
                qt.y0(114, 0);
                qt.y0(115, 0);
            } else if (i14 == 1) {
                qt.y0(114, 0);
                qt.y0(115, 1);
            } else if (i14 == 2) {
                qt.y0(114, 1);
                qt.y0(115, 0);
            }
            qt.y0(103, b19 & 255);
            qt.y0(104, b20 & 255);
            qt.y0(105, b21 & 255);
            qt.y0(106, b22 & 255);
            qt.y0(99, b15 & 255);
            qt.y0(100, b16 & 255);
            qt.y0(101, b17 & 255);
            qt.y0(102, b18 & 255);
            return;
        }
        if (b2 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                int i16 = i2 + 3;
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i16] & 255}, null, null);
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                } else {
                    l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 == 3) {
                int i17 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i17);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i17}, null, null);
                return;
            } else {
                if (i15 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6301s = true;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            byte b23 = bArr[i2 + 2];
            byte b24 = bArr[i2 + 3];
            byte b25 = bArr[i2 + 4];
            byte b26 = bArr[i2 + 5];
            byte b27 = bArr[i2 + 6];
            byte b28 = bArr[i2 + 7];
            byte b29 = bArr[i2 + 8];
            byte b30 = bArr[i2 + 9];
            qt.y0(103, b23 & 255);
            qt.y0(104, b24 & 255);
            qt.y0(105, b25 & 255);
            qt.y0(106, b26 & 255);
            qt.y0(99, b27 & 255);
            qt.y0(100, b28 & 255);
            qt.y0(101, b29 & 255);
            qt.y0(102, b30 & 255);
            return;
        }
        if (b2 == 57) {
            byte b31 = bArr[i2 + 2];
            byte b32 = bArr[i2 + 3];
            qt.y0(107, (b31 >> 7) & 1);
            qt.y0(108, (b31 >> 6) & 1);
            qt.y0(109, (b31 >> 5) & 1);
            qt.y0(110, (b31 >> 4) & 1);
            qt.y0(111, (b31 >> 3) & 1);
            qt.y0(112, (b31 >> 2) & 1);
            qt.y0(113, (b32 >> 7) & 1);
            qt.y0(114, (b32 >> 6) & 1);
            qt.y0(115, (b32 >> 5) & 1);
            qt.y0(116, (b32 >> 4) & 1);
            qt.y0(117, (b32 >> 3) & 1);
            qt.y0(118, (b32 >> 2) & 1);
            qt.y0(119, b32 & 1);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b33 = bArr[i2 + 2];
                    byte b34 = bArr[i2 + 3];
                    int i18 = nt.f8633a;
                    if (i18 == 196863 || i18 == 393471) {
                        int i19 = b33 & 255;
                        this.f6285c = i19;
                        int i20 = 0;
                        while (true) {
                            iArr = this.f6286d;
                            if (i20 < iArr.length) {
                                int i21 = this.f6285c;
                                if (i21 != iArr[i20][0]) {
                                    i20++;
                                } else if (i21 != 0) {
                                    this.f6284b = i20;
                                }
                            }
                        }
                        if (i19 != 10) {
                            int i22 = b34 & 255;
                            if (i22 != 1) {
                                if (i22 == 0) {
                                    int i23 = this.f6284b;
                                    if (i23 < iArr.length && i23 != 255) {
                                        l0.b0.l0(iArr[i23][1], 1);
                                    }
                                    this.f6284b = 255;
                                }
                            } else if (i20 < iArr.length) {
                                l0.b0.l0(iArr[i20][1], 0);
                            }
                        } else if ((b34 & 255) == 1) {
                            int i24 = h0.c.E;
                            if (i24 == 3 || i24 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        }
                    } else if (i18 != 1966335) {
                        this.f6285c = b33 & 255;
                        int i25 = 0;
                        while (true) {
                            iArr2 = this.f6287e;
                            if (i25 < iArr2.length) {
                                int i26 = this.f6285c;
                                if (i26 != iArr2[i25][0]) {
                                    i25++;
                                } else if (i26 != 0) {
                                    this.f6284b = i25;
                                }
                            }
                        }
                        if ((b34 & 255) == 0) {
                            int i27 = this.f6284b;
                            if (i27 < iArr2.length && i27 != 255) {
                                l0.b0.l0(iArr2[i27][1], 1);
                            }
                            this.f6284b = 255;
                        } else if (i25 < iArr2.length) {
                            l0.b0.l0(iArr2[i25][1], 0);
                        }
                    } else {
                        int i28 = b33 & 255;
                        this.f6285c = i28;
                        int i29 = 0;
                        while (true) {
                            iArr3 = this.f6288f;
                            if (i29 < iArr3.length) {
                                int i30 = this.f6285c;
                                if (i30 != iArr3[i29][0]) {
                                    i29++;
                                } else if (i30 != 0) {
                                    this.f6284b = i29;
                                }
                            }
                        }
                        if (i28 != 10) {
                            int i31 = b34 & 255;
                            if (i31 != 1) {
                                if (i31 == 0) {
                                    int i32 = this.f6284b;
                                    if (i32 < iArr3.length && i32 != 255) {
                                        l0.b0.l0(iArr3[i32][1], 1);
                                    }
                                    this.f6284b = 255;
                                }
                            } else if (i29 < iArr3.length) {
                                l0.b0.l0(iArr3[i29][1], 0);
                            }
                        } else if ((b34 & 255) == 1) {
                            int i33 = h0.c.E;
                            if (i33 == 3 || i33 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        }
                    }
                }
                break;
            case 33:
                if (nt.a()) {
                    byte b35 = bArr[i2 + 2];
                    byte b36 = bArr[i2 + 3];
                    int i34 = nt.f8633a;
                    if (i34 == 196863 || i34 == 524543 || i34 == 393471) {
                        this.f6285c = (b35 | 128) & 255;
                        int i35 = 0;
                        while (true) {
                            iArr4 = this.f6286d;
                            if (i35 < iArr4.length) {
                                int i36 = this.f6285c;
                                if (i36 != iArr4[i35][0]) {
                                    i35++;
                                } else if (i36 != 0) {
                                    this.f6284b = i35;
                                }
                            }
                        }
                        if ((b36 & 255) == 0) {
                            int i37 = this.f6284b;
                            if (i37 < iArr4.length && i37 != 255) {
                                l0.b0.l0(iArr4[i37][1], 1);
                            }
                            this.f6284b = 255;
                        } else if (i35 < iArr4.length) {
                            l0.b0.l0(iArr4[i35][1], 0);
                        }
                    } else if (i34 != 1966335) {
                        this.f6285c = (b35 | 128) & 255;
                        int i38 = 0;
                        while (true) {
                            iArr5 = this.f6287e;
                            if (i38 < iArr5.length) {
                                int i39 = this.f6285c;
                                if (i39 != iArr5[i38][0]) {
                                    i38++;
                                } else if (i39 != 0) {
                                    this.f6284b = i38;
                                }
                            }
                        }
                        if ((b36 & 255) == 0) {
                            int i40 = this.f6284b;
                            if (i40 < iArr5.length && i40 != 255) {
                                l0.b0.l0(iArr5[i40][1], 1);
                            }
                            this.f6284b = 255;
                        } else if (i38 < iArr5.length) {
                            l0.b0.l0(iArr5[i38][1], 0);
                        }
                    } else {
                        this.f6285c = (b35 | 128) & 255;
                        int i41 = 0;
                        while (true) {
                            iArr6 = this.f6288f;
                            if (i41 < iArr6.length) {
                                int i42 = this.f6285c;
                                if (i42 != iArr6[i41][0]) {
                                    i41++;
                                } else if (i42 != 0) {
                                    this.f6284b = i41;
                                }
                            }
                        }
                        if ((b36 & 255) == 0) {
                            int i43 = this.f6284b;
                            if (i43 < iArr6.length && i43 != 255) {
                                l0.b0.l0(iArr6[i43][1], 1);
                            }
                            this.f6284b = 255;
                        } else if (i41 < iArr6.length) {
                            l0.b0.l0(iArr6[i41][1], 0);
                        }
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.M0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.M0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.M0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.M0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i44 = i2 + 2;
                    int i45 = bArr[i44] & 255;
                    int i46 = i2 + 3;
                    int i47 = bArr[i46] & 255;
                    int i48 = i2 + 4;
                    int i49 = bArr[i48] & 255;
                    int i50 = i2 + 5;
                    int i51 = bArr[i50] & 255;
                    if (i45 == 0 && i47 == 0 && i49 == 0 && i51 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i45 || l0.c0.f13014h != i47 || l0.c0.f13015i != i49 || l0.c0.f13016j != i51) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i45;
                    l0.c0.f13014h = i47;
                    l0.c0.f13015i = i49;
                    l0.c0.f13016j = i51;
                    u0.d.D2(l0.c0.M0(bArr[i44] & 255));
                    u0.d.E2(l0.c0.M0(bArr[i46] & 255));
                    u0.d.F2(l0.c0.M0(bArr[i48] & 255));
                    u0.d.G2(l0.c0.M0(bArr[i50] & 255));
                }
                break;
            case 36:
                int i52 = bArr[i2 + 2] & 255;
                int i53 = bArr[i2 + 3] & 255;
                int i54 = bArr[i2 + 4] & 255;
                int i55 = bArr[i2 + 5] & 255;
                int i56 = bArr[i2 + 6] & 255;
                int i57 = bArr[i2 + 7] & 255;
                int i58 = bArr[i2 + 8] & 255;
                int i59 = bArr[i2 + 9] & 255;
                qt.y0(10, (i52 >> 7) & 1);
                qt.y0(11, (i52 >> 6) & 1);
                qt.y0(12, (i52 >> 5) & 1);
                qt.y0(13, (i52 >> 3) & 1);
                qt.y0(62, (i52 >> 2) & 1);
                qt.y0(16, (i52 >> 1) & 1);
                qt.y0(65, i52 & 1);
                int i60 = i53 & 15;
                if (i60 != 1) {
                    if (i60 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i60 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i60 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, i54 & 15);
                qt.y0(53, (i59 >> 7) & 1);
                if (((i55 >> 7) & 1) != 0) {
                    int i61 = i55 & 127;
                    if (i61 == 36) {
                        qt.y0(27, -2);
                    } else if (i61 == 64) {
                        qt.y0(27, -3);
                    } else if (i61 <= 36 || i61 >= 64) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i61);
                    }
                }
                if (((i56 >> 7) & 1) != 0) {
                    int i62 = i56 & 127;
                    if (i62 == 36) {
                        qt.y0(28, -2);
                    } else if (i62 == 64) {
                        qt.y0(28, -3);
                    } else if (i62 <= 36 || i62 >= 64) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, i62);
                    }
                }
                qt.y0(29, (i57 >> 4) & 15);
                qt.y0(30, i57 & 15);
                if (((i58 >> 7) & 1) != 0) {
                    int i63 = 127 & i58;
                    if (i63 == 1) {
                        qt.y0(27, -2);
                        qt.y0(28, -2);
                    } else if (i63 == 15) {
                        qt.y0(27, -3);
                        qt.y0(28, -3);
                    } else if (i63 > 1 && i63 < 15) {
                        qt.y0(27, i63);
                        qt.y0(28, i63);
                    } else {
                        qt.y0(27, -1);
                        qt.y0(28, -1);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        y0.g.f18094d.d(this.f6290h);
        y0.g.f18095e.d(this.f6290h);
        w0.e.f17815a.d(this.f6289g);
        w0.e.f17819e.d(this.f6289g);
        u0.c.f17393t.d(this.f6289g);
        u0.c.f17392s.d(this.f6289g);
        u0.c.f17374a.d(this.f6289g);
        qt.q0(this.f6305w);
        this.f6291i.j();
        u0.c.f17386m.d(this.f6303u);
        l0.b0.p0(this.f6304v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 149) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                switch (iArr[0]) {
                    case 0:
                        r3(iArr[1]);
                        break;
                    case 1:
                        q3(iArr[1]);
                        break;
                    case 2:
                        p3(iArr[1]);
                        break;
                    case 3:
                        j3(iArr[1]);
                        break;
                    case 4:
                        k3(iArr[1]);
                        break;
                    case 5:
                        l3(iArr[1]);
                        break;
                    case 6:
                        m3(iArr[1]);
                        break;
                    case 7:
                        n3(iArr[1]);
                        break;
                    case 8:
                        o3(iArr[1]);
                        break;
                    default:
                        z.k.s(227, 200, 2, iArr[0], iArr[1]);
                        break;
                }
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (nt.f8633a == 524543) {
                if (iArr != null) {
                    z.k.s(227, -57, 4, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3]);
                    return;
                }
                return;
            } else {
                if (iArr == null || iArr.length <= 5) {
                    return;
                }
                z.k.s(227, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5]);
                return;
            }
        }
        if (i2 != 1005) {
            return;
        }
        if (nt.f8633a == 1900799) {
            z.k.s(227, 167, 1, iArr[0]);
            return;
        }
        int i4 = (byte) iArr[0];
        int i5 = 154;
        if (i4 >= 5) {
            i4 -= 5;
            i5 = 155;
            i3 = 0;
        } else {
            i3 = 1;
        }
        z.k.s(227, -56, 2, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, (byte) i3);
        z.k.s(227, -56, 2, (byte) i5, (byte) i4);
    }

    public final void j3(int i2) {
        A = i2;
        qt.y0(143, i2);
        z.k.s(227, 200, 2, 3, A);
        int iB = this.f6291i.b(4, 0);
        int i3 = A;
        if (iB != i3) {
            this.f6291i.g(4, i3);
        }
    }

    public final void k3(int i2) {
        B = i2;
        qt.y0(144, i2);
        z.k.s(227, 200, 2, 4, B);
        int iB = this.f6291i.b(5, 0);
        int i3 = B;
        if (iB != i3) {
            this.f6291i.g(5, i3);
        }
    }

    public final void l3(int i2) {
        C = i2;
        qt.y0(144, i2);
        z.k.s(227, 200, 2, 5, C);
        int iB = this.f6291i.b(6, 0);
        int i3 = C;
        if (iB != i3) {
            this.f6291i.g(6, i3);
        }
    }

    public final void m3(int i2) {
        D = i2;
        qt.y0(144, i2);
        z.k.s(227, 200, 2, 6, D);
        int iB = this.f6291i.b(7, 0);
        int i3 = D;
        if (iB != i3) {
            this.f6291i.g(7, i3);
        }
    }

    public final void n3(int i2) {
        E = i2;
        qt.y0(144, i2);
        z.k.s(227, 200, 2, 7, E);
        int iB = this.f6291i.b(8, 0);
        int i3 = E;
        if (iB != i3) {
            this.f6291i.g(8, i3);
        }
    }

    public final void o3(int i2) {
        F = i2;
        qt.y0(144, i2);
        z.k.s(227, 200, 2, 8, F);
        int iB = this.f6291i.b(9, 0);
        int i3 = F;
        if (iB != i3) {
            this.f6291i.g(9, i3);
        }
    }

    public final void p3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 15) {
            i2 = 15;
        }
        f6281x = i2;
        qt.y0(140, i2);
        z.k.s(227, 200, 2, 2, f6281x);
        int iB = this.f6291i.b(1, 0);
        int i3 = f6281x;
        if (iB != i3) {
            this.f6291i.g(1, i3);
        }
    }

    public final void q3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 15) {
            i2 = 15;
        }
        f6282y = i2;
        qt.y0(141, i2);
        z.k.s(227, 200, 2, 1, f6282y);
        int iB = this.f6291i.b(2, 0);
        int i3 = f6282y;
        if (iB != i3) {
            this.f6291i.g(2, i3);
        }
    }

    public final void r3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6283z = i2;
        qt.y0(140, i2);
        z.k.s(227, 200, 2, 0, f6283z);
        int iB = this.f6291i.b(3, 0);
        int i3 = f6283z;
        if (iB != i3) {
            this.f6291i.g(3, i3);
        }
    }
}
