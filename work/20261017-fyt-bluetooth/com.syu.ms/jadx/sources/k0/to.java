package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class to extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10766c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10767d = {new int[]{1, 12}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 3}, new int[]{5, 35}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 18}, new int[]{21, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10768e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10769f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10770g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10771h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(to.this.f10770g);
            to.this.f10768e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            to toVar = to.this;
            int i2 = toVar.f10768e - 1;
            toVar.f10768e = i2;
            if (i2 <= 0) {
                l0.b0.p0(toVar.f10770g);
                to.this.f10768e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 1);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            to.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 5;
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[2] = 1;
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[3] = 0;
                i4 = w0.d.f17797i / 10;
            } else if (i5 == 65537) {
                iArr[3] = 1;
                i4 = w0.d.f17797i / 10;
            } else if (i5 == 65538) {
                iArr[3] = 6;
                i4 = w0.d.f17797i / 10;
            } else if (i5 == 0 || i5 == 1) {
                iArr[3] = 5;
            }
            iArr[4] = 0;
            iArr[5] = (i4 >> 8) & 255;
            iArr[6] = i4 & 255;
        } else if (i3 == 8 || i3 == 10 || i3 == 3) {
            iArr[2] = 2;
            iArr[3] = 0;
            iArr[4] = u0.b.r3;
            iArr[5] = 0;
            iArr[6] = 0;
        } else if (i3 != 4) {
            iArr[2] = 15;
        } else {
            iArr[2] = 2;
            iArr[3] = 0;
            iArr[4] = o0.e.B;
            iArr[5] = 0;
            iArr[6] = 0;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i6 = i2 + 1;
            iArr2[i6] = iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f10769f, 1);
        l0.b0.b(this.f10771h);
        w0.e.f17815a.a(this.f10771h, 1);
        w0.e.f17819e.a(this.f10771h, 1);
        u0.c.f17374a.a(this.f10771h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            this.f10766c = bArr[i2 + 2] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10767d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10766c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10765b = i4;
                    break;
                }
                i4++;
            }
            if (this.f10766c != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                int i6 = this.f10765b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f10765b = 255;
                return;
            }
        }
        if (b2 != 113) {
            if (b2 != 4) {
                if (b2 == 5) {
                    u0.d.Q(((bArr[i2 + 2] & 255) * 100) / 7);
                    return;
                } else {
                    if (b2 != 6) {
                        return;
                    }
                    int i7 = bArr[i2 + 2] & 255;
                    u0.d.B3((bArr[i2 + 3] & 255) == 1 ? (268435456 | ((i7 * 9) + 609)) & (-1) : (i7 * 5) + 605);
                    return;
                }
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        int i8 = i2 + 2;
        if (bArr[i8] == 23) {
            str = ProxyProperties.LOCAL_EXCL_LIST + "Toyota_Alpha_";
        } else {
            str = ProxyProperties.LOCAL_EXCL_LIST + "Null" + ((int) bArr[i8]) + "_";
        }
        int i9 = i2 + 3;
        if (bArr[i9] == 0) {
            str = str + "All_";
        } else if (bArr[i9] == 1) {
            str = str + "149_";
        } else if (bArr[i9] == 2) {
            str = str + "159_";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("20");
        int i10 = i2 + 4;
        sb.append(((bArr[i10] >> 4) & 15) * 10);
        sb.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb.append(bArr[i10] & DhcpPacket.DHCP_DOMAIN_NAME);
        sb.append("_");
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        int i11 = i2 + 5;
        sb2.append(((bArr[i11] >> 4) & 15) * 10);
        sb2.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb2.append(bArr[i11] & DhcpPacket.DHCP_DOMAIN_NAME);
        sb2.append("_");
        String string2 = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string2);
        int i12 = i2 + 6;
        sb3.append(((bArr[i12] >> 4) & 15) * 10);
        sb3.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb3.append(bArr[i12] & DhcpPacket.DHCP_DOMAIN_NAME);
        sb3.append("_");
        qt.L(sb3.toString() + "V" + ((int) bArr[i2 + 8]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 9]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 10]));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10769f);
        l0.b0.p0(this.f10770g);
        l0.b0.p0(this.f10771h);
        w0.e.f17815a.d(this.f10771h);
        w0.e.f17819e.d(this.f10771h);
        u0.c.f17374a.d(this.f10771h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
