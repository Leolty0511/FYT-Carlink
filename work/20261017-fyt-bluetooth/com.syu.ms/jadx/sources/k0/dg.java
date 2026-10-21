package k0;

import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class dg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4457c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4458d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 26}, new int[]{7, 12}, new int[]{8, 5}, new int[]{36, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4459e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4460f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dg dgVar = dg.this;
            byte b2 = (byte) (dgVar.f4459e + 1);
            dgVar.f4459e = b2;
            if (b2 > 5) {
                l0.b0.o0(dgVar.f4460f);
                dg.this.f4459e = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        mtVar.f8322q = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        byte b3 = bArr[i2];
        if (b3 == 1) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f4457c = b4 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f4458d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f4457c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f4456b = i6;
                    break;
                }
                i6++;
            }
            int i8 = b5 & 255;
            if (i8 == 1) {
                if (i6 >= iArr.length || (b2 = this.f4459e) != 0) {
                    return;
                }
                this.f4459e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i6][1], 0);
                l0.b0.a(this.f4460f);
                return;
            }
            if (i8 == 0) {
                int i9 = this.f4456b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                    l0.b0.o0(this.f4460f);
                    this.f4459e = (byte) 0;
                }
                this.f4456b = 255;
                return;
            }
            return;
        }
        if (b3 != 3) {
            if (b3 != 38) {
                if (b3 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                int i10 = i2 + 3;
                if ((bArr[i10] & 128) != 0) {
                    qt.m(bArr[i2 + 2], bArr[i10], 32768, false, 11820);
                    return;
                } else {
                    qt.i(bArr[i2 + 2], bArr[i10], true, 11820);
                    return;
                }
            }
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        int i11 = i2 + 4;
        byte b8 = bArr[i11];
        int i12 = i2 + 5;
        byte b9 = bArr[i12];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 8];
        qt.y0(21, (b6 >> 0) & 15);
        qt.y0(16, (b6 >> 4) & 1);
        qt.y0(65, (b6 >> 5) & 1);
        qt.y0(10, (b6 >> 7) & 1);
        int i13 = (b7 >> 0) & 1;
        qt.y0(18, i13);
        qt.y0(19, (b7 >> 1) & 1);
        qt.y0(20, (b7 >> 2) & 1);
        qt.y0(77, i13);
        qt.y0(52, (b7 >> 6) & 1);
        qt.y0(55, (b7 >> 7) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i5 = b8;
            i4 = b9;
            i5 = bArr[i12] & 255;
            i4 = bArr[i11] & 255;
        }
        i5 = b8;
        i4 = b9;
        int i14 = i5 & 255;
        if (i5 == 0) {
            qt.y0(27, -2);
        } else if (i5 == 31) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i14);
        }
        int i15 = i4 & 255;
        if (i4 == 0) {
            qt.y0(28, -2);
        } else if (i4 == 31) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i15);
        }
        qt.y0(12, 3 & (b10 >> 0));
        qt.y0(13, (b11 >> 2) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        z.k.s(227, 113, 2, iArr[0], iArr[1]);
    }
}
