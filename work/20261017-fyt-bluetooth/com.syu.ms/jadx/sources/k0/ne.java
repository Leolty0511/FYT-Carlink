package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ne extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8465b = {34, 204};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8466c = 0;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[100] & 15) > 0) {
                        a3(1);
                    }
                } else if ((nt.f8645g[100] & 15) == 0) {
                    a3(20);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[102] >> 1) & 1) == 1) {
                        a3(16);
                    }
                } else if (((nt.f8645g[102] >> 1) & 1) == 0) {
                    a3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[102] & 1) == 1) {
                        a3(2);
                    }
                } else if ((nt.f8645g[102] & 1) == 0) {
                    a3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[102] >> 7) & 1) == 1) {
                        a3(3);
                    }
                } else if (((nt.f8645g[102] >> 7) & 1) == 0) {
                    a3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[102] >> 6) & 1) == 1) {
                        a3(4);
                    }
                } else if (((nt.f8645g[102] >> 6) & 1) == 0) {
                    a3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[103] >> 1) & 1) == 0) {
                        a3(35);
                    }
                    break;
                } else if (iArr[1] == 1 && ((nt.f8645g[103] >> 1) & 1) == 1) {
                    a3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(21);
                } else {
                    a3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(10);
                } else {
                    a3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(12);
                } else {
                    a3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8633a == 131495) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8312g = 1;
            mtVar.f8311f = 1;
        } else {
            this.f7886a.f8312g = 0;
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8311f = 0;
            mtVar2.f8320o = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        if (b2 != 85) {
            if (b2 != 87) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i11 = i2 + 2;
        qt.y0(98, bArr[i11]);
        int i12 = i2 + 3;
        qt.y0(99, bArr[i12]);
        int i13 = i2 + 4;
        qt.y0(100, bArr[i13]);
        int i14 = i2 + 5;
        qt.y0(101, bArr[i14]);
        int i15 = i2 + 6;
        qt.y0(102, bArr[i15]);
        int i16 = i2 + 7;
        qt.y0(103, bArr[i16]);
        if (nt.f8633a == 131495) {
            int i17 = i2 + 1;
            int i18 = bArr[i17] & 255;
            int i19 = bArr[i11] & 255;
            byte b3 = bArr[i12];
            byte b4 = bArr[i13];
            byte b5 = bArr[i14];
            byte b6 = bArr[i15];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i18 = bArr[i11] & 255;
                i19 = bArr[i17] & 255;
            }
            int i20 = i18 * 5;
            int i21 = -2;
            if (i20 == 170) {
                i7 = -2;
            } else if (i20 == 330) {
                i7 = -3;
            } else {
                i7 = i20 == 0 ? -1 : 0;
            }
            qt.y0(27, i7);
            int i22 = i19 * 5;
            if (i22 != 170) {
                if (i22 == 330) {
                    i21 = -3;
                } else {
                    i21 = i22 == 0 ? -1 : 0;
                }
            }
            qt.y0(28, i21);
            qt.y0(21, b3 & 7);
            int i23 = b4 & 7;
            if (i23 == 1) {
                i8 = 1;
                i9 = 0;
                i10 = 0;
            } else if (i23 == 2) {
                i8 = 1;
                i10 = 1;
                i9 = 0;
            } else if (i23 == 3) {
                i10 = 1;
                i9 = 0;
                i8 = 0;
            } else if (i23 != 4) {
                i9 = 0;
                i8 = 0;
                i10 = 0;
            } else {
                i9 = 1;
                i10 = 1;
                i8 = 0;
            }
            qt.y0(18, i9);
            qt.y0(19, i8);
            qt.y0(20, i10);
            qt.y0(77, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(13, b5 & 1);
            qt.y0(11, (b5 >> 1) & 1);
            qt.y0(12, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 4) & 1);
            qt.y0(15, (b5 >> 5) & 1);
            qt.y0(16, (b5 >> 6) & 1);
            qt.y0(53, (b5 >> 7) & 1);
            u0.d.A3(((b6 - 128) * 10) + 1000);
            return;
        }
        if (nt.a()) {
            int i24 = bArr[i11] & 255;
            int i25 = bArr[i12] & 255;
            int i26 = bArr[i13] & 255;
            int i27 = bArr[i15] & 255;
            int i28 = bArr[i16] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i24 = bArr[i12] & 255;
                i25 = bArr[i11] & 255;
            }
            qt.y0(27, i24);
            qt.y0(28, i25);
            qt.y0(21, i26 & 15);
            int i29 = (i26 >> 4) & 15;
            switch (i29) {
                case 1:
                    i4 = 1;
                    i5 = 0;
                    i6 = 0;
                    break;
                case 2:
                    i4 = 1;
                    i6 = 1;
                    i5 = 0;
                    break;
                case 3:
                    i6 = 1;
                    i5 = 0;
                    i4 = 0;
                    break;
                case 4:
                    i5 = 1;
                    i6 = 1;
                    i4 = 0;
                    break;
                case 5:
                    i5 = 1;
                    i4 = 1;
                    i6 = 0;
                    break;
                case 6:
                    i5 = 1;
                    i4 = 0;
                    i6 = i4;
                    break;
                case 7:
                    i5 = 1;
                    i4 = i5;
                    i6 = i4;
                    break;
                default:
                    i5 = 0;
                    i4 = i5;
                    i6 = i4;
                    break;
            }
            qt.y0(18, i5);
            qt.y0(19, i4);
            qt.y0(20, i6);
            qt.y0(77, i29);
            qt.y0(13, i27 & 1);
            qt.y0(11, (i27 >> 1) & 1);
            qt.y0(14, (i27 >> 2) & 1);
            qt.y0(15, (i27 >> 5) & 1);
            qt.y0(16, (i27 >> 6) & 1);
            qt.y0(12, (i28 >> 0) & 3);
            int i30 = bArr[i2 + 9] & 255;
            boolean z2 = i30 < 200;
            if (!z2) {
                i30 = (255 - i30) + 1;
            }
            if (z2) {
                if (i30 >= 0 && i30 <= 85) {
                    i30 = (i30 * 10) + 1000;
                }
            } else if (i30 <= 85) {
                i30 = 1000 - (i30 * 10);
            }
            if (i30 > 600) {
                u0.d.A3(i30);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 1)) {
            z.k.s(227, 51, 5, iArr[0], this.f8465b[this.f8466c % 2], 37, 1, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8465b[this.f8466c % 2], 37, 1, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8465b[this.f8466c % 2], 37, 1, 170);
            int i3 = this.f8466c + 1;
            this.f8466c = i3;
            this.f8466c = i3 % 2;
        }
    }

    public final void a3(int i2) {
        Z0(0, new int[]{i2}, null, null);
    }
}
