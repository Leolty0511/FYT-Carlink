package k0;

import android.content.pm.PackageManager;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class mg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8143b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8146e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8144c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8145d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{7, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{13, 29}, new int[]{16, 3}, new int[]{17, 4}, new int[]{18, 13}, new int[]{19, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8147f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8148g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 0}, new int[]{4, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f8149h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8150i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8151j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8152k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f8153l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f8154m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8155n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8156o = new d();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f8157a;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f8157a = time;
            time.setToNow();
            long millis = this.f8157a.toMillis(false) / 1000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (mg.this.f8149h == millis && mg.this.f8150i == i2) {
                return;
            }
            mg.this.f8149h = millis;
            mg.this.f8150i = i2;
            Time time2 = this.f8157a;
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 6, ((byte) time2.year) - 2000, ((byte) (time2.month + 1)) + 1, (byte) time2.monthDay, (byte) time2.hour, (byte) time2.minute, i2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mg.this.b3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(mg.this.f8156o);
            mg.this.f8154m = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mg mgVar = mg.this;
            byte b2 = (byte) (mgVar.f8154m - 1);
            mgVar.f8154m = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
                return;
            }
            int i2 = nt.f8637c;
            if (i2 == 104) {
                z.k.s(227, 130, 1, 0);
            } else if (i2 == 105) {
                z.k.s(227, 130, 1, 1);
            }
            l0.b0.p0(mg.this.f8156o);
            mg.this.f8154m = (byte) 5;
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(this.f8155n, 1);
        qt.z(this.f8151j);
        u0.c.f17397x.a(this.f8153l, 1);
        this.f7886a.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8144c = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f8145d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f8144c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f8143b = i6;
                    break;
                }
                i6++;
            }
            int i8 = b4 & 255;
            if (i8 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (i8 == 0) {
                    int i9 = this.f8143b;
                    if (i9 < iArr.length) {
                        i4 = 255;
                        if (i9 != 255) {
                            l0.b0.l0(iArr[i9][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f8143b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f8147f = b5 & 255;
            int i10 = 0;
            while (true) {
                iArr2 = this.f8148g;
                if (i10 >= iArr2.length) {
                    break;
                }
                int i11 = this.f8147f;
                if (i11 == iArr2[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f8146e = i10;
                    break;
                }
                i10++;
            }
            int i12 = nt.f8637c;
            if (i12 == 104) {
                int i13 = b6 & 255;
                if (i13 == 1) {
                    if (i10 < iArr2.length) {
                        l0.b0.l0(iArr2[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i13 == 0) {
                        int i14 = this.f8146e;
                        if (i14 < iArr2.length && i14 != 255) {
                            l0.b0.l0(iArr2[i14][1], 1);
                        }
                        this.f8146e = 255;
                        return;
                    }
                    return;
                }
            }
            if (i12 == 105) {
                int i15 = this.f8147f;
                if (i15 == 1 || i15 == 2) {
                    if (y0.f.f18055i != 0) {
                        y0.h.u0(-4);
                        return;
                    }
                    return;
                }
                int i16 = b6 & 255;
                if (i16 == 1) {
                    if (i10 < iArr2.length) {
                        l0.b0.l0(iArr2[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i16 == 0) {
                        int i17 = this.f8146e;
                        if (i17 < iArr2.length) {
                            i5 = 255;
                            if (i17 != 255) {
                                l0.b0.l0(iArr2[i17][1], 1);
                            }
                        } else {
                            i5 = 255;
                        }
                        this.f8146e = i5;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            int i18 = i2 + 5;
            byte b10 = bArr[i18];
            int i19 = i2 + 6;
            byte b11 = bArr[i19];
            byte b12 = bArr[i2 + 7];
            int i20 = i2 + 8;
            byte b13 = bArr[i20];
            qt.y0(10, (b7 >> 7) & 1);
            qt.y0(11, (b7 >> 6) & 1);
            qt.y0(13, (b7 >> 4) & 1);
            qt.y0(12, (b7 >> 2) & 3);
            qt.y0(16, (b7 >> 1) & 1);
            qt.y0(53, (b7 >> 0) & 1);
            qt.y0(14, (b8 >> 6) & 1);
            qt.y0(65, (b8 >> 5) & 1);
            qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(49, (b9 >> 7) & 1);
            qt.y0(18, (b9 >> 6) & 1);
            int i21 = b9 >> 4;
            qt.y0(19, i21 & 1);
            qt.y0(20, (b9 >> 5) & 1);
            qt.y0(77, i21 & 7);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b10 = bArr[i19];
                b11 = bArr[i18];
            }
            if (b10 == 0) {
                qt.y0(27, -2);
            } else if (b10 == 63) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, b10);
            }
            if (b11 == 0) {
                qt.y0(28, -2);
            } else if (b11 == 63) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, b11);
            }
            qt.y0(29, (b12 >> 4) & 15);
            qt.y0(30, (b12 >> 0) & 15);
            u0.d.A3(this.f8152k == 1 ? (((bArr[i20] & 255) * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768 : ((b13 & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 4) {
            byte b14 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b14 >> 6) & 1);
                qt.y0(2, (b14 >> 7) & 1);
            } else {
                qt.y0(1, (b14 >> 7) & 1);
                qt.y0(2, (b14 >> 6) & 1);
            }
            qt.y0(3, (b14 >> 5) & 1);
            qt.y0(4, (b14 >> 4) & 1);
            qt.y0(5, (b14 >> 3) & 1);
            qt.y0(0, (b14 >> 2) & 1);
            return;
        }
        if (b2 == 20) {
            qt.y0(1032, ((bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280)) & 65535);
            return;
        }
        if (b2 == 30) {
            int i22 = i2 + 2;
            qt.y0(99, bArr[i22] & 255);
            this.f8152k = bArr[i22] & 255;
            qt.y0(100, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 113) {
            this.f8154m = (byte) 0;
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 34) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 35) {
            switch (b2) {
                case 38:
                    int i23 = i2 + 2;
                    qt.j(bArr[i23] & 127, 0, (bArr[i23] >> 7) & 1, 128);
                    break;
                case 39:
                    if (nt.f8637c == 105) {
                        qt.y0(103, bArr[i2 + 3] & 255);
                        qt.y0(104, bArr[i2 + 4] & 255);
                        qt.y0(105, bArr[i2 + 5] & 255);
                        qt.y0(106, bArr[i2 + 6] & 255);
                        qt.y0(107, bArr[i2 + 7] & 255);
                        qt.y0(108, bArr[i2 + 8] & 255);
                        qt.y0(109, bArr[i2 + 9] & 255);
                        break;
                    }
                    break;
                case 40:
                    int i24 = i2 + 2;
                    qt.y0(111, (bArr[i24] >> 4) & 15);
                    qt.y0(112, (bArr[i24] >> 0) & 15);
                    break;
            }
            return;
        }
        int i25 = i2 + 2;
        int i26 = bArr[i25] & 255;
        int i27 = i2 + 3;
        int i28 = bArr[i27] & 255;
        int i29 = i2 + 4;
        int i30 = bArr[i29] & 255;
        int i31 = i2 + 5;
        int i32 = bArr[i31] & 255;
        if (i26 == 0 && i28 == 0 && i30 == 0 && i32 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i26;
        l0.c0.f13014h = i28;
        l0.c0.f13015i = i30;
        l0.c0.f13016j = i32;
        u0.d.D2(a3(bArr[i25] & 255));
        u0.d.E2(a3(bArr[i27] & 255));
        u0.d.F2(a3(bArr[i29] & 255));
        u0.d.G2(a3(bArr[i31] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8155n);
        qt.q0(this.f8151j);
        u0.c.f17397x.d(this.f8153l);
        l0.b0.p0(this.f8156o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 232, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 134, 2, iArr[0], u0.b.K3 == 1 ? 1 : 0);
        } else if (i2 == 2) {
            z.k.s(227, 160, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public final void b3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 134;
        iArr[2] = 2;
        iArr[3] = this.f8152k;
        iArr[4] = i2 == 1 ? 1 : 0;
        z.k.s(iArr);
    }
}
