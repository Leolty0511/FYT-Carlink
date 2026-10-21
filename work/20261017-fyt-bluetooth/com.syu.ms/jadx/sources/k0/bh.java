package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bh extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f3684i = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3686c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3687d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, 6}, new int[]{13, 21}, new int[]{14, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3688e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f3689f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3690g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3691h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bh.f3684i != u0.b.D) {
                if (u0.b.f17306a0 == 0) {
                    z.k.s(227, 192, 2, 0, 0);
                } else if (u0.b.D == 13) {
                    z.k.s(227, 192, 2, 2, 0);
                } else {
                    z.k.s(227, 192, 2, 1, 0);
                }
                bh.f3684i = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 192, 2, 0, 0);
            } else {
                l0.b0.b(bh.this.f3691h);
                bh.this.f3689f = (byte) 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bh bhVar = bh.this;
            byte b2 = (byte) (bhVar.f3689f - 1);
            bhVar.f3689f = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(bhVar.f3691h);
                bh.this.f3689f = (byte) 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7886a.f8322q = 1;
        u0.c.f17386m.a(this.f3690g, 1);
        w0.e.f17815a.a(this.f3688e, 1);
        u0.c.f17374a.a(this.f3688e, 1);
        u0.c.f17392s.a(this.f3688e, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3686c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3687d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3686c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3685b = i4;
                    break;
                }
                i4++;
            }
            if ((b4 & 255) != 1 || i4 >= iArr.length) {
                return;
            }
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f3687d[i4][1], 1);
            return;
        }
        if (b2 == 36) {
            int i6 = i2 + 2;
            int i7 = bArr[i6] & 255;
            if ((bArr[i6] & 1) == 1) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i7 >> 6) & 1);
                    qt.y0(1, (i7 >> 7) & 1);
                } else {
                    qt.y0(2, (i7 >> 7) & 1);
                    qt.y0(1, (i7 >> 6) & 1);
                }
                qt.y0(4, (i7 >> 5) & 1);
                qt.y0(3, (i7 >> 4) & 1);
                qt.y0(5, (i7 >> 3) & 1);
                return;
            }
            return;
        }
        if (b2 != 39) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5800);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 56) {
                qt.y0(111, bArr[i2 + 2] & 255);
                qt.y0(112, bArr[i2 + 3] & 255);
                qt.y0(113, bArr[i2 + 4] & 255);
                qt.y0(114, bArr[i2 + 5] & 255);
                qt.y0(115, bArr[i2 + 6] & 255);
                qt.y0(116, bArr[i2 + 7] & 255);
                qt.y0(117, bArr[i2 + 8] & 255);
                qt.y0(118, bArr[i2 + 9] & 255);
                qt.y0(119, bArr[i2 + 10] & 255);
                qt.y0(120, bArr[i2 + 11] & 255);
                qt.y0(121, bArr[i2 + 12] & 255);
                return;
            }
            if (b2 != 53) {
                if (b2 != 54) {
                    return;
                }
                qt.y0(106, bArr[i2 + 2] & 255);
                qt.y0(107, bArr[i2 + 3] & 255);
                qt.y0(108, bArr[i2 + 4] & 255);
                qt.y0(109, bArr[i2 + 5] & 255);
                return;
            }
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            int i8 = i2 + 12;
            qt.y0(103, (bArr[i8] >> 7) & 1);
            qt.y0(104, (bArr[i8] >> 6) & 1);
            int i9 = bArr[i2 + 8] & 255;
            u0.d.A3(((bArr[i8] >> 7) & 1) == 1 ? 32768 | ((i9 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) : (i9 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        int i10 = i2 + 4;
        byte b7 = bArr[i10];
        int i11 = i2 + 5;
        byte b8 = bArr[i11];
        byte b9 = bArr[i2 + 6];
        byte b10 = bArr[i2 + 8];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        if (((b5 >> 5) & 1) == 1) {
            qt.y0(12, 0);
        } else {
            qt.y0(12, 1);
        }
        qt.y0(13, (b5 >> 3) & 1);
        qt.y0(14, (b5 >> 2) & 1);
        qt.y0(19, (b6 >> 7) & 1);
        int i12 = b6 >> 5;
        qt.y0(20, i12 & 1);
        qt.y0(77, i12 & 7);
        int i13 = b7;
        int i14 = b8;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i13 = bArr[i11] & 255;
            i14 = bArr[i10] & 255;
        }
        int i15 = i13 & 255;
        if (i13 == 0) {
            qt.y0(27, -2);
        } else if (i13 == 32) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i15);
        }
        int i16 = i14 & 255;
        if (i14 == 0) {
            qt.y0(28, -2);
        } else if (i14 == 32) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i16);
        }
        qt.y0(65, (b9 >> 7) & 1);
        qt.y0(16, (b9 >> 6) & 1);
        qt.y0(37, (b9 >> 0) & 1);
        qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3690g);
        w0.e.f17815a.d(this.f3688e);
        u0.c.f17374a.d(this.f3688e);
        u0.c.f17392s.d(this.f3688e);
        l0.b0.p0(this.f3691h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
        } else if (i2 == 1) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }
}
