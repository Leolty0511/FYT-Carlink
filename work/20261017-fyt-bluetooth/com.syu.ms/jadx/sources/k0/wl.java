package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class wl extends lt implements o1.q {
    public static int B;
    public static int C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11775b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11778e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11776c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11777d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 12}, new int[]{24, 53}, new int[]{136, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11779f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11780g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 9}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 6}, new int[]{9, 26}, new int[]{10, 55}, new int[]{11, 18}, new int[]{12, 54}, new int[]{13, 58}, new int[]{14, 1}, new int[]{15, 5}, new int[]{16, 53}, new int[]{17, 15}, new int[]{18, 24}, new int[]{19, 38}, new int[]{20, 25}, new int[]{21, 11}, new int[]{22, 62}, new int[]{23, 29}, new int[]{24, 0}, new int[]{25, 34}, new int[]{26, 35}, new int[]{27, 32}, new int[]{28, 33}, new int[]{29, -1}, new int[]{30, 62}, new int[]{31, -1}, new int[]{132, 34}, new int[]{133, 35}, new int[]{134, 32}, new int[]{135, 33}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f11781h = new byte[1024];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11782i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11783j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11784k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11785l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11786m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1.g0 f11787n = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f11788o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f11789p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11790q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11791r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11792s = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f11793t = new e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11794u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f11795v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f11796w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f11797x = new g();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f11798y = new h();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int[] f11799z = {34, 204};
    public int A = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 135, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute, time.second);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wl.this.j3((byte) 112, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wl.this.j3((byte) 114, u0.b.k3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wl.this.j3((byte) 113, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wl.this.a3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.W == 1 ? 1 : 0;
            switch (nt.f8633a) {
                case 590279:
                    z.k.s(227, 226, 2, 208, i2);
                    break;
                case 655815:
                    z.k.s(227, 226, 2, 209, i2);
                    break;
                case 1966534:
                case 6357445:
                    z.k.s(227, 226, 2, 0, i2);
                    break;
                case 2032070:
                case 6422981:
                    z.k.s(227, 226, 2, 1, i2);
                    break;
                case 2097606:
                case 6488517:
                    z.k.s(227, 226, 2, 16, i2);
                    break;
                case 2163142:
                case 6554053:
                    z.k.s(227, 226, 2, 17, i2);
                    break;
                case 2228678:
                case 6619589:
                    z.k.s(227, 226, 2, 32, i2);
                    break;
                case 2294214:
                case 6685125:
                    z.k.s(227, 226, 2, 33, i2);
                    break;
                case 2359750:
                case 6750661:
                    z.k.s(227, 226, 2, 48, i2);
                    break;
                case 2425286:
                case 6816197:
                    z.k.s(227, 226, 2, 49, i2);
                    break;
                case 3736008:
                    z.k.s(227, 226, 2, 179, i2);
                    break;
                case 3801544:
                    z.k.s(227, 226, 2, 180, i2);
                    break;
                case 6881733:
                    z.k.s(227, 226, 2, 144, i2);
                    break;
                case 6947269:
                    z.k.s(227, 226, 2, 145, i2);
                    break;
                case 7012805:
                    z.k.s(227, 226, 2, 146, i2);
                    break;
                case 7078341:
                    z.k.s(227, 226, 2, 147, i2);
                    break;
                case 7143877:
                    z.k.s(227, 226, 2, 160, i2);
                    break;
                case 7209413:
                    z.k.s(227, 226, 2, 161, i2);
                    break;
                case 7274949:
                    z.k.s(227, 226, 2, 162, i2);
                    break;
                case 7340485:
                    z.k.s(227, 226, 2, 163, i2);
                    break;
                case 7406021:
                    z.k.s(227, 226, 2, 164, i2);
                    break;
                case 7471557:
                    z.k.s(227, 226, 2, 165, i2);
                    break;
                case 7537093:
                    z.k.s(227, 226, 2, 166, i2);
                    break;
                case 7602629:
                    z.k.s(227, 226, 2, 176, i2);
                    break;
                case 7668165:
                    z.k.s(227, 226, 2, 177, i2);
                    break;
                case 7733701:
                    z.k.s(227, 226, 2, 178, i2);
                    break;
                case 7799237:
                    z.k.s(227, 226, 2, 179, i2);
                    break;
                case 7864773:
                    z.k.s(227, 226, 2, 180, i2);
                    break;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(wl.this.f11798y);
            wl.this.f11796w = 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wl wlVar = wl.this;
            int i2 = wlVar.f11796w - 1;
            wlVar.f11796w = i2;
            if (i2 <= 0) {
                l0.b0.p0(wlVar.f11798y);
                wl.this.f11796w = 6;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 50, 0);
                wl wlVar2 = wl.this;
                wlVar2.c3(wlVar2.f11787n.b(1, 0));
                wl wlVar3 = wl.this;
                wlVar3.d3(wlVar3.f11787n.b(2, 0));
                int i3 = nt.W == 1 ? 1 : 0;
                switch (nt.f8633a) {
                    case 1966534:
                    case 2032070:
                    case 2097606:
                    case 2163142:
                    case 2228678:
                    case 2294214:
                    case 2359750:
                    case 2425286:
                    case 6357445:
                    case 6422981:
                    case 6488517:
                    case 6554053:
                    case 6619589:
                    case 6685125:
                    case 6750661:
                    case 6816197:
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                }
                switch (nt.f8633a) {
                    case 590279:
                        z.k.s(227, 226, 2, 208, i3);
                        break;
                    case 655815:
                        z.k.s(227, 226, 2, 209, i3);
                        break;
                    case 1966534:
                    case 6357445:
                        z.k.s(227, 226, 2, 0, i3);
                        break;
                    case 2032070:
                    case 6422981:
                        z.k.s(227, 226, 2, 1, i3);
                        break;
                    case 2097606:
                    case 6488517:
                        z.k.s(227, 226, 2, 16, i3);
                        break;
                    case 2163142:
                    case 6554053:
                        z.k.s(227, 226, 2, 17, i3);
                        break;
                    case 2228678:
                    case 6619589:
                        z.k.s(227, 226, 2, 32, i3);
                        break;
                    case 2294214:
                    case 6685125:
                        z.k.s(227, 226, 2, 33, i3);
                        break;
                    case 2359750:
                    case 6750661:
                        z.k.s(227, 226, 2, 48, i3);
                        break;
                    case 2425286:
                    case 6816197:
                        z.k.s(227, 226, 2, 49, i3);
                        break;
                    case 3736008:
                        z.k.s(227, 226, 2, 179, i3);
                        break;
                    case 3801544:
                        z.k.s(227, 226, 2, 180, i3);
                        break;
                    case 6881733:
                        z.k.s(227, 226, 2, 144, i3);
                        break;
                    case 6947269:
                        z.k.s(227, 226, 2, 145, i3);
                        break;
                    case 7012805:
                        z.k.s(227, 226, 2, 146, i3);
                        break;
                    case 7078341:
                        z.k.s(227, 226, 2, 147, i3);
                        break;
                    case 7143877:
                        z.k.s(227, 226, 2, 160, i3);
                        break;
                    case 7209413:
                        z.k.s(227, 226, 2, 161, i3);
                        break;
                    case 7274949:
                        z.k.s(227, 226, 2, 162, i3);
                        break;
                    case 7340485:
                        z.k.s(227, 226, 2, 163, i3);
                        break;
                    case 7406021:
                        z.k.s(227, 226, 2, 164, i3);
                        break;
                    case 7471557:
                        z.k.s(227, 226, 2, 165, i3);
                        break;
                    case 7537093:
                        z.k.s(227, 226, 2, 166, i3);
                        break;
                    case 7602629:
                        z.k.s(227, 226, 2, 176, i3);
                        break;
                    case 7668165:
                        z.k.s(227, 226, 2, 177, i3);
                        break;
                    case 7733701:
                        z.k.s(227, 226, 2, 178, i3);
                        break;
                    case 7799237:
                        z.k.s(227, 226, 2, 179, i3);
                        break;
                    case 7864773:
                        z.k.s(227, 226, 2, 180, i3);
                        break;
                }
            }
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
        mtVar.f8314i = 0;
        this.f11787n.a();
        u0.c.f17386m.a(this.f11797x, 1);
        ot.f9020b.a(this.f11795v, 1);
        qt.z(this.f11786m);
        switch (nt.f8633a) {
            case 1966534:
            case 2032070:
            case 2097606:
            case 2163142:
            case 2228678:
            case 2294214:
            case 2359750:
            case 2425286:
            case 3736008:
            case 3801544:
            case 6357445:
            case 6422981:
            case 6488517:
            case 6554053:
            case 6619589:
            case 6685125:
            case 6750661:
            case 6816197:
            case 6881733:
            case 6947269:
            case 7012805:
            case 7078341:
            case 7143877:
            case 7209413:
            case 7274949:
            case 7340485:
            case 7406021:
            case 7471557:
            case 7537093:
            case 7602629:
            case 7668165:
            case 7733701:
            case 7799237:
            case 7864773:
                this.f7886a.f8314i = 1;
                break;
            case 14221764:
                break;
            default:
                qt.z(this.f11793t);
                w0.e.f17815a.a(this.f11793t, 1);
                w0.e.f17819e.a(this.f11793t, 1);
                u0.c.f17374a.a(this.f11793t, 1);
                u0.c.f17388o.a(this.f11790q, 1);
                u0.c.f17390q.a(this.f11791r, 1);
                u0.c.f17389p.a(this.f11792s, 1);
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            if (a.f.w() >= 1080) {
                this.f7886a.f8314i = 1;
                return;
            }
            return;
        }
        if (a.f.w() >= 1920) {
            this.f7886a.f8314i = 1;
        }
        int i2 = nt.f8633a;
        if (i2 == 590279 || i2 == 655815) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 3;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 4;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 5;
            int i18 = bArr[i17] & 255;
            if (i12 == 0 && i14 == 0 && i16 == 0 && i18 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i12;
            l0.c0.f13014h = i14;
            l0.c0.f13015i = i16;
            l0.c0.f13016j = i18;
            u0.d.D2(l0.c0.T0(bArr[i11] & 255));
            int i19 = nt.f8633a;
            if (i19 == 3736008 || i19 == 3801544) {
                u0.d.E2(l0.c0.V0(bArr[i13] & 255));
                u0.d.F2(l0.c0.V0(bArr[i15] & 255));
            } else {
                u0.d.E2(l0.c0.T0(bArr[i13] & 255));
                u0.d.F2(l0.c0.T0(bArr[i15] & 255));
            }
            u0.d.G2(l0.c0.T0(bArr[i17] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.T0(bArr[i2 + 2] & 255));
            int i20 = nt.f8633a;
            if (i20 == 3736008 || i20 == 3801544) {
                u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
            } else {
                u0.d.S2(l0.c0.T0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.T0(bArr[i2 + 4] & 255));
            }
            u0.d.U2(l0.c0.T0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            if (u0.b.f17306a0 == 0) {
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11776c = b3 & 255;
            int i21 = 0;
            while (true) {
                iArr = this.f11777d;
                if (i21 >= iArr.length) {
                    break;
                }
                int i22 = this.f11776c;
                if (i22 == iArr[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f11775b = i21;
                    break;
                }
                i21++;
            }
            int i23 = b4 & 255;
            if (i23 == 1) {
                if (i21 < iArr.length) {
                    l0.b0.l0(iArr[i21][1], 0);
                    return;
                }
                return;
            } else {
                if (i23 == 0) {
                    int i24 = this.f11775b;
                    if (i24 < iArr.length && i24 != 255) {
                        l0.b0.l0(iArr[i24][1], 1);
                    }
                    this.f11775b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 0) & 1);
            return;
        }
        if (b2 == 38) {
            int i25 = i2 + 2;
            qt.y0(98, (bArr[i25] >> 7) & 1);
            qt.y0(99, (bArr[i25] >> 4) & 7);
            qt.y0(100, (bArr[i25] >> 2) & 3);
            qt.y0(101, (bArr[i25] >> 0) & 3);
            int i26 = i2 + 3;
            qt.y0(102, (bArr[i26] >> 7) & 1);
            qt.y0(103, (bArr[i26] >> 6) & 1);
            qt.y0(104, (bArr[i26] >> 5) & 1);
            qt.y0(105, (bArr[i26] >> 4) & 1);
            qt.y0(106, (bArr[i26] >> 0) & 7);
            int i27 = i2 + 4;
            qt.y0(107, (bArr[i27] >> 7) & 1);
            qt.y0(108, (bArr[i27] >> 6) & 1);
            qt.y0(109, (bArr[i27] >> 5) & 1);
            qt.y0(110, (bArr[i27] >> 4) & 1);
            qt.y0(111, (bArr[i27] >> 3) & 1);
            qt.y0(112, (bArr[i27] >> 0) & 7);
            int i28 = i2 + 5;
            qt.y0(113, (bArr[i28] >> 7) & 1);
            qt.y0(114, (bArr[i28] >> 6) & 1);
            qt.y0(115, (bArr[i28] >> 0) & 3);
            int i29 = i2 + 7;
            qt.y0(116, (bArr[i29] >> 4) & 3);
            qt.y0(117, (bArr[i29] >> 0) & 15);
            int i30 = i2 + 8;
            qt.y0(118, (bArr[i30] >> 5) & 7);
            qt.y0(177, (bArr[i30] >> 3) & 3);
            int i31 = i2 + 9;
            qt.y0(178, (bArr[i31] >> 5) & 7);
            qt.y0(179, (bArr[i31] >> 4) & 1);
            qt.y0(180, (bArr[i31] >> 3) & 1);
            qt.y0(181, (bArr[i31] >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, MediaProperties.HEIGHT_360);
            return;
        }
        if (b2 == 52) {
            qt.y0(127, (bArr[i2 + 4] & 65280) | ((bArr[i2 + 3] << 8) & 65280) | ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY));
            return;
        }
        if (b2 == 54) {
            switch (bArr[i2 + 2]) {
                case 0:
                    l0.b0.l0(75, 0);
                    l0.b0.l0(75, 1);
                    break;
                case 1:
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                    break;
                case 2:
                    l0.b0.l0(54, 0);
                    l0.b0.l0(54, 1);
                    break;
                case 3:
                    l0.b0.l0(54, 0);
                    l0.b0.l0(54, 1);
                    break;
                case 4:
                    l0.b0.l0(76, 0);
                    l0.b0.l0(76, 1);
                    break;
                case 5:
                    l0.b0.l0(53, 0);
                    l0.b0.l0(53, 1);
                    break;
                case 6:
                    l0.b0.l0(52, 0);
                    l0.b0.l0(52, 1);
                    break;
            }
            return;
        }
        if (b2 == 64) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            this.f11779f = b6 & 255;
            int i32 = 0;
            while (true) {
                iArr2 = this.f11780g;
                if (i32 >= iArr2.length) {
                    break;
                }
                int i33 = this.f11779f;
                if (i33 == iArr2[i32][0]) {
                    if (i33 == 0) {
                        break;
                    }
                    this.f11778e = i32;
                    break;
                }
                i32++;
            }
            int i34 = this.f11779f;
            if (i34 == 29) {
                if ((b7 & 255) == 1) {
                    if (u0.b.D == 1) {
                        l0.b0.l0(21, 0);
                        l0.b0.l0(21, 1);
                        return;
                    } else {
                        l0.b0.l0(16, 0);
                        l0.b0.l0(16, 1);
                        return;
                    }
                }
                return;
            }
            if (i34 == 31) {
                if ((b7 & 255) == 1) {
                    k3();
                    return;
                }
                return;
            }
            if (i34 != 136) {
                if (i34 != 137) {
                    switch (i34) {
                        case 128:
                            for (int i35 = 0; i35 < (b7 & 255); i35++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 129:
                            for (int i36 = 0; i36 < (b7 & 255); i36++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 130:
                            break;
                        case 131:
                            break;
                        default:
                            int i37 = b7 & 255;
                            if (i37 == 1) {
                                if (i32 < iArr2.length) {
                                    l0.b0.l0(iArr2[i32][1], 0);
                                }
                            } else if (i37 == 0) {
                                int i38 = this.f11778e;
                                if (i38 < iArr2.length && i38 != 255) {
                                    l0.b0.l0(iArr2[i38][1], 1);
                                }
                                this.f11778e = 255;
                            }
                            break;
                    }
                    return;
                }
                for (int i39 = 0; i39 < (b7 & 255); i39++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            for (int i40 = 0; i40 < (b7 & 255); i40++) {
                l0.b0.l0(31, 0);
            }
            l0.b0.l0(31, 1);
            return;
        }
        if (b2 == 110) {
            qt.y0(172, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(173, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(174, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(175, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(176, (bArr[i2 + 10] & 255) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b2 == 85) {
            if (u0.b.f17306a0 == 0) {
                return;
            }
            int i41 = i2 + 2;
            int i42 = bArr[i41] & 255;
            int i43 = i2 + 3;
            int i44 = bArr[i43] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i42 = bArr[i43] & 255;
                i44 = bArr[i41] & 255;
            }
            if (i42 == 16) {
                qt.y0(27, -2);
            } else if (i42 == 80) {
                qt.y0(27, -3);
            } else if (i42 == 0 || i42 == 255) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i42 & 127);
            }
            if (i44 == 16) {
                qt.y0(28, -2);
            } else if (i44 == 80) {
                qt.y0(28, -3);
            } else if (i44 == 0 || i44 == 255) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i44 & 127);
            }
            int i45 = i2 + 4;
            qt.y0(21, bArr[i45] & DhcpPacket.DHCP_DOMAIN_NAME);
            switch ((bArr[i45] >> 4) & 15) {
                case 1:
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 2:
                    i4 = 0;
                    i6 = 1;
                    i5 = i6;
                    break;
                case 3:
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 4:
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                    break;
                case 5:
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                    break;
                case 6:
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                    break;
                case 7:
                    i4 = 1;
                    i6 = i4;
                    i5 = i6;
                    break;
                default:
                    i4 = 0;
                    i6 = i4;
                    i5 = i6;
                    break;
            }
            int i46 = nt.f8633a;
            if (i46 == 3736008 || i46 == 7864773 || nt.W == 0) {
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
            } else {
                qt.y0(18, i4);
                qt.y0(23, i6);
                qt.y0(24, i5);
            }
            int i47 = (bArr[i2 + 8] >> 4) & 15;
            if (i47 != 1) {
                if (i47 == 2) {
                    i8 = 1;
                } else if (i47 != 3) {
                    i8 = 0;
                } else {
                    i8 = 0;
                    i7 = 1;
                }
                i7 = i8;
            } else {
                i7 = 0;
                i8 = 1;
            }
            int i48 = nt.f8633a;
            if (i48 == 3736008 || i48 == 3801544 || nt.W == 0) {
                qt.y0(22, 0);
                qt.y0(23, i8);
                qt.y0(24, i7);
            } else {
                qt.y0(22, 0);
                qt.y0(19, i8);
                qt.y0(20, i7);
            }
            int i49 = nt.f8633a;
            if (i49 == 590279 || i49 == 655815) {
                int i50 = i2 + 5;
                if (this.f11785l != ((bArr[i50] >> 2) & 1)) {
                    int i51 = (bArr[i50] >> 2) & 1;
                    this.f11785l = i51;
                    if (i51 == 0 && qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_NewAdd_HP")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                }
            }
            int i52 = i2 + 5;
            qt.y0(67, (bArr[i52] >> 2) & 1);
            qt.y0(17, (bArr[i52] >> 3) & 1);
            qt.y0(37, (bArr[i52] >> 7) & 1);
            if (((bArr[i52] >> 6) & 1) == 1) {
                int i53 = nt.f8633a;
                if (i53 == 6357445 || i53 == 6422981 || i53 == 6488517 || i53 == 6554053 || i53 == 6619589 || i53 == 6685125 || i53 == 6750661 || i53 == 6816197) {
                    if (qt.i0().equals("com.syu.carinfo.lz.lexusis.KYCLexusFrontAirControlAct")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    } else {
                        l0.b0.l0(62, 0);
                        l0.b0.l0(62, 1);
                    }
                } else if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                } else {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
            }
            int i54 = i2 + 6;
            qt.y0(65, (bArr[i54] >> 7) & 1);
            qt.y0(16, (bArr[i54] >> 6) & 1);
            qt.y0(54, (bArr[i54] >> 5) & 1);
            qt.y0(33, (bArr[i54] >> 4) & 1);
            qt.y0(12, (bArr[i54] >> 3) & 1);
            qt.y0(62, (bArr[i54] >> 2) & 1);
            qt.y0(11, (bArr[i54] >> 1) & 1);
            qt.y0(13, (bArr[i54] >> 0) & 1);
            int i55 = bArr[i2 + 7] & 255;
            if (i55 == 255) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i55 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 86) {
            int i56 = i2 + 2;
            if ((bArr[i56] & 255) == 16) {
                qt.y0(40, -2);
            } else if ((bArr[i56] & 255) == 80) {
                qt.y0(40, -3);
            } else if ((bArr[i56] & 255) == 0 || (bArr[i56] & 255) == 255) {
                qt.y0(40, -1);
            } else {
                qt.y0(40, bArr[i56] & 255);
            }
            int i57 = i2 + 3;
            if ((bArr[i57] & 255) == 16) {
                qt.y0(41, -2);
            } else if ((bArr[i57] & 255) == 80) {
                qt.y0(41, -3);
            } else if ((bArr[i57] & 255) == 0 || (bArr[i57] & 255) == 255) {
                qt.y0(41, -1);
            } else {
                qt.y0(41, bArr[i57] & 255);
            }
            int i58 = i2 + 4;
            qt.y0(44, bArr[i58] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i59 = (bArr[i58] >> 4) & 15;
            if (i59 != 1) {
                if (i59 == 2) {
                    i10 = 1;
                } else if (i59 != 3) {
                    i10 = 0;
                } else {
                    i10 = 0;
                    i9 = 1;
                }
                i9 = i10;
            } else {
                i9 = 0;
                i10 = 1;
            }
            qt.y0(46, i10);
            qt.y0(47, i9);
            qt.y0(43, (bArr[i2 + 6] >> 0) & 1);
            return;
        }
        if (b2 == 97) {
            int i60 = i2 + 2;
            qt.y0(131, (bArr[i60] >> 0) & 1);
            qt.y0(132, (bArr[i60] >> 1) & 1);
            qt.y0(133, (bArr[i60] >> 2) & 1);
            qt.y0(134, (bArr[i60] >> 3) & 1);
            qt.y0(135, (bArr[i60] >> 4) & 1);
            qt.y0(136, (bArr[i60] >> 5) & 1);
            qt.y0(137, (bArr[i2 + 3] >> 4) & 15);
            qt.y0(138, (bArr[i60] >> 7) & 1);
            return;
        }
        if (b2 != 98) {
            switch (b2) {
                case 48:
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    break;
                case 49:
                    int i61 = i2 + 2;
                    qt.y0(119, (bArr[i61] >> 4) & 15);
                    qt.y0(120, (bArr[i61] >> 0) & 15);
                    int i62 = i2 + 3;
                    qt.y0(121, (bArr[i62] >> 4) & 15);
                    qt.y0(122, (bArr[i62] >> 0) & 15);
                    int i63 = i2 + 4;
                    qt.y0(123, (bArr[i63] >> 4) & 15);
                    qt.y0(124, (bArr[i63] >> 0) & 15);
                    qt.y0(125, (bArr[i2 + 5] >> 0) & 255);
                    int i64 = i2 + 6;
                    qt.y0(126, (bArr[i64] >> 0) & 1);
                    qt.y0(168, (bArr[i64] >> 2) & 3);
                    break;
                case 50:
                    int i65 = i2 + 2;
                    if (((bArr[i65] >> 6) & 1) == 0) {
                        z.k.s(227, 132, 2, 8, 1);
                    }
                    if (((bArr[i65] >> 7) & 1) == 1) {
                        z.k.s(227, 132, 2, 10, 0);
                    }
                    qt.y0(128, (bArr[i65] >> 0) & 1);
                    qt.y0(169, (bArr[i65] >> 7) & 1);
                    qt.y0(170, (bArr[i65] >> 6) & 1);
                    if (((bArr[i65] >> 2) & 1) == 1) {
                        if (((bArr[i65] >> 3) & 1) == 1) {
                            qt.a(1);
                        } else {
                            qt.a(0);
                        }
                    }
                    break;
            }
            return;
        }
        if (this.f11796w == 6) {
            int i66 = i2 + 2;
            if (bArr[i66] != this.f11794u) {
                byte b8 = bArr[i66];
                this.f11794u = b8;
                if (b8 == 1) {
                    m3();
                } else if (b8 == 2) {
                    l3();
                }
            } else if (bArr[i66] == 2 && u0.b.D != 11) {
                l3();
            } else if (bArr[i66] == 1 && u0.b.D != 11) {
                m3();
            }
        }
        int i67 = i2 + 2;
        qt.y0(139, bArr[i67] & 255);
        int i68 = bArr[i67] & 255;
        if (i68 != 1) {
            if (i68 != 2) {
                return;
            }
            qt.y0(138, (bArr[i2 + 4] >> 0) & 15);
            int i69 = i2 + 5;
            qt.y0(157, (bArr[i69] >> 4) & 15);
            qt.y0(167, (bArr[i69] >> 1) & 1);
            qt.y0(158, (bArr[i69] >> 0) & 1);
            qt.y0(159, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(160, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(163, bArr[i2 + 10] & 255);
            qt.y0(162, bArr[i2 + 11] & 255);
            qt.y0(161, bArr[i2 + 12] & 255);
            qt.y0(166, bArr[i2 + 13] & 255);
            qt.y0(165, bArr[i2 + 14] & 255);
            qt.y0(164, bArr[i2 + 15] & 255);
            return;
        }
        int i70 = i2 + 3;
        if (bArr[i70] == 0) {
            qt.y0(140, bArr[i2 + 4] & 255);
            int i71 = i2 + 5;
            qt.y0(143, (bArr[i71] >> 7) & 1);
            qt.y0(142, (bArr[i71] >> 5) & 1);
            qt.y0(141, (bArr[i71] >> 0) & 15);
            qt.y0(144, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (bArr[i70] == 1) {
            qt.y0(140, bArr[i2 + 4] & 255);
            qt.y0(145, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(146, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(147, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(148, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(149, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(150, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
            return;
        }
        if (bArr[i70] == 2) {
            qt.y0(140, bArr[i2 + 4] & 255);
            qt.y0(151, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(152, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(153, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(154, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(155, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(156, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11787n.j();
        u0.c.f17386m.d(this.f11797x);
        l0.b0.p0(this.f11798y);
        qt.q0(this.f11793t);
        w0.e.f17815a.d(this.f11793t);
        w0.e.f17819e.d(this.f11793t);
        u0.c.f17374a.d(this.f11793t);
        u0.c.f17388o.d(this.f11790q);
        u0.c.f17390q.d(this.f11791r);
        u0.c.f17389p.d(this.f11792s);
        qt.q0(this.f11786m);
        ot.f9020b.d(this.f11795v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 182) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            if (iArr[0] == 96) {
                c3(iArr[1]);
                return;
            } else if (iArr[0] == 97) {
                d3(iArr[1]);
                return;
            } else {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 3) {
            if (i2 == 30) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                qt.y0(171, iArr[0]);
                return;
            }
            if (i2 == 1029 && T2(iArr, 3)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = 255 - ((iArr[2] * 255) / a.f.i());
                if (iArr[0] == 1) {
                    z.k.s(227, 133, 3, iW & 255, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 0) {
                        z.k.s(227, 133, 3, iW & 255, i3 & 255, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            if (nt.W != 1) {
                switch (iArr[0]) {
                    case 9:
                        z.k.s(227, 51, 4, 11, this.f11799z[this.A % 2], 0, 0);
                        break;
                    case 10:
                        z.k.s(227, 51, 4, 12, this.f11799z[this.A % 2], 0, 0);
                        break;
                    case 11:
                        z.k.s(227, 51, 4, 9, this.f11799z[this.A % 2], 0, 0);
                        break;
                    case 12:
                        z.k.s(227, 51, 4, 10, this.f11799z[this.A % 2], 0, 0);
                        break;
                    default:
                        z.k.s(227, 51, 4, iArr[0], this.f11799z[this.A % 2], 0, 0);
                        break;
                }
            } else {
                int i4 = iArr[0];
                if (i4 == 17) {
                    int i5 = nt.f8633a;
                    if (i5 == 3736008 || i5 == 3801544) {
                        z.k.s(227, 51, 4, 17, this.f11799z[this.A % 2], 0, 0);
                    } else {
                        z.k.s(227, 51, 4, 42, this.f11799z[this.A % 2], 0, 0);
                    }
                } else if (i4 != 42) {
                    switch (i4) {
                        case 9:
                            z.k.s(227, 51, 4, 11, this.f11799z[this.A % 2], 0, 0);
                            break;
                        case 10:
                            z.k.s(227, 51, 4, 12, this.f11799z[this.A % 2], 0, 0);
                            break;
                        case 11:
                            z.k.s(227, 51, 4, 9, this.f11799z[this.A % 2], 0, 0);
                            break;
                        case 12:
                            z.k.s(227, 51, 4, 10, this.f11799z[this.A % 2], 0, 0);
                            break;
                        default:
                            z.k.s(227, 51, 4, iArr[0], this.f11799z[this.A % 2], 0, 0);
                            break;
                    }
                } else {
                    int i6 = nt.f8633a;
                    if (i6 == 3736008 || i6 == 3801544) {
                        z.k.s(227, 51, 4, 42, this.f11799z[this.A % 2], 0, 0);
                    } else {
                        z.k.s(227, 51, 4, 17, this.f11799z[this.A % 2], 0, 0);
                    }
                }
            }
        } else if (nt.W == 1) {
            int i7 = iArr[0];
            if (i7 == 17) {
                int i8 = nt.f8633a;
                if (i8 == 3736008 || i8 == 3801544) {
                    z.k.s(227, 51, 4, 17, this.f11799z[this.A % 2], 0, 0);
                } else {
                    z.k.s(227, 51, 4, 42, this.f11799z[this.A % 2], 0, 0);
                }
            } else if (i7 != 42) {
                z.k.s(227, 51, 4, iArr[0], this.f11799z[this.A % 2], 0, 0);
            } else {
                int i9 = nt.f8633a;
                if (i9 == 3736008 || i9 == 7864773) {
                    z.k.s(227, 51, 4, 42, this.f11799z[this.A % 2], 0, 0);
                } else {
                    z.k.s(227, 51, 4, 17, this.f11799z[this.A % 2], 0, 0);
                }
            }
        } else {
            z.k.s(227, 51, 4, iArr[0], this.f11799z[this.A % 2], 0, 0);
        }
        int i10 = this.A + 1;
        this.A = i10;
        this.A = i10 % 2;
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

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f11782i + bArr.length > 1024) {
            this.f11782i = 0;
            this.f11783j = 0;
            this.f11784k = 0;
        }
        System.arraycopy(bArr, 0, this.f11781h, this.f11782i, bArr.length);
        int length = this.f11782i + bArr.length;
        this.f11782i = length;
        int i5 = this.f11784k;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f11781h[1];
            int i6 = 2;
            while (true) {
                i4 = this.f11784k;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f11781h[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f11781h;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f11783j = this.f11784k + 1;
            } else {
                this.f11783j = 1;
            }
            this.f11784k = 0;
        }
        int i7 = this.f11782i - 2;
        while (true) {
            i2 = this.f11783j;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f11781h;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f11784k = i8;
                int i9 = i8 + i2 + 3;
                this.f11784k = i9;
                if (i9 >= this.f11782i) {
                    this.f11784k = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f11784k;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f11781h[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f11781h;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f11783j;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f11783j = this.f11784k;
                } else {
                    this.f11783j++;
                }
                this.f11784k = 0;
            }
            this.f11783j++;
        }
        if (i2 != 0) {
            int i12 = this.f11782i - i2;
            this.f11782i = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f11781h;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f11783j = 0;
        }
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
                iArr[3] = 16;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            case 9:
                iArr[2] = 13;
                iArr[3] = 34;
                break;
            default:
                int i3 = u0.b.f17306a0;
                if (i3 == 0) {
                    iArr[2] = 0;
                    iArr[3] = 0;
                } else if (i3 == 1) {
                    iArr[2] = 7;
                    iArr[3] = 48;
                }
                break;
        }
    }

    public final void c3(int i2) {
        B = i2;
        z.k.s(227, 132, 2, 96, i2);
        qt.y0(129, B);
        int iB = this.f11787n.b(1, 0);
        int i3 = B;
        if (iB != i3) {
            this.f11787n.g(1, i3);
        }
    }

    public final void d3(int i2) {
        C = i2;
        z.k.s(227, 132, 2, 97, i2);
        qt.y0(130, C);
        int iB = this.f11787n.b(2, 0);
        int i3 = C;
        if (iB != i3) {
            this.f11787n.g(2, i3);
        }
    }

    public final void j3(byte b2, String str) {
        if (str == null) {
            str = u0.b.D == 9 ? "  " : "Unkown";
        }
        int length = str.length();
        if (length > 14) {
            length = 14;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 17;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void k3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.sanlin.KYCToyotaAllCarSet")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.sanlin.KYCToyotaAllCarSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void l3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.lz.lexusis.KYCLexusCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.lexusis.KYCLexusCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void m3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.lz.lexusis.KYCLexusRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.lexusis.KYCLexusRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
