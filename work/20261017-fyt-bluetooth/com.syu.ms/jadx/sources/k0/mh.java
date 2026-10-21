package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class mh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8163c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8164d = {new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 13}, new int[]{80, 18}, new int[]{81, 26}, new int[]{82, 2}, new int[]{83, 9}, new int[]{33, 6}, new int[]{34, 6}, new int[]{35, 3}, new int[]{36, 4}, new int[]{37, 16}, new int[]{38, 3}, new int[]{39, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8165e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f8166f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8167g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.u();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (mh.this.f8166f.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                mh.this.f8166f = h0.c.f2437h;
                if (mh.this.f8166f == null) {
                    mh.this.f8166f = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                mh mhVar = mh.this;
                mhVar.d3(mhVar.f8166f);
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
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8165e);
        h0.d.f2464c.a(this.f8167g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8163c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8164d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8163c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8162b = i4;
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
                    int i7 = this.f8162b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f8162b = 255;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 33:
                int i9 = bArr[i2 + 2] & 255;
                int i10 = bArr[i2 + 3] & 255;
                int i11 = i2 + 4;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 5;
                int i14 = bArr[i13] & 255;
                int i15 = bArr[i2 + 6] & 255;
                qt.y0(10, (i9 >> 7) & 1);
                qt.y0(11, (i9 >> 6) & 1);
                qt.y0(12, (i9 >> 5) & 1);
                qt.y0(13, (i9 >> 4) & 1);
                qt.y0(16, (i9 >> 3) & 1);
                qt.y0(14, (i9 >> 2) & 1);
                qt.y0(15, (i9 >> 0) & 1);
                qt.y0(38, (i9 >> 1) & 1);
                qt.y0(21, 15 & (i10 >> 0));
                qt.y0(18, (i10 >> 7) & 1);
                qt.y0(19, (i10 >> 6) & 1);
                qt.y0(20, (i10 >> 5) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i12 = bArr[i13] & 255;
                    i14 = bArr[i11] & 255;
                }
                int i16 = i12 & 255;
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i12);
                }
                int i17 = i14 & 255;
                if (i17 == 0) {
                    qt.y0(28, -2);
                } else if (i17 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i14);
                }
                qt.y0(55, (i15 >> 7) & 1);
                break;
            case 34:
                int i18 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i18 >> 1) & 1);
                    qt.y0(2, (i18 >> 0) & 1);
                } else {
                    qt.y0(1, (i18 >> 0) & 1);
                    qt.y0(2, (i18 >> 1) & 1);
                }
                qt.y0(3, (i18 >> 2) & 1);
                qt.y0(4, (i18 >> 3) & 1);
                qt.y0(5, (i18 >> 4) & 1);
                qt.y0(0, (i18 >> 5) & 1);
                break;
            case 35:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                u0.d.D2(l0.c0.E0(b5 & 255));
                u0.d.E2(l0.c0.E0(b6 & 255));
                u0.d.F2(l0.c0.E0(b7 & 255));
                u0.d.G2(l0.c0.E0(b8 & 255));
                break;
            case 36:
                int i19 = i2 + 2;
                qt.j(bArr[i19] & 127, 0, (bArr[i19] >> 7) & 1, 50);
                break;
            case 37:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                u0.d.R2(l0.c0.E0(b9 & 255));
                u0.d.S2(l0.c0.E0(b10 & 255));
                u0.d.T2(l0.c0.E0(b11 & 255));
                u0.d.U2(l0.c0.E0(b12 & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f8165e);
        h0.d.f2464c.d(this.f8167g);
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

    public final void d3(String str) {
        if (str == null || str.isEmpty()) {
            z.k.s(227, 131, 1, 0);
            return;
        }
        byte[] bArr = new byte[12];
        byte[] bytes = str.getBytes();
        int length = bytes.length > 12 ? 12 : bytes.length;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = bytes[i2];
        }
        for (int i3 = length; i3 < 12; i3++) {
            bArr[i3] = 0;
        }
        int[] iArr = new int[28];
        iArr[0] = -29;
        iArr[1] = -125;
        iArr[2] = 13;
        iArr[3] = length + 16;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[4 + i4] = bArr[i4];
        }
        z.k.s(iArr);
    }
}
