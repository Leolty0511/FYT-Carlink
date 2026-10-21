package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.text.Spanned;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class gg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5498b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5501e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5499c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5500d = {new int[]{1, 29}, new int[]{2, 4}, new int[]{3, 3}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 34}, new int[]{9, 35}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5502f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5503g = {new int[]{11, 29}, new int[]{14, 30}, new int[]{15, 31}, new int[]{1, 9}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5504h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5505i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5506j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gg.this.f5506j);
            gg.this.f5504h = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gg ggVar = gg.this;
            byte b2 = (byte) (ggVar.f5504h - 1);
            ggVar.f5504h = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 131, 2, 0, 1);
            } else {
                l0.b0.p0(ggVar.f5506j);
                gg.this.f5504h = (byte) 5;
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f5505i, 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            int i4 = i2 + 2;
            qt.y0(0, (bArr[i4] >> 7) & 1);
            qt.y0(1, (bArr[i4] >> 4) & 7);
            qt.y0(2, (bArr[i4] >> 3) & 1);
            qt.y0(3, (bArr[i4] >> 0) & 7);
            return;
        }
        if (b2 == 2) {
            qt.y0(6, bArr[i2 + 2] & 255);
            int i5 = (((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535;
            switch (bArr[i2 + 5]) {
                case 0:
                    qt.y0(7, i5);
                    break;
                case 1:
                    qt.y0(8, i5);
                    break;
                case 2:
                    qt.y0(9, i5);
                    break;
                case 3:
                    qt.y0(10, i5);
                    break;
                case 4:
                    qt.y0(11, i5);
                    break;
                case 5:
                    qt.y0(12, i5);
                    break;
                case 6:
                    qt.y0(13, i5);
                    break;
                case 7:
                    qt.y0(14, i5);
                    break;
                case 8:
                    qt.y0(15, i5);
                    break;
                case 9:
                    qt.y0(16, i5);
                    break;
                default:
                    break;
            }
            int i6 = i2 + 6;
            qt.y0(17, (bArr[i6] >> 7) & 1);
            qt.y0(18, (bArr[i6] >> 6) & 1);
            qt.y0(19, (bArr[i6] >> 5) & 1);
            qt.y0(20, (bArr[i6] >> 4) & 1);
            qt.y0(21, (bArr[i6] >> 3) & 1);
            return;
        }
        if (b2 == 5) {
            qt.y0(24, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
            qt.y0(25, bArr[i2 + 4] & 255);
            qt.y0(26, bArr[i2 + 5] & 255);
            int i7 = i2 + 6;
            qt.y0(27, (bArr[i7] >> 4) & 3);
            qt.y0(28, bArr[i7] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 6) {
            qt.y0(31, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
            qt.y0(32, bArr[i2 + 4] & 255);
            qt.y0(33, bArr[i2 + 5] & 255);
            int i8 = i2 + 6;
            qt.y0(34, (bArr[i8] >> 4) & 3);
            qt.y0(35, bArr[i8] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 11) {
            int i9 = i2 + 2;
            int i10 = ((bArr[i9] >> 7) & 1) == 1 ? bArr[i9] & 16 : 0;
            if ((bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME) == 6) {
                i10 = 0;
            }
            qt.y0(38, i10);
            switch (bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME) {
                case 0:
                    qt.y0(39, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(45, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                        return;
                    }
                    break;
                case 1:
                    qt.y0(40, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(46, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e3) {
                        e3.printStackTrace();
                        return;
                    }
                    break;
                case 2:
                    qt.y0(41, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(47, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e4) {
                        e4.printStackTrace();
                        return;
                    }
                    break;
                case 3:
                    qt.y0(42, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(48, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e5) {
                        e5.printStackTrace();
                        return;
                    }
                    break;
                case 4:
                    qt.y0(43, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(49, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e6) {
                        e6.printStackTrace();
                        return;
                    }
                    break;
                case 5:
                    qt.y0(44, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    try {
                        qt.z0(50, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-8"));
                    } catch (UnsupportedEncodingException e7) {
                        e7.printStackTrace();
                        return;
                    }
                    break;
                case 6:
                    qt.y0(39, 0);
                    qt.y0(40, 0);
                    qt.y0(41, 0);
                    qt.y0(42, 0);
                    qt.y0(43, 0);
                    qt.y0(44, 0);
                    qt.z0(45, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(46, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(47, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(48, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(49, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(50, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    break;
            }
            return;
        }
        if (b2 == 36) {
            int i11 = i2 + 2;
            qt.j(bArr[i11] & 127, 0, (bArr[i11] >> 7) & 1, 50);
            return;
        }
        if (b2 == 113) {
            this.f5504h = (byte) 0;
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 14) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5502f = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f5503g;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f5502f;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f5501e = i12;
                    break;
                }
                i12++;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f5501e;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f5501e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 15) {
            switch (b2) {
                case 18:
                    qt.y0(53, (((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255)) & 65535);
                    qt.y0(54, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
                    qt.y0(55, bArr[i2 + 6] & 255);
                    qt.y0(55, bArr[i2 + 7] & 255);
                    qt.y0(56, bArr[i2 + 8] & 255);
                    qt.y0(57, bArr[i2 + 9] & 255);
                    break;
                case 19:
                    qt.y0(58, (((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & (-1));
                    qt.y0(59, bArr[i2 + 6] & 255);
                    qt.y0(60, (((bArr[i2 + 7] << 24) & (-16777216)) | (16711680 & (bArr[i2 + 8] << 16)) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & (-1));
                    qt.y0(61, ((bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280)) & 65535);
                    break;
                case 20:
                    qt.y0(62, (((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & (-1));
                    qt.y0(63, bArr[i2 + 6] & 255);
                    qt.y0(64, (((bArr[i2 + 7] << 24) & (-16777216)) | (16711680 & (bArr[i2 + 8] << 16)) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255)) & (-1));
                    qt.y0(65, ((bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280)) & 65535);
                    break;
            }
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        this.f5499c = b5 & 255;
        int i16 = 0;
        while (true) {
            iArr2 = this.f5500d;
            if (i16 >= iArr2.length) {
                break;
            }
            int i17 = this.f5499c;
            if (i17 == iArr2[i16][0]) {
                if (i17 == 0) {
                    break;
                }
                this.f5498b = i16;
                break;
            }
            i16++;
        }
        int i18 = b6 & 255;
        if (i18 == 1) {
            if (i16 < iArr2.length) {
                l0.b0.l0(iArr2[i16][1], 0);
            }
        } else if (i18 == 0) {
            int i19 = this.f5498b;
            if (i19 < iArr2.length && i19 != 255) {
                l0.b0.l0(iArr2[i19][1], 1);
            }
            this.f5498b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5505i);
        l0.b0.p0(this.f5506j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 66) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 146, 2, iArr[0], iArr[1]);
    }
}
