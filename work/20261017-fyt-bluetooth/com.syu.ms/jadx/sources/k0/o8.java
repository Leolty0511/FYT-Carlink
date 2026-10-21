package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class o8 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8761c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8762d = {new int[]{17, 2}, new int[]{18, 35}, new int[]{19, 34}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 13}, new int[]{129, 25}, new int[]{130, 11}, new int[]{131, 5}, new int[]{132, 2}, new int[]{133, 21}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 55}, new int[]{137, 12}, new int[]{138, 1}, new int[]{139, 38}, new int[]{140, 6}, new int[]{141, 76}, new int[]{142, 13}, new int[]{161, 40}, new int[]{162, 41}, new int[]{163, 42}, new int[]{164, 43}, new int[]{165, 44}, new int[]{166, 45}, new int[]{167, 39}, new int[]{168, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8763e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8764f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f8765g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8766h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, time.minute, time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1));
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        qt.z(this.f8766h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2];
        int i5 = 0;
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            qt.y0(25, b3);
            qt.y0(12, (b4 >> 7) & 1);
            qt.y0(65, (b4 >> 6) & 1);
            qt.y0(16, (b4 >> 5) & 1);
            qt.y0(20, (b4 >> 4) & 1);
            qt.y0(18, (b4 >> 3) & 1);
            qt.y0(13, (b4 >> 2) & 1);
            qt.y0(11, (b4 >> 0) & 1);
            qt.y0(53, (b5 >> 7) & 1);
            qt.y0(14, (b5 >> 6) & 1);
            qt.y0(21, (b5 >> 0) & 15);
            int i6 = i2 + 5;
            byte b6 = bArr[i6];
            int i7 = i2 + 6;
            byte b7 = bArr[i7];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i7];
                b7 = bArr[i6];
            }
            if (b6 == 1) {
                qt.y0(27, -2);
            } else if (b6 == 57) {
                qt.y0(27, -3);
            } else if (b6 >= 3 && b6 < 55) {
                qt.y0(27, (int) (((((double) (b6 - 1)) * 2.5d) + 180.0d) * 10.0d));
            }
            if (b7 == 1) {
                qt.y0(28, -2);
                return;
            }
            if (b7 == 57) {
                qt.y0(28, -3);
                return;
            } else {
                if (b7 < 3 || b7 >= 55) {
                    return;
                }
                qt.y0(28, (int) (((((double) (b7 - 1)) * 2.5d) + 180.0d) * 10.0d));
                return;
            }
        }
        if (b2 == 18) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                int i8 = b8 & 255;
                this.f8761c = i8;
                int i9 = 0;
                while (true) {
                    iArr = this.f8762d;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f8761c;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f8760b = i9;
                        break;
                    }
                    i9++;
                }
                int i11 = nt.f8633a;
                if (i11 == 259 || i11 == 65816 || i11 == 196888 || i11 == 262424 || i11 == 407 || i11 == 65943) {
                    if ((b9 & 255) != 0) {
                        if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i9 <= iArr.length) {
                            l0.b0.l0(iArr[this.f8760b][1], 1);
                            return;
                        }
                        return;
                    }
                }
                if (i8 != 0) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 <= iArr.length) {
                        l0.b0.l0(iArr[this.f8760b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 36) {
            byte b10 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            } else {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            }
            qt.y0(3, (b10 >> 4) & 1);
            qt.y0(4, (b10 >> 5) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            qt.y0(0, (b10 >> 2) & 1);
            return;
        }
        if (b2 == 80) {
            if (nt.a()) {
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                int i12 = b11 & 255;
                this.f8761c = i12 | 128;
                int i13 = 0;
                while (true) {
                    iArr2 = this.f8762d;
                    if (i13 >= iArr2.length) {
                        break;
                    }
                    int i14 = this.f8761c;
                    if (i14 == iArr2[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f8760b = i13;
                        break;
                    }
                    i13++;
                }
                if (i12 >= 16 && i12 <= 19) {
                    if (i12 == 16) {
                        u0.d.O1();
                        return;
                    }
                    if (i12 == 17) {
                        u0.d.M1();
                        return;
                    } else if (i12 == 18) {
                        u0.d.I1();
                        return;
                    } else {
                        u0.d.B1();
                        return;
                    }
                }
                int i15 = nt.f8633a;
                if (i15 == 259 || i15 == 65816 || i15 == 196888 || i15 == 262424 || i15 == 407 || i15 == 65943) {
                    if ((b12 & 255) != 0) {
                        if (i13 < iArr2.length) {
                            l0.b0.l0(iArr2[i13][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i13 <= iArr2.length) {
                            l0.b0.l0(iArr2[this.f8760b][1], 1);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 85) {
            if (!nt.a() || (i4 = bArr[i2 + 9] & 255) == 255) {
                return;
            }
            if (i4 < 40) {
                i5 = 1000 - ((40 - i4) * 10);
            } else if (i4 >= 40 && i4 <= 200) {
                i5 = ((i4 - 40) * 10) + 1000;
            }
            u0.d.A3(i5);
            return;
        }
        if (b2 == 125) {
            int i16 = bArr[i2 + 2] & 255;
            if (i16 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i17 = i2 + 3;
                    l0.c0.b((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                    return;
                } else {
                    int i18 = i2 + 3;
                    l0.c0.a((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                    return;
                }
            }
            if (i16 == 3) {
                int i19 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i19);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i19}, null, null);
                return;
            } else {
                if (i16 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8765g = true;
                return;
            }
        }
        switch (b2) {
            case 48:
                break;
            case 49:
                if (this.f8765g) {
                    return;
                }
                qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, true, 4864);
                return;
            case 50:
                if (nt.a()) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    this.f8763e = b13 & 255;
                    this.f8764f = b14 & 255;
                    u0.d.R2(a3(bArr[i2 + 4] & 255));
                    u0.d.S2(a3(bArr[i2 + 5] & 255));
                    u0.d.T2(a3(bArr[i2 + 6] & 255));
                    u0.d.U2(a3(bArr[i2 + 7] & 255));
                    return;
                }
                return;
            case 51:
                if (nt.a()) {
                    byte b15 = bArr[i2 + 2];
                    byte b16 = bArr[i2 + 3];
                    this.f8763e = b15 & 255;
                    this.f8764f = b16 & 255;
                    u0.d.D2(a3(bArr[i2 + 4] & 255));
                    u0.d.E2(a3(bArr[i2 + 5] & 255));
                    u0.d.F2(a3(bArr[i2 + 6] & 255));
                    u0.d.G2(a3(bArr[i2 + 7] & 255));
                    return;
                }
                return;
            default:
                return;
        }
        while (i5 < i3 - 3) {
            if (bArr[i5 + 2] == 47 && bArr[i5 + 3] == 48) {
                return;
            } else {
                i5++;
            }
        }
        qt.L(new String(bArr, i2 + 2, i5));
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8766h);
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

    public final int a3(int i2) {
        int i3 = this.f8763e;
        if (i3 != 1) {
            if (i3 == 0) {
                int i4 = this.f8764f;
                if (i4 <= 10 && i4 > 0) {
                    return (10 / i4) * i2;
                }
                int i5 = i4 / 10;
                if (i5 != 0) {
                    return i2 / i5;
                }
            }
            return 0;
        }
        int i6 = nt.f8633a;
        if (i6 == 259 || i6 == 65816 || i6 == 196888 || i6 == 262424 || i6 == 407 || i6 == 65943) {
            if (i2 == 127 || i2 == 255) {
                return 10;
            }
            return (i2 / 10) - 2;
        }
        if (i2 == 0 || i2 == 10) {
            return 10;
        }
        return i2 - 1;
    }
}
