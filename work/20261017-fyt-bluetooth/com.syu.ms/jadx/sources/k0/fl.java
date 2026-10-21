package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class fl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5241c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5242d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}, new int[]{16, 16}, new int[]{48, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5243e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5244f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5245g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5246h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(fl.this.f5245g);
            fl.this.f5243e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fl flVar = fl.this;
            int i2 = flVar.f5243e - 1;
            flVar.f5243e = i2;
            if (i2 <= 0) {
                l0.b0.p0(flVar.f5245g);
                fl.this.f5243e = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 721342:
                        z.k.s(227, 2, 36, 1, 50);
                        break;
                    case 786878:
                        z.k.s(227, 2, 36, 2, 50);
                        break;
                    case 3539390:
                        z.k.s(227, 2, 36, 3, 50);
                        break;
                    case 3604926:
                        z.k.s(227, 2, 36, 4, 50);
                        break;
                    case 3670462:
                        z.k.s(227, 2, 36, 5, 50);
                        break;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
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
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        qt.z(this.f5246h);
        u0.c.f17386m.a(this.f5244f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            if (((bArr[i2 + 2] >> 1) & 1) == 1) {
                int i7 = i2 + 4;
                o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i7] >> 0) & 1) << 3) & 8) | ((((bArr[i7] >> 1) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
                l0.c0.N1((bArr[i7] >> 0) & 1, (bArr[i7] >> 1) & 1, 0);
                return;
            }
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            byte b8 = bArr[i2 + 8];
            byte b9 = bArr[i2 + 9];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(68, (b4 >> 5) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(36, (b4 >> 3) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            if (b6 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b6 == 5) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (b6 == 6) {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            } else if (b6 != 11) {
                if (b6 != 12) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i4 = 0;
                    i6 = 1;
                }
                i5 = i6;
            } else {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            }
            qt.y0(19, i4);
            qt.y0(20, i6);
            qt.y0(18, i5);
            qt.y0(21, b7 & 255);
            int i8 = b8 & 255;
            if (i8 == 254) {
                qt.y0(27, -2);
                return;
            } else if (i8 == 255) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i8 * 5);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.Y0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.Y0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.Y0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.Y0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 17) {
            if (b2 != 18) {
                return;
            }
            byte b10 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            return;
        }
        byte b11 = bArr[i2 + 4];
        byte b12 = bArr[i2 + 5];
        this.f5241c = b11 & 255;
        int i9 = 0;
        while (true) {
            iArr = this.f5242d;
            if (i9 >= iArr.length) {
                break;
            }
            int i10 = this.f5241c;
            if (i10 == iArr[i9][0]) {
                if (i10 == 0) {
                    break;
                }
                this.f5240b = i9;
                break;
            }
            i9++;
        }
        int i11 = this.f5241c;
        if (i11 != 3) {
            if (i11 != 4) {
                int i12 = b12 & 255;
                if (i12 == 1) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                    }
                } else if (i12 == 0) {
                    int i13 = this.f5240b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f5240b = 255;
                }
            } else if ((b12 & 255) == 1) {
                int i14 = nt.f8633a;
                if (i14 != 3539390 && i14 != 3604926) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                } else if (h0.c.E == 4 || u0.i.l3().r3()) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                } else {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
            }
        } else if ((b12 & 255) == 1) {
            int i15 = nt.f8633a;
            if (i15 == 3539390 || i15 == 3604926) {
                int i16 = h0.c.E;
                if (i16 == 3 || i16 == 4 || i16 == 5 || u0.i.l3().r3()) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                } else {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
            } else {
                l0.b0.l0(12, 0);
                l0.b0.l0(12, 1);
            }
        }
        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5246h);
        u0.c.f17386m.d(this.f5244f);
        l0.b0.p0(this.f5245g);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 2, 61, iArr[0], iArr[1]);
    }
}
