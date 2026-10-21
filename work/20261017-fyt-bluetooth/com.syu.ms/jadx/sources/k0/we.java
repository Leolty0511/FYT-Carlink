package k0;

import android.net.dhcp.DhcpPacket;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class we extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11723c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11726f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11724d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f11725e = {new int[]{1, 25}, new int[]{2, 34}, new int[]{3, 35}, new int[]{8, -1}, new int[]{23, 3}, new int[]{24, 4}, new int[]{77, 33}, new int[]{37, 65}, new int[]{38, 73}, new int[]{60, 66}, new int[]{78, 32}, new int[]{71, 74}, new int[]{72, 75}, new int[]{79, -1}, new int[]{80, -1}, new int[]{81, -1}, new int[]{82, -1}, new int[]{83, 12}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11727g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11728h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11729i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11730j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f11731k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f11732l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11733m = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            we weVar = we.this;
            weVar.f11727g = 0;
            weVar.f11728h = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            we.this.a3(u0.b.K3);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f11736a;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f11736a = time;
            time.setToNow();
            long millis = this.f11736a.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (we.this.f11732l == millis && we.this.f11733m == zIs24HourFormat) {
                return;
            }
            we.this.f11732l = millis;
            we.this.f11733m = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f11736a;
            z.k.s(227, 10, -53, 0, (byte) time2.hour, (byte) time2.minute, 0, 0, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        u0.c.f17397x.a(this.f11730j, 1);
        qt.z(this.f11731k);
        z.k.s(227, 2, 36, 9, 4);
        u0.c.f17386m.a(this.f11729i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 == -122) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            byte b10 = bArr[i2 + 9];
            qt.y0(99, b4 & 255);
            qt.y0(100, b5 & 255);
            qt.y0(101, (((b3 >> 4) & 255) << 8) | (b6 & 255));
            qt.y0(102, o1.p0.c(b7, b8));
            qt.y0(104, b9 & 255);
            qt.y0(103, b10 & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 52) {
            qt.y0(109, o1.p0.c(bArr[i2 + 4], bArr[i2 + 5]));
            return;
        }
        if (b2 == 33) {
            int i9 = i2 + 2;
            byte b11 = bArr[i9];
            int i10 = i2 + 3;
            byte b12 = bArr[i10];
            if (b11 == 8 && b12 == 1) {
                int i11 = this.f11726f == 0 ? 1 : 0;
                this.f11726f = i11;
                qt.y0(105, i11);
            }
            if (nt.a()) {
                byte b13 = bArr[i9];
                byte b14 = bArr[i10];
                this.f11723c = b13 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f11725e;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    int i13 = this.f11723c;
                    if (i13 == iArr[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f11722b = i12;
                        break;
                    }
                    i12++;
                }
                if ((b14 & 255) != 0) {
                    if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                        return;
                    }
                    return;
                }
                int i14 = this.f11722b;
                if (i14 < iArr.length) {
                    i4 = 255;
                    if (i14 != 255) {
                        l0.b0.l0(iArr[i14][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f11722b = i4;
                return;
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                if (b15 == 1) {
                    int i15 = this.f11727g;
                    if (b16 != i15) {
                        if (b16 > i15) {
                            for (int i16 = 0; i16 < b16 - this.f11727g; i16++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b16 < i15) {
                            for (int i17 = 0; i17 < this.f11727g - b16; i17++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f11727g = b16;
                        return;
                    }
                    return;
                }
                if ((b15 == 2 || b15 == 3 || b15 == 4 || b15 == 5) && b16 != (i5 = this.f11728h)) {
                    if (b16 > i5) {
                        for (int i18 = 0; i18 < b16 - this.f11728h; i18++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b16 < i5) {
                        for (int i19 = 0; i19 < this.f11728h - b16; i19++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f11728h = b16;
                    return;
                }
                return;
            }
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            int i20 = i2 + 4;
            int i21 = i2 + 5;
            qt.y0(111, ((bArr[i20] << 8) & 65280) | (bArr[i21] & 255));
            qt.y0(1032, ((bArr[i20] << 8) & 65280) | (bArr[i21] & 255));
            qt.y0(110, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        byte b17 = bArr[i2 + 2];
        byte b18 = bArr[i2 + 3];
        byte b19 = bArr[i2 + 4];
        byte b20 = bArr[i2 + 5];
        byte b21 = bArr[i2 + 6];
        byte b22 = bArr[i2 + 7];
        byte b23 = bArr[i2 + 8];
        byte b24 = bArr[i2 + 9];
        qt.y0(10, (b17 >> 6) & 1);
        qt.y0(13, (b17 >> 3) & 1);
        qt.y0(11, (b18 >> 6) & 1);
        qt.y0(12, (b18 >> 4) & 1);
        qt.y0(14, (b18 >> 2) & 1);
        qt.y0(16, (b19 >> 5) & 1);
        qt.y0(65, (b19 >> 4) & 1);
        int i22 = b21 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i22 != 3) {
            if (i22 == 12) {
                i6 = 0;
                i8 = 1;
            } else if (i22 == 5) {
                i7 = 0;
                i6 = 1;
                i8 = 1;
            } else if (i22 != 6) {
                i6 = 0;
                i8 = 0;
            } else {
                i8 = 0;
                i7 = 0;
                i6 = 1;
            }
            i7 = i8;
        } else {
            i6 = 0;
            i7 = 0;
            i8 = 1;
        }
        qt.y0(19, i6);
        qt.y0(20, i8);
        qt.y0(18, i7);
        qt.y0(77, i22);
        qt.y0(21, b22 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i23 = b23 & 255;
        if (b23 == -2) {
            qt.y0(27, -2);
        } else if (b23 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i23);
        }
        int i24 = b24 & 255;
        if (b24 == -2) {
            qt.y0(28, -2);
        } else if (b24 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i24);
        }
        if (nt.a()) {
            int i25 = (((bArr[i2 + 13] & 255) & 255) * 10) / 2;
            int i26 = (i25 < 400 || i25 > 1250) ? 1000 - (400 - i25) : (i25 + 1000) - 400;
            if (i26 > 600) {
                u0.d.A3(i26);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17397x.d(this.f11730j);
        u0.c.f17386m.d(this.f11729i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }
}
