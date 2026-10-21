package k0;

import android.app.ActivityManager;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import java.lang.reflect.Array;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class v extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11191e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11188b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String[][] f11189c = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String[][] f11190d = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11192f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11193g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{20, 54}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{49, 9}, new int[]{50, 1}, new int[]{51, 13}, new int[]{52, 21}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 58}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{104, 6}, new int[]{105, 1}, new int[]{106, 55}, new int[]{107, 54}, new int[]{111, 54}, new int[]{134, 16}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11194h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11195i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11196j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f11197k = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                z.k.s(227, 198, 2, 162, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, 198, 2, 162, 2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.W1 == 1) {
                if (u0.b.D != 12) {
                    u0.b.f17311c.c(12);
                }
                if (!v.this.c3().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                    o1.u.f("com.syu.canbus.sync");
                }
            }
            u0.b.W1 = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13) {
                return;
            }
            v.this.f3(198, 161, 130);
            qt.y0(110, 0);
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
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        u0.c.f17374a.a(this.f11196j, 1);
        z.c.f18185e.a(this.f11195i, 1);
        u0.c.f17399z.a(this.f11194h, 1);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    /* JADX WARN: Code duplicated, block: B:256:0x061c  */
    /* JADX WARN: Code duplicated, block: B:276:0x066f  */
    /* JADX WARN: Code duplicated, block: B:283:0x0692  */
    /* JADX WARN: Code duplicated, block: B:293:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:303:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:313:0x070a  */
    /* JADX WARN: Code duplicated, block: B:323:0x0732  */
    /* JADX WARN: Code duplicated, block: B:326:0x0739 A[LOOP:5: B:324:0x0733->B:326:0x0739, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:328:0x0748  */
    /* JADX WARN: Code duplicated, block: B:331:0x074f A[LOOP:6: B:329:0x0749->B:331:0x074f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:333:0x075e  */
    /* JADX WARN: Code duplicated, block: B:336:0x0765 A[LOOP:7: B:334:0x0761->B:336:0x0765, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:341:0x0775 A[LOOP:4: B:339:0x0771->B:341:0x0775, LOOP_END] */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        int i8;
        int[][] iArr2;
        int i9;
        byte b2 = bArr[i2];
        if (b2 == 20) {
            u0.d.Q(((bArr[i2 + 2] & 255) * 100) / 255);
            return;
        }
        if (b2 != 42) {
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 53) {
                if (nt.a()) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 12600);
                    return;
                }
                return;
            }
            if (b2 == 64) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 104) {
                qt.y0(114, (bArr[i2 + 2] & 255) + ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            if (b2 == 106) {
                qt.y0(113, (255 & bArr[i2 + 2]) + ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            if (b2 == 39) {
                qt.y0(133, bArr[i2 + 2] & 255);
                return;
            }
            if (b2 == 40) {
                if (bArr[i2 + 2] == 1) {
                    qt.y0(104, bArr[i2 + 3] & 255);
                    return;
                }
                return;
            }
            if (b2 == 120) {
                qt.y0(107, bArr[i2 + 2]);
                qt.y0(108, bArr[i2 + 3]);
                qt.y0(109, bArr[i2 + 4]);
                return;
            }
            if (b2 == 121) {
                if (nt.R == 0) {
                    return;
                }
                int i10 = i2 + 2;
                qt.y0(110, bArr[i10]);
                e3(bArr[i10]);
                return;
            }
            switch (b2) {
                case 32:
                    int i11 = i2 + 3;
                    byte b3 = bArr[i11];
                    int i12 = i2 + 2;
                    byte b4 = bArr[i12];
                    if (b4 != 82) {
                        if (b4 != 83) {
                            switch (b4) {
                                case -16:
                                    for (i7 = 0; i7 < (b3 & 255); i7++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                case -15:
                                    for (i4 = 0; i4 < (b3 & 255); i4++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                case -14:
                                    for (i5 = 0; i5 < (b3 & 255); i5++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                case -13:
                                    for (i6 = 0; i6 < (b3 & 255); i6++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                                default:
                                    switch (b4) {
                                        case 14:
                                            if (!nt.a() && b3 == 1) {
                                                int i13 = u0.b.D;
                                                if (i13 == 12 || i13 == 13) {
                                                    z.k.s(227, 198, 2, 161, 10);
                                                } else {
                                                    l0.b0.l0(34, 0);
                                                    l0.b0.l0(34, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        case 15:
                                            if (!nt.a() && b3 == 1) {
                                                int i14 = u0.b.D;
                                                if (i14 == 12 || i14 == 13) {
                                                    z.k.s(227, 198, 2, 161, 11);
                                                } else {
                                                    l0.b0.l0(35, 0);
                                                    l0.b0.l0(35, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        case 16:
                                            if (!nt.a() && b3 == 1) {
                                                int i15 = u0.b.D;
                                                if (i15 == 12 || i15 == 13) {
                                                    z.k.s(227, 198, 2, 161, 25);
                                                } else {
                                                    l0.b0.l0(32, 0);
                                                    l0.b0.l0(32, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        case 17:
                                            if (!nt.a() && b3 == 1) {
                                                int i16 = u0.b.D;
                                                if (i16 == 12 || i16 == 13) {
                                                    z.k.s(227, 198, 2, 161, 26);
                                                } else {
                                                    l0.b0.l0(33, 0);
                                                    l0.b0.l0(33, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        case 18:
                                            if (!nt.a() && b3 == 1) {
                                                if (u0.b.D == 12) {
                                                    z.k.s(227, 198, 2, 161, 12);
                                                } else {
                                                    l0.b0.l0(29, 0);
                                                    l0.b0.l0(29, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        default:
                                            switch (b4) {
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
                                                    if (b3 == 1) {
                                                        d3((bArr[i12] & 255) - 32);
                                                    }
                                                    break;
                                                case 42:
                                                    if (b3 == 1) {
                                                        int i17 = u0.b.D;
                                                        if (i17 == 2) {
                                                            h0.c.f2425b.h(13);
                                                        } else if (i17 == 12 || i17 == 13) {
                                                            f3(198, 161, 23);
                                                        }
                                                    }
                                                    break;
                                                case 43:
                                                    if (b3 == 1) {
                                                        int i18 = u0.b.D;
                                                        if (i18 == 2) {
                                                            h0.c.f2425b.h(14);
                                                        } else if (i18 == 12 || i18 == 13) {
                                                            f3(198, 161, 24);
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    switch (b4) {
                                                        case 65:
                                                            while (i4 < (b3 & 255)) {
                                                                l0.b0.l0(8, 0);
                                                            }
                                                            l0.b0.l0(8, 1);
                                                            break;
                                                        case 66:
                                                            while (i7 < (b3 & 255)) {
                                                                l0.b0.l0(7, 0);
                                                            }
                                                            l0.b0.l0(7, 1);
                                                            break;
                                                        case 67:
                                                            while (i6 < (b3 & 255)) {
                                                                l0.b0.l0(30, 0);
                                                            }
                                                            l0.b0.l0(30, 1);
                                                            break;
                                                        case 68:
                                                            while (i5 < (b3 & 255)) {
                                                                l0.b0.l0(31, 0);
                                                            }
                                                            l0.b0.l0(31, 1);
                                                            break;
                                                        default:
                                                            switch (b4) {
                                                                case 72:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 73:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 74:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 75:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 76:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                default:
                                                                    switch (b4) {
                                                                        case 92:
                                                                            if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                f3(198, 161, 28);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 93:
                                                                            if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                f3(198, 161, 29);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 94:
                                                                            if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                f3(198, 161, 30);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 95:
                                                                            if (b3 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                f3(198, 161, 31);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            if (nt.a()) {
                                                                                byte b5 = bArr[i12];
                                                                                byte b6 = bArr[i11];
                                                                                this.f11192f = b5 & 255;
                                                                                if (nt.f8633a == 196630) {
                                                                                    int i19 = 0;
                                                                                    while (true) {
                                                                                        iArr2 = this.f11193g;
                                                                                        if (i19 < iArr2.length) {
                                                                                            int i20 = this.f11192f;
                                                                                            if (i20 != iArr2[i19][0]) {
                                                                                                i19++;
                                                                                            } else if (i20 != 0) {
                                                                                                this.f11191e = i19;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    int i21 = this.f11192f;
                                                                                    if (i21 != 3) {
                                                                                        if (i21 != 4) {
                                                                                            int i22 = b6 & 255;
                                                                                            if (i22 == 1) {
                                                                                                if (i19 < iArr2.length) {
                                                                                                    l0.b0.l0(iArr2[i19][1], 0);
                                                                                                }
                                                                                            } else if (i22 == 0) {
                                                                                                int i23 = this.f11191e;
                                                                                                if (i23 < iArr2.length) {
                                                                                                    i9 = 255;
                                                                                                    if (i23 != 255) {
                                                                                                        l0.b0.l0(iArr2[i23][1], 1);
                                                                                                    }
                                                                                                } else {
                                                                                                    i9 = 255;
                                                                                                }
                                                                                                this.f11191e = i9;
                                                                                            }
                                                                                        } else if ((b6 & 255) == 1) {
                                                                                            if (h0.c.E != 4) {
                                                                                                l0.b0.l0(3, 0);
                                                                                                l0.b0.l0(3, 1);
                                                                                            } else {
                                                                                                l0.b0.l0(18, 0);
                                                                                                l0.b0.l0(18, 1);
                                                                                            }
                                                                                        }
                                                                                    } else if ((b6 & 255) == 1) {
                                                                                        int i24 = h0.c.E;
                                                                                        if (i24 == 3 || i24 == 5) {
                                                                                            l0.b0.l0(26, 0);
                                                                                            l0.b0.l0(26, 1);
                                                                                        } else {
                                                                                            l0.b0.l0(4, 0);
                                                                                            l0.b0.l0(4, 1);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    int i25 = 0;
                                                                                    while (true) {
                                                                                        iArr = this.f11193g;
                                                                                        if (i25 < iArr.length) {
                                                                                            int i26 = this.f11192f;
                                                                                            if (i26 != iArr[i25][0]) {
                                                                                                i25++;
                                                                                            } else if (i26 != 0) {
                                                                                                this.f11191e = i25;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    int i27 = b6 & 255;
                                                                                    if (i27 == 1) {
                                                                                        if (i25 < iArr.length) {
                                                                                            l0.b0.l0(iArr[i25][1], 0);
                                                                                        }
                                                                                    } else if (i27 == 0) {
                                                                                        int i28 = this.f11191e;
                                                                                        if (i28 < iArr.length) {
                                                                                            i8 = 255;
                                                                                            if (i28 != 255) {
                                                                                                l0.b0.l0(iArr[i28][1], 1);
                                                                                            }
                                                                                        } else {
                                                                                            i8 = 255;
                                                                                        }
                                                                                        this.f11191e = i8;
                                                                                    }
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
                                    break;
                            }
                        } else if (nt.a() && b3 == 1) {
                            int i29 = u0.b.D;
                            if (i29 == 12 || i29 == 13) {
                                z.k.s(227, 198, 2, 161, 9);
                            } else {
                                int i30 = h0.c.E;
                                if (i30 == 3 || i30 == 4 || i30 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                            break;
                        }
                    } else if (nt.a() && b3 == 1) {
                        int i31 = u0.b.D;
                        if (i31 == 12 || i31 == 13) {
                            z.k.s(227, 198, 2, 161, 9);
                        } else if (h0.c.E != 4) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                        break;
                    }
                    break;
                case 33:
                    int i32 = bArr[i2 + 2] & 255;
                    int i33 = bArr[i2 + 3] & 255;
                    int i34 = i2 + 4;
                    int i35 = bArr[i34] & 255;
                    int i36 = i2 + 5;
                    int i37 = bArr[i36] & 255;
                    int i38 = bArr[i2 + 6] & 255;
                    int[] iArr3 = new int[1];
                    iArr3[0] = (i32 & 128) == 0 ? 0 : 1;
                    qt.y0(10, iArr3);
                    int[] iArr4 = new int[1];
                    iArr4[0] = (i32 & 64) == 0 ? 0 : 1;
                    qt.y0(11, iArr4);
                    int[] iArr5 = new int[1];
                    iArr5[0] = (i32 & 32) == 0 ? 0 : 1;
                    qt.y0(12, iArr5);
                    int[] iArr6 = new int[1];
                    iArr6[0] = (i32 & 8) == 0 ? 0 : 1;
                    qt.y0(13, iArr6);
                    int[] iArr7 = new int[1];
                    iArr7[0] = (i32 & 4) == 0 ? 0 : 1;
                    qt.y0(14, iArr7);
                    int[] iArr8 = new int[1];
                    iArr8[0] = (i32 & 16) == 0 ? 0 : 1;
                    qt.y0(16, iArr8);
                    int[] iArr9 = new int[1];
                    iArr9[0] = (i32 & 2) == 0 ? 0 : 1;
                    qt.y0(65, iArr9);
                    int[] iArr10 = new int[1];
                    iArr10[0] = (i33 & 128) == 0 ? 0 : 1;
                    qt.y0(18, iArr10);
                    int[] iArr11 = new int[1];
                    iArr11[0] = (i33 & 64) == 0 ? 0 : 1;
                    qt.y0(19, iArr11);
                    int[] iArr12 = new int[1];
                    iArr12[0] = (i33 & 32) == 0 ? 0 : 1;
                    qt.y0(20, iArr12);
                    qt.y0(21, 15 & i33);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i35 = bArr[i36] & 255;
                        i37 = bArr[i34] & 255;
                    }
                    int i39 = (i38 >> 6) & 1;
                    if (i35 == 0) {
                        qt.y0(27, 1048576);
                    } else if (i35 == 127 || i35 == 255) {
                        qt.y0(27, 1048577);
                    } else if (i35 >= 31 && i35 <= 59) {
                        if (i39 != 0) {
                            qt.y0(27, ((i35 * 9) / 10) + 32);
                        } else {
                            qt.y0(27, i35 * 5);
                        }
                    }
                    if (i37 == 0) {
                        qt.y0(28, 1048576);
                    } else if (i37 == 127 || i37 == 255) {
                        qt.y0(28, 1048577);
                    } else if (i37 >= 31 && i37 <= 59) {
                        if (i39 != 0) {
                            qt.y0(28, ((i37 * 9) / 10) + 32);
                        } else {
                            qt.y0(28, i37 * 5);
                        }
                    }
                    int[] iArr13 = new int[1];
                    iArr13[0] = (i38 & 4) == 0 ? 0 : 1;
                    qt.y0(53, iArr13);
                    int[] iArr14 = new int[1];
                    int i40 = i38 & 64;
                    iArr14[0] = i40 == 0 ? 0 : 1;
                    qt.y0(37, iArr14);
                    if (nt.a()) {
                        int i41 = bArr[i2 + 7] & 255;
                        i = (i41 & 128) != 0 ? 1 : 0;
                        u0.d.B3(i40 != 0 ? ((i != 0 ? 1320 - ((256 - i41) * 18) : ((i41 & 255) * 18) + 1320) | 268435456) & (-1) : i != 0 ? 1000 - ((256 - i41) * 10) : ((i41 & 255) * 10) + 1000);
                    }
                    break;
                case 34:
                    if (nt.a()) {
                        u0.d.R2(a3(bArr[i2 + 2] & 255));
                        u0.d.S2(a3(bArr[i2 + 3] & 255));
                        u0.d.T2(a3(bArr[i2 + 4] & 255));
                        u0.d.U2(a3(bArr[i2 + 5] & 255));
                    }
                    break;
                case 35:
                    if (nt.a()) {
                        int i42 = i2 + 2;
                        int i43 = bArr[i42] & 255;
                        int i44 = i2 + 3;
                        int i45 = bArr[i44] & 255;
                        int i46 = i2 + 4;
                        int i47 = bArr[i46] & 255;
                        int i48 = i2 + 5;
                        int i49 = bArr[i48] & 255;
                        if ((l0.c0.f13013g != i43 || l0.c0.f13014h != i45 || l0.c0.f13015i != i47 || l0.c0.f13016j != i49) && u0.b.f17347o == 0) {
                            if (i43 == 0 && i45 == 0 && i47 == 0 && i49 == 0) {
                                a.f.p().t(LogType.CANBUS, "DataMain.sRadar  = " + u0.b.f17350p);
                                if (u0.b.f17350p == 1) {
                                    l0.c0.f13017k = 2;
                                    l0.b0.b(l0.c0.f13018l);
                                }
                            } else {
                                u0.d.C2(1);
                            }
                        }
                        l0.c0.f13013g = i43;
                        l0.c0.f13014h = i45;
                        l0.c0.f13015i = i47;
                        l0.c0.f13016j = i49;
                        u0.d.D2(a3(bArr[i42] & 255));
                        u0.d.E2(a3(bArr[i44] & 255));
                        u0.d.F2(a3(bArr[i46] & 255));
                        u0.d.G2(a3(bArr[i48] & 255));
                    }
                    break;
                case 36:
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 4];
                    byte b9 = bArr[i2 + 5];
                    byte b10 = bArr[i2 + 7];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b7 >> 7) & 1);
                        qt.y0(2, (b7 >> 6) & 1);
                    } else {
                        qt.y0(1, (b7 >> 6) & 1);
                        qt.y0(2, (b7 >> 7) & 1);
                    }
                    qt.y0(4, (b7 >> 5) & 1);
                    qt.y0(3, (b7 >> 4) & 1);
                    qt.y0(5, (b7 >> 3) & 1);
                    int i50 = i2 + 3;
                    qt.y0(125, (bArr[i50] >> 6) & 1);
                    qt.y0(126, (bArr[i50] >> 7) & 1);
                    qt.y0(119, (b8 >> 7) & 1);
                    qt.y0(120, (b8 >> 4) & 7);
                    qt.y0(117, (b8 >> 3) & 1);
                    qt.y0(116, (b8 >> 2) & 1);
                    qt.y0(121, (b8 >> 1) & 1);
                    qt.y0(115, (b8 >> 0) & 1);
                    qt.y0(118, (b9 >> 7) & 1);
                    qt.y0(127, (b9 >> 3) & 7);
                    qt.y0(128, (b9 >> 0) & 7);
                    o1.x.B(nt.f8643f, 123, new int[]{(b9 >> 6) & 1});
                    qt.y0(124, (b10 >> 0) & 1);
                    qt.y0(122, (b10 >> 1) & 1);
                    qt.y0(129, (b10 >> 2) & 1);
                    qt.y0(130, (b10 >> 3) & 1);
                    qt.y0(131, (b10 >> 5) & 1);
                    qt.y0(132, (b10 >> 6) & 1);
                    break;
                default:
                    switch (b2) {
                        case 80:
                            int[] iArr15 = new int[6];
                            for (int i51 = 0; i51 < 6; i51++) {
                                iArr15[i51] = bArr[i2 + 2 + i51];
                            }
                            o1.x.B(nt.f8643f, 105, iArr15);
                            break;
                        case 81:
                            int i52 = i2 + 2;
                            int i53 = i2 + 4;
                            o1.x.B(nt.f8643f, 99, new int[]{bArr[i52] & 255, bArr[i53] & 255, bArr[i2 + 5] & 255});
                            try {
                                StringBuilder sb = new StringBuilder();
                                int i54 = (i2 + i3) - 1;
                                for (int i55 = i2 + 6; i55 < i54; i55 += 2) {
                                    sb.append((char) ((bArr[i55 + 1] & 255) | (bArr[i55] << 8)));
                                }
                                qt.z0(100, new int[]{bArr[i52] & 255, bArr[i2 + 3] & 255, bArr[i53] & 255}, sb.toString());
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
        byte b11 = bArr[i2 + 2];
        int i56 = (b11 >> 1) & 1;
        int[][] iArr16 = this.f11197k;
        if (iArr16[0][1] != i56) {
            iArr16[0][1] = i56;
            o1.x[] xVarArr = nt.f8643f;
            int[] iArr17 = new int[2];
            iArr17[0] = 0;
            iArr17[1] = i56 == 0 ? -1 : 1;
            o1.x.B(xVarArr, 111, iArr17);
        }
        int i57 = (b11 >> 2) & 1;
        int[][] iArr18 = this.f11197k;
        if (iArr18[0][2] != i57) {
            iArr18[0][2] = i57;
            o1.x[] xVarArr2 = nt.f8643f;
            int[] iArr19 = new int[2];
            iArr19[0] = 0;
            iArr19[1] = i57 == 0 ? -1 : 2;
            o1.x.B(xVarArr2, 111, iArr19);
        }
        int i58 = (b11 >> 3) & 1;
        int[][] iArr20 = this.f11197k;
        if (iArr20[0][3] != i58) {
            iArr20[0][3] = i58;
            o1.x[] xVarArr3 = nt.f8643f;
            int[] iArr21 = new int[2];
            iArr21[0] = 0;
            iArr21[1] = i58 == 0 ? -1 : 3;
            o1.x.B(xVarArr3, 111, iArr21);
        }
        int i59 = (b11 >> 4) & 1;
        int[][] iArr22 = this.f11197k;
        if (iArr22[0][4] != i59) {
            iArr22[0][4] = i59;
            o1.x[] xVarArr4 = nt.f8643f;
            int[] iArr23 = new int[2];
            iArr23[0] = 0;
            iArr23[1] = i59 == 0 ? -1 : 4;
            o1.x.B(xVarArr4, 111, iArr23);
        }
        int i60 = (b11 >> 5) & 1;
        int[][] iArr24 = this.f11197k;
        if (iArr24[0][5] != i60) {
            iArr24[0][5] = i60;
            o1.x[] xVarArr5 = nt.f8643f;
            int[] iArr25 = new int[2];
            iArr25[0] = 0;
            iArr25[1] = i60 == 0 ? -1 : 5;
            o1.x.B(xVarArr5, 111, iArr25);
        }
        int i61 = (b11 >> 6) & 1;
        int[][] iArr26 = this.f11197k;
        if (iArr26[0][6] != i61) {
            iArr26[0][6] = i61;
            o1.x[] xVarArr6 = nt.f8643f;
            int[] iArr27 = new int[2];
            iArr27[0] = 0;
            iArr27[1] = i61 == 0 ? -1 : 6;
            o1.x.B(xVarArr6, 111, iArr27);
        }
        int i62 = (b11 >> 7) & 1;
        int[][] iArr28 = this.f11197k;
        if (iArr28[0][7] != i62) {
            iArr28[0][7] = i62;
            o1.x[] xVarArr7 = nt.f8643f;
            int[] iArr29 = new int[2];
            iArr29[0] = 0;
            iArr29[1] = i62 == 0 ? -1 : 7;
            o1.x.B(xVarArr7, 111, iArr29);
        }
        byte b12 = bArr[i2 + 3];
        int i63 = b12 & 1;
        int[][] iArr30 = this.f11197k;
        if (iArr30[1][0] != i63) {
            iArr30[1][0] = i63;
            o1.x[] xVarArr8 = nt.f8643f;
            int[] iArr31 = new int[2];
            iArr31[0] = 1;
            iArr31[1] = i63 == 0 ? -1 : 0;
            o1.x.B(xVarArr8, 111, iArr31);
        }
        int i64 = (b12 >> 1) & 1;
        int[][] iArr32 = this.f11197k;
        if (iArr32[1][1] != i64) {
            iArr32[1][1] = i64;
            o1.x[] xVarArr9 = nt.f8643f;
            int[] iArr33 = new int[2];
            iArr33[0] = 1;
            iArr33[1] = i64 == 0 ? -1 : 1;
            o1.x.B(xVarArr9, 111, iArr33);
        }
        int i65 = (b12 >> 2) & 1;
        int[][] iArr34 = this.f11197k;
        if (iArr34[1][2] != i65) {
            iArr34[1][2] = i65;
            o1.x[] xVarArr10 = nt.f8643f;
            int[] iArr35 = new int[2];
            iArr35[0] = 1;
            iArr35[1] = i65 == 0 ? -1 : 2;
            o1.x.B(xVarArr10, 111, iArr35);
        }
        int i66 = (b12 >> 3) & 1;
        int[][] iArr36 = this.f11197k;
        if (iArr36[1][3] != i66) {
            iArr36[1][3] = i66;
            o1.x[] xVarArr11 = nt.f8643f;
            int[] iArr37 = new int[2];
            iArr37[0] = 1;
            iArr37[1] = i66 == 0 ? -1 : 3;
            o1.x.B(xVarArr11, 111, iArr37);
        }
        int i67 = (b12 >> 4) & 1;
        int[][] iArr38 = this.f11197k;
        if (iArr38[1][4] != i67) {
            iArr38[1][4] = i67;
            o1.x[] xVarArr12 = nt.f8643f;
            int[] iArr39 = new int[2];
            iArr39[0] = 1;
            iArr39[1] = i67 == 0 ? -1 : 4;
            o1.x.B(xVarArr12, 111, iArr39);
        }
        int i68 = (b12 >> 5) & 1;
        int[][] iArr40 = this.f11197k;
        if (iArr40[1][5] != i68) {
            iArr40[1][5] = i68;
            o1.x[] xVarArr13 = nt.f8643f;
            int[] iArr41 = new int[2];
            iArr41[0] = 1;
            iArr41[1] = i68 == 0 ? -1 : 5;
            o1.x.B(xVarArr13, 111, iArr41);
        }
        int i69 = (b12 >> 6) & 1;
        int[][] iArr42 = this.f11197k;
        if (iArr42[1][6] != i69) {
            iArr42[1][6] = i69;
            o1.x[] xVarArr14 = nt.f8643f;
            int[] iArr43 = new int[2];
            iArr43[0] = 1;
            iArr43[1] = i69 == 0 ? -1 : 6;
            o1.x.B(xVarArr14, 111, iArr43);
        }
        byte b13 = bArr[i2 + 4];
        int i70 = b13 & 1;
        int[][] iArr44 = this.f11197k;
        if (iArr44[2][0] != i70) {
            iArr44[2][0] = i70;
            o1.x[] xVarArr15 = nt.f8643f;
            int[] iArr45 = new int[2];
            iArr45[0] = 2;
            iArr45[1] = i70 == 0 ? -1 : 0;
            o1.x.B(xVarArr15, 111, iArr45);
        }
        int i71 = (b13 >> 1) & 1;
        int[][] iArr46 = this.f11197k;
        if (iArr46[2][1] != i71) {
            iArr46[2][1] = i71;
            o1.x[] xVarArr16 = nt.f8643f;
            int[] iArr47 = new int[2];
            iArr47[0] = 2;
            iArr47[1] = i71 == 0 ? -1 : 1;
            o1.x.B(xVarArr16, 111, iArr47);
        }
        int i72 = (b13 >> 2) & 1;
        int[][] iArr48 = this.f11197k;
        if (iArr48[2][2] != i72) {
            iArr48[2][2] = i72;
            o1.x[] xVarArr17 = nt.f8643f;
            int[] iArr49 = new int[2];
            iArr49[0] = 2;
            iArr49[1] = i72 == 0 ? -1 : 2;
            o1.x.B(xVarArr17, 111, iArr49);
        }
        int i73 = (b13 >> 3) & 1;
        int[][] iArr50 = this.f11197k;
        if (iArr50[2][3] != i73) {
            iArr50[2][3] = i73;
            o1.x[] xVarArr18 = nt.f8643f;
            int[] iArr51 = new int[2];
            iArr51[0] = 2;
            iArr51[1] = i73 == 0 ? -1 : 3;
            o1.x.B(xVarArr18, 111, iArr51);
        }
        int i74 = (b13 >> 4) & 1;
        int[][] iArr52 = this.f11197k;
        if (iArr52[2][4] != i74) {
            iArr52[2][4] = i74;
            o1.x[] xVarArr19 = nt.f8643f;
            int[] iArr53 = new int[2];
            iArr53[0] = 2;
            iArr53[1] = i74 == 0 ? -1 : 4;
            o1.x.B(xVarArr19, 111, iArr53);
        }
        int i75 = (b13 >> 5) & 1;
        int[][] iArr54 = this.f11197k;
        if (iArr54[2][5] != i75) {
            iArr54[2][5] = i75;
            o1.x[] xVarArr20 = nt.f8643f;
            int[] iArr55 = new int[2];
            iArr55[0] = 2;
            iArr55[1] = i75 == 0 ? -1 : 5;
            o1.x.B(xVarArr20, 111, iArr55);
        }
        int i76 = (b13 >> 7) & 1;
        int[][] iArr56 = this.f11197k;
        if (iArr56[2][7] != i76) {
            iArr56[2][7] = i76;
            o1.x[] xVarArr21 = nt.f8643f;
            int[] iArr57 = new int[2];
            iArr57[0] = 2;
            iArr57[1] = i76 == 0 ? -1 : 7;
            o1.x.B(xVarArr21, 111, iArr57);
        }
        byte b14 = bArr[i2 + 5];
        int i77 = b14 & 1;
        int[][] iArr58 = this.f11197k;
        if (iArr58[3][0] != i77) {
            iArr58[3][0] = i77;
            o1.x[] xVarArr22 = nt.f8643f;
            int[] iArr59 = new int[2];
            iArr59[0] = 3;
            iArr59[1] = i77 == 0 ? -1 : 0;
            o1.x.B(xVarArr22, 111, iArr59);
        }
        int i78 = (b14 >> 1) & 1;
        int[][] iArr60 = this.f11197k;
        if (iArr60[3][1] != i78) {
            iArr60[3][1] = i78;
            o1.x[] xVarArr23 = nt.f8643f;
            int[] iArr61 = new int[2];
            iArr61[0] = 3;
            iArr61[1] = i78 == 0 ? -1 : 1;
            o1.x.B(xVarArr23, 111, iArr61);
        }
        int i79 = (b14 >> 2) & 1;
        int[][] iArr62 = this.f11197k;
        if (iArr62[3][2] != i79) {
            iArr62[3][2] = i79;
            o1.x[] xVarArr24 = nt.f8643f;
            int[] iArr63 = new int[2];
            iArr63[0] = 3;
            iArr63[1] = i79 == 0 ? -1 : 2;
            o1.x.B(xVarArr24, 111, iArr63);
        }
        int i80 = (b14 >> 3) & 1;
        int[][] iArr64 = this.f11197k;
        if (iArr64[3][3] != i80) {
            iArr64[3][3] = i80;
            o1.x[] xVarArr25 = nt.f8643f;
            int[] iArr65 = new int[2];
            iArr65[0] = 3;
            iArr65[1] = i80 == 0 ? -1 : 3;
            o1.x.B(xVarArr25, 111, iArr65);
        }
        int i81 = (b14 >> 4) & 1;
        int[][] iArr66 = this.f11197k;
        if (iArr66[3][4] != i81) {
            iArr66[3][4] = i81;
            o1.x[] xVarArr26 = nt.f8643f;
            int[] iArr67 = new int[2];
            iArr67[0] = 3;
            iArr67[1] = i81 == 0 ? -1 : 4;
            o1.x.B(xVarArr26, 111, iArr67);
        }
        int i82 = (b14 >> 5) & 1;
        int[][] iArr68 = this.f11197k;
        if (iArr68[3][5] != i82) {
            iArr68[3][5] = i82;
            o1.x[] xVarArr27 = nt.f8643f;
            int[] iArr69 = new int[2];
            iArr69[0] = 3;
            iArr69[1] = i82 == 0 ? -1 : 5;
            o1.x.B(xVarArr27, 111, iArr69);
        }
        int i83 = (b14 >> 6) & 1;
        int[][] iArr70 = this.f11197k;
        if (iArr70[3][6] != i83) {
            iArr70[3][6] = i83;
            o1.x[] xVarArr28 = nt.f8643f;
            int[] iArr71 = new int[2];
            iArr71[0] = 3;
            iArr71[1] = i83 == 0 ? -1 : 6;
            o1.x.B(xVarArr28, 111, iArr71);
        }
        int i84 = (b14 >> 7) & 1;
        int[][] iArr72 = this.f11197k;
        if (iArr72[3][7] != i84) {
            iArr72[3][7] = i84;
            o1.x[] xVarArr29 = nt.f8643f;
            int[] iArr73 = new int[2];
            iArr73[0] = 3;
            iArr73[1] = i84 == 0 ? -1 : 7;
            o1.x.B(xVarArr29, 111, iArr73);
        }
        byte b15 = bArr[i2 + 6];
        int i85 = b15 & 1;
        int[][] iArr74 = this.f11197k;
        if (iArr74[4][0] != i85) {
            iArr74[4][0] = i85;
            o1.x[] xVarArr30 = nt.f8643f;
            int[] iArr75 = new int[2];
            iArr75[0] = 4;
            iArr75[1] = i85 == 0 ? -1 : 0;
            o1.x.B(xVarArr30, 111, iArr75);
        }
        int i86 = (b15 >> 1) & 1;
        int[][] iArr76 = this.f11197k;
        if (iArr76[4][1] != i86) {
            iArr76[4][1] = i86;
            o1.x[] xVarArr31 = nt.f8643f;
            int[] iArr77 = new int[2];
            iArr77[0] = 4;
            iArr77[1] = i86 == 0 ? -1 : 1;
            o1.x.B(xVarArr31, 111, iArr77);
        }
        int i87 = (b15 >> 2) & 1;
        int[][] iArr78 = this.f11197k;
        if (iArr78[4][2] != i87) {
            iArr78[4][2] = i87;
            o1.x[] xVarArr32 = nt.f8643f;
            int[] iArr79 = new int[2];
            iArr79[0] = 4;
            iArr79[1] = i87 == 0 ? -1 : 2;
            o1.x.B(xVarArr32, 111, iArr79);
        }
        int i88 = (b15 >> 3) & 1;
        int[][] iArr80 = this.f11197k;
        if (iArr80[4][3] != i88) {
            iArr80[4][3] = i88;
            o1.x[] xVarArr33 = nt.f8643f;
            int[] iArr81 = new int[2];
            iArr81[0] = 4;
            iArr81[1] = i88 == 0 ? -1 : 3;
            o1.x.B(xVarArr33, 111, iArr81);
        }
        int i89 = (b15 >> 4) & 1;
        int[][] iArr82 = this.f11197k;
        if (iArr82[4][4] != i89) {
            iArr82[4][4] = i89;
            o1.x[] xVarArr34 = nt.f8643f;
            int[] iArr83 = new int[2];
            iArr83[0] = 4;
            iArr83[1] = i89 == 0 ? -1 : 4;
            o1.x.B(xVarArr34, 111, iArr83);
        }
        int i90 = (b15 >> 5) & 1;
        int[][] iArr84 = this.f11197k;
        if (iArr84[4][5] != i90) {
            iArr84[4][5] = i90;
            o1.x[] xVarArr35 = nt.f8643f;
            int[] iArr85 = new int[2];
            iArr85[0] = 4;
            iArr85[1] = i90 == 0 ? -1 : 5;
            o1.x.B(xVarArr35, 111, iArr85);
        }
        int i91 = (b15 >> 6) & 1;
        int[][] iArr86 = this.f11197k;
        if (iArr86[4][6] != i91) {
            iArr86[4][6] = i91;
            o1.x[] xVarArr36 = nt.f8643f;
            int[] iArr87 = new int[2];
            iArr87[0] = 4;
            iArr87[1] = i91 == 0 ? -1 : 6;
            o1.x.B(xVarArr36, 111, iArr87);
        }
        int i92 = (b15 >> 7) & 1;
        int[][] iArr88 = this.f11197k;
        if (iArr88[4][7] != i92) {
            iArr88[4][7] = i92;
            o1.x[] xVarArr37 = nt.f8643f;
            int[] iArr89 = new int[2];
            iArr89[0] = 4;
            iArr89[1] = i92 == 0 ? -1 : 7;
            o1.x.B(xVarArr37, 111, iArr89);
        }
        byte b16 = bArr[i2 + 7];
        int i93 = b16 & 1;
        int[][] iArr90 = this.f11197k;
        if (iArr90[5][0] != i93) {
            iArr90[5][0] = i93;
            o1.x[] xVarArr38 = nt.f8643f;
            int[] iArr91 = new int[2];
            iArr91[0] = 5;
            iArr91[1] = i93 == 0 ? -1 : 0;
            o1.x.B(xVarArr38, 111, iArr91);
        }
        int i94 = (b16 >> 1) & 1;
        int[][] iArr92 = this.f11197k;
        if (iArr92[5][1] != i94) {
            iArr92[5][1] = i94;
            o1.x[] xVarArr39 = nt.f8643f;
            int[] iArr93 = new int[2];
            iArr93[0] = 5;
            iArr93[1] = i94 == 0 ? -1 : 1;
            o1.x.B(xVarArr39, 111, iArr93);
        }
        int i95 = (b16 >> 2) & 1;
        int[][] iArr94 = this.f11197k;
        if (iArr94[5][2] != i95) {
            iArr94[5][2] = i95;
            o1.x[] xVarArr40 = nt.f8643f;
            int[] iArr95 = new int[2];
            iArr95[0] = 5;
            iArr95[1] = i95 == 0 ? -1 : 2;
            o1.x.B(xVarArr40, 111, iArr95);
        }
        int i96 = (b16 >> 3) & 1;
        int[][] iArr96 = this.f11197k;
        if (iArr96[5][3] != i96) {
            iArr96[5][3] = i96;
            o1.x[] xVarArr41 = nt.f8643f;
            int[] iArr97 = new int[2];
            iArr97[0] = 5;
            iArr97[1] = i96 == 0 ? -1 : 3;
            o1.x.B(xVarArr41, 111, iArr97);
        }
        int i97 = (b16 >> 4) & 1;
        int[][] iArr98 = this.f11197k;
        if (iArr98[5][4] != i97) {
            iArr98[5][4] = i97;
            o1.x[] xVarArr42 = nt.f8643f;
            int[] iArr99 = new int[2];
            iArr99[0] = 5;
            iArr99[1] = i97 == 0 ? -1 : 4;
            o1.x.B(xVarArr42, 111, iArr99);
        }
        int i98 = (b16 >> 5) & 1;
        int[][] iArr100 = this.f11197k;
        if (iArr100[5][5] != i98) {
            iArr100[5][5] = i98;
            o1.x[] xVarArr43 = nt.f8643f;
            int[] iArr101 = new int[2];
            iArr101[0] = 5;
            iArr101[1] = i98 == 0 ? -1 : 5;
            o1.x.B(xVarArr43, 111, iArr101);
        }
        int i99 = (b16 >> 6) & 1;
        int[][] iArr102 = this.f11197k;
        if (iArr102[5][6] != i99) {
            iArr102[5][6] = i99;
            o1.x[] xVarArr44 = nt.f8643f;
            int[] iArr103 = new int[2];
            iArr103[0] = 5;
            iArr103[1] = i99 == 0 ? -1 : 6;
            o1.x.B(xVarArr44, 111, iArr103);
        }
        int i100 = (b16 >> 7) & 1;
        int[][] iArr104 = this.f11197k;
        if (iArr104[5][7] != i100) {
            iArr104[5][7] = i100;
            o1.x[] xVarArr45 = nt.f8643f;
            int[] iArr105 = new int[2];
            iArr105[0] = 5;
            iArr105[1] = i100 == 0 ? -1 : 7;
            o1.x.B(xVarArr45, 111, iArr105);
        }
        byte b17 = bArr[i2 + 8];
        int i101 = b17 & 1;
        int[][] iArr106 = this.f11197k;
        if (iArr106[6][0] != i101) {
            iArr106[6][0] = i101;
            o1.x[] xVarArr46 = nt.f8643f;
            int[] iArr107 = new int[2];
            iArr107[0] = 6;
            iArr107[1] = i101 == 0 ? -1 : 0;
            o1.x.B(xVarArr46, 111, iArr107);
        }
        int i102 = (b17 >> 1) & 1;
        int[][] iArr108 = this.f11197k;
        if (iArr108[6][1] != i102) {
            iArr108[6][1] = i102;
            o1.x[] xVarArr47 = nt.f8643f;
            int[] iArr109 = new int[2];
            iArr109[0] = 6;
            iArr109[1] = i102 == 0 ? -1 : 1;
            o1.x.B(xVarArr47, 111, iArr109);
        }
        int i103 = (b17 >> 2) & 1;
        int[][] iArr110 = this.f11197k;
        if (iArr110[6][2] != i103) {
            iArr110[6][2] = i103;
            o1.x[] xVarArr48 = nt.f8643f;
            int[] iArr111 = new int[2];
            iArr111[0] = 6;
            iArr111[1] = i103 == 0 ? -1 : 2;
            o1.x.B(xVarArr48, 111, iArr111);
        }
        int i104 = (b17 >> 3) & 1;
        int[][] iArr112 = this.f11197k;
        if (iArr112[6][3] != i104) {
            iArr112[6][3] = i104;
            o1.x[] xVarArr49 = nt.f8643f;
            int[] iArr113 = new int[2];
            iArr113[0] = 6;
            iArr113[1] = i104 == 0 ? -1 : 3;
            o1.x.B(xVarArr49, 111, iArr113);
        }
        int i105 = (b17 >> 4) & 1;
        int[][] iArr114 = this.f11197k;
        if (iArr114[6][4] != i105) {
            iArr114[6][4] = i105;
            o1.x[] xVarArr50 = nt.f8643f;
            int[] iArr115 = new int[2];
            iArr115[0] = 6;
            iArr115[1] = i105 == 0 ? -1 : 4;
            o1.x.B(xVarArr50, 111, iArr115);
        }
        int i106 = (b17 >> 5) & 1;
        int[][] iArr116 = this.f11197k;
        if (iArr116[6][5] != i106) {
            iArr116[6][5] = i106;
            o1.x[] xVarArr51 = nt.f8643f;
            int[] iArr117 = new int[2];
            iArr117[0] = 6;
            iArr117[1] = i106 == 0 ? -1 : 5;
            o1.x.B(xVarArr51, 111, iArr117);
        }
        int i107 = (b17 >> 6) & 1;
        int[][] iArr118 = this.f11197k;
        if (iArr118[6][6] != i107) {
            iArr118[6][6] = i107;
            o1.x[] xVarArr52 = nt.f8643f;
            int[] iArr119 = new int[2];
            iArr119[0] = 6;
            iArr119[1] = i107 == 0 ? -1 : 6;
            o1.x.B(xVarArr52, 111, iArr119);
        }
        int i108 = (b17 >> 7) & 1;
        int[][] iArr120 = this.f11197k;
        if (iArr120[6][7] != i108) {
            iArr120[6][7] = i108;
            o1.x[] xVarArr53 = nt.f8643f;
            int[] iArr121 = new int[2];
            iArr121[0] = 6;
            iArr121[1] = i108 == 0 ? -1 : 7;
            o1.x.B(xVarArr53, 111, iArr121);
        }
        byte b18 = bArr[i2 + 9];
        int i109 = b18 & 1;
        int[][] iArr122 = this.f11197k;
        if (iArr122[7][0] != i109) {
            iArr122[7][0] = i109;
            o1.x[] xVarArr54 = nt.f8643f;
            int[] iArr123 = new int[2];
            iArr123[0] = 7;
            iArr123[1] = i109 == 0 ? -1 : 0;
            o1.x.B(xVarArr54, 111, iArr123);
        }
        int i110 = (b18 >> 1) & 1;
        int[][] iArr124 = this.f11197k;
        if (iArr124[7][1] != i110) {
            iArr124[7][1] = i110;
            o1.x[] xVarArr55 = nt.f8643f;
            int[] iArr125 = new int[2];
            iArr125[0] = 7;
            iArr125[1] = i110 == 0 ? -1 : 1;
            o1.x.B(xVarArr55, 111, iArr125);
        }
        int i111 = (b18 >> 2) & 1;
        int[][] iArr126 = this.f11197k;
        if (iArr126[7][2] != i111) {
            iArr126[7][2] = i111;
            o1.x[] xVarArr56 = nt.f8643f;
            int[] iArr127 = new int[2];
            iArr127[0] = 7;
            iArr127[1] = i111 == 0 ? -1 : 2;
            o1.x.B(xVarArr56, 111, iArr127);
        }
        int i112 = (b18 >> 3) & 1;
        int[][] iArr128 = this.f11197k;
        if (iArr128[7][3] != i112) {
            iArr128[7][3] = i112;
            o1.x[] xVarArr57 = nt.f8643f;
            int[] iArr129 = new int[2];
            iArr129[0] = 7;
            iArr129[1] = i112 == 0 ? -1 : 3;
            o1.x.B(xVarArr57, 111, iArr129);
        }
        int i113 = (b18 >> 4) & 1;
        int[][] iArr130 = this.f11197k;
        if (iArr130[7][4] != i113) {
            iArr130[7][4] = i113;
            o1.x[] xVarArr58 = nt.f8643f;
            int[] iArr131 = new int[2];
            iArr131[0] = 7;
            iArr131[1] = i113 == 0 ? -1 : 4;
            o1.x.B(xVarArr58, 111, iArr131);
        }
        int i114 = (b18 >> 5) & 1;
        int[][] iArr132 = this.f11197k;
        if (iArr132[7][5] != i114) {
            iArr132[7][5] = i114;
            o1.x[] xVarArr59 = nt.f8643f;
            int[] iArr133 = new int[2];
            iArr133[0] = 7;
            iArr133[1] = i114 == 0 ? -1 : 5;
            o1.x.B(xVarArr59, 111, iArr133);
        }
        int i115 = (b18 >> 6) & 1;
        int[][] iArr134 = this.f11197k;
        if (iArr134[7][6] != i115) {
            iArr134[7][6] = i115;
            o1.x[] xVarArr60 = nt.f8643f;
            int[] iArr135 = new int[2];
            iArr135[0] = 7;
            iArr135[1] = i115 == 0 ? -1 : 6;
            o1.x.B(xVarArr60, 111, iArr135);
        }
        int i116 = (b18 >> 7) & 1;
        int[][] iArr136 = this.f11197k;
        if (iArr136[7][7] != i116) {
            iArr136[7][7] = i116;
            o1.x[] xVarArr61 = nt.f8643f;
            int[] iArr137 = new int[2];
            iArr137[0] = 7;
            iArr137[1] = i116 == 0 ? -1 : 7;
            o1.x.B(xVarArr61, 111, iArr137);
        }
        byte b19 = bArr[i2 + 10];
        int i117 = b19 & 1;
        int[][] iArr138 = this.f11197k;
        if (iArr138[8][0] != i117) {
            iArr138[8][0] = i117;
            o1.x[] xVarArr62 = nt.f8643f;
            int[] iArr139 = new int[2];
            iArr139[0] = 8;
            iArr139[1] = i117 == 0 ? -1 : 0;
            o1.x.B(xVarArr62, 111, iArr139);
        }
        int i118 = (b19 >> 1) & 1;
        int[][] iArr140 = this.f11197k;
        if (iArr140[8][1] != i118) {
            iArr140[8][1] = i118;
            o1.x[] xVarArr63 = nt.f8643f;
            int[] iArr141 = new int[2];
            iArr141[0] = 8;
            iArr141[1] = i118 == 0 ? -1 : 1;
            o1.x.B(xVarArr63, 111, iArr141);
        }
        int i119 = (b19 >> 2) & 1;
        int[][] iArr142 = this.f11197k;
        if (iArr142[8][2] != i119) {
            iArr142[8][2] = i119;
            o1.x[] xVarArr64 = nt.f8643f;
            int[] iArr143 = new int[2];
            iArr143[0] = 8;
            iArr143[1] = i119 == 0 ? -1 : 2;
            o1.x.B(xVarArr64, 111, iArr143);
        }
        int i120 = (b19 >> 3) & 1;
        int[][] iArr144 = this.f11197k;
        if (iArr144[8][3] != i120) {
            iArr144[8][3] = i120;
            o1.x[] xVarArr65 = nt.f8643f;
            int[] iArr145 = new int[2];
            iArr145[0] = 8;
            iArr145[1] = i120 == 0 ? -1 : 3;
            o1.x.B(xVarArr65, 111, iArr145);
        }
        int i121 = (b19 >> 4) & 1;
        int[][] iArr146 = this.f11197k;
        if (iArr146[8][4] != i121) {
            iArr146[8][4] = i121;
            o1.x[] xVarArr66 = nt.f8643f;
            int[] iArr147 = new int[2];
            iArr147[0] = 8;
            iArr147[1] = i121 == 0 ? -1 : 4;
            o1.x.B(xVarArr66, 111, iArr147);
        }
        int i122 = (b19 >> 5) & 1;
        int[][] iArr148 = this.f11197k;
        if (iArr148[8][5] != i122) {
            iArr148[8][5] = i122;
            o1.x[] xVarArr67 = nt.f8643f;
            int[] iArr149 = new int[2];
            iArr149[0] = 8;
            iArr149[1] = i122 == 0 ? -1 : 5;
            o1.x.B(xVarArr67, 111, iArr149);
        }
        int i123 = (b19 >> 6) & 1;
        int[][] iArr150 = this.f11197k;
        if (iArr150[8][6] != i123) {
            iArr150[8][6] = i123;
            o1.x[] xVarArr68 = nt.f8643f;
            int[] iArr151 = new int[2];
            iArr151[0] = 8;
            iArr151[1] = i123 == 0 ? -1 : 6;
            o1.x.B(xVarArr68, 111, iArr151);
        }
        int i124 = (b19 >> 7) & 1;
        int[][] iArr152 = this.f11197k;
        if (iArr152[8][7] != i124) {
            iArr152[8][7] = i124;
            o1.x[] xVarArr69 = nt.f8643f;
            int[] iArr153 = new int[2];
            iArr153[0] = 8;
            iArr153[1] = i124 == 0 ? -1 : 7;
            o1.x.B(xVarArr69, 111, iArr153);
        }
        byte b20 = bArr[i2 + 11];
        int i125 = b20 & 1;
        int[][] iArr154 = this.f11197k;
        if (iArr154[9][0] != i125) {
            iArr154[9][0] = i125;
            o1.x[] xVarArr70 = nt.f8643f;
            int[] iArr155 = new int[2];
            iArr155[0] = 9;
            iArr155[1] = i125 == 0 ? -1 : 0;
            o1.x.B(xVarArr70, 111, iArr155);
        }
        int i126 = (b20 >> 1) & 1;
        int[][] iArr156 = this.f11197k;
        if (iArr156[9][1] != i126) {
            iArr156[9][1] = i126;
            o1.x[] xVarArr71 = nt.f8643f;
            int[] iArr157 = new int[2];
            iArr157[0] = 9;
            iArr157[1] = i126 == 0 ? -1 : 1;
            o1.x.B(xVarArr71, 111, iArr157);
        }
        int i127 = (b20 >> 2) & 1;
        int[][] iArr158 = this.f11197k;
        if (iArr158[9][2] != i127) {
            iArr158[9][2] = i127;
            o1.x[] xVarArr72 = nt.f8643f;
            int[] iArr159 = new int[2];
            iArr159[0] = 9;
            iArr159[1] = i127 == 0 ? -1 : 2;
            o1.x.B(xVarArr72, 111, iArr159);
        }
        int i128 = (b20 >> 3) & 1;
        int[][] iArr160 = this.f11197k;
        if (iArr160[9][3] != i128) {
            iArr160[9][3] = i128;
            o1.x[] xVarArr73 = nt.f8643f;
            int[] iArr161 = new int[2];
            iArr161[0] = 9;
            iArr161[1] = i128 == 0 ? -1 : 3;
            o1.x.B(xVarArr73, 111, iArr161);
        }
        int i129 = bArr[i2 + 12] & 1;
        int[][] iArr162 = this.f11197k;
        if (iArr162[10][0] != i129) {
            iArr162[10][0] = i129;
            o1.x[] xVarArr74 = nt.f8643f;
            int[] iArr163 = new int[2];
            iArr163[0] = 10;
            iArr163[1] = i129 == 0 ? -1 : 0;
            o1.x.B(xVarArr74, 111, iArr163);
        }
        byte b21 = bArr[i2 + 13];
        int i130 = b21 & 1;
        int[][] iArr164 = this.f11197k;
        if (iArr164[11][0] != i130) {
            iArr164[11][0] = i130;
            o1.x[] xVarArr75 = nt.f8643f;
            int[] iArr165 = new int[2];
            iArr165[0] = 11;
            iArr165[1] = i130 == 0 ? -1 : 0;
            o1.x.B(xVarArr75, 111, iArr165);
        }
        int i131 = (b21 >> 1) & 1;
        int[][] iArr166 = this.f11197k;
        if (iArr166[11][1] != i131) {
            iArr166[11][1] = i131;
            o1.x[] xVarArr76 = nt.f8643f;
            int[] iArr167 = new int[2];
            iArr167[0] = 11;
            iArr167[1] = i131 == 0 ? -1 : 1;
            o1.x.B(xVarArr76, 111, iArr167);
        }
        byte b22 = bArr[i2 + 14];
        int i132 = b22 & 1;
        int[][] iArr168 = this.f11197k;
        if (iArr168[12][0] != i132) {
            iArr168[12][0] = i132;
            o1.x[] xVarArr77 = nt.f8643f;
            int[] iArr169 = new int[2];
            iArr169[0] = 12;
            iArr169[1] = i132 == 0 ? -1 : 0;
            o1.x.B(xVarArr77, 111, iArr169);
        }
        int i133 = (b22 >> 1) & 1;
        int[][] iArr170 = this.f11197k;
        if (iArr170[12][1] != i133) {
            iArr170[12][1] = i133;
            o1.x[] xVarArr78 = nt.f8643f;
            int[] iArr171 = new int[2];
            iArr171[0] = 12;
            iArr171[1] = i133 == 0 ? -1 : 1;
            o1.x.B(xVarArr78, 111, iArr171);
        }
        byte b23 = bArr[i2 + 15];
        int i134 = (b23 >> 3) & 1;
        int[][] iArr172 = this.f11197k;
        if (iArr172[13][3] != i134) {
            iArr172[13][3] = i134;
            o1.x[] xVarArr79 = nt.f8643f;
            int[] iArr173 = new int[2];
            iArr173[0] = 13;
            iArr173[1] = i134 == 0 ? -1 : 3;
            o1.x.B(xVarArr79, 111, iArr173);
        }
        int i135 = (b23 >> 6) & 1;
        int[][] iArr174 = this.f11197k;
        if (iArr174[13][6] != i135) {
            iArr174[13][6] = i135;
            o1.x[] xVarArr80 = nt.f8643f;
            int[] iArr175 = new int[2];
            iArr175[0] = 13;
            iArr175[1] = i135 == 0 ? -1 : 6;
            o1.x.B(xVarArr80, 111, iArr175);
        }
        int i136 = (b23 >> 7) & 1;
        int[][] iArr176 = this.f11197k;
        if (iArr176[13][7] != i136) {
            iArr176[13][7] = i136;
            o1.x[] xVarArr81 = nt.f8643f;
            int[] iArr177 = new int[2];
            iArr177[0] = 13;
            iArr177[1] = i136 == 0 ? -1 : 7;
            o1.x.B(xVarArr81, 111, iArr177);
        }
        int i137 = bArr[i2 + 16] & 1;
        int[][] iArr178 = this.f11197k;
        if (iArr178[14][0] != i137) {
            iArr178[14][0] = i137;
            o1.x[] xVarArr82 = nt.f8643f;
            int[] iArr179 = new int[2];
            iArr179[0] = 14;
            iArr179[1] = i137 == 0 ? -1 : 0;
            o1.x.B(xVarArr82, 111, iArr179);
        }
        byte b24 = bArr[i2 + 17];
        int i138 = (b24 >> 5) & 1;
        int[][] iArr180 = this.f11197k;
        if (iArr180[15][5] != i138) {
            iArr180[15][5] = i138;
            o1.x[] xVarArr83 = nt.f8643f;
            int[] iArr181 = new int[2];
            iArr181[0] = 15;
            iArr181[1] = i138 == 0 ? -1 : 5;
            o1.x.B(xVarArr83, 111, iArr181);
        }
        int i139 = (b24 >> 7) & 1;
        int[][] iArr182 = this.f11197k;
        if (iArr182[15][7] != i139) {
            iArr182[15][7] = i139;
            o1.x[] xVarArr84 = nt.f8643f;
            int[] iArr183 = new int[2];
            iArr183[0] = 15;
            iArr183[1] = i139 == 0 ? -1 : 7;
            o1.x.B(xVarArr84, 111, iArr183);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(this.f11196j);
        z.c.f18185e.d(this.f11195i);
        u0.c.f17399z.d(this.f11194h);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        if (T2(iArr, 2)) {
            if (i2 == 0) {
                f3(144, iArr[0], iArr[1]);
            } else {
                if (i2 != 1) {
                    return;
                }
                f3(198, iArr[0], iArr[1]);
            }
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return (i2 * 10) / 30;
    }

    public String c3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
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
            w0.f.f(i2);
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
                    f3(198, 161, 13);
                    break;
                case 1:
                    f3(198, 161, 14);
                    break;
                case 2:
                    f3(198, 161, 15);
                    break;
                case 3:
                    f3(198, 161, 16);
                    break;
                case 4:
                    f3(198, 161, 17);
                    break;
                case 5:
                    f3(198, 161, 18);
                    break;
                case 6:
                    f3(198, 161, 19);
                    break;
                case 7:
                    f3(198, 161, 20);
                    break;
                case 8:
                    f3(198, 161, 21);
                    break;
                case 9:
                    f3(198, 161, 22);
                    break;
            }
        }
    }

    public final void e3(byte b2) {
        if (b2 == 1 || b2 == 3 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (c3().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                return;
            }
            o1.u.f("com.syu.canbus.sync");
        }
    }

    public final void f3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }
}
