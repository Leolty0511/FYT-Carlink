package v0;

import android.net.ProxyProperties;
import o1.g0;
import o1.q;

/* JADX INFO: loaded from: classes2.dex */
public class k extends m implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f17761a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f17762b = new byte[256];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f17763c = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public n f17764d = new n();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g0 f17765e = new g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17766f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17767g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17768h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17769i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17770j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17771k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17772l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f17773m = 0;

    @Override // v0.m
    public void K2() {
        this.f17765e.a();
        N2(this.f17765e.b(1, 0));
        O2(this.f17765e.b(1, 0));
    }

    @Override // v0.m
    public void L2() {
        this.f17765e.j();
    }

    public void M2(f fVar) {
        byte b2;
        int i2 = fVar.f17736a;
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        byte b3 = 6;
        if (i2 != 34866432) {
            if (i2 == 34866944) {
                if (fVar.f17738c != 0) {
                    return;
                }
                int i3 = 0;
                for (int i4 = 0; i4 < fVar.f17740e; i4++) {
                    e[] eVarArr = fVar.f17741f;
                    if (eVarArr[i4].f17733a == 1) {
                        int i5 = 0;
                        while (true) {
                            e[] eVarArr2 = fVar.f17741f;
                            if (i5 < eVarArr2[i4].f17734b) {
                                i3 = ((eVarArr2[i4].f17735c[0] & 255) << 24) | ((eVarArr2[i4].f17735c[1] & 255) << 16) | ((eVarArr2[i4].f17735c[2] & 255) << 8) | (eVarArr2[i4].f17735c[3] & 255);
                                i5++;
                            }
                        }
                    } else if (eVarArr[i4].f17733a == 2) {
                        d.e(11, i3, eVarArr[i4].f17735c[0]);
                    }
                }
                return;
            }
            if (i2 == 34868224 && fVar.f17738c == 0) {
                d.d(7, fVar.f17739d);
                byte[] bArr = new byte[17];
                int i6 = 0;
                for (int i7 = 0; i7 < fVar.f17740e; i7++) {
                    e[] eVarArr3 = fVar.f17741f;
                    if (eVarArr3[i7].f17733a == 3) {
                        int i8 = 0;
                        while (true) {
                            e[] eVarArr4 = fVar.f17741f;
                            if (i8 < eVarArr4[i7].f17734b) {
                                bArr[i8] = eVarArr4[i7].f17735c[i8];
                                str = new String(bArr);
                                i8++;
                            }
                        }
                    } else if (eVarArr3[i7].f17733a == 6) {
                        i6 = ((eVarArr3[i7].f17735c[0] & 255) << 24) | ((eVarArr3[i7].f17735c[1] & 255) << 16) | ((eVarArr3[i7].f17735c[2] & 255) << 8) | (eVarArr3[i7].f17735c[3] & 255);
                    }
                }
                d.f(9, i6, str);
                return;
            }
            return;
        }
        byte b4 = fVar.f17738c;
        if (b4 != 0) {
            if (b4 != 1) {
                return;
            }
            d.d(10, 1);
            return;
        }
        d.d(4, fVar.f17739d);
        byte[] bArr2 = new byte[17];
        int i9 = 0;
        int i10 = 0;
        byte b5 = 0;
        byte b6 = 0;
        int i11 = 0;
        while (true) {
            b2 = fVar.f17740e;
            if (i9 >= b2) {
                break;
            }
            e[] eVarArr5 = fVar.f17741f;
            if (eVarArr5[i9].f17733a == 2) {
                i10 = (eVarArr5[i9].f17735c[3] & 255) | ((eVarArr5[i9].f17735c[0] & 255) << 24) | ((eVarArr5[i9].f17735c[1] & 255) << 16) | ((eVarArr5[i9].f17735c[2] & 255) << 8);
            } else if (eVarArr5[i9].f17733a == 3) {
                b5 = eVarArr5[i9].f17735c[0];
            } else if (eVarArr5[i9].f17733a == b3) {
                i11 = (eVarArr5[i9].f17735c[1] & 255) | ((eVarArr5[i9].f17735c[0] & 255) << 8) | i11;
                d.d(b3, i11);
            } else if (eVarArr5[i9].f17733a == 7) {
                int i12 = 0;
                while (true) {
                    e[] eVarArr6 = fVar.f17741f;
                    if (i12 < eVarArr6[i9].f17734b) {
                        bArr2[i12] = eVarArr6[i9].f17735c[i12];
                        str = new String(bArr2);
                        i12++;
                    }
                }
            } else if (eVarArr5[i9].f17733a == 12) {
                b6 = eVarArr5[i9].f17735c[0];
            }
            i9++;
            b3 = 6;
        }
        if (b2 == 0) {
            d.d(12, 1);
        } else {
            d.h(8, new int[]{i10, b5, b6}, new String[]{str});
        }
    }

    public final void N2(int i2) {
        this.f17768h = i2;
        d.d(13, i2);
        int iB = this.f17765e.b(1, 0);
        int i3 = this.f17768h;
        if (iB != i3) {
            this.f17765e.g(1, i3);
        }
    }

    public final void O2(int i2) {
        this.f17769i = i2;
        d.d(14, i2);
        int iB = this.f17765e.b(1, 0);
        int i3 = this.f17769i;
        if (iB != i3) {
            this.f17765e.g(1, i3);
        }
    }

    public void P2(int i2) {
        for (int i3 = 0; i3 < 24; i3++) {
            int[] iArr = this.f17764d.f17785b;
            if (iArr[i3] == i2) {
                iArr[i3] = 0;
                return;
            }
        }
    }

    public byte Q2(byte[] bArr, int i2) {
        byte b2 = 0;
        byte b3 = 0;
        for (int i3 = i2; i3 > 0; i3--) {
            b2 = (byte) (b2 + bArr[i2 - i3]);
            b3 = (byte) (b3 + b2);
        }
        return (byte) (b2 ^ b3);
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 2];
        if (b2 == -128) {
            int i4 = ((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255);
            int iS2 = S2(i4);
            P2(i4);
            if (iS2 == 16842752 || iS2 == 33619968) {
                d.g(0, new int[]{iS2, bArr[i2 + 4], bArr[i3 - 1]});
                return;
            }
            if (iS2 != 34866177) {
                return;
            }
            int i5 = i2 + 5;
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            int i8 = ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
            byte[] bArr2 = new byte[i8];
            System.arraycopy(bArr, i7, bArr2, 0, i8);
            d.f(15, bArr[i2 + 4], new String(bArr2));
            return;
        }
        if (b2 == -127) {
            int i9 = ((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255);
            int iT2 = T2(i9);
            if (iT2 == 255) {
                return;
            }
            int i10 = i2 + 3;
            int i11 = i10 + 1;
            byte b3 = bArr[i10];
            f fVar = new f();
            fVar.f17738c = b3;
            n nVar = this.f17764d;
            fVar.f17737b = nVar.f17784a[iT2];
            fVar.f17736a = nVar.f17786c[iT2];
            if (b3 == 0) {
                int i12 = i11 + 1;
                int i13 = (bArr[i11] & 255) << 24;
                fVar.f17739d = i13;
                int i14 = i12 + 1;
                int i15 = ((bArr[i12] & 255) << 16) | i13;
                fVar.f17739d = i15;
                int i16 = i14 + 1;
                int i17 = i15 | ((bArr[i14] & 255) << 8);
                fVar.f17739d = i17;
                int i18 = i16 + 1;
                fVar.f17739d = i17 | (bArr[i16] & 255);
                int i19 = i18 + 1;
                fVar.f17740e = bArr[i18];
                for (int i20 = 0; i20 < fVar.f17740e; i20++) {
                    int i21 = i19 + 1;
                    int i22 = i21 + 1;
                    int i23 = ((bArr[i19] & 255) << 8) | (bArr[i21] & 255);
                    fVar.f17741f[i20] = new e();
                    e[] eVarArr = fVar.f17741f;
                    eVarArr[i20].f17733a = this.f17764d.f17787d[iT2].f17725a[i20];
                    eVarArr[i20].f17734b = i23;
                    System.arraycopy(bArr, i22, eVarArr[i20].f17735c, 0, i23);
                    i19 = i23 + i22;
                }
            }
            M2(fVar);
            P2(i9);
            return;
        }
        if (b2 == -124) {
            int i24 = (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8);
            int iS3 = S2(i24);
            P2(i24);
            d.e(3, bArr[i3 - 1], iS3);
            return;
        }
        if (b2 == -120) {
            if (bArr[i2 + 3] == 0) {
                int i25 = i2 + 4;
                int i26 = i25 + 1;
                int i27 = i26 + 1;
                d.d(2, (bArr[i27 + 1] & 255) | ((bArr[i25] & 255) << 24) | ((bArr[i26] & 255) << 16) | ((bArr[i27] & 255) << 8));
                return;
            }
            return;
        }
        if (b2 == -58 && i3 - 3 >= 5) {
            int i28 = i2 + 3;
            int i29 = i28 + 1;
            int i30 = i29 + 1;
            int i31 = ((bArr[i28] & 255) << 24) | ((bArr[i29] & 255) << 16);
            int i32 = i30 + 1;
            int i33 = i31 | ((bArr[i30] & 255) << 8);
            int i34 = i32 + 1;
            int i35 = i33 | (bArr[i32] & 255);
            if (i35 != 34210304) {
                if (i35 != 34668544) {
                    if (i35 != 34868480) {
                        return;
                    }
                    d.e(1, bArr[i34], i35);
                    return;
                } else {
                    int i36 = i3 - 7;
                    byte[] bArr3 = new byte[i36];
                    System.arraycopy(bArr, i34, bArr3, 0, i36);
                    d.f(1, i35, new String(bArr3));
                    return;
                }
            }
            int i37 = i34 + 1;
            int i38 = (bArr[i34] & 255) << 24;
            int i39 = i37 + 1;
            int i40 = ((bArr[i37] & 255) << 16) | i38;
            int i41 = i39 + 1;
            int i42 = i40 | ((bArr[i39] & 255) << 8);
            int i43 = i41 + 1;
            d.g(1, new int[]{i42 | (bArr[i41] & 255), (bArr[i43 + 1] & 255) | ((bArr[i43] & 255) << 8), i35});
        }
    }

    public int S2(int i2) {
        for (int i3 = 0; i3 < 24; i3++) {
            n nVar = this.f17764d;
            if (nVar.f17785b[i3] == i2) {
                return nVar.f17786c[i3];
            }
        }
        return 255;
    }

    public int T2(int i2) {
        for (int i3 = 0; i3 < 24; i3++) {
            if (this.f17764d.f17785b[i3] == i2) {
                return i3;
            }
        }
        return 255;
    }

    public void U2(int[] iArr) {
        int i2 = 0;
        int i3 = ((iArr[0] & 255) << 8) | (iArr[1] & 255);
        int i4 = iArr[2];
        if (i4 != 0) {
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                g gVar = new g();
                int i5 = ((iArr[3] & 255) << 24) | ((iArr[4] & 255) << 16) | ((iArr[5] & 255) << 8) | (iArr[6] & 255);
                int i6 = 12;
                gVar.f17744c = (byte) iArr[11];
                while (i2 < gVar.f17744c) {
                    gVar.f17745d[i2] = new e();
                    gVar.f17745d[i2].f17733a = (byte) iArr[i6];
                    i2++;
                    i6++;
                }
                V2(i5, i4, i3, gVar);
                return;
            }
            if (i4 != 4) {
                return;
            }
        }
        V2((iArr[7] & 255) | ((iArr[4] & 255) << 24) | ((iArr[5] & 255) << 16) | ((iArr[6] & 255) << 8), i4, i3, null);
    }

    public void V2(int i2, int i3, int i4, g gVar) {
        for (int i5 = 0; i5 < 24; i5++) {
            n nVar = this.f17764d;
            if (nVar.f17785b[i5] == 0) {
                nVar.f17787d[i5] = new a();
                n nVar2 = this.f17764d;
                nVar2.f17785b[i5] = i4;
                nVar2.f17786c[i5] = i2;
                nVar2.f17784a[i5] = (byte) i3;
                if (gVar != null) {
                    for (int i6 = 0; i6 < gVar.f17744c; i6++) {
                        this.f17764d.f17787d[i5].f17725a[i6] = gVar.f17745d[i6].f17733a;
                    }
                    return;
                }
                return;
            }
        }
    }

    public synchronized void W2(byte[] bArr) {
        if (bArr != null) {
            z.a.f18156g.i(bArr);
        }
    }

    @Override // v0.m, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        super.Y1(bVar, i2, i3);
        if (i2 == 13) {
            d.d(13, this.f17768h);
        } else {
            if (i2 != 14) {
                return;
            }
            d.d(14, this.f17769i);
        }
    }

    @Override // v0.m, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 3) {
            N2(iArr[0]);
            return;
        }
        if (i2 == 4) {
            O2(iArr[0]);
            return;
        }
        U2(iArr);
        this.f17763c[0] = -64;
        int i3 = 1;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4] & 255;
            if (i5 == 192) {
                byte[] bArr = this.f17763c;
                int i6 = i3 + 1;
                bArr[i3] = -37;
                i3 = i6 + 1;
                bArr[i6] = -36;
            } else if (i5 != 219) {
                this.f17763c[i3] = (byte) iArr[i4];
                i3++;
            } else {
                byte[] bArr2 = this.f17763c;
                int i7 = i3 + 1;
                bArr2[i3] = -37;
                i3 = i7 + 1;
                bArr2[i7] = -35;
            }
        }
        byte[] bArr3 = this.f17763c;
        int i8 = i3 + 1;
        bArr3[i3] = -64;
        byte[] bArr4 = new byte[i8];
        System.arraycopy(bArr3, 0, bArr4, 0, i8);
        W2(bArr4);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f17770j + bArr.length > 1024) {
            this.f17770j = 0;
            this.f17771k = 0;
            this.f17772l = 0;
        }
        System.arraycopy(bArr, 0, this.f17761a, this.f17770j, bArr.length);
        int length = this.f17770j + bArr.length;
        this.f17770j = length;
        while (true) {
            int i2 = this.f17771k;
            if (i2 >= length) {
                break;
            }
            if (this.f17761a[i2] == -64) {
                int i3 = 0;
                for (int i4 = i2 + 1; i4 < length; i4++) {
                    int i5 = this.f17773m;
                    if (i5 == 0) {
                        byte[] bArr2 = this.f17761a;
                        if (bArr2[i4] == -37) {
                            this.f17773m = 1;
                        } else if (bArr2[i4] == -64) {
                            this.f17772l = i4 - 1;
                            break;
                        } else {
                            this.f17762b[i3] = bArr2[i4];
                            i3++;
                        }
                    } else {
                        if (i5 == 1) {
                            byte[] bArr3 = this.f17761a;
                            if (bArr3[i4] != -35) {
                                if (bArr3[i4] != -36) {
                                    this.f17762b[i3] = bArr3[i4];
                                } else {
                                    if (bArr3[i4 + 1] == -64) {
                                        int i6 = i4 - 1;
                                        this.f17772l = i6;
                                        bArr3[i6] = -64;
                                        i3++;
                                        break;
                                    }
                                    this.f17762b[i3] = -64;
                                }
                                this.f17773m = 0;
                                i3++;
                            } else if (bArr3[i4 + 1] == -64) {
                                this.f17772l = i4 - 1;
                                i3++;
                                break;
                            } else {
                                this.f17762b[i3] = -37;
                                this.f17773m = 0;
                                i3++;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                if (this.f17772l == 0) {
                    break;
                }
                int i7 = i3 - 1;
                if (Q2(this.f17762b, i7) == this.f17761a[this.f17772l]) {
                    R2(this.f17762b, 0, i7);
                    if (this.f17773m == 1) {
                        this.f17773m = 0;
                        this.f17771k = this.f17772l + 2;
                    } else {
                        this.f17771k = this.f17772l + 1;
                    }
                } else {
                    this.f17771k++;
                }
                this.f17772l = 0;
            }
            this.f17771k++;
        }
        int i8 = this.f17771k;
        if (i8 != 0) {
            int i9 = this.f17770j - i8;
            this.f17770j = i9;
            if (i9 != 0) {
                byte[] bArr4 = this.f17761a;
                System.arraycopy(bArr4, i8, bArr4, 0, i9);
            }
            this.f17771k = 0;
        }
    }
}
