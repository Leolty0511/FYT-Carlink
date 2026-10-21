package k0;

import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class r8 extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9789d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f9787b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9788c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9790e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9791f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 18}, new int[]{12, 26}, new int[]{13, 6}, new int[]{23, 5}, new int[]{24, -1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9792g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9793h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9794i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9795j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9796k = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.J();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(r8.this.f9795j);
            r8.this.f9793h = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r8 r8Var = r8.this;
            int i2 = r8Var.f9793h - 1;
            r8Var.f9793h = i2;
            if (i2 <= 0) {
                l0.b0.p0(r8Var.f9795j);
                r8.this.f9793h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            r8.this.d3(4, 0);
            r8.this.d3(5, 1);
            r8.this.d3(5, 2);
            r8.this.d3(11, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -121, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) time.hour, (byte) time.minute);
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
        if (nt.a()) {
            u0.c.f17386m.a(this.f9794i, 1);
            qt.z(this.f9792g);
        }
        qt.z(this.f9796k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        int i4 = 2;
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        int i5 = 11;
        int i6 = 10;
        int i7 = 4;
        switch (b2) {
            case 1:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f9790e = b3 & 255;
                    int i8 = 0;
                    while (true) {
                        iArr = this.f9791f;
                        if (i8 < iArr.length) {
                            int i9 = this.f9790e;
                            if (i9 != iArr[i8][0]) {
                                i8++;
                            } else if (i9 != 0) {
                                this.f9789d = i8;
                            }
                        }
                    }
                    if ((b4 & 255) == 0) {
                        if (i8 <= iArr.length) {
                            l0.b0.l0(iArr[this.f9789d][1], 1);
                        }
                    } else if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                    }
                }
                break;
            case 2:
                byte b5 = bArr[i2 + 2];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                int[] iArr2 = new int[1];
                iArr2[0] = (b5 & 32) == 0 ? 0 : 1;
                qt.y0(12, iArr2);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(16, (b5 >> 0) & 1);
                byte b6 = bArr[i2 + 3];
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                qt.y0(20, (b6 >> 5) & 1);
                int i10 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
                qt.y0(21, i10 <= 7 ? i10 : 7);
                int i11 = i2 + 4;
                byte b7 = bArr[i11];
                int i12 = i2 + 5;
                byte b8 = bArr[i12];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i12];
                    b8 = bArr[i11];
                }
                if (b7 == 0) {
                    qt.y0(27, -2);
                } else if (b7 != 127) {
                    qt.y0(27, b7 & 255);
                } else {
                    qt.y0(27, -3);
                }
                if (b8 == 0) {
                    qt.y0(28, -2);
                } else if (b8 != 127) {
                    qt.y0(28, b8 & 255);
                } else {
                    qt.y0(28, -3);
                }
                byte b9 = bArr[i2 + 6];
                qt.y0(65, (b9 >> 7) & 1);
                qt.y0(37, (b9 >> 0) & 1);
                break;
            case 3:
                byte b10 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b10 >> 7) & 1);
                    qt.y0(2, (b10 >> 6) & 1);
                } else {
                    qt.y0(1, (b10 >> 6) & 1);
                    qt.y0(2, (b10 >> 7) & 1);
                }
                qt.y0(3, (b10 >> 4) & 1);
                qt.y0(4, (b10 >> 5) & 1);
                qt.y0(5, (b10 >> 3) & 1);
                qt.y0(0, (b10 >> 2) & 1);
                break;
            case 4:
                byte b11 = bArr[i2 + 2];
                qt.y0(116, (b11 >> 6) & 3);
                qt.y0(117, (b11 >> 4) & 3);
                qt.y0(118, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
                byte b12 = bArr[i2 + 3];
                qt.y0(119, (b12 >> 7) & 1);
                qt.y0(121, (b12 >> 2) & 3);
                qt.y0(122, (b12 >> 0) & 3);
                byte b13 = bArr[i2 + 4];
                qt.y0(123, (b13 >> 7) & 1);
                qt.y0(124, (b13 >> 4) & 3);
                break;
            case 5:
                byte b14 = bArr[i2 + 2];
                if (b14 == 1) {
                    qt.y0(98, bArr[i2 + 3] & 255);
                    qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                    qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                    qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                    byte b15 = bArr[i2 + 15];
                    qt.y0(104, b15 & 3);
                    qt.y0(105, (b15 >> 2) & 3);
                    qt.y0(106, (b15 >> 4) & 3);
                    qt.y0(107, (b15 >> 6) & 1);
                    qt.y0(108, (b15 >> 7) & 1);
                    int i13 = bArr[i2 + 16] & 255;
                    if (i13 < 0) {
                        i5 = 0;
                    } else if (i13 <= 11) {
                        i5 = i13;
                    }
                    qt.y0(109, this.f9787b[i5]);
                    break;
                } else if (b14 == 2) {
                    qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                    qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                    qt.y0(114, ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                    qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
                    byte b16 = bArr[i2 + 18];
                    qt.y0(104, b16 & 3);
                    qt.y0(105, (b16 >> 2) & 3);
                    qt.y0(106, (b16 >> 4) & 3);
                    qt.y0(107, (b16 >> 6) & 1);
                    qt.y0(108, (b16 >> 7) & 1);
                    int i14 = bArr[i2 + 19] & 255;
                    if (i14 < 0) {
                        i5 = 0;
                    } else if (i14 <= 11) {
                        i5 = i14;
                    }
                    qt.y0(109, this.f9787b[i5]);
                    break;
                }
                break;
            case 6:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                break;
            default:
                switch (b2) {
                    case 8:
                        byte b17 = bArr[i2 + 2];
                        byte b18 = bArr[i2 + 3];
                        if (this.f9788c == b17) {
                            if (b18 == 2) {
                                nt.f8643f[133].s(133, new int[]{1}, null, null);
                            } else if (b18 == 1) {
                                nt.f8643f[134].s(134, new int[]{1}, null, null);
                            }
                        }
                        break;
                    case 9:
                        if (nt.a()) {
                            u0.d.R2(l0.c0.P0(bArr[i2 + 3] & 255));
                            int i15 = i2 + 4;
                            u0.d.S2(l0.c0.P0(bArr[i15] & 255));
                            u0.d.T2(l0.c0.P0(bArr[i15] & 255));
                            u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                        }
                        break;
                    case 10:
                        int i16 = bArr[i2 + 6] & 255;
                        if (i16 < 0) {
                            i7 = 0;
                        } else if (i16 <= 4) {
                            i7 = i16;
                        }
                        qt.y0(132, i7);
                        break;
                    case 11:
                        int i17 = bArr[i2 + 2] & 255;
                        if (i17 < 0) {
                            i4 = 0;
                        } else if (i17 <= 2) {
                            i4 = i17;
                        }
                        qt.y0(127, i4);
                        int i18 = bArr[i2 + 3] & 255;
                        if (i18 < 0) {
                            i18 = 0;
                        } else if (i18 > 10) {
                            i18 = 10;
                        }
                        qt.y0(128, i18);
                        int i19 = bArr[i2 + 4] & 255;
                        if (i19 < 0) {
                            i19 = 0;
                        } else if (i19 > 10) {
                            i19 = 10;
                        }
                        qt.y0(129, i19);
                        int i20 = bArr[i2 + 5] & 255;
                        if (i20 < 0) {
                            i6 = 0;
                        } else if (i20 <= 10) {
                            i6 = i20;
                        }
                        qt.y0(130, i6);
                        int i21 = bArr[i2 + 6] & 255;
                        if (i21 < 0) {
                            i7 = 0;
                        } else if (i21 <= 4) {
                            i7 = i21;
                        }
                        qt.y0(132, i7);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9796k);
        u0.c.f17386m.d(this.f9794i);
        l0.b0.p0(this.f9795j);
        qt.q0(this.f9792g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 100) {
            if (iArr != null) {
                if (iArr.length == 1) {
                    d3(5, iArr[0]);
                    return;
                } else {
                    if (iArr.length > 1) {
                        d3(iArr[0], iArr[1]);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 0 || iArr[0] != 3) {
                return;
            }
            d3(5, 3);
            return;
        }
        if (i2 != 1005) {
            switch (i2) {
                case 0:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 10) {
                        iArr[0] = 10;
                    }
                    b3(0, iArr[0]);
                    return;
                case 1:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(1, iArr[0]);
                    return;
                case 2:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(2, iArr[0]);
                    return;
                case 3:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(3, iArr[0]);
                    return;
                case 4:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(4, iArr[0]);
                    return;
                case 5:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    b3(5, iArr[0]);
                    return;
                case 6:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    b3(6, iArr[0]);
                    return;
                case 7:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(7, iArr[0]);
                    return;
                case 8:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    b3(8, iArr[0]);
                    return;
                case 9:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(9, iArr[0]);
                    return;
                case 10:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(10, iArr[0]);
                    return;
                case 11:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    b3(11, iArr[0]);
                    return;
                case 12:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(12, iArr[0]);
                    return;
                case 13:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(13, iArr[0]);
                    return;
                case 14:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    b3(14, 0);
                    return;
                case 15:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    b3(15, 0);
                    return;
                default:
                    switch (i2) {
                        case 17:
                            if (iArr != null && iArr.length > 0) {
                                b3(17, 0);
                                break;
                            }
                            break;
                        case 18:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] != 0) {
                                    iArr[0] = 1;
                                }
                                b3(18, iArr[0]);
                                break;
                            }
                            break;
                        case 19:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] != 0) {
                                    iArr[0] = 1;
                                }
                                b3(19, iArr[0]);
                                break;
                            }
                            break;
                        case 21:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] < 0) {
                                    iArr[0] = 0;
                                } else if (iArr[0] > 4) {
                                    iArr[0] = 4;
                                }
                                a3(5, iArr[0]);
                                break;
                            }
                            break;
                        case 22:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] < 0) {
                                    iArr[0] = 0;
                                } else if (iArr[0] > 2) {
                                    iArr[0] = 2;
                                }
                                a3(1, iArr[0]);
                                break;
                            }
                            break;
                        case 23:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] < 0) {
                                    iArr[0] = 0;
                                } else if (iArr[0] > 10) {
                                    iArr[0] = 10;
                                }
                                a3(2, iArr[0]);
                                break;
                            }
                            break;
                        case 24:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] < 0) {
                                    iArr[0] = 0;
                                } else if (iArr[0] > 10) {
                                    iArr[0] = 10;
                                }
                                a3(4, iArr[0]);
                                break;
                            }
                            break;
                        case 25:
                            if (iArr != null && iArr.length > 0) {
                                if (iArr[0] < 0) {
                                    iArr[0] = 0;
                                } else if (iArr[0] > 10) {
                                    iArr[0] = 10;
                                }
                                a3(3, iArr[0]);
                                break;
                            }
                            break;
                    }
                    return;
            }
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 0) {
            z.k.s(227, -124, 1, 2);
        } else if (iArr[0] == 1) {
            z.k.s(227, -124, 1, 0);
        } else if (iArr[0] == 2) {
            z.k.s(227, -124, 1, 1);
        }
    }

    public final void a3(int i2, int i3) {
        this.f9788c = i2;
        z.k.s(227, -123, 2, (byte) i2, (byte) i3);
    }

    public final void b3(int i2, int i3) {
        this.f9788c = i2;
        z.k.s(227, -126, 2, (byte) i2, (byte) i3);
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }
}
