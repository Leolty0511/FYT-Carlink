package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ao extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f3406r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f3407s = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3411e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public g f3414h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f3408b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f3409c = new int[15][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3410d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3412f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3413g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 5}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 0}, new int[]{136, 2}, new int[]{177, 54}, new int[]{178, 54}, new int[]{179, 74}, new int[]{180, 75}, new int[]{181, 16}, new int[]{182, 12}, new int[]{183, 27}, new int[]{184, 28}, new int[]{185, 22}, new int[]{186, 24}, new int[]{187, 9}, new int[]{188, 1}, new int[]{208, 62}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f3415i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3416j = 25;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3417k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3418l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3419m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3420n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3421o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3422p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3423q = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f2;
            if (i2 == 2) {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    ao.this.b3(4);
                    return;
                } else {
                    ao.this.b3(2);
                    return;
                }
            }
            if (i2 == 3) {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    ao.this.b3(5);
                    return;
                } else {
                    ao.this.b3(3);
                    return;
                }
            }
            if (i2 == 10) {
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    ao.this.b3(2);
                    return;
                } else {
                    ao.this.b3(4);
                    return;
                }
            }
            if (i2 != 11) {
                return;
            }
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                ao.this.b3(3);
            } else {
                ao.this.b3(5);
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
            z.k.s(227, 130, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ao.this.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ao.this.f3422p);
            ao.this.f3420n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ao aoVar = ao.this;
            int i2 = aoVar.f3420n - 1;
            aoVar.f3420n = i2;
            if (i2 <= 0) {
                l0.b0.p0(aoVar.f3422p);
                ao.this.f3420n = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 50, 0);
                z.k.s(227, 144, 2, 48, 0);
                z.k.s(227, 137, 1, 0);
                z.k.s(227, 138, 1, 0);
                ao aoVar2 = ao.this;
                aoVar2.j3(aoVar2.f3415i.b(25, 0));
            }
            int i3 = nt.f8633a;
            if (i3 == 8978884 || i3 == 1835462) {
                z.k.s(227, 132, 2, 8, u0.b.f17306a0);
            }
            switch (nt.f8633a) {
                case 9044423:
                case 9765317:
                case 9830853:
                case 9896389:
                    z.k.s(227, 226, 1, 0);
                    break;
                case 9109959:
                case 10420677:
                    z.k.s(227, 226, 1, 6);
                    break;
                case 9175495:
                case 11272645:
                    z.k.s(227, 226, 1, 18);
                    break;
                case 9241031:
                case 11338181:
                    z.k.s(227, 226, 1, 19);
                    break;
                case 9306567:
                    z.k.s(227, 226, 1, 34);
                    break;
                case 9372103:
                    z.k.s(227, 226, 1, 35);
                    break;
                case 9961925:
                case 10027461:
                case 10092997:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 10158533:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 10224069:
                case 10289605:
                    z.k.s(227, 226, 1, 3);
                    break;
                case 10355141:
                    z.k.s(227, 226, 1, 5);
                    break;
                case 10486213:
                case 10551749:
                case 15663559:
                    z.k.s(227, 226, 1, 8);
                    break;
                case 10617285:
                    z.k.s(227, 226, 1, 9);
                    break;
                case 10682821:
                    z.k.s(227, 226, 1, 10);
                    break;
                case 10748357:
                case 10813893:
                case 15598023:
                    z.k.s(227, 226, 1, 11);
                    break;
                case 10879429:
                    z.k.s(227, 226, 1, 12);
                    break;
                case 10944965:
                    z.k.s(227, 226, 1, 13);
                    break;
                case 11010501:
                    z.k.s(227, 226, 1, 14);
                    break;
                case 11076037:
                    z.k.s(227, 226, 1, 15);
                    break;
                case 11141573:
                    z.k.s(227, 226, 1, 16);
                    break;
                case 11207109:
                    z.k.s(227, 226, 1, 17);
                    break;
                case 11403717:
                case 11469253:
                    z.k.s(227, 226, 1, 20);
                    break;
                case 11534789:
                    z.k.s(227, 226, 1, 21);
                    break;
                case 11600325:
                case 15532487:
                    z.k.s(227, 226, 1, 22);
                    break;
                case 11665861:
                    z.k.s(227, 226, 1, 23);
                    break;
                case 11731397:
                    z.k.s(227, 226, 1, 24);
                    break;
                case 11796933:
                    z.k.s(227, 226, 1, 25);
                    break;
                case 11862469:
                    z.k.s(227, 226, 1, 26);
                    break;
                case 11928005:
                case 11993541:
                    z.k.s(227, 226, 1, 27);
                    break;
                case 12059077:
                    z.k.s(227, 226, 1, 28);
                    break;
                case 12124613:
                    z.k.s(227, 226, 1, 29);
                    break;
                case 12190149:
                    z.k.s(227, 226, 1, 30);
                    break;
                case 12255685:
                    z.k.s(227, 226, 1, 31);
                    break;
                case 12321221:
                    z.k.s(227, 226, 1, 32);
                    break;
                case 12386757:
                    z.k.s(227, 226, 1, 33);
                    break;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, ao.f3407s[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.syu.canbus.fb.click".equals(intent.getAction())) {
                try {
                    if (nt.f8645g[151] == 1) {
                        z.k.s(227, 132, 2, 96, 0);
                    } else {
                        z.k.s(227, 132, 2, 96, 1);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public /* synthetic */ g(ao aoVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8633a != 8978884) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 30;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f3415i.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.f3421o, 1);
        qt.z(this.f3418l);
        qt.z(this.f3419m);
        switch (nt.f8633a) {
            case 8913348:
                this.f7886a.f8307b = 0;
                break;
            case 8978884:
                this.f7886a.f8307b = 1;
                y0.g.f18094d.a(this.f3423q, 1);
                break;
            case 15532487:
            case 15598023:
            case 15663559:
                z.c.f18184d.a(this.f3417k, 0);
                break;
        }
        int i2 = nt.f8633a;
        if (i2 == 15532487 || i2 == 15598023 || i2 == 15663559) {
            this.f3414h = new g(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.syu.canbus.fb.click");
            App.c().registerReceiver(this.f3414h, intentFilter);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 49) {
            int i10 = i2 + 2;
            qt.y0(139, (bArr[i10] >> 4) & 15);
            qt.y0(140, (bArr[i10] >> 0) & 15);
            int i11 = i2 + 3;
            qt.y0(141, (bArr[i11] >> 4) & 15);
            qt.y0(142, (bArr[i11] >> 0) & 15);
            int i12 = i2 + 4;
            qt.y0(143, (bArr[i12] >> 4) & 15);
            qt.y0(144, (bArr[i12] >> 0) & 15);
            qt.y0(145, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 53) {
            int i13 = i2 + 2;
            qt.y0(29, (bArr[i13] >> 0) & 15);
            qt.y0(31, (bArr[i13] >> 4) & 15);
            int i14 = i2 + 3;
            qt.y0(30, (bArr[i14] >> 0) & 15);
            qt.y0(32, (bArr[i14] >> 4) & 15);
            return;
        }
        if (b2 == 102) {
            int i15 = i2 + 4;
            qt.y0(151, (bArr[i15] >> 7) & 1);
            qt.y0(152, (bArr[i15] >> 6) & 1);
            return;
        }
        if (b2 == 104) {
            int i16 = i2 + 2;
            qt.y0(163, (bArr[i16] >> 0) & 1);
            qt.y0(164, (bArr[i16] >> 1) & 1);
            qt.y0(165, (bArr[i16] >> 2) & 1);
            qt.y0(166, (bArr[i16] >> 3) & 1);
            qt.y0(167, (bArr[i16] >> 4) & 1);
            qt.y0(168, (bArr[i16] >> 5) & 1);
            return;
        }
        if (b2 == 82) {
            int i17 = i2 + 2;
            l0.c0.N1((bArr[i17] >> 7) & 1, (bArr[i17] >> 6) & 1, 0);
            return;
        }
        if (b2 == 83) {
            int i18 = i2 + 2;
            qt.y0(153, (bArr[i18] >> 7) & 1);
            qt.y0(154, (bArr[i18] >> 6) & 1);
            qt.y0(155, (bArr[i18] >> 5) & 1);
            qt.y0(156, (bArr[i18] >> 4) & 1);
            qt.y0(157, (bArr[i18] >> 0) & 3);
            int i19 = i2 + 3;
            qt.y0(158, (bArr[i19] >> 7) & 1);
            qt.y0(159, (bArr[i19] >> 6) & 1);
            qt.y0(160, (bArr[i19] >> 5) & 1);
            int i20 = i2 + 4;
            qt.y0(161, (bArr[i20] >> 7) & 1);
            qt.y0(162, (bArr[i20] >> 6) & 1);
            return;
        }
        switch (b2) {
            case 29:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = 255 & bArr[i27];
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.e1(bArr[i21]));
                u0.d.E2(l0.c0.e1(bArr[i23]));
                u0.d.F2(l0.c0.e1(bArr[i25]));
                u0.d.G2(l0.c0.e1(bArr[i27]));
                int i29 = i2 + 6;
                qt.y0(146, (bArr[i29] >> 7) & 1);
                qt.y0(147, (bArr[i29] >> 6) & 1);
                qt.y0(148, (bArr[i29] >> 5) & 1);
                qt.y0(149, (bArr[i29] >> 4) & 1);
                qt.y0(150, (bArr[i29] >> 0) & 7);
                break;
            case 30:
                u0.d.R2(l0.c0.e1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.e1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.e1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.e1(bArr[i2 + 5]));
                break;
            case 31:
                byte b3 = bArr[i2 + 2];
                qt.y0(99, (b3 >> 0) & 15);
                qt.y0(100, (b3 >> 7) & 1);
                qt.y0(101, bArr[i2 + 3] & 255);
                break;
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f3412f = b4 & 255;
                int i30 = 0;
                while (true) {
                    iArr = this.f3413g;
                    if (i30 < iArr.length) {
                        int i31 = this.f3412f;
                        if (i31 != iArr[i30][0]) {
                            i30++;
                        } else if (i31 != 0) {
                            this.f3411e = i30;
                        }
                    }
                }
                int i32 = b5 & 255;
                if (i32 == 1) {
                    if (i30 < iArr.length) {
                        l0.b0.l0(iArr[i30][1], 0);
                    }
                } else if (i32 == 0) {
                    int i33 = this.f3411e;
                    if (i33 < iArr.length && i33 != 255) {
                        l0.b0.l0(iArr[i33][1], 1);
                    }
                    this.f3411e = 255;
                }
                break;
            case 33:
                int i34 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i34);
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8) | i34);
                break;
            case 34:
                int i35 = i2 + 2;
                int i36 = (bArr[i35] & 255) << 24;
                int i37 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i37 == 65535) {
                    i37 = 0;
                }
                qt.y0(107, i36 | i37);
                qt.y0(110, bArr[i35] & 255);
                break;
            case 35:
                int i38 = (bArr[i2 + 2] & 255) << 24;
                int i39 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i39 == 65535) {
                    i39 = 0;
                }
                qt.y0(108, i39 | i38);
                for (int i40 = 0; i40 < 5; i40++) {
                    int i41 = i2 + (i40 * 2);
                    int[] iArr2 = {i40, (bArr[i41 + 6] & 255) | ((bArr[i41 + 5] & 255) << 8) | i38};
                    if (qt.C0(109, iArr2, this.f3408b[i40])) {
                        this.f3408b[i40] = iArr2;
                    }
                }
                break;
            case 36:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                } else {
                    qt.y0(1, (b6 >> 6) & 1);
                    qt.y0(2, (b6 >> 7) & 1);
                }
                qt.y0(3, (b6 >> 4) & 1);
                qt.y0(4, (b6 >> 5) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                break;
            case 37:
                byte b7 = bArr[i2 + 2];
                int[] iArr3 = new int[1];
                iArr3[0] = (b7 & 128) == 0 ? 0 : 1;
                qt.y0(111, iArr3);
                int[] iArr4 = new int[1];
                iArr4[0] = (b7 & 64) == 0 ? 0 : 1;
                qt.y0(112, iArr4);
                int[] iArr5 = new int[1];
                iArr5[0] = (b7 & 32) == 0 ? 0 : 1;
                qt.y0(113, iArr5);
                int[] iArr6 = new int[1];
                iArr6[0] = (b7 & 4) == 0 ? 0 : 1;
                qt.y0(114, iArr6);
                int i42 = (b7 & 3) << 24;
                int i43 = bArr[i2 + 3] & 255;
                if (i43 == 255) {
                    i43 = 16777215;
                }
                qt.y0(115, i43 | i42);
                int i44 = bArr[i2 + 4] & 255;
                if (i44 == 255) {
                    i44 = 16777215;
                }
                qt.y0(116, i44 | i42);
                int i45 = bArr[i2 + 5] & 255;
                if (i45 == 255) {
                    i45 = 16777215;
                }
                qt.y0(117, i45 | i42);
                int i46 = bArr[i2 + 6] & 255;
                if (i46 == 255) {
                    i46 = 16777215;
                }
                qt.y0(118, i46 | i42);
                int i47 = bArr[i2 + 7] & 255;
                qt.y0(119, i42 | (i47 != 255 ? i47 : 16777215));
                break;
            case 38:
                int i48 = i2 + 2;
                qt.y0(120, (bArr[i48] >> 7) & 1);
                qt.y0(121, (bArr[i48] >> 4) & 7);
                qt.y0(122, (bArr[i48] >> 2) & 3);
                qt.y0(123, (bArr[i48] >> 0) & 3);
                int i49 = i2 + 3;
                qt.y0(124, (bArr[i49] >> 7) & 1);
                qt.y0(125, (bArr[i49] >> 6) & 1);
                qt.y0(126, (bArr[i49] >> 5) & 1);
                qt.y0(127, (bArr[i49] >> 4) & 1);
                qt.y0(128, (bArr[i49] >> 0) & 7);
                qt.y0(128, (bArr[i49] >> 0) & 7);
                int i50 = i2 + 4;
                qt.y0(129, (bArr[i50] >> 7) & 1);
                qt.y0(130, (bArr[i50] >> 6) & 1);
                qt.y0(131, (bArr[i50] >> 5) & 1);
                qt.y0(132, (bArr[i50] >> 4) & 1);
                qt.y0(133, (bArr[i50] >> 3) & 1);
                int i51 = i2 + 5;
                qt.y0(134, (bArr[i51] >> 7) & 1);
                qt.y0(135, (bArr[i51] >> 6) & 1);
                qt.y0(136, (bArr[i2 + 6] >> 0) & 3);
                qt.y0(137, (bArr[i2 + 7] >> 0) & 7);
                break;
            case 39:
                int i52 = (bArr[i2 + 2] & 255) << 24;
                for (int i53 = 0; i53 < 15; i53++) {
                    int i54 = i2 + (i53 * 2);
                    int[] iArr7 = {i53, (bArr[i54 + 4] & 255) | ((bArr[i54 + 3] & 255) << 8) | i52};
                    if (qt.C0(138, iArr7, this.f3409c[i53])) {
                        this.f3409c[i53] = iArr7;
                    }
                }
                break;
            case 40:
                int i55 = i2 + 2;
                qt.y0(10, (bArr[i55] >> 7) & 1);
                qt.y0(11, (bArr[i55] >> 6) & 1);
                qt.y0(12, (bArr[i55] >> 5) & 1);
                qt.y0(34, (bArr[i55] >> 4) & 1);
                qt.y0(13, (bArr[i55] >> 3) & 1);
                qt.y0(14, (bArr[i55] >> 2) & 1);
                qt.y0(15, (bArr[i55] >> 1) & 1);
                qt.y0(17, (bArr[i55] >> 0) & 1);
                int i56 = nt.f8633a;
                if (i56 == 11403717 || i56 == 11469253 || i56 == 11928005 || i56 == 11993541 || i56 == 12255685 || i56 == 12321221) {
                    int i57 = i2 + 11;
                    int i58 = (bArr[i57] >> 0) & 3;
                    if (i58 != 1) {
                        if (i58 == 2) {
                            i5 = 1;
                        } else if (i58 != 3) {
                            i5 = 0;
                        } else {
                            i5 = 0;
                            i4 = 1;
                        }
                        i4 = i5;
                    } else {
                        i4 = 0;
                        i5 = 1;
                    }
                    int i59 = (bArr[i57] >> 2) & 3;
                    if (i59 != 1) {
                        if (i59 == 2) {
                            i7 = 1;
                        } else if (i59 != 3) {
                            i7 = 0;
                        } else {
                            i7 = 0;
                            i6 = 1;
                        }
                        i6 = i7;
                    } else {
                        i6 = 0;
                        i7 = 1;
                    }
                    if (((bArr[i57] >> 4) & 1) == 1) {
                        i8 = 1;
                        i6 = 1;
                        i4 = 1;
                        i9 = 1;
                    } else {
                        i8 = 0;
                        i9 = 0;
                    }
                    qt.y0(18, i8);
                    qt.y0(19, i5);
                    qt.y0(20, i4);
                    qt.y0(22, i9);
                    qt.y0(23, i7);
                    qt.y0(24, i6);
                } else {
                    int i60 = i2 + 3;
                    qt.y0(18, (bArr[i60] >> 7) & 1);
                    qt.y0(19, (bArr[i60] >> 6) & 1);
                    qt.y0(20, (bArr[i60] >> 5) & 1);
                }
                qt.y0(21, (bArr[i2 + 3] >> 0) & 15);
                int i61 = i2 + 4;
                int i62 = bArr[i61] & 255;
                int i63 = i2 + 5;
                int i64 = bArr[i63] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i62 = bArr[i63] & 255;
                    i64 = bArr[i61] & 255;
                }
                if (i62 == 0) {
                    qt.y0(27, -2);
                } else if (i62 == 31) {
                    qt.y0(27, -3);
                } else if ((i62 < 1 || i62 > 29) && (i62 < 33 || i62 > 38)) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i62);
                }
                if (i64 == 0) {
                    qt.y0(28, -2);
                } else if (i64 == 31) {
                    qt.y0(28, -3);
                } else if ((i64 < 1 || i64 > 29) && (i64 < 33 || i64 > 38)) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i64);
                }
                int i65 = i2 + 6;
                qt.y0(33, (bArr[i65] >> 7) & 1);
                qt.y0(16, (bArr[i65] >> 6) & 1);
                qt.y0(35, (bArr[i65] >> 5) & 1);
                qt.y0(36, (bArr[i65] >> 4) & 1);
                qt.y0(38, (bArr[i65] >> 2) & 1);
                qt.y0(39, (bArr[i65] >> 1) & 1);
                qt.y0(37, (bArr[i65] >> 0) & 1);
                int i66 = bArr[i2 + 7] & 255;
                if (i66 == 255 || i66 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i66 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                int i67 = bArr[i2 + 8] & 255;
                if (i67 == 0) {
                    qt.y0(40, -2);
                } else if (i67 == 31) {
                    qt.y0(40, -3);
                } else if ((i67 < 1 || i67 > 29) && (i67 < 33 || i67 > 38)) {
                    qt.y0(40, -1);
                } else {
                    qt.y0(40, i67);
                }
                int i68 = i2 + 9;
                qt.y0(42, (bArr[i68] >> 7) & 1);
                qt.y0(46, (bArr[i68] >> 6) & 1);
                qt.y0(47, (bArr[i68] >> 5) & 1);
                qt.y0(43, (bArr[i68] >> 4) & 1);
                qt.y0(44, (bArr[i68] >> 0) & 15);
                int i69 = bArr[i2 + 10] & 255;
                if (i69 == 0) {
                    qt.y0(41, -2);
                } else if (i69 == 31) {
                    qt.y0(41, -3);
                } else if ((i69 < 1 || i69 > 29) && (i69 < 33 || i69 > 38)) {
                    qt.y0(41, -1);
                } else {
                    qt.y0(41, i69);
                }
                qt.y0(45, (bArr[i2 + 11] >> 5) & 1);
                qt.y0(75, (bArr[i2 + 12] >> 6) & 1);
                break;
            case 41:
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3415i.j();
        u0.c.f17386m.d(this.f3421o);
        l0.b0.p0(this.f3422p);
        qt.q0(this.f3418l);
        qt.q0(this.f3419m);
        z.c.f18184d.d(this.f3417k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 172) {
            return;
        }
        int i4 = 0;
        if (i2 == 109) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f3408b[i4]);
                i4++;
            }
        } else {
            if (i2 != 138) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f3409c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr[0] != 99) {
                z.k.s(227, 141, 2, iArr[0], iArr[1]);
                return;
            } else {
                j3(iArr[1]);
                return;
            }
        }
        if (i2 == 6) {
            qt.y0(170, iArr[0]);
            z.k.s(227, 229, 1, iArr[0]);
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = (iArr[2] * 255) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 133, 3, iW, i3, 1);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 133, 3, iW, i3, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 != 34) {
            if (i2 != 35) {
                return;
            }
            qt.y0(169, iArr[0]);
            return;
        }
        if (iArr[0] != 1) {
            if (iArr[0] == 0) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
                return;
            }
            return;
        }
        int i4 = nt.f8633a;
        if (i4 == 15532487 || i4 == 15598023 || i4 == 15663559) {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_AnC_Toyota_ALpha_UI")) {
                return;
            }
            h3();
        } else {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_Prdao_UI")) {
                return;
            }
            i3();
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        int i3 = u0.b.D;
        if (i3 != 1) {
            if (i3 != 2 && i3 != 3) {
                switch (i3) {
                    case 8:
                    case 10:
                        iArr[2] = 8;
                        iArr[3] = 33;
                        iArr[5] = u0.b.r3 & 255;
                        iArr[6] = u0.b.s3 & 255;
                        int i4 = u0.b.t3;
                        iArr[7] = i4 / BatchedScanSettings.MAX_INTERVAL_SEC;
                        iArr[8] = (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                        iArr[9] = i4 % 60;
                        break;
                    case 9:
                        iArr[2] = 3;
                        iArr[3] = 33;
                        iArr[5] = u0.b.r3 & 255;
                        iArr[6] = u0.b.s3 & 255;
                        int i5 = u0.b.t3;
                        iArr[7] = i5 / BatchedScanSettings.MAX_INTERVAL_SEC;
                        iArr[8] = (i5 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                        iArr[9] = i5 % 60;
                        break;
                }
            } else {
                iArr[2] = 11;
                iArr[3] = 33;
            }
            iArr[2] = 7;
            iArr[3] = 33;
        } else {
            int i6 = w0.d.f17797i;
            int i7 = w0.d.f17798j;
            iArr[2] = 1;
            iArr[3] = 1;
            int i8 = w0.d.f17796h;
            if (i8 == 65536) {
                iArr[4] = 0;
            } else if (i8 == 65537) {
                iArr[4] = 1;
            } else if (i8 == 65538) {
                iArr[4] = 2;
            } else if (i8 == 0) {
                iArr[4] = 16;
            } else if (i8 == 1) {
                iArr[4] = 17;
            }
            iArr[5] = i6 & 255;
            iArr[6] = (i6 >> 8) & 255;
            if (i7 >= 65536) {
                i7 -= 65536;
            }
            int i9 = i7 % 6;
            if (i9 != 0 || i7 == 0) {
                iArr[7] = i9;
            } else {
                iArr[7] = 6;
            }
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
            iArr[3] = 0;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
    }

    public final void b3(int i2) {
        z.k.s(227, 224, 2, i2, 1);
        SystemClock.sleep(100L);
        z.k.s(227, 224, 2, i2, 0);
    }

    public final void h3() {
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_AnC_Toyota_ALpha_UI")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_Tangdu_AnC_Toyota_ALpha_UI");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void i3() {
        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_Prdao_UI")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_Prdao_UI");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void j3(int i2) {
        qt.y0(171, i2);
        f3406r = i2;
        if (i2 == 1) {
            Intent intent = new Intent("android.fyt.screenbutton.CanbusShow");
            intent.setPackage("com.fyt.screenbutton");
            App.c().startService(intent);
        } else if (i2 == 0) {
            Intent intent2 = new Intent("android.fyt.screenbutton.CanbusHide");
            intent2.setPackage("com.fyt.screenbutton");
            App.c().startService(intent2);
        }
        int iB = this.f3415i.b(25, 0);
        int i3 = f3406r;
        if (iB != i3) {
            this.f3415i.g(25, i3);
        }
    }
}
