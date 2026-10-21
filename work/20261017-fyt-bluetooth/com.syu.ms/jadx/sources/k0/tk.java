package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class tk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10700c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10701d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{15, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10702e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10703f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10704g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(tk.this.f10704g);
            tk.this.f10702e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tk tkVar = tk.this;
            int i2 = tkVar.f10702e - 1;
            tkVar.f10702e = i2;
            if (i2 > 0) {
                int i3 = u0.b.f17306a0;
            } else {
                l0.b0.p0(tkVar.f10704g);
                tk.this.f10702e = 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(this.f10703f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        byte b3 = bArr[i2 + 1];
        if (b3 == -90) {
            qt.y0(107, bArr[i2 + 2] & 255);
            qt.y0(108, bArr[i2 + 3] & 255);
            qt.y0(109, bArr[i2 + 4] & 255);
            qt.y0(110, bArr[i2 + 5] & 255);
            qt.y0(111, bArr[i2 + 6] & 255);
            qt.y0(112, bArr[i2 + 7] & 255);
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 19) {
            qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(101, bArr[i2 + 10] & 255);
            qt.y0(102, bArr[i2 + 11] & 255);
            return;
        }
        if (b3 == 50) {
            qt.y0(103, bArr[i2 + 8] & 255);
            qt.y0(104, bArr[i2 + 9] & 255);
            qt.y0(105, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(106, (bArr[i2 + 15] & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280));
            return;
        }
        if (b3 != 114) {
            if (b3 != 115) {
                return;
            }
            int i5 = bArr[i2 + 2] & 255;
            qt.y0(49, (i5 >> 0) & 1);
            qt.y0(53, (i5 >> 1) & 1);
            qt.y0(14, (i5 >> 2) & 1);
            qt.y0(13, (i5 >> 3) & 1);
            qt.y0(12, (i5 >> 4) & 3);
            qt.y0(10, (i5 >> 6) & 1);
            int i6 = bArr[i2 + 3] & 255;
            qt.y0(65, (i6 >> 4) & 1);
            qt.y0(16, (i6 >> 5) & 1);
            qt.y0(11, (i6 >> 6) & 1);
            qt.y0(67, (i6 >> 7) & 1);
            qt.y0(29, (i6 >> 0) & 3);
            qt.y0(30, (i6 >> 2) & 3);
            int i7 = i2 + 4;
            int i8 = bArr[i7] & 255;
            int i9 = i2 + 5;
            int i10 = bArr[i9] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i8 = bArr[i9] & 255;
                i10 = bArr[i7] & 255;
            }
            if (i8 == 0) {
                qt.y0(27, -1);
            } else if (i8 == 1) {
                qt.y0(27, -2);
            } else if (i8 != 255) {
                qt.y0(27, i8 * 10);
            } else {
                qt.y0(27, -3);
            }
            if (i10 == 0) {
                qt.y0(28, -1);
            } else if (i10 == 1) {
                qt.y0(28, -2);
            } else if (i10 != 255) {
                qt.y0(28, i10 * 10);
            } else {
                qt.y0(28, -3);
            }
            int i11 = bArr[i2 + 6] & 255;
            qt.y0(18, (i11 >> 4) & 1);
            qt.y0(19, (i11 >> 5) & 1);
            qt.y0(20, (i11 >> 6) & 1);
            qt.y0(21, (i11 >> 0) & 15);
            int i12 = bArr[i2 + 7] & 255;
            qt.y0(22, (i12 >> 4) & 1);
            qt.y0(23, (i12 >> 5) & 1);
            qt.y0(24, (i12 >> 6) & 1);
            qt.y0(25, (i12 >> 0) & 15);
            if (nt.a()) {
                u0.d.B3(((bArr[i2 + 8] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
            int i13 = bArr[i2 + 9] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i13 >> 7) & 1);
                qt.y0(2, (i13 >> 6) & 1);
            } else {
                qt.y0(1, (i13 >> 6) & 1);
                qt.y0(2, (i13 >> 7) & 1);
            }
            qt.y0(3, (i13 >> 5) & 1);
            qt.y0(4, (i13 >> 4) & 1);
            qt.y0(5, (i13 >> 3) & 1);
            qt.y0(0, (i13 >> 2) & 1);
            return;
        }
        int i14 = i2 + 3;
        qt.y0(1031, bArr[i14] & 255);
        o1.x.C(nt.f8643f, 1049, new int[]{1, bArr[i14] & 255}, null, null);
        qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
        this.f10700c = bArr[i2 + 4] & 255;
        int i15 = 0;
        while (true) {
            iArr = this.f10701d;
            if (i15 >= iArr.length) {
                break;
            }
            int i16 = this.f10700c;
            if (i16 == iArr[i15][0]) {
                if (i16 == 0) {
                    break;
                }
                this.f10699b = i15;
                break;
            }
            i15++;
        }
        if (this.f10700c != 0 && (i4 = this.f10699b) < iArr.length) {
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f10701d[this.f10699b][1], 1);
        }
        u0.d.R2((bArr[i2 + 8] >> 4) & 15);
        u0.d.S2((bArr[i2 + 9] >> 4) & 15);
        u0.d.T2((bArr[i2 + 10] >> 4) & 15);
        u0.d.U2((bArr[i2 + 11] >> 4) & 15);
        int i17 = i2 + 12;
        int i18 = bArr[i17] & 255;
        int i19 = i2 + 13;
        int i20 = bArr[i19] & 255;
        int i21 = i2 + 14;
        int i22 = bArr[i21] & 255;
        int i23 = i2 + 15;
        int i24 = 255 & bArr[i23];
        int i25 = i18 / 9;
        int i26 = i20 / 9;
        int i27 = i22 / 9;
        int i28 = i24 / 9;
        if (i18 <= 127 || i20 <= 127 || i22 <= 127 || i24 <= 127) {
            if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i26 || l0.c0.f13015i != i27 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                b2 = 4;
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i25;
            l0.c0.f13014h = i26;
            l0.c0.f13015i = i27;
            l0.c0.f13016j = i28;
            u0.d.D2((bArr[i17] >> b2) & 15);
            u0.d.E2((bArr[i19] >> b2) & 15);
            u0.d.F2((bArr[i21] >> b2) & 15);
            u0.d.G2((bArr[i23] >> b2) & 15);
        }
        u0.d.C2(0);
        b2 = 4;
        l0.c0.f13013g = i25;
        l0.c0.f13014h = i26;
        l0.c0.f13015i = i27;
        l0.c0.f13016j = i28;
        u0.d.D2((bArr[i17] >> b2) & 15);
        u0.d.E2((bArr[i19] >> b2) & 15);
        u0.d.F2((bArr[i21] >> b2) & 15);
        u0.d.G2((bArr[i23] >> b2) & 15);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10703f);
        l0.b0.p0(this.f10704g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 9, iArr[0] & 1);
            }
        } else if (i2 == 1) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 10, iArr[0] & 1);
            }
        } else if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, 2, 76, 11, iArr[0] & 1);
            }
        } else if (i2 == 3 && T2(iArr, 1)) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
        }
    }
}
