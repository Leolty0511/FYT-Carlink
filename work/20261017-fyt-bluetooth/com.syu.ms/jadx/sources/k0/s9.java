package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class s9 extends lt implements o1.q {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f10192o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10194c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10195d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{10, -1}, new int[]{18, 25}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 6}, new int[]{35, 9}, new int[]{37, 54}, new int[]{38, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10196e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10197f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f10198g = {34, 204};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10199h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f10200i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10201j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f10202k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10203l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10204m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10205n = 0;

    public static void c3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (((byte) (b2 & 255)) ^ 255);
        z.k.q(bArr);
    }

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
                a3(1);
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[77] == 6) {
                        a3(3);
                    }
                } else if (nt.f8645g[77] != 6) {
                    a3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(4);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        a3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
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
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 0) {
            if (i2 == 1) {
                this.f10200i.a();
                b3(this.f10200i.b(1, 0));
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 0;
                mtVar2.f8312g = 1;
                mtVar2.f8313h = 0;
                mtVar2.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41};
                return;
            }
            if (i2 == 2) {
                this.f10200i.a();
                b3(this.f10200i.b(1, 0));
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = null;
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 0;
                mtVar3.f8312g = 1;
                mtVar3.f8313h = 0;
                mtVar3.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41};
                return;
            }
            if (i2 != 12) {
                return;
            }
        }
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 2;
        z.k.s(227, -112, 1, 97);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        int i8 = 0;
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f10194c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f10195d;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f10194c;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f10193b = i9;
                        break;
                    }
                    i9++;
                }
                int i11 = this.f10194c;
                if (i11 == 10) {
                    if ((b4 & 255) == 1) {
                        int i12 = u0.b.f17347o;
                        if (i12 == 0) {
                            qt.a(1);
                            return;
                        } else {
                            if (i12 == 1) {
                                qt.a(0);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i11 == 32) {
                    for (int i13 = 0; i13 < (b4 & 255); i13++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                if (i11 == 33) {
                    for (int i14 = 0; i14 < (b4 & 255); i14++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                int i15 = b4 & 255;
                if (i15 == 1) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i15 != 0 || i9 > iArr.length) {
                        return;
                    }
                    l0.b0.l0(iArr[this.f10193b][1], 1);
                    return;
                }
            }
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            qt.y0(105, (b5 >> 4) & 1);
            qt.y0(106, (b5 >> 3) & 1);
            qt.y0(5, (b6 >> 4) & 1);
            qt.y0(4, (b6 >> 3) & 1);
            qt.y0(3, (b6 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 1) & 1);
                qt.y0(2, (b6 >> 0) & 1);
            } else {
                qt.y0(1, (b6 >> 0) & 1);
                qt.y0(2, (b6 >> 1) & 1);
            }
            int i16 = (b5 >> 1) & 1;
            int i17 = nt.f8637c;
            if (i17 != 1 && i17 != 8 && u0.b.f17347o == 0) {
                if (i16 != 0) {
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                    }
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
            if (nt.f8637c == 8) {
                if ((i16 | ((b5 >> 2) & 1)) != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 38) {
            if (nt.f8637c != 12) {
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                if (this.f10196e) {
                    return;
                }
                qt.l(b7, b8, true, 540);
                return;
            }
            return;
        }
        if (b2 == 41) {
            if (nt.f8637c == 12) {
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                if (this.f10196e) {
                    return;
                }
                qt.i(b9, b10, true, 19918);
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 85) {
            if (b2 == 87) {
                qt.I(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 125) {
                int i18 = bArr[i2 + 2] & 255;
                if (i18 == 1) {
                    if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                        int i19 = i2 + 3;
                        l0.c0.b((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                        return;
                    } else {
                        int i20 = i2 + 3;
                        l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
                        return;
                    }
                }
                if (i18 == 3) {
                    int i21 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                    qt.y0(1031, i21);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i21}, null, null);
                    return;
                } else {
                    if (i18 != 8) {
                        return;
                    }
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f10196e = true;
                    return;
                }
            }
            if (b2 == 65) {
                if (bArr[i2 + 2] == 2) {
                    int i22 = i2 + 3;
                    int i23 = i2 + 4;
                    qt.y0(102, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
                    qt.y0(1032, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
                    qt.y0(101, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(103, (bArr[i2 + 13] & 255) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY));
                    return;
                }
                return;
            }
            if (b2 == 66) {
                if (bArr[i2 + 2] == 1) {
                    qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                    qt.y0(100, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(99, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                    return;
                }
                return;
            }
            if (b2 == 96) {
                if ((bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                int i24 = i2 + 3;
                qt.y0(Process.MEDIA_UID, bArr[i24] & 255);
                this.f10197f = bArr[i24] & 255;
                return;
            }
            if (b2 != 97) {
                return;
            }
            byte b11 = bArr[i2 + 2];
            qt.y0(98, (b11 >> 7) & 1);
            qt.y0(99, (b11 >> 6) & 1);
            qt.y0(100, (b11 >> 5) & 1);
            qt.y0(107, (b11 >> 3) & 1);
            qt.y0(108, (b11 >> 2) & 1);
            qt.y0(109, (b11 >> 1) & 1);
            qt.y0(110, (b11 >> 0) & 1);
            return;
        }
        int i25 = i2 + 2;
        byte b12 = bArr[i25];
        int i26 = i2 + 3;
        byte b13 = bArr[i26];
        byte b14 = bArr[i2 + 4];
        byte b15 = bArr[i2 + 6];
        byte b16 = bArr[i2 + 7];
        byte b17 = bArr[i2 + 9];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b12 = bArr[i26];
            b13 = bArr[i25];
        }
        if (b12 < 36) {
            qt.y0(27, -2);
        } else if (b12 > 64) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, b12 & 255);
        }
        if (b13 < 36) {
            qt.y0(28, -2);
        } else if (b13 > 64) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, b13 & 255);
        }
        qt.y0(21, b14 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i27 = (b14 >> 4) & 15;
        if (i27 == 0) {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (i27 != 1) {
            if (i27 == 2) {
                i7 = 0;
                i4 = 0;
                i5 = 1;
            } else if (i27 == 3) {
                i7 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i27 == 4) {
                i7 = 0;
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i27 != 6) {
                i7 = 0;
                i4 = 0;
                i5 = 0;
            } else {
                i7 = 0;
                i5 = 0;
                i6 = 0;
                i4 = 1;
            }
            i6 = i5;
        } else {
            i7 = 0;
            i4 = 0;
            i6 = 0;
            i5 = 1;
        }
        qt.y0(49, i7);
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(77, i27);
        qt.y0(13, b15 & 1);
        qt.y0(11, (b15 >> 1) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = ((b15 >> 2) & 1) == 0 ? 1 : 0;
        qt.y0(14, iArr2);
        qt.y0(16, (b15 >> 6) & 1);
        if ((b16 & 3) == 1) {
            qt.y0(12, 1);
        } else {
            qt.y0(12, 0);
        }
        int i28 = b17 * 10;
        if (i28 < 400) {
            i8 = 1000 - (400 - i28);
        } else if (i28 >= 400 && i28 <= 1250) {
            i8 = (i28 + 1000) - 400;
        }
        if (i8 > 600) {
            u0.d.A3(i8);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10200i.j();
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 112) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -125, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr != null) {
                z.k.s(227, -112, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 != 16) {
            if (i2 == 18) {
                if (T2(iArr, 1)) {
                    b3(iArr[0]);
                    return;
                }
                return;
            }
            if (i2 == 1003) {
                int i3 = u0.b.f17347o;
                if (i3 == 0) {
                    z.k.s(227, -126, 1, 1);
                    return;
                } else {
                    if (i3 == 1) {
                        z.k.s(227, -126, 1, 0);
                        return;
                    }
                    return;
                }
            }
            if (i2 != 1005) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE = " + iArr[0]);
            if (iArr.length > 0) {
                int i4 = this.f10197f;
                if (i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6) {
                    int i5 = iArr[0];
                    if (i5 == 0) {
                        z.k.s(227, -126, 1, 5);
                    } else if (i5 == 1) {
                        z.k.s(227, -126, 1, 2);
                    } else if (i5 == 2) {
                        z.k.s(227, -126, 1, 4);
                    } else if (i5 == 3) {
                        z.k.s(227, -126, 1, 3);
                    }
                } else {
                    int i6 = iArr[0];
                    if (i6 == 0) {
                        z.k.s(227, -126, 1, 2);
                    } else if (i6 == 1) {
                        z.k.s(227, -126, 1, 5);
                    } else if (i6 == 2) {
                        z.k.s(227, -126, 1, 4);
                    } else if (i6 == 3) {
                        z.k.s(227, -126, 1, 3);
                    }
                }
            }
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f10198g[this.f10199h % 2], 37, 13, -86, 0});
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f10198g[this.f10199h % 2], 37, 13, -86, 0});
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f10198g[this.f10199h % 2], 37, 13, -86, 0});
        int i7 = this.f10199h + 1;
        this.f10199h = i7;
        this.f10199h = i7 % 2;
    }

    public final void a3(int i2) {
        Z0(16, new int[]{i2}, null, null);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f10203l + bArr.length > 1024) {
            this.f10203l = 0;
            this.f10204m = 0;
            this.f10205n = 0;
        }
        System.arraycopy(bArr, 0, this.f10202k, this.f10203l, bArr.length);
        int length = this.f10203l + bArr.length;
        this.f10203l = length;
        int i5 = this.f10205n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f10202k[1];
            int i6 = 2;
            while (true) {
                i4 = this.f10205n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f10202k[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f10202k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, bArr2[2] + 2);
                this.f10204m = this.f10205n + 1;
            } else {
                this.f10204m = 2;
            }
            this.f10205n = 0;
        }
        int i7 = this.f10203l - 2;
        while (true) {
            i2 = this.f10204m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f10202k;
            if (bArr3[i2] == 46) {
                if (this.f10205n > 512) {
                    this.f10205n = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 3;
                    this.f10205n = i8;
                    if (i8 >= this.f10203l) {
                        this.f10205n = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i9 = i2 + 2;
                    while (true) {
                        i3 = this.f10205n;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f10202k[i9]);
                        i9++;
                    }
                    byte b5 = (byte) (b4 ^ 255);
                    byte[] bArr4 = this.f10202k;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f10204m;
                        U2(bArr4, i10 + 1, bArr4[i10 + 2] + 2);
                        this.f10204m = this.f10205n;
                    } else {
                        this.f10204m++;
                    }
                    this.f10205n = 0;
                }
            }
            this.f10204m++;
        }
        if (i2 != 0) {
            int i11 = this.f10203l - i2;
            this.f10203l = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f10202k;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f10204m = 0;
        }
    }

    public final void b3(int i2) {
        f10192o = i2;
        qt.y0(111, i2);
        int iB = this.f10200i.b(1, 0);
        int i3 = f10192o;
        if (iB != i3) {
            this.f10200i.g(1, i3);
        }
    }
}
