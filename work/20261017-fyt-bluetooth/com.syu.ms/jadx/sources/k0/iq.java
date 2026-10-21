package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class iq extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f6565l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6567c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6568d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{48, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6569e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6570f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6571g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6572h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6573i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f6574j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6575k = 1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 137, 6, time.hour, time.minute, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.year - 1999, time.month + 1, time.monthDay);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(iq.this.f6573i);
            iq.this.f6571g = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            iq iqVar = iq.this;
            int i2 = iqVar.f6571g - 1;
            iqVar.f6571g = i2;
            if (i2 <= 0) {
                l0.b0.p0(iqVar.f6573i);
                iq.this.f6571g = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                iq iqVar2 = iq.this;
                iqVar2.c3(iqVar2.f6574j.b(1, 0));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6574j.a();
        u0.c.f17386m.a(this.f6572h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        qt.z(this.f6570f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            if (this.f6569e) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 51) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                int i4 = i2 + 15;
                qt.y0(101, (bArr[i4] >> 7) & 1);
                qt.y0(102, (bArr[i4] >> 6) & 1);
                qt.y0(103, (bArr[i4] >> 4) & 3);
                qt.y0(104, (bArr[i4] >> 2) & 3);
                qt.y0(105, (bArr[i4] >> 0) & 3);
                qt.y0(106, bArr[i2 + 16] & 255);
                return;
            }
            if (b3 == 2) {
                qt.y0(107, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(108, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(109, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(110, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(111, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                return;
            }
            if (b3 != 3) {
                return;
            }
            qt.y0(112, bArr[i2 + 3] & 255);
            qt.y0(113, bArr[i2 + 4] & 255);
            qt.y0(114, bArr[i2 + 5] & 255);
            qt.y0(115, bArr[i2 + 6] & 255);
            qt.y0(116, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(117, bArr[i2 + 9] & 255);
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            qt.y0(120, bArr[i2 + 12] & 255);
            qt.y0(121, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
            qt.y0(122, bArr[i2 + 15] & 255);
            qt.y0(123, bArr[i2 + 16] & 255);
            qt.y0(124, bArr[i2 + 17] & 255);
            qt.y0(125, bArr[i2 + 18] & 255);
            qt.y0(126, ((bArr[i2 + 19] << 8) & 65280) | (bArr[i2 + 20] & 255));
            qt.y0(127, bArr[i2 + 21] & 255);
            qt.y0(128, bArr[i2 + 22] & 255);
            qt.y0(129, bArr[i2 + 23] & 255);
            qt.y0(130, bArr[i2 + 24] & 255);
            qt.y0(131, ((bArr[i2 + 25] << 8) & 65280) | (bArr[i2 + 26] & 255));
            qt.y0(132, bArr[i2 + 27] & 255);
            qt.y0(133, bArr[i2 + 28] & 255);
            qt.y0(134, bArr[i2 + 29] & 255);
            qt.y0(135, bArr[i2 + 30] & 255);
            qt.y0(136, (bArr[i2 + 32] & 255) | ((bArr[i2 + 31] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i5 = bArr[i2 + 2] & 255;
            if (i5 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i6 = i2 + 3;
                    l0.c0.b((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                } else {
                    int i7 = i2 + 3;
                    l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
                    return;
                }
            }
            if (i5 == 3) {
                int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i8);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                return;
            } else {
                if (i5 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6569e = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f6567c = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f6568d;
                    if (i9 < iArr.length) {
                        int i10 = this.f6567c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f6566b = i9;
                        }
                    }
                }
                int i11 = b5 & 255;
                if (i11 != 1) {
                    if (i11 == 0) {
                        int i12 = this.f6566b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f6566b = 255;
                    }
                } else if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                }
                break;
            case 33:
                int i13 = i2 + 2;
                qt.y0(10, (bArr[i13] >> 7) & 1);
                qt.y0(11, (bArr[i13] >> 6) & 1);
                qt.y0(12, (bArr[i13] >> 5) & 1);
                qt.y0(62, (bArr[i13] >> 4) & 1);
                qt.y0(13, (bArr[i13] >> 3) & 1);
                qt.y0(16, (bArr[i13] >> 1) & 1);
                qt.y0(38, (bArr[i13] >> 0) & 1);
                int i14 = i2 + 3;
                qt.y0(18, (bArr[i14] >> 7) & 1);
                qt.y0(19, (bArr[i14] >> 6) & 1);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(21, bArr[i14] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i15 = i2 + 6;
                qt.y0(37, bArr[i15] & 1);
                int i16 = i2 + 4;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i17 = bArr[i18] & 255;
                    i19 = bArr[i16] & 255;
                }
                if (i17 == 0) {
                    qt.y0(27, -2);
                } else if (i17 == 255) {
                    qt.y0(27, -3);
                } else if (nt.f8645g[37] == 1) {
                    qt.y0(27, i17 * 10);
                } else {
                    qt.y0(27, i17 * 5);
                }
                if (i19 == 0) {
                    qt.y0(28, -2);
                } else if (i19 == 255) {
                    qt.y0(28, -3);
                } else if (nt.f8645g[37] == 1) {
                    qt.y0(28, i19 * 10);
                } else {
                    qt.y0(28, i19 * 5);
                }
                qt.y0(65, (bArr[i15] >> 7) & 1);
                qt.y0(67, (bArr[i15] >> 2) & 1);
                int i20 = bArr[i2 + 8] & 255;
                if (i20 == 0) {
                    qt.y0(40, -2);
                } else if (i20 == 255) {
                    qt.y0(40, -3);
                } else if (nt.f8645g[37] == 1) {
                    qt.y0(40, i20 * 10);
                } else {
                    qt.y0(40, i20 * 5);
                }
                int i21 = i2 + 9;
                qt.y0(48, (bArr[i21] >> 7) & 1);
                qt.y0(46, (bArr[i21] >> 6) & 1);
                qt.y0(47, (bArr[i21] >> 5) & 1);
                qt.y0(44, (bArr[i21] >> 0) & 15);
                qt.y0(43, (bArr[i2 + 10] >> 7) & 1);
                int i22 = i2 + 11;
                qt.y0(29, (bArr[i22] >> 4) & 3);
                qt.y0(30, (bArr[i22] >> 0) & 3);
                qt.y0(31, (bArr[i22] >> 6) & 3);
                qt.y0(32, (bArr[i22] >> 2) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 4;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 5;
                int i30 = bArr[i29] & 255;
                if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i24;
                l0.c0.f13014h = i26;
                l0.c0.f13015i = i28;
                l0.c0.f13016j = i30;
                u0.d.D2(l0.c0.E0(bArr[i23] & 255));
                u0.d.E2(l0.c0.E0(bArr[i25] & 255));
                u0.d.F2(l0.c0.E0(bArr[i27] & 255));
                u0.d.G2(l0.c0.E0(bArr[i29] & 255));
                break;
            case 36:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b6 >> 6) & 1);
                    qt.y0(1, (b6 >> 7) & 1);
                } else {
                    qt.y0(2, (b6 >> 7) & 1);
                    qt.y0(1, (b6 >> 6) & 1);
                }
                qt.y0(4, (b6 >> 5) & 1);
                qt.y0(3, (b6 >> 4) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                qt.y0(0, (b6 >> 2) & 1);
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) != 0) {
                    int i31 = i2 + 3;
                    l0.c0.a((bArr[i31] >> 6) & 1, (bArr[i31] >> 7) & 1, 0);
                } else {
                    int i32 = i2 + 3;
                    l0.c0.b((bArr[i32] >> 6) & 1, (bArr[i32] >> 7) & 1, 0);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6574j.j();
        u0.c.f17386m.d(this.f6572h);
        l0.b0.p0(this.f6573i);
        qt.q0(this.f6570f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        } else if (i2 == 1005 && iArr != null && iArr.length > 0) {
            c3(iArr[0]);
        }
    }

    public final void c3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        f6565l = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        } else if (i2 == 3) {
            z.k.s(227, -58, 2, 64, 3);
        }
        qt.y0(Process.MEDIA_UID, f6565l);
        int iB = this.f6574j.b(1, 0);
        int i3 = f6565l;
        if (iB != i3) {
            this.f6574j.g(1, i3);
        }
    }
}
