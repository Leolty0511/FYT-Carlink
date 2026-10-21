package k0;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class th extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10640c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10641d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{18, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10642e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            th.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[14];
        for (int i2 = 0; i2 < 14; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 192;
        iArr[1] = 12;
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 49;
            } else if (i4 == 65537) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 50;
            } else if (i4 == 65538) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 51;
            } else if (i4 == 0) {
                iArr[2] = 65;
                iArr[3] = 77;
                iArr[4] = 49;
            } else if (i4 == 1) {
                iArr[2] = 65;
                iArr[3] = 77;
                iArr[4] = 50;
            }
            iArr[5] = 32;
            if (i4 < 65536 || i4 > 65538) {
                int i5 = w0.d.f17797i;
                iArr[6] = ((i5 / 1000) % 10) + 48;
                iArr[7] = ((i5 / 100) % 10) + 48;
                iArr[8] = ((i5 / 10) % 10) + 48;
                iArr[9] = (i5 % 10) + 48;
            } else {
                int i6 = w0.d.f17797i;
                if (i6 / 10000 == 0) {
                    iArr[6] = ((i6 / 1000) % 10) + 48;
                    iArr[7] = ((i6 / 100) % 10) + 48;
                    iArr[8] = 46;
                    iArr[9] = ((i6 / 10) % 10) + 48;
                    iArr[10] = (i6 % 10) + 48;
                } else {
                    iArr[6] = (i6 / 10000) + 48;
                    iArr[7] = ((i6 / 1000) % 10) + 48;
                    iArr[8] = ((i6 / 100) % 10) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 / 10) % 10) + 48;
                    iArr[11] = (i6 % 10) + 48;
                }
            }
        } else if (i3 == 2) {
            iArr[2] = 66;
            iArr[3] = 84;
            iArr[4] = 32;
            iArr[5] = 80;
            iArr[6] = 104;
            iArr[7] = 111;
            iArr[8] = 110;
            iArr[9] = 101;
        } else if (i3 == 3) {
            iArr[2] = 66;
            iArr[3] = 84;
            iArr[4] = 32;
            iArr[5] = 77;
            iArr[6] = 117;
            iArr[7] = 115;
            iArr[8] = 105;
            iArr[9] = 99;
        } else if (i3 == 5) {
            iArr[2] = 65;
            iArr[3] = 85;
            iArr[4] = 88;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 77;
            iArr[3] = 80;
            iArr[4] = 51;
            iArr[5] = 32;
            int i7 = u0.b.r3;
            iArr[6] = (i7 / 1000) + 84;
            iArr[7] = (i7 / 1000) + 48;
            iArr[8] = ((i7 % 1000) / 100) + 48;
            iArr[9] = ((i7 % 100) / 10) + 48;
            iArr[10] = (i7 % 10) + 48;
        } else if (i3 == 13) {
            iArr[2] = 67;
            iArr[3] = 68;
        }
        int[] iArr2 = new int[15];
        iArr2[0] = 227;
        int i8 = 0;
        while (i8 < 14) {
            int i9 = i8 + 1;
            iArr2[i9] = iArr[i8];
            i8 = i9;
        }
        z.k.s(iArr2);
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
        mtVar.f8314i = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        l0.b0.b(this.f10642e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String str;
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -64) {
            try {
                str = new String(bArr, i2 + 2, 12, "GB2312");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            qt.z0(110, new int[]{1}, str);
            return;
        }
        if (b2 == 17) {
            int i7 = bArr[i2 + 2] & 255;
            int i8 = bArr[i2 + 3] & 255;
            int i9 = bArr[i2 + 4] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            qt.y0(11, (i7 >> 6) & 1);
            qt.y0(12, (i7 >> 4) & 3);
            qt.y0(13, (i7 >> 3) & 1);
            qt.y0(16, (i7 >> 1) & 1);
            if (i8 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i8 == 2) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i8 == 3) {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            } else if (i8 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i8 != 5) {
                i4 = 0;
                i6 = 0;
                i5 = 0;
            } else {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            }
            qt.y0(20, i4);
            qt.y0(19, i6);
            qt.y0(18, i5);
            qt.y0(21, i9);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            int i14 = i11 & 255;
            if (i14 == 0) {
                qt.y0(27, -2);
            } else if (i14 != 30) {
                qt.y0(27, i14);
            } else {
                qt.y0(27, -3);
            }
            int i15 = 255 & i13;
            if (i15 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i15 != 30) {
                qt.y0(28, i15);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
        }
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10640c = b3 & 255;
            int i16 = 0;
            while (true) {
                iArr = this.f10641d;
                if (i16 >= iArr.length) {
                    break;
                }
                int i17 = this.f10640c;
                if (i17 == iArr[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f10639b = i16;
                    break;
                }
                i16++;
            }
            if ((b4 & 255) != 0) {
                if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                    return;
                }
                return;
            } else {
                int i18 = this.f10639b;
                if (i18 < iArr.length && i18 != 255) {
                    l0.b0.l0(iArr[i18][1], 1);
                }
                this.f10639b = 255;
                return;
            }
        }
        if (b2 == 40) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 48) {
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i19 = i2 + 3;
            l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i19] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 56) {
            if (b2 != 57) {
                return;
            }
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            return;
        }
        qt.y0(102, bArr[i2 + 2] & 255);
        qt.y0(103, bArr[i2 + 3] & 255);
        qt.y0(104, bArr[i2 + 4] & 255);
        qt.y0(105, bArr[i2 + 5] & 255);
        qt.y0(98, bArr[i2 + 6] & 255);
        qt.y0(99, bArr[i2 + 7] & 255);
        qt.y0(100, bArr[i2 + 8] & 255);
        qt.y0(101, bArr[i2 + 9] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(this.f10642e);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 111) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
