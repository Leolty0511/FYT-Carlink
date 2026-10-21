package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class o extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8667c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8668d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 12}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8669e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8670f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f8671g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8672h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8673i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((u0.b.f17306a0 == 1) & (o.this.f8669e >= 3)) {
                z.k.s(227, 6, 7, 7, 7);
                o.this.f8669e = 0;
            }
            o.this.f8669e++;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(o.this.f8673i);
            o.this.f8671g = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            byte b2 = (byte) (oVar.f8671g - 1);
            oVar.f8671g = b2;
            if (b2 <= 0) {
                l0.b0.p0(oVar.f8673i);
                o.this.f8671g = (byte) 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 5, 4, 0);
            } else {
                z.k.s(227, 5, 4, 1);
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
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            u0.c.f17386m.a(this.f8672h, 1);
            l0.b0.a(this.f8670f);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 0) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 3];
                this.f8667c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f8668d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f8667c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f8666b = i4;
                        break;
                    }
                    i4++;
                }
                int i6 = b4 & 255;
                if (i6 == 1) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i6 == 0) {
                        int i7 = this.f8666b;
                        if (i7 < iArr.length && i7 != 255) {
                            l0.b0.l0(iArr[i7][1], 1);
                        }
                        this.f8666b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 33) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b5 = bArr[i2 + 2];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(53, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 5) & 1);
        qt.y0(13, (b5 >> 3) & 1);
        qt.y0(14, (b5 >> 2) & 1);
        qt.y0(65, (b5 >> 0) & 1);
        byte b6 = bArr[i2 + 3];
        qt.y0(18, (b6 >> 7) & 1);
        qt.y0(19, (b6 >> 6) & 1);
        qt.y0(20, (b6 >> 5) & 1);
        qt.y0(21, (b6 >> 0) & 15);
        int i8 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 4] : bArr[i2 + 5]) & 255;
        if (i8 == 0) {
            qt.y0(27, -2);
        } else if (i8 == 30) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, (i8 * 5) + 170);
        }
        int i9 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 5] : bArr[i2 + 4]) & 255;
        if (i9 == 0) {
            qt.y0(28, -2);
        } else if (i9 == 30) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, (i9 * 5) + 170);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8672h);
        l0.b0.p0(this.f8673i);
        l0.b0.o0(this.f8670f);
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
}
