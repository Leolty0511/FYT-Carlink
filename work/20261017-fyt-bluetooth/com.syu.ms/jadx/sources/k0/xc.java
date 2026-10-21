package k0;

import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.text.format.Time;
import android.util.Log;
import android.util.TimedRemoteCaller;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class xc extends lt {
    public static final Runnable F = new g();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12097k;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12110x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12088b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12089c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12090d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12091e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12092f = 10;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12093g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12094h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12095i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12096j = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12098l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12099m = 100;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f12100n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12101o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12102p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12103q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f12104r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f12105s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String[][] f12106t = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String[][] f12107u = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f12108v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f12109w = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12111y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int[][] f12112z = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{20, 2}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{87, 1}, new int[]{89, 58}, new int[]{90, 12}, new int[]{91, 25}};
    public Runnable A = new d();
    public long B = -1;
    public Runnable C = new e();
    public Runnable D = new f();
    public int[][] E = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 11) {
                z.k.s(227, 144, 3, 17, 1, 2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xc.this.f12100n = true;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            xc xcVar = xc.this;
            if (xcVar.f12098l == 0 && (i2 = xcVar.f12099m) != 6 && i2 != 7 && i2 != 8 && i2 != 0) {
                qt.y0(110, 14);
            }
            y0.h.u0(-4);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 1000;
            if (xc.this.B != millis) {
                xc.this.B = millis;
                xc xcVar = xc.this;
                int i2 = xcVar.f12092f;
                if (i2 > 0) {
                    xcVar.f12092f = i2 - 1;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13 || i2 == 11 || i2 == 0 || i2 == -1) {
                return;
            }
            xc.this.f3(198, 175, 14, 1, 0);
            xc.this.f12104r = false;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 3, 17, 1, 2);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        y0.f.C0 = 24;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8315j = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 1;
        mtVar.f8308c = 1;
        mtVar.f8309d = 1;
        mtVar.f8320o = 0;
        u0.c.f17374a.a(this.C, 1);
        u0.c.f17376c.a(this.D, 1);
        z.k.s(227, 144, 3, 17, 1, 2);
        z.k.s(227, 144, 3, 81, 48, 0);
        z.k.s(227, 144, 3, 81, 36, 0);
        qt.z(this.A);
    }

    /* JADX WARN: Code duplicated, block: B:408:0x08da  */
    /* JADX WARN: Code duplicated, block: B:410:0x08de  */
    /* JADX WARN: Code duplicated, block: B:413:0x08e6  */
    /* JADX WARN: Code duplicated, block: B:415:0x08f2  */
    /* JADX WARN: Code duplicated, block: B:417:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:420:0x08fe  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        int i4 = 3;
        if (b2 == 17) {
            int i5 = i2 + 2;
            if (bArr[i5] != 1) {
                if (bArr[i5] == 16) {
                    byte b3 = bArr[i2 + 3];
                    if (b3 == 16) {
                        qt.y0(116, ((bArr[i2 + 5] & 255) << 24) | ((bArr[i2 + 6] & 255) << 16) | ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
                        qt.y0(117, (bArr[i2 + 11] & 255) | ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8));
                        return;
                    }
                    if (b3 == 81) {
                        int i6 = bArr[i2 + 4] != 2 ? bArr[i2 + 5] & 255 : 4;
                        int i7 = (bArr[i2 + 36] & 65280) | (bArr[i2 + 37] & 255);
                        StringBuilder sb = new StringBuilder();
                        int i8 = (i2 + i3) - 1;
                        for (int i9 = i2 + 6; i9 < i8; i9 += 2) {
                            sb.append((char) (((bArr[i9] & 255) << 8) | (bArr[i9 + 1] & 255)));
                        }
                        qt.z0(118, new int[]{i6, i7}, sb.toString());
                        return;
                    }
                    if (b3 != 82) {
                        return;
                    }
                    int i10 = i2 + 4;
                    if (bArr[i10] == 0) {
                        qt.y0(115, 7);
                        return;
                    } else {
                        if (bArr[i10] == 1) {
                            if (bArr[i2 + 5] == 0) {
                                qt.y0(115, 5);
                                return;
                            } else {
                                qt.y0(115, 6);
                                return;
                            }
                        }
                        return;
                    }
                }
                return;
            }
            int i11 = i2 + 3;
            if (bArr[i11] == 1) {
                int i12 = bArr[i2 + 4] & 255;
                this.f12088b = i12;
                if (i12 == 16) {
                    this.f12088b = 2;
                } else if (i12 == 17) {
                    this.f12088b = 3;
                }
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 132, new int[]{this.f12088b}, null, null);
                int i13 = i2 + 7;
                this.f12091e = (bArr[i13] >> 5) & 1;
                qt.y0(144, (bArr[i13] >> 7) & 1);
                qt.y0(139, (bArr[i13] >> 5) & 1);
                qt.y0(140, (bArr[i13] >> 4) & 1);
                int i14 = bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME;
                this.f12089c = i14;
                o1.x.C(xVarArr, 142, new int[]{i14}, null, null);
                int i15 = (bArr[i13] >> 4) & 3;
                if (this.f12103q == 1 && i15 == 0) {
                    z.k.s(227, 144, 3, 17, 1, 2);
                    this.f12103q = 0;
                }
                StringBuilder sb2 = new StringBuilder();
                int i16 = i2 + i3;
                for (int i17 = i2 + 8; i17 < i16; i17++) {
                    sb2.append((char) (bArr[i17] & 255));
                }
                qt.z0(131, new int[]{(bArr[i13] >> 7) & 1, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] & 255) << 8)}, sb2.toString());
                return;
            }
            if (bArr[i11] == 83) {
                qt.y0(138, bArr[i2 + 7] & 255);
                int i18 = bArr[i2 + 5] & 255;
                if (i18 == 16) {
                    i4 = 2;
                } else if (i18 != 17) {
                    i4 = i18;
                }
                int i19 = bArr[i2 + 6] & 255;
                if (i19 == 1) {
                    this.f12093g = 0;
                }
                int i20 = i2 + 8;
                if ((bArr[i20] <= 48 || bArr[i20] > 57) && ((bArr[i20] < 97 || bArr[i20] > 122) && (bArr[i20] < 65 || bArr[i20] > 90))) {
                    this.f12093g++;
                }
                if (i19 == 10 && this.f12093g > 0 && u0.b.D == 11) {
                    o1.m.a().postDelayed(new a(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                }
                StringBuilder sb3 = new StringBuilder();
                int i21 = i2 + i3;
                while (i20 < i21 && bArr[i20] != 0) {
                    sb3.append((char) (bArr[i20] & 255));
                    i20++;
                }
                qt.z0(134, new int[]{i19, i4}, sb3.toString());
                return;
            }
            return;
        }
        if (b2 == 40) {
            if (bArr[i2 + 2] == 1) {
                qt.y0(104, bArr[i2 + 3] & 255);
                return;
            }
            return;
        }
        if (b2 != 42) {
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 85) {
                if (!this.f12100n) {
                    o1.m.a().postDelayed(new b(), 4000L);
                }
                int i22 = i2 + 3;
                if (bArr[i22] == 9) {
                    this.f12104r = false;
                } else {
                    this.f12104r = true;
                }
                qt.y0(141, (bArr[i2 + 7] >> 5) & 1);
                int i23 = (bArr[i2 + 2] >> 1) & 1;
                this.f12105s = i23;
                qt.y0(141, i23);
                if (bArr[i22] < 5 && bArr[i22] > 0) {
                    o1.u.x0();
                }
                if (bArr[i22] == 5 && this.f12100n) {
                    o1.x.C(nt.f8643f, 120, null, null, null);
                    qt.y0(113, bArr[i2 + 4] & 255);
                    qt.y0(115, bArr[i2 + 5] & 255);
                }
                if (bArr[i22] == 6 || bArr[i22] == 7) {
                    o1.x.C(nt.f8643f, 119, null, null, null);
                }
                if (bArr[i22] == 9) {
                    qt.y0(110, 14);
                }
                this.f12099m = bArr[i22];
                return;
            }
            if (b2 == 120) {
                qt.y0(107, bArr[i2 + 2]);
                qt.y0(108, bArr[i2 + 3]);
                qt.y0(109, bArr[i2 + 4]);
                return;
            }
            if (b2 == 121) {
                int i24 = i2 + 2;
                byte b4 = bArr[i24];
                this.f12101o = b4;
                if (b4 == 1) {
                    if (this.f12094h < 0) {
                        this.f12094h = y0.f.f18037c;
                    }
                    if (this.f12096j == 0) {
                        this.f12095i = y0.f.f18037c;
                    }
                    this.f12096j = 1;
                    y0.h.u0(this.f12094h);
                } else if (b4 == 2) {
                    if (this.f12095i < 0) {
                        this.f12095i = y0.f.f18037c;
                    }
                    if (this.f12096j == 1) {
                        this.f12094h = y0.f.f18037c;
                    }
                    this.f12096j = 0;
                    y0.h.u0(this.f12095i);
                } else if (b4 == 4) {
                    if (this.f12094h < 0) {
                        this.f12094h = y0.f.f18037c;
                    }
                    if (this.f12096j == 0) {
                        this.f12095i = y0.f.f18037c;
                    }
                    this.f12096j = 1;
                    y0.h.u0(this.f12094h);
                } else if (b4 == 5) {
                    if (this.f12095i < 0) {
                        this.f12095i = y0.f.f18037c;
                    }
                    if (this.f12096j == 1) {
                        this.f12094h = y0.f.f18037c;
                    }
                    this.f12096j = 0;
                    y0.h.u0(this.f12095i);
                }
                int i25 = this.f12101o;
                if (i25 == 5) {
                    y0.h.u0(-3);
                    o1.m.a().postDelayed(new c(), 3000L);
                } else {
                    qt.y0(110, i25);
                }
                e3(bArr[i24]);
                return;
            }
            switch (b2) {
                case 32:
                    int i26 = i2 + 3;
                    byte b5 = bArr[i26];
                    this.f12097k = b5;
                    int i27 = i2 + 2;
                    byte b6 = bArr[i27];
                    if (b6 == -16) {
                        if (nt.a()) {
                            l0.b0.s0(bArr[i26] & 255);
                        }
                        break;
                    } else if (b6 == -15) {
                        if (nt.a()) {
                            l0.b0.r0(bArr[i26] & 255);
                        }
                        break;
                    } else if (b6 != 3) {
                        if (b6 != 4) {
                            if (b6 == 82) {
                                if (nt.a()) {
                                    if (u0.b.D == 12) {
                                        z.k.s(227, 198, 2, 161, 9);
                                    } else if (this.f12097k != 0) {
                                        l0.b0.l0(3, 0);
                                    } else {
                                        l0.b0.l0(3, 1);
                                    }
                                }
                                break;
                            } else if (b6 == 83) {
                                if (nt.a()) {
                                    if (u0.b.D == 12) {
                                        if (this.f12097k == 0) {
                                            z.k.s(227, 198, 2, 161, 9);
                                        }
                                    } else if (this.f12097k != 0) {
                                        l0.b0.l0(4, 0);
                                    } else {
                                        l0.b0.l0(4, 1);
                                    }
                                }
                                break;
                            } else if (b6 == 86) {
                                if (u0.b.D == 11) {
                                    if (this.f12105s == 1) {
                                        f3(198, 178, 5, 0, 0);
                                    } else {
                                        f3(198, 178, 5, 1, 0);
                                    }
                                }
                                break;
                            } else if (b6 != 87) {
                                switch (b6) {
                                    case 14:
                                        if (b5 == 0) {
                                            int i28 = u0.b.D;
                                            if (i28 == 12) {
                                                f3(198, 161, 10, 0, 0);
                                            } else if (i28 != 11) {
                                                u0.d.L1();
                                            } else if (this.f12091e == 1) {
                                                f3(198, 177, this.f12088b + 1, 35, 1);
                                            } else {
                                                f3(198, 177, this.f12088b + 1, 32, 0);
                                            }
                                        }
                                        break;
                                    case 15:
                                        if (b5 == 0) {
                                            int i29 = u0.b.D;
                                            if (i29 == 12) {
                                                f3(198, 161, 11, 0, 0);
                                            } else if (i29 != 11) {
                                                u0.d.x1();
                                            } else if (this.f12091e == 1) {
                                                f3(198, 177, this.f12088b + 1, 35, 0);
                                            } else {
                                                f3(198, 177, this.f12088b + 1, 33, 0);
                                            }
                                        }
                                        break;
                                    case 16:
                                        if (b5 == 0) {
                                            int i30 = u0.b.D;
                                            if (i30 == 12) {
                                                f3(198, 161, 25, 0, 0);
                                            } else if (i30 == 11) {
                                                f3(198, 177, this.f12088b + 1, 35, 1);
                                            } else {
                                                u0.d.B1();
                                            }
                                        }
                                        break;
                                    case 17:
                                        if (b5 == 0) {
                                            int i31 = u0.b.D;
                                            if (i31 == 12) {
                                                f3(198, 161, 26, 0, 0);
                                            } else if (i31 == 11) {
                                                f3(198, 177, this.f12088b + 1, 35, 0);
                                            } else {
                                                u0.d.I1();
                                            }
                                        }
                                        break;
                                    case 18:
                                        if (b5 == 0) {
                                            int i32 = u0.b.D;
                                            if (i32 == 12) {
                                                f3(198, 161, 12, 0, 0);
                                            } else if (i32 == 11) {
                                                int i33 = this.f12089c;
                                                if (i33 == 10) {
                                                    f3(198, 177, this.f12088b + 1, 1, 0);
                                                } else {
                                                    f3(198, 177, this.f12088b + 1, 1 + i33, 0);
                                                }
                                            } else {
                                                u0.d.y1();
                                            }
                                        }
                                        break;
                                    default:
                                        switch (b6) {
                                            case 32:
                                            case 33:
                                            case 34:
                                            case 35:
                                            case 36:
                                            case 37:
                                            case 38:
                                            case 39:
                                            case 40:
                                            case 41:
                                                if (b5 == 0) {
                                                    if (this.f12108v < 5 && !this.f12109w) {
                                                        d3((bArr[i27] & 255) - 32);
                                                    }
                                                    this.f12108v = 0;
                                                    this.f12109w = false;
                                                    break;
                                                } else if (b5 == 2) {
                                                    this.f12108v++;
                                                    Log.d("focus", "count:" + this.f12108v);
                                                    if (this.f12108v >= 5 && !this.f12109w) {
                                                        this.f12109w = true;
                                                        f3(198, 161, (bArr[i27] & 255) + 16, 0, 0);
                                                        break;
                                                    }
                                                }
                                                break;
                                            case 42:
                                                int i34 = u0.b.D;
                                                if (i34 == 2) {
                                                    if (b5 == 0) {
                                                        h0.c.f2425b.h(13);
                                                    }
                                                } else if ((i34 == 12 || i34 == 13) && b5 == 0) {
                                                    f3(198, 161, 23, 0, 0);
                                                }
                                                break;
                                            case 43:
                                                int i35 = u0.b.D;
                                                if (i35 == 2) {
                                                    if (b5 == 0) {
                                                        h0.c.f2425b.h(14);
                                                    }
                                                } else if ((i35 == 12 || i35 == 13) && b5 == 0) {
                                                    f3(198, 161, 24, 0, 0);
                                                }
                                                break;
                                            default:
                                                switch (b6) {
                                                    case 52:
                                                        if (b5 == 0) {
                                                            o1.u.x0();
                                                        }
                                                        break;
                                                    case 53:
                                                        if (b5 == 0) {
                                                            o1.x.C(nt.f8643f, 120, null, null, null);
                                                        }
                                                        break;
                                                    case 54:
                                                        if (b5 == 0) {
                                                            o1.u.f("com.syu.canbus.sync");
                                                            f3(198, 161, 27, 0, 0);
                                                        }
                                                        break;
                                                    case 55:
                                                        if (b5 == 0) {
                                                            a.i.A();
                                                        }
                                                        break;
                                                    case 56:
                                                        if (b5 == 0) {
                                                            u0.d.t1();
                                                        }
                                                        break;
                                                    case 57:
                                                        if (b5 == 0) {
                                                            o1.u.f("com.syu.canbus.sync");
                                                            f3(198, 161, 3, 0, 0);
                                                        }
                                                        break;
                                                    default:
                                                        switch (b6) {
                                                            case 72:
                                                                if (nt.a()) {
                                                                    if (this.f12097k != 0) {
                                                                        l0.b0.l0(29, 0);
                                                                    } else {
                                                                        l0.b0.l0(29, 1);
                                                                    }
                                                                }
                                                                break;
                                                            case 73:
                                                                if (nt.a() && (bArr[i26] & 255) == 0) {
                                                                    int i36 = u0.b.D;
                                                                    if (i36 == 12 || i36 == 13) {
                                                                        z.k.s(227, 198, 2, 161, 25);
                                                                    } else {
                                                                        u0.d.B1();
                                                                    }
                                                                    break;
                                                                }
                                                                break;
                                                            case 74:
                                                                if (nt.a() && (bArr[i26] & 255) == 0) {
                                                                    int i37 = u0.b.D;
                                                                    if (i37 == 12 || i37 == 13) {
                                                                        z.k.s(227, 198, 2, 161, 25);
                                                                    } else {
                                                                        u0.d.I1();
                                                                    }
                                                                    break;
                                                                }
                                                                break;
                                                            case 75:
                                                                if (nt.a() && (bArr[i26] & 255) == 0) {
                                                                    int i38 = u0.b.D;
                                                                    if (i38 == 12 || i38 == 13) {
                                                                        z.k.s(227, 198, 2, 161, 10);
                                                                    } else {
                                                                        u0.d.B1();
                                                                    }
                                                                    break;
                                                                }
                                                                break;
                                                            case 76:
                                                                if (nt.a() && (bArr[i26] & 255) == 0) {
                                                                    int i39 = u0.b.D;
                                                                    if (i39 == 12 || i39 == 13) {
                                                                        z.k.s(227, 198, 2, 161, 11);
                                                                    } else {
                                                                        u0.d.x1();
                                                                    }
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                switch (b6) {
                                                                    case 92:
                                                                        if (b5 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                            f3(198, 161, 28, 0, 0);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 93:
                                                                        if (b5 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                            f3(198, 161, 29, 0, 0);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 94:
                                                                        if (b5 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                            f3(198, 161, 30, 0, 0);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 95:
                                                                        if (b5 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                            f3(198, 161, 31, 0, 0);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        if (nt.a()) {
                                                                            byte b7 = bArr[i27];
                                                                            byte b8 = bArr[i26];
                                                                            this.f12111y = b7 & 255;
                                                                            int i40 = 0;
                                                                            while (true) {
                                                                                iArr = this.f12112z;
                                                                                if (i40 < iArr.length) {
                                                                                    int i41 = this.f12111y;
                                                                                    if (i41 != iArr[i40][0]) {
                                                                                        i40++;
                                                                                    } else if (i41 != 0) {
                                                                                        this.f12110x = i40;
                                                                                    }
                                                                                }
                                                                            }
                                                                            if ((b8 & 255) != 0) {
                                                                                if (i40 < iArr.length) {
                                                                                    l0.b0.l0(iArr[i40][1], 0);
                                                                                }
                                                                            } else if (i40 <= iArr.length) {
                                                                                l0.b0.l0(iArr[this.f12110x][1], 1);
                                                                            }
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
                            } else if (b5 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                f3(198, 161, 6, 0, 0);
                                break;
                            }
                        } else if (b5 == 0) {
                            int i42 = u0.b.D;
                            if (i42 == 12) {
                                f3(198, 161, 8, 0, 0);
                            } else if (i42 == 11) {
                                if (this.f12090d < 4) {
                                    int i43 = this.f12089c;
                                    if (i43 == 1) {
                                        f3(198, 177, this.f12088b + 1, 10, 0);
                                    } else {
                                        f3(198, 177, this.f12088b + 1, i43 - 1, 0);
                                    }
                                }
                                this.f12090d = 0;
                            } else if (i42 == 2) {
                                h0.c.f2425b.h(0);
                            } else {
                                u0.d.L1();
                            }
                            break;
                        } else if (b5 == 1) {
                            this.f12090d = 0;
                            break;
                        } else if (b5 == 2) {
                            int i44 = this.f12090d + 1;
                            this.f12090d = i44;
                            if (u0.b.D == 11 && i44 == 4) {
                                f3(198, 177, this.f12088b + 1, 32, 0);
                                break;
                            }
                        }
                    } else if (b5 == 0) {
                        int i45 = u0.b.D;
                        if (i45 == 12) {
                            f3(198, 161, 9, 0, 0);
                        } else if (i45 == 2) {
                            h0.c.f2425b.h(1);
                        } else if (i45 == 11) {
                            if (this.f12090d < 4) {
                                int i46 = this.f12089c;
                                if (i46 == 10) {
                                    f3(198, 177, this.f12088b + 1, 1, 0);
                                } else {
                                    f3(198, 177, this.f12088b + 1, 1 + i46, 0);
                                }
                            }
                            this.f12090d = 0;
                        } else {
                            u0.d.x1();
                        }
                        break;
                    } else if (b5 == 1) {
                        this.f12090d = 0;
                        break;
                    } else if (b5 == 2) {
                        int i47 = this.f12090d + 1;
                        this.f12090d = i47;
                        if (u0.b.D == 11 && i47 == 4) {
                            Log.d("gdy", "radio  sendCmd   ******");
                            f3(198, 177, this.f12088b + 1, 33, 0);
                            break;
                        }
                    }
                    break;
                case 33:
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    int i48 = i2 + 4;
                    byte b11 = bArr[i48];
                    int i49 = i2 + 5;
                    byte b12 = bArr[i49];
                    byte b13 = bArr[i2 + 6];
                    int[] iArr2 = new int[1];
                    iArr2[0] = (b9 & 128) == 0 ? 0 : 1;
                    qt.y0(10, iArr2);
                    int[] iArr3 = new int[1];
                    iArr3[0] = (b9 & 64) == 0 ? 0 : 1;
                    qt.y0(11, iArr3);
                    int[] iArr4 = new int[1];
                    iArr4[0] = (b9 & 32) == 0 ? 0 : 1;
                    qt.y0(12, iArr4);
                    int[] iArr5 = new int[1];
                    iArr5[0] = (b9 & 8) == 0 ? 0 : 1;
                    qt.y0(13, iArr5);
                    int[] iArr6 = new int[1];
                    iArr6[0] = (b9 & 4) == 0 ? 0 : 1;
                    qt.y0(14, iArr6);
                    int[] iArr7 = new int[1];
                    iArr7[0] = (b9 & 2) == 0 ? 0 : 1;
                    qt.y0(15, iArr7);
                    int[] iArr8 = new int[1];
                    iArr8[0] = (b10 & 128) == 0 ? 0 : 1;
                    qt.y0(18, iArr8);
                    int[] iArr9 = new int[1];
                    iArr9[0] = (b10 & 64) == 0 ? 0 : 1;
                    qt.y0(19, iArr9);
                    int[] iArr10 = new int[1];
                    iArr10[0] = (b10 & 32) == 0 ? 0 : 1;
                    qt.y0(20, iArr10);
                    int i50 = 15 & b10;
                    if (i50 > 7) {
                        i50 = 7;
                    }
                    qt.y0(21, i50);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b11 = bArr[i49];
                        b12 = bArr[i48];
                    }
                    byte b14 = b12;
                    if (b11 == 0) {
                        qt.y0(27, 1048576);
                    } else if (b11 == 127) {
                        qt.y0(27, 1048577);
                    } else if (b11 >= 31 && b11 <= 59) {
                        if ((b13 & 64) != 0) {
                            qt.y0(27, ((b11 * 9) / 10) + 32);
                        } else {
                            qt.y0(27, b11 * 5);
                        }
                    }
                    if (b14 == 0) {
                        qt.y0(28, 1048576);
                    } else if (b14 == 127) {
                        qt.y0(28, 1048577);
                    } else if (b14 >= 31 && b14 <= 59) {
                        if ((b13 & 64) != 0) {
                            qt.y0(28, ((b14 * 9) / 10) + 32);
                        } else {
                            qt.y0(28, b14 * 5);
                        }
                    }
                    int[] iArr11 = new int[1];
                    iArr11[0] = (b13 & 4) == 0 ? 0 : 1;
                    qt.y0(53, iArr11);
                    int[] iArr12 = new int[1];
                    iArr12[0] = (b13 & 64) == 0 ? 0 : 1;
                    qt.y0(37, iArr12);
                    if (nt.a()) {
                        int i51 = bArr[i2 + 7];
                        int i52 = i51 & 255;
                        u0.d.A3((i52 != 128 ? i51 & 128 : 0) != 0 ? 1000 - ((((~i52) + 1) & 255) * 10) : (i52 * 10) + 1000);
                    }
                    break;
                case 34:
                    if (nt.a()) {
                        u0.d.R2(l0.c0.R0(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.R0(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.R0(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.R0(bArr[i2 + 5] & 255));
                    }
                    break;
                case 35:
                    if (nt.a()) {
                        u0.d.D2(l0.c0.R0(bArr[i2 + 2] & 255));
                        u0.d.E2(l0.c0.R0(bArr[i2 + 3] & 255));
                        u0.d.F2(l0.c0.R0(bArr[i2 + 4] & 255));
                        u0.d.G2(l0.c0.R0(bArr[i2 + 5] & 255));
                    }
                    break;
                case 36:
                    byte b15 = bArr[i2 + 4];
                    byte b16 = bArr[i2 + 5];
                    byte b17 = bArr[i2 + 7];
                    qt.y0(125, (b15 >> 7) & 1);
                    qt.y0(126, (b15 >> 4) & 7);
                    qt.y0(123, (b15 >> 3) & 1);
                    qt.y0(122, (b15 >> 2) & 1);
                    qt.y0(127, (b15 >> 1) & 1);
                    qt.y0(121, (b15 >> 0) & 1);
                    qt.y0(124, (b16 >> 7) & 1);
                    o1.x.B(nt.f8643f, 129, new int[]{(b16 >> 6) & 1});
                    qt.y0(130, (b17 >> 0) & 1);
                    qt.y0(128, (b17 >> 1) & 1);
                    break;
                default:
                    switch (b2) {
                        case 80:
                            this.f12098l = bArr[i2 + 5];
                            int[] iArr13 = new int[6];
                            for (int i53 = 0; i53 < 6; i53++) {
                                iArr13[i53] = bArr[i2 + 2 + i53];
                            }
                            o1.x.B(nt.f8643f, 105, iArr13);
                            break;
                        case 81:
                            int i54 = i2 + 2;
                            int i55 = i2 + 4;
                            o1.x.B(nt.f8643f, 99, new int[]{bArr[i54] & 255, bArr[i55] & 255, bArr[i2 + 5] & 255});
                            try {
                                StringBuilder sb4 = new StringBuilder();
                                int i56 = (i2 + i3) - 1;
                                for (int i57 = i2 + 6; i57 < i56; i57 += 2) {
                                    sb4.append((char) ((bArr[i57 + 1] & 255) | (bArr[i57] << 8)));
                                }
                                qt.z0(100, new int[]{bArr[i54] & 255, bArr[i2 + 3] & 255, bArr[i55] & 255}, sb4.toString());
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                            break;
                        case 82:
                            qt.y0(101, ((((bArr[i2 + 2] & 255) * 60) + bArr[i2 + 3]) * 60) + bArr[i2 + 4]);
                            break;
                        case 83:
                            qt.y0(106, (bArr[i2 + 3] * DhcpPacket.DHCP_VENDOR_CLASS_ID) + bArr[i2 + 4]);
                            break;
                    }
                    break;
            }
            return;
        }
        byte b18 = bArr[i2 + 2];
        int i58 = (b18 >> 1) & 1;
        int[][] iArr14 = this.E;
        if (iArr14[0][1] != i58) {
            iArr14[0][1] = i58;
            o1.x[] xVarArr2 = nt.f8643f;
            int[] iArr15 = new int[2];
            iArr15[0] = 0;
            iArr15[1] = i58 == 0 ? -1 : 1;
            o1.x.B(xVarArr2, 111, iArr15);
        }
        int i59 = (b18 >> 2) & 1;
        int[][] iArr16 = this.E;
        if (iArr16[0][2] != i59) {
            iArr16[0][2] = i59;
            o1.x[] xVarArr3 = nt.f8643f;
            int[] iArr17 = new int[2];
            iArr17[0] = 0;
            iArr17[1] = i59 == 0 ? -1 : 2;
            o1.x.B(xVarArr3, 111, iArr17);
        }
        int i60 = (b18 >> 3) & 1;
        int[][] iArr18 = this.E;
        if (iArr18[0][3] != i60) {
            iArr18[0][3] = i60;
            o1.x[] xVarArr4 = nt.f8643f;
            int[] iArr19 = new int[2];
            iArr19[0] = 0;
            iArr19[1] = i60 == 0 ? -1 : 3;
            o1.x.B(xVarArr4, 111, iArr19);
        }
        int i61 = (b18 >> 4) & 1;
        int[][] iArr20 = this.E;
        if (iArr20[0][4] != i61) {
            iArr20[0][4] = i61;
            o1.x[] xVarArr5 = nt.f8643f;
            int[] iArr21 = new int[2];
            iArr21[0] = 0;
            iArr21[1] = i61 == 0 ? -1 : 4;
            o1.x.B(xVarArr5, 111, iArr21);
        }
        int i62 = (b18 >> 5) & 1;
        int[][] iArr22 = this.E;
        if (iArr22[0][5] != i62) {
            iArr22[0][5] = i62;
            o1.x[] xVarArr6 = nt.f8643f;
            int[] iArr23 = new int[2];
            iArr23[0] = 0;
            iArr23[1] = i62 == 0 ? -1 : 5;
            o1.x.B(xVarArr6, 111, iArr23);
        }
        int i63 = (b18 >> 6) & 1;
        int[][] iArr24 = this.E;
        if (iArr24[0][6] != i63) {
            iArr24[0][6] = i63;
            o1.x[] xVarArr7 = nt.f8643f;
            int[] iArr25 = new int[2];
            iArr25[0] = 0;
            iArr25[1] = i63 == 0 ? -1 : 6;
            o1.x.B(xVarArr7, 111, iArr25);
        }
        int i64 = (b18 >> 7) & 1;
        int[][] iArr26 = this.E;
        if (iArr26[0][7] != i64) {
            iArr26[0][7] = i64;
            o1.x[] xVarArr8 = nt.f8643f;
            int[] iArr27 = new int[2];
            iArr27[0] = 0;
            iArr27[1] = i64 == 0 ? -1 : 7;
            o1.x.B(xVarArr8, 111, iArr27);
        }
        byte b19 = bArr[i2 + 3];
        int i65 = b19 & 1;
        int[][] iArr28 = this.E;
        if (iArr28[1][0] != i65) {
            iArr28[1][0] = i65;
            o1.x[] xVarArr9 = nt.f8643f;
            int[] iArr29 = new int[2];
            iArr29[0] = 1;
            iArr29[1] = i65 == 0 ? -1 : 0;
            o1.x.B(xVarArr9, 111, iArr29);
        }
        int i66 = (b19 >> 1) & 1;
        int[][] iArr30 = this.E;
        if (iArr30[1][1] != i66) {
            iArr30[1][1] = i66;
            o1.x[] xVarArr10 = nt.f8643f;
            int[] iArr31 = new int[2];
            iArr31[0] = 1;
            iArr31[1] = i66 == 0 ? -1 : 1;
            o1.x.B(xVarArr10, 111, iArr31);
        }
        int i67 = (b19 >> 2) & 1;
        int[][] iArr32 = this.E;
        if (iArr32[1][2] != i67) {
            iArr32[1][2] = i67;
            o1.x[] xVarArr11 = nt.f8643f;
            int[] iArr33 = new int[2];
            iArr33[0] = 1;
            iArr33[1] = i67 == 0 ? -1 : 2;
            o1.x.B(xVarArr11, 111, iArr33);
        }
        int i68 = (b19 >> 3) & 1;
        int[][] iArr34 = this.E;
        if (iArr34[1][3] != i68) {
            iArr34[1][3] = i68;
            o1.x[] xVarArr12 = nt.f8643f;
            int[] iArr35 = new int[2];
            iArr35[0] = 1;
            iArr35[1] = i68 == 0 ? -1 : 3;
            o1.x.B(xVarArr12, 111, iArr35);
        }
        int i69 = (b19 >> 4) & 1;
        int[][] iArr36 = this.E;
        if (iArr36[1][4] != i69) {
            iArr36[1][4] = i69;
            o1.x[] xVarArr13 = nt.f8643f;
            int[] iArr37 = new int[2];
            iArr37[0] = 1;
            iArr37[1] = i69 == 0 ? -1 : 4;
            o1.x.B(xVarArr13, 111, iArr37);
        }
        int i70 = (b19 >> 5) & 1;
        int[][] iArr38 = this.E;
        if (iArr38[1][5] != i70) {
            iArr38[1][5] = i70;
            o1.x[] xVarArr14 = nt.f8643f;
            int[] iArr39 = new int[2];
            iArr39[0] = 1;
            iArr39[1] = i70 == 0 ? -1 : 5;
            o1.x.B(xVarArr14, 111, iArr39);
        }
        int i71 = (b19 >> 6) & 1;
        int[][] iArr40 = this.E;
        if (iArr40[1][6] != i71) {
            iArr40[1][6] = i71;
            o1.x[] xVarArr15 = nt.f8643f;
            int[] iArr41 = new int[2];
            iArr41[0] = 1;
            iArr41[1] = i71 == 0 ? -1 : 6;
            o1.x.B(xVarArr15, 111, iArr41);
        }
        byte b20 = bArr[i2 + 4];
        int i72 = b20 & 1;
        int[][] iArr42 = this.E;
        if (iArr42[2][0] != i72) {
            iArr42[2][0] = i72;
            o1.x[] xVarArr16 = nt.f8643f;
            int[] iArr43 = new int[2];
            iArr43[0] = 2;
            iArr43[1] = i72 == 0 ? -1 : 0;
            o1.x.B(xVarArr16, 111, iArr43);
        }
        int i73 = (b20 >> 1) & 1;
        int[][] iArr44 = this.E;
        if (iArr44[2][1] != i73) {
            iArr44[2][1] = i73;
            o1.x[] xVarArr17 = nt.f8643f;
            int[] iArr45 = new int[2];
            iArr45[0] = 2;
            iArr45[1] = i73 == 0 ? -1 : 1;
            o1.x.B(xVarArr17, 111, iArr45);
        }
        int i74 = (b20 >> 2) & 1;
        int[][] iArr46 = this.E;
        if (iArr46[2][2] != i74) {
            iArr46[2][2] = i74;
            o1.x[] xVarArr18 = nt.f8643f;
            int[] iArr47 = new int[2];
            iArr47[0] = 2;
            iArr47[1] = i74 == 0 ? -1 : 2;
            o1.x.B(xVarArr18, 111, iArr47);
        }
        int i75 = (b20 >> 3) & 1;
        int[][] iArr48 = this.E;
        if (iArr48[2][3] != i75) {
            iArr48[2][3] = i75;
            o1.x[] xVarArr19 = nt.f8643f;
            int[] iArr49 = new int[2];
            iArr49[0] = 2;
            iArr49[1] = i75 == 0 ? -1 : 3;
            o1.x.B(xVarArr19, 111, iArr49);
        }
        int i76 = (b20 >> 4) & 1;
        int[][] iArr50 = this.E;
        if (iArr50[2][4] != i76) {
            iArr50[2][4] = i76;
            o1.x[] xVarArr20 = nt.f8643f;
            int[] iArr51 = new int[2];
            iArr51[0] = 2;
            iArr51[1] = i76 == 0 ? -1 : 4;
            o1.x.B(xVarArr20, 111, iArr51);
        }
        int i77 = (b20 >> 5) & 1;
        int[][] iArr52 = this.E;
        if (iArr52[2][5] != i77) {
            iArr52[2][5] = i77;
            o1.x[] xVarArr21 = nt.f8643f;
            int[] iArr53 = new int[2];
            iArr53[0] = 2;
            iArr53[1] = i77 == 0 ? -1 : 5;
            o1.x.B(xVarArr21, 111, iArr53);
        }
        int i78 = (b20 >> 7) & 1;
        int[][] iArr54 = this.E;
        if (iArr54[2][7] != i78) {
            iArr54[2][7] = i78;
            o1.x[] xVarArr22 = nt.f8643f;
            int[] iArr55 = new int[2];
            iArr55[0] = 2;
            iArr55[1] = i78 == 0 ? -1 : 7;
            o1.x.B(xVarArr22, 111, iArr55);
        }
        byte b21 = bArr[i2 + 5];
        int i79 = b21 & 1;
        int[][] iArr56 = this.E;
        if (iArr56[3][0] != i79) {
            iArr56[3][0] = i79;
            o1.x[] xVarArr23 = nt.f8643f;
            int[] iArr57 = new int[2];
            iArr57[0] = 3;
            iArr57[1] = i79 == 0 ? -1 : 0;
            o1.x.B(xVarArr23, 111, iArr57);
        }
        int i80 = (b21 >> 1) & 1;
        int[][] iArr58 = this.E;
        if (iArr58[3][1] != i80) {
            iArr58[3][1] = i80;
            o1.x[] xVarArr24 = nt.f8643f;
            int[] iArr59 = new int[2];
            iArr59[0] = 3;
            iArr59[1] = i80 == 0 ? -1 : 1;
            o1.x.B(xVarArr24, 111, iArr59);
        }
        int i81 = (b21 >> 2) & 1;
        int[][] iArr60 = this.E;
        if (iArr60[3][2] != i81) {
            iArr60[3][2] = i81;
            o1.x[] xVarArr25 = nt.f8643f;
            int[] iArr61 = new int[2];
            iArr61[0] = 3;
            iArr61[1] = i81 == 0 ? -1 : 2;
            o1.x.B(xVarArr25, 111, iArr61);
        }
        int i82 = (b21 >> 3) & 1;
        int[][] iArr62 = this.E;
        if (iArr62[3][3] != i82) {
            iArr62[3][3] = i82;
            o1.x[] xVarArr26 = nt.f8643f;
            int[] iArr63 = new int[2];
            iArr63[0] = 3;
            iArr63[1] = i82 == 0 ? -1 : 3;
            o1.x.B(xVarArr26, 111, iArr63);
        }
        int i83 = (b21 >> 4) & 1;
        int[][] iArr64 = this.E;
        if (iArr64[3][4] != i83) {
            iArr64[3][4] = i83;
            o1.x[] xVarArr27 = nt.f8643f;
            int[] iArr65 = new int[2];
            iArr65[0] = 3;
            iArr65[1] = i83 == 0 ? -1 : 4;
            o1.x.B(xVarArr27, 111, iArr65);
        }
        int i84 = (b21 >> 5) & 1;
        int[][] iArr66 = this.E;
        if (iArr66[3][5] != i84) {
            iArr66[3][5] = i84;
            o1.x[] xVarArr28 = nt.f8643f;
            int[] iArr67 = new int[2];
            iArr67[0] = 3;
            iArr67[1] = i84 == 0 ? -1 : 5;
            o1.x.B(xVarArr28, 111, iArr67);
        }
        int i85 = (b21 >> 6) & 1;
        int[][] iArr68 = this.E;
        if (iArr68[3][6] != i85) {
            iArr68[3][6] = i85;
            o1.x[] xVarArr29 = nt.f8643f;
            int[] iArr69 = new int[2];
            iArr69[0] = 3;
            iArr69[1] = i85 == 0 ? -1 : 6;
            o1.x.B(xVarArr29, 111, iArr69);
        }
        int i86 = (b21 >> 7) & 1;
        int[][] iArr70 = this.E;
        if (iArr70[3][7] != i86) {
            iArr70[3][7] = i86;
            o1.x[] xVarArr30 = nt.f8643f;
            int[] iArr71 = new int[2];
            iArr71[0] = 3;
            iArr71[1] = i86 == 0 ? -1 : 7;
            o1.x.B(xVarArr30, 111, iArr71);
        }
        byte b22 = bArr[i2 + 6];
        int i87 = b22 & 1;
        int[][] iArr72 = this.E;
        if (iArr72[4][0] != i87) {
            iArr72[4][0] = i87;
            o1.x[] xVarArr31 = nt.f8643f;
            int[] iArr73 = new int[2];
            iArr73[0] = 4;
            iArr73[1] = i87 == 0 ? -1 : 0;
            o1.x.B(xVarArr31, 111, iArr73);
        }
        int i88 = (b22 >> 1) & 1;
        int[][] iArr74 = this.E;
        if (iArr74[4][1] != i88) {
            iArr74[4][1] = i88;
            o1.x[] xVarArr32 = nt.f8643f;
            int[] iArr75 = new int[2];
            iArr75[0] = 4;
            iArr75[1] = i88 == 0 ? -1 : 1;
            o1.x.B(xVarArr32, 111, iArr75);
        }
        int i89 = (b22 >> 2) & 1;
        int[][] iArr76 = this.E;
        if (iArr76[4][2] != i89) {
            iArr76[4][2] = i89;
            o1.x[] xVarArr33 = nt.f8643f;
            int[] iArr77 = new int[2];
            iArr77[0] = 4;
            iArr77[1] = i89 == 0 ? -1 : 2;
            o1.x.B(xVarArr33, 111, iArr77);
        }
        int i90 = (b22 >> 3) & 1;
        int[][] iArr78 = this.E;
        if (iArr78[4][3] != i90) {
            iArr78[4][3] = i90;
            o1.x[] xVarArr34 = nt.f8643f;
            int[] iArr79 = new int[2];
            iArr79[0] = 4;
            iArr79[1] = i90 == 0 ? -1 : 3;
            o1.x.B(xVarArr34, 111, iArr79);
        }
        int i91 = (b22 >> 4) & 1;
        int[][] iArr80 = this.E;
        if (iArr80[4][4] != i91) {
            iArr80[4][4] = i91;
            o1.x[] xVarArr35 = nt.f8643f;
            int[] iArr81 = new int[2];
            iArr81[0] = 4;
            iArr81[1] = i91 == 0 ? -1 : 4;
            o1.x.B(xVarArr35, 111, iArr81);
        }
        int i92 = (b22 >> 5) & 1;
        int[][] iArr82 = this.E;
        if (iArr82[4][5] != i92) {
            iArr82[4][5] = i92;
            o1.x[] xVarArr36 = nt.f8643f;
            int[] iArr83 = new int[2];
            iArr83[0] = 4;
            iArr83[1] = i92 == 0 ? -1 : 5;
            o1.x.B(xVarArr36, 111, iArr83);
        }
        int i93 = (b22 >> 6) & 1;
        int[][] iArr84 = this.E;
        if (iArr84[4][6] != i93) {
            iArr84[4][6] = i93;
            o1.x[] xVarArr37 = nt.f8643f;
            int[] iArr85 = new int[2];
            iArr85[0] = 4;
            iArr85[1] = i93 == 0 ? -1 : 6;
            o1.x.B(xVarArr37, 111, iArr85);
        }
        int i94 = (b22 >> 7) & 1;
        int[][] iArr86 = this.E;
        if (iArr86[4][7] != i94) {
            iArr86[4][7] = i94;
            o1.x[] xVarArr38 = nt.f8643f;
            int[] iArr87 = new int[2];
            iArr87[0] = 4;
            iArr87[1] = i94 == 0 ? -1 : 7;
            o1.x.B(xVarArr38, 111, iArr87);
        }
        byte b23 = bArr[i2 + 7];
        int i95 = b23 & 1;
        int[][] iArr88 = this.E;
        if (iArr88[5][0] != i95) {
            iArr88[5][0] = i95;
            o1.x[] xVarArr39 = nt.f8643f;
            int[] iArr89 = new int[2];
            iArr89[0] = 5;
            iArr89[1] = i95 == 0 ? -1 : 0;
            o1.x.B(xVarArr39, 111, iArr89);
        }
        int i96 = (b23 >> 1) & 1;
        int[][] iArr90 = this.E;
        if (iArr90[5][1] != i96) {
            iArr90[5][1] = i96;
            o1.x[] xVarArr40 = nt.f8643f;
            int[] iArr91 = new int[2];
            iArr91[0] = 5;
            iArr91[1] = i96 == 0 ? -1 : 1;
            o1.x.B(xVarArr40, 111, iArr91);
        }
        int i97 = (b23 >> 2) & 1;
        int[][] iArr92 = this.E;
        if (iArr92[5][2] != i97) {
            iArr92[5][2] = i97;
            o1.x[] xVarArr41 = nt.f8643f;
            int[] iArr93 = new int[2];
            iArr93[0] = 5;
            iArr93[1] = i97 == 0 ? -1 : 2;
            o1.x.B(xVarArr41, 111, iArr93);
        }
        int i98 = (b23 >> 3) & 1;
        int[][] iArr94 = this.E;
        if (iArr94[5][3] != i98) {
            iArr94[5][3] = i98;
            o1.x[] xVarArr42 = nt.f8643f;
            int[] iArr95 = new int[2];
            iArr95[0] = 5;
            iArr95[1] = i98 == 0 ? -1 : 3;
            o1.x.B(xVarArr42, 111, iArr95);
        }
        int i99 = (b23 >> 4) & 1;
        int[][] iArr96 = this.E;
        if (iArr96[5][4] != i99) {
            iArr96[5][4] = i99;
            o1.x[] xVarArr43 = nt.f8643f;
            int[] iArr97 = new int[2];
            iArr97[0] = 5;
            iArr97[1] = i99 == 0 ? -1 : 4;
            o1.x.B(xVarArr43, 111, iArr97);
        }
        int i100 = (b23 >> 5) & 1;
        int[][] iArr98 = this.E;
        if (iArr98[5][5] != i100) {
            iArr98[5][5] = i100;
            o1.x[] xVarArr44 = nt.f8643f;
            int[] iArr99 = new int[2];
            iArr99[0] = 5;
            iArr99[1] = i100 == 0 ? -1 : 5;
            o1.x.B(xVarArr44, 111, iArr99);
        }
        int i101 = (b23 >> 6) & 1;
        int[][] iArr100 = this.E;
        if (iArr100[5][6] != i101) {
            iArr100[5][6] = i101;
            o1.x[] xVarArr45 = nt.f8643f;
            int[] iArr101 = new int[2];
            iArr101[0] = 5;
            iArr101[1] = i101 == 0 ? -1 : 6;
            o1.x.B(xVarArr45, 111, iArr101);
        }
        int i102 = (b23 >> 7) & 1;
        int[][] iArr102 = this.E;
        if (iArr102[5][7] != i102) {
            iArr102[5][7] = i102;
            o1.x[] xVarArr46 = nt.f8643f;
            int[] iArr103 = new int[2];
            iArr103[0] = 5;
            iArr103[1] = i102 == 0 ? -1 : 7;
            o1.x.B(xVarArr46, 111, iArr103);
        }
        byte b24 = bArr[i2 + 8];
        int i103 = b24 & 1;
        int[][] iArr104 = this.E;
        if (iArr104[6][0] != i103) {
            iArr104[6][0] = i103;
            o1.x[] xVarArr47 = nt.f8643f;
            int[] iArr105 = new int[2];
            iArr105[0] = 6;
            iArr105[1] = i103 == 0 ? -1 : 0;
            o1.x.B(xVarArr47, 111, iArr105);
        }
        int i104 = (b24 >> 1) & 1;
        int[][] iArr106 = this.E;
        if (iArr106[6][1] != i104) {
            iArr106[6][1] = i104;
            o1.x[] xVarArr48 = nt.f8643f;
            int[] iArr107 = new int[2];
            iArr107[0] = 6;
            iArr107[1] = i104 == 0 ? -1 : 1;
            o1.x.B(xVarArr48, 111, iArr107);
        }
        int i105 = (b24 >> 2) & 1;
        int[][] iArr108 = this.E;
        if (iArr108[6][2] != i105) {
            iArr108[6][2] = i105;
            o1.x[] xVarArr49 = nt.f8643f;
            int[] iArr109 = new int[2];
            iArr109[0] = 6;
            iArr109[1] = i105 == 0 ? -1 : 2;
            o1.x.B(xVarArr49, 111, iArr109);
        }
        int i106 = (b24 >> 3) & 1;
        int[][] iArr110 = this.E;
        if (iArr110[6][3] != i106) {
            iArr110[6][3] = i106;
            o1.x[] xVarArr50 = nt.f8643f;
            int[] iArr111 = new int[2];
            iArr111[0] = 6;
            iArr111[1] = i106 == 0 ? -1 : 3;
            o1.x.B(xVarArr50, 111, iArr111);
        }
        int i107 = (b24 >> 4) & 1;
        int[][] iArr112 = this.E;
        if (iArr112[6][4] != i107) {
            iArr112[6][4] = i107;
            o1.x[] xVarArr51 = nt.f8643f;
            int[] iArr113 = new int[2];
            iArr113[0] = 6;
            iArr113[1] = i107 == 0 ? -1 : 4;
            o1.x.B(xVarArr51, 111, iArr113);
        }
        int i108 = (b24 >> 5) & 1;
        int[][] iArr114 = this.E;
        if (iArr114[6][5] != i108) {
            iArr114[6][5] = i108;
            o1.x[] xVarArr52 = nt.f8643f;
            int[] iArr115 = new int[2];
            iArr115[0] = 6;
            iArr115[1] = i108 == 0 ? -1 : 5;
            o1.x.B(xVarArr52, 111, iArr115);
        }
        int i109 = (b24 >> 6) & 1;
        int[][] iArr116 = this.E;
        if (iArr116[6][6] != i109) {
            iArr116[6][6] = i109;
            o1.x[] xVarArr53 = nt.f8643f;
            int[] iArr117 = new int[2];
            iArr117[0] = 6;
            iArr117[1] = i109 == 0 ? -1 : 6;
            o1.x.B(xVarArr53, 111, iArr117);
        }
        int i110 = (b24 >> 7) & 1;
        int[][] iArr118 = this.E;
        if (iArr118[6][7] != i110) {
            iArr118[6][7] = i110;
            o1.x[] xVarArr54 = nt.f8643f;
            int[] iArr119 = new int[2];
            iArr119[0] = 6;
            iArr119[1] = i110 == 0 ? -1 : 7;
            o1.x.B(xVarArr54, 111, iArr119);
        }
        byte b25 = bArr[i2 + 9];
        int i111 = b25 & 1;
        int[][] iArr120 = this.E;
        if (iArr120[7][0] != i111) {
            iArr120[7][0] = i111;
            o1.x[] xVarArr55 = nt.f8643f;
            int[] iArr121 = new int[2];
            iArr121[0] = 7;
            iArr121[1] = i111 == 0 ? -1 : 0;
            o1.x.B(xVarArr55, 111, iArr121);
        }
        int i112 = (b25 >> 1) & 1;
        int[][] iArr122 = this.E;
        if (iArr122[7][1] != i112) {
            iArr122[7][1] = i112;
            o1.x[] xVarArr56 = nt.f8643f;
            int[] iArr123 = new int[2];
            iArr123[0] = 7;
            iArr123[1] = i112 == 0 ? -1 : 1;
            o1.x.B(xVarArr56, 111, iArr123);
        }
        int i113 = (b25 >> 2) & 1;
        int[][] iArr124 = this.E;
        if (iArr124[7][2] != i113) {
            iArr124[7][2] = i113;
            o1.x[] xVarArr57 = nt.f8643f;
            int[] iArr125 = new int[2];
            iArr125[0] = 7;
            iArr125[1] = i113 == 0 ? -1 : 2;
            o1.x.B(xVarArr57, 111, iArr125);
        }
        int i114 = (b25 >> 3) & 1;
        int[][] iArr126 = this.E;
        if (iArr126[7][3] != i114) {
            iArr126[7][3] = i114;
            o1.x[] xVarArr58 = nt.f8643f;
            int[] iArr127 = new int[2];
            iArr127[0] = 7;
            iArr127[1] = i114 == 0 ? -1 : 3;
            o1.x.B(xVarArr58, 111, iArr127);
        }
        int i115 = (b25 >> 4) & 1;
        int[][] iArr128 = this.E;
        if (iArr128[7][4] != i115) {
            iArr128[7][4] = i115;
            o1.x[] xVarArr59 = nt.f8643f;
            int[] iArr129 = new int[2];
            iArr129[0] = 7;
            iArr129[1] = i115 == 0 ? -1 : 4;
            o1.x.B(xVarArr59, 111, iArr129);
        }
        int i116 = (b25 >> 5) & 1;
        int[][] iArr130 = this.E;
        if (iArr130[7][5] != i116) {
            iArr130[7][5] = i116;
            o1.x[] xVarArr60 = nt.f8643f;
            int[] iArr131 = new int[2];
            iArr131[0] = 7;
            iArr131[1] = i116 == 0 ? -1 : 5;
            o1.x.B(xVarArr60, 111, iArr131);
        }
        int i117 = (b25 >> 6) & 1;
        int[][] iArr132 = this.E;
        if (iArr132[7][6] != i117) {
            iArr132[7][6] = i117;
            o1.x[] xVarArr61 = nt.f8643f;
            int[] iArr133 = new int[2];
            iArr133[0] = 7;
            iArr133[1] = i117 == 0 ? -1 : 6;
            o1.x.B(xVarArr61, 111, iArr133);
        }
        int i118 = (b25 >> 7) & 1;
        int[][] iArr134 = this.E;
        if (iArr134[7][7] != i118) {
            iArr134[7][7] = i118;
            o1.x[] xVarArr62 = nt.f8643f;
            int[] iArr135 = new int[2];
            iArr135[0] = 7;
            iArr135[1] = i118 == 0 ? -1 : 7;
            o1.x.B(xVarArr62, 111, iArr135);
        }
        byte b26 = bArr[i2 + 10];
        int i119 = b26 & 1;
        int[][] iArr136 = this.E;
        if (iArr136[8][0] != i119) {
            iArr136[8][0] = i119;
            o1.x[] xVarArr63 = nt.f8643f;
            int[] iArr137 = new int[2];
            iArr137[0] = 8;
            iArr137[1] = i119 == 0 ? -1 : 0;
            o1.x.B(xVarArr63, 111, iArr137);
        }
        int i120 = (b26 >> 1) & 1;
        int[][] iArr138 = this.E;
        if (iArr138[8][1] != i120) {
            iArr138[8][1] = i120;
            o1.x[] xVarArr64 = nt.f8643f;
            int[] iArr139 = new int[2];
            iArr139[0] = 8;
            iArr139[1] = i120 == 0 ? -1 : 1;
            o1.x.B(xVarArr64, 111, iArr139);
        }
        int i121 = (b26 >> 2) & 1;
        int[][] iArr140 = this.E;
        if (iArr140[8][2] != i121) {
            iArr140[8][2] = i121;
            o1.x[] xVarArr65 = nt.f8643f;
            int[] iArr141 = new int[2];
            iArr141[0] = 8;
            iArr141[1] = i121 == 0 ? -1 : 2;
            o1.x.B(xVarArr65, 111, iArr141);
        }
        int i122 = (b26 >> 3) & 1;
        int[][] iArr142 = this.E;
        if (iArr142[8][3] != i122) {
            iArr142[8][3] = i122;
            o1.x[] xVarArr66 = nt.f8643f;
            int[] iArr143 = new int[2];
            iArr143[0] = 8;
            iArr143[1] = i122 == 0 ? -1 : 3;
            o1.x.B(xVarArr66, 111, iArr143);
        }
        int i123 = (b26 >> 4) & 1;
        int[][] iArr144 = this.E;
        if (iArr144[8][4] != i123) {
            iArr144[8][4] = i123;
            o1.x[] xVarArr67 = nt.f8643f;
            int[] iArr145 = new int[2];
            iArr145[0] = 8;
            iArr145[1] = i123 == 0 ? -1 : 4;
            o1.x.B(xVarArr67, 111, iArr145);
        }
        int i124 = (b26 >> 5) & 1;
        int[][] iArr146 = this.E;
        if (iArr146[8][5] != i124) {
            iArr146[8][5] = i124;
            o1.x[] xVarArr68 = nt.f8643f;
            int[] iArr147 = new int[2];
            iArr147[0] = 8;
            iArr147[1] = i124 == 0 ? -1 : 5;
            o1.x.B(xVarArr68, 111, iArr147);
        }
        int i125 = (b26 >> 6) & 1;
        int[][] iArr148 = this.E;
        if (iArr148[8][6] != i125) {
            iArr148[8][6] = i125;
            o1.x[] xVarArr69 = nt.f8643f;
            int[] iArr149 = new int[2];
            iArr149[0] = 8;
            iArr149[1] = i125 == 0 ? -1 : 6;
            o1.x.B(xVarArr69, 111, iArr149);
        }
        int i126 = (b26 >> 7) & 1;
        int[][] iArr150 = this.E;
        if (iArr150[8][7] != i126) {
            iArr150[8][7] = i126;
            o1.x[] xVarArr70 = nt.f8643f;
            int[] iArr151 = new int[2];
            iArr151[0] = 8;
            iArr151[1] = i126 == 0 ? -1 : 7;
            o1.x.B(xVarArr70, 111, iArr151);
        }
        byte b27 = bArr[i2 + 11];
        int i127 = b27 & 1;
        int[][] iArr152 = this.E;
        if (iArr152[9][0] != i127) {
            iArr152[9][0] = i127;
            o1.x[] xVarArr71 = nt.f8643f;
            int[] iArr153 = new int[2];
            iArr153[0] = 9;
            iArr153[1] = i127 == 0 ? -1 : 0;
            o1.x.B(xVarArr71, 111, iArr153);
        }
        int i128 = (b27 >> 1) & 1;
        int[][] iArr154 = this.E;
        if (iArr154[9][1] != i128) {
            iArr154[9][1] = i128;
            o1.x[] xVarArr72 = nt.f8643f;
            int[] iArr155 = new int[2];
            iArr155[0] = 9;
            iArr155[1] = i128 == 0 ? -1 : 1;
            o1.x.B(xVarArr72, 111, iArr155);
        }
        int i129 = (b27 >> 2) & 1;
        int[][] iArr156 = this.E;
        if (iArr156[9][2] != i129) {
            iArr156[9][2] = i129;
            o1.x[] xVarArr73 = nt.f8643f;
            int[] iArr157 = new int[2];
            iArr157[0] = 9;
            iArr157[1] = i129 == 0 ? -1 : 2;
            o1.x.B(xVarArr73, 111, iArr157);
        }
        int i130 = (b27 >> 3) & 1;
        int[][] iArr158 = this.E;
        if (iArr158[9][3] != i130) {
            iArr158[9][3] = i130;
            o1.x[] xVarArr74 = nt.f8643f;
            int[] iArr159 = new int[2];
            iArr159[0] = 9;
            iArr159[1] = i130 == 0 ? -1 : 3;
            o1.x.B(xVarArr74, 111, iArr159);
        }
        int i131 = bArr[i2 + 12] & 1;
        int[][] iArr160 = this.E;
        if (iArr160[10][0] != i131) {
            iArr160[10][0] = i131;
            o1.x[] xVarArr75 = nt.f8643f;
            int[] iArr161 = new int[2];
            iArr161[0] = 10;
            iArr161[1] = i131 == 0 ? -1 : 0;
            o1.x.B(xVarArr75, 111, iArr161);
        }
        byte b28 = bArr[i2 + 13];
        int i132 = b28 & 1;
        int[][] iArr162 = this.E;
        if (iArr162[11][0] != i132) {
            iArr162[11][0] = i132;
            o1.x[] xVarArr76 = nt.f8643f;
            int[] iArr163 = new int[2];
            iArr163[0] = 11;
            iArr163[1] = i132 == 0 ? -1 : 0;
            o1.x.B(xVarArr76, 111, iArr163);
        }
        int i133 = (b28 >> 1) & 1;
        int[][] iArr164 = this.E;
        if (iArr164[11][1] != i133) {
            iArr164[11][1] = i133;
            o1.x[] xVarArr77 = nt.f8643f;
            int[] iArr165 = new int[2];
            iArr165[0] = 11;
            iArr165[1] = i133 == 0 ? -1 : 1;
            o1.x.B(xVarArr77, 111, iArr165);
        }
        byte b29 = bArr[i2 + 14];
        int i134 = b29 & 1;
        int[][] iArr166 = this.E;
        if (iArr166[12][0] != i134) {
            iArr166[12][0] = i134;
            o1.x[] xVarArr78 = nt.f8643f;
            int[] iArr167 = new int[2];
            iArr167[0] = 12;
            iArr167[1] = i134 == 0 ? -1 : 0;
            o1.x.B(xVarArr78, 111, iArr167);
        }
        int i135 = (b29 >> 1) & 1;
        int[][] iArr168 = this.E;
        if (iArr168[12][1] != i135) {
            iArr168[12][1] = i135;
            o1.x[] xVarArr79 = nt.f8643f;
            int[] iArr169 = new int[2];
            iArr169[0] = 12;
            iArr169[1] = i135 == 0 ? -1 : 1;
            o1.x.B(xVarArr79, 111, iArr169);
        }
        byte b30 = bArr[i2 + 15];
        int i136 = (b30 >> 6) & 1;
        int[][] iArr170 = this.E;
        if (iArr170[13][6] != i136) {
            iArr170[13][6] = i136;
            o1.x[] xVarArr80 = nt.f8643f;
            int[] iArr171 = new int[2];
            iArr171[0] = 13;
            iArr171[1] = i136 == 0 ? -1 : 6;
            o1.x.B(xVarArr80, 111, iArr171);
        }
        int i137 = (b30 >> 7) & 1;
        int[][] iArr172 = this.E;
        if (iArr172[13][7] != i137) {
            iArr172[13][7] = i137;
            o1.x[] xVarArr81 = nt.f8643f;
            int[] iArr173 = new int[2];
            iArr173[0] = 13;
            iArr173[1] = i137 == 0 ? -1 : 7;
            o1.x.B(xVarArr81, 111, iArr173);
        }
        int i138 = bArr[i2 + 16] & 1;
        int[][] iArr174 = this.E;
        if (iArr174[14][0] != i138) {
            iArr174[14][0] = i138;
            o1.x[] xVarArr82 = nt.f8643f;
            int[] iArr175 = new int[2];
            iArr175[0] = 14;
            iArr175[1] = i138 == 0 ? -1 : 0;
            o1.x.B(xVarArr82, 111, iArr175);
        }
        byte b31 = bArr[i2 + 17];
        int i139 = (b31 >> 5) & 1;
        int[][] iArr176 = this.E;
        if (iArr176[15][5] != i139) {
            iArr176[15][5] = i139;
            o1.x[] xVarArr83 = nt.f8643f;
            int[] iArr177 = new int[2];
            iArr177[0] = 15;
            iArr177[1] = i139 == 0 ? -1 : 5;
            o1.x.B(xVarArr83, 111, iArr177);
        }
        int i140 = (b31 >> 7) & 1;
        int[][] iArr178 = this.E;
        if (iArr178[15][7] != i140) {
            iArr178[15][7] = i140;
            o1.x[] xVarArr84 = nt.f8643f;
            int[] iArr179 = new int[2];
            iArr179[0] = 15;
            iArr179[1] = i140 == 0 ? -1 : 7;
            o1.x.B(xVarArr84, 111, iArr179);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(this.C);
        u0.c.f17376c.d(this.D);
        qt.q0(this.A);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (T2(iArr, 1)) {
            if (i2 == 0) {
                if (iArr == null || iArr.length <= 2) {
                    return;
                }
                z.k.s(227, -112, 3, iArr[0], iArr[1], iArr[2]);
            }
            if (i2 == 1) {
                f3(198, (byte) iArr[0], (byte) iArr[1], 0, 0);
                return;
            }
            if (i2 == 2) {
                if (iArr == null || iArr.length <= 2) {
                    return;
                }
                f3(198, iArr[0], iArr[1], iArr[2], iArr[3]);
                return;
            }
            if (i2 == 80) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] < 0) {
                    iArr[0] = 0;
                } else if (iArr[0] > 11) {
                    iArr[0] = 11;
                }
                f3(198, 177, this.f12088b + 1, 36, iArr[0]);
                return;
            }
            if (i2 == 82) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 10) {
                    iArr[0] = 10;
                }
                f3(198, 177, this.f12088b + 1, iArr[0], 0);
                return;
            }
            if (i2 == 85) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                f3(198, 178, iArr[0], 0, 0);
                return;
            }
            if (i2 == 100) {
                o1.l lVarA = o1.l.a();
                Runnable runnable = F;
                o1.j.e(lVarA, runnable);
                o1.j.b(o1.l.a(), runnable, 2000L);
                return;
            }
            switch (i2) {
                case 70:
                    if (iArr != null && iArr.length > 0) {
                        f3(198, 177, this.f12088b + 1, 35, iArr[0]);
                        break;
                    }
                    break;
                case 71:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 1) {
                            f3(198, 177, this.f12088b + 1, 32, 0);
                        } else {
                            f3(198, 177, this.f12088b + 1, 33, 0);
                        }
                        break;
                    }
                    break;
                case 72:
                    if (iArr != null && iArr.length > 0) {
                        int i3 = iArr[0];
                        if (i3 > 3) {
                            i3 = 0;
                        }
                        f3(198, 177, this.f12088b + 1, i3 + 37, iArr[0]);
                        break;
                    }
                    break;
                case 73:
                    if (iArr != null && iArr.length > 0) {
                        this.f12103q = 1;
                        f3(198, 177, this.f12088b + 1, 41, 0);
                        break;
                    }
                    break;
            }
        }
    }

    public void d3(int i2) {
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            u0.d.I3(37, i3, 8, i2);
        }
        if (i3 == 4 && i2 > 0) {
            o0.e.f16766b.D(i2 - 1);
            return;
        }
        if (i3 == 1 && i2 > 0 && i2 < 7) {
            w0.f.B(i2);
            return;
        }
        if (i3 == 2) {
            switch (i2) {
                case 0:
                    h0.c.f2425b.h(2);
                    break;
                case 1:
                    h0.c.f2425b.h(3);
                    break;
                case 2:
                    h0.c.f2425b.h(4);
                    break;
                case 3:
                    h0.c.f2425b.h(5);
                    break;
                case 4:
                    h0.c.f2425b.h(6);
                    break;
                case 5:
                    h0.c.f2425b.h(7);
                    break;
                case 6:
                    h0.c.f2425b.h(8);
                    break;
                case 7:
                    h0.c.f2425b.h(9);
                    break;
                case 8:
                    h0.c.f2425b.h(10);
                    break;
                case 9:
                    h0.c.f2425b.h(11);
                    break;
            }
        }
        if (i3 == 12 || i3 == 13) {
            switch (i2) {
                case 0:
                    f3(198, 161, 13, 0, 0);
                    break;
                case 1:
                    f3(198, 161, 14, 0, 0);
                    break;
                case 2:
                    f3(198, 161, 15, 0, 0);
                    break;
                case 3:
                    f3(198, 161, 16, 0, 0);
                    break;
                case 4:
                    f3(198, 161, 17, 0, 0);
                    break;
                case 5:
                    f3(198, 161, 18, 0, 0);
                    break;
                case 6:
                    f3(198, 161, 19, 0, 0);
                    break;
                case 7:
                    f3(198, 161, 20, 0, 0);
                    break;
                case 8:
                    f3(198, 161, 21, 0, 0);
                    break;
                case 9:
                    f3(198, 161, 22, 0, 0);
                    break;
            }
        }
    }

    public final void e3(byte b2) {
        if (b2 == 1 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            o1.x.C(nt.f8643f, 119, null, null, null);
            g3(121, 131);
        }
    }

    public final void f3(int i2, int i3, int i4, int i5, int i6) {
        z.k.s(227, (byte) i2, 4, (byte) i3, (byte) i4, (byte) i5, (byte) i6);
    }

    public final void g3(int i2, int i3) {
        try {
            Z0(0, new int[]{i2, i3}, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }
}
