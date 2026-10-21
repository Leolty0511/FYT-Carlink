package k0;

import android.media.MediaPlayer;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class g1 extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f5352j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5357f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5353b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f5354c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5355d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5356e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5358g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5359h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 6}, new int[]{7, -1}, new int[]{8, 32}, new int[]{9, 33}, new int[]{10, 5}, new int[]{11, 2}, new int[]{12, -1}, new int[]{57, 12}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5360i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, -75, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public static int a3(int i2) {
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5354c.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8313h = 1;
        mtVar.f8320o = 0;
        b3(this.f5354c.b(1, 0));
        qt.z(this.f5360i);
        if (nt.a()) {
            qt.z(l0.h0.f13058d);
            y0.g.f18094d.a(l0.h0.f13062h, 0);
            y0.g.f18095e.a(l0.h0.f13062h, 0);
            w0.e.f17815a.a(l0.h0.f13058d, 1);
            w0.e.f17819e.a(l0.h0.f13058d, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i7 = 10;
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(62, (b3 >> 2) & 1);
            qt.y0(11, (b3 >> 0) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((b4 >> 4) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            byte b6 = bArr[i2 + 6];
            if (b6 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b6 != 4) {
                if (b6 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (b6 == 6) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (b6 != 7) {
                    i4 = b6 != 10 ? 0 : 1;
                    i5 = i4;
                } else {
                    i6 = 0;
                    i4 = 1;
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
            int i8 = bArr[i2 + 7] & 255;
            qt.y0(21, i8 <= 7 ? i8 : 7);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i9 = i2 + 9;
                byte b7 = bArr[i9];
                if (b7 == -2) {
                    qt.y0(27, -2);
                } else if (b7 != -1) {
                    qt.y0(27, (bArr[i9] & 255) * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i10 = i2 + 8;
                byte b8 = bArr[i10];
                if (b8 == -2) {
                    qt.y0(28, -2);
                    return;
                } else if (b8 != -1) {
                    qt.y0(28, (bArr[i10] & 255) * 5);
                    return;
                } else {
                    qt.y0(28, -3);
                    return;
                }
            }
            int i11 = i2 + 8;
            byte b9 = bArr[i11];
            if (b9 == -2) {
                qt.y0(27, -2);
            } else if (b9 != -1) {
                qt.y0(27, (bArr[i11] & 255) * 5);
            } else {
                qt.y0(27, -3);
            }
            int i12 = i2 + 9;
            byte b10 = bArr[i12];
            if (b10 == -2) {
                qt.y0(28, -2);
                return;
            } else if (b10 != -1) {
                qt.y0(28, (bArr[i12] & 255) * 5);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
        }
        if (b2 == 65) {
            if (nt.a()) {
                if ((bArr[i2 + 12] & 255) != 0) {
                    u0.d.C2(1);
                } else {
                    u0.d.C2(0);
                }
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 17) {
            int i13 = i2 + 4;
            byte b11 = bArr[i13];
            int i14 = i2 + 5;
            byte b12 = bArr[i14];
            if (b11 == 12 && b12 == 1) {
                if (o1.u.Y0().equals("com.syu.canbus")) {
                    o1.u.k();
                } else {
                    o1.u.v();
                }
            }
            if (nt.a()) {
                byte b13 = bArr[i13];
                byte b14 = bArr[i14];
                this.f5358g = b13 & 255;
                int i15 = 0;
                while (true) {
                    iArr = this.f5359h;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    int i16 = this.f5358g;
                    if (i16 == iArr[i15][0]) {
                        if (i16 == 0) {
                            break;
                        }
                        this.f5357f = i15;
                        break;
                    }
                    i15++;
                }
                if ((b14 & 255) == 0) {
                    int i17 = this.f5357f;
                    if (i17 < iArr.length && i17 != 255) {
                        l0.b0.l0(iArr[i17][1], 1);
                    }
                    this.f5357f = 255;
                } else if (i15 < iArr.length) {
                    l0.b0.l0(iArr[i15][1], 0);
                }
                qt.l(bArr[i2 + 9], bArr[i2 + 8], true, 5200);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b15 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b15 >> 6) & 1);
                qt.y0(2, (b15 >> 7) & 1);
            } else {
                qt.y0(1, (b15 >> 7) & 1);
                qt.y0(2, (b15 >> 6) & 1);
            }
            qt.y0(3, (b15 >> 5) & 1);
            qt.y0(4, (b15 >> 4) & 1);
            qt.y0(5, (b15 >> 3) & 1);
            qt.y0(0, (b15 >> 2) & 1);
            return;
        }
        if (b2 != 22) {
            if (b2 != 23) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
            return;
        }
        qt.y0(98, bArr[i2 + 2] & 255);
        qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
        qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
        qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
        qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
        qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
        byte b16 = bArr[i2 + 14];
        qt.y0(104, b16 & 3 & 255);
        qt.y0(105, (b16 >> 2) & 3 & 255);
        qt.y0(106, (b16 >> 4) & 3 & 255);
        qt.y0(107, (b16 >> 6) & 1 & 255);
        qt.y0(108, (b16 >> 7) & 1 & 255);
        int i18 = bArr[i2 + 15] & 255;
        if (i18 < 0) {
            i7 = 0;
        } else if (i18 <= 10) {
            i7 = i18;
        }
        qt.y0(109, this.f5353b[i7]);
    }

    @Override // k0.lt
    public void W2() {
        this.f5354c.j();
        qt.q0(this.f5360i);
        qt.q0(l0.h0.f13058d);
        y0.g.f18094d.d(l0.h0.f13062h);
        y0.g.f18095e.d(l0.h0.f13062h);
        w0.e.f17815a.d(l0.h0.f13058d);
        w0.e.f17819e.d(l0.h0.f13058d);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 0 || iArr[0] != 3) {
                return;
            }
            z.k.s(227, 2, -14, 6, -1);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            b3(iArr[0]);
        }
    }

    public final void b3(int i2) {
        f5352j = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f5354c.b(1, 0);
        int i3 = f5352j;
        if (iB != i3) {
            this.f5354c.g(1, i3);
        }
    }
}
