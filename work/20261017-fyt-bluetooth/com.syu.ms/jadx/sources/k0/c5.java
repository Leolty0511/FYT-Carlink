package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class c5 extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Runnable f3912e = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3914c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3915d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 13}, new int[]{10, 18}, new int[]{11, 26}, new int[]{19, 12}, new int[]{20, 18}, new int[]{21, 26}};

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 0) {
            this.f7886a.f8306a = null;
        } else {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            u0.c.f17386m.a(l0.c0.f13020n, 1);
            w0.e.f17815a.a(f3912e, 1);
            u0.c.f17374a.a(f3912e, 1);
            l0.b0.b(f3912e);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        String str;
        byte b2 = bArr[i2];
        boolean z2 = true;
        if (b2 == 1) {
            if (nt.a() || (i4 = nt.f8637c) == 3 || i4 == 4) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3914c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3915d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3914c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3913b = i5;
                        break;
                    }
                    i5++;
                }
                int i7 = b4 & 255;
                if (i7 == 1) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i7 == 0) {
                        int i8 = this.f3913b;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f3913b = 255;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            int i9 = i2 + 2;
            qt.y0(10, (bArr[i9] >> 7) & 1);
            qt.y0(11, (bArr[i9] >> 6) & 1);
            qt.y0(52, (bArr[i9] >> 5) & 1);
            qt.y0(13, (bArr[i9] >> 4) & 1);
            qt.y0(65, (bArr[i9] >> 3) & 1);
            qt.y0(16, (bArr[i9] >> 2) & 1);
            qt.y0(14, (bArr[i9] >> 1) & 1);
            qt.y0(12, (bArr[i9] >> 0) & 1);
            int i10 = i2 + 3;
            qt.y0(18, (bArr[i10] >> 6) & 1);
            qt.y0(19, (bArr[i10] >> 5) & 1);
            qt.y0(20, (bArr[i10] >> 4) & 1);
            qt.y0(21, (bArr[i10] >> 0) & 15);
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i12 = bArr[i2 + 5] & 255;
            }
            int i13 = -2;
            if (i12 == 0) {
                i12 = -2;
            } else if (i12 == 127) {
                i12 = -1;
            } else if (i12 == 255) {
                i12 = -3;
            }
            qt.y0(27, i12);
            int i14 = (SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i11] : bArr[i2 + 5]) & 255;
            if (i14 != 0) {
                i13 = i14 != 127 ? i14 != 255 ? i14 : -3 : -1;
            }
            qt.y0(28, i13);
            if (App.c().getResources().getConfiguration().orientation != 1 && ((bArr[i10] >> 7) & 1) != 1) {
                z2 = false;
            }
            if (!z2) {
                u0.d.A3(0);
                return;
            } else {
                int i15 = bArr[i2 + 6] & 255;
                u0.d.A3((i15 & 128) != 0 ? 1000 - ((256 - i15) * 10) : ((i15 & 255) * 10) + 1000);
                return;
            }
        }
        if (b2 == 10) {
            qt.y0(114, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 17) {
            int i16 = bArr[i2 + 2] & 255;
            int[] iArr2 = nt.f8645g;
            if (iArr2[111] != i16) {
                iArr2[111] = i16;
                o1.x.C(nt.f8643f, 111, new int[]{i16}, null, null);
            }
            int i17 = bArr[i2 + 3] & 255;
            if (iArr2[112] != i17) {
                iArr2[112] = i17;
                o1.x.C(nt.f8643f, 112, new int[]{i17}, null, null);
            }
            int i18 = (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8);
            if (iArr2[113] != i18) {
                iArr2[113] = i18;
                o1.x.C(nt.f8643f, 113, new int[]{i18}, null, null);
                return;
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 4:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                qt.y0(99, (b5 >> 7) & 1);
                qt.y0(100, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(101, (b7 & 255) | ((b6 & 255) << 8));
                break;
            case 5:
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 7];
                byte b11 = bArr[i2 + 8];
                byte b12 = bArr[i2 + 9];
                byte b13 = bArr[i2 + 10];
                byte b14 = bArr[i2 + 11];
                byte b15 = bArr[i2 + 12];
                qt.y0(102, b8 & 255);
                qt.y0(103, (b9 >> 4) & 255);
                qt.y0(104, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(105, ((b10 & 255) << 8) | (b11 & 255));
                qt.y0(106, ((b12 & 255) << 8) | (b13 & 255));
                qt.y0(107, (b15 & 255) | ((b14 & 255) << 8));
                break;
            case 6:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = i2 + 3;
                int i21 = (bArr[i20] >> 4) & 15;
                int i22 = bArr[i20] & DhcpPacket.DHCP_DOMAIN_NAME;
                String str2 = ProxyProperties.LOCAL_EXCL_LIST;
                try {
                    if (i21 == 0) {
                        str = new String(bArr, i2 + 4, 32, "GB2312");
                    } else if (i21 == 1) {
                        str = new String(bArr, i2 + 4, 32, "UTF-16BE");
                    } else if (i21 != 2) {
                        if (i21 == 3) {
                            str = new String(bArr, i2 + 4, 32, "UTF-8");
                        }
                        qt.z0(110, new int[]{i19, i21, i22}, str2);
                    } else {
                        str = new String(bArr, i2 + 4, 32, "UTF-16LE");
                    }
                    str2 = str;
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                qt.z0(110, new int[]{i19, i21, i22}, str2);
                break;
            case 7:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                break;
            case 8:
                u0.d.D2(a3(bArr[i2 + 3] & 255));
                int i23 = i2 + 4;
                u0.d.E2(a3(bArr[i23] & 255));
                u0.d.F2(a3(bArr[i23] & 255));
                u0.d.G2(a3(bArr[i2 + 5] & 255));
                u0.d.R2(a3(bArr[i2 + 6] & 255));
                int i24 = i2 + 7;
                u0.d.S2(a3(bArr[i24] & 255));
                u0.d.T2(a3(bArr[i24] & 255));
                u0.d.U2(a3(bArr[i2 + 8] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        w0.e.f17815a.d(f3912e);
        u0.c.f17374a.d(f3912e);
        l0.b0.p0(f3912e);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 116) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }
}
