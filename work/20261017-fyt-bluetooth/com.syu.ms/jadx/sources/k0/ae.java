package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ae extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3285c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3286d = {new int[]{3, 2}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 3}, new int[]{7, 4}, new int[]{16, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f3287e = {new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 3}, new int[]{7, 2}, new int[]{16, 18}, new int[]{1, 7}, new int[]{2, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3288f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3289g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3290h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3291i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3292j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3293k = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.r();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[4];
            iArr[0] = 227;
            iArr[1] = 134;
            iArr[2] = 1;
            int i2 = y0.f.f18037c;
            if (i2 > 31) {
                i2 = 31;
            }
            iArr[3] = i2;
            z.k.s(iArr);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ae.this.c3(u0.b.K3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (ae.this.f3292j == millis && ae.this.f3293k == zIs24HourFormat) {
                return;
            }
            ae.this.f3292j = millis;
            ae.this.f3293k = zIs24HourFormat ? 1 : 0;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            if (nt.f8633a == 65945) {
                z.k.s(227, 166, 7, 0, 0, 0, b2, b3, 0, 0);
            } else {
                z.k.s(227, 133, 3, 1, b2, b3);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            w0.e.f17815a.a(this.f3288f, 1);
            w0.e.f17819e.a(this.f3288f, 1);
            u0.c.f17374a.a(this.f3288f, 1);
            u0.c.f17393t.a(this.f3288f, 1);
            u0.c.f17392s.a(this.f3288f, 1);
            a3(1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f3291i);
        u0.c.f17397x.a(this.f3290h, 1);
        z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 1);
        y0.g.f18094d.a(this.f3289g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4 = 0;
        if (nt.f8633a == 65945) {
            byte b2 = bArr[i2];
            if (b2 != 4) {
                if (b2 != 5) {
                    if (b2 == 36) {
                        byte b3 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (b3 >> 6) & 1);
                            qt.y0(1, (b3 >> 7) & 1);
                        } else {
                            qt.y0(1, (b3 >> 6) & 1);
                            qt.y0(2, (b3 >> 7) & 1);
                        }
                        qt.y0(3, (b3 >> 4) & 1);
                        qt.y0(4, (b3 >> 5) & 1);
                        qt.y0(5, (b3 >> 3) & 1);
                        qt.y0(0, (b3 >> 2) & 1);
                    } else if (b2 == 41) {
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_TEXTURE_ENV);
                    } else if (b2 != 48) {
                        switch (b2) {
                            case 32:
                                if (nt.a()) {
                                    byte b4 = bArr[i2 + 2];
                                    byte b5 = bArr[i2 + 3];
                                    this.f3285c = b4 & 255;
                                    int i5 = 0;
                                    while (true) {
                                        iArr2 = this.f3287e;
                                        if (i5 < iArr2.length) {
                                            int i6 = this.f3285c;
                                            if (i6 != iArr2[i5][0]) {
                                                i5++;
                                            } else if (i6 != 0) {
                                                this.f3284b = i5;
                                            }
                                        }
                                    }
                                    if ((b5 & 255) == 0) {
                                        if (i5 <= iArr2.length) {
                                            l0.b0.l0(iArr2[this.f3284b][1], 1);
                                        }
                                    } else if (i5 < iArr2.length) {
                                        l0.b0.l0(iArr2[i5][1], 0);
                                    }
                                }
                                break;
                            case 33:
                                byte b6 = bArr[i2 + 2];
                                byte b7 = bArr[i2 + 3];
                                int i7 = i2 + 4;
                                byte b8 = bArr[i7];
                                int i8 = i2 + 5;
                                byte b9 = bArr[i8];
                                byte b10 = bArr[i2 + 6];
                                qt.y0(10, (b6 >> 7) & 1);
                                qt.y0(11, (b6 >> 6) & 1);
                                qt.y0(12, (b6 >> 5) & 1);
                                qt.y0(13, (b6 >> 3) & 1);
                                qt.y0(14, (b6 >> 2) & 1);
                                qt.y0(65, (b6 >> 1) & 1);
                                qt.y0(18, (b7 >> 7) & 1);
                                qt.y0(19, (b7 >> 6) & 1);
                                qt.y0(20, (b7 >> 5) & 1);
                                qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                                int i9 = (byte) (bArr[i7] & 255);
                                int i10 = (byte) (bArr[i8] & 255);
                                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                    i9 = bArr[i8] & 255;
                                    i10 = bArr[i7] & 255;
                                }
                                if (i9 <= 0) {
                                    qt.y0(27, -2);
                                } else if (i9 >= 255) {
                                    qt.y0(27, -3);
                                } else {
                                    qt.y0(27, i9);
                                }
                                if (i10 <= 0) {
                                    qt.y0(28, -2);
                                } else if (i10 < 255) {
                                    qt.y0(28, i10);
                                } else {
                                    qt.y0(28, -3);
                                }
                                break;
                            case 34:
                                if (nt.a()) {
                                    u0.d.R2(b3(bArr[i2 + 2] & 255));
                                    u0.d.S2(b3(bArr[i2 + 3] & 255));
                                    u0.d.T2(b3(bArr[i2 + 4] & 255));
                                    u0.d.U2(b3(bArr[i2 + 5] & 255));
                                }
                                break;
                        }
                    } else {
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                    }
                } else if (nt.a()) {
                    if ((bArr[i2 + 2] & 192) != 0) {
                        qt.b(1);
                    } else {
                        qt.b(0);
                    }
                }
            } else if (nt.a()) {
                if ((bArr[i2 + 2] & 16) != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
        } else {
            byte b11 = bArr[i2];
            if (b11 == 4) {
                if (nt.a()) {
                    if ((bArr[i2 + 2] & 16) != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
                byte b12 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b12 >> 7) & 1);
                    qt.y0(1, (b12 >> 6) & 1);
                } else {
                    qt.y0(1, (b12 >> 7) & 1);
                    qt.y0(2, (b12 >> 6) & 1);
                }
                qt.y0(3, (b12 >> 5) & 1);
                qt.y0(4, (b12 >> 4) & 1);
                qt.y0(5, (b12 >> 3) & 1);
                qt.y0(0, (b12 >> 2) & 1);
            } else if (b11 != 5) {
                if (b11 == 7) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    int i11 = i2 + 4;
                    byte b15 = bArr[i11];
                    int i12 = i2 + 5;
                    byte b16 = bArr[i12];
                    byte b17 = bArr[i2 + 6];
                    qt.y0(10, (b13 >> 7) & 1);
                    qt.y0(11, (b13 >> 6) & 1);
                    qt.y0(13, (b13 >> 5) & 1);
                    qt.y0(14, (b13 >> 4) & 1);
                    qt.y0(12, (b13 >> 3) & 1);
                    qt.y0(65, (b13 >> 2) & 1);
                    qt.y0(16, (b13 >> 1) & 1);
                    qt.y0(21, b14 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i13 = bArr[i11] & 255;
                    int i14 = bArr[i12] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i13 = bArr[i12] & 255;
                        i14 = bArr[i11] & 255;
                    }
                    if (i13 <= 0) {
                        qt.y0(27, -2);
                    } else if (i13 >= 30) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, (i13 - 1) + 36);
                    }
                    if (i14 <= 0) {
                        qt.y0(28, -2);
                    } else if (i14 >= 30) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, (i14 - 1) + 36);
                    }
                    qt.y0(18, (b17 >> 6) & 1);
                    qt.y0(20, (b17 >> 5) & 1);
                    qt.y0(19, (b17 >> 4) & 1);
                } else if (b11 == 113) {
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                }
            } else if (nt.a()) {
                if ((bArr[i2 + 2] & 192) != 0) {
                    qt.b(1);
                } else {
                    qt.b(0);
                }
            }
        }
        byte b18 = bArr[i2];
        if (b18 == 1) {
            if (nt.a()) {
                byte b19 = bArr[i2 + 2];
                byte b20 = bArr[i2 + 3];
                this.f3285c = b19 & 255;
                int i15 = 0;
                while (true) {
                    iArr = this.f3286d;
                    if (i15 < iArr.length) {
                        int i16 = this.f3285c;
                        if (i16 != iArr[i15][0]) {
                            i15++;
                        } else if (i16 != 0) {
                            this.f3284b = i15;
                        }
                    }
                }
                if ((b20 & 255) != 0) {
                    if (i15 < iArr.length) {
                        l0.b0.l0(iArr[i15][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i15 <= iArr.length) {
                        l0.b0.l0(iArr[this.f3284b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b18 == 6) {
            if (nt.a()) {
                u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
                int i17 = i2 + 3;
                u0.d.S2(l0.c0.b1(bArr[i17] & 255));
                u0.d.T2(l0.c0.b1(bArr[i17] & 255));
                u0.d.U2(l0.c0.b1(bArr[i2 + 4] & 255));
                return;
            }
            return;
        }
        if (b18 != 7) {
            if (b18 != 8) {
                return;
            }
            qt.j(bArr[i2 + 4], bArr[i2 + 3], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 540);
        } else if (nt.a()) {
            int i18 = ((bArr[i2 + 7] & 255) * 10) / 2;
            if (i18 < 550) {
                i4 = 1000 - (550 - i18);
            } else if (i18 >= 550 && i18 <= 1400) {
                i4 = (i18 + 1000) - 550;
            }
            u0.d.A3(i4);
        }
    }

    @Override // k0.lt
    public void W2() {
        a3(0);
        w0.e.f17815a.d(this.f3288f);
        w0.e.f17819e.d(this.f3288f);
        u0.c.f17374a.d(this.f3288f);
        u0.c.f17393t.d(this.f3288f);
        u0.c.f17392s.d(this.f3288f);
        qt.q0(this.f3291i);
        u0.c.f17397x.d(this.f3290h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3(int i2) {
        z.k.s(227, 129, 1, i2);
    }

    public final int b3(int i2) {
        if (i2 != 0) {
            return i2 - 1;
        }
        return 15;
    }

    public final void c3(int i2) {
        if (nt.f8633a != 65945) {
            int[] iArr = new int[4];
            iArr[0] = 227;
            iArr[1] = 132;
            iArr[2] = 1;
            iArr[3] = i2 != 0 ? 0 : 1;
            z.k.s(iArr);
            return;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        iArr2[1] = 198;
        iArr2[2] = 3;
        iArr2[3] = 164;
        iArr2[4] = i2 != 0 ? 27 : 2;
        iArr2[5] = 0;
        z.k.s(iArr2);
    }
}
