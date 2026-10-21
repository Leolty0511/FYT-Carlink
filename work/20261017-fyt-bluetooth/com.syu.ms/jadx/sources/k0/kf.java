package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class kf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7291c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7292d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7293e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f7294f = 0.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7295g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7296h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7297i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7298j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7299k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -31, 2, ((((byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0)) << 7) & 128) | (((byte) time.hour) & DhcpPacket.DHCP_DOMAIN_NAME), (byte) time.minute);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kf.this.f7294f = u0.b.f17359s0;
            kf.this.f7298j = u0.b.f17361t0;
            if (kf.this.f7294f > 360.0f) {
                kf.d3(kf.this, 360.0f);
            }
            if (kf.this.f7294f < 0.0f) {
                kf.d3(kf.this, 360.0f);
                kf kfVar = kf.this;
                kfVar.f7294f = 360.0f - Math.abs(kfVar.f7294f);
            }
            if ((kf.this.f7294f <= 22.5d && kf.this.f7294f >= 0.0f) || (kf.this.f7294f >= 337.5d && kf.this.f7294f <= 360.0f)) {
                kf.this.f7296h = 48;
            } else if (kf.this.f7294f > 22.5d && kf.this.f7294f < 67.5d) {
                kf.this.f7296h = 96;
            } else if (kf.this.f7294f >= 67.5d && kf.this.f7294f <= 112.5d) {
                kf.this.f7296h = 0;
            } else if (kf.this.f7294f > 112.5d && kf.this.f7294f < 157.5d) {
                kf.this.f7296h = 64;
            } else if (kf.this.f7294f >= 157.5d && kf.this.f7294f <= 202.5d) {
                kf.this.f7296h = 16;
            } else if (kf.this.f7294f > 202.5d && kf.this.f7294f < 247.5d) {
                kf.this.f7296h = 80;
            } else if (kf.this.f7294f >= 247.5d && kf.this.f7294f <= 292.5d) {
                kf.this.f7296h = 32;
            } else if (kf.this.f7294f <= 292.5d || kf.this.f7294f >= 337.5d) {
                kf.this.f7296h = 240;
            } else {
                kf.this.f7296h = 112;
            }
            if (kf.this.f7298j == kf.this.f7297i && kf.this.f7296h == kf.this.f7295g) {
                return;
            }
            z.k.s(227, -55, 3, kf.this.f7296h, (kf.this.f7298j >> 8) & 255, kf.this.f7298j & 255);
            qt.y0(142, kf.this.f7298j);
            kf kfVar2 = kf.this;
            kfVar2.f7297i = kfVar2.f7298j;
            kf kfVar3 = kf.this;
            kfVar3.f7295g = kfVar3.f7296h;
        }
    }

    public static int a3(int i2) {
        if (i2 < 1 || i2 > 14) {
            return 15;
        }
        return (i2 * 2) / 3;
    }

    public static /* synthetic */ float d3(kf kfVar, float f2) {
        float f3 = kfVar.f7294f % f2;
        kfVar.f7294f = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        int i2 = nt.f8637c;
        if (i2 == 169) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8317l = 0;
            mtVar.f8312g = 1;
            mtVar.f8314i = 0;
            return;
        }
        if (i2 == 249) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8317l = 0;
            mtVar2.f8312g = 0;
            mtVar2.f8314i = 0;
            o1.h.f16865a.a(this.f7299k, 1);
            o1.h.f16867c.a(this.f7299k, 1);
            qt.z(this.f7293e);
            return;
        }
        if (i2 != 250) {
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 1;
        mtVar3.f8317l = 0;
        mtVar3.f8312g = 1;
        mtVar3.f8314i = 1;
        o1.h.f16865a.a(this.f7299k, 1);
        o1.h.f16867c.a(this.f7299k, 1);
        qt.z(this.f7293e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6 = bArr[i2] & 255;
        if (i6 == 1) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f7291c = b2 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7292d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7291c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7290b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f7291c;
            if (i9 == 32 || i9 == 33) {
                if ((b3 & 255) == 1) {
                    o1.x.C(nt.f8643f, 143, new int[]{1}, null, null);
                }
                return;
            }
            int i10 = b3 & 255;
            if (i10 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f7290b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f7290b = 255;
                    return;
                }
                return;
            }
        }
        if (i6 == 2) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            int i12 = i2 + 4;
            byte b6 = bArr[i12];
            int i13 = i2 + 5;
            byte b7 = bArr[i13];
            qt.y0(10, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 5) & 1);
            qt.y0(13, (b4 >> 3) & 1);
            qt.y0(14, (b4 >> 2) & 1);
            qt.y0(65, (b4 >> 1) & 1);
            qt.y0(16, (b4 >> 0) & 1);
            int i14 = b5 >> 5;
            qt.y0(77, i14 & 7);
            qt.y0(18, (b5 >> 7) & 1);
            qt.y0(19, (b5 >> 6) & 1);
            qt.y0(20, i14 & 1);
            qt.y0(21, b5 & 31);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i15 = bArr[i13] & 255;
                i4 = bArr[i12] & 255;
                i5 = i15;
            } else {
                i4 = b7;
                i5 = b6;
            }
            int i16 = i5 & 255;
            if (i16 == 0) {
                qt.y0(27, -2);
            } else if (i16 == 32) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i16);
            }
            int i17 = i4 & 255;
            if (i17 == 0) {
                qt.y0(28, -2);
            } else if (i17 == 32) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i17);
            }
            int i18 = i2 + 8;
            qt.y0(44, bArr[i18] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(46, (bArr[i18] >> 4) & 1);
            qt.y0(47, (bArr[i18] >> 5) & 1);
            qt.y0(43, (bArr[i18] >> 6) & 1);
            qt.y0(42, (bArr[i18] >> 7) & 1);
            int i19 = bArr[i2 + 9] & 255;
            if (i19 == 0) {
                qt.y0(40, -2);
            } else if (i19 == 32) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i19);
            }
            int i20 = bArr[i2 + 7] & 255;
            u0.d.A3((i20 & 128) == 128 ? 1000 - ((i20 & 127) * 10) : (i20 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (i6 == 3) {
            byte b8 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b8 >> 6) & 1);
                qt.y0(1, (b8 >> 7) & 1);
            } else {
                qt.y0(2, (b8 >> 7) & 1);
                qt.y0(1, (b8 >> 6) & 1);
            }
            qt.y0(4, (b8 >> 5) & 1);
            qt.y0(3, (b8 >> 4) & 1);
            qt.y0(5, (b8 >> 3) & 1);
            return;
        }
        if (i6 == 4) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, 255 & bArr[i2 + 4]);
            int i21 = i2 + 5;
            qt.y0(101, (bArr[i21] >> 0) & 1);
            qt.y0(102, (bArr[i21] >> 1) & 1);
            int i22 = i2 + 6;
            qt.y0(103, (bArr[i22] >> 0) & 3);
            qt.y0(104, (bArr[i22] >> 2) & 1);
            qt.y0(105, (bArr[i22] >> 3) & 1);
            qt.y0(106, (bArr[i22] >> 4) & 1);
            qt.y0(107, (bArr[i22] >> 5) & 1);
            qt.y0(108, (bArr[i22] >> 6) & 1);
            int i23 = i2 + 7;
            qt.y0(109, (bArr[i23] >> 0) & 1);
            qt.y0(110, (bArr[i23] >> 1) & 1);
            qt.y0(111, (bArr[i23] >> 2) & 1);
            return;
        }
        if (i6 == 6) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, GLES10.GL_CLEAR);
            return;
        }
        if (i6 == 9) {
            int i24 = i2 + 3;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 4;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 5;
            int i29 = bArr[i28] & 255;
            int i30 = i2 + 6;
            int i31 = bArr[i30] & 255;
            if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i25;
            l0.c0.f13014h = i27;
            l0.c0.f13015i = i29;
            l0.c0.f13016j = i31;
            u0.d.D2(a3(bArr[i24] & 255));
            u0.d.E2(a3(bArr[i26] & 255));
            u0.d.F2(a3(bArr[i28] & 255));
            u0.d.G2(a3(bArr[i30] & 255));
            u0.d.R2(a3(bArr[i2 + 7] & 255));
            u0.d.S2(a3(bArr[i2 + 8] & 255));
            u0.d.T2(a3(bArr[i2 + 9] & 255));
            u0.d.U2(a3(bArr[i2 + 10] & 255));
            return;
        }
        if (i6 == 49) {
            qt.y0(134, bArr[i2 + 2] & 255);
            qt.y0(135, bArr[i2 + 3] & 255);
            qt.y0(136, bArr[i2 + 4] & 255);
            qt.y0(137, bArr[i2 + 5] & 255);
            qt.y0(138, bArr[i2 + 6] & 255);
            qt.y0(139, bArr[i2 + 7] & 255);
            qt.y0(140, bArr[i2 + 8] & 255);
            qt.y0(141, bArr[i2 + 9] & 255);
            return;
        }
        if (i6 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (i6) {
            case 16:
                qt.y0(112, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(113, bArr[i2 + 4] & 255);
                qt.y0(114, bArr[i2 + 5] & 255);
                qt.y0(115, bArr[i2 + 6] & 255);
                qt.y0(116, bArr[i2 + 7] & 255);
                qt.y0(117, bArr[i2 + 8] & 255);
                break;
            case 17:
                qt.y0(118, bArr[i2 + 2] & 255);
                qt.y0(119, bArr[i2 + 3] & 255);
                qt.y0(120, bArr[i2 + 4] & 255);
                break;
            case 18:
                qt.y0(121, bArr[i2 + 2] & 255);
                qt.y0(122, bArr[i2 + 3] & 255);
                qt.y0(123, bArr[i2 + 4] & 255);
                qt.y0(124, bArr[i2 + 5] & 255);
                qt.y0(125, bArr[i2 + 6] & 255);
                break;
            case 19:
                int i32 = i2 + 2;
                qt.y0(126, (bArr[i32] >> 4) & 15);
                qt.y0(127, (bArr[i32] >> 0) & 15);
                int i33 = i2 + 3;
                qt.y0(128, (bArr[i33] >> 4) & 15);
                qt.y0(129, (bArr[i33] >> 0) & 15);
                int i34 = i2 + 4;
                qt.y0(130, (bArr[i34] >> 4) & 15);
                qt.y0(131, (bArr[i34] >> 0) & 15);
                int i35 = i2 + 5;
                qt.y0(132, (bArr[i35] >> 4) & 15);
                qt.y0(133, (bArr[i35] >> 0) & 15);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.h.f16867c.d(this.f7299k);
        o1.h.f16865a.d(this.f7299k);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f7293e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 144) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -126, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -124, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length > 1) {
            z.k.s(227, -32, 2, (byte) iArr[0], (byte) iArr[1]);
        }
    }
}
