package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class pj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9231b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9234e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9232c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9233d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{11, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9235f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9236g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{46, 2}, new int[]{47, 9}, new int[]{49, 25}, new int[]{50, 9}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9237h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9238i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f9239j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9240k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9241l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9242m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f9243n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9244o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9245p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9246q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f9247r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f9248s = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f9249t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9250u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9251v = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pj pjVar = pj.this;
            byte b2 = (byte) (pjVar.f9239j + 1);
            pjVar.f9239j = b2;
            if (b2 == 20) {
                pjVar.f9240k = true;
                if (pjVar.f9232c == 1) {
                    l0.b0.l0(25, 0);
                    l0.b0.l0(25, 1);
                }
                l0.b0.o0(pj.this.f9241l);
                pj.this.f9239j = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (pj.this.f9243n == millis && pj.this.f9244o == zIs24HourFormat) {
                return;
            }
            pj.this.f9243n = millis;
            pj.this.f9244o = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pj.this.i3((byte) -28, u0.b.k3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pj.this.i3((byte) -28, u0.b.i3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pj pjVar = pj.this;
            pjVar.f9245p = 0;
            pjVar.f9246q = 0;
            l0.b0.b(pjVar.f9251v);
            if (nt.f8633a == 13173179) {
                z.k.s(227, 2, 173, 1, 0);
            }
            pj.this.f9249t = (byte) 10;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pj pjVar = pj.this;
            byte b2 = (byte) (pjVar.f9249t - 1);
            pjVar.f9249t = b2;
            if (b2 <= 0) {
                l0.b0.p0(pjVar.f9251v);
                pj.this.f9249t = (byte) 10;
                return;
            }
            switch (nt.f8633a) {
                case 3604923:
                    z.k.s(227, 2, 36, 32, 27);
                    break;
                case 3670459:
                case 4653500:
                case 4850108:
                case 5046716:
                case 5243324:
                case 6554043:
                case 6619579:
                case 7930299:
                case 7995835:
                case 8061371:
                case 10224060:
                case 10617276:
                case 10813884:
                case 11010492:
                case 11207100:
                case 12452283:
                case 12517819:
                    z.k.s(227, 2, 36, 40, 27);
                    break;
                case 3735995:
                case 7864763:
                case 10420668:
                case 11403708:
                case 12255675:
                    z.k.s(227, 2, 36, 36, 27);
                    break;
                case 3932603:
                case 10486204:
                case 11469244:
                case 12124603:
                case 12321211:
                    z.k.s(227, 2, 36, 34, 27);
                    break;
                case 3998139:
                case 10551740:
                case 11534780:
                case 12190139:
                case 12386747:
                    z.k.s(227, 2, 36, 35, 27);
                    break;
                case 4719036:
                case 4915644:
                case 5112252:
                case 5308860:
                case 10289596:
                case 10682812:
                case 10879420:
                case 11076028:
                case 11272636:
                case 12583355:
                case 12648891:
                case 12714427:
                case 12779963:
                case 12845499:
                case 12911035:
                case 12976571:
                case 13042107:
                    z.k.s(227, 2, 36, 41, 27);
                    break;
                case 4784571:
                    z.k.s(227, 2, 36, 37, 27);
                    break;
                case 4784572:
                case 4981180:
                case 5177788:
                case 5374396:
                case 10355132:
                case 10748348:
                case 10944956:
                case 11141564:
                case 11338172:
                case 13107643:
                case 13173179:
                case 13238715:
                case 13304251:
                case 13369787:
                case 13435323:
                case 13500859:
                case 13566395:
                    z.k.s(227, 2, 36, 33, 27);
                    break;
                case 4850107:
                    z.k.s(227, 2, 36, 38, 27);
                    break;
                case 5505467:
                    z.k.s(227, 2, 36, 39, 27);
                    break;
                case 6685116:
                case 6750652:
                case 6816188:
                case 6881724:
                case 8192443:
                case 8257979:
                case 8323515:
                case 8389051:
                case 11600316:
                case 11665852:
                case 11731388:
                case 11796924:
                case 11862460:
                case 11927996:
                case 14090683:
                    z.k.s(227, 2, 36, 48, 27);
                    break;
                case 6816187:
                    z.k.s(227, 2, 36, 42, 27);
                    break;
                case 8126907:
                    z.k.s(227, 2, 36, 43, 27);
                    break;
                case 8454587:
                    z.k.s(227, 2, 36, 46, 27);
                    break;
                case 8520123:
                    z.k.s(227, 2, 36, 47, 27);
                    break;
            }
            if (nt.f8637c != 13173179) {
                return;
            }
            if (pj.this.f9249t <= 3) {
                z.k.s(227, 2, 173, 1, 27);
            } else {
                z.k.s(227, 2, 173, 1, 0);
            }
        }
    }

    public static int a3(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 6;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                return 9;
            default:
                return 15;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f9242m);
        u0.c.f17386m.a(this.f9250u, 1);
        switch (nt.f8633a) {
            case 3604923:
            case 3670459:
            case 6554043:
            case 6619579:
            case 6816187:
            case 7930299:
            case 7995835:
            case 8061371:
            case 12452283:
            case 12517819:
            case 12583355:
            case 12648891:
            case 12714427:
            case 12779963:
            case 12845499:
            case 12911035:
            case 12976571:
            case 13042107:
            case 13107643:
            case 13173179:
            case 13238715:
            case 13304251:
            case 13369787:
            case 13435323:
            case 13500859:
            case 13566395:
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                mtVar.f8320o = 0;
                break;
            default:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8320o = 0;
                qt.z(l0.h0.f13060f);
                y0.g.f18094d.a(l0.h0.f13063i, 0);
                y0.g.f18095e.a(l0.h0.f13063i, 0);
                w0.e.f17815a.a(l0.h0.f13060f, 1);
                w0.e.f17819e.a(l0.h0.f13060f, 1);
                u0.c.f17374a.a(l0.h0.f13060f, 1);
                u0.c.f17392s.a(l0.h0.f13060f, 1);
                u0.c.f17393t.a(l0.h0.f13060f, 1);
                u0.c.f17388o.a(this.f9248s, 1);
                u0.c.f17390q.a(this.f9247r, 1);
                break;
        }
        switch (nt.f8633a) {
            case 6685116:
            case 6750652:
            case 6816188:
            case 6881724:
            case 8192443:
            case 8257979:
            case 8323515:
            case 8389051:
            case 8454587:
            case 8520123:
            case 11600316:
            case 11665852:
            case 11731388:
            case 11796924:
            case 11862460:
            case 11927996:
            case 14090683:
                this.f7886a.f8314i = 1;
                break;
            default:
                this.f7886a.f8314i = 0;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr;
        int i10;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -108) {
            qt.y0(128, bArr[i2 + 2] & 255);
        }
        if (b2 == -90) {
            qt.y0(169, bArr[i2 + 2]);
            qt.y0(170, bArr[i2 + 3]);
            qt.y0(171, bArr[i2 + 4]);
            qt.y0(172, bArr[i2 + 5]);
            qt.y0(173, bArr[i2 + 6]);
            qt.y0(174, bArr[i2 + 7]);
            int i11 = i2 + 8;
            qt.y0(175, (bArr[i11] >> 1) & 3);
            qt.y0(176, (bArr[i11] >> 0) & 1);
            return;
        }
        if (b2 == -63) {
            int i12 = i2 + 2;
            int i13 = i2 + 3;
            qt.y0(112, ((128 & bArr[i13]) >> 7) | ((bArr[i12] & 128) << 1));
            qt.y0(114, ((bArr[i12] & 32) << 3) | ((bArr[i13] & 32) >> 5));
            qt.y0(37, (bArr[i13] >> 5) & 1);
            qt.y0(113, ((bArr[i12] & 8) << 5) | ((bArr[i13] & 6) >> 1));
            int i14 = i2 + 4;
            qt.y0(151, ((bArr[i12] & 4) << 6) | ((bArr[i14] >> 6) & 3));
            qt.y0(118, ((bArr[i14] & 3) >> 0) | ((bArr[i12] & 1) << 8));
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i15 = i2 + 2;
            qt.y0(10, (bArr[i15] >> 6) & 1);
            qt.y0(53, (bArr[i15] >> 5) & 1);
            qt.y0(13, (bArr[i15] >> 3) & 1);
            qt.y0(26, (bArr[i15] >> 4) & 1);
            qt.y0(62, (bArr[i15] >> 2) & 1);
            qt.y0(11, (bArr[i15] >> 0) & 3);
            int i16 = i2 + 3;
            qt.y0(42, (bArr[i16] >> 7) & 1);
            qt.y0(67, (bArr[i16] >> 6) & 1);
            qt.y0(66, (bArr[i16] >> 5) & 1);
            qt.y0(12, (bArr[i16] >> 4) & 1);
            qt.y0(54, (bArr[i16] >> 3) & 1);
            int i17 = i2 + 4;
            qt.y0(16, (bArr[i17] >> 5) & 1);
            qt.y0(65, (bArr[i17] >> 4) & 1);
            qt.y0(30, (bArr[i17] >> 2) & 3);
            qt.y0(29, (bArr[i17] >> 0) & 3);
            int i18 = i2 + 6;
            int i19 = (bArr[i18] >> 0) & 15;
            if (i19 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i19 == 5) {
                i5 = 0;
                i6 = 1;
                i4 = 1;
            } else if (i19 != 6) {
                switch (i19) {
                    case 11:
                        i6 = 0;
                        i4 = 0;
                        i5 = 1;
                        break;
                    case 12:
                        i4 = 0;
                        i6 = 1;
                        i5 = 1;
                        break;
                    case 13:
                        i6 = 0;
                        i4 = 1;
                        i5 = i4;
                        break;
                    case 14:
                        i6 = 1;
                        i4 = i6;
                        i5 = i4;
                        break;
                    default:
                        i6 = 0;
                        i4 = i6;
                        i5 = i4;
                        break;
                }
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            qt.y0(20, i6);
            qt.y0(19, i4);
            qt.y0(18, i5);
            int i20 = (bArr[i18] >> 4) & 15;
            if (i20 == 3) {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            } else if (i20 == 5) {
                i8 = 0;
                i9 = 1;
                i7 = 1;
            } else if (i20 != 6) {
                switch (i20) {
                    case 11:
                        i9 = 0;
                        i7 = 0;
                        i8 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i9 = 1;
                        i8 = 1;
                        break;
                    case 13:
                        i9 = 0;
                        i7 = 1;
                        i8 = i7;
                        break;
                    case 14:
                        i9 = 1;
                        i7 = i9;
                        i8 = i7;
                        break;
                    default:
                        i9 = 0;
                        i7 = i9;
                        i8 = i7;
                        break;
                }
            } else {
                i9 = 0;
                i8 = 0;
                i7 = 1;
            }
            qt.y0(24, i9);
            qt.y0(23, i7);
            qt.y0(22, i8);
            qt.y0(21, bArr[i2 + 7] & 255);
            qt.y0(44, bArr[i2 + 11] & 255);
            int i21 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i21 == 254) {
                qt.y0(27, -2);
            } else if (i21 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i21);
            }
            int i22 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i22 == 254) {
                qt.y0(28, -2);
            } else if (i22 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i22);
            }
            int i23 = bArr[i2 + 13] & 255;
            int i24 = nt.f8645g[37];
            if (i23 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3((i24 == 0 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i23 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i23 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i25 = i2 + 6;
            int i26 = bArr[i25] & 255;
            int i27 = i2 + 7;
            int i28 = bArr[i27] & 255;
            int i29 = bArr[i27] & 255;
            int i30 = i2 + 8;
            int i31 = bArr[i30] & 255;
            if (i26 >= 7 && i28 >= 7 && i29 >= 7 && i31 >= 7) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i26;
            l0.c0.f13014h = i28;
            l0.c0.f13015i = i29;
            l0.c0.f13016j = i31;
            u0.d.D2(a3(bArr[i25] & 255));
            u0.d.E2(a3(bArr[i27] & 255));
            u0.d.F2(a3(bArr[i30] & 255));
            u0.d.G2(a3(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 72) {
            qt.y0(131, bArr[i2 + 4] & 255);
            qt.y0(132, bArr[i2 + 5] & 255);
            qt.y0(133, bArr[i2 + 6] & 255);
            qt.y0(134, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 118) {
            int i32 = i2 + 2;
            qt.y0(152, (bArr[i32] >> 7) & 1);
            qt.y0(154, (bArr[i32] >> 5) & 3);
            qt.y0(155, (bArr[i32] >> 4) & 1);
            qt.y0(156, (bArr[i32] >> 3) & 1);
            qt.y0(153, (bArr[i32] >> 0) & 7);
            int i33 = i2 + 3;
            qt.y0(157, (bArr[i33] >> 7) & 1);
            qt.y0(158, (bArr[i33] >> 6) & 1);
            qt.y0(115, (bArr[i33] >> 5) & 1);
            qt.y0(159, (bArr[i33] >> 4) & 1);
            qt.y0(160, (bArr[i33] >> 3) & 1);
            qt.y0(116, (bArr[i33] >> 2) & 1);
            qt.y0(161, (bArr[i33] >> 0) & 3);
            int i34 = i2 + 4;
            qt.y0(119, (bArr[i34] >> 7) & 1);
            qt.y0(120, (bArr[i34] >> 5) & 3);
            qt.y0(121, (bArr[i34] >> 4) & 1);
            qt.y0(122, (bArr[i34] >> 3) & 1);
            qt.y0(123, (bArr[i34] >> 2) & 1);
            qt.y0(124, (bArr[i34] >> 1) & 1);
            qt.y0(117, (bArr[i34] >> 0) & 1);
            int i35 = i2 + 5;
            qt.y0(126, (bArr[i35] >> 0) & 3);
            qt.y0(125, (bArr[i35] >> 2) & 1);
            qt.y0(127, (bArr[i35] >> 3) & 3);
            qt.y0(129, (bArr[i35] >> 6) & 3);
            qt.y0(130, (bArr[i35] >> 5) & 1);
            return;
        }
        if (b2 == 121) {
            int i36 = i2 + 4;
            qt.y0(162, (bArr[i36] >> 7) & 1);
            qt.y0(163, (bArr[i36] >> 6) & 1);
            qt.y0(164, (bArr[i36] >> 4) & 3);
            qt.y0(165, (bArr[i36] >> 2) & 3);
            qt.y0(166, (bArr[i36] >> 0) & 3);
            int i37 = i2 + 5;
            qt.y0(135, (bArr[i37] >> 6) & 3);
            qt.y0(136, (bArr[i37] >> 4) & 3);
            qt.y0(137, (bArr[i37] >> 2) & 3);
            qt.y0(138, (bArr[i37] >> 0) & 3);
            int i38 = i2 + 6;
            qt.y0(139, (bArr[i38] >> 6) & 3);
            qt.y0(140, (bArr[i38] >> 4) & 3);
            qt.y0(141, (bArr[i38] >> 2) & 3);
            qt.y0(142, (bArr[i38] >> 1) & 1);
            qt.y0(143, (bArr[i38] >> 0) & 1);
            int i39 = i2 + 7;
            qt.y0(167, (bArr[i39] >> 5) & 1);
            qt.y0(168, (bArr[i39] >> 4) & 1);
            qt.y0(144, (bArr[i39] >> 2) & 3);
            qt.y0(145, (bArr[i39] >> 1) & 1);
            qt.y0(146, (bArr[i39] >> 0) & 1);
            int i40 = i2 + 8;
            qt.y0(147, (bArr[i40] >> 4) & 15);
            qt.y0(148, (bArr[i40] >> 1) & 7);
            qt.y0(149, (bArr[i40] >> 0) & 1);
            qt.y0(150, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 33) {
            this.f9235f = bArr[i2 + 2] & 255;
            int i41 = bArr[i2 + 3] & 255;
            int i42 = 0;
            while (true) {
                iArr = this.f9236g;
                if (i42 >= iArr.length) {
                    break;
                }
                int i43 = this.f9235f;
                if (i43 == iArr[i42][0]) {
                    if (i43 == 0) {
                        break;
                    }
                    this.f9234e = i42;
                    break;
                }
                i42++;
            }
            int i44 = i41 & 255;
            if (i44 == 1) {
                if (i42 < iArr.length) {
                    l0.b0.l0(iArr[i42][1], 0);
                    return;
                }
                return;
            } else {
                if (i44 == 0) {
                    int i45 = this.f9234e;
                    if (i45 < iArr.length && i45 != 255) {
                        l0.b0.l0(iArr[i45][1], 1);
                    }
                    this.f9234e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 != 1) {
                if (b3 == 2 && b4 != (i10 = this.f9246q)) {
                    if (b4 > i10) {
                        for (int i46 = 0; i46 < b4 - this.f9246q; i46++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b4 < i10) {
                        for (int i47 = 0; i47 < this.f9246q - b4; i47++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f9246q = b4;
                    return;
                }
                return;
            }
            int i48 = this.f9245p;
            if (b4 != i48) {
                if (b4 > i48) {
                    for (int i49 = 0; i49 < b4 - this.f9245p; i49++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b4 < i48) {
                    for (int i50 = 0; i50 < this.f9245p - b4; i50++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f9245p = b4;
                return;
            }
            return;
        }
        switch (b2) {
            case 17:
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f9232c = b5 & 255;
                int i51 = 0;
                while (true) {
                    iArr2 = this.f9233d;
                    if (i51 < iArr2.length) {
                        int i52 = this.f9232c;
                        if (i52 != iArr2[i51][0]) {
                            i51++;
                        } else if (i52 != 0) {
                            this.f9231b = i51;
                        }
                    }
                }
                int i53 = this.f9232c;
                if (i53 == 0) {
                    if (this.f9237h != 1) {
                        if ((b6 & 255) == 0) {
                            int i54 = this.f9231b;
                            if (i54 < iArr2.length && i54 != 255) {
                                l0.b0.l0(iArr2[i54][1], 1);
                            }
                            this.f9231b = 255;
                        }
                    } else if (!this.f9240k) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    l0.b0.o0(this.f9241l);
                    this.f9240k = false;
                    this.f9239j = (byte) 0;
                    this.f9238i = 0;
                    this.f9237h = 0;
                } else if (i53 == 5) {
                    if (b6 == 1) {
                        switch (nt.f8633a) {
                            case 8126907:
                            case 12255675:
                            case 12321211:
                            case 12386747:
                                int i55 = h0.c.E;
                                if (i55 == 3 || i55 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else if (u0.i.l3().r3()) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                                break;
                            default:
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                                break;
                        }
                    }
                } else if (i53 != 12) {
                    int i56 = b6 & 255;
                    if (i56 == 1) {
                        if (i51 < iArr2.length) {
                            l0.b0.l0(iArr2[i51][1], 0);
                        }
                    } else if (i56 == 0) {
                        int i57 = this.f9231b;
                        if (i57 < iArr2.length && i57 != 255) {
                            l0.b0.l0(iArr2[i57][1], 1);
                        }
                        this.f9231b = 255;
                    }
                } else if (this.f9238i != b6) {
                    this.f9238i = b6;
                    if (b6 == 1) {
                        this.f9240k = false;
                        this.f9239j = (byte) 0;
                        l0.b0.a(this.f9241l);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b7 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                } else {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                }
                qt.y0(3, (b7 >> 5) & 1);
                qt.y0(4, (b7 >> 4) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                break;
            case 19:
                qt.y0(99, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(100, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(101, (bArr[i2 + 8] & 255) | ((bArr[i2 + 6] & 255) << 16) | ((bArr[i2 + 7] & 255) << 8));
                break;
            case 20:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, bArr[i2 + 4] & 255);
                qt.y0(104, ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                qt.y0(105, (bArr[i2 + 9] & 255) | ((bArr[i2 + 10] & 255) << 16) | ((bArr[i2 + 11] & 255) << 8));
                break;
            case 21:
                qt.y0(106, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(107, bArr[i2 + 4] & 255);
                qt.y0(108, ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                qt.y0(109, (bArr[i2 + 9] & 255) | ((bArr[i2 + 10] & 255) << 16) | ((bArr[i2 + 11] & 255) << 8));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9242m);
        u0.c.f17386m.d(this.f9250u);
        l0.b0.p0(this.f9251v);
        qt.q0(l0.h0.f13060f);
        y0.g.f18094d.d(l0.h0.f13063i);
        y0.g.f18095e.d(l0.h0.f13063i);
        w0.e.f17815a.d(l0.h0.f13060f);
        w0.e.f17819e.d(l0.h0.f13060f);
        u0.c.f17388o.d(this.f9248s);
        u0.c.f17390q.d(this.f9247r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 177) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                z.k.s(227, 2, 202, iArr[0], iArr[1]);
                break;
            case 1:
                z.k.s(227, 2, 123, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 4, 27, iArr[0], iArr[0], 1, 255);
                break;
            case 3:
                z.k.s(227, 2, 154, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 2, 125, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 2, 173, iArr[0], iArr[1]);
                break;
        }
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
