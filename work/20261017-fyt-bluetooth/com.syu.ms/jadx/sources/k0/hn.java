package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6099c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6100d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6101e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6102f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6103g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6104h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Runnable f6105i = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6106j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6107k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f6108l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6109m = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.z();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.w0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hn.this.j3((byte) 112, u0.b.i3);
            hn.this.j3((byte) 113, u0.b.j3);
            hn.this.j3((byte) 114, u0.b.k3);
            hn.this.j3((byte) 115, "            ");
        }
    }

    public class d implements Runnable {
        public d() {
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
            if (hn.this.f6106j != i3) {
                hn.this.f6106j = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (hn.this.f6108l.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                hn.this.f6108l = h0.c.f2437h;
                if (hn.this.f6108l == null) {
                    hn.this.f6108l = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (hn.this.f6106j != 0) {
                    hn.this.l3();
                }
                if (hn.this.f6107k != z4) {
                    hn.this.f6107k = z4;
                    hn.this.f6106j = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hn.this.k3(h0.c.f2437h);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) ((((!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
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
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6109m);
        qt.z(this.f6101e);
        y0.g.f18094d.a(this.f6102f, 1);
        y0.g.f18095e.a(this.f6102f, 1);
        w0.e.f17815a.a(this.f6101e, 1);
        u0.c.f17374a.a(this.f6101e, 1);
        h0.d.f2464c.a(this.f6104h, 1);
        h0.d.f2462a.a(this.f6104h, 1);
        u0.c.f17388o.a(this.f6103g, 1);
        u0.c.f17389p.a(this.f6103g, 1);
        u0.c.f17392s.a(this.f6103g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            byte b3 = bArr[i2 + 2];
            int i6 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255);
            if ((32768 & i6) != 0) {
                if ((b3 & 1) == 1) {
                    i5 = 1000 - (65536 - i6);
                    i4 = (i5 | 268435456) & (-1);
                } else {
                    int i7 = 65536 - i6;
                    i4 = (1000 - ((i7 / 10) * 10)) - (i7 % 10);
                }
            } else if ((b3 & 1) == 1) {
                i5 = i6 + 1000;
                i4 = (i5 | 268435456) & (-1);
            } else {
                i4 = ((i6 / 10) * 10) + 1000 + (i6 % 10);
            }
            u0.d.B3(i4);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19918);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            switch (bArr[i2 + 2]) {
                case 0:
                    qt.y0(105, (bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY));
                    break;
                case 1:
                    qt.y0(106, (bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8)));
                    break;
                case 2:
                    qt.y0(107, (bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY));
                    break;
                case 3:
                    qt.y0(108, (bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8)));
                    break;
                case 4:
                    qt.y0(109, (bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8)));
                    break;
                case 5:
                    qt.y0(110, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(111, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(112, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(113, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(114, bArr[i2 + 3] & 255);
                    break;
                case 10:
                    qt.y0(115, bArr[i2 + 3] & 255);
                    break;
                case 11:
                    qt.y0(116, bArr[i2 + 3] & 255);
                    break;
                case 12:
                    qt.y0(117, bArr[i2 + 3] & 255);
                    break;
                case 13:
                    qt.y0(118, bArr[i2 + 3] & 255);
                    break;
                case 14:
                    qt.y0(119, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 102) {
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            qt.y0(98, b4);
            qt.y0(99, b5);
            qt.y0(100, b6);
            qt.y0(101, b7);
            qt.y0(102, b8 & 3);
            return;
        }
        if (b2 == 104) {
            qt.y0(103, bArr[i2 + 2] & 255);
            qt.y0(104, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                this.f6099c = b9 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f6100d;
                    if (i9 < iArr.length) {
                        int i10 = this.f6099c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f6098b = i9;
                        }
                    }
                }
                if (this.f6099c == 5) {
                    if ((b10 & 255) == 1) {
                        int i11 = h0.c.E;
                        if (i11 != 3) {
                            if (i11 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (i11 != 5) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    break;
                } else {
                    int i12 = b10 & 255;
                    if (i12 != 1) {
                        if (i12 == 0) {
                            int i13 = this.f6098b;
                            if (i13 < iArr.length && i13 != 255) {
                                l0.b0.l0(iArr[i13][1], 1);
                            }
                            this.f6098b = 255;
                        }
                    } else if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                    }
                }
                break;
            case 33:
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                int i14 = i2 + 4;
                byte b13 = bArr[i14];
                int i15 = i2 + 5;
                byte b14 = bArr[i15];
                byte b15 = bArr[i2 + 6];
                qt.y0(10, (b11 >> 7) & 1);
                qt.y0(11, (b11 >> 6) & 1);
                qt.y0(12, (b11 >> 5) & 1);
                qt.y0(13, (b11 >> 3) & 1);
                qt.y0(14, (b11 >> 2) & 1);
                qt.y0(15, (b11 >> 1) & 1);
                qt.y0(67, (b11 >> 0) & 1);
                qt.y0(18, (b12 >> 7) & 1);
                qt.y0(19, (b12 >> 6) & 1);
                qt.y0(20, (b12 >> 5) & 1);
                qt.y0(21, b12 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b13 = bArr[i15];
                    b14 = bArr[i14];
                }
                qt.y0(27, b13 & 255);
                qt.y0(28, b14 & 255);
                qt.y0(65, (b15 >> 7) & 1);
                qt.y0(16, (b15 >> 6) & 1);
                qt.y0(53, (b15 >> 3) & 1);
                qt.y0(37, b15 & 1);
                break;
            case 34:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                byte b19 = bArr[i2 + 5];
                int i16 = ((b16 & 255) * 10) / 60;
                if (i16 > 10) {
                    i16 = 10;
                }
                u0.d.R2(i16);
                int i17 = ((b17 & 255) * 10) / 165;
                if (i17 > 10) {
                    i17 = 10;
                }
                u0.d.S2(i17);
                int i18 = ((b18 & 255) * 10) / 165;
                if (i18 > 10) {
                    i18 = 10;
                }
                u0.d.T2(i18);
                int i19 = ((b19 & 255) * 10) / 60;
                u0.d.U2(i19 <= 10 ? i19 : 10);
                break;
            case 35:
                byte b20 = bArr[i2 + 2];
                byte b21 = bArr[i2 + 3];
                byte b22 = bArr[i2 + 4];
                byte b23 = bArr[i2 + 5];
                if (b20 > 60 && b21 > 120 && b22 > 120 && b23 > 60) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != b20 || l0.c0.f13014h != b21 || l0.c0.f13015i != b22 || l0.c0.f13016j != b23) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = b20;
                l0.c0.f13014h = b21;
                l0.c0.f13015i = b22;
                l0.c0.f13016j = b23;
                int i20 = ((b20 & 255) * 10) / 60;
                if (i20 > 10) {
                    i20 = 10;
                }
                u0.d.D2(i20);
                int i21 = ((b21 & 255) * 10) / 120;
                if (i21 > 10) {
                    i21 = 10;
                }
                u0.d.E2(i21);
                int i22 = ((b22 & 255) * 10) / 120;
                if (i22 > 10) {
                    i22 = 10;
                }
                u0.d.F2(i22);
                int i23 = ((b23 & 255) * 10) / 60;
                u0.d.G2(i23 <= 10 ? i23 : 10);
                break;
            case 36:
                byte b24 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b24 >> 7) & 1);
                    qt.y0(2, (b24 >> 6) & 1);
                } else {
                    qt.y0(1, (b24 >> 6) & 1);
                    qt.y0(2, (b24 >> 7) & 1);
                }
                qt.y0(3, (b24 >> 4) & 1);
                qt.y0(4, (b24 >> 5) & 1);
                qt.y0(5, (b24 >> 3) & 1);
                qt.y0(0, (b24 >> 2) & 1);
                int i24 = i2 + 3;
                l0.c0.a((bArr[i24] >> 5) & 1, (bArr[i24] >> 6) & 1, (bArr[i24] >> 4) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6109m);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6101e);
        y0.g.f18094d.d(this.f6102f);
        y0.g.f18095e.d(this.f6102f);
        w0.e.f17815a.d(this.f6101e);
        u0.c.f17374a.d(this.f6101e);
        h0.d.f2464c.d(this.f6104h);
        h0.d.f2462a.d(this.f6104h);
        u0.c.f17388o.d(this.f6103g);
        u0.c.f17389p.d(this.f6103g);
        u0.c.f17392s.d(this.f6103g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
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
            z.k.s(227, 198, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1024) / a.f.w();
        int i3 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
        if (T2(iArr, 2)) {
            if (iArr[0] == 0) {
                z.k.s(227, 203, 5, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 1);
            } else if (iArr[0] == 1) {
                z.k.s(227, 203, 5, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            }
        }
    }

    public final void j3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 10 ? str.length() : 10;
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void k3(String str) {
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
    }

    public final void l3() {
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
        if (h0.c.E != 0) {
            o1.j.e(o1.l.a(), this.f6105i);
            o1.j.b(o1.l.a(), this.f6105i, 1200L);
        }
    }
}
