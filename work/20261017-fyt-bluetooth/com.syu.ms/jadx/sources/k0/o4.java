package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class o4 extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f8720j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8723d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f8721b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8722c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8724e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f8725f = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 29}, new int[]{24, 6}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 13}, new int[]{129, 25}, new int[]{130, 11}, new int[]{131, 5}, new int[]{132, 2}, new int[]{133, 21}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 55}, new int[]{137, 12}, new int[]{138, 1}, new int[]{139, 38}, new int[]{140, 6}, new int[]{141, 76}, new int[]{142, 13}, new int[]{161, 40}, new int[]{162, 41}, new int[]{163, 42}, new int[]{164, 43}, new int[]{165, 44}, new int[]{166, 45}, new int[]{167, 39}, new int[]{168, 64}, new int[]{169, 18}, new int[]{170, 13}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8726g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8727h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8728i = false;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        this.f8721b.a();
        b3(this.f8721b.b(1, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2];
        int i5 = 0;
        if (b2 == 16) {
            qt.y0(56, bArr[i2 + 2] & 255);
            byte b3 = bArr[i2 + 3];
            int[] iArr3 = new int[1];
            iArr3[0] = (b3 & 128) != 0 ? 0 : 1;
            qt.y0(12, iArr3);
            qt.y0(65, (b3 >> 6) & 1);
            qt.y0(16, (b3 >> 5) & 1);
            qt.y0(20, (b3 >> 4) & 1);
            qt.y0(18, (b3 >> 3) & 1);
            qt.y0(11, (b3 >> 0) & 1);
            int i6 = bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME;
            qt.y0(21, i6 <= 7 ? i6 : 7);
            int i7 = i2 + 5;
            int i8 = bArr[i7] & 255;
            if (i8 == 1) {
                qt.y0(27, -2);
            } else if (i8 != 57) {
                qt.y0(27, bArr[i7] & 255);
            } else {
                qt.y0(27, -3);
            }
            int i9 = i2 + 6;
            int i10 = bArr[i9] & 255;
            if (i10 != 1) {
                if (i10 != 57) {
                    qt.y0(28, bArr[i9] & 255);
                    return;
                } else {
                    qt.y0(28, -3);
                    return;
                }
            }
            qt.y0(28, -2);
        }
        if (b2 == 18) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                int i11 = b4 & 255;
                this.f8724e = i11;
                int i12 = 0;
                while (true) {
                    iArr = this.f8725f;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    int i13 = this.f8724e;
                    if (i13 == iArr[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f8723d = i12;
                        break;
                    }
                    i12++;
                }
                int i14 = nt.f8633a;
                if (i14 == 259 || i14 == 65816 || i14 == 196888 || i14 == 262424 || i14 == 407 || i14 == 65943) {
                    if ((b5 & 255) != 0) {
                        if (i12 <= iArr.length) {
                            l0.b0.l0(iArr[i12][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i12 <= iArr.length) {
                            l0.b0.l0(iArr[this.f8723d][1], 1);
                            return;
                        }
                        return;
                    }
                }
                if (i11 != 0) {
                    if (i12 <= iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i12 <= iArr.length) {
                        l0.b0.l0(iArr[this.f8723d][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        int i15 = 4;
        if (b2 == 64) {
            int i16 = (bArr[i2 + 2] & 255) - 1;
            if (i16 < 0) {
                i15 = 0;
            } else if (i16 <= 4) {
                i15 = i16;
            }
            qt.y0(Process.MEDIA_UID, i15);
            return;
        }
        if (b2 == 80) {
            if (nt.a()) {
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                int i17 = b6 & 255;
                this.f8724e = i17 | 128;
                int i18 = 0;
                while (true) {
                    iArr2 = this.f8725f;
                    if (i18 >= iArr2.length) {
                        break;
                    }
                    int i19 = this.f8724e;
                    if (i19 == iArr2[i18][0]) {
                        if (i19 == 0) {
                            break;
                        }
                        this.f8723d = i18;
                        break;
                    }
                    i18++;
                }
                if (i17 >= 16 && i17 <= 19) {
                    if (i17 == 16 || i17 == 18) {
                        l0.b0.s0(b7 & 255);
                        return;
                    } else {
                        l0.b0.r0(b7 & 255);
                        return;
                    }
                }
                int i20 = nt.f8633a;
                if (i20 == 259 || i20 == 65816 || i20 == 196888 || i20 == 262424 || i20 == 407 || i20 == 65943) {
                    if ((b7 & 255) != 0) {
                        if (i18 <= iArr2.length) {
                            l0.b0.l0(iArr2[i18][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i18 <= iArr2.length) {
                            l0.b0.l0(iArr2[this.f8723d][1], 1);
                            return;
                        }
                        return;
                    }
                }
                if (i17 != 0) {
                    if (i18 <= iArr2.length) {
                        l0.b0.l0(iArr2[i18][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i18 <= iArr2.length) {
                        l0.b0.l0(iArr2[this.f8723d][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 85) {
            if (!nt.a() || (i4 = bArr[i2 + 9] & 255) == 255) {
                return;
            }
            if (i4 < 40) {
                i5 = 1000 - ((40 - i4) * 10);
            } else if (i4 >= 40 && i4 <= 200) {
                i5 = ((i4 - 40) * 10) + 1000;
            }
            u0.d.A3(i5);
            return;
        }
        if (b2 == 125) {
            int i21 = bArr[i2 + 2] & 255;
            if (i21 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i22 = i2 + 3;
                    l0.c0.b((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                    return;
                } else {
                    int i23 = i2 + 3;
                    l0.c0.a((bArr[i23] >> 3) & 1, (bArr[i23] >> 4) & 1, 0);
                    return;
                }
            }
            if (i21 == 3) {
                int i24 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i24);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i24}, null, null);
                return;
            } else {
                if (i21 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8728i = true;
                return;
            }
        }
        switch (b2) {
            case 49:
                if (!this.f8728i) {
                    qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, true, 4864);
                }
                break;
            case 50:
                if (nt.a()) {
                    byte b8 = bArr[i2 + 2];
                    byte b9 = bArr[i2 + 3];
                    this.f8726g = b8 & 255;
                    this.f8727h = b9 & 255;
                    u0.d.R2(a3(bArr[i2 + 4] & 255));
                    u0.d.S2(a3(bArr[i2 + 5] & 255));
                    u0.d.T2(a3(bArr[i2 + 6] & 255));
                    u0.d.U2(a3(bArr[i2 + 7] & 255));
                }
                break;
            case 51:
                if (nt.a()) {
                    byte b10 = bArr[i2 + 2];
                    byte b11 = bArr[i2 + 3];
                    this.f8726g = b10 & 255;
                    this.f8727h = b11 & 255;
                    u0.d.D2(a3(bArr[i2 + 4] & 255));
                    u0.d.E2(a3(bArr[i2 + 5] & 255));
                    u0.d.F2(a3(bArr[i2 + 6] & 255));
                    u0.d.G2(a3(bArr[i2 + 7] & 255));
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8721b.j();
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
        if (i2 == 1003) {
            z.k.s(227, -126, 1, 1);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            int i4 = 1;
            int i5 = i3 + 1;
            if (i5 >= 1) {
                i4 = i5 > 5 ? 5 : i5;
            }
            b3(i4);
        }
    }

    public final int a3(int i2) {
        int i3 = this.f8726g;
        if (i3 != 1) {
            if (i3 == 0) {
                int i4 = this.f8727h;
                if (i4 <= 10 && i4 > 0) {
                    return (10 / i4) * i2;
                }
                int i5 = i4 / 10;
                if (i5 != 0) {
                    return i2 / i5;
                }
            }
            return 0;
        }
        int i6 = nt.f8633a;
        if (i6 == 259 || i6 == 65816 || i6 == 196888 || i6 == 262424 || i6 == 407 || i6 == 65943) {
            if (i2 == 127 || i2 == 255) {
                return 10;
            }
            return (i2 / 10) - 2;
        }
        if (i2 == 0 || i2 == 10) {
            return 10;
        }
        return i2 - 1;
    }

    public final void b3(int i2) {
        f8720j = i2;
        z.k.s(227, -57, 1, (byte) i2);
        int iB = this.f8721b.b(1, 0);
        int i3 = f8720j;
        if (iB != i3) {
            this.f8721b.g(1, i3);
        }
    }
}
