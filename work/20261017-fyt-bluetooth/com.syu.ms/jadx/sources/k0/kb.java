package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class kb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7195e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7196f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, 2}, new int[]{24, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7197g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{31, 53}, new int[]{32, 1}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{47, 5}, new int[]{55, 55}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7198h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7199i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7200j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7201k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7202l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7203m = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kb kbVar = kb.this;
            kbVar.f7198h = 0;
            kbVar.f7199i = 0;
            l0.b0.b(kbVar.f7202l);
            kb.this.f7200j = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kb kbVar = kb.this;
            int i2 = kbVar.f7200j - 1;
            kbVar.f7200j = i2;
            if (i2 > 0) {
                z.k.s(227, 2, 36, 26, 13);
            } else {
                l0.b0.p0(kbVar.f7202l);
                kb.this.f7200j = 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, -75, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f7203m);
        qt.z(l0.h0.f13058d);
        w0.e.f17815a.a(l0.h0.f13058d, 1);
        w0.e.f17819e.a(l0.h0.f13058d, 1);
        u0.c.f17386m.a(this.f7201k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i5 = i2 + 4;
                l0.c0.b((bArr[i5] >> 1) & 1, (bArr[i5] >> 0) & 1, (bArr[i5] >> 2) & 1);
                return;
            } else {
                int i6 = i2 + 4;
                l0.c0.a((bArr[i6] >> 1) & 1, (bArr[i6] >> 0) & 1, (bArr[i6] >> 2) & 1);
                return;
            }
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            if (nt.a()) {
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 5];
                this.f7193c = b4 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f7196f;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f7193c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f7192b = i7;
                        break;
                    }
                    i7++;
                }
                if ((b5 & 255) == 0) {
                    int i9 = this.f7192b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f7192b = 255;
                } else if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b6 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            }
            qt.y0(3, (b6 >> 5) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f7194d = bArr[i2 + 2] & 255;
                byte b7 = bArr[i2 + 3];
                int i10 = 0;
                while (true) {
                    iArr2 = this.f7197g;
                    if (i10 >= iArr2.length) {
                        break;
                    }
                    int i11 = this.f7194d;
                    if (i11 == iArr2[i10][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f7195e = i10;
                        break;
                    }
                    i10++;
                }
                if ((b7 & 255) != 0) {
                    if (i10 < iArr2.length) {
                        l0.b0.l0(iArr2[i10][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i12 = this.f7195e;
                    if (i12 < iArr2.length && i12 != 255) {
                        l0.b0.l0(iArr2[i12][1], 1);
                    }
                    this.f7195e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b8 = bArr[i2 + 2];
            byte b9 = bArr[i2 + 3];
            if (b8 != 1) {
                if (b8 == 2 && b9 != (i4 = this.f7199i)) {
                    if (b9 > i4) {
                        for (int i13 = 0; i13 < b9 - this.f7199i; i13++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b9 < i4) {
                        for (int i14 = 0; i14 < this.f7199i - b9; i14++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f7199i = b9;
                    return;
                }
                return;
            }
            int i15 = this.f7198h;
            if (b9 != i15) {
                if (b9 > i15) {
                    for (int i16 = 0; i16 < b9 - this.f7198h; i16++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b9 < i15) {
                    for (int i17 = 0; i17 < this.f7198h - b9; i17++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f7198h = b9;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7203m);
        qt.q0(l0.h0.f13058d);
        w0.e.f17815a.d(l0.h0.f13058d);
        w0.e.f17819e.d(l0.h0.f13058d);
        u0.c.f17386m.d(this.f7201k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
