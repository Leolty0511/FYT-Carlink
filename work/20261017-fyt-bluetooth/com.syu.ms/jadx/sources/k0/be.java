package k0;

import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class be extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f3623r = new int[12];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f3624s = new int[256];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f3625t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f3626u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f3627v = 10;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f3628w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3630c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3632e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3629b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3631d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3633f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3634g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 18}, new int[]{8, 26}, new int[]{23, 12}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3635h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3636i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3637j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3638k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3639l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.g0 f3640m = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3641n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3642o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3643p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f3644q = 4;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            be.this.c3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 2000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (be.this.f3638k == millis && be.this.f3639l == i2) {
                return;
            }
            be.this.f3638k = millis;
            be.this.f3639l = i2;
            z.k.s(227, 136, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, i2, (byte) time.hour, (byte) time.minute);
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
        mtVar.f8312g = 1;
        mtVar.f8315j = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            w0.e.f17815a.a(this.f3635h, 1);
            w0.e.f17819e.a(this.f3635h, 1);
            u0.c.f17374a.a(this.f3635h, 1);
            qt.z(this.f3635h);
            u0.c.f17393t.a(this.f3635h, 1);
            u0.c.f17392s.a(this.f3635h, 1);
        }
        qt.z(this.f3637j);
        u0.c.f17397x.a(this.f3636i, 1);
        i3(3, 0);
        i3(4, 0);
        i3(7, 0);
        int iB = this.f3640m.b(4, 0);
        f3628w = iB;
        qt.y0(157, iB);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        int i4 = 2;
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        int i5 = 11;
        switch (b2) {
            case 1:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                if (b3 != 41) {
                    if (b3 != 24 && nt.a()) {
                        this.f3633f = b3 & 255;
                        int i6 = 0;
                        while (true) {
                            iArr = this.f3634g;
                            if (i6 < iArr.length) {
                                int i7 = this.f3633f;
                                if (i7 != iArr[i6][0]) {
                                    i6++;
                                } else if (i7 != 0) {
                                    this.f3632e = i6;
                                }
                            }
                        }
                        if ((b4 & 255) != 0) {
                            if (i6 < iArr.length) {
                                l0.b0.l0(iArr[i6][1], 0);
                            }
                        } else if (i6 <= iArr.length) {
                            l0.b0.l0(iArr[this.f3632e][1], 1);
                        }
                    }
                    break;
                } else if (b4 == 1) {
                    this.f3630c = true;
                    break;
                } else if (b4 == 0 && this.f3630c) {
                    this.f3630c = false;
                    if (f3628w == 1) {
                        boolean z2 = !this.f3631d;
                        this.f3631d = z2;
                        if (z2) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                    break;
                }
                break;
            case 2:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                } else {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                }
                qt.y0(3, (b5 >> 5) & 1);
                qt.y0(4, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                int i8 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i8 == 1) {
                    qt.y0(Process.MEDIA_UID, 1);
                } else if (i8 == 2) {
                    qt.y0(Process.MEDIA_UID, 2);
                } else if (i8 == 3) {
                    qt.y0(Process.MEDIA_UID, 0);
                }
                if (f3628w == 1) {
                    if (((b6 >> 4) & 15) == 1) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        }
                    } else if (o1.u.T(a.b.O)) {
                        qt.f();
                    }
                }
                qt.y0(118, b7);
                break;
            case 3:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                byte b10 = bArr[i2 + 4];
                int i9 = (b8 >> 7) & 1;
                if (i9 == 0) {
                    i9 = 0;
                } else if (i9 == 16) {
                    i9 = 10000;
                }
                int[] iArr2 = nt.f8645g;
                if (iArr2[138] != i9) {
                    iArr2[138] = i9;
                    o1.x.C(nt.f8643f, 138, new int[]{i9}, null, null);
                }
                int i10 = ((b8 >> 6) & 1) == 0 ? 0 : 1;
                if (iArr2[147] != i10) {
                    iArr2[147] = i10;
                    o1.x.C(nt.f8643f, 147, new int[]{i10}, null, null);
                }
                int i11 = ((b8 >> 5) & 1) == 0 ? 0 : 1;
                if (iArr2[145] != i11) {
                    iArr2[145] = i11;
                    o1.x.C(nt.f8643f, 145, new int[]{i11}, null, null);
                }
                int i12 = ((b8 >> 4) & 1) == 0 ? 0 : 1;
                if (iArr2[146] != i12) {
                    iArr2[146] = i12;
                    o1.x.C(nt.f8643f, 146, new int[]{i12}, null, null);
                }
                int i13 = (b10 & 255) | ((b9 & 255) << 8);
                if (i9 == 0) {
                    i13 *= 10;
                }
                if (iArr2[137] != i13) {
                    iArr2[137] = i13;
                    o1.x.C(nt.f8643f, 137, new int[]{i13}, null, null);
                }
                break;
            case 4:
                int i14 = (bArr[i2 + 2] >> 7) & 1;
                int i15 = i14 != 0 ? 6 : 12;
                int[] iArr3 = nt.f8645g;
                if (iArr3[142] != i15) {
                    iArr3[142] = i15;
                    o1.x.C(nt.f8643f, 142, new int[]{i15}, null, null);
                }
                for (int i16 = 0; i16 < i15; i16++) {
                    int i17 = i2 + 3 + (i16 * 2);
                    int i18 = (bArr[i17 + 1] & 255) | (bArr[i17] << 8);
                    if (i14 == 0) {
                        i18 *= 10;
                    }
                    o1.x.C(nt.f8643f, 140, new int[]{i16, i18}, null, null);
                }
                break;
            case 5:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4860);
                break;
            case 6:
                if (nt.a()) {
                    u0.d.R2(l0.c0.c1(bArr[i2 + 3] & 255));
                    int i19 = i2 + 4;
                    u0.d.S2(l0.c0.c1(bArr[i19] & 255));
                    u0.d.T2(l0.c0.c1(bArr[i19] & 255));
                    u0.d.U2(l0.c0.c1(bArr[i2 + 5] & 255));
                }
                break;
            case 7:
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                byte b13 = bArr[i2 + 4];
                byte b14 = bArr[i2 + 5];
                byte b15 = bArr[i2 + 6];
                byte b16 = bArr[i2 + 7];
                int i20 = (b11 & DhcpPacket.DHCP_DOMAIN_NAME) - 1;
                int[] iArr4 = nt.f8645g;
                if (iArr4[139] != i20) {
                    iArr4[139] = i20;
                    o1.x.C(nt.f8643f, 139, new int[]{i20}, null, null);
                }
                int i21 = b12 & 255;
                int i22 = i21 < 0 ? 0 : i21 > 40 ? 40 : i21;
                if (iArr4[144] != i22) {
                    iArr4[144] = i22;
                    o1.x.C(nt.f8643f, 144, new int[]{i22}, null, null);
                }
                int i23 = b16 & 255;
                if (i23 < 0) {
                    i23 = 0;
                } else {
                    int i24 = i22 - 1;
                    if (i23 > i24) {
                        i23 = i24;
                    }
                }
                int i25 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i25 != 0) {
                    i25 = 1;
                }
                int i26 = (b13 & 255) | ((b14 & 255) << 8);
                if (i21 == 0) {
                    i26 *= 10;
                }
                int[] iArr5 = f3624s;
                if (iArr5[i23] != i26) {
                    iArr5[i23] = i26;
                    o1.x.C(nt.f8643f, 143, new int[]{i23, i26, i25}, null, null);
                }
                break;
            case 8:
                byte b17 = bArr[i2 + 2];
                if (b17 == 1) {
                    qt.y0(98, bArr[i2 + 3] & 255);
                    qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                    qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                    qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                    byte b18 = bArr[i2 + 15];
                    qt.y0(104, b18 & 3);
                    qt.y0(105, (b18 >> 2) & 3);
                    qt.y0(106, (b18 >> 4) & 3);
                    qt.y0(107, (b18 >> 6) & 1);
                    qt.y0(108, (b18 >> 7) & 1);
                    int i27 = bArr[i2 + 16] & 255;
                    if (i27 < 0) {
                        i5 = 0;
                    } else if (i27 <= 11) {
                        i5 = i27;
                    }
                    qt.y0(109, this.f3629b[i5]);
                } else if (b17 == 2) {
                    qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                    qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                    qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                    byte b19 = bArr[i2 + 18];
                    qt.y0(104, b19 & 3);
                    qt.y0(105, (b19 >> 2) & 3);
                    qt.y0(106, (b19 >> 4) & 3);
                    qt.y0(107, (b19 >> 6) & 1);
                    qt.y0(108, (b19 >> 7) & 1);
                    int i28 = bArr[i2 + 19] & 255;
                    if (i28 < 0) {
                        i5 = 0;
                    } else if (i28 <= 11) {
                        i5 = i28;
                    }
                    qt.y0(109, this.f3629b[i5]);
                }
                break;
            default:
                int i29 = 10;
                switch (b2) {
                    case 10:
                        byte b20 = bArr[i2 + 2];
                        byte b21 = bArr[i2 + 3];
                        byte b22 = bArr[i2 + 4];
                        byte b23 = bArr[i2 + 5];
                        byte b24 = bArr[i2 + 6];
                        qt.y0(120, (b20 >> 6) & 3);
                        qt.y0(119, (b20 >> 4) & 3);
                        qt.y0(121, b20 & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(122, (b21 >> 4) & 7);
                        qt.y0(123, (b21 >> 2) & 3);
                        qt.y0(124, b21 & 3);
                        qt.y0(125, (b22 >> 7) & 1);
                        qt.y0(126, (b22 >> 4) & 3);
                        qt.y0(131, (b23 >> 7) & 1);
                        qt.y0(127, (b23 >> 6) & 1);
                        qt.y0(129, (b23 >> 5) & 1);
                        qt.y0(130, (b23 >> 4) & 1);
                        qt.y0(132, (b23 >> 3) & 1);
                        qt.y0(133, (b23 >> 2) & 1);
                        qt.y0(136, b23 & 3);
                        qt.y0(151, (b24 >> 7) & 1);
                        qt.y0(134, (b24 >> 6) & 1);
                        qt.y0(152, (b24 >> 4) & 3);
                        qt.y0(135, (b24 >> 3) & 1);
                        qt.y0(128, (b24 >> 2) & 1);
                        break;
                    case 11:
                        int i30 = bArr[i2 + 2] & 255;
                        if (i30 < 0) {
                            i4 = 0;
                        } else if (i30 <= 2) {
                            i4 = i30;
                        }
                        qt.y0(153, i4);
                        int i31 = bArr[i2 + 3] & 255;
                        if (i31 < 0) {
                            i31 = 0;
                        } else if (i31 > 10) {
                            i31 = 10;
                        }
                        k3(i31);
                        qt.y0(154, i31);
                        int i32 = bArr[i2 + 4] & 255;
                        if (i32 < 0) {
                            i32 = 0;
                        } else if (i32 > 10) {
                            i32 = 10;
                        }
                        m3(i32);
                        qt.y0(155, i32);
                        int i33 = bArr[i2 + 5] & 255;
                        if (i33 < 0) {
                            i29 = 0;
                        } else if (i33 <= 10) {
                            i29 = i33;
                        }
                        n3(i29);
                        qt.y0(156, i29);
                        break;
                    case 12:
                        byte b25 = bArr[i2 + 2];
                        byte b26 = bArr[i2 + 3];
                        int i34 = i2 + 4;
                        byte b27 = bArr[i34];
                        int i35 = i2 + 5;
                        byte b28 = bArr[i35];
                        byte b29 = bArr[i2 + 6];
                        qt.y0(10, (b25 >> 7) & 1);
                        qt.y0(11, (b25 >> 6) & 1);
                        qt.y0(12, (b25 >> 5) & 1);
                        qt.y0(13, (b25 >> 3) & 1);
                        qt.y0(14, (b25 >> 2) & 1);
                        qt.y0(16, b25 & 1);
                        qt.y0(18, (b26 >> 7) & 1);
                        qt.y0(19, (b26 >> 6) & 1);
                        qt.y0(20, (b26 >> 5) & 1);
                        qt.y0(21, b26 & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(64, (b26 >> 4) & 1);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            b27 = bArr[i35];
                            b28 = bArr[i34];
                        }
                        byte b30 = b28;
                        int i36 = b27 & 255;
                        if (i36 == 0) {
                            qt.y0(27, -2);
                        } else if (i36 != 127) {
                            qt.y0(27, i36);
                        } else {
                            qt.y0(27, -3);
                        }
                        int i37 = b30 & 255;
                        if (i37 == 0) {
                            qt.y0(28, -2);
                        } else if (i37 != 127) {
                            qt.y0(28, i37);
                        } else {
                            qt.y0(28, -3);
                        }
                        qt.y0(65, (b29 >> 7) & 1);
                        qt.y0(37, b29 & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        w0.e.f17815a.d(this.f3635h);
        w0.e.f17819e.d(this.f3635h);
        u0.c.f17374a.d(this.f3635h);
        qt.q0(this.f3635h);
        u0.c.f17393t.d(this.f3635h);
        u0.c.f17392s.d(this.f3635h);
        qt.q0(this.f3637j);
        u0.c.f17397x.d(this.f3636i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 158) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 10) {
                iArr[0] = 10;
            }
            b3(0, iArr[0]);
        }
        if (i2 == 15) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            b3(15, 0);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                iArr[0] = 3;
            }
            z.k.s(227, 138, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            b3(2, iArr[0]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            b3(3, iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            b3(4, iArr[0]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            b3(5, iArr[0]);
            return;
        }
        if (i2 == 6) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 4) {
                iArr[0] = 4;
            }
            b3(6, iArr[0]);
            return;
        }
        switch (i2) {
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(10, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(11, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(12, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(13, iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 17:
                        if (iArr != null && iArr.length > 0) {
                            b3(17, 0);
                            break;
                        }
                        break;
                    case 18:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            b3(18, iArr[0]);
                            break;
                        }
                        break;
                    case 19:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            b3(19, iArr[0]);
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 21:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 3) {
                                        iArr[0] = 3;
                                    }
                                    b3(21, iArr[0]);
                                    break;
                                }
                                break;
                            case 22:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    a3(1, iArr[0]);
                                    break;
                                }
                                break;
                            case 23:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 10) {
                                        iArr[0] = 10;
                                    }
                                    a3(2, iArr[0]);
                                    break;
                                }
                                break;
                            case 24:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 10) {
                                        iArr[0] = 10;
                                    }
                                    a3(3, iArr[0]);
                                    break;
                                }
                                break;
                            case 25:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 10) {
                                        iArr[0] = 10;
                                    }
                                    a3(4, iArr[0]);
                                    break;
                                }
                                break;
                            case 26:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(22, iArr[0]);
                                    break;
                                }
                                break;
                            case 27:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(24, iArr[0]);
                                    break;
                                }
                                break;
                            case 28:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(25, iArr[0]);
                                    break;
                                }
                                break;
                            case 29:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    b3(27, iArr[0]);
                                    break;
                                }
                                break;
                            case 30:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(31, iArr[0]);
                                    break;
                                }
                                break;
                            case 31:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(28, iArr[0]);
                                    break;
                                }
                                break;
                            case 32:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    b3(29, iArr[0]);
                                    break;
                                }
                                break;
                            case 33:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(30, iArr[0]);
                                    break;
                                }
                                break;
                            case 34:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    b3(26, iArr[0]);
                                    break;
                                }
                                break;
                            case 35:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    a3(6, iArr[0]);
                                    l3(iArr[0]);
                                    break;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 70:
                                        if (iArr != null && iArr.length > 0) {
                                            if (iArr[0] != 0) {
                                                iArr[0] = 8;
                                            } else {
                                                iArr[0] = 9;
                                            }
                                            z.k.s(227, 131, 2, iArr[0], 0);
                                            break;
                                        }
                                        break;
                                    case 71:
                                        if (iArr != null && iArr.length > 0) {
                                            if (iArr[0] == 2) {
                                                iArr[0] = 5;
                                            } else if (iArr[0] == 1) {
                                                iArr[0] = 4;
                                            } else {
                                                iArr[0] = 8;
                                            }
                                            z.k.s(227, 131, 2, iArr[0], 0);
                                            break;
                                        }
                                        break;
                                    case 72:
                                        if (iArr != null && iArr.length > 0) {
                                            z.k.s(227, 131, 2, 1, 0);
                                            break;
                                        }
                                        break;
                                    case 73:
                                        if (iArr != null && iArr.length > 0) {
                                            if (iArr[0] == 0) {
                                                z.k.s(227, 131, 2, 10, 0);
                                            } else {
                                                z.k.s(227, 131, 2, 10, 1);
                                            }
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (i2) {
                                            case 80:
                                                if (iArr != null && iArr.length > 0) {
                                                    if (iArr[0] < 0) {
                                                        iArr[0] = 0;
                                                    } else if (iArr[0] > 11) {
                                                        iArr[0] = 11;
                                                    }
                                                    z.k.s(227, 131, 2, 7, iArr[0] + 1);
                                                    break;
                                                }
                                                break;
                                            case 81:
                                                if (iArr != null && iArr.length > 0) {
                                                    if (iArr[0] != 0) {
                                                        iArr[0] = 3;
                                                    } else {
                                                        iArr[0] = 2;
                                                    }
                                                    z.k.s(227, 131, 2, iArr[0], 0);
                                                    break;
                                                }
                                                break;
                                            case 82:
                                                if (iArr != null && iArr.length > 0) {
                                                    if (iArr[0] < 0) {
                                                        iArr[0] = 0;
                                                    } else if (iArr[0] > 11) {
                                                        iArr[0] = 11;
                                                    }
                                                    z.k.s(227, 131, 2, 6, iArr[0] + 1);
                                                    break;
                                                }
                                                break;
                                            case 83:
                                                if (iArr != null && iArr.length > 0) {
                                                    if (iArr[0] != 0) {
                                                        iArr[0] = 1;
                                                    } else {
                                                        iArr[0] = 0;
                                                    }
                                                    z.k.s(227, 131, 2, 12, iArr[0]);
                                                    break;
                                                }
                                                break;
                                            case 84:
                                                if (iArr != null && iArr.length > 0) {
                                                    if (iArr[0] < 0) {
                                                        iArr[0] = 0;
                                                    } else if (iArr[0] > 126) {
                                                        iArr[0] = 126;
                                                    }
                                                    z.k.s(227, 131, 2, 11, iArr[0]);
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 100:
                                                        if (iArr != null && T2(iArr, 2)) {
                                                            if (iArr[0] != 209) {
                                                                z.k.s(227, 141, 2, iArr[0], iArr[1]);
                                                            } else {
                                                                z.k.s(227, 141, 2, iArr[1] + 1, 0);
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    case 101:
                                                        z.k.s(227, 141, 2, 8, 3);
                                                        break;
                                                    case 102:
                                                        if (j3(iArr, 2)) {
                                                            z.k.s(227, 131, 2, iArr[0], iArr[1]);
                                                        }
                                                        break;
                                                    case 103:
                                                        if (j3(iArr, 2)) {
                                                            z.k.s(227, 143, 2, iArr[0], iArr[1]);
                                                        }
                                                        break;
                                                    case 104:
                                                        if (j3(iArr, 2)) {
                                                            z.k.s(227, 140, 2, iArr[0], iArr[1]);
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 140, 2, i2, i3);
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 143, 2, i2, i3);
    }

    public final void c3(int i2) {
        b3(23, (byte) (i2 == 0 ? 1 : 0));
    }

    public final void i3(int i2, int i3) {
        z.k.s(227, 141, 2, i2, i3);
    }

    public final boolean j3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void k3(int i2) {
        f3625t = i2;
        int iB = this.f3640m.b(1, 10);
        int i3 = f3625t;
        if (iB != i3) {
            this.f3640m.g(1, i3);
        }
    }

    public final void l3(int i2) {
        f3628w = i2;
        int iB = this.f3640m.b(4, 0);
        int i3 = f3628w;
        if (iB != i3) {
            this.f3640m.g(4, i3);
        }
        qt.y0(157, i2);
    }

    public final void m3(int i2) {
        f3627v = i2;
        int iB = this.f3640m.b(3, -2);
        int i3 = f3627v;
        if (iB != i3) {
            this.f3640m.g(3, i3);
        }
    }

    public final void n3(int i2) {
        f3626u = i2;
        int iB = this.f3640m.b(2, -2);
        int i3 = f3626u;
        if (iB != i3) {
            this.f3640m.g(2, i3);
        }
    }
}
