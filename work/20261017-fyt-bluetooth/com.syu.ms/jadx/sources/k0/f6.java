package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class f6 extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f5068i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5071d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f5069b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5070c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5072e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5073f = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 29}, new int[]{24, 6}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 13}, new int[]{129, 25}, new int[]{130, 11}, new int[]{131, 5}, new int[]{132, 2}, new int[]{133, 21}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 55}, new int[]{137, 12}, new int[]{138, 1}, new int[]{139, 38}, new int[]{140, 6}, new int[]{141, 76}, new int[]{142, 13}, new int[]{161, 40}, new int[]{162, 41}, new int[]{163, 42}, new int[]{164, 43}, new int[]{165, 44}, new int[]{166, 45}, new int[]{167, 39}, new int[]{168, 64}, new int[]{169, 18}, new int[]{170, 13}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5074g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5075h = 0;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5069b.a();
        b3(this.f5069b.b(1, 0));
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 16) {
            if (b2 != 18) {
                if (b2 == 40) {
                    int i4 = (bArr[i2 + 2] & 255) - 1;
                    if (i4 < 0) {
                        i4 = 0;
                    } else if (i4 > 4) {
                        i4 = 4;
                    }
                    qt.y0(Process.MEDIA_UID, i4);
                    return;
                }
                if (b2 == 50 && nt.a()) {
                    this.f5074g = bArr[i2 + 2] & 255;
                    this.f5075h = bArr[i2 + 3] & 255;
                    u0.d.R2(a3(bArr[i2 + 4] & 255));
                    u0.d.S2(a3(bArr[i2 + 5] & 255));
                    u0.d.T2(a3(bArr[i2 + 6] & 255));
                    u0.d.U2(a3(bArr[i2 + 7] & 255));
                    return;
                }
                return;
            }
            if (nt.a()) {
                int i5 = bArr[i2 + 2] & 255;
                this.f5072e = i5;
                int i6 = 0;
                while (true) {
                    iArr = this.f5073f;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f5072e;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f5071d = i6;
                        break;
                    }
                    i6++;
                }
                if (i5 != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i6 <= iArr.length) {
                        l0.b0.l0(iArr[this.f5071d][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        qt.y0(56, bArr[i2 + 2] & 255);
        byte b3 = bArr[i2 + 3];
        int[] iArr2 = new int[1];
        iArr2[0] = (b3 & 128) != 0 ? 0 : 1;
        qt.y0(12, iArr2);
        qt.y0(65, (b3 >> 6) & 1);
        qt.y0(16, (b3 >> 5) & 1);
        qt.y0(20, (b3 >> 4) & 1);
        qt.y0(18, (b3 >> 3) & 1);
        qt.y0(11, (b3 >> 0) & 1);
        int i8 = bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME;
        qt.y0(21, i8 <= 7 ? i8 : 7);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i9 = i2 + 6;
            int i10 = bArr[i9] & 255;
            if (i10 == 1) {
                qt.y0(27, -2);
            } else if (i10 != 57) {
                qt.y0(27, bArr[i9] & 255);
            } else {
                qt.y0(27, -3);
            }
            int i11 = i2 + 5;
            int i12 = bArr[i11] & 255;
            if (i12 == 1) {
                qt.y0(28, -2);
                return;
            } else if (i12 != 57) {
                qt.y0(28, bArr[i11] & 255);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
        }
        int i13 = i2 + 5;
        int i14 = bArr[i13] & 255;
        if (i14 == 1) {
            qt.y0(27, -2);
        } else if (i14 != 57) {
            qt.y0(27, bArr[i13] & 255);
        } else {
            qt.y0(27, -3);
        }
        int i15 = i2 + 6;
        int i16 = bArr[i15] & 255;
        if (i16 == 1) {
            qt.y0(28, -2);
        } else if (i16 != 57) {
            qt.y0(28, bArr[i15] & 255);
        } else {
            qt.y0(28, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5069b.j();
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
        int i3 = this.f5074g;
        if (i3 == 1) {
            if (i2 == 0 || i2 == 10) {
                return 10;
            }
            return i2 - 1;
        }
        if (i3 == 0) {
            int i4 = this.f5075h;
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

    public final void b3(int i2) {
        f5068i = i2;
        z.k.s(227, -57, 1, (byte) i2);
        int iB = this.f5069b.b(1, 0);
        int i3 = f5068i;
        if (iB != i3) {
            this.f5069b.g(1, i3);
        }
    }
}
