package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class g9 extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f5390i = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5391b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f5394e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5392c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5393d = {new int[]{7, 29}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{10, 26}, new int[]{23, 3}, new int[]{24, 4}, new int[]{129, 7}, new int[]{130, 8}, new int[]{80, 18}, new int[]{33, 5}, new int[]{34, 11}, new int[]{35, 18}, new int[]{8, 6}, new int[]{48, 18}, new int[]{2, 9}, new int[]{145, 40}, new int[]{146, 41}, new int[]{147, 42}, new int[]{148, 43}, new int[]{149, 44}, new int[]{150, 45}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 21}, new int[]{154, 14}, new int[]{155, 5}, new int[]{156, 3}, new int[]{157, 4}, new int[]{158, 55}, new int[]{159, 1}, new int[]{160, 2}, new int[]{161, 54}, new int[]{162, 29}, new int[]{163, 6}, new int[]{164, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5395f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5396g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5397h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(g9.this.f5397h);
            g9.this.f5395f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g9 g9Var = g9.this;
            int i2 = g9Var.f5395f - 1;
            g9Var.f5395f = i2;
            if (i2 <= 0) {
                l0.b0.p0(g9Var.f5397h);
                g9.this.f5395f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, -112, 4, -1, 0, 0, 0);
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f5396g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            if (i5 == 32 && i7 == 1) {
                qt.y0(154, i7);
            }
            if (nt.a()) {
                byte b3 = bArr[i4];
                byte b4 = bArr[i6];
                this.f5392c = b3 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f5393d;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int i9 = this.f5392c;
                    if (i9 == iArr[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f5391b = i8;
                        break;
                    }
                    i8++;
                }
                int i10 = b4 & 255;
                if (i10 == 1) {
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i10 == 0) {
                        int i11 = this.f5391b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f5391b = 255;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5450);
            return;
        }
        if (b2 == 56) {
            byte b5 = bArr[i2 + 2];
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
            qt.y0(0, (b5 >> 2) & 1);
            qt.y0(107, (bArr[i2 + 3] >> 7) & 1);
            qt.y0(108, (bArr[i2 + 4] >> 4) & 1);
            return;
        }
        if (b2 == 58) {
            int i12 = i2 + 3;
            qt.y0(114, bArr[i12] & 255);
            int i13 = bArr[i12] & 255;
            if (i13 == 253) {
                f5390i = -1;
            }
            int i14 = i2 + 2;
            int i15 = bArr[i14] & 255;
            qt.y0(140, bArr[i14] & 255);
            if (i13 == 252) {
                if (f5390i != i15) {
                    f5390i = i15;
                    if (i15 > 0) {
                        for (int i16 = 0; i16 < f5390i; i16++) {
                            if (c3()) {
                                try {
                                    z.k.s(227, -121, 2, (byte) i16, 0);
                                    Thread.sleep(100L);
                                } catch (InterruptedException unused) {
                                }
                            } else {
                                z.k.s(227, -121, 2, (byte) i16, 1);
                                Thread.sleep(100L);
                            }
                        }
                    }
                }
                f5390i = -1;
            }
            try {
                str = new String(bArr, i2 + 4, i3 - 4, "Windows-936");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            qt.B0(165, str, this.f5394e);
            this.f5394e = str;
            return;
        }
        switch (b2) {
            case 50:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 3] & 255));
                    int i17 = i2 + 4;
                    u0.d.S2(a3(bArr[i17] & 255));
                    u0.d.T2(a3(bArr[i17] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    u0.d.D2(a3(bArr[i2 + 6] & 255));
                    int i18 = i2 + 7;
                    u0.d.E2(a3(bArr[i18] & 255));
                    u0.d.F2(a3(bArr[i18] & 255));
                    u0.d.G2(a3(bArr[i2 + 8] & 255));
                }
                break;
            case 51:
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                break;
            case 52:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 53:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 54:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    int i19 = b6 & 128;
                    int i20 = b6 & 127;
                    u0.d.A3(i19 != 0 ? 1000 - (i20 * 10) : (i20 * 10) + 1000);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5396g);
        l0.b0.p0(this.f5397h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 166) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00bd  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            b3(1, iArr[0]);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            b3(16, iArr[0]);
            return;
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                i3 = 0;
            } else if (iArr[0] == 2) {
                i3 = 65;
            } else if (iArr[0] == 3) {
                i3 = 34;
            } else {
                i3 = 0;
            }
            z.k.s(227, -126, 6, 0, 0, 0, (byte) i3, 0, 0);
            return;
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 4, (byte) iArr[0], 0, 0, 0);
            return;
        }
        if (i2 != 48) {
            if (i2 == 49 && iArr != null && iArr.length > 0) {
                z.k.s(227, -126, 6, 0, 0, 0, (byte) iArr[0], 0, 0);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 253) {
            f5390i = -1;
        }
        if (c3()) {
            z.k.s(227, -121, 2, (byte) iArr[0], 0);
        } else {
            z.k.s(227, -121, 2, (byte) iArr[0], 1);
        }
    }

    public final int a3(int i2) {
        return i2 * 2;
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, -128, 2, (byte) i2, (byte) i3);
    }

    public final boolean c3() {
        Locale locale = App.c().getResources().getConfiguration().locale;
        return locale.getCountry().equals("CN") || locale.getCountry().equals("TW");
    }
}
