package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class nn extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f8579o = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8581c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8582d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 13}, new int[]{16, 5}, new int[]{17, 54}, new int[]{18, 0}, new int[]{19, 24}, new int[]{20, 18}, new int[]{21, 7}, new int[]{22, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8583e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8584f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8585g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f8586h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8587i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8588j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f8589k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8590l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8591m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8592n = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(nn.this.f8585g);
            nn.this.f8583e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nn nnVar = nn.this;
            int i2 = nnVar.f8583e - 1;
            nnVar.f8583e = i2;
            if (i2 <= 0) {
                l0.b0.p0(nnVar.f8585g);
                nn.this.f8583e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                nn nnVar2 = nn.this;
                nnVar2.h3(nnVar2.f8586h.b(1, 4));
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            switch (h0.c.E) {
                case 0:
                    i2 = 15;
                    break;
                case 1:
                case 2:
                case 6:
                default:
                    i2 = 0;
                    break;
                case 3:
                    i2 = 2;
                    break;
                case 4:
                    i2 = 1;
                    break;
                case 5:
                    i2 = 3;
                    break;
            }
            z.k.s(227, -120, 2, 0, i2);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (nn.this.f8589k != millis || nn.this.f8590l != i2) {
                nn.this.f8589k = millis;
                nn.this.f8590l = i2;
                z.k.s(227, -123, 7, ((byte) time.year) - 2000, (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0, 0);
            }
            int i3 = nt.f8633a;
            if (i3 == 14221766) {
                z.k.s(227, -18, 1, 1);
            } else {
                if (i3 != 14287302) {
                    return;
                }
                z.k.s(227, -18, 1, 2);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.g();
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
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(11);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(11);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(16);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(16);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(8);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(8);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(9);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(9);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        a3(12);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    a3(12);
                    break;
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(7);
                } else if (iArr[1] == -2) {
                    a3(6);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else if (iArr[1] == 1) {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else if (iArr[1] == 1) {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f8586h.a();
        u0.c.f17386m.a(this.f8584f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        w0.e.f17815a.a(this.f8592n, 1);
        l0.b0.b(this.f8592n);
        qt.z(this.f8591m);
        h0.d.f2462a.a(this.f8588j, 1);
        h0.d.f2464c.a(this.f8588j, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8581c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8582d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8581c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8580b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f8581c;
            if (i6 == 21) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
            if (i6 == 22) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f8580b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f8580b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i11 = i2 + 2;
            qt.y0(10, (bArr[i11] >> 7) & 1);
            qt.y0(11, (bArr[i11] >> 6) & 1);
            qt.y0(12, (bArr[i11] >> 5) & 1);
            qt.y0(13, (bArr[i11] >> 4) & 1);
            qt.y0(14, (bArr[i11] >> 3) & 1);
            qt.y0(53, (bArr[i11] >> 2) & 1);
            qt.y0(65, (bArr[i11] >> 1) & 1);
            qt.y0(16, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 7;
            qt.y0(29, (bArr[i12] >> 4) & 3);
            qt.y0(30, 3 & (bArr[i12] >> 0));
            int i13 = i2 + 3;
            qt.y0(18, (bArr[i13] >> 7) & 1);
            qt.y0(19, (bArr[i13] >> 6) & 1);
            qt.y0(20, (bArr[i13] >> 5) & 1);
            qt.y0(21, bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i14 = i2 + 4;
                if ((bArr[i14] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i14] & 255) == 32) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i14] & 255);
                }
                int i15 = i2 + 5;
                if ((bArr[i15] & 255) == 0) {
                    qt.y0(27, -2);
                    return;
                } else if ((bArr[i15] & 255) == 32) {
                    qt.y0(27, -3);
                    return;
                } else {
                    qt.y0(27, bArr[i15] & 255);
                    return;
                }
            }
            int i16 = i2 + 4;
            if ((bArr[i16] & 255) == 0) {
                qt.y0(27, -2);
            } else if ((bArr[i16] & 255) == 32) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i16] & 255);
            }
            int i17 = i2 + 5;
            if ((bArr[i17] & 255) == 0) {
                qt.y0(28, -2);
                return;
            } else if ((bArr[i17] & 255) == 32) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, bArr[i17] & 255);
                return;
            }
        }
        if (b2 == 4) {
            qt.y0(98, bArr[i2 + 2] & 255);
            int i18 = i2 + 3;
            qt.y0(99, (bArr[i18] >> 0) & 1);
            qt.y0(100, (bArr[i18] >> 1) & 1);
            qt.y0(101, (bArr[i18] >> 2) & 1);
            int i19 = i2 + 5;
            qt.y0(102, (bArr[i19] >> 0) & 15);
            qt.y0(103, 255 & bArr[i2 + 6]);
            int i20 = i2 + 7;
            qt.y0(104, (bArr[i20] >> 7) & 1);
            qt.y0(105, (bArr[i20] >> 6) & 1);
            qt.y0(106, (bArr[i20] >> 4) & 3);
            qt.y0(107, (bArr[i18] >> 6) & 1);
            qt.y0(108, (bArr[i18] >> 5) & 1);
            int i21 = i2 + 4;
            qt.y0(109, (bArr[i21] >> 2) & 3);
            qt.y0(110, (bArr[i21] >> 1) & 1);
            qt.y0(111, (bArr[i21] >> 0) & 1);
            qt.y0(112, (bArr[i19] >> 7) & 1);
            qt.y0(113, (bArr[i19] >> 4) & 3);
            qt.y0(114, (bArr[i20] >> 3) & 1);
            qt.y0(115, (bArr[i20] >> 0) & 7);
            return;
        }
        if (b2 == 6) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 5408);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i22 = i2 + 3;
            l0.c0.a((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i22] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
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
                if (bArr[i2 + 2] != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8586h.j();
        u0.c.f17386m.d(this.f8584f);
        l0.b0.p0(this.f8585g);
        w0.e.f17815a.d(this.f8592n);
        l0.b0.p0(this.f8592n);
        qt.q0(this.f8591m);
        h0.d.f2462a.d(this.f8588j);
        h0.d.f2464c.d(this.f8588j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr[0] != 23) {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            } else {
                h3(iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 139, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA ====  " + iArr[0]);
            if (iArr.length > 0) {
                z.k.s(227, -116, 1, 4);
                return;
            }
            return;
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE ====  " + iArr[0]);
        z.k.s(227, -116, 1, iArr[0]);
        int i3 = iArr[0];
    }

    public final void a3(int i2) {
        z.k.s(227, -117, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, -117, 2, i2, 0);
    }

    public final void h3(int i2) {
        qt.y0(116, i2);
        z.k.s(227, 198, 2, 23, i2);
        f8579o = i2;
        int iB = this.f8586h.b(1, 4);
        int i3 = f8579o;
        if (iB != i3) {
            this.f8586h.g(1, i3);
        }
    }
}
