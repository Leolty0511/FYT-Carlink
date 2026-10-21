package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class j1 extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f6667j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6669c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6670d = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 7}, new int[]{4, 8}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 6}, new int[]{9, 38}, new int[]{10, 33}, new int[]{11, 32}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 18}, new int[]{18, 29}, new int[]{96, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6671e = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 6}, new int[]{9, 38}, new int[]{10, 33}, new int[]{11, 32}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 18}, new int[]{18, 29}, new int[]{96, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6672f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6673g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f6674h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6675i;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            z.k.s(227, -90, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) & 128) | ((byte) time.hour)), (byte) time.minute);
            z.k.s(227, -18, 2, 81, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6675i = (nt.f8633a >> 16) & 255;
        this.f6674h.a();
        b3(this.f6674h.b(1, 0));
        qt.z(this.f6672f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8311f = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 != 41) {
            switch (b2) {
                case 32:
                    if (nt.a()) {
                        byte b3 = bArr[i2 + 2];
                        byte b4 = bArr[i2 + 3];
                        this.f6669c = b3 & 255;
                        if (this.f6675i == 1) {
                            int i7 = 0;
                            while (true) {
                                iArr2 = this.f6671e;
                                if (i7 < iArr2.length) {
                                    int i8 = this.f6669c;
                                    if (i8 != iArr2[i7][0]) {
                                        i7++;
                                    } else if (i8 != 0) {
                                        this.f6668b = i7;
                                    }
                                }
                            }
                            if ((b4 & 255) != 0) {
                                if (i7 < iArr2.length) {
                                    l0.b0.l0(iArr2[i7][1], 0);
                                    return;
                                }
                                return;
                            } else {
                                int i9 = this.f6668b;
                                if (i9 < iArr2.length && i9 != 255) {
                                    l0.b0.l0(iArr2[i9][1], 1);
                                }
                                this.f6668b = 255;
                                return;
                            }
                        }
                        int i10 = 0;
                        while (true) {
                            iArr = this.f6670d;
                            if (i10 < iArr.length) {
                                int i11 = this.f6669c;
                                if (i11 != iArr[i10][0]) {
                                    i10++;
                                } else if (i11 != 0) {
                                    this.f6668b = i10;
                                }
                            }
                        }
                        if ((b4 & 255) != 0) {
                            if (i10 < iArr.length) {
                                l0.b0.l0(iArr[i10][1], 0);
                                return;
                            }
                            return;
                        } else {
                            int i12 = this.f6668b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                            }
                            this.f6668b = 255;
                            return;
                        }
                    }
                    return;
                case 33:
                    int i13 = bArr[i2 + 2] & 255;
                    int i14 = bArr[i2 + 3] & 255;
                    int i15 = bArr[i2 + 4] & 255;
                    int i16 = bArr[i2 + 6] & 255;
                    qt.y0(10, (i13 >> 7) & 1);
                    qt.y0(11, (i13 >> 6) & 1);
                    qt.y0(12, (i13 >> 5) & 1);
                    qt.y0(13, (i13 >> 3) & 1);
                    qt.y0(14, (i13 >> 2) & 1);
                    qt.y0(65, (i13 >> 1) & 1);
                    qt.y0(16, (i13 >> 0) & 1);
                    int i17 = (i14 >> 4) & 15;
                    if (i17 == 1) {
                        i4 = 1;
                        i5 = 1;
                        i6 = 0;
                    } else if (i17 == 2) {
                        i5 = 1;
                        i4 = 0;
                        i6 = 0;
                    } else if (i17 == 4) {
                        i6 = 1;
                        i4 = 0;
                        i5 = 0;
                    } else if (i17 != 8) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 0;
                    } else {
                        i6 = 1;
                        i5 = 1;
                        i4 = 0;
                    }
                    qt.y0(49, 0);
                    qt.y0(18, i4);
                    qt.y0(19, i6);
                    qt.y0(20, i5);
                    qt.y0(21, i14 & 15);
                    if ((i15 & 128) != 128) {
                        qt.y0(27, i15 & 127);
                    } else if (i15 == 0) {
                        qt.y0(27, -2);
                    } else if (i15 != 31) {
                        qt.y0(27, i15 & 127);
                    } else {
                        qt.y0(27, -3);
                    }
                    qt.y0(65, (i16 >> 7) & 1);
                    qt.y0(16, (i16 >> 6) & 1);
                    if (nt.a()) {
                        int i18 = bArr[i2 + 7] & 255;
                        u0.d.A3((i18 & 128) != 0 ? 1000 - ((i18 & 127) * 10) : ((i18 & 127) * 10) + 1000);
                        return;
                    }
                    return;
                case 34:
                case 37:
                    if (nt.a()) {
                        int i19 = i2 + 2;
                        u0.d.R2(a3(bArr[i19] & 255));
                        u0.d.S2(a3(bArr[i19] & 255));
                        u0.d.T2(a3(bArr[i19] & 255));
                        u0.d.U2(a3(bArr[i19] & 255));
                        return;
                    }
                    return;
                case 35:
                    if (nt.a()) {
                        int i20 = i2 + 2;
                        u0.d.D2(a3(bArr[i20] & 255));
                        u0.d.E2(a3(bArr[i20] & 255));
                        u0.d.F2(a3(bArr[i20] & 255));
                        u0.d.G2(a3(bArr[i20] & 255));
                        return;
                    }
                    return;
                case 36:
                    int i21 = bArr[i2 + 2] & 255;
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (i21 >> 7) & 1);
                        qt.y0(2, (i21 >> 6) & 1);
                    } else {
                        qt.y0(2, (i21 >> 7) & 1);
                        qt.y0(1, (i21 >> 6) & 1);
                    }
                    qt.y0(4, (i21 >> 5) & 1);
                    qt.y0(3, (i21 >> 4) & 1);
                    qt.y0(5, (i21 >> 3) & 1);
                    break;
                default:
                    return;
            }
        }
        qt.m(bArr[i2 + 3], bArr[i2 + 2], 32768, true, 7763);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6672f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        b3(iArr[0]);
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return i2;
    }

    public final void b3(int i2) {
        qt.y0(98, i2);
        f6667j = i2;
        z.k.s(227, 153, 4, 1, i2, 0, 0);
        int iB = this.f6674h.b(1, 0);
        int i3 = f6667j;
        if (iB != i3) {
            this.f6674h.g(1, i3);
        }
    }
}
