package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class zf extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f12777l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f12778m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12779b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12782e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12780c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12781d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}, new int[]{36, 18}, new int[]{37, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12783f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12784g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{5, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f12785h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12786i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12787j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12788k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 132, 8, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0, 0, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == 33) {
            if (iArr[1] == 0) {
                if (nt.f8645g[10] == 1) {
                    a3(10);
                }
                return;
            } else {
                if (nt.f8645g[10] == 0) {
                    a3(10);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    a3(8);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    a3(8);
                    return;
                }
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(12);
                return;
            } else {
                a3(13);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(12);
                return;
            } else {
                a3(13);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -118, 2, 3, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -118, 2, 3, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -118, 2, 1, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -118, 2, 1, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -118, 2, 2, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -118, 2, 2, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(5);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(3);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(7);
                    break;
                } else if (i3 == -1) {
                    a3(6);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f12788k);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        if (nt.f8637c == 214) {
            this.f12785h.a();
            c3(this.f12785h.b(1, 0));
            b3(this.f12785h.b(2, 0));
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12780c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12781d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12780c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12779b = i7;
                    break;
                }
                i7++;
            }
            if (this.f12780c != 36) {
                if ((b4 & 255) != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i9 = this.f12779b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f12779b = 255;
                    return;
                }
            }
            if ((b4 & 255) == 1) {
                int i10 = h0.c.E;
                if (i10 == 3 || i10 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                    return;
                } else {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = bArr[i2 + 3] & 255;
            int i13 = 255 & bArr[i2 + 4];
            qt.y0(21, i11 & 15);
            qt.y0(16, (i11 >> 4) & 1);
            qt.y0(12, (i11 >> 5) & 1);
            qt.y0(11, (i11 >> 6) & 1);
            qt.y0(10, (i11 >> 7) & 1);
            int i14 = i12 & 15;
            if (i14 != 3) {
                if (i14 == 4) {
                    i4 = 0;
                    i5 = 1;
                } else if (i14 == 5) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i14 == 7) {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (i14 != 8) {
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
            qt.y0(77, i14);
            if (i13 == 1) {
                qt.y0(27, -2);
                qt.y0(28, -2);
            } else if (i13 != 15) {
                qt.y0(27, i13);
                qt.y0(28, i13);
            } else {
                qt.y0(27, -3);
                qt.y0(28, -3);
            }
            int i15 = i2 + 6;
            qt.y0(29, (bArr[i15] >> 4) & 15);
            qt.y0(30, (bArr[i15] >> 0) & 15);
            return;
        }
        if (b2 == 6) {
            int i16 = i2 + 2;
            qt.y0(99, (bArr[i16] >> 5) & 7);
            qt.y0(100, (bArr[i16] >> 4) & 1);
            qt.y0(101, (bArr[i16] >> 3) & 1);
            qt.y0(102, (bArr[i16] >> 2) & 1);
            qt.y0(103, (bArr[i16] >> 1) & 1);
            qt.y0(104, (bArr[i16] >> 0) & 1);
            qt.y0(105, (bArr[i2 + 3] >> 0) & 1);
            return;
        }
        if (b2 == 34) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            u0.d.R2(l0.c0.L0(b5 & 255));
            u0.d.S2(l0.c0.L0(b6 & 255));
            u0.d.T2(l0.c0.L0(b7 & 255));
            u0.d.U2(l0.c0.L0(b8 & 255));
            return;
        }
        if (b2 == 36) {
            byte b9 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b9 >> 7) & 1);
                qt.y0(2, (b9 >> 6) & 1);
            } else {
                qt.y0(1, (b9 >> 6) & 1);
                qt.y0(2, (b9 >> 7) & 1);
            }
            qt.y0(3, (b9 >> 4) & 1);
            qt.y0(4, (b9 >> 5) & 1);
            qt.y0(5, (b9 >> 3) & 1);
            if (nt.f8637c == 214) {
                if (((bArr[i2 + 3] >> 6) & 1) == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 38) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, true, 7680);
            return;
        }
        if (b2 != 39) {
            return;
        }
        byte b10 = bArr[i2 + 2];
        byte b11 = bArr[i2 + 3];
        this.f12783f = b10 & 255;
        int i17 = 0;
        while (true) {
            iArr2 = this.f12784g;
            if (i17 >= iArr2.length) {
                break;
            }
            int i18 = this.f12783f;
            if (i18 == iArr2[i17][0]) {
                if (i18 == 0) {
                    break;
                }
                this.f12782e = i17;
                break;
            }
            i17++;
        }
        if ((b11 & 255) != 1 || i17 >= iArr2.length) {
            return;
        }
        l0.b0.l0(iArr2[this.f12782e][1], 0);
        l0.b0.l0(this.f12784g[this.f12782e][1], 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f12785h.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f12788k);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 108) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 255) {
                c3(iArr[1]);
                return;
            } else if (iArr[0] == 254) {
                b3(iArr[1]);
                return;
            } else {
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
            }
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 0) {
                z.k.s(227, -117, 2, 6, 1);
                return;
            } else {
                z.k.s(227, -117, 2, 6, 0);
                return;
            }
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            switch (iArr[0]) {
                case 1:
                    z.k.s(227, -117, 2, 3, 2);
                    break;
                case 2:
                    z.k.s(227, -117, 2, 3, 4);
                    break;
                case 3:
                    z.k.s(227, -117, 2, 3, 5);
                    break;
                case 4:
                    z.k.s(227, -117, 2, 3, 6);
                    break;
                case 5:
                    z.k.s(227, -117, 2, 4, 1);
                    break;
                case 6:
                    z.k.s(227, -117, 2, 4, 2);
                    break;
                case 7:
                    z.k.s(227, -117, 2, 4, 7);
                    break;
                case 8:
                    z.k.s(227, -117, 2, 4, 8);
                    break;
                case 9:
                    z.k.s(227, -117, 2, 4, 3);
                    break;
                case 10:
                    z.k.s(227, -117, 2, 4, 5);
                    break;
                case 11:
                    z.k.s(227, -117, 2, 4, 4);
                    break;
                case 12:
                    z.k.s(227, -117, 2, 4, 6);
                    break;
                case 13:
                    z.k.s(227, -117, 2, 2, 0);
                    break;
                case 14:
                    z.k.s(227, -117, 2, 2, 1);
                    break;
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 115, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, 115, 2, i2, 0);
    }

    public final void b3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 4) {
            i2 = 4;
        }
        f12778m = i2;
        z.k.s(227, 139, 2, 5, i2);
        qt.y0(107, f12778m);
        int iB = this.f12785h.b(2, 0);
        int i3 = f12778m;
        if (iB != i3) {
            this.f12785h.g(2, i3);
        }
    }

    public final void c3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f12777l = i2;
        z.k.s(227, 139, 2, 1, i2);
        qt.y0(106, f12777l);
        int iB = this.f12785h.b(1, 0);
        int i3 = f12777l;
        if (iB != i3) {
            this.f12785h.g(1, i3);
        }
    }
}
