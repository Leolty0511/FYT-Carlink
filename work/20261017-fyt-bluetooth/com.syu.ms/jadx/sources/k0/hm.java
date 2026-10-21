package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class hm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6082b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6085e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6083c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6084d = {new int[]{1, 29}, new int[]{2, 4}, new int[]{3, 3}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 30}, new int[]{9, 31}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6086f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6087g = {new int[]{1, 5}, new int[]{11, 29}, new int[]{14, 30}, new int[]{15, 31}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6088h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6089i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6090j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6091k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6092l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6093m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f6094n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = hm.this.f6090j;
            if (i2 != u0.b.D) {
                if (i2 == 13) {
                    z.k.s(227, 130, 1, 10);
                }
                hm.this.f6090j = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hm.this.f6094n);
            hm.this.f6092l = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hm hmVar = hm.this;
            int i2 = hmVar.f6092l - 1;
            hmVar.f6092l = i2;
            if (i2 <= 0) {
                l0.b0.p0(hmVar.f6094n);
                hm.this.f6092l = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 1);
                if (u0.b.D != 13) {
                    z.k.s(227, 130, 1, 10);
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
        mtVar.f8311f = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f6093m, 1);
        u0.c.f17374a.a(this.f6091k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String str;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            int i4 = i2 + 2;
            qt.y0(98, (bArr[i4] >> 7) & 1);
            qt.y0(99, (bArr[i4] >> 4) & 7);
            if (this.f6088h != ((bArr[i4] >> 4) & 7)) {
                int i5 = (bArr[i4] >> 4) & 7;
                this.f6088h = i5;
                if (i5 == 1) {
                    a3();
                }
            }
            qt.y0(100, (bArr[i4] >> 3) & 1);
            return;
        }
        if (b2 == 113) {
            String str2 = "LZ_";
            if ((bArr[i2 + 2] & 255) == 9) {
                str2 = "LZ_Oubao_";
            }
            int i6 = bArr[i2 + 3] & 255;
            if (i6 == 0) {
                str2 = str2 + "All_";
            } else if (i6 == 1) {
                str2 = str2 + "Astra_";
            } else if (i6 == 2) {
                str2 = str2 + "Andela_";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("20");
            int i7 = i2 + 4;
            sb.append((bArr[i7] >> 4) & 15);
            sb.append((bArr[i7] >> 0) & 15);
            sb.append(".");
            int i8 = i2 + 5;
            sb.append((bArr[i8] >> 4) & 15);
            sb.append((bArr[i8] >> 0) & 15);
            sb.append(".");
            int i9 = i2 + 6;
            sb.append((bArr[i9] >> 4) & 15);
            sb.append((bArr[i9] >> 0) & 15);
            sb.append("_V");
            sb.append(new String(bArr, i2 + 8, 3));
            qt.L(sb.toString());
            return;
        }
        if (b2 == 7) {
            try {
                qt.z0(101, new int[]{0}, new String(bArr, i2 + 2, i3 - 2, "UTF-16BE"));
                return;
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (b2 == 8) {
            int i10 = i2 + 2;
            qt.y0(10, (bArr[i10] >> 7) & 1);
            qt.y0(11, (bArr[i10] >> 6) & 1);
            qt.y0(12, (bArr[i10] >> 5) & 1);
            qt.y0(13, (bArr[i10] >> 4) & 1);
            qt.y0(52, (bArr[i10] >> 3) & 1);
            qt.y0(65, (bArr[i10] >> 1) & 1);
            int i11 = i2 + 3;
            qt.y0(18, (bArr[i11] >> 7) & 1);
            qt.y0(19, (bArr[i11] >> 6) & 1);
            qt.y0(20, (bArr[i11] >> 5) & 1);
            qt.y0(49, (bArr[i11] >> 4) & 1);
            qt.y0(21, (bArr[i11] >> 0) & 15);
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i13 = bArr[i14] & 255;
                i15 = bArr[i12] & 255;
            }
            if (i13 == 0) {
                qt.y0(28, -2);
            } else if (i13 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i13);
            }
            if (i15 == 0) {
                qt.y0(27, -2);
            } else if (i15 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i15);
            }
            qt.y0(37, (bArr[i2 + 6] >> 0) & 1);
            return;
        }
        if (b2 == 11) {
            qt.y0(102, (bArr[i2 + 3] >> 0) & 15);
            try {
                qt.z0(103, new int[]{0}, new String(bArr, i2 + 4, i3 - 4, "UTF-16BE"));
                return;
            } catch (UnsupportedEncodingException e3) {
                e3.printStackTrace();
                return;
            }
        }
        if (b2 == 12) {
            int i16 = i2 + 2;
            this.f6089i = (bArr[i16] >> 6) & 1;
            qt.y0(118, (bArr[i16] >> 7) & 1);
            qt.y0(119, (bArr[i16] >> 6) & 1);
            qt.y0(120, (bArr[i16] >> 4) & 3);
            try {
                str = new String(bArr, i2 + 4, i3 - 4, "UTF-16BE");
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            int i17 = (bArr[i16] >> 4) & 3;
            switch (bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME) {
                case 0:
                    qt.z0(121, new int[]{i17}, str);
                    break;
                case 1:
                    qt.z0(122, new int[]{i17}, str);
                    break;
                case 2:
                    qt.z0(123, new int[]{i17}, str);
                    break;
                case 3:
                    qt.z0(124, new int[]{i17}, str);
                    break;
                case 4:
                    qt.z0(125, new int[]{i17}, str);
                    break;
                case 5:
                    qt.z0(126, new int[]{i17}, str);
                    break;
                case 6:
                    qt.z0(121, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(122, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(123, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(124, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(125, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    qt.z0(126, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                    break;
            }
            return;
        }
        if (b2 == 14) {
            if (this.f6089i == 1) {
                qt.y0(127, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6086f = b3 & 255;
            int i18 = 0;
            while (true) {
                iArr = this.f6087g;
                if (i18 >= iArr.length) {
                    break;
                }
                int i19 = this.f6086f;
                if (i19 == iArr[i18][0]) {
                    if (i19 == 0) {
                        break;
                    }
                    this.f6085e = i18;
                    break;
                }
                i18++;
            }
            int i20 = b4 & 255;
            if (i20 == 1) {
                if (i18 < iArr.length) {
                    l0.b0.l0(iArr[i18][1], 0);
                    return;
                }
                return;
            } else {
                if (i20 == 0) {
                    int i21 = this.f6085e;
                    if (i21 < iArr.length && i21 != 255) {
                        l0.b0.l0(iArr[i21][1], 1);
                    }
                    this.f6085e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 15) {
            if (b2 == 36) {
                int i22 = i2 + 2;
                if ((bArr[i22] & 255) >= 128) {
                    qt.m(bArr[i22], 0, 128, true, 50);
                    return;
                } else {
                    qt.j(bArr[i22], 0, 0, 50);
                    return;
                }
            }
            if (b2 == 37) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i23 = i2 + 2;
                    qt.y0(1, (bArr[i23] >> 7) & 1);
                    qt.y0(2, (bArr[i23] >> 6) & 1);
                } else {
                    int i24 = i2 + 2;
                    qt.y0(2, (bArr[i24] >> 7) & 1);
                    qt.y0(1, (bArr[i24] >> 6) & 1);
                }
                int i25 = i2 + 2;
                qt.y0(3, (bArr[i25] >> 4) & 1);
                qt.y0(4, (bArr[i25] >> 5) & 1);
                qt.y0(5, (bArr[i25] >> 3) & 1);
                qt.y0(0, (bArr[i25] >> 2) & 1);
                return;
            }
            switch (b2) {
                case 17:
                    int i26 = ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255);
                    u0.d.A3((32768 & i26) != 0 ? 1000 - ((65536 - i26) * 5) : (i26 * 5) + 1000);
                    break;
                case 18:
                    qt.y0(104, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(105, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(106, bArr[i2 + 6] & 255);
                    qt.y0(107, bArr[i2 + 7] & 255);
                    qt.y0(108, bArr[i2 + 8] & 255);
                    qt.y0(109, bArr[i2 + 9] & 255);
                    break;
                case 19:
                    qt.y0(110, ((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(111, bArr[i2 + 6] & 255);
                    qt.y0(112, (16711680 & (bArr[i2 + 8] << 16)) | ((-16777216) & (bArr[i2 + 7] << 24)) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(113, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                    break;
                case 20:
                    qt.y0(114, ((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(115, bArr[i2 + 6] & 255);
                    qt.y0(116, (16711680 & (bArr[i2 + 8] << 16)) | ((-16777216) & (bArr[i2 + 7] << 24)) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(117, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                    break;
            }
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        this.f6083c = b5 & 255;
        int i27 = 0;
        while (true) {
            iArr2 = this.f6084d;
            if (i27 >= iArr2.length) {
                break;
            }
            int i28 = this.f6083c;
            if (i28 == iArr2[i27][0]) {
                if (i28 == 0) {
                    break;
                }
                this.f6082b = i27;
                break;
            }
            i27++;
        }
        int i29 = this.f6083c;
        if (i29 == 6) {
            if ((b6 & 255) == 1) {
                int i30 = h0.c.E;
                if (i30 == 3 || i30 == 4 || i30 == 5) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                } else {
                    l0.b0.l0(21, 0);
                    l0.b0.l0(21, 1);
                    return;
                }
            }
            return;
        }
        if (i29 != 7) {
            int i31 = b6 & 255;
            if (i31 == 1) {
                if (i27 < iArr2.length) {
                    l0.b0.l0(iArr2[i27][1], 0);
                    return;
                }
                return;
            } else {
                if (i31 == 0) {
                    int i32 = this.f6082b;
                    if (i32 < iArr2.length && i32 != 255) {
                        l0.b0.l0(iArr2[i32][1], 1);
                    }
                    this.f6082b = 255;
                    return;
                }
                return;
            }
        }
        if ((b6 & 255) == 1) {
            int i33 = h0.c.E;
            if (i33 != 3) {
                if (i33 == 4) {
                    l0.b0.l0(18, 0);
                    l0.b0.l0(18, 1);
                    return;
                } else if (i33 != 5) {
                    l0.b0.l0(2, 0);
                    l0.b0.l0(2, 1);
                    return;
                }
            }
            l0.b0.l0(26, 0);
            l0.b0.l0(26, 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6093m);
        u0.c.f17374a.d(this.f6091k);
        l0.b0.p0(this.f6094n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 1, iArr[0]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void a3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.luz.oubao.Luz_Oubao_CarInfo")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.luz.oubao.Luz_Oubao_CarInfo");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
