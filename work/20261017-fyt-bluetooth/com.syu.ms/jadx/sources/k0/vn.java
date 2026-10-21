package k0;

import android.os.SystemProperties;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class vn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11438c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11439d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11440e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11441f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11442g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11443h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vn vnVar = vn.this;
            int i2 = vnVar.f11440e;
            int i3 = u0.b.f17347o;
            if (i2 != i3) {
                vnVar.f11440e = i3;
                if (i3 == 1) {
                    a.f.p().t(LogType.CANBUS, "DataSound.sCmd.appId = APP_ID_AUX");
                    y0.f.f18034b.a(5);
                    return;
                }
                a.f.p().t(LogType.CANBUS, "DataSound.sCmd.appId = " + u0.b.D);
                y0.f.f18034b.a(u0.b.D);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vn.this.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -90, 6, time.year - 1985, time.month + 1, time.monthDay, time.hour, time.minute, time.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.y(this.f11443h);
        qt.y(this.f11442g);
        qt.y(this.f11441f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11438c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f11439d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11438c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11437b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f11437b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f11437b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 33) {
            qt.y0(21, bArr[i2 + 2] & 255);
            int i11 = i2 + 3;
            int i12 = bArr[i11] & 255;
            if (i12 == 0) {
                qt.y0(28, -2);
            } else if (i12 != 255) {
                qt.y0(28, bArr[i11] & 2550);
            } else {
                qt.y0(28, -3);
            }
            byte b5 = bArr[i2 + 5];
            if (b5 != 1) {
                if (b5 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (b5 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (b5 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (b5 != 5) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                i5 = i6;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            int i13 = i2 + 6;
            qt.y0(10, (bArr[i13] >> 7) & 1);
            qt.y0(11, (bArr[i13] >> 6) & 1);
            qt.y0(13, (bArr[i13] >> 5) & 1);
            qt.y0(15, (bArr[i13] >> 4) & 1);
            qt.y0(12, (bArr[i13] >> 3) & 1);
            return;
        }
        if (b2 == 36) {
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
            return;
        }
        if (b2 != 125) {
            if (b2 != 127) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i14 = bArr[i2 + 2] & 255;
        if (i14 == 1) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i15 = i2 + 3;
                l0.c0.b((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                return;
            } else {
                int i16 = i2 + 3;
                l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                return;
            }
        }
        if (i14 == 3) {
            int i17 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
            qt.y0(1031, i17);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i17}, null, null);
            return;
        }
        if (i14 != 5) {
            if (i14 != 8) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
            return;
        }
        int i18 = bArr[i2 + 3] & 255;
        if (nt.W == 0) {
            qt.y0(2, (i18 >> 7) & 1);
            qt.y0(1, (i18 >> 6) & 1);
        } else {
            qt.y0(2, (i18 >> 6) & 1);
            qt.y0(1, (i18 >> 7) & 1);
        }
        qt.y0(4, (i18 >> 5) & 1);
        qt.y0(3, (i18 >> 4) & 1);
        qt.y0(5, (i18 >> 3) & 1);
        qt.y0(0, (i18 >> 2) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.p0(this.f11443h);
        qt.p0(this.f11442g);
        qt.p0(this.f11441f);
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
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[2] = 1;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[3] = 0;
            } else if (i4 == 65537) {
                iArr[3] = 1;
            } else if (i4 == 65538) {
                iArr[3] = 2;
            } else if (i4 == 0) {
                iArr[3] = 16;
            } else if (i4 == 1) {
                iArr[3] = 17;
            }
            int i5 = w0.d.f17797i;
            iArr[5] = (i5 >> 8) & 255;
            iArr[6] = i5 & 255;
        } else if (i3 == 2) {
            iArr[2] = 5;
        } else if (i3 != 4) {
            if (i3 == 5) {
                iArr[2] = 10;
            } else if (i3 == 8 || i3 == 9) {
                iArr[2] = 8;
                if (u0.b.U1 == 2) {
                    iArr[4] = 0;
                } else {
                    iArr[4] = 128;
                }
                a.f.p().t(LogType.CANBUS, "DataMain.sAudioPlayStatus " + u0.b.U1);
            } else {
                iArr[2] = 11;
            }
        }
        iArr[7] = (y0.f.C0 * 3) & 127;
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[7] = iArr[7] | 128;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        if (u0.b.f17347o == 1) {
            iArr[8] = u0.b.r4;
        } else {
            iArr[8] = 0;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i6 = i2 + 1;
            iArr2[i6] = iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }
}
