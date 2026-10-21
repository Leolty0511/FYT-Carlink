package k0;

import android.content.Intent;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class lj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7705c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7706d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7707e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f7708f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7709g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7710h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lj.this.f7710h);
            lj.this.f7708f = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lj ljVar = lj.this;
            byte b2 = (byte) (ljVar.f7708f - 1);
            ljVar.f7708f = b2;
            if (b2 <= 0) {
                l0.b0.p0(ljVar.f7710h);
                lj.this.f7708f = (byte) 5;
            } else if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 1180091:
                    case 4719035:
                        z.k.s(227, 2, 36, 10, 4);
                        break;
                    case 3801534:
                        z.k.s(227, 2, 36, 13, 4);
                        break;
                    case 4915643:
                        z.k.s(227, 2, 36, 12, 4);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7709g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8314i = 1;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -124) {
            qt.y0(99, bArr[i2 + 2] & 255);
            int i7 = i2 + 4;
            int i8 = i2 + 3;
            qt.y0(100, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
            int i9 = i2 + 5;
            qt.y0(152, bArr[i9] & 255);
            switch (bArr[i9]) {
                case 1:
                    qt.y0(101, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 2:
                    qt.y0(102, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 3:
                    qt.y0(103, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 4:
                    qt.y0(104, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 5:
                    qt.y0(105, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 6:
                    qt.y0(106, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 7:
                    qt.y0(107, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 8:
                    qt.y0(108, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 9:
                    qt.y0(109, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 10:
                    qt.y0(110, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 11:
                    qt.y0(111, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
                case 12:
                    qt.y0(112, ((bArr[i7] << 8) & 65280) | (bArr[i8] & 255));
                    break;
            }
            int i10 = i2 + 7;
            qt.y0(113, (bArr[i10] >> 7) & 1);
            qt.y0(114, (bArr[i10] >> 6) & 1);
            qt.y0(115, (bArr[i10] >> 5) & 1);
            qt.y0(116, (bArr[i10] >> 4) & 1);
            qt.y0(117, (bArr[i10] >> 3) & 1);
        }
        if (b2 == -122) {
            qt.y0(120, (bArr[i2 + 2] >> 4) & 15);
            int i11 = i2 + 3;
            qt.y0(121, (bArr[i11] >> 7) & 1);
            qt.y0(122, (bArr[i11] >> 5) & 1);
            qt.y0(123, (bArr[i11] >> 4) & 1);
            qt.y0(124, (bArr[i11] >> 3) & 1);
            qt.y0(125, (bArr[i11] >> 2) & 1);
            qt.y0(126, (bArr[i11] >> 1) & 1);
            qt.y0(127, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 4;
            qt.y0(128, (bArr[i12] >> 5) & 1);
            qt.y0(129, (bArr[i12] >> 4) & 1);
            qt.y0(130, (bArr[i12] >> 3) & 1);
            qt.y0(131, (bArr[i12] >> 2) & 1);
            qt.y0(132, (bArr[i12] >> 1) & 1);
            qt.y0(133, (bArr[i12] >> 0) & 1);
            qt.y0(134, bArr[i2 + 5] & 255);
            qt.y0(135, bArr[i2 + 6] & 255);
            qt.y0(136, bArr[i2 + 7] & 255);
            int i13 = i2 + 8;
            qt.y0(137, (bArr[i13] >> 6) & 3);
            qt.y0(138, (bArr[i13] >> 4) & 3);
            qt.y0(139, (bArr[i13] >> 2) & 3);
            qt.y0(140, (bArr[i13] >> 0) & 3);
            qt.y0(141, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            byte b8 = bArr[i2 + 8];
            byte b9 = bArr[i2 + 9];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(14, (b4 >> 2) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(15, (b5 >> 4) & 1);
            int i14 = b6 & 255;
            if (i14 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i14 != 12) {
                if (i14 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (i14 != 6) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, b7 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i15 = b9 & 255;
                if (i15 == 254) {
                    qt.y0(27, -2);
                } else if (i15 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i15);
                }
                int i16 = b8 & 255;
                if (i16 == 254) {
                    qt.y0(28, -2);
                    return;
                } else if (i16 == 255) {
                    qt.y0(28, -3);
                    return;
                } else {
                    qt.y0(28, i16);
                    return;
                }
            }
            int i17 = b8 & 255;
            if (i17 == 254) {
                qt.y0(27, -2);
            } else if (i17 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i17);
            }
            int i18 = b9 & 255;
            if (i18 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i18 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i18);
                return;
            }
        }
        if (b2 == 17) {
            this.f7705c = bArr[i2 + 4] & 255;
            int i19 = 0;
            while (true) {
                iArr = this.f7706d;
                if (i19 >= iArr.length) {
                    break;
                }
                int i20 = this.f7705c;
                if (i20 == iArr[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f7704b = i19;
                    break;
                }
                i19++;
            }
            if (this.f7705c == 0 || (bArr[i2 + 5] & 255) == 0) {
                int i21 = this.f7704b;
                if (i21 != 255 && (bArr[i2 + 5] & 255) == 0) {
                    l0.b0.l0(iArr[i21][1], 1);
                }
                this.f7704b = 255;
            } else if (i19 < iArr.length) {
                l0.b0.l0(iArr[i19][1], 0);
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 18) {
            byte b10 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b10 >> 7) & 1);
                qt.y0(1, (b10 >> 6) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            return;
        }
        switch (b2) {
            case -90:
                qt.y0(144, bArr[i2 + 2] & 255);
                qt.y0(145, bArr[i2 + 3] & 255);
                qt.y0(146, bArr[i2 + 4] & 255);
                qt.y0(147, bArr[i2 + 5] & 255);
                qt.y0(148, bArr[i2 + 7] & 255);
                int i22 = i2 + 8;
                qt.y0(149, (bArr[i22] >> 7) & 1);
                qt.y0(150, (bArr[i22] >> 4) & 7);
                break;
            case -89:
                qt.x0(118, new String(bArr, i2 + 2, i3 - 2));
                break;
            case -88:
                qt.x0(142, new String(bArr, i2 + 2, i3 - 2));
                break;
            case CameraBinderDecorator.EUSERS /* -87 */:
                int i23 = nt.f8637c;
                if (i23 == 72 || i23 == 75) {
                    int i24 = i2 + 2;
                    if (this.f7707e != ((bArr[i24] >> 4) & 7)) {
                        int i25 = (bArr[i24] >> 4) & 7;
                        this.f7707e = i25;
                        if (i25 == 1) {
                            c3();
                        } else if (i25 == 2) {
                            b3();
                        } else if (i25 == 3) {
                            int i26 = u0.b.D;
                            if (i26 == 11 || i26 == 13) {
                                l0.b0.l0(5, 0);
                                l0.b0.l0(5, 1);
                                u0.b.f17311c.c(0);
                            }
                        }
                        break;
                    } else if (((bArr[i24] >> 4) & 7) == 1 && u0.b.D != 11) {
                        c3();
                        break;
                    } else if (((bArr[i24] >> 4) & 7) == 2 && u0.b.D != 13) {
                        b3();
                        break;
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7709g);
        l0.b0.p0(this.f7710h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 153) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        if (nt.W != 1) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (iArr[0] == 13) {
            z.k.s(227, 2, 61, 15, iArr[1]);
            return;
        }
        if (iArr[0] == 14) {
            z.k.s(227, 2, 61, 16, iArr[1]);
            return;
        }
        if (iArr[0] == 15) {
            z.k.s(227, 2, 61, 13, iArr[1]);
        } else if (iArr[0] == 16) {
            z.k.s(227, 2, 61, 14, iArr[1]);
        } else {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        }
    }

    public final void b3() {
        if (qt.i0().equals("com.syu.carinfo.wc.tianlaicd.WC08TianlaiCar6Cd")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.tianlaicd.WC08TianlaiCar6Cd");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void c3() {
        if (qt.i0().equals("com.syu.carinfo.wc.tianlaicd.WC08TianlaiCarRadioAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.tianlaicd.WC08TianlaiCarRadioAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
