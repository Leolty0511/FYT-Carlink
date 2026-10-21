package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class yj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12530c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12531d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12532e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12533f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12534g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12535h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(yj.this.f12535h);
            yj.this.f12533f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yj yjVar = yj.this;
            int i2 = yjVar.f12533f - 1;
            yjVar.f12533f = i2;
            if (i2 <= 0) {
                l0.b0.p0(yjVar.f12535h);
                yj.this.f12533f = 5;
            }
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 1, 129, 1);
                switch (nt.f8633a) {
                    case 3801532:
                        z.k.s(227, 2, 36, 7, 49);
                        break;
                    case 3867068:
                        z.k.s(227, 2, 36, 8, 49);
                        break;
                    case 6029755:
                        z.k.s(227, 2, 36, 1, 49);
                        break;
                    case 9634235:
                        z.k.s(227, 2, 36, 2, 49);
                        break;
                    case 9699771:
                        z.k.s(227, 2, 36, 3, 49);
                        break;
                    case 9765307:
                        z.k.s(227, 2, 36, 4, 49);
                        break;
                    case 9830843:
                        z.k.s(227, 2, 36, 5, 49);
                        break;
                    case 9896379:
                        z.k.s(227, 2, 36, 6, 49);
                        break;
                }
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f12534g, 1);
        qt.z(this.f12532e);
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
        }
        if (b2 == 49) {
            int i7 = i2 + 2;
            qt.y0(10, (bArr[i7] >> 6) & 1);
            qt.y0(13, (bArr[i7] >> 3) & 1);
            int i8 = i2 + 3;
            qt.y0(11, (bArr[i8] >> 6) & 1);
            qt.y0(12, (bArr[i8] >> 4) & 1);
            int i9 = i2 + 4;
            qt.y0(16, (bArr[i9] >> 5) & 1);
            qt.y0(65, (bArr[i9] >> 4) & 1);
            int i10 = i2 + 6;
            qt.y0(77, bArr[i10] & 255);
            int i11 = bArr[i10] & 255;
            if (i11 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i11 != 12) {
                if (i11 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i11 != 6) {
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
            qt.y0(27, bArr[i2 + 8] & 255);
            int i12 = bArr[i2 + 13] & 255;
            if (i12 == 255 || i12 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i12 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.j1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.j1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.j1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.j1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 72) {
            int i13 = i2 + 2;
            qt.y0(105, (bArr[i13] >> 7) & 1);
            qt.y0(106, (bArr[i13] >> 6) & 1);
            int i14 = i2 + 3;
            qt.y0(117, (bArr[i14] >> 7) & 1);
            qt.y0(118, (bArr[i14] >> 6) & 1);
            qt.y0(119, (bArr[i14] >> 5) & 1);
            qt.y0(120, (bArr[i14] >> 4) & 1);
            qt.y0(121, (bArr[i14] >> 3) & 1);
            qt.y0(107, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(108, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(109, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(110, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(111, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(112, bArr[i2 + 14] & 255);
            qt.y0(113, bArr[i2 + 15] & 255);
            qt.y0(114, bArr[i2 + 16] & 255);
            qt.y0(115, bArr[i2 + 17] & 255);
            qt.y0(116, bArr[i2 + 18] & 255);
            return;
        }
        if (b2 == 97) {
            int i15 = i2 + 2;
            qt.y0(98, (bArr[i15] >> 0) & 1);
            qt.y0(99, (bArr[i15] >> 1) & 1);
            return;
        }
        switch (b2) {
            case 17:
                this.f12530c = bArr[i2 + 4] & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f12531d;
                    if (i16 < iArr.length) {
                        int i17 = this.f12530c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f12529b = i16;
                        }
                    }
                }
                int i18 = this.f12530c;
                if (i18 != 8) {
                    if (i18 != 9) {
                        if (i18 == 0 || (bArr[i2 + 5] & 255) == 0) {
                            int i19 = this.f12529b;
                            if (i19 != 255 && (bArr[i2 + 5] & 255) == 0) {
                                l0.b0.l0(iArr[i19][1], 1);
                            }
                            this.f12529b = 255;
                        } else if (i16 < iArr.length) {
                            l0.b0.l0(iArr[i16][1], 0);
                        }
                    } else if ((bArr[i2 + 5] & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        } else {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                    }
                } else if ((bArr[i2 + 5] & 255) == 1) {
                    int i20 = h0.c.E;
                    if (i20 == 3 || i20 == 4 || i20 == 5) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b3 = bArr[i2 + 4];
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
                break;
            case 19:
                qt.y0(100, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(103, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(104, bArr[i2 + 10] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12534g);
        l0.b0.p0(this.f12535h);
        qt.q0(this.f12532e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 4, 111, iArr[0], iArr[1], 255, 255);
    }
}
