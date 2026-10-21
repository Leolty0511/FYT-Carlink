package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class vk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11401b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11404e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11402c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11403d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11405f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11406g = {new int[]{1, 0}, new int[]{6, 6}, new int[]{43, 5}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11407h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11408i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11409j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11410k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11411l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11412m = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, time.second, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vk.this.f11412m);
            vk vkVar = vk.this;
            vkVar.f11410k = 7;
            vkVar.f11407h = 0;
            vkVar.f11408i = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vk vkVar = vk.this;
            int i2 = vkVar.f11410k - 1;
            vkVar.f11410k = i2;
            if (i2 <= 0) {
                l0.b0.p0(vkVar.f11412m);
                vk.this.f11410k = 7;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 2, 36, 2, 37);
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
        mtVar.f8312g = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        qt.z(this.f11409j);
        u0.c.f17386m.a(this.f11411l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i8 = i2 + 2;
            qt.y0(10, (bArr[i8] >> 6) & 1);
            qt.y0(13, (bArr[i8] >> 3) & 1);
            qt.y0(11, (bArr[i8] >> 0) & 1);
            qt.y0(12, (bArr[i2 + 3] >> 4) & 1);
            int i9 = i2 + 4;
            qt.y0(16, (bArr[i9] >> 5) & 1);
            qt.y0(65, (bArr[i9] >> 4) & 1);
            int i10 = bArr[i2 + 6] & 255;
            if (i10 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i10 != 4) {
                if (i10 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i10 != 6) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i11 = bArr[i2 + 8] & 255;
            if (i11 == 254) {
                qt.y0(27, -2);
                return;
            } else if (i11 == 255) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i11);
                return;
            }
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f11402c = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f11403d;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f11402c;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f11401b = i12;
                    break;
                }
                i12++;
            }
            if (this.f11402c != 4) {
                int i14 = b4 & 255;
                if (i14 == 1) {
                    if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                    }
                } else if (i14 == 0) {
                    int i15 = this.f11401b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f11401b = 255;
                }
            } else if ((b4 & 255) == 1) {
                int i16 = h0.c.E;
                if (i16 == 3 || i16 == 4 || i16 == 5) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                } else {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 18) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i17 = i2 + 4;
                qt.y0(1, (bArr[i17] >> 6) & 1);
                qt.y0(2, (bArr[i17] >> 7) & 1);
            } else {
                int i18 = i2 + 4;
                qt.y0(2, (bArr[i18] >> 6) & 1);
                qt.y0(1, (bArr[i18] >> 7) & 1);
            }
            int i19 = i2 + 4;
            qt.y0(3, (bArr[i19] >> 5) & 1);
            qt.y0(4, (bArr[i19] >> 4) & 1);
            return;
        }
        if (b2 == 33) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f11405f = b5 & 255;
            int i20 = 0;
            while (true) {
                iArr2 = this.f11406g;
                if (i20 >= iArr2.length) {
                    break;
                }
                int i21 = this.f11405f;
                if (i21 == iArr2[i20][0]) {
                    if (i21 == 0) {
                        break;
                    }
                    this.f11404e = i20;
                    break;
                }
                i20++;
            }
            int i22 = b6 & 255;
            if (i22 == 1) {
                if (i20 < iArr2.length) {
                    l0.b0.l0(iArr2[i20][1], 0);
                    return;
                }
                return;
            } else {
                if (i22 == 0) {
                    int i23 = this.f11404e;
                    if (i23 < iArr2.length && i23 != 255) {
                        l0.b0.l0(iArr2[i23][1], 1);
                    }
                    this.f11404e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 34) {
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        if (b7 != 1) {
            if (b7 == 2 && b8 != (i7 = this.f11408i)) {
                if (b8 > i7) {
                    for (int i24 = 0; i24 < b8 - this.f11408i; i24++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b8 < i7) {
                    for (int i25 = 0; i25 < this.f11408i - b8; i25++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f11408i = b8;
                return;
            }
            return;
        }
        int i26 = this.f11407h;
        if (b8 != i26) {
            if (b8 > i26) {
                for (int i27 = 0; i27 < b8 - this.f11407h; i27++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b8 < i26) {
                for (int i28 = 0; i28 < this.f11407h - b8; i28++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f11407h = b8;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11411l);
        l0.b0.p0(this.f11412m);
        qt.q0(this.f11409j);
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
