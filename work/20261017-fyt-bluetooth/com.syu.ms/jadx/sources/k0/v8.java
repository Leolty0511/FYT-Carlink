package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class v8 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11246c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11247d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 12}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11248e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v8.a3();
        }
    }

    public static void a3() {
        int i2;
        int[] iArr = new int[13];
        int i3 = 0;
        iArr[0] = 12;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = 0;
        } else {
            iArr[2] = i2;
        }
        iArr[3] = 8;
        iArr[12] = 0;
        switch (u0.b.D) {
            case 1:
                int i4 = w0.d.f17796h;
                if (i4 == 0) {
                    iArr[1] = 20;
                } else if (i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[1] = 17;
                            break;
                        case 65537:
                            iArr[1] = 18;
                            break;
                        case 65538:
                            iArr[1] = 19;
                            break;
                    }
                } else {
                    iArr[1] = 21;
                }
                if (i4 >= 65536 && i4 <= 65538) {
                    int i5 = w0.d.f17797i;
                    if (i5 / 10000 != 0) {
                        iArr[4] = (i5 / 10000) + 48;
                        iArr[5] = ((i5 / 1000) % 10) + 48;
                        iArr[6] = ((i5 / 100) % 10) + 48;
                        iArr[7] = 46;
                        iArr[8] = ((i5 / 10) % 10) + 48;
                        iArr[9] = (i5 % 10) + 48;
                        iArr[10] = 77;
                    } else {
                        iArr[4] = ((i5 / 1000) % 10) + 48;
                        iArr[5] = ((i5 / 100) % 10) + 48;
                        iArr[6] = 46;
                        iArr[7] = ((i5 / 10) % 10) + 48;
                        iArr[8] = (i5 % 10) + 48;
                        iArr[9] = 77;
                    }
                } else {
                    int i6 = w0.d.f17797i;
                    iArr[4] = ((i6 / 1000) % 10) + 48;
                    iArr[5] = ((i6 / 100) % 10) + 48;
                    iArr[6] = ((i6 / 10) % 10) + 48;
                    iArr[7] = (i6 % 10) + 48;
                    iArr[8] = 75;
                    iArr[9] = 104;
                    iArr[10] = 122;
                }
                break;
            case 2:
                iArr[1] = 64;
                iArr[4] = 66;
                iArr[5] = 84;
                iArr[6] = 32;
                iArr[7] = 80;
                iArr[8] = 72;
                iArr[9] = 79;
                iArr[10] = 78;
                iArr[11] = 69;
                break;
            case 3:
                iArr[1] = 64;
                iArr[4] = 66;
                iArr[5] = 84;
                iArr[6] = 32;
                iArr[7] = 77;
                iArr[8] = 85;
                iArr[9] = 83;
                iArr[10] = 73;
                iArr[11] = 67;
                break;
            case 4:
                iArr[1] = 34;
                iArr[4] = 68;
                iArr[5] = 86;
                iArr[6] = 68;
                iArr[7] = 32;
                iArr[8] = 32;
                int i7 = o0.e.B;
                iArr[9] = (i7 / 100) + 48;
                iArr[10] = ((i7 % 100) / 10) + 48;
                iArr[11] = (i7 % 10) + 48;
                break;
            case 5:
                iArr[1] = 83;
                iArr[4] = 32;
                iArr[5] = 32;
                iArr[6] = 65;
                iArr[7] = 85;
                iArr[8] = 88;
                iArr[9] = 32;
                iArr[10] = 32;
                iArr[11] = 32;
                break;
            case 6:
                iArr[1] = 81;
                iArr[4] = 84;
                iArr[5] = 86;
                break;
            case 7:
            case 9:
            default:
                iArr[1] = 48;
                iArr[4] = 78;
                iArr[5] = 65;
                iArr[6] = 86;
                iArr[7] = 73;
                break;
            case 8:
            case 10:
                iArr[1] = 84;
                iArr[4] = 77;
                iArr[5] = 85;
                iArr[6] = 83;
                iArr[7] = 73;
                iArr[8] = 67;
                int i8 = u0.b.r3;
                iArr[9] = (i8 / 100) + 48;
                iArr[10] = ((i8 % 100) / 10) + 48;
                iArr[11] = (i8 % 10) + 48;
                break;
        }
        int[] iArr2 = new int[14];
        iArr2[0] = 227;
        while (i3 < 13) {
            int i9 = i3 + 1;
            iArr2[i9] = iArr[i3];
            i3 = i9;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f11248e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8315j = 0;
        int i2 = nt.f8637c;
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8312g = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = (bArr[i2] >> 5) & 7;
        if (i4 == 0) {
            if (nt.a()) {
                this.f11246c = bArr[i2 + 3] & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f11247d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f11246c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f11245b = i5;
                        break;
                    }
                    i5++;
                }
                if (this.f11246c == 0) {
                    int i7 = this.f11245b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f11245b = 255;
                } else if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
                qt.l(bArr[i2 + 6], bArr[i2 + 5], false, 12288);
                return;
            }
            return;
        }
        if (i4 != 2) {
            if (i4 != 6) {
                return;
            }
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i8 = i2 + 1;
                qt.y0(1, (bArr[i8] >> 6) & 1);
                qt.y0(2, (bArr[i8] >> 7) & 1);
            } else {
                int i9 = i2 + 1;
                qt.y0(1, (bArr[i9] >> 7) & 1);
                qt.y0(2, (bArr[i9] >> 6) & 1);
            }
            int i10 = i2 + 1;
            qt.y0(3, (bArr[i10] >> 5) & 1);
            qt.y0(4, (bArr[i10] >> 4) & 1);
            qt.y0(5, (bArr[i10] >> 2) & 1);
            qt.y0(0, (bArr[i10] >> 3) & 1);
            qt.y0(7, bArr[i2 + 2] & 255);
            qt.y0(8, bArr[i2 + 3] & 255);
            qt.y0(9, bArr[i2 + 5] & 255);
            qt.y0(10, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | (bArr[i2 + 8] & 255));
            int i11 = bArr[i2 + 4] & 255;
            if (i11 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i11 * 9) + 420) | 268435456) & (-1) : (i11 * 5) + 500);
                return;
            }
        }
        int i12 = i2 + 1;
        int i13 = bArr[i12] & 255;
        int i14 = i2 + 2;
        int i15 = bArr[i14] & 255;
        int i16 = i2 + 3;
        int i17 = bArr[i16] & 255;
        int i18 = i2 + 4;
        int i19 = bArr[i18] & 255;
        if ((i13 == 0 || i13 == 255) && ((i15 == 0 || i15 == 255) && ((i17 == 0 || i17 == 255) && (i19 == 0 || i19 == 255)))) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i13;
        l0.c0.f13014h = i15;
        l0.c0.f13015i = i17;
        l0.c0.f13016j = i19;
        u0.d.D2(l0.c0.u1(bArr[i12] & 255));
        u0.d.E2(l0.c0.u1(bArr[i14] & 255));
        u0.d.F2(l0.c0.u1(bArr[i16] & 255));
        u0.d.G2(l0.c0.u1(bArr[i18] & 255));
        u0.d.R2(l0.c0.u1(bArr[i2 + 5] & 255));
        u0.d.S2(l0.c0.u1(bArr[i2 + 6] & 255));
        u0.d.T2(l0.c0.u1(bArr[i2 + 7] & 255));
        u0.d.U2(l0.c0.u1(bArr[i2 + 8] & 255));
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f11248e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 11) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
