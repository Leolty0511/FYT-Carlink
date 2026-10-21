package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class sf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10270d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10271e = {new int[]{1, 0}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 24}, new int[]{5, 1}, new int[]{6, 2}, new int[]{7, 38}, new int[]{8, 31}, new int[]{9, 30}, new int[]{16, 12}, new int[]{17, 39}, new int[]{18, 5}, new int[]{19, 40}, new int[]{20, 41}, new int[]{21, 42}, new int[]{22, 43}, new int[]{23, 44}, new int[]{24, 45}, new int[]{25, 3}, new int[]{32, 4}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10272f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10273g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f10274h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f10275i = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = sf.this.f10272f;
            if (i2 != u0.b.D) {
                if (i2 == 13) {
                    z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                sf.this.f10272f = u0.b.D;
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f10273g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10269c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10271e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10269c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10268b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f10269c;
            if (i6 == 8) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i6 == 9) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 != 0 || i4 > iArr.length) {
                    return;
                }
                l0.b0.l0(iArr[this.f10268b][1], 1);
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_CLEAR);
            return;
        }
        if (b2 != 42) {
            return;
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 5];
        byte b10 = bArr[i2 + 6];
        qt.y0(10, (b6 >> 7) & 1);
        qt.y0(11, (b6 >> 6) & 1);
        qt.y0(12, (b6 >> 5) & 1);
        qt.y0(13, (b6 >> 4) & 1);
        qt.y0(14, (b6 >> 2) & 1);
        qt.y0(65, (b6 >> 1) & 1);
        qt.y0(16, (b6 >> 0) & 1);
        qt.y0(18, (b7 >> 7) & 1);
        qt.y0(19, (b7 >> 6) & 1);
        qt.y0(20, (b7 >> 5) & 1);
        qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i10 = b8 & 255;
        if (b8 == -2) {
            qt.y0(27, -2);
        } else if (b8 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i10);
        }
        int i11 = b9 & 255;
        if (b9 == -2) {
            qt.y0(28, -2);
        } else if (b9 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i11);
        }
        qt.y0(29, (b10 >> 4) & 3);
        qt.y0(30, b10 & 3);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f10273g);
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
        if (i2 == 0) {
            if (iArr != null) {
                z.k.s(227, 116, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (iArr != null) {
                z.k.s(227, 203, 8, 0, iArr[0], 0, 0, 0, 0, 0, 0);
            }
        } else if (i2 == 2) {
            if (iArr != null) {
                z.k.s(227, 203, 8, 0, 0, iArr[0], 0, 0, 0, 0, 0);
            }
        } else if (i2 == 3) {
            if (iArr != null) {
                z.k.s(227, 203, 8, iArr[0], 0, 0, 0, 0, 0, 0, 0);
            }
        } else if (i2 == 4 && iArr != null) {
            z.k.s(227, 202, 8, iArr[0], 0, 0, 0, 0, 0, 0, 0);
        }
    }
}
