package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class mm extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8226c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8227d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 2}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, 13}, new int[]{8, 18}, new int[]{9, 30}, new int[]{10, 31}, new int[]{11, 32}, new int[]{12, 33}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 54}, new int[]{17, 24}, new int[]{18, 5}, new int[]{19, 18}, new int[]{20, 1}, new int[]{21, 6}, new int[]{22, 55}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f8228e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8229f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8230g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8231h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8232i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 131, 5, (byte) time.hour, (byte) time.minute, (byte) time.monthDay, (byte) (time.month + 1), (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        qt.z(this.f8232i);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        boolean z2;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -95) {
            qt.y0(20, bArr[i2 + 2] & 255);
            qt.y0(21, bArr[i2 + 3] & 255);
            qt.y0(22, bArr[i2 + 4] & 255);
            qt.y0(24, 255 & bArr[i2 + 9]);
            int i4 = i2 + 10;
            qt.y0(25, (bArr[i4] >> 1) & 1);
            qt.y0(26, (bArr[i4] >> 2) & 1);
            qt.y0(27, (bArr[i4] >> 0) & 1);
            return;
        }
        if (b2 == -94) {
            int i5 = i2 + 2;
            qt.y0(33, (bArr[i5] >> 5) & 1);
            qt.y0(32, (bArr[i5] >> 4) & 1);
            qt.y0(31, (bArr[i5] >> 3) & 1);
            qt.y0(30, (bArr[i5] >> 2) & 1);
            qt.y0(29, (bArr[i5] >> 1) & 1);
            qt.y0(28, (bArr[i5] >> 0) & 1);
            return;
        }
        if (b2 == 3) {
            int i6 = ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255);
            if ((32768 & i6) != 0) {
                i6 = 65536 - i6;
                z2 = true;
            } else {
                z2 = false;
            }
            u0.d.A3(z2 ? 1000 - (i6 * 5) : (i6 * 5) + 1000);
            qt.y0(8, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(9, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(10, (bArr[i2 + 9] & 255) | (65280 & (bArr[i2 + 8] << 8)));
            return;
        }
        if (b2 == 4) {
            qt.y0(11, bArr[i2 + 2] & 255);
            qt.y0(12, bArr[i2 + 3] & 255);
            qt.y0(13, bArr[i2 + 4] & 255);
            qt.y0(14, bArr[i2 + 5] & 255);
            qt.y0(15, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 6) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8226c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f8227d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f8226c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f8225b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f8226c;
            if (i9 == 9) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i9 == 10) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            int i12 = b4 & 255;
            if (i12 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 == 0) {
                    int i13 = this.f8225b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f8225b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 7) {
            int i14 = i2 + 2;
            qt.y0(16, (bArr[i14] >> 4) & 15);
            qt.y0(17, (bArr[i14] >> 0) & 15);
            qt.y0(18, (bArr[i2 + 3] >> 0) & 1);
            return;
        }
        if (b2 == 8) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 28) {
            u0.d.R2((10 - bArr[i2 + 2]) & 255);
            u0.d.S2((10 - bArr[i2 + 3]) & 255);
            u0.d.T2((10 - bArr[i2 + 4]) & 255);
            u0.d.U2((10 - bArr[i2 + 5]) & 255);
            int i15 = i2 + 6;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 7;
            int i18 = bArr[i17] & 255;
            int i19 = i2 + 8;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 9;
            int i22 = bArr[i21] & 255;
            if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i16;
            l0.c0.f13014h = i18;
            l0.c0.f13015i = i20;
            l0.c0.f13016j = i22;
            u0.d.D2((10 - bArr[i15]) & 255);
            u0.d.E2((10 - bArr[i17]) & 255);
            u0.d.F2((10 - bArr[i19]) & 255);
            u0.d.G2((10 - bArr[i21]) & 255);
            return;
        }
        if (b2 == 36) {
            int i23 = i2 + 2;
            if ((bArr[i23] & 255) >= 128) {
                qt.m(bArr[i23], 0, 128, true, 50);
                return;
            } else {
                qt.j(bArr[i23], 0, 0, 50);
                return;
            }
        }
        if (b2 != 113) {
            if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                int i24 = i2 + 3;
                l0.c0.a((bArr[i24] >> 3) & 1, (bArr[i24] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i24] & 255}, null, null);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((int) bArr[i2 + 2]);
        sb.append("_");
        sb.append((int) bArr[i2 + 3]);
        sb.append("_20");
        int i25 = i2 + 4;
        sb.append(bArr[i25] / 10);
        sb.append(bArr[i25] % 10);
        sb.append(ProxyProperties.LOCAL_EXCL_LIST);
        int i26 = i2 + 5;
        sb.append(bArr[i26] / 10);
        sb.append(bArr[i26] % 10);
        sb.append(ProxyProperties.LOCAL_EXCL_LIST);
        int i27 = i2 + 6;
        sb.append(bArr[i27] / 10);
        sb.append(bArr[i27] % 10);
        sb.append("V");
        sb.append(new String(bArr, i2 + 8, 3));
        qt.L(sb.toString());
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f8232i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 34) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 130, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 49, 2, iArr[0], iArr[1]);
        }
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
            a.i.a0(100L);
            return;
        }
        if (this.f8229f + bArr.length > 1024) {
            this.f8229f = 0;
            this.f8230g = 0;
            this.f8231h = 0;
        }
        System.arraycopy(bArr, 0, this.f8228e, this.f8229f, bArr.length);
        int length = this.f8229f + bArr.length;
        this.f8229f = length;
        int i5 = this.f8231h;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f8228e[1];
            int i6 = 2;
            while (true) {
                i4 = this.f8231h;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f8228e[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f8228e;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f8230g = this.f8231h + 1;
            } else {
                this.f8230g = 1;
            }
            this.f8231h = 0;
        }
        int i7 = this.f8229f - 2;
        while (true) {
            i2 = this.f8230g;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f8228e;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f8231h = i8;
                int i9 = i8 + i2 + 3;
                this.f8231h = i9;
                if (i9 >= this.f8229f) {
                    this.f8231h = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f8231h;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f8228e[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f8228e;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f8230g;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f8230g = this.f8231h;
                } else {
                    this.f8230g++;
                }
                this.f8231h = 0;
            }
            this.f8230g++;
        }
        if (i2 != 0) {
            int i12 = this.f8229f - i2;
            this.f8229f = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f8228e;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f8230g = 0;
        }
    }
}
