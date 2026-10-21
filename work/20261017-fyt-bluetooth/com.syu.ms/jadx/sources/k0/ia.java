package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ia extends lt {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f6343g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6346d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f6344b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6345c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6347e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6348f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6344b.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        c3(this.f6344b.b(1, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        byte b2 = bArr[i2];
        int i8 = 0;
        if (b2 != 3) {
            if (b2 == 7) {
                qt.y0(99, bArr[i2 + 2] & 255);
                return;
            }
            if (b2 == 9) {
                if (bArr[i2 + 2] == 1) {
                    qt.y0(Process.MEDIA_UID, 1);
                    return;
                } else {
                    qt.y0(Process.MEDIA_UID, 0);
                    return;
                }
            }
            if (b2 == 13) {
                qt.y0(98, bArr[i2 + 2] & 255);
                return;
            }
            if (b2 == 40) {
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                } else {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                }
                qt.y0(3, (b3 >> 4) & 1);
                qt.y0(4, (b3 >> 5) & 1);
                qt.y0(5, (b3 >> 3) & 1);
                qt.y0(0, (b3 >> 2) & 1);
                return;
            }
            if (b2 == 48) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 5500);
                return;
            }
            if (b2 != 33) {
                if (b2 == 34 && nt.a()) {
                    int i9 = i2 + 2;
                    u0.d.R2(l0.c0.s1(bArr[i9] & 255));
                    u0.d.S2(l0.c0.s1(bArr[i9] & 255));
                    int i10 = i2 + 3;
                    u0.d.T2(l0.c0.s1(bArr[i10] & 255));
                    u0.d.U2(l0.c0.s1(bArr[i10] & 255));
                    return;
                }
                return;
            }
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f6347e = b4 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f6348f;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    int i12 = this.f6347e;
                    if (i12 == iArr[i11][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f6346d = i11;
                        break;
                    }
                    i11++;
                }
                if ((b5 & 255) != 0) {
                    if (i11 < iArr.length) {
                        l0.b0.l0(iArr[i11][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i13 = this.f6346d;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f6346d = 255;
                    return;
                }
            }
            return;
        }
        byte b6 = bArr[i2 + 2];
        qt.y0(10, (b6 >> 7) & 1);
        qt.y0(11, (b6 >> 6) & 1);
        qt.y0(12, (b6 >> 5) & 1);
        qt.y0(16, (b6 >> 4) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(21, b6 & 7);
        switch (bArr[i2 + 3] & 127) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 2:
            case 7:
                i7 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 3:
                i7 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i7 = 0;
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 5:
                i7 = 0;
                i5 = 0;
                i6 = 0;
                i4 = 1;
                break;
            case 6:
                i7 = 0;
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 8:
                i7 = 0;
                i4 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 9:
                i7 = 0;
                i4 = 1;
                i5 = i4;
                i6 = i5;
                break;
            default:
                i7 = 0;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
        }
        qt.y0(49, i7);
        qt.y0(18, i4);
        qt.y0(20, i5);
        qt.y0(19, i6);
        int i14 = i2 + 4;
        byte b7 = bArr[i14];
        int i15 = i2 + 5;
        byte b8 = bArr[i15];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i15];
            b8 = bArr[i14];
        }
        if (128 == b7) {
            qt.y0(27, -2);
        } else if (b7 == 157) {
            qt.y0(27, -3);
        } else if (((b7 >> 7) & 1) != 0 || b7 <= 0 || b7 >= 10) {
            qt.y0(27, (b7 & 127) + 36);
        } else {
            qt.y0(27, b7);
        }
        if (b8 == -128) {
            qt.y0(28, -2);
        } else if (b8 == -99) {
            qt.y0(28, -3);
        } else if (((b8 >> 7) & 1) != 0 || b8 <= 0 || b8 >= 10) {
            qt.y0(28, (b8 & 127) + 36);
        } else {
            qt.y0(28, b8);
        }
        byte b9 = bArr[i2 + 6];
        qt.y0(29, (b9 >> 4) & 15);
        qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (nt.a()) {
            byte b10 = bArr[i2 + 7];
            int i16 = b10 & 255;
            if (i16 != 255) {
                i8 = (i16 & 128) != 0 ? 1000 - ((b10 & 127) * 10) : ((b10 & 127) * 10) + 1000;
            }
            u0.d.A3(i8);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6344b.j();
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (b3(iArr, 1)) {
                a3(136, iArr[0]);
            }
        } else if (i2 == 1) {
            if (b3(iArr, 1)) {
                a3(132, iArr[0]);
            }
        } else if (i2 == 1005 && b3(iArr, 1)) {
            c3(iArr[0]);
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, (byte) i2, 1, (byte) i3);
    }

    public final boolean b3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void c3(int i2) {
        f6343g = i2;
        z.k.s(227, -119, 1, (byte) i2);
        int iB = this.f6344b.b(1, 0);
        int i3 = f6343g;
        if (iB != i3) {
            this.f6344b.g(1, i3);
        }
    }
}
