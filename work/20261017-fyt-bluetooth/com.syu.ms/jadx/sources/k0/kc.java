package k0;

import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class kc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7208c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7209d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7210e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7211f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7212g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7213h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f7214i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7215j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7216k = new f();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7217l = new g();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7218m = new h();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f7219n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f7220o = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kc.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kc.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 1, 39);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
                z.k.s(227, 144, 4, 38, 0, 0, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(kc.this.f7216k);
            kc.this.f7214i = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kc kcVar = kc.this;
            byte b2 = (byte) (kcVar.f7214i - 1);
            kcVar.f7214i = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(kcVar.f7216k);
                kc.this.f7214i = (byte) 5;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kc.this.e3(u0.b.K3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (kc.this.f7219n == millis && kc.this.f7220o == i2) {
                return;
            }
            kc.this.f7219n = millis;
            kc.this.f7220o = i2;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 198, 8, 1, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | b2) & 255), (byte) (b3 & 255), (byte) (b4 & 255), (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | 64));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f7212g);
            qt.z(this.f7210e);
            y0.g.f18094d.a(this.f7211f, 1);
            y0.g.f18095e.a(this.f7211f, 1);
            w0.e.f17815a.a(this.f7210e, 1);
            qt.y(this.f7213h);
            u0.c.f17386m.a(this.f7215j, 1);
        }
        if (nt.f8637c != 1) {
            mt mtVar = this.f7886a;
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8320o = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8307b = 0;
            mtVar2.f8308c = 0;
            mtVar2.f8309d = 0;
            mtVar2.f8320o = 0;
        }
        qt.z(this.f7218m);
        u0.c.f17397x.d(this.f7217l);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.o(bArr[i2 + 2], false, 100);
        }
        if (b2 == 39) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                int i4 = b3 & 128;
                int i5 = b3 & 255;
                u0.d.A3(i4 != 0 ? 1000 - ((255 - (i5 - 1)) * 10) : (i5 * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f7208c = b4 & 255;
                    int i6 = 0;
                    while (true) {
                        iArr = this.f7209d;
                        if (i6 < iArr.length) {
                            int i7 = this.f7208c;
                            if (i7 != iArr[i6][0]) {
                                i6++;
                            } else if (i7 != 0) {
                                this.f7207b = i6;
                            }
                        }
                    }
                    int i8 = this.f7208c;
                    if (i8 != 50) {
                        if (i8 != 129 && i8 != 138) {
                            switch (i8) {
                                case 59:
                                case 61:
                                    break;
                                case 60:
                                    break;
                                case 62:
                                    for (int i9 = 0; i9 < (b5 & 255); i9++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                case 63:
                                    for (int i10 = 0; i10 < (b5 & 255); i10++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                                default:
                                    if ((b5 & 255) == 0) {
                                        int i11 = this.f7207b;
                                        if (i11 < iArr.length && i11 != 255) {
                                            l0.b0.l0(iArr[i11][1], 1);
                                        }
                                        this.f7207b = 255;
                                    } else if (i6 < iArr.length) {
                                        l0.b0.l0(iArr[i6][1], 0);
                                    }
                                    break;
                            }
                        }
                        for (int i12 = 0; i12 < (b5 & 255); i12++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    }
                    for (int i13 = 0; i13 < (b5 & 255); i13++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(53, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(14, (b6 >> 2) & 1);
                qt.y0(65, (b6 >> 0) & 1);
                byte b7 = bArr[i2 + 3];
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, (b7 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(d3(bArr[i2 + 2] & 255));
                    u0.d.S2(d3(bArr[i2 + 3] & 255));
                    u0.d.T2(d3(bArr[i2 + 4] & 255));
                    u0.d.U2(d3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i14 = i2 + 2;
                    int i15 = bArr[i14] & 255;
                    int i16 = i2 + 3;
                    int i17 = bArr[i16] & 255;
                    int i18 = i2 + 4;
                    int i19 = bArr[i18] & 255;
                    int i20 = i2 + 5;
                    int i21 = bArr[i20] & 255;
                    if (i15 == 0 && i17 == 0 && i19 == 0 && i21 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i15;
                    l0.c0.f13014h = i17;
                    l0.c0.f13015i = i19;
                    l0.c0.f13016j = i21;
                    u0.d.D2(d3(bArr[i14] & 255));
                    u0.d.E2(d3(bArr[i16] & 255));
                    u0.d.F2(d3(bArr[i18] & 255));
                    u0.d.G2(d3(bArr[i20] & 255));
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f7212g);
            qt.q0(this.f7210e);
            y0.g.f18094d.d(this.f7211f);
            y0.g.f18095e.d(this.f7211f);
            w0.e.f17815a.d(this.f7210e);
            qt.p0(this.f7213h);
            u0.c.f17386m.d(this.f7215j);
            l0.b0.p0(this.f7216k);
        }
        qt.q0(this.f7218m);
        u0.c.f17397x.d(this.f7217l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17797i;
                int i4 = w0.d.f17798j & 255;
                int i5 = w0.d.f17796h;
                if (i5 == 65536) {
                    iArr[4] = 1;
                } else if (i5 == 65537) {
                    iArr[4] = 2;
                } else if (i5 == 65538) {
                    iArr[4] = 3;
                } else if (i5 == 0) {
                    iArr[4] = 17;
                } else if (i5 == 1) {
                    iArr[4] = 18;
                }
                iArr[5] = i3 & 255;
                iArr[6] = (i3 >> 8) & 255;
                iArr[7] = (i4 % 6) + 1;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 2:
            case 5:
            case 6:
            case 7:
                iArr[4] = 0;
                iArr[5] = 0;
                iArr[6] = 0;
                iArr[7] = 0;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                int i6 = o0.e.C;
                iArr[4] = (i6 >> 8) & 255;
                iArr[5] = i6 & 255;
                iArr[6] = 0;
                int i7 = o0.e.f16794r;
                iArr[7] = i7 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i7 % 60;
                break;
            case 8:
            case 9:
                int i8 = u0.b.s3;
                iArr[4] = (i8 >> 8) & 255;
                iArr[5] = i8 & 255;
                iArr[6] = 0;
                int i9 = u0.b.t3;
                iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i9 % 60;
                break;
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
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 34;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 19;
                break;
        }
    }

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final int d3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final void e3(int i2) {
        if (i2 == 1 || i2 == 2) {
            z.k.s(227, 198, 8, 2, 1, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 198, 8, 2, 5, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, 198, 8, 2, 6, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 6) {
            z.k.s(227, 198, 8, 2, 7, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 7) {
            z.k.s(227, 198, 8, 2, 8, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 9) {
            z.k.s(227, 198, 8, 2, 3, 0, 0, 0, 0, 0, 0);
        } else if (i2 != 11) {
            z.k.s(227, 198, 8, 2, 2, 0, 0, 0, 0, 0, 0);
        } else {
            z.k.s(227, 198, 8, 2, 4, 0, 0, 0, 0, 0, 0);
        }
    }
}
