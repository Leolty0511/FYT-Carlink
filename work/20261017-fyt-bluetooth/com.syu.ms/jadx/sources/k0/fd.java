package k0;

import android.os.SystemClock;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class fd extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5155c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5156d = {new int[]{1, 3}, new int[]{2, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f5157e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5158f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fd fdVar = fd.this;
            byte b2 = (byte) (fdVar.f5157e + 1);
            fdVar.f5157e = b2;
            if (b2 > 5) {
                l0.b0.o0(fdVar.f5158f);
                fd.this.f5157e = (byte) 0;
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8321p = 1;
        if (nt.f8637c == 2) {
            mtVar.f8321p = 0;
            mtVar.f8306a = null;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b3 = bArr[i2];
        int i8 = 2;
        if (b3 == 16) {
            int i9 = bArr[i2 + 2] & 255;
            if (u0.b.P3 == 1) {
                u0.d.t3(((i9 >> 7) & 1) == 0 ? 1 : 0);
            }
            qt.y0(116, i9 & 3);
        }
        if (b3 == 17) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f5155c = b4 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f5156d;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    int i11 = this.f5155c;
                    if (i11 == iArr[i10][0]) {
                        if (i11 == 0) {
                            break;
                        }
                        this.f5154b = i10;
                        break;
                    }
                    i10++;
                }
                if ((b5 & 255) != 0) {
                    if (i10 >= iArr.length || (b2 = this.f5157e) != 0) {
                        return;
                    }
                    this.f5157e = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i10][1], 0);
                    l0.b0.a(this.f5158f);
                    return;
                }
                int i12 = this.f5154b;
                if (i12 < iArr.length && i12 != 255) {
                    l0.b0.l0(iArr[i12][1], 1);
                    l0.b0.o0(this.f5158f);
                    this.f5157e = (byte) 0;
                }
                this.f5154b = 255;
                return;
            }
            return;
        }
        if (b3 == 36) {
            int i13 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i13 >> 7) & 1);
                qt.y0(2, (i13 >> 6) & 1);
            } else {
                qt.y0(1, (i13 >> 6) & 1);
                qt.y0(2, (i13 >> 7) & 1);
            }
            qt.y0(3, (i13 >> 4) & 1);
            qt.y0(4, (i13 >> 5) & 1);
            qt.y0(5, (i13 >> 3) & 1);
            return;
        }
        if (b3 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5680);
            return;
        }
        switch (b3) {
            case 2:
                int i14 = bArr[i2 + 2] & 255;
                int i15 = bArr[i2 + 3] & 255;
                int i16 = bArr[i2 + 4] & 255;
                int i17 = 255 & bArr[i2 + 5];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    if (i14 != 0) {
                        qt.y0(27, i14 + 35);
                    } else {
                        qt.y0(27, -1);
                    }
                    if (i15 != 0) {
                        qt.y0(28, i15 + 35);
                    } else {
                        qt.y0(28, -1);
                    }
                } else {
                    if (i14 != 0) {
                        qt.y0(28, i14 + 35);
                    } else {
                        qt.y0(28, -1);
                    }
                    if (i15 != 0) {
                        qt.y0(27, i15 + 35);
                    } else {
                        qt.y0(27, -1);
                    }
                }
                int i18 = (i16 >> 3) & 7;
                if (i18 > 7) {
                    i18 = 7;
                }
                qt.y0(21, i18);
                int i19 = i16 & 7;
                if (i19 != 1) {
                    if (i19 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i19 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i19 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i19 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(77, i19);
                qt.y0(16, (i17 >> 6) & 1);
                qt.y0(65, (i17 >> 5) & 1);
                qt.y0(14, (i17 >> 4) & 1);
                int[] iArr2 = new int[1];
                iArr2[0] = ((i17 >> 3) & 1) == 0 ? 0 : 1;
                qt.y0(12, iArr2);
                qt.y0(13, (i17 >> 1) & 1);
                qt.y0(11, (i17 >> 0) & 1);
                break;
            case 3:
                qt.y0(99, bArr[i2 + 2] & 255);
                break;
            case 4:
                int i20 = bArr[i2 + 2] & 255;
                int i21 = bArr[i2 + 3] & 255;
                int i22 = bArr[i2 + 4] & 255;
                int i23 = bArr[i2 + 5] & 255;
                qt.y0(100, i20);
                int i24 = (255 & i23) | ((i22 << 8) & 65280);
                if (i20 == 3 || i20 == 4 || i20 == 5) {
                    i7 = ((i24 - 1) * 5) + 8750;
                } else {
                    i7 = ((i24 >> 15) & 1) == 1 ? ((i24 - 1) * 10) + 530 : ((i24 - 1) * 9) + 531;
                }
                o1.x.C(nt.f8643f, 101, new int[]{i20, i21, i7}, null, null);
                break;
            case 5:
                StringBuilder sb = new StringBuilder();
                while (i8 <= 17) {
                    sb.append((char) bArr[i2 + i8]);
                    i8++;
                }
                qt.x0(102, sb.toString());
                break;
            case 6:
                int i25 = bArr[i2 + 2] & 255;
                int i26 = bArr[i2 + 3] & 255;
                int i27 = bArr[i2 + 4] & 255;
                qt.y0(105, i25);
                qt.y0(106, ((i26 << 8) & 65280) | (i27 & 255));
                break;
            case 7:
                int i28 = bArr[i2 + 2] & 255;
                int i29 = bArr[i2 + 3] & 255;
                int i30 = bArr[i2 + 4] & 255;
                int i31 = bArr[i2 + 5] & 255;
                int i32 = 255 & bArr[i2 + 6];
                qt.y0(107, (qt.c(i28) << 8) | qt.c(i29));
                qt.y0(108, (qt.c(i30) << 8) | qt.c(i31));
                qt.y0(109, i32);
                break;
            case 8:
                StringBuilder sb2 = new StringBuilder();
                while (i8 <= 17) {
                    sb2.append((char) bArr[i2 + i8]);
                    i8++;
                }
                qt.x0(110, sb2.toString());
                break;
            case 9:
                qt.y0(113, bArr[i2 + 2] & 255);
                break;
            case 10:
                int i33 = i2 + 2;
                qt.y0(115, (((bArr[i33] >> 7) & 1) << 8) | qt.c(bArr[i33] & 127));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && T2(iArr, 2)) {
            z.k.s(227, 133, 2, (byte) iArr[0], 1);
            SystemClock.sleep(100L);
            z.k.s(227, 133, 2, (byte) iArr[0], 0);
        }
    }
}
