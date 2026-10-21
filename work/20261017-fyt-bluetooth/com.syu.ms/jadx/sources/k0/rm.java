package k0;

import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class rm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9981c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9982d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 5}, new int[]{10, 6}, new int[]{11, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9983e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 2, (byte) time.hour, (byte) time.minute);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 0;
        } else {
            if (nt.f8637c == 158) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            this.f7886a.f8314i = 1;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 0;
        mtVar2.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f9983e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 6592);
            return;
        }
        if (b2 == 58) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 4) & 1);
                qt.y0(2, (b3 >> 5) & 1);
            } else {
                qt.y0(1, (b3 >> 5) & 1);
                qt.y0(2, (b3 >> 4) & 1);
            }
            qt.y0(3, (b3 >> 3) & 1);
            qt.y0(4, (b3 >> 2) & 1);
            qt.y0(5, (b3 >> 1) & 1);
            qt.y0(0, (b3 >> 0) & 1);
            return;
        }
        if (b2 == 66) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(102, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(103, bArr[i2 + 10] & 255);
            qt.y0(104, bArr[i2 + 11] & 255);
            qt.y0(105, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(106, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(107, bArr[i2 + 16] & 255);
            qt.y0(108, bArr[i2 + 17] & 255);
            qt.y0(109, bArr[i2 + 18] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i7 = i2 + 3;
            l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i7] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f9981c = b4 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f9982d;
                    if (i8 < iArr.length) {
                        int i9 = this.f9981c;
                        if (i9 != iArr[i8][0]) {
                            i8++;
                        } else if (i9 != 0) {
                            this.f9980b = i8;
                        }
                    }
                }
                int i10 = b5 & 255;
                if (i10 != 1) {
                    if (i10 == 0) {
                        int i11 = this.f9980b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f9980b = 255;
                    }
                } else if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                qt.y0(54, (b6 >> 6) & 1);
                qt.y0(63, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 4) & 1);
                qt.y0(11, (b6 >> 3) & 1);
                qt.y0(12, (b6 >> 2) & 1);
                qt.y0(16, (b6 >> 0) & 1);
                qt.y0(21, b7 & 255);
                int i12 = b8 & 255;
                if (i12 != 0) {
                    if (i12 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i12 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i12 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i12 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(65, i4);
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(77, i12);
                int i13 = b9 & 255;
                qt.y0(27, i13);
                qt.y0(28, i13);
                break;
            case 34:
                u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.s1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.s1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i14 = i2 + 2;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 3;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 4;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 5;
                int i21 = bArr[i20] & 255;
                if (i15 == 0 && i17 == 0 && i19 == 0 && i21 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i15;
                l0.c0.f13014h = i17;
                l0.c0.f13015i = i19;
                l0.c0.f13016j = i21;
                u0.d.D2(l0.c0.s1(bArr[i14] & 255));
                u0.d.E2(l0.c0.s1(bArr[i16] & 255));
                u0.d.F2(l0.c0.s1(bArr[i18] & 255));
                u0.d.G2(l0.c0.s1(bArr[i20] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f9983e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 224, 2, (byte) iArr[0], (byte) iArr[1]);
        }
    }
}
