package k0;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class sh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10281c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10282d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{11, 3}, new int[]{12, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 13}, new int[]{128, 0}, new int[]{129, 21}, new int[]{132, 6}, new int[]{133, 18}, new int[]{134, 1}, new int[]{135, 54}, new int[]{136, 55}, new int[]{139, 58}, new int[]{140, 16}, new int[]{142, 5}, new int[]{48, 7}, new int[]{49, 8}, new int[]{50, 28}, new int[]{51, 27}, new int[]{52, 34}, new int[]{53, 35}, new int[]{54, 32}, new int[]{55, 33}, new int[]{56, 29}, new int[]{64, 40}, new int[]{65, 41}, new int[]{66, 42}, new int[]{67, 43}, new int[]{68, 44}, new int[]{69, 45}, new int[]{70, 7}, new int[]{71, 3}, new int[]{72, 8}, new int[]{73, 4}, new int[]{80, 62}, new int[]{153, -1}};

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
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 == 3932599 || i2 == 11534788) {
            mtVar.f8319n = 1;
        } else {
            mtVar.f8319n = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            int i10 = bArr[i2 + 4] & 255;
            int i11 = i2 + 5;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 6;
            int i14 = bArr[i13] & 255;
            byte b3 = bArr[i2 + 7];
            qt.y0(11, (i8 >> 6) & 1);
            qt.y0(12, (i8 >> 4) & 3);
            qt.y0(13, (i8 >> 3) & 1);
            qt.y0(16, (i8 >> 1) & 1);
            if (i9 != 1) {
                if (i9 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i9 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i9 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i9 != 5) {
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
            if (i10 == 0) {
                qt.y0(10, 0);
            } else {
                qt.y0(10, 1);
            }
            qt.y0(21, i10);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i12 = bArr[i13] & 255;
                i14 = bArr[i11] & 255;
            }
            if (i12 == 0) {
                qt.y0(27, -2);
            } else if (i12 == 30) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i12);
            }
            if (i14 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i14 == 30) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i14);
            }
        }
        if (b2 == 40) {
            int i15 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i15 >> 6) & 1);
                qt.y0(1, (i15 >> 7) & 1);
            } else {
                qt.y0(2, (i15 >> 7) & 1);
                qt.y0(1, (i15 >> 6) & 1);
            }
            qt.y0(4, (i15 >> 5) & 1);
            qt.y0(3, (i15 >> 4) & 1);
            qt.y0(0, (i15 >> 2) & 1);
            qt.y0(5, (i15 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                qt.l(bArr[i2 + 2], bArr[i2 + 3], false, 5780);
                return;
            } else {
                qt.l(bArr[i2 + 2], bArr[i2 + 3], false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
                return;
            }
        }
        if (b2 == 56) {
            qt.y0(100, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(103, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            int i16 = bArr[i2 + 2] & 255;
            qt.y0(98, (i16 >> 1) & 1);
            qt.y0(99, (i16 >> 0) & 1);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i17 = i2 + 3;
            l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i17] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f10281c = b4 & 255;
                int i18 = 0;
                while (true) {
                    iArr = this.f10282d;
                    if (i18 < iArr.length) {
                        int i19 = this.f10281c;
                        if (i19 != iArr[i18][0]) {
                            i18++;
                        } else if (i19 != 0) {
                            this.f10280b = i18;
                        }
                    }
                }
                if ((b5 & 255) == 1 && (i7 = this.f10280b) < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 0);
                    l0.b0.l0(this.f10282d[this.f10280b][1], 1);
                    this.f10280b = 255;
                    break;
                }
                break;
            case 34:
                u0.d.R2(l0.c0.c1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.c1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.c1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.c1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.c1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.c1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.c1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.c1(bArr[i2 + 5] & 255));
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
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else if (i2 == 1029 && iArr[0] == 0) {
            z.k.s(227, -125, 4, (iArr[1] >> 8) & 255, iArr[1] & 255, (iArr[2] >> 8) & 255, iArr[2] & 255);
        }
    }
}
