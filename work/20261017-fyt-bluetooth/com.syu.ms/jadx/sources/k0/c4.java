package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class c4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3892c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3893d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 25}, new int[]{49, 9}, new int[]{52, 1}, new int[]{54, 18}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 3}, new int[]{61, 4}, new int[]{65, -1}, new int[]{66, -1}, new int[]{67, -1}, new int[]{68, -1}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}, new int[]{254, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3894e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f3895f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3896g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3897h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f3898i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3899j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3900k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3901l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f3902m = {34, 204};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3903n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3904o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3905p = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c4 c4Var = c4.this;
            byte b2 = c4Var.f3895f;
            if (b2 <= 20) {
                c4Var.f3895f = (byte) (b2 + 1);
                return;
            }
            int i2 = nt.f8637c;
            if (i2 == 2 || i2 == 11) {
                z.k.s(227, -57, 1, 1);
            } else {
                z.k.s(227, -58, 2, 2, 1);
            }
            l0.b0.o0(c4.this.f3896g);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c4 c4Var = c4.this;
            byte b2 = (byte) (c4Var.f3898i + 1);
            c4Var.f3898i = b2;
            if (b2 > 5) {
                l0.b0.o0(c4Var.f3899j);
                c4.this.f3898i = (byte) 0;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c4.this.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c4.this.c3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i4 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (i4 == 0 || (i3 = time.hour) <= 12) {
                i2 = 0;
            } else {
                time.hour = i3 - 12;
                i2 = 1;
            }
            int i5 = nt.f8637c;
            if (i5 == 3 || i5 == 4 || i5 == 5 || i5 == 7 || i5 == 8) {
                z.k.s(227, -58, 4, 1, time.hour, time.minute, (byte) ((i2 << 7) | 64));
            } else {
                z.k.s(227, -58, 4, 1, time.hour, time.minute, (byte) ((i2 << 7) | (i4 << 6)));
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (u0.b.f2) {
                case 0:
                    c4.this.e3(21);
                    break;
                case 1:
                    c4.this.e3(20);
                    break;
                case 2:
                    c4.this.e3(10);
                    break;
                case 3:
                    c4.this.e3(9);
                    break;
                case 5:
                    c4.this.e3(3);
                    break;
                case 6:
                    if (nt.f8637c == 8) {
                        c4.this.e3(17);
                    }
                    break;
                case 7:
                    int[] iArr = nt.f8645g;
                    if (iArr[12] == 0) {
                        c4.this.e3(6);
                    } else if (iArr[12] == 1) {
                        c4.this.e3(5);
                    }
                    break;
                case 8:
                    c4.this.e3(16);
                    break;
                case 9:
                    c4.this.e3(1);
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
        switch (iArr[0]) {
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        e3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    e3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        e3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    e3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        e3(3);
                    }
                } else if (nt.f8645g[15] == 0) {
                    e3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[38] == 1) {
                        e3(4);
                    }
                } else if (nt.f8645g[38] == 0) {
                    e3(4);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        e3(6);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    e3(5);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    e3(21);
                } else {
                    e3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    e3(10);
                } else {
                    e3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    e3(12);
                } else {
                    e3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41, 42};
        if (nt.a()) {
            qt.z(this.f3900k);
            y0.g.f18094d.a(this.f3901l, 1);
            y0.g.f18095e.a(this.f3901l, 1);
            w0.e.f17815a.a(this.f3900k, 1);
        }
        qt.z(this.f3904o);
        z.c.f18184d.a(this.f3905p, 1);
        int i2 = nt.f8637c;
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                this.f7886a.f8313h = 1;
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 27, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 27, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 27, 170);
                int i3 = this.f3903n + 1;
                this.f3903n = i3;
                this.f3903n = i3 % 2;
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 26, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 26, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 26, 170);
                int i4 = this.f3903n + 1;
                this.f3903n = i4;
                this.f3903n = i4 % 2;
                this.f7886a.f8313h = 0;
                return;
            }
            if (i2 == 7) {
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 1, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 1, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 1, 170);
                int i5 = this.f3903n + 1;
                this.f3903n = i5;
                this.f3903n = i5 % 2;
                this.f7886a.f8313h = 0;
                return;
            }
            if (i2 == 8) {
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 2, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 2, 170);
                z.k.s(227, 51, 5, 0, this.f3902m[this.f3903n % 2], 37, 2, 170);
                int i6 = this.f3903n + 1;
                this.f3903n = i6;
                this.f3903n = i6 % 2;
                this.f7886a.f8313h = 0;
                return;
            }
            if (i2 != 9) {
                if (i2 == 11) {
                    z.k.s(227, 202, 1, 0);
                    return;
                }
                if (i2 == 12) {
                    z.k.s(227, 202, 1, 1);
                    return;
                } else if (i2 != 17) {
                    this.f7886a.f8313h = 0;
                    return;
                } else {
                    this.f7886a.f8313h = 2;
                    return;
                }
            }
        }
        this.f7886a.f8313h = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -108) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            qt.y0(99, b4 & 255);
            qt.y0(100, b5 & 255);
            qt.y0(98, b6 & 255);
            qt.y0(101, b7 & 255);
        }
        if (b3 == -107) {
            int i7 = bArr[i2 + 2] & 255;
            if (this.f3897h != i7) {
                if (i7 == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        k3();
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i7 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    if (y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                this.f3897h = i7;
                return;
            }
            return;
        }
        if (b3 == 47) {
            if (nt.a()) {
                d3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b3 == 85) {
            int i8 = nt.f8637c;
            if (i8 < 196751 || i8 > 524431) {
                return;
            }
            int i9 = i2 + 2;
            byte b8 = bArr[i9];
            int i10 = i2 + 3;
            byte b9 = bArr[i10];
            byte b10 = bArr[i2 + 4];
            byte b11 = bArr[i2 + 5];
            byte b12 = bArr[i2 + 6];
            byte b13 = bArr[i2 + 7];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b8 = bArr[i10];
                b9 = bArr[i9];
            }
            int i11 = b8 & 255;
            if (i11 == 16) {
                qt.y0(27, -2);
            } else if (i11 == 80) {
                qt.y0(27, -3);
            } else if (i11 > 16 && i11 < 80) {
                qt.y0(27, i11);
            }
            int i12 = b9 & 255;
            if (i12 == 16) {
                qt.y0(28, -2);
            } else if (i12 == 80) {
                qt.y0(28, -3);
            } else if (i12 > 16 && i12 < 80) {
                qt.y0(28, i12);
            }
            qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
            switch ((b10 >> 4) & 15) {
                case 1:
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                    break;
                case 2:
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                    break;
                case 3:
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 4:
                    i4 = 0;
                    i5 = 1;
                    i6 = i5;
                    break;
                case 5:
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                    break;
                case 6:
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 7:
                    i4 = 1;
                    i5 = i4;
                    i6 = i5;
                    break;
                default:
                    i4 = 0;
                    i5 = i4;
                    i6 = i5;
                    break;
            }
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(18, i6);
            qt.y0(29, b11 & 3);
            qt.y0(31, (b11 >> 2) & 3);
            qt.y0(30, (b11 >> 4) & 3);
            qt.y0(32, (b11 >> 6) & 3);
            qt.y0(13, b12 & 1);
            qt.y0(11, (b12 >> 1) & 1);
            qt.y0(14, (b12 >> 2) & 1);
            qt.y0(53, (b12 >> 4) & 1);
            qt.y0(65, (b12 >> 5) & 1);
            qt.y0(38, (b12 >> 6) & 1);
            qt.y0(15, (b12 >> 7) & 1);
            qt.y0(12, (b13 >> 0) & 3);
            qt.y0(67, (b13 >> 3) & 1);
            if (nt.a()) {
                int i13 = bArr[i2 + 9] & 255;
                if (i13 == 255 || i13 == 0) {
                    u0.d.B3(0);
                    return;
                } else {
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i13 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i13 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            return;
        }
        if (b3 == 102) {
            if (nt.a() && nt.f8633a == 333) {
                d3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b14 = bArr[i2 + 2];
                    byte b15 = bArr[i2 + 3];
                    this.f3892c = b14 & 255;
                    int i14 = 0;
                    while (true) {
                        int[][] iArr = this.f3893d;
                        if (i14 < iArr.length) {
                            int i15 = this.f3892c;
                            if (i15 != iArr[i14][0]) {
                                i14++;
                            } else if (i15 != 0) {
                                this.f3891b = i14;
                            }
                        }
                    }
                    int i16 = b15 & 255;
                    if (this.f3894e != i16) {
                        this.f3894e = i16;
                        if (i16 == 2) {
                            int i17 = this.f3892c;
                            if (i17 == 7 || i17 == 9 || i17 == 10 || i17 == 21 || i17 == 22) {
                                this.f3895f = (byte) 0;
                                l0.b0.a(this.f3896g);
                            }
                        } else if (i16 == 0) {
                            l0.b0.o0(this.f3896g);
                            this.f3895f = (byte) 0;
                        }
                    }
                    int i18 = this.f3892c;
                    if (i18 == 254) {
                        if (i16 == 1) {
                            if (u0.b.f17366w == 0) {
                                u0.d.d1(1);
                            } else {
                                u0.d.d1(0);
                            }
                        }
                        break;
                    } else {
                        switch (i18) {
                            case 65:
                                for (int i19 = 0; i19 < i16; i19++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 66:
                                for (int i20 = 0; i20 < i16; i20++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 67:
                                for (int i21 = 0; i21 < i16; i21++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            case 68:
                                for (int i22 = 0; i22 < i16; i22++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            default:
                                if (i16 != 1) {
                                    if (i16 == 0) {
                                        int i23 = this.f3891b;
                                        int[][] iArr2 = this.f3893d;
                                        if (i23 < iArr2.length && i23 != 255) {
                                            l0.b0.l0(iArr2[i23][1], 1);
                                            l0.b0.o0(this.f3899j);
                                            this.f3898i = (byte) 0;
                                        }
                                        this.f3891b = 255;
                                    }
                                    break;
                                } else {
                                    int[][] iArr3 = this.f3893d;
                                    if (i14 < iArr3.length && (b2 = this.f3898i) == 0) {
                                        this.f3898i = (byte) (b2 + 1);
                                        l0.b0.l0(iArr3[i14][1], 0);
                                        l0.b0.a(this.f3899j);
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                }
                break;
            case 33:
                int i24 = nt.f8633a;
                if (i24 == 721039 || i24 == 786575) {
                    int i25 = bArr[i2 + 2] & 255;
                    int i26 = bArr[i2 + 3] & 255;
                    int i27 = bArr[i2 + 6] & 255;
                    qt.y0(10, (i25 >> 7) & 1);
                    qt.y0(11, (i25 >> 6) & 1);
                    qt.y0(12, (i25 >> 5) & 1);
                    qt.y0(13, (i25 >> 3) & 1);
                    qt.y0(14, (i25 >> 2) & 1);
                    qt.y0(18, (i26 >> 7) & 1);
                    qt.y0(19, (i26 >> 6) & 1);
                    qt.y0(20, (i26 >> 5) & 1);
                    qt.y0(21, i26 & 15);
                    int i28 = i2 + 4;
                    int i29 = bArr[i28] & 255;
                    int i30 = i2 + 5;
                    int i31 = bArr[i30] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i29 = bArr[i30] & 255;
                        i31 = bArr[i28] & 255;
                    }
                    int i32 = i29 & 255;
                    if (i32 == 0) {
                        qt.y0(27, -2);
                    } else if (i32 != 255) {
                        qt.y0(27, i32);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i33 = i31 & 255;
                    if (i33 == 0) {
                        qt.y0(28, -2);
                    } else if (i33 != 255) {
                        qt.y0(28, i33);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(15, (i27 >> 7) & 1);
                    qt.y0(16, (i27 >> 6) & 1);
                } else if (nt.a()) {
                    int i34 = nt.f8633a;
                    if (i34 == 196751 || i34 == 262287 || i34 == 327823) {
                        if ((bArr[i2 + 2] & 1) == 1) {
                            qt.a(1);
                        } else {
                            qt.a(0);
                        }
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i35 = i2 + 2;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 3;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 4;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 5;
                int i42 = bArr[i41] & 255;
                if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i36;
                l0.c0.f13014h = i38;
                l0.c0.f13015i = i40;
                l0.c0.f13016j = i42;
                u0.d.D2(l0.c0.K0(bArr[i35] & 255));
                u0.d.E2(l0.c0.K0(bArr[i37] & 255));
                u0.d.F2(l0.c0.K0(bArr[i39] & 255));
                u0.d.G2(l0.c0.K0(bArr[i41] & 255));
                break;
            default:
                switch (b3) {
                    case 40:
                        byte b16 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b16 >> 7) & 1);
                            qt.y0(2, (b16 >> 6) & 1);
                        } else {
                            qt.y0(1, (b16 >> 6) & 1);
                            qt.y0(2, (b16 >> 7) & 1);
                        }
                        qt.y0(4, (b16 >> 5) & 1);
                        qt.y0(3, (b16 >> 4) & 1);
                        qt.y0(5, (b16 >> 3) & 1);
                        qt.y0(0, (b16 >> 2) & 1);
                        break;
                    case 41:
                        qt.l(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5400);
                        break;
                    case 42:
                        int i43 = nt.f8637c;
                        if (i43 == 393359 || i43 == 589967) {
                            byte b17 = bArr[i2 + 2];
                            byte b18 = bArr[i2 + 3];
                            byte b19 = bArr[i2 + 6];
                            qt.y0(10, (b17 >> 7) & 1);
                            qt.y0(11, (b17 >> 6) & 1);
                            qt.y0(12, (b17 >> 5) & 1);
                            qt.y0(13, (b17 >> 4) & 1);
                            qt.y0(14, (b17 >> 2) & 1);
                            qt.y0(15, (b17 >> 1) & 1);
                            qt.y0(38, (b17 >> 0) & 1);
                            qt.y0(18, (b18 >> 7) & 1);
                            qt.y0(19, (b18 >> 6) & 1);
                            qt.y0(20, (b18 >> 5) & 1);
                            qt.y0(21, b18 & DhcpPacket.DHCP_DOMAIN_NAME);
                            int i44 = i2 + 4;
                            byte b20 = bArr[i44];
                            int i45 = i2 + 5;
                            byte b21 = bArr[i45];
                            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                b20 = bArr[i45];
                                b21 = bArr[i44];
                            }
                            int i46 = b20 & 255;
                            if (i46 == 254) {
                                qt.y0(27, -2);
                            } else if (i46 != 255) {
                                qt.y0(27, i46);
                            } else {
                                qt.y0(27, -3);
                            }
                            int i47 = b21 & 255;
                            if (i47 == 254) {
                                qt.y0(28, -2);
                            } else if (i47 != 255) {
                                qt.y0(28, i47);
                            } else {
                                qt.y0(28, -3);
                            }
                            qt.y0(29, (b19 >> 4) & 3);
                            qt.y0(30, b19 & 3);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3900k);
        y0.g.f18094d.d(this.f3901l);
        y0.g.f18095e.d(this.f3901l);
        w0.e.f17815a.d(this.f3900k);
        qt.q0(this.f3904o);
        z.c.f18184d.d(this.f3905p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 16) {
                if (n0.j4.f16464b == 62) {
                    z.k.s(227, 51, 3, iArr[0], iArr[1], iArr[2]);
                    return;
                }
                return;
            }
            if (i2 != 1003) {
                if (i2 == 2) {
                    z.k.s(227, 130, 2, iArr[0], iArr[1]);
                    return;
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    return;
                }
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (nt.f8637c != 1) {
                z.k.s(227, -57, 1, 1);
                return;
            } else if (iArr[0] == 0) {
                z.k.s(227, -58, 2, 2, 1);
                return;
            } else {
                if (iArr[0] == 1) {
                    z.k.s(227, -58, 2, 2, 2);
                    return;
                }
                return;
            }
        }
        if (nt.f8637c == 7 && T2(iArr, 1)) {
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 1, 170);
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 1, 170);
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 1, 170);
        } else if (nt.f8637c == 8 && T2(iArr, 1)) {
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 2, 170);
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 2, 170);
            z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 2, 170);
        } else {
            int i3 = nt.f8637c;
            if ((i3 == 6 || i3 == 9) && T2(iArr, 2)) {
                z.k.s(227, 218, 2, iArr[0], iArr[1]);
            } else if (nt.f8637c == 4) {
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 26, 170);
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 26, 170);
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 26, 170);
            } else {
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 27, 170);
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 27, 170);
                z.k.s(227, 51, 5, iArr[0], this.f3902m[this.f3903n % 2], 37, 27, 170);
            }
        }
        int i4 = this.f3903n + 1;
        this.f3903n = i4;
        this.f3903n = i4 % 2;
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
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
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
                int i8 = u0.b.s3;
                iArr[4] = i8 & 255;
                iArr[5] = (i8 >> 8) & 255;
                int i9 = u0.b.r3;
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
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final void d3(int i2) {
        switch (i2) {
            case 1:
                if (u0.b.D == 1) {
                    w0.f.J(28, 30);
                } else {
                    o1.u.x0();
                }
                break;
            case 2:
                if (u0.b.D == 1) {
                    w0.f.J(28, 28);
                } else {
                    o1.u.x0();
                }
                break;
            case 3:
                if (u0.b.D == 1) {
                    w0.f.J(28, 29);
                } else {
                    o1.u.x0();
                }
                break;
            case 4:
                o1.u.E();
                break;
            case 5:
            case 6:
                o1.u.i();
                break;
            case 7:
                o1.u.q();
                break;
            case 8:
                o1.u.j();
                break;
            case 9:
                if (u0.b.D == 1) {
                    w0.f.J(28, 27);
                } else {
                    o1.u.x0();
                }
                break;
            case 10:
                o1.u.i();
                break;
            case 14:
                o1.u.Z0();
                break;
            case 15:
                c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
                break;
            case 17:
                if (h0.c.E != 5) {
                    h0.c.f2425b.h(0);
                } else {
                    h0.c.f2425b.h(1);
                }
                break;
            case 18:
                h0.c.f2425b.h(1);
                break;
        }
    }

    public final void e3(int i2) {
        int i3 = nt.f8633a;
        if (i3 != 393359 && i3 != 589967) {
            Z0(0, new int[]{i2}, null, null);
            return;
        }
        if (i2 == 16) {
            i2 = 8;
        }
        if (i2 == 13) {
            i2 = 1;
        }
        if (i2 == 4) {
            i2 = 5;
        }
        if (i2 == 5) {
            i2 = 38;
        }
        if (i2 == 6) {
            i2 = 39;
        }
        int i4 = i2 != 20 ? i2 : 6;
        if (i4 == 21) {
            i4 = 7;
        }
        if (i4 == 9) {
            i4 = 12;
        }
        int i5 = i4 != 10 ? i4 : 13;
        if (i5 == 11) {
            i5 = 14;
        }
        if (i5 == 12) {
            i5 = 15;
        }
        Z0(0, new int[]{i5, 1}, null, null);
        Z0(0, new int[]{i5, 0}, null, null);
    }

    public final void k3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
