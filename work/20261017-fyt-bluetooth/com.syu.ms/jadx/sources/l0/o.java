package l0;

import android.os.Process;
import android.text.Spanned;
import k0.nt;
import k0.qt;
import k0.rt;
import n0.j4;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class o extends a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f13088g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f13089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f13090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13091j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13092c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13093d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13094e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13095f = 0;

    public static int g(String str) {
        int i2;
        int i3;
        int i4 = 0;
        if (str.contains("VW")) {
            i2 = 2;
        } else if (str.contains("AUDI")) {
            i2 = 39;
        } else if (str.contains("Benz")) {
            i2 = 37;
        } else if (str.contains("BMW")) {
            i2 = 36;
        } else if (str.contains("OP")) {
            i2 = 112;
        } else if (str.contains("GM")) {
            i2 = 3;
        } else {
            if (!str.contains("FD")) {
                if (str.contains("JEEP")) {
                    i2 = 35;
                    i3 = 41;
                } else if (str.contains("AR")) {
                    i2 = 98;
                } else if (str.contains("FIAT")) {
                    i2 = 33;
                } else if (str.contains("PSA")) {
                    i2 = 55;
                } else if (str.contains("Renault")) {
                    i2 = 31;
                } else if (str.contains("DF")) {
                    i3 = 21;
                    i2 = 7;
                    i4 = 58;
                } else if (str.contains("FT")) {
                    i2 = 6;
                } else if (str.contains("HD")) {
                    i2 = 5;
                } else if (str.contains("MZD")) {
                    i2 = 45;
                } else if (str.contains("MB")) {
                    i2 = 34;
                } else if (str.contains("LM")) {
                    i2 = 50;
                } else if (str.contains("HYK")) {
                    i2 = 8;
                } else if (str.contains("SL")) {
                    i2 = 95;
                } else if (str.contains("VOLVO")) {
                    i2 = 44;
                } else if (str.contains("LR")) {
                    i2 = 57;
                } else if (str.contains("VF")) {
                    i2 = 106;
                } else if (str.contains("LADA")) {
                    i2 = 51;
                } else if (str.contains("UAZ")) {
                    i2 = 87;
                } else if (str.contains("TATA")) {
                    i2 = 76;
                } else if (str.contains("Mahindra")) {
                    i2 = 85;
                } else if (str.contains("SU")) {
                    i2 = 56;
                } else if (str.contains("QR")) {
                    i2 = 17;
                } else if (str.contains("YQBT")) {
                    i2 = 13;
                } else if (str.contains("HT")) {
                    i2 = 69;
                } else if (str.contains("SAIC")) {
                    i3 = 25;
                    i4 = 40;
                    i2 = 16;
                } else if (str.contains("Baoj")) {
                    i2 = 23;
                    i3 = 65;
                } else if (str.contains("JAC")) {
                    i2 = 24;
                } else if (str.contains("GAC")) {
                    i2 = 18;
                } else if (str.contains("GRW")) {
                    i2 = 28;
                } else if (str.contains("HM")) {
                    i2 = 14;
                } else if (str.contains("JL")) {
                    i2 = 49;
                } else if (str.contains("BISU")) {
                    i2 = 68;
                } else if (str.contains("GiL")) {
                    i2 = 26;
                } else if (str.contains("ZH")) {
                    i2 = 27;
                } else if (str.contains("LF")) {
                    i2 = 29;
                } else if (str.contains("DN")) {
                    i2 = 38;
                } else if (str.contains("ChAn")) {
                    i2 = 19;
                } else if (str.contains("BAIC")) {
                    i2 = 30;
                } else if (str.contains("ZT")) {
                    i2 = 22;
                } else if (str.contains("JB")) {
                    i2 = 60;
                } else if (str.contains("HH")) {
                    i2 = 77;
                } else if (str.contains("YM")) {
                    i2 = 66;
                } else if (str.contains("DFMC")) {
                    i2 = 20;
                } else if (str.contains("LG")) {
                    i2 = 74;
                } else if (str.contains("WC")) {
                    i2 = 61;
                } else if (str.contains("LW")) {
                    i2 = 70;
                } else if (str.contains("GZ")) {
                    i2 = 73;
                } else if (str.contains("HQ")) {
                    i2 = 89;
                } else if (str.contains("SWM")) {
                    i2 = 59;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                return (i2 & 255) | ((i3 << 8) & 65280) | ((i4 << 16) & Spanned.SPAN_PRIORITY);
            }
            i2 = 4;
        }
        i3 = 0;
        return (i2 & 255) | ((i3 << 8) & 65280) | ((i4 << 16) & Spanned.SPAN_PRIORITY);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0010  */
    public static int h(String str) {
        int i2 = 6;
        int i3 = 55;
        if (str.contains("VW")) {
            i2 = 2;
            i3 = 0;
        } else {
            if (str.contains("PA")) {
                i2 = 55;
            } else if (str.contains("FT") || str.contains("FTF")) {
                i2 = 33;
            } else if (str.contains("AR")) {
                i2 = 98;
            } else if (str.contains("LN")) {
                i3 = 31;
                i2 = 7;
            } else if (str.contains("UA")) {
                i2 = 87;
            } else if (str.contains("LD")) {
                i2 = 51;
            } else if (str.contains("AB")) {
                i2 = 91;
            } else if (str.contains("AU")) {
                i2 = 39;
            } else if (str.contains("BM")) {
                i2 = 36;
            } else if (str.contains("BZ")) {
                i2 = 37;
            } else if (str.contains("OP") || str.contains("GM")) {
                i2 = 2;
            } else if (str.contains("FD")) {
                i2 = 4;
            } else if (str.contains("JP")) {
                i2 = 35;
                i3 = 52;
            } else if (str.contains("TA")) {
                i2 = 76;
            } else if (str.contains("MA")) {
                i2 = 85;
            } else if (!str.contains("TY") && !str.contains("LS")) {
                if (str.contains("HD")) {
                    i2 = 5;
                } else if (str.contains("NS")) {
                    i2 = 7;
                } else if (str.contains("IF")) {
                    i2 = 58;
                } else if (str.contains("SZ")) {
                    i2 = 50;
                } else if (str.contains("IZ")) {
                    i2 = 49;
                } else if (str.contains("MZ")) {
                    i2 = 45;
                } else if (str.contains("MT")) {
                    i2 = 34;
                } else if (str.contains("HY")) {
                    i2 = 8;
                } else if (str.contains("PT")) {
                    i2 = 62;
                } else if (str.contains("PD")) {
                    i2 = 105;
                } else if (str.contains("BJ")) {
                    i2 = 23;
                } else if (str.contains("BA")) {
                    i2 = 30;
                } else if (str.contains("FW")) {
                    i2 = 13;
                } else if (str.contains("BY")) {
                    i2 = 15;
                } else if (str.contains("GA")) {
                    i2 = 18;
                } else if (str.contains("SA")) {
                    i2 = 40;
                } else if (str.contains("DF")) {
                    i2 = 20;
                } else if (str.contains("HM")) {
                    i2 = 14;
                } else if (str.contains("GL")) {
                    i2 = 26;
                } else if (str.contains("RF")) {
                    i2 = 24;
                } else if (str.contains("LF")) {
                    i2 = 29;
                } else if (str.contains("SA")) {
                    i2 = 25;
                    i3 = 16;
                } else if (str.contains("CR")) {
                    i2 = 17;
                } else if (str.contains("CN")) {
                    i2 = 19;
                } else if (str.contains("CC")) {
                    i2 = 28;
                } else if (str.contains("SR")) {
                    i2 = 56;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
            }
            i3 = 0;
        }
        return ((i3 << 8) & 65280) | 0 | (i2 & 255);
    }

    @Override // l0.a
    public void b(byte[] bArr) {
        super.b(bArr);
        if (rt.a3().f3()) {
            a.f.p().t(LogType.CANBUS, "onReceive---U_CANBUS_FRAME_TO_UI --> -" + o1.b0.d(bArr, 0, bArr.length));
            if (j4.f16464b != 143) {
                qt.y0(Process.DRM_UID, s0.e(bArr));
            }
        }
        if (bArr == null || bArr.length <= 0) {
            f13089h = 0;
            f13088g = -1;
            return;
        }
        int i2 = f13089h + 1;
        f13089h = i2;
        if (f13088g == -1 && i2 > 10) {
            f13089h = 0;
        }
        int i3 = j4.f16464b;
        if (i3 == 112 || i3 == 140) {
            int i4 = f13088g;
            if ((i4 == -1 && f13089h < 5) || i4 == 2) {
                i(bArr);
            } else {
                if ((i4 != -1 || f13089h >= 10) && i4 != 1) {
                    return;
                }
                j(bArr);
            }
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int i3;
        int i4;
        int i5 = j4.f16464b;
        if (i5 != 112 && i5 != 140) {
            a.d(iArr);
            return;
        }
        int i6 = f13088g;
        int i7 = 2;
        if (i6 == 1) {
            int i8 = 3;
            int length = iArr.length + 3;
            int[] iArr2 = new int[length];
            iArr2[0] = 233;
            iArr2[1] = 90;
            iArr2[2] = 165;
            while (true) {
                i4 = length - 1;
                if (i8 >= i4) {
                    break;
                }
                iArr2[i8] = iArr[i8 - 2];
                i8++;
            }
            iArr2[i4] = 0;
            for (int i9 = 1; i9 < iArr.length; i9++) {
                iArr2[i4] = iArr2[i4] + iArr[i9];
            }
            iArr2[i4] = (iArr2[i4] - 1) & 255;
            a.d(iArr2);
            a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i4));
            return;
        }
        if (i6 == 2) {
            int length2 = iArr.length + 2;
            int[] iArr3 = new int[length2];
            iArr3[0] = 233;
            iArr3[1] = 46;
            while (true) {
                i3 = length2 - 1;
                if (i7 >= i3) {
                    break;
                }
                iArr3[i7] = iArr[i7 - 1];
                i7++;
            }
            iArr3[i3] = 0;
            for (int i10 = 1; i10 < iArr.length; i10++) {
                iArr3[i3] = iArr3[i3] + iArr[i10];
            }
            iArr3[i3] = iArr3[i3] ^ 255;
            a.d(iArr3);
            a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr3, 1, i3));
            return;
        }
        int length3 = iArr.length + 2;
        int[] iArr4 = new int[length3];
        iArr4[0] = 233;
        iArr4[1] = 46;
        while (true) {
            i2 = length3 - 1;
            if (i7 >= i2) {
                break;
            }
            iArr4[i7] = iArr[i7 - 1];
            i7++;
        }
        iArr4[i2] = 0;
        for (int i11 = 1; i11 < iArr.length; i11++) {
            iArr4[i2] = iArr4[i2] + iArr[i11];
        }
        iArr4[i2] = iArr4[i2] ^ 255;
        a.d(iArr4);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr4, 1, i2));
    }

    public void i(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (this.f13093d + bArr.length > 1024) {
            this.f13093d = 0;
            this.f13094e = 0;
            this.f13095f = 0;
        }
        System.arraycopy(bArr, 0, this.f13092c, this.f13093d, bArr.length);
        int length = this.f13093d + bArr.length;
        this.f13093d = length;
        int i5 = this.f13095f;
        byte b2 = 105;
        int i6 = 4;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b3 = this.f13092c[1];
            int i7 = 2;
            while (true) {
                i4 = this.f13095f;
                if (i7 >= i4) {
                    break;
                }
                b3 = (byte) (b3 + this.f13092c[i7]);
                i7++;
            }
            if (((byte) (~b3)) == this.f13092c[i4]) {
                f13088g = 2;
                if (nt.J == 0) {
                    f(227, 144, 1, 217);
                }
                byte[] bArr2 = this.f13092c;
                if (bArr2[1] == 105 && bArr2[3] == -121) {
                    String str = new String(bArr2, 4, bArr2[2] - 1);
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    bVarP.t(logType, "Canbus Ver: 2222222222 === " + str);
                    if (str.contains("RZ")) {
                        f13090i = 3;
                        int iG = g(str);
                        f13091j = iG;
                        int i8 = (iG & 16777215) | ((f13090i << 24) & (-16777216));
                        nt.J = i8;
                        qt.y0(1051, i8);
                        a.f.p().t(logType, "DataCanbus.sCanbusTypeInfo: 2222222222 === 0x" + Integer.toHexString(nt.J));
                    }
                }
                nt.f8639d.U2(this.f13092c, 1, this.f13095f - 1);
                this.f13094e = this.f13095f + 1;
            } else {
                this.f13094e = 1;
            }
            this.f13095f = 0;
        }
        int i9 = this.f13093d - 2;
        while (true) {
            i2 = this.f13094e;
            if (i2 >= i9) {
                break;
            }
            byte[] bArr3 = this.f13092c;
            if (bArr3[i2] == 46) {
                int i10 = bArr3[i2 + 2] & 255;
                this.f13095f = i10;
                if (i10 > 512) {
                    this.f13095f = 0;
                } else {
                    int i11 = i10 + i2 + 3;
                    this.f13095f = i11;
                    if (i11 >= this.f13093d) {
                        this.f13095f = i11 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i12 = i2 + 2;
                    while (true) {
                        i3 = this.f13095f;
                        if (i12 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13092c[i12]);
                        i12++;
                    }
                    if (((byte) (~b4)) == this.f13092c[i3]) {
                        f13088g = 2;
                        if (nt.J == 0) {
                            int[] iArr = new int[i6];
                            // fill-array-data instruction
                            iArr[0] = 227;
                            iArr[1] = 144;
                            iArr[2] = 1;
                            iArr[3] = 217;
                            f(iArr);
                        }
                        byte[] bArr4 = this.f13092c;
                        int i13 = this.f13094e;
                        if (bArr4[i13 + 1] == b2 && bArr4[i13 + 3] == -121) {
                            String str2 = new String(bArr4, i13 + 4, bArr4[i13 + 2] - 1);
                            n1.b bVarP2 = a.f.p();
                            LogType logType2 = LogType.CANBUS;
                            bVarP2.t(logType2, "Canbus Ver: 11111111 === " + str2);
                            if (str2.contains("RZ")) {
                                f13090i = 3;
                                int iG2 = g(str2);
                                f13091j = iG2;
                                int i14 = (iG2 & 16777215) | ((f13090i << 24) & (-16777216));
                                nt.J = i14;
                                qt.y0(1051, i14);
                                a.f.p().t(logType2, "DataCanbus.sCanbusTypeInfo: 1111111 === 0x" + Integer.toHexString(nt.J));
                            }
                        }
                        this.f13094e = this.f13095f;
                    } else {
                        this.f13094e++;
                    }
                    this.f13095f = 0;
                }
            }
            this.f13094e++;
            b2 = 105;
            i6 = 4;
        }
        if (i2 != 0) {
            int i15 = this.f13093d - i2;
            this.f13093d = i15;
            if (i15 > 0) {
                byte[] bArr5 = this.f13092c;
                System.arraycopy(bArr5, i2, bArr5, 0, i15);
            }
            this.f13094e = 0;
        }
    }

    public void j(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (this.f13093d + bArr.length > 1024) {
            this.f13093d = 0;
            this.f13094e = 0;
            this.f13095f = 0;
        }
        System.arraycopy(bArr, 0, this.f13092c, this.f13093d, bArr.length);
        int length = this.f13093d + bArr.length;
        this.f13093d = length;
        int i5 = this.f13095f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13092c[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13095f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13092c[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f13092c;
            if (b3 == bArr2[i4]) {
                f13088g = 1;
                f13090i = 2;
                if (bArr2[3] == -16) {
                    f13091j = h(new String(bArr2, 4, (int) bArr2[2]));
                }
                int i7 = ((f13090i << 24) & (-16777216)) | (f13091j & 16777215);
                nt.J = i7;
                qt.y0(1051, i7);
                this.f13094e = this.f13095f + 1;
            } else {
                this.f13094e = 2;
            }
            this.f13095f = 0;
        }
        int i8 = this.f13093d - 3;
        while (true) {
            i2 = this.f13094e;
            if (i2 >= i8) {
                break;
            }
            byte[] bArr3 = this.f13092c;
            if ((bArr3[i2] == -86 && bArr3[i2 + 1] == 85) || (bArr3[i2] == 90 && bArr3[i2 + 1] == -91)) {
                if (this.f13095f > 512) {
                    this.f13095f = 0;
                } else {
                    int i9 = bArr3[i2 + 2] + i2 + 4;
                    this.f13095f = i9;
                    if (i9 >= this.f13093d) {
                        this.f13095f = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f13095f;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13092c[i10]);
                        i10++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f13092c;
                    if (b5 == bArr4[i3]) {
                        f13088g = 1;
                        f13090i = 2;
                        int i11 = this.f13094e;
                        if (bArr4[i11 + 3] == -16) {
                            f13091j = h(new String(bArr4, i11 + 4, (int) bArr4[i11 + 2]));
                        }
                        int i12 = ((f13090i << 24) & (-16777216)) | (f13091j & 16777215);
                        nt.J = i12;
                        qt.y0(1051, i12);
                        this.f13094e = this.f13095f;
                    } else {
                        this.f13094e++;
                    }
                    this.f13095f = 0;
                }
            }
            this.f13094e++;
        }
        if (i2 != 0) {
            int i13 = this.f13093d - i2;
            this.f13093d = i13;
            if (i13 > 0) {
                byte[] bArr5 = this.f13092c;
                System.arraycopy(bArr5, i2, bArr5, 0, i13);
            }
            this.f13094e = 0;
        }
    }
}
