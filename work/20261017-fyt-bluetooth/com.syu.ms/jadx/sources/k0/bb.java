package k0;

import android.app.ActivityManager;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class bb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3605c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3606d = {new int[]{1, 3}, new int[]{2, 28}, new int[]{3, 66}, new int[]{4, 4}, new int[]{5, 27}, new int[]{6, 65}, new int[]{7, 67}, new int[]{8, 68}, new int[]{9, 0}, new int[]{10, 74}, new int[]{11, 22}, new int[]{12, 75}, new int[]{13, 56}, new int[]{14, 56}, new int[]{15, 1}, new int[]{16, 1}, new int[]{17, 12}, new int[]{18, 54}, new int[]{49, 7}, new int[]{50, 8}, new int[]{51, 33}, new int[]{52, 32}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3607e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3608f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3609g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3610h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3611i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f3612j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3613k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3614l = new f();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3615m = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            if (o1.i.o().f16886b) {
                z.k.s(227, 137, 3, 1, l0.c0.L1((byte) time.hour), l0.c0.L1((byte) time.minute));
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bb.this.f3609g == 0) {
                bb.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bb bbVar = bb.this;
            if (bbVar.f3609g != 4) {
                bbVar.f3609g = 4;
                l0.b0.p0(bbVar.f3611i);
                l0.b0.b(bb.this.f3611i);
            }
            if (bb.this.f3609g > 0) {
                l0.c0.x0();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bb bbVar = bb.this;
            int i2 = bbVar.f3609g;
            if (i2 > 0) {
                bbVar.f3609g = i2 - 1;
            }
            if (bbVar.f3609g == 0) {
                z.k.s(227, 134, 2, 128, 0);
                l0.b0.p0(bb.this.f3611i);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bb.this.f3614l);
            bb.this.f3612j = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bb bbVar = bb.this;
            byte b2 = (byte) (bbVar.f3612j - 1);
            bbVar.f3612j = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
            } else {
                l0.b0.p0(bbVar.f3614l);
                bb.this.f3612j = (byte) 5;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 13) {
                bb.this.h3(10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0080  */
    public static void a3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 8 || i2 == 10) {
                int[] iArr = {133, 7, 0, 0, l0.c0.L1((u0.b.t3 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60), l0.c0.L1((u0.b.t3 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60), 0, 0, l0.c0.L1(u0.b.r3)};
                int[] iArr2 = new int[10];
                iArr2[0] = 227;
                while (i3 < 9) {
                    int i4 = i3 + 1;
                    iArr2[i4] = iArr[i3];
                    i3 = i4;
                }
                z.k.s(iArr2);
                return;
            }
            return;
        }
        int[] iArr3 = new int[7];
        int i5 = w0.d.f17798j;
        iArr3[0] = 131;
        iArr3[1] = 5;
        int i6 = w0.d.f17796h;
        if (i6 != 0 && i6 != 1) {
            switch (i6) {
                case 65536:
                    iArr3[2] = 1;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                    break;
                case 65537:
                    iArr3[2] = 2;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                    break;
                case 65538:
                    iArr3[2] = 2;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                    break;
            }
        } else {
            iArr3[2] = 3;
        }
        int i7 = w0.d.f17797i;
        iArr3[3] = (i7 >> 8) & 255;
        iArr3[4] = i7 & 255;
        iArr3[5] = (i5 % 6) + 1;
        int[] iArr4 = new int[8];
        iArr4[0] = 227;
        while (i3 < 7) {
            int i8 = i3 + 1;
            iArr4[i8] = iArr3[i3];
            i3 = i8;
        }
        z.k.s(iArr4);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17374a.a(this.f3615m, 1);
        u0.c.f17386m.a(this.f3613k, 1);
        int i2 = nt.f8637c;
        if (i2 == 0) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar = this.f7886a;
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8320o = 0;
            return;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        return;
                    }
                }
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 1;
            mtVar2.f8320o = 0;
            l0.b0.b(this.f3608f);
            y0.g.f18094d.a(this.f3610h, 1);
            y0.g.f18095e.a(this.f3610h, 1);
            qt.z(this.f3607e);
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 0;
        mtVar3.f8312g = 1;
        mtVar3.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        boolean z2 = false;
        if (b2 == 9) {
            qt.m(bArr[i2 + 2], 0, 128, true, 120);
        }
        if (b2 == 20) {
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            int i8 = i2 + 2;
            qt.y0(108, (bArr[i8] >> 5) & 3);
            qt.y0(109, (bArr[i8] >> 4) & 1);
            qt.y0(110, (bArr[i8] >> 2) & 1);
            int i9 = i2 + 3;
            qt.y0(111, (bArr[i9] >> 6) & 3);
            qt.y0(112, (bArr[i9] >> 0) & 15);
            int i10 = i2 + 4;
            qt.y0(113, (bArr[i10] >> 7) & 1);
            qt.y0(114, (bArr[i10] >> 6) & 1);
            qt.y0(115, (bArr[i10] >> 5) & 1);
            qt.y0(116, (bArr[i10] >> 3) & 3);
            qt.y0(117, (bArr[i10] >> 1) & 3);
            qt.y0(118, (bArr[i10] >> 0) & 1);
            return;
        }
        if (b2 == 113) {
            qt.L(String.format("%X", Byte.valueOf(bArr[2])) + String.format("%X", Byte.valueOf(bArr[3])) + "-20" + String.format("%2X", Byte.valueOf(bArr[4])) + String.format("%2X", Byte.valueOf(bArr[5])) + String.format("%2X", Byte.valueOf(bArr[6])) + "-V" + String.format("%X", Byte.valueOf(bArr[8])) + String.format("%X", Byte.valueOf(bArr[9])) + String.format("%X", Byte.valueOf(bArr[10])));
            return;
        }
        switch (b2) {
            case 1:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                if (!nt.a()) {
                    if (b5 == 1) {
                        switch (b4) {
                            case 10:
                            case 12:
                                if (!o1.u.T(a.b.f28p)) {
                                    o1.u.x0();
                                    break;
                                }
                                break;
                            case 11:
                                if (o1.u.X()) {
                                    a.i.A();
                                } else {
                                    o1.u.v();
                                }
                                break;
                            case 13:
                            case 14:
                                o1.u.W0();
                                break;
                            case 15:
                            case 16:
                                f3();
                                break;
                        }
                    }
                } else {
                    this.f3605c = b4 & 255;
                    int i11 = 0;
                    while (true) {
                        iArr = this.f3606d;
                        if (i11 < iArr.length) {
                            int i12 = this.f3605c;
                            if (i12 != iArr[i11][0]) {
                                i11++;
                            } else if (i12 != 0) {
                                this.f3604b = i11;
                            }
                        }
                    }
                    int i13 = this.f3605c;
                    if (i13 != 15 && i13 != 16) {
                        switch (i13) {
                            case 49:
                                for (int i14 = 0; i14 < (b5 & 255); i14++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 50:
                                for (int i15 = 0; i15 < (b5 & 255); i15++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 51:
                                for (int i16 = 0; i16 < (b5 & 255); i16++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            case 52:
                                for (int i17 = 0; i17 < (b5 & 255); i17++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            default:
                                if ((b5 & 255) != 0) {
                                    if (i11 < iArr.length) {
                                        l0.b0.l0(iArr[i11][1], 0);
                                    }
                                } else if (i11 <= iArr.length) {
                                    l0.b0.l0(iArr[this.f3604b][1], 1);
                                }
                                break;
                        }
                    } else {
                        f3();
                        break;
                    }
                }
                break;
            case 2:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                byte b10 = bArr[i2 + 6];
                byte b11 = bArr[i2 + 7];
                qt.y0(100, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i18 = (b7 >> 4) & 15;
                if (i18 >= 10) {
                    i18 = 0;
                }
                int i19 = b7 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i19 >= 10) {
                    i19 = 0;
                }
                qt.y0(101, (i18 * 10) + i19);
                int i20 = (b8 >> 4) & 15;
                if (i20 >= 10) {
                    i20 = 0;
                }
                int i21 = b8 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i21 >= 10) {
                    i21 = 0;
                }
                int i22 = (i20 * 10) + i21;
                int i23 = (b9 >> 4) & 15;
                if (i23 >= 10) {
                    i23 = 0;
                }
                int i24 = b9 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i24 >= 10) {
                    i24 = 0;
                }
                qt.y0(102, i22 + (i23 * 10) + i24);
                qt.y0(103, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(104, (b11 >> 6) & 3);
                qt.y0(105, (b11 >> 4) & 3);
                break;
            case 3:
                qt.y0(99, bArr[i2 + 2] & 63);
                break;
            case 4:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                int i25 = i2 + 4;
                byte b14 = bArr[i25];
                int i26 = i2 + 5;
                byte b15 = bArr[i26];
                byte b16 = bArr[i2 + 6];
                qt.y0(11, (b12 >> 7) & 1);
                qt.y0(13, (b12 >> 6) & 1);
                qt.y0(14, (b12 >> 5) & 1);
                qt.y0(65, (b12 >> 4) & 1);
                qt.y0(16, (b12 >> 3) & 1);
                qt.y0(12, (b12 >> 1) & 3);
                int i27 = (b13 >> 4) & 15;
                if (i27 != 1) {
                    if (i27 == 2) {
                        i4 = 0;
                        i5 = 0;
                        i7 = 1;
                    } else if (i27 == 3) {
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                    } else if (i27 == 4) {
                        i4 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                    } else if (i27 != 5) {
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                    } else {
                        i5 = 0;
                        i7 = 0;
                        i6 = 0;
                        i4 = 1;
                    }
                    i6 = i7;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                }
                qt.y0(15, i4);
                qt.y0(18, i5);
                qt.y0(19, i7);
                qt.y0(20, i6);
                qt.y0(77, i27);
                qt.y0(21, b13 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b14 = bArr[i26];
                    b15 = bArr[i25];
                }
                byte b17 = b14;
                byte b18 = b15;
                if ((b17 > 0) && (b17 <= 29)) {
                    qt.y0(27, (b17 & 255) + 35);
                } else {
                    qt.y0(27, -1);
                }
                if ((b18 > 0) && (b18 <= 29)) {
                    qt.y0(28, (b18 & 255) + 35);
                } else {
                    qt.y0(28, -1);
                }
                if (nt.a()) {
                    int i28 = b16 & 255;
                    if (i28 == 128) {
                        u0.d.A3(0);
                    } else {
                        if (i28 > 128) {
                            i28 = 256 - i28;
                            z2 = true;
                        }
                        u0.d.A3(z2 ? 1000 - (i28 * 10) : (i28 * 10) + 1000);
                    }
                }
                break;
            case 5:
                qt.y0(119, o1.p0.c(bArr[i2 + 2], bArr[i2 + 3]));
                break;
            case 6:
                qt.y0(121, o1.p0.c(bArr[i2 + 2], bArr[i2 + 3]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(this.f3615m);
        u0.c.f17386m.d(this.f3613k);
        l0.b0.p0(this.f3614l);
        l0.b0.p0(this.f3608f);
        y0.g.f18094d.d(this.f3610h);
        y0.g.f18095e.d(this.f3610h);
        qt.q0(this.f3607e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            h3(iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                g3(iArr[0]);
            }
        } else if (i2 == 2 && T2(iArr, 2)) {
            z.k.s(227, 151, 2, iArr[0], iArr[1]);
        }
    }

    public String e3() {
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

    public void f3() {
        if (e3().startsWith("com.syu.carinfo.hc.tianlai.ActivityTianLaiCarInfo")) {
            a.i.A();
        } else {
            o1.u.f("com.syu.carinfo.hc.tianlai.ActivityTianLaiCarInfo");
        }
    }

    public final void g3(int i2) {
        z.k.s(227, 133, 2, i2, 1);
        SystemClock.sleep(100L);
        z.k.s(227, 133, 2, i2, 0);
    }

    public final void h3(int i2) {
        z.k.s(227, 130, 2, i2, 1);
        SystemClock.sleep(100L);
        z.k.s(227, 130, 2, i2, 0);
    }
}
