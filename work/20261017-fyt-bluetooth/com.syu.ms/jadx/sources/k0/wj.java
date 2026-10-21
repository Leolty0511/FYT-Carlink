package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11758c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11759d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11760e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11761f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11762g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11763h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11764i = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wj.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(wj.this.f11764i);
            wj.this.f11762g = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wj wjVar = wj.this;
            int i2 = wjVar.f11762g - 1;
            wjVar.f11762g = i2;
            if (i2 <= 0) {
                l0.b0.p0(wjVar.f11764i);
                wj.this.f11762g = 5;
            } else if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 223:
                        z.k.s(227, 2, 36, 1, 66);
                        break;
                    case 224:
                        z.k.s(227, 2, 36, 2, 66);
                        break;
                    case 225:
                        z.k.s(227, 2, 36, 3, 66);
                        break;
                }
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = b3();
        if (u0.b.D == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17798j & 255;
                iArr[3] = (i5 / 10) + 48;
                iArr[4] = (i5 % 10) + 48;
                int i6 = w0.d.f17797i;
                if ((i6 % 100000) / 10000 == 0) {
                    iArr[6] = 32;
                } else {
                    iArr[6] = ((i6 % 100000) / 10000) + 48;
                }
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17798j;
                iArr[3] = (i7 / 10) + 1 + 48;
                iArr[4] = (i7 % 10) + 1 + 48;
                int i8 = w0.d.f17797i;
                if (i8 / 10000 == 0) {
                    iArr[6] = ((i8 % 10000) / 1000) + 48;
                    iArr[7] = ((i8 % 1000) / 100) + 48;
                    iArr[8] = ((i8 % 100) / 10) + 48;
                    iArr[9] = (i8 % 10) + 48;
                } else {
                    iArr[6] = (i8 / 10000) + 48;
                    iArr[7] = ((i8 % 10000) / 1000) + 48;
                    iArr[8] = ((i8 % 1000) / 100) + 48;
                    iArr[9] = ((i8 % 100) / 10) + 48;
                    iArr[10] = (i8 % 10) + 48;
                }
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i9 = i2 + 1;
            iArr2[i9] = (byte) iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0048  */
    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    public static int b3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 != i3 - 65536) {
                    if (2 == i3 - 65536) {
                        i2 = 3;
                    } else if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                if (o0.e.H != 1) {
                    i2 = 13;
                } else {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            case 11:
            default:
                i2 = 0;
                break;
            case 12:
                i2 = 254;
                break;
            case 13:
                i2 = 255;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
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
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f11763h, 1);
        qt.z(this.f11761f);
        yVar.a(this.f11760e, 1);
        u0.c.f17374a.a(this.f11760e, 1);
        w0.e.f17815a.a(this.f11760e, 1);
        w0.e.f17819e.a(this.f11760e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 26) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i7 = i2 + 4;
                l0.c0.b((bArr[i7] >> 0) & 1, (bArr[i7] >> 1) & 1, (bArr[i7] >> 2) & 1);
                return;
            } else {
                int i8 = i2 + 4;
                l0.c0.a((bArr[i8] >> 0) & 1, (bArr[i8] >> 1) & 1, (bArr[i8] >> 2) & 1);
                return;
            }
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(68, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(33, (b4 >> 5) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(17, (b4 >> 1) & 1);
            qt.y0(15, (b5 >> 4) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            if (b6 != 3) {
                if (b6 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (b6 == 6) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (b6 == 11) {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (b6 != 12) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, b7 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i9 = i2 + 8;
                if ((bArr[i9] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i9] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i9] & 255);
                }
                int i10 = i2 + 9;
                if ((bArr[i10] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i10] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i10] & 255);
                }
            } else {
                int i11 = i2 + 8;
                if ((bArr[i11] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i11] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i11] & 255);
                }
                int i12 = i2 + 9;
                if ((bArr[i12] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i12] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i12] & 255);
                }
            }
            int i13 = bArr[i2 + 13] & 255;
            if (i13 == 255 || i13 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i13 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 63) {
            qt.y0(114, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(115, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(116, bArr[i2 + 13] & 255);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
            int i14 = i2 + 6;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 7;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 8;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 9;
            int i21 = bArr[i20] & 255;
            if (i15 == 255 && i17 == 255 && i19 == 255 && i21 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i15;
            l0.c0.f13014h = i17;
            l0.c0.f13015i = i19;
            l0.c0.f13016j = i21;
            u0.d.D2(l0.c0.L0(bArr[i14] & 255));
            u0.d.E2(l0.c0.L0(bArr[i16] & 255));
            u0.d.F2(l0.c0.L0(bArr[i18] & 255));
            u0.d.G2(l0.c0.L0(bArr[i20] & 255));
            return;
        }
        if (b2 == 72) {
            qt.y0(117, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(118, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(119, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(120, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 97) {
            int i22 = i2 + 2;
            qt.y0(121, (bArr[i22] >> 0) & 15);
            qt.y0(122, (bArr[i22] >> 4) & 15);
            int i23 = i2 + 3;
            qt.y0(123, (bArr[i23] >> 0) & 15);
            qt.y0(124, (bArr[i23] >> 4) & 1);
            qt.y0(125, (bArr[i23] >> 5) & 1);
            qt.y0(126, (bArr[i2 + 4] >> 0) & 3);
            int i24 = i2 + 5;
            qt.y0(127, (bArr[i24] >> 0) & 15);
            qt.y0(128, (bArr[i24] >> 4) & 1);
            qt.y0(129, (bArr[i24] >> 5) & 1);
            int i25 = i2 + 6;
            qt.y0(130, (bArr[i25] >> 0) & 7);
            qt.y0(131, (bArr[i25] >> 3) & 7);
            qt.y0(132, (bArr[i25] >> 6) & 1);
            qt.y0(133, (bArr[i25] >> 7) & 1);
            qt.y0(134, (bArr[i2 + 7] >> 0) & 1);
            int i26 = i2 + 8;
            qt.y0(135, (bArr[i26] >> 0) & 127);
            qt.y0(136, (bArr[i26] >> 7) & 1);
            int i27 = i2 + 9;
            qt.y0(137, (bArr[i27] >> 0) & 1);
            qt.y0(138, (bArr[i27] >> 1) & 1);
            return;
        }
        switch (b2) {
            case 17:
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                this.f11758c = b8 & 255;
                int i28 = 0;
                while (true) {
                    iArr = this.f11759d;
                    if (i28 < iArr.length) {
                        int i29 = this.f11758c;
                        if (i29 != iArr[i28][0]) {
                            i28++;
                        } else if (i29 != 0) {
                            this.f11757b = i28;
                        }
                    }
                }
                if (this.f11758c != 5) {
                    int i30 = b9 & 255;
                    if (i30 == 1) {
                        if (i28 < iArr.length) {
                            l0.b0.l0(iArr[i28][1], 0);
                        }
                    } else if (i30 == 0) {
                        int i31 = this.f11757b;
                        if (i31 < iArr.length && i31 != 255) {
                            l0.b0.l0(iArr[i31][1], 1);
                        }
                        this.f11757b = 255;
                    }
                } else if ((b9 & 255) == 1) {
                    int i32 = h0.c.E;
                    if (i32 == 3 || i32 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b10 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b10 >> 6) & 1);
                    qt.y0(2, (b10 >> 7) & 1);
                } else {
                    qt.y0(1, (b10 >> 7) & 1);
                    qt.y0(2, (b10 >> 6) & 1);
                }
                qt.y0(3, (b10 >> 5) & 1);
                qt.y0(4, (b10 >> 4) & 1);
                qt.y0(5, (b10 >> 3) & 1);
                break;
            case 19:
                qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(100, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(101, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                qt.y0(102, bArr[i2 + 16] & 255);
                qt.y0(103, bArr[i2 + 17] & 255);
                qt.y0(104, bArr[i2 + 18] & 255);
                break;
            case 20:
                qt.y0(105, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(106, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(107, (bArr[i2 + 12] & 255) | (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280));
                break;
            case 21:
                qt.y0(108, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(109, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(110, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(111, bArr[i2 + 16] & 255);
                qt.y0(112, bArr[i2 + 17] & 255);
                qt.y0(113, bArr[i2 + 18] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f11763h);
        l0.b0.p0(this.f11764i);
        qt.q0(this.f11761f);
        yVar.d(this.f11760e);
        u0.c.f17374a.d(this.f11760e);
        w0.e.f17815a.d(this.f11760e);
        w0.e.f17819e.d(this.f11760e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 139) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, iArr[0], iArr[1]);
        }
    }
}
