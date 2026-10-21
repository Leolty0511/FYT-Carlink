package k0;

import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class jk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6889b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6892e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6890c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6891d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6893f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6894g = {new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{43, 5}, new int[]{40, 18}, new int[]{55, 55}, new int[]{84, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6895h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6896i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6897j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6898k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jk jkVar = jk.this;
            jkVar.f6895h = 0;
            jkVar.f6896i = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, 0, 0, 0, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f6897j, 1);
        qt.z(this.f6898k);
        int i2 = nt.f8637c;
        if (i2 == 82) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8320o = 0;
            mtVar.f8314i = 0;
            return;
        }
        if (i2 != 83) {
            switch (i2) {
            }
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8314i = 1;
        mtVar2.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int i7;
        int i8;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            qt.y0(Process.MEDIA_UID, bArr[i2 + 3] - 1);
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i9 = i2 + 2;
            qt.y0(10, (bArr[i9] >> 6) & 1);
            qt.y0(13, (bArr[i9] >> 3) & 1);
            int i10 = i2 + 3;
            qt.y0(52, (bArr[i10] >> 7) & 1);
            qt.y0(11, (bArr[i10] >> 6) & 1);
            qt.y0(12, (bArr[i10] >> 3) & 3);
            int i11 = i2 + 4;
            qt.y0(16, (bArr[i11] >> 5) & 1);
            qt.y0(65, (bArr[i11] >> 4) & 1);
            int i12 = bArr[i2 + 6] & 255;
            if (i12 != 3) {
                if (i12 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i12 == 6) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i12 == 11) {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (i12 != 12) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, bArr[i2 + 7] & 255);
            qt.y0(27, bArr[i2 + 8] & 255);
            int i13 = bArr[i2 + 13] & 255;
            if (i13 == 255 || i13 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i13 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.f1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.f1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.f1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.f1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 97) {
            int i14 = i2 + 2;
            qt.y0(98, (bArr[i14] >> 4) & 15);
            qt.y0(99, (bArr[i14] >> 2) & 3);
            qt.y0(100, (bArr[i14] >> 0) & 3);
            int i15 = i2 + 3;
            qt.y0(101, (bArr[i15] >> 7) & 1);
            qt.y0(102, (bArr[i15] >> 6) & 1);
            qt.y0(103, (bArr[i15] >> 4) & 3);
            qt.y0(130, (bArr[i15] >> 3) & 1);
            int i16 = i2 + 4;
            qt.y0(104, 3 & (bArr[i16] >> 6));
            qt.y0(105, (bArr[i16] >> 5) & 1);
            qt.y0(106, (bArr[i16] >> 4) & 1);
            qt.y0(107, (bArr[i16] >> 1) & 7);
            qt.y0(108, (bArr[i2 + 5] >> 5) & 7);
            qt.y0(131, (bArr[i2 + 8] >> 5) & 7);
            return;
        }
        if (b2 == 33) {
            this.f6893f = bArr[i2 + 2] & 255;
            int i17 = 0;
            while (true) {
                iArr = this.f6894g;
                if (i17 >= iArr.length) {
                    break;
                }
                int i18 = this.f6893f;
                if (i18 == iArr[i17][0]) {
                    if (i18 == 0) {
                        break;
                    }
                    this.f6892e = i17;
                    break;
                }
                i17++;
            }
            if (this.f6893f != 0) {
                if (i17 < iArr.length) {
                    l0.b0.l0(iArr[i17][1], 0);
                    return;
                }
                return;
            } else {
                if (this.f6889b < iArr.length && (i7 = this.f6892e) != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f6892e = 255;
                return;
            }
        }
        if (b2 == 34) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 != 1) {
                if (b3 == 2 && b4 != (i8 = this.f6896i)) {
                    if (b4 > i8) {
                        for (int i19 = 0; i19 < b4 - this.f6896i; i19++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b4 < i8) {
                        for (int i20 = 0; i20 < this.f6896i - b4; i20++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f6896i = b4;
                    return;
                }
                return;
            }
            int i21 = this.f6895h;
            if (b4 != i21) {
                if (b4 > i21) {
                    for (int i22 = 0; i22 < b4 - this.f6895h; i22++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b4 < i21) {
                    for (int i23 = 0; i23 < this.f6895h - b4; i23++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f6895h = b4;
                return;
            }
            return;
        }
        switch (b2) {
            case 17:
                this.f6890c = bArr[i2 + 4] & 255;
                int i24 = 0;
                while (true) {
                    iArr2 = this.f6891d;
                    if (i24 < iArr2.length) {
                        int i25 = this.f6890c;
                        if (i25 != iArr2[i24][0]) {
                            i24++;
                        } else if (i25 != 0) {
                            this.f6889b = i24;
                        }
                    }
                }
                int i26 = this.f6890c;
                if (i26 != 3) {
                    if (i26 != 4) {
                        if (i26 == 0 || (bArr[i2 + 5] & 255) == 0) {
                            int i27 = this.f6889b;
                            if (i27 != 255 && (bArr[i2 + 5] & 255) == 0) {
                                l0.b0.l0(iArr2[i27][1], 1);
                            }
                            this.f6889b = 255;
                        } else if (i24 < iArr2.length) {
                            l0.b0.l0(iArr2[i24][1], 0);
                        }
                    } else if ((bArr[i2 + 5] & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                } else if ((bArr[i2 + 5] & 255) == 1) {
                    int i28 = h0.c.E;
                    if (i28 == 3 || i28 == 4 || i28 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b5 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                } else {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                }
                qt.y0(3, (b5 >> 5) & 1);
                qt.y0(4, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                break;
            case 19:
                qt.y0(109, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                break;
            case 20:
                qt.y0(110, bArr[i2 + 2] & 255);
                qt.y0(111, bArr[i2 + 3] & 255);
                qt.y0(112, bArr[i2 + 4] & 255);
                qt.y0(113, bArr[i2 + 5] & 255);
                qt.y0(114, bArr[i2 + 6] & 255);
                qt.y0(115, bArr[i2 + 7] & 255);
                qt.y0(116, bArr[i2 + 8] & 255);
                qt.y0(117, bArr[i2 + 9] & 255);
                qt.y0(118, bArr[i2 + 10] & 255);
                qt.y0(119, bArr[i2 + 11] & 255);
                qt.y0(120, bArr[i2 + 12] & 255);
                qt.y0(121, bArr[i2 + 13] & 255);
                qt.y0(122, bArr[i2 + 14] & 255);
                qt.y0(123, bArr[i2 + 15] & 255);
                qt.y0(124, bArr[i2 + 16] & 255);
                qt.y0(125, bArr[i2 + 17] & 255);
                qt.y0(126, bArr[i2 + 18] & 255);
                qt.y0(127, bArr[i2 + 19] & 255);
                qt.y0(128, bArr[i2 + 20] & 255);
                qt.y0(129, bArr[i2 + 21] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6897j);
        qt.q0(this.f6898k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 132) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], 255, 255);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else if (i2 == 1005 && T2(iArr, 1)) {
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 3, iArr[0] + 1);
        }
    }
}
