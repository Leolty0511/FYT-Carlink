package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class t9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10577c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10578d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{11, 29}, new int[]{12, 29}, new int[]{18, 25}, new int[]{19, 29}, new int[]{20, 31}, new int[]{21, 30}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 6}, new int[]{35, 9}, new int[]{36, 1}, new int[]{37, 54}, new int[]{38, 5}, new int[]{39, 1}, new int[]{40, 12}, new int[]{41, 55}, new int[]{42, 64}, new int[]{43, 24}, new int[]{44, 38}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10579e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10580f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 5:
                    z.k.s(227, 238, 2, 1, 0);
                    break;
                case 6:
                case 13:
                    z.k.s(227, 238, 2, 1, 1);
                    break;
                case 7:
                case 14:
                    z.k.s(227, 238, 2, 1, 2);
                    break;
                case 9:
                    z.k.s(227, 238, 2, 1, 3);
                    break;
                case 10:
                    z.k.s(227, 238, 2, 1, 4);
                    break;
                case 11:
                    z.k.s(227, 238, 2, 1, 5);
                    break;
                case 15:
                    z.k.s(227, 238, 2, 1, 6);
                    break;
            }
        }
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
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] == 1) {
                        a3(0);
                    }
                } else if (nt.f8645g[21] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(1);
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
                        a3(6);
                    }
                } else if (nt.f8645g[77] != 6) {
                    a3(6);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(21);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        a3(4);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    a3(5);
                    break;
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    int i2 = nt.f8645g[21] + 1;
                    if (i2 > 7) {
                        i2 = 7;
                    }
                    z.k.s(227, 168, 2, 18, i2);
                } else if (iArr[1] != -2) {
                    z.k.s(227, 168, 2, 18, iArr[1]);
                } else {
                    int i3 = nt.f8645g[21] - 1;
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    z.k.s(227, 168, 2, 18, i3);
                }
                break;
            case 41:
            case 42:
                if (iArr[1] == 1) {
                    int i4 = nt.f8645g[27] + 1;
                    if (i4 > 15) {
                        i4 = 15;
                    }
                    z.k.s(227, 168, 2, 19, i4);
                } else if (iArr[1] == 0) {
                    int i5 = nt.f8645g[27] - 1;
                    if (i5 < 0) {
                        i5 = 0;
                    }
                    z.k.s(227, 168, 2, 19, i5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f10580f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    /* JADX WARN: Code duplicated, block: B:31:0x011c  */
    /* JADX WARN: Code duplicated, block: B:34:0x012d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0165  */
    /* JADX WARN: Code duplicated, block: B:52:0x0171  */
    /* JADX WARN: Code duplicated, block: B:55:0x017e  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2;
        byte b3;
        int i8;
        int i9;
        int i10;
        byte b4 = bArr[i2];
        if (b4 == 38) {
            int i11 = nt.f8637c;
            if (i11 == 13 || i11 == 14) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (this.f10579e) {
                return;
            }
            qt.l(b5, b6, true, 540);
        }
        if (b4 == 41) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            int i12 = nt.f8637c;
            if (i12 == 13 || i12 == 14) {
                if (this.f10579e) {
                    return;
                }
                qt.i(b7, b8, true, 19918);
                return;
            } else if (i12 == 19 || i12 == 21) {
                if (this.f10579e) {
                    return;
                }
                qt.i(b7, b8, true, 4864);
                return;
            } else {
                if (i12 != 22 || this.f10579e) {
                    return;
                }
                qt.i(b7, b8, true, 6400);
                return;
            }
        }
        if (b4 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 125) {
            int i13 = bArr[i2 + 2] & 255;
            if (i13 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i14 = i2 + 3;
                    l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    return;
                } else {
                    int i15 = i2 + 3;
                    l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                }
            }
            if (i13 == 3) {
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            }
            if (i13 != 5) {
                if (i13 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f10579e = true;
                return;
            }
            int i17 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i17 >> 6) & 1);
                qt.y0(1, (i17 >> 7) & 1);
            } else {
                qt.y0(2, (i17 >> 7) & 1);
                qt.y0(1, (i17 >> 6) & 1);
            }
            qt.y0(4, (i17 >> 5) & 1);
            qt.y0(3, (i17 >> 4) & 1);
            qt.y0(5, (i17 >> 3) & 1);
            qt.y0(0, (i17 >> 2) & 1);
            return;
        }
        switch (b4) {
            case 32:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    this.f10577c = b9 & 255;
                    int i18 = 0;
                    while (true) {
                        iArr = this.f10578d;
                        if (i18 < iArr.length) {
                            int i19 = this.f10577c;
                            if (i19 != iArr[i18][0]) {
                                i18++;
                            } else if (i19 != 0) {
                                this.f10576b = i18;
                            }
                        }
                    }
                    int i20 = this.f10577c;
                    if (i20 != 6) {
                        if (i20 != 10) {
                            if (i20 == 20) {
                                for (int i21 = 0; i21 < (b10 & 255); i21++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            } else if (i20 == 21) {
                                for (int i22 = 0; i22 < (b10 & 255); i22++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                            } else if (i20 == 32) {
                                for (int i23 = 0; i23 < (b10 & 255); i23++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                            } else if (i20 == 33) {
                                for (int i24 = 0; i24 < (b10 & 255); i24++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            } else if ((b10 & 255) != 0) {
                                if (i18 < iArr.length) {
                                    l0.b0.l0(iArr[i18][1], 0);
                                }
                            } else if (i18 <= iArr.length) {
                                l0.b0.l0(iArr[this.f10576b][1], 1);
                            }
                        } else if (b10 == 1) {
                            if (u0.b.f17347o == 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                    } else if (b10 == 1) {
                        if (nt.f8633a != 1442082) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                }
                break;
            case 33:
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                byte b13 = bArr[i2 + 4];
                int i25 = i2 + 5;
                byte b14 = bArr[i25];
                int i26 = i2 + 6;
                byte b15 = bArr[i26];
                qt.y0(53, (b11 >> 7) & 1);
                qt.y0(11, (b11 >> 6) & 1);
                qt.y0(12, (b11 >> 4) & 3);
                qt.y0(13, (b11 >> 3) & 1);
                qt.y0(14, (b11 >> 2) & 1);
                qt.y0(16, (b11 >> 1) & 1);
                int i27 = b12 & 255;
                if (i27 != 1) {
                    if (i27 != 2) {
                        if (i27 == 3) {
                            i5 = 1;
                            i4 = 0;
                            i7 = 0;
                        } else if (i27 == 4) {
                            i5 = 1;
                            i7 = 1;
                            i4 = 0;
                            i6 = 0;
                        } else if (i27 != 5) {
                            i4 = 0;
                            i5 = 0;
                        } else {
                            i6 = 1;
                            i4 = 0;
                            i5 = 0;
                            i7 = 0;
                        }
                        qt.y0(77, i27);
                        qt.y0(19, i4);
                        qt.y0(20, i5);
                        qt.y0(18, i7);
                        qt.y0(65, i6);
                        qt.y0(21, b13 & 255);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            b14 = bArr[i26];
                            b15 = bArr[i25];
                        }
                        b2 = b14;
                        b3 = b15;
                        i8 = nt.f8637c;
                        if (i8 != 11 || i8 == 15) {
                            i9 = b2 & 255;
                            if (i9 >= 32 || i9 > 64) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, i9);
                            }
                            i10 = b3 & 255;
                            if (i10 >= 32 || i10 > 64) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, i10);
                            }
                        } else {
                            int i28 = b2 & 255;
                            if (i28 <= 0 || i28 >= 16) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, i28);
                            }
                            int i29 = b3 & 255;
                            if (i29 <= 0 || i29 >= 16) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, i29);
                            }
                        }
                    } else {
                        i4 = 1;
                        i5 = 1;
                        i7 = 0;
                    }
                    i6 = i7;
                    qt.y0(77, i27);
                    qt.y0(19, i4);
                    qt.y0(20, i5);
                    qt.y0(18, i7);
                    qt.y0(65, i6);
                    qt.y0(21, b13 & 255);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b14 = bArr[i26];
                        b15 = bArr[i25];
                    }
                    b2 = b14;
                    b3 = b15;
                    i8 = nt.f8637c;
                    if (i8 != 11) {
                    }
                    i9 = b2 & 255;
                    if (i9 >= 32) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, -1);
                    }
                    i10 = b3 & 255;
                    if (i10 >= 32) {
                    }
                    qt.y0(28, -1);
                } else {
                    i4 = 1;
                    i5 = 0;
                }
                i7 = i5;
                i6 = i7;
                qt.y0(77, i27);
                qt.y0(19, i4);
                qt.y0(20, i5);
                qt.y0(18, i7);
                qt.y0(65, i6);
                qt.y0(21, b13 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b14 = bArr[i26];
                    b15 = bArr[i25];
                }
                b2 = b14;
                b3 = b15;
                i8 = nt.f8637c;
                if (i8 != 11) {
                }
                i9 = b2 & 255;
                if (i9 >= 32) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, -1);
                }
                i10 = b3 & 255;
                if (i10 >= 32) {
                }
                qt.y0(28, -1);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10580f);
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
        if (i2 == 1 && qt.l0(iArr, 2)) {
            z.k.s(227, -88, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 168, 2, i2, 0);
    }
}
