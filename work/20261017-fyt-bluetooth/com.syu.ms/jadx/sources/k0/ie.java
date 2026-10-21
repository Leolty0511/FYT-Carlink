package k0;

import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ie extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f6382i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6384c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6385d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 6}, new int[]{10, 12}, new int[]{129, 3}, new int[]{130, 4}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 5}, new int[]{136, 6}, new int[]{137, 5}, new int[]{138, 14}, new int[]{139, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6386e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6387f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6388g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6389h = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ie.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w0.d.f17798j == ie.f6382i || u0.b.D != 1) {
                return;
            }
            int unused = ie.f6382i = w0.d.f17798j;
            ie.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 197, 6, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:23:0x011b A[Catch: Exception -> 0x0124, TRY_LEAVE, TryCatch #2 {Exception -> 0x0124, blocks: (B:20:0x0114, B:21:0x0118, B:23:0x011b), top: B:50:0x0114 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x00bf, please report this as an issue */
    public static void a3() {
        byte[] bytes;
        int[] iArr = new int[37];
        int i2 = 0;
        for (int i3 = 0; i3 < 37; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = -29;
        iArr[1] = -60;
        iArr[2] = 34;
        iArr[3] = (byte) b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int[] iArr2 = new int[20];
            String str = new String();
            int i5 = w0.d.f17796h;
            if (i5 != 0 && i5 != 1) {
                switch (i5) {
                    case 65536:
                    case 65537:
                    case 65538:
                        int i6 = w0.d.f17797i;
                        iArr2[1] = i6 / 100;
                        iArr2[0] = i6 % 100;
                        str = Integer.toString(iArr2[1]) + "." + Integer.toString(iArr2[0]);
                        break;
                }
            } else {
                int i7 = w0.d.f17797i;
                iArr2[1] = i7 / 100;
                iArr2[0] = i7 % 100;
                str = iArr2[0] < 10 ? Integer.toString(iArr2[1]) + "0" + Integer.toString(iArr2[0] & 255) : Integer.toString(iArr2[1]) + Integer.toString(iArr2[0] & 255);
            }
            try {
                byte[] bytes2 = str.getBytes("utf-8");
                while (i2 < bytes2.length) {
                    iArr[i2 + 4] = bytes2[i2];
                    i2++;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (i4 != 4) {
            switch (i4) {
                case 7:
                    int[] iArr3 = new int[20];
                    iArr3[0] = o0.e.B / 100;
                    iArr3[1] = o0.e.C % 100;
                    int i8 = o0.e.f16794r;
                    iArr3[2] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr3[3] = i8 % 60;
                    new String();
                    try {
                        bytes = (Integer.toString(iArr3[0]) + "/" + Integer.toString(iArr3[1]) + "  " + Integer.toString(iArr3[2]) + ":" + Integer.toString(iArr3[3])).getBytes("utf-8");
                        while (i2 < bytes.length) {
                            iArr[i2 + 4] = bytes[i2];
                            i2++;
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    break;
                case 8:
                case 9:
                case 10:
                    int[] iArr4 = new int[20];
                    int i9 = u0.b.r3;
                    iArr4[0] = i9 / 100;
                    iArr4[1] = i9 % 100;
                    int i10 = u0.b.s3;
                    iArr4[2] = i10 / 100;
                    iArr4[3] = i10 % 100;
                    int i11 = u0.b.t3;
                    iArr4[4] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr4[5] = i11 % 60;
                    new String();
                    try {
                        byte[] bytes3 = (Integer.toString(iArr4[0]) + Integer.toString(iArr4[1]) + "/" + Integer.toString(iArr4[2]) + Integer.toString(iArr4[3]) + "  " + Integer.toString(iArr4[4]) + ":" + Integer.toString(iArr4[5])).getBytes("utf-8");
                        while (i2 < bytes3.length) {
                            iArr[i2 + 4] = bytes3[i2];
                            i2++;
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    break;
            }
        } else {
            int[] iArr5 = new int[20];
            iArr5[0] = o0.e.B / 100;
            iArr5[1] = o0.e.C % 100;
            int i12 = o0.e.f16794r;
            iArr5[2] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr5[3] = i12 % 60;
            new String();
            bytes = (Integer.toString(iArr5[0]) + "/" + Integer.toString(iArr5[1]) + "  " + Integer.toString(iArr5[2]) + ":" + Integer.toString(iArr5[3])).getBytes("utf-8");
            while (i2 < bytes.length) {
                iArr[i2 + 4] = bytes[i2];
                i2++;
            }
        }
        z.k.s(iArr);
    }

    public static int b3() {
        int[] iArr = new int[1];
        switch (u0.b.D) {
            case 0:
                iArr[0] = 12;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 == 0) {
                    iArr[0] = 4;
                    break;
                } else if (i2 == 1) {
                    iArr[0] = 5;
                    break;
                } else {
                    switch (i2) {
                        case 65536:
                            iArr[0] = 1;
                            break;
                        case 65537:
                            iArr[0] = 2;
                            break;
                        case 65538:
                            iArr[0] = 3;
                            break;
                    }
                }
                break;
            case 2:
                iArr[0] = 11;
                break;
            case 3:
                iArr[0] = 11;
                break;
            case 4:
                iArr[0] = 6;
                break;
            case 5:
                iArr[0] = 8;
                break;
            case 6:
                iArr[0] = 8;
                break;
            case 7:
                iArr[0] = 7;
                break;
            case 8:
            case 9:
            case 10:
                iArr[0] = 9;
                break;
        }
        return iArr[0];
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 0;
        d3(1);
        e3(33);
        e3(36);
        e3(37);
        e3(38);
        e3(48);
        w0.e.f17815a.a(this.f6386e, 1);
        w0.e.f17819e.a(this.f6386e, 1);
        w0.e.f17818d.a(this.f6386e, 1);
        u0.c.f17393t.a(this.f6386e, 1);
        u0.c.f17392s.a(this.f6386e, 1);
        u0.c.f17374a.a(this.f6386e, 1);
        qt.z(this.f6387f);
        qt.z(this.f6388g);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 65) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 == 1) {
                qt.y0(5, (b4 >> 4) & 1);
                qt.y0(4, (b4 >> 3) & 1);
                qt.y0(3, (b4 >> 2) & 1);
                qt.y0(2, (b4 >> 1) & 1);
                qt.y0(1, (b4 >> 0) & 1);
                return;
            }
            return;
        }
        if (b2 == 125) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                    return;
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                }
            }
            if (i4 == 3) {
                int i7 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            } else if (i4 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f6389h = true;
                return;
            } else {
                if (i4 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | (65280 & (bArr[i2 + 4] << 8)));
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f6384c = b5 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f6385d;
                    if (i8 < iArr.length) {
                        int i9 = this.f6384c;
                        if (i9 != iArr[i8][0]) {
                            i8++;
                        } else if (i9 != 0) {
                            this.f6383b = i8;
                        }
                    }
                }
                if ((b6 & 255) == 0) {
                    if (i8 <= iArr.length) {
                        l0.b0.l0(iArr[this.f6383b][1], 1);
                    }
                } else if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                int i10 = i2 + 4;
                byte b9 = bArr[i10];
                int i11 = i2 + 5;
                byte b10 = bArr[i11];
                byte b11 = bArr[i2 + 6];
                if (u0.b.f17347o != 1) {
                    qt.y0(10, (b7 >> 7) & 1);
                    qt.y0(11, (b7 >> 6) & 1);
                    int[] iArr3 = new int[1];
                    iArr3[0] = ((b7 >> 5) & 1) == 1 ? 0 : 1;
                    qt.y0(12, iArr3);
                    qt.y0(13, (b7 >> 4) & 1);
                    qt.y0(14, (b7 >> 2) & 1);
                    qt.y0(15, (b7 >> 1) & 1);
                    qt.y0(38, (b7 >> 0) & 1);
                    int i12 = b8 >> 5;
                    qt.y0(77, i12 & 7);
                    qt.y0(18, (b8 >> 7) & 1);
                    qt.y0(19, (b8 >> 6) & 1);
                    qt.y0(20, i12 & 1);
                    qt.y0(21, (b8 >> 0) & 15);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b9 = bArr[i11];
                        b10 = bArr[i10];
                    }
                    int i13 = b9 & 255;
                    if (i13 == 0) {
                        qt.y0(27, -2);
                    } else if (i13 == 254) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, ((b9 - 32) / 2) + 16);
                    }
                    int i14 = b10 & 255;
                    if (i14 == 0) {
                        qt.y0(28, -2);
                    } else if (i14 == 254) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, ((b10 - 32) / 2) + 16);
                    }
                    qt.y0(29, b11 & 3);
                    qt.y0(30, (b11 >> 2) & 3);
                    break;
                }
                break;
            case 34:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                byte b14 = bArr[i2 + 4];
                byte b15 = bArr[i2 + 5];
                u0.d.R2(c3(b12 & 255));
                u0.d.S2(c3(b13 & 255));
                u0.d.T2(c3(b14 & 255));
                u0.d.U2(c3(b15 & 255));
                break;
            case 35:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                byte b19 = bArr[i2 + 5];
                u0.d.D2(c3(b16 & 255));
                u0.d.E2(c3(b17 & 255));
                u0.d.F2(c3(b18 & 255));
                u0.d.G2(c3(b19 & 255));
                break;
            default:
                switch (b2) {
                    case 37:
                        byte b20 = bArr[i2 + 2];
                        qt.y0(99, (b20 >> 1) & 1);
                        qt.y0(100, (b20 >> 0) & 1);
                        break;
                    case 38:
                        if (!this.f6389h) {
                            qt.l(bArr[i2 + 2], bArr[i2 + 3] & 7, false, 540);
                        }
                        break;
                    case 39:
                        byte b21 = bArr[i2 + 2];
                        byte b22 = bArr[i2 + 3];
                        this.f6384c = (b21 & 255) | 128;
                        int i15 = 0;
                        while (true) {
                            iArr2 = this.f6385d;
                            if (i15 < iArr2.length) {
                                int i16 = this.f6384c;
                                if (i16 != iArr2[i15][0]) {
                                    i15++;
                                } else if (i16 != 0) {
                                    this.f6383b = i15;
                                }
                            }
                        }
                        int i17 = b22 & 255;
                        if (i17 != 1) {
                            if (i17 == 0) {
                                int i18 = this.f6383b;
                                if (i18 < iArr2.length && i18 != 255) {
                                    l0.b0.l0(iArr2[i18][1], 1);
                                }
                                this.f6383b = 255;
                            }
                        } else if (i15 < iArr2.length) {
                            l0.b0.l0(iArr2[i15][1], 0);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        d3(0);
        w0.e.f17815a.d(this.f6386e);
        w0.e.f17819e.d(this.f6386e);
        w0.e.f17818d.d(this.f6386e);
        u0.c.f17393t.d(this.f6386e);
        u0.c.f17392s.d(this.f6386e);
        u0.c.f17374a.d(this.f6386e);
        qt.q0(this.f6387f);
        qt.q0(this.f6388g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public int c3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            case 6:
                return 7;
            case 7:
                return 8;
            default:
                return 10;
        }
    }

    public final void d3(int i2) {
        z.k.s(227, 46, 129, 1, i2, ((i2 + 130) ^ 255) & 255);
    }

    public final void e3(int i2) {
        z.k.s(227, 46, 144, 1, i2, ((i2 + 145) ^ 255) & 255);
    }
}
