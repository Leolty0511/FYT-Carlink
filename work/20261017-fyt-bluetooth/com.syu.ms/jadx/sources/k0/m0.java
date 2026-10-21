package k0;

import android.bluetooth.BluetoothClass;
import android.drm.DrmManagerClient;
import android.media.MediaMetadataEditor;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class m0 extends lt {
    public static int M;
    public static int N;
    public static int O;
    public String H;
    public String I;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7901i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7904l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7894b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f7895c = new int[3][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7896d = new int[6][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f7897e = new int[7][];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f7898f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7899g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7900h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7902j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f7903k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7905m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f7906n = {new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 28}, new int[]{4, 27}, new int[]{5, 16}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, -1}, new int[]{20, 37}, new int[]{21, 36}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 18}, new int[]{25, 18}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7907o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7908p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7909q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public byte f7910r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7911s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7912t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f7913u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f7914v = new g();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f7915w = new h();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f7916x = new i();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f7917y = new j();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f7918z = new k();
    public final Runnable A = new a();
    public int B = -1;
    public boolean C = false;
    public String D = ProxyProperties.LOCAL_EXCL_LIST;
    public int E = 0;
    public int F = 0;
    public Runnable G = new b();
    public int[] J = {34, 204};
    public int K = 0;
    public int L = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.this.w3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) ((((!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
            m0 m0Var = m0.this;
            if (m0Var.f7912t == 20) {
                if (m0Var.E != 1) {
                    m0Var.F = 0;
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{2, 0});
                    return;
                }
                int i2 = m0Var.F + 1;
                m0Var.F = i2;
                if (i2 >= 6) {
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{2, 1});
                } else if (i2 % 2 == 1) {
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{2, 1});
                } else {
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{2, 0});
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0 m0Var = m0.this;
            int i2 = m0Var.f7900h;
            if (i2 > 0) {
                m0Var.f7900h = i2 - 1;
            }
            if (m0Var.f7900h == 0) {
                m0Var.a3();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.this.c3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0 m0Var = m0.this;
            byte b2 = (byte) (m0Var.f7910r + 1);
            m0Var.f7910r = b2;
            if (b2 > 5) {
                l0.b0.o0(m0Var.f7911s);
                m0.this.f7910r = (byte) 0;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(m0.this.f7915w);
            m0.this.f7913u = (byte) 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0 m0Var = m0.this;
            byte b2 = (byte) (m0Var.f7913u - 1);
            m0Var.f7913u = b2;
            if (b2 <= 0) {
                l0.b0.p0(m0Var.f7915w);
                m0.this.f7913u = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 144, 2, 39, 0);
                z.k.s(227, 144, 2, 64, 16);
                z.k.s(227, 144, 2, 64, 48);
                z.k.s(227, 144, 2, 64, 64);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.this.t3((byte) 113, u0.b.i3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.this.t3((byte) 114, u0.b.j3);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                case 5:
                    i3 = 1;
                    break;
            }
            if (m0.this.B != i3) {
                m0.this.B = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (m0.this.D.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                m0.this.D = h0.c.f2437h;
                if (m0.this.D == null) {
                    m0.this.D = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (m0.this.B != 0) {
                    m0 m0Var = m0.this;
                    m0Var.v3(m0Var.D);
                }
                if (m0.this.C != z4) {
                    m0.this.C = z4;
                    m0.this.B = 0;
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        e3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    e3(1);
                }
                break;
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
                        e3(38);
                    }
                } else if (nt.f8645g[15] == 0) {
                    e3(38);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        e3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    e3(35);
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
        this.f7912t = (nt.f8633a >> 16) & 65535;
        this.f7898f.a();
        qt.z(this.G);
        u3(this.f7898f.b(1, 0));
        if (nt.a()) {
            qt.z(this.f7907o);
            y0.g.f18094d.a(this.f7908p, 1);
            y0.g.f18095e.a(this.f7908p, 1);
            w0.e.f17815a.a(this.f7907o, 1);
            w0.e.f17819e.a(this.f7907o, 1);
            qt.y(this.f7909q);
            u0.c.f17386m.a(this.f7914v, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        if (this.f7912t == 20) {
            this.f7886a.f8314i = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        h0.d.f2464c.a(this.f7918z, 1);
        h0.d.f2462a.a(this.f7918z, 1);
        u0.c.f17388o.a(this.f7916x, 1);
        u0.c.f17389p.a(this.f7917y, 1);
        int i2 = this.f7912t;
        if (i2 == 1) {
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 2, 170);
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 2, 170);
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 2, 170);
            int i3 = this.K + 1;
            this.K = i3;
            this.K = i3 % 2;
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 3, 170);
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 3, 170);
            z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 3, 170);
            int i4 = this.K + 1;
            this.K = i4;
            this.K = i4 % 2;
            return;
        }
        if (i2 != 3) {
            return;
        }
        z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 4, 170);
        z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 4, 170);
        z.k.s(227, 51, 5, 0, this.J[this.K % 2], 37, 4, 170);
        int i5 = this.K + 1;
        this.K = i5;
        this.K = i5 % 2;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        byte b3 = bArr[i2];
        if (b3 == 22) {
            qt.y0(184, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            int i5 = i2 + 6;
            int i6 = i2 + 5;
            qt.y0(185, ((bArr[i5] << 8) & 65280) | (bArr[i6] & 255));
            qt.y0(1032, (bArr[i6] & 255) | ((bArr[i5] << 8) & 65280));
        }
        if (b3 == 39) {
            int[] iArr3 = new int[1];
            int i7 = i2 + 2;
            iArr3[0] = (bArr[i7] & 255) == 0 ? 1 : 0;
            qt.y0(174, iArr3);
            if (nt.a()) {
                byte b4 = bArr[i7];
                int i8 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255);
                if ((32768 & i8) == 0) {
                    i4 = (b4 & 1) == 1 ? i8 + 1000 : ((i8 / 10) * 10) + 1000 + (i8 % 10);
                } else if ((b4 & 1) == 1) {
                    i4 = 1000 - ((~i8) + 1);
                } else {
                    int i9 = (~i8) + 1;
                    i4 = (1000 - ((i9 / 10) * 10)) - (i9 % 10);
                }
                u0.d.A3(i4);
                return;
            }
            return;
        }
        if (b3 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19918);
            return;
        }
        if (b3 == 64) {
            byte b5 = bArr[i2 + 2];
            if (b5 == -128) {
                int i10 = i2 + 3;
                qt.y0(153, bArr[i10] & 1);
                qt.y0(154, bArr[i10] & 2);
                qt.y0(155, bArr[i10] & 4);
                qt.y0(156, bArr[i10] & 8);
                qt.y0(157, bArr[i10] & 16);
                qt.y0(158, 32 & bArr[i10]);
                qt.y0(159, bArr[i10] & 64);
                qt.y0(160, bArr[i10] & 128);
                int i11 = i2 + 4;
                qt.y0(161, bArr[i11] & 1);
                qt.y0(182, bArr[i11] & 2);
                return;
            }
            if (b5 == -112) {
                int i12 = i2 + 3;
                qt.y0(180, bArr[i12] & 1);
                qt.y0(181, (bArr[i12] & 2) >> 1);
                qt.y0(163, (bArr[i12] & 4) >> 2);
                qt.y0(164, ((bArr[i12] & 240) >> 4) & 255);
                int i13 = i2 + 4;
                qt.y0(165, 15 & bArr[i13] & 255);
                qt.y0(166, ((bArr[i13] & 240) >> 4) & 255);
                return;
            }
            if (b5 == -80) {
                int i14 = i2 + 3;
                qt.y0(198, bArr[i14] & 1);
                qt.y0(205, bArr[i14] & 1);
                return;
            }
            if (b5 == -64) {
                int i15 = i2 + 3;
                qt.y0(229, (bArr[i15] >> 0) & 1);
                qt.y0(228, (bArr[i15] >> 1) & 1);
                qt.y0(227, (bArr[i15] >> 2) & 1);
                qt.y0(226, (bArr[i15] >> 3) & 3);
                return;
            }
            if (b5 == -48) {
                if (nt.f8637c == 21) {
                    int i16 = i2 + 3;
                    qt.y0(Process.MEDIA_UID, bArr[i16] & 255);
                    int i17 = (bArr[i16] >> 4) & 7;
                    this.L = i17;
                    if (i17 == 7) {
                        qt.a(0);
                    } else {
                        qt.a(1);
                        int i18 = i2 + 6;
                        if (((bArr[i18] >> 4) & 7) == 4) {
                            if (u0.b.G == 1) {
                                u0.d.F(0);
                            }
                        } else if (((bArr[i18] >> 7) & 1) == 1) {
                            if (u0.b.G == 0) {
                                u0.d.F(1);
                            }
                        } else if (((bArr[i18] >> 7) & 1) == 0 && u0.b.G == 1) {
                            u0.d.F(0);
                        }
                    }
                } else {
                    qt.y0(Process.MEDIA_UID, bArr[i2 + 3] & 255);
                }
                qt.y0(201, bArr[i2 + 4] & 255);
                qt.y0(202, bArr[i2 + 5] & 255);
                qt.y0(203, bArr[i2 + 6] & 255);
                return;
            }
            if (b5 == 16) {
                int i19 = i2 + 3;
                qt.y0(162, bArr[i19] & 3);
                o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{0, bArr[i19] & 3});
                return;
            }
            if (b5 == 32) {
                int i20 = i2 + 3;
                qt.y0(125, ((2 & bArr[i20]) << 7) | (bArr[i2 + 4] & 255));
                qt.y0(124, bArr[i20] & 1);
                qt.y0(225, bArr[i2 + 5] & 255);
                return;
            }
            if (b5 == 64) {
                int i21 = i2 + 3;
                o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{1, (bArr[i21] >> 0) & 1});
                qt.y0(116, (bArr[i21] >> 0) & 1);
                qt.y0(204, (bArr[i21] >> 1) & 1);
                int i22 = i2 + 4;
                qt.y0(117, (bArr[i22] >> 0) & 15);
                qt.y0(118, (bArr[i22] >> 4) & 15);
                int i23 = i2 + 5;
                qt.y0(119, (bArr[i23] >> 0) & 15);
                qt.y0(120, (bArr[i23] >> 4) & 15);
                return;
            }
            if (b5 == 96) {
                int i24 = i2 + 3;
                qt.y0(148, bArr[i24] & 1);
                qt.y0(149, bArr[i24] & 2);
                qt.y0(151, bArr[i24] & 4);
                qt.y0(152, bArr[i24] & 8);
                qt.y0(150, bArr[i2 + 4] & 1);
                return;
            }
            if (b5 == 112) {
                int i25 = i2 + 3;
                qt.y0(136, (bArr[i25] >> 0) & 15);
                qt.y0(137, 15 & (bArr[i25] >> 4));
                int i26 = i2 + 4;
                qt.y0(138, (bArr[i26] >> 0) & 1);
                qt.y0(199, (bArr[i26] >> 1) & 1);
                qt.y0(232, (bArr[i26] >> 2) & 1);
                qt.y0(224, (bArr[i2 + 5] >> 0) & 1);
                return;
            }
            if (b5 == -96) {
                int i27 = bArr[i2 + 3] & 255;
                int i28 = bArr[i2 + 4] & 255;
                int i29 = bArr[i2 + 5] & 255;
                qt.y0(191, (i27 >> 4) & 1);
                qt.y0(186, i27 & 15);
                qt.y0(187, (i28 >> 4) & 15);
                qt.y0(188, i28 & 15);
                qt.y0(189, (i29 >> 4) & 15);
                qt.y0(190, i29 & 15);
                return;
            }
            if (b5 == -95) {
                int i30 = i2 + 3;
                qt.y0(216, (bArr[i30] >> 4) & 15);
                qt.y0(217, (bArr[i30] >> 0) & 15);
                int i31 = i2 + 4;
                qt.y0(218, (bArr[i31] >> 4) & 15);
                qt.y0(219, (bArr[i31] >> 0) & 15);
                int i32 = i2 + 5;
                qt.y0(220, (bArr[i32] >> 7) & 1);
                qt.y0(221, (bArr[i32] >> 6) & 1);
                qt.y0(222, (bArr[i32] >> 5) & 1);
                qt.y0(223, (bArr[i32] >> 0) & 15);
                return;
            }
            if (b5 == 48) {
                int i33 = i2 + 3;
                qt.y0(132, bArr[i33] & 1);
                qt.y0(134, bArr[i33] & 2);
                qt.y0(230, (bArr[i33] >> 2) & 1);
                qt.y0(234, (bArr[i33] >> 3) & 1);
                qt.y0(233, 15 & (bArr[i33] >> 4));
                qt.y0(206, bArr[i2 + 4] & 1);
                if (((bArr[i33] >> 3) & 1) == 1) {
                    this.f7894b = 0;
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{3, 0});
                    return;
                } else {
                    this.f7894b = 1;
                    o1.x.B(nt.f8643f, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{3, 1});
                    return;
                }
            }
            if (b5 == 49) {
                int i34 = i2 + 3;
                qt.y0(127, bArr[i34] & 1);
                qt.y0(129, bArr[i34] & 2);
                qt.y0(130, bArr[i34] & 4);
                qt.y0(131, bArr[i34] & 8);
                int i35 = i2 + 4;
                qt.y0(126, bArr[i35] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(128, (bArr[i35] >> 4) & 15);
                return;
            }
            switch (b5) {
                case 80:
                    int i36 = i2 + 3;
                    qt.y0(139, 15 & bArr[i36]);
                    qt.y0(140, bArr[i36] & 16);
                    qt.y0(141, 32 & bArr[i36]);
                    qt.y0(175, bArr[i36] & 64);
                    qt.y0(143, bArr[i2 + 4] & 255);
                    qt.y0(146, bArr[i2 + 5] & 255);
                    qt.y0(147, bArr[i2 + 6] & 255);
                    break;
                case 81:
                    qt.y0(142, bArr[i2 + 3] & 1);
                    qt.y0(144, bArr[i2 + 4] & 255);
                    qt.y0(145, bArr[i2 + 5] & 255);
                    int i37 = i2 + 6;
                    qt.y0(231, (bArr[i37] >> 5) & 7);
                    qt.y0(195, (bArr[i37] >> 1) & 1);
                    qt.y0(196, (bArr[i37] >> 0) & 1);
                    break;
                case 82:
                    qt.y0(193, bArr[i2 + 3] & 255);
                    qt.y0(194, bArr[i2 + 4] & 255);
                    qt.y0(192, bArr[i2 + 5] & 255);
                    qt.y0(197, bArr[i2 + 6] & 255);
                    break;
            }
        }
        if (b3 == 80) {
            switch (bArr[i2 + 2]) {
                case 16:
                    int i38 = ((bArr[i2 + 3] << 29) & 536870912) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535);
                    qt.y0(98, i38);
                    qt.y0(103, i38);
                    qt.y0(108, i38);
                    break;
                case 32:
                    qt.y0(99, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                    break;
                case 33:
                    qt.y0(109, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                    break;
                case 34:
                    qt.y0(104, ((bArr[i2 + 3] << 29) & 536870912) | ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK));
                    break;
                case 48:
                    qt.y0(97, ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535));
                    break;
                case 49:
                    qt.y0(107, ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535));
                    break;
                case 50:
                    qt.y0(102, ((bArr[i2 + 3] << 29) & (-536870912)) | (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535));
                    break;
                case 64:
                    qt.y0(101, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                    break;
                case 65:
                    qt.y0(111, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                    break;
                case 66:
                    qt.y0(106, ((bArr[i2 + 3] << 29) & 536870912) | ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535));
                    break;
                case 80:
                    qt.y0(100, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                    break;
                case 81:
                    qt.y0(110, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                    break;
                case 82:
                    qt.y0(105, (((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 16777215);
                    break;
                case 96:
                    int i39 = i2 + 3;
                    boolean z2 = (bArr[i39] & 1) != 0;
                    qt.y0(115, bArr[i39] & 1);
                    int i40 = (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535;
                    if (z2) {
                        if (i40 > -1 && i40 < 166) {
                            M = 0;
                        } else if (i40 >= 166 && i40 < 332) {
                            M = 1;
                        } else if (i40 >= 332 && i40 < 498) {
                            M = 2;
                        } else if (i40 >= 498 && i40 < 664) {
                            M = 3;
                        } else if (i40 >= 664 && i40 < 830) {
                            M = 4;
                        } else if (i40 >= 830) {
                            M = 5;
                        }
                        qt.y0(113, M);
                        int i41 = ((i40 > 1000 ? 1000 : i40) * 100) / 1000;
                        N = i41;
                        qt.y0(114, i41);
                    } else {
                        if (i40 > -1 && i40 < 41) {
                            M = 0;
                        } else if (i40 >= 41 && i40 < 82) {
                            M = 1;
                        } else if (i40 >= 82 && i40 < 123) {
                            M = 2;
                        } else if (i40 >= 123 && i40 < 164) {
                            M = 3;
                        } else if (i40 >= 164 && i40 < 205) {
                            M = 4;
                        } else if (i40 >= 205) {
                            M = 5;
                        }
                        qt.y0(113, M);
                        if (i40 > 250) {
                            i40 = 250;
                        }
                        int i42 = (i40 * 100) / 250;
                        N = i42;
                        qt.y0(114, i42);
                    }
                    break;
            }
        }
        if (b3 == 101) {
            int i43 = i2 + 2;
            qt.y0(208, (bArr[i43] >> 0) & 1);
            qt.y0(209, (bArr[i43] >> 1) & 1);
            qt.y0(210, (bArr[i43] >> 2) & 1);
            qt.y0(211, (bArr[i43] >> 3) & 1);
            qt.y0(207, bArr[i2 + 3] & 255);
            return;
        }
        if (b3 == 102) {
            qt.y0(212, bArr[i2 + 3] & 255);
            qt.y0(213, bArr[i2 + 4] & 255);
            qt.y0(214, bArr[i2 + 5] & 255);
            qt.y0(215, bArr[i2 + 6] & 255);
            return;
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    this.f7902j = b6 & 255;
                    int i44 = 0;
                    while (true) {
                        iArr = this.f7903k;
                        if (i44 < iArr.length) {
                            int i45 = this.f7902j;
                            if (i45 != iArr[i44][0]) {
                                i44++;
                            } else if (i45 != 0) {
                                this.f7901i = i44;
                            }
                        }
                    }
                    int i46 = b7 & 255;
                    if (i46 != 1) {
                        if (i46 == 0) {
                            int i47 = this.f7901i;
                            if (i47 < iArr.length && i47 != 255) {
                                l0.b0.l0(iArr[i47][1], 1);
                                l0.b0.o0(this.f7911s);
                                this.f7910r = (byte) 0;
                            }
                            this.f7901i = 255;
                        }
                        break;
                    } else if (i44 < iArr.length && (b2 = this.f7910r) == 0) {
                        this.f7910r = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i44][1], 0);
                        l0.b0.a(this.f7911s);
                        break;
                    }
                }
                break;
            case 33:
                int i48 = i2 + 2;
                qt.y0(10, (bArr[i48] >> 7) & 1);
                qt.y0(11, (bArr[i48] >> 6) & 1);
                qt.y0(12, (bArr[i48] >> 5) & 1);
                qt.y0(13, (bArr[i48] >> 3) & 1);
                qt.y0(14, (bArr[i48] >> 2) & 1);
                qt.y0(15, (bArr[i48] >> 1) & 1);
                qt.y0(67, (bArr[i48] >> 0) & 1);
                int i49 = i2 + 3;
                qt.y0(18, (bArr[i49] >> 7) & 1);
                qt.y0(19, (bArr[i49] >> 6) & 1);
                qt.y0(20, (bArr[i49] >> 5) & 1);
                qt.y0(21, (bArr[i49] >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
                int i50 = i2 + 6;
                qt.y0(16, (bArr[i50] >> 6) & 1);
                qt.y0(54, (bArr[i50] >> 5) & 1);
                qt.y0(200, (bArr[i50] >> 5) & 1);
                qt.y0(53, (bArr[i50] >> 3) & 1);
                qt.y0(76, (bArr[i50] >> 2) & 1);
                qt.y0(37, (bArr[i50] >> 0) & 1);
                int i51 = i2 + 7;
                qt.y0(66, (bArr[i51] >> 7) & 1);
                qt.y0(17, (bArr[i51] >> 3) & 1);
                qt.y0(29, (bArr[i51] >> 4) & 7);
                qt.y0(30, (bArr[i51] >> 0) & 7);
                int i52 = i2 + 8;
                qt.y0(80, (bArr[i52] >> 2) & 1);
                qt.y0(73, bArr[i52] & 3);
                qt.y0(40, 255 & bArr[i2 + 9]);
                int i53 = i2 + 10;
                qt.y0(42, (bArr[i53] >> 7) & 1);
                qt.y0(88, (bArr[i53] >> 4) & 7);
                qt.y0(89, (bArr[i53] >> 1) & 7);
                int i54 = i2 + 11;
                qt.y0(48, (bArr[i54] >> 7) & 1);
                qt.y0(46, (bArr[i54] >> 6) & 1);
                qt.y0(47, (bArr[i54] >> 5) & 1);
                qt.y0(43, (bArr[i54] >> 4) & 1);
                qt.y0(44, (bArr[i54] >> 0) & 15);
                break;
            case 34:
                if (nt.a()) {
                    byte b8 = bArr[i2 + 2];
                    byte b9 = bArr[i2 + 3];
                    byte b10 = bArr[i2 + 4];
                    byte b11 = bArr[i2 + 5];
                    int i55 = ((b8 & 255) * 10) / 60;
                    u0.d.R2(i55 > 10 ? 10 : i55);
                    int i56 = ((b9 & 255) * 10) / 165;
                    u0.d.S2(i56 > 10 ? 10 : i56);
                    int i57 = ((b10 & 255) * 10) / 165;
                    u0.d.T2(i57 > 10 ? 10 : i57);
                    int i58 = ((b11 & 255) * 10) / 60;
                    u0.d.U2(i58 > 10 ? 10 : i58);
                }
                break;
            case 35:
                if (nt.a()) {
                    byte b12 = bArr[i2 + 2];
                    byte b13 = bArr[i2 + 3];
                    byte b14 = bArr[i2 + 4];
                    byte b15 = bArr[i2 + 5];
                    int i59 = ((b12 & 255) * 10) / 60;
                    if (i59 > 10) {
                        i59 = 10;
                    }
                    u0.d.D2(i59);
                    int i60 = ((b13 & 255) * 10) / 120;
                    if (i60 > 10) {
                        i60 = 10;
                    }
                    u0.d.E2(i60);
                    int i61 = ((b14 & 255) * 10) / 120;
                    if (i61 > 10) {
                        i61 = 10;
                    }
                    u0.d.F2(i61);
                    int i62 = ((b15 & 255) * 10) / 60;
                    if (i62 > 10) {
                        i62 = 10;
                    }
                    u0.d.G2(i62);
                    if ((l0.c0.f13013g != i59 || l0.c0.f13014h != i60 || l0.c0.f13015i != i61 || l0.c0.f13016j != i62) && u0.b.f17347o == 0) {
                        if (i59 < 10 || i60 < 10 || i61 < 10 || i62 < 10) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i59;
                    l0.c0.f13014h = i60;
                    l0.c0.f13015i = i61;
                    l0.c0.f13016j = i62;
                }
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                } else {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                }
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 5) & 1);
                int i63 = (b16 >> 3) & 1;
                qt.y0(5, i63);
                qt.y0(0, (b16 >> 2) & 1);
                this.E = i63;
                break;
            case 37:
                int i64 = i2 + 2;
                qt.y0(121, bArr[i64] & 2);
                qt.y0(122, bArr[i64] & 1);
                nt.a();
                break;
            default:
                switch (b3) {
                    case 47:
                        if (nt.a()) {
                            this.f7905m = bArr[i2 + 2] & 255;
                            int i65 = 0;
                            while (true) {
                                iArr2 = this.f7906n;
                                if (i65 < iArr2.length) {
                                    int i66 = this.f7905m;
                                    if (i66 != iArr2[i65][0]) {
                                        i65++;
                                    } else if (i66 != 0) {
                                        this.f7904l = i65;
                                    }
                                }
                            }
                            l0.b0.l0(iArr2[i65][1], 0);
                            l0.b0.l0(this.f7906n[i65][1], 1);
                        }
                        break;
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        qt.y0(235, bArr[i2 + 2] & 255);
                        break;
                    default:
                        switch (b3) {
                            case 96:
                                int i67 = i2 + 2;
                                int i68 = bArr[i67] & 255;
                                int i69 = i68 <= 6 ? i68 : 6;
                                int[] iArr4 = new int[2];
                                iArr4[0] = 0;
                                iArr4[1] = (bArr[i2 + 9] & 255) == 0 ? 50 : 49;
                                if (qt.C0(172, iArr4, this.f7896d[0])) {
                                    this.f7896d[0] = iArr4;
                                }
                                for (int i70 = 1; i70 < i69; i70++) {
                                    int[] iArr5 = {i70, (bArr[i67 + i70] + 1) & 255};
                                    if (qt.C0(172, iArr5, this.f7896d[i70])) {
                                        this.f7896d[i70] = iArr5;
                                    }
                                }
                                break;
                            case 97:
                                int i71 = i2 + 2;
                                int i72 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i71] & 255);
                                if (i72 > 7) {
                                    i72 = 7;
                                }
                                if (i72 > 0) {
                                    int i73 = 0;
                                    while (i73 < i72) {
                                        int i74 = i73 + 1;
                                        int[] iArr6 = {i73, (bArr[(i74 * 2) + i71] & 255) + 1};
                                        if (qt.C0(171, iArr6, this.f7897e[i73])) {
                                            this.f7897e[i73] = iArr6;
                                        }
                                        i73 = i74;
                                    }
                                    while (i72 < 7) {
                                        int[] iArr7 = {i72, 0};
                                        if (qt.C0(171, iArr7, this.f7897e[i72])) {
                                            this.f7897e[i72] = iArr7;
                                        }
                                        i72++;
                                    }
                                } else {
                                    for (int i75 = 0; i75 < 7; i75++) {
                                        int[] iArr8 = {i75, 0};
                                        if (qt.C0(171, iArr8, this.f7897e[i75])) {
                                            this.f7897e[i75] = iArr8;
                                        }
                                    }
                                }
                                break;
                            case 98:
                                int i76 = bArr[i2 + 2] & 255;
                                if (i76 > 0) {
                                    if (i76 > 3) {
                                        i76 = 3;
                                    }
                                    if (i76 == 1) {
                                        int i77 = i2 + 3;
                                        if (qt.C0(173, new int[]{0, bArr[i77] & 255}, this.f7895c[0])) {
                                            this.f7895c[0] = new int[]{0, bArr[i77] & 255};
                                        }
                                        for (int i78 = 1; i78 < 3; i78++) {
                                            int[] iArr9 = {i78, 0};
                                            if (qt.C0(173, iArr9, this.f7895c[i78])) {
                                                this.f7895c[i78] = iArr9;
                                            }
                                        }
                                    } else if (i76 == 2) {
                                        for (int i79 = 0; i79 < 2; i79++) {
                                            int[] iArr10 = {i79, bArr[i2 + 3 + i79] & 255};
                                            if (qt.C0(173, iArr10, this.f7895c[i79])) {
                                                this.f7895c[i79] = iArr10;
                                            }
                                            if (qt.C0(173, new int[]{2, 0}, this.f7895c[2])) {
                                                this.f7895c[0] = new int[]{2, 0};
                                            }
                                        }
                                    } else if (i76 == 3) {
                                        for (int i80 = 0; i80 < 3; i80++) {
                                            int[] iArr11 = {i80, bArr[i2 + 3 + i80] & 255};
                                            if (qt.C0(173, iArr11, this.f7895c[i80])) {
                                                this.f7895c[i80] = iArr11;
                                            }
                                        }
                                    } else {
                                        for (int i81 = 0; i81 < 3; i81++) {
                                            int[] iArr12 = {i81, 0};
                                            if (qt.C0(173, iArr12, this.f7895c[i81])) {
                                                this.f7895c[i81] = iArr12;
                                            }
                                        }
                                    }
                                }
                                break;
                            case 99:
                                byte b17 = bArr[i2 + 2];
                                if (b17 == 0) {
                                    StringBuilder sb = new StringBuilder();
                                    for (int i82 = 0; i82 < i3 - 3; i82++) {
                                        sb.append((char) bArr[i2 + 3 + i82]);
                                    }
                                    this.I = this.H;
                                    s3(sb.toString());
                                    qt.B0(179, this.H, this.I);
                                    break;
                                } else if (b17 == 16) {
                                    qt.y0(167, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                    break;
                                } else if (b17 == 17) {
                                    int i83 = i2 + 3;
                                    qt.y0(168, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i83] & 240) << 12) | ((bArr[i83] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                    break;
                                } else if (b17 == 32) {
                                    qt.y0(169, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                                    break;
                                } else if (b17 == 33) {
                                    int i84 = i2 + 3;
                                    qt.y0(170, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i84] & 240) << 12) | (bArr[i84] << 24));
                                    break;
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
        this.f7898f.j();
        qt.q0(this.G);
        u0.c.f17386m.d(this.f7914v);
        qt.q0(this.f7907o);
        y0.g.f18094d.d(this.f7908p);
        y0.g.f18095e.d(this.f7908p);
        w0.e.f17815a.d(this.f7907o);
        w0.e.f17819e.d(this.f7907o);
        qt.p0(this.f7909q);
        h0.d.f2464c.d(this.f7918z);
        h0.d.f2462a.d(this.f7918z);
        u0.c.f17388o.d(this.f7916x);
        u0.c.f17389p.d(this.f7917y);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 236) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.H);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f7897e[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 6) {
                    o1.x.v(bVar, i2, this.f7896d[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 3) {
                    o1.x.v(bVar, i2, this.f7895c[i4]);
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
        if (i2 == 98) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 102) {
            if (iArr[0] == 21 && nt.f8645g[21] == 1) {
                return;
            }
            z.k.s(227, 51, 5, iArr[0], this.J[this.K % 2], 37, 38, 170);
            z.k.s(227, 51, 5, iArr[0], this.J[this.K % 2], 37, 38, 170);
            z.k.s(227, 51, 5, iArr[0], this.J[this.K % 2], 37, 38, 170);
            int i3 = this.K + 1;
            this.K = i3;
            this.K = i3 % 2;
            return;
        }
        if (i2 == 107) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            d3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (nt.f8637c != 21) {
                if (iArr[0] < 0) {
                    iArr[0] = 0;
                } else if (iArr[0] > 3) {
                    iArr[0] = 3;
                }
                u3(iArr[0]);
                return;
            }
            if (iArr[0] <= 6) {
                z.k.s(227, 198, 2, 70, (byte) iArr[0]);
                return;
            }
            if (iArr[0] != 7) {
                if (iArr[0] <= 11) {
                    z.k.s(227, 198, 2, 79, ((byte) iArr[0]) - 8);
                    return;
                } else {
                    if (iArr[0] == 12) {
                        z.k.s(227, 198, 2, 79, 6);
                        return;
                    }
                    return;
                }
            }
            int i4 = u0.b.G;
            if (i4 == 1) {
                z.k.s(227, 198, 2, 79, 5);
                return;
            } else {
                if (i4 == 0) {
                    z.k.s(227, 198, 2, 79, 4);
                    return;
                }
                return;
            }
        }
        if (i2 == 1039 && iArr != null && iArr.length > 0) {
            int i5 = iArr[0];
            if (i5 == 0) {
                d3(16, iArr[1]);
                return;
            }
            if (i5 == 1) {
                d3(64, iArr[1]);
                return;
            }
            if (i5 == 2) {
                if (iArr[1] == 1) {
                    d3(119, iArr[1]);
                }
            } else {
                if (i5 == 3) {
                    if (iArr[1] == 1) {
                        d3(58, 0);
                        return;
                    } else {
                        d3(58, 1);
                        return;
                    }
                }
                if (i5 != 4) {
                    return;
                }
                o1.x[] xVarArr = nt.f8643f;
                int[] iArr2 = nt.f8645g;
                o1.x.B(xVarArr, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{0, iArr2[162]});
                o1.x.B(xVarArr, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{1, iArr2[116]});
                o1.x.B(xVarArr, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{2, iArr2[5]});
                o1.x.B(xVarArr, BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES, new int[]{3, this.f7894b});
            }
        }
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
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[4] = 1;
            } else if (i5 == 65537) {
                iArr[4] = 2;
            } else if (i5 == 65538) {
                iArr[4] = 3;
            } else if (i5 == 0) {
                iArr[4] = 17;
            } else if (i5 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            iArr[7] = w0.d.f17798j & 255;
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 == 2) {
            int i6 = h0.c.E;
            if (i6 == 0) {
                iArr[4] = 0;
            } else if (i6 <= 3) {
                iArr[4] = 1;
            } else {
                iArr[4] = 2;
            }
        } else if (i3 == 4) {
            int i7 = o0.e.B;
            iArr[4] = i7 & 255;
            iArr[5] = (i7 >> 8) & 255;
            iArr[6] = 0;
            int i8 = o0.e.f16794r;
            iArr[7] = i8 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i8 % 60;
        } else if (i3 == 8 || i3 == 9) {
            if (n0.j4.f16464b == 11) {
                int i9 = u0.b.r3;
                iArr[4] = (i9 >> 8) & 255;
                iArr[5] = i9 & 255;
                iArr[6] = 0;
                int i10 = u0.b.t3;
                iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i10 % 60;
            } else {
                iArr[4] = 0;
                iArr[5] = 0;
                int i11 = u0.b.r3;
                iArr[6] = (i11 >> 8) & 255;
                iArr[7] = i11 & 255;
                int i12 = u0.b.t3;
                iArr[8] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i12 % 60;
            }
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i13 = i2 + 1;
            iArr2[i13] = iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 7;
        iArr[3] = 48;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 6:
                if (d1.d.f1570c != 1) {
                    iArr[2] = 10;
                } else {
                    iArr[2] = 3;
                }
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                if (n0.j4.f16464b != 11) {
                    iArr[2] = 9;
                    iArr[3] = 17;
                } else {
                    iArr[2] = 9;
                    iArr[3] = 19;
                }
                break;
            case 9:
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
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
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

    public final void d3(int i2, int i3) {
        z.k.s(227, 198, 2, (byte) i2, (byte) i3);
    }

    public final void e3(int i2) {
        Z0(102, new int[]{i2}, null, null);
    }

    public final void s3(String str) {
        if (str == null) {
            if (this.H != str) {
                this.H = str;
            }
        } else {
            if (str.equals(this.H)) {
                return;
            }
            this.H = str;
        }
    }

    public final void t3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 44 ? bytes.length : 44;
        int[] iArr = new int[length + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = length + 1;
        iArr[3] = 1;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void u3(int i2) {
        O = i2;
        z.k.s(227, 198, 2, 70, (byte) i2);
        int iB = this.f7898f.b(1, 0);
        int i3 = O;
        if (iB != i3) {
            this.f7898f.g(1, i3);
        }
    }

    public final void v3(String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = 3;
        iArr[4] = 1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            iArr[5 + i2] = (byte) charArray[i2];
        }
        z.k.s(iArr);
        o1.j.e(o1.l.a(), this.A);
        o1.j.b(o1.l.a(), this.A, 1200L);
    }

    public final void w3() {
        int[] iArr = new int[5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = 2;
        iArr[3] = 0;
        switch (h0.c.E) {
            case 0:
                iArr[4] = 0;
                break;
            case 1:
            case 2:
            case 6:
                iArr[4] = 16;
                break;
            case 3:
                iArr[4] = 18;
                break;
            case 4:
                iArr[4] = 17;
                break;
            case 5:
                iArr[4] = 20;
                break;
        }
        z.k.s(iArr);
    }
}
