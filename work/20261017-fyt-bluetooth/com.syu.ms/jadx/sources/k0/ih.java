package k0;

import android.content.pm.PackageManager;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ih extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6426b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6429e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6427c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6428d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{22, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6430f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6431g = {new int[]{1, 9}, new int[]{2, 12}, new int[]{3, 53}, new int[]{4, 1}, new int[]{5, 16}, new int[]{6, 18}, new int[]{7, 3}, new int[]{8, 4}, new int[]{9, 0}, new int[]{16, 7}, new int[]{17, 8}, new int[]{18, 21}, new int[]{19, 18}, new int[]{20, 26}, new int[]{21, 55}, new int[]{22, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8319n = 1;
        mtVar.f8320o = 0;
        z.k.s(227, -127, 1, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 7936, false, 5120);
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i4 = i2 + 3;
            l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6427c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f6428d;
                    if (i5 < iArr.length) {
                        int i6 = this.f6427c;
                        if (i6 != iArr[i5][0]) {
                            i5++;
                        } else if (i6 != 0) {
                            this.f6426b = i5;
                        }
                    }
                }
                int i7 = b4 & 255;
                if (i7 == 1) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                    }
                } else if (i7 == 0) {
                    int i8 = this.f6426b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f6426b = 255;
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f6430f = b5 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f6431g;
                    if (i9 < iArr2.length) {
                        int i10 = this.f6430f;
                        if (i10 != iArr2[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f6429e = i9;
                        }
                    }
                }
                int i11 = this.f6430f;
                if (i11 != 3) {
                    if (i11 == 16) {
                        for (int i12 = 0; i12 < (b6 & 255); i12++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (i11 != 17) {
                        int i13 = b6 & 255;
                        if (i13 == 1) {
                            if (i9 < iArr2.length) {
                                l0.b0.l0(iArr2[i9][1], 0);
                            }
                        } else if (i13 == 0) {
                            int i14 = this.f6429e;
                            if (i14 < iArr2.length && i14 != 255) {
                                l0.b0.l0(iArr2[i14][1], 1);
                            }
                            this.f6429e = 255;
                        }
                    } else {
                        for (int i15 = 0; i15 < (b6 & 255); i15++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                } else if (b6 == 1) {
                    if (o1.u.T("com.syu.canbusdvr")) {
                        o1.u.k();
                    } else {
                        o1.u.f("com.syu.canbusdvr");
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.c1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.c1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.c1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.c1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.c1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.c1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.c1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.c1(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                } else {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                }
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                qt.y0(0, (b7 >> 2) & 1);
                break;
            case 37:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                byte b10 = bArr[i2 + 4];
                byte b11 = bArr[i2 + 5];
                byte b12 = bArr[i2 + 6];
                byte b13 = bArr[i2 + 7];
                qt.y0(10, (b8 >> 7) & 1);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(13, (b8 >> 3) & 1);
                qt.y0(18, (b9 >> 7) & 1);
                qt.y0(19, (b9 >> 6) & 1);
                qt.y0(20, (b9 >> 5) & 1);
                qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i16 = b10 & 255;
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 != 31) {
                    qt.y0(27, i16);
                } else {
                    qt.y0(27, -3);
                }
                int i17 = b11 & 255;
                if (i17 == 0) {
                    qt.y0(28, -2);
                } else if (i17 != 31) {
                    qt.y0(28, i16);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(37, b12 & 1);
                qt.y0(65, (b12 >> 7) & 1);
                qt.y0(16, (b12 >> 6) & 1);
                qt.y0(42, (b13 >> 7) & 1);
                qt.y0(44, b13 & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 38:
                qt.y0(Process.MEDIA_UID, bArr[i2 + 2] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
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
        if (i2 != 1005) {
            if (i2 != 1029) {
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY, 2, (iArr[1] * 255) / 800, (iArr[2] * 127) / 480);
                return;
            } else {
                if (iArr[0] == 1) {
                    z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY, 2, 0, 127);
                    return;
                }
                return;
            }
        }
        if (T2(iArr, 1)) {
            if (iArr[0] <= 1) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 1, iArr[0]);
                return;
            }
            if (iArr[0] != 4 && iArr[0] != 5 && iArr[0] != 6) {
                int i3 = iArr[0];
            }
            z.k.s(227, -110, 1, iArr[0]);
        }
    }
}
