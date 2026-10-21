package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class nq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8606b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8609e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8607c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8608d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{7, 12}, new int[]{8, 34}, new int[]{9, 35}, new int[]{13, 29}, new int[]{16, 68}, new int[]{17, 67}, new int[]{18, 13}, new int[]{19, 18}, new int[]{21, 18}, new int[]{22, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8610f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8611g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 0}, new int[]{4, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8612h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8613i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8614j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8615k = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 152, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(nq.this.f8615k);
            nq.this.f8613i = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nq nqVar = nq.this;
            int i2 = nqVar.f8613i - 1;
            nqVar.f8613i = i2;
            if (i2 <= 0) {
                l0.b0.p0(nqVar.f8615k);
                nq.this.f8613i = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 113, 0);
                int i3 = nt.f8637c;
                if (i3 == 246) {
                    z.k.s(227, 130, 1, 0);
                } else {
                    if (i3 != 247) {
                        return;
                    }
                    z.k.s(227, 130, 1, 1);
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
        u0.c.f17386m.a(this.f8614j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        qt.z(this.f8612h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8607c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8608d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8607c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8606b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f8607c;
            if (i6 == 16) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D != 1) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    } else {
                        l0.b0.l0(68, 0);
                        l0.b0.l0(68, 1);
                        return;
                    }
                }
                return;
            }
            if (i6 == 17) {
                if ((b4 & 255) == 1) {
                    if (u0.b.D != 1) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    } else {
                        l0.b0.l0(67, 0);
                        l0.b0.l0(67, 1);
                        return;
                    }
                }
                return;
            }
            int i7 = b4 & 255;
            if (i7 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f8606b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f8606b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f8610f = b5 & 255;
            int i9 = 0;
            while (true) {
                iArr2 = this.f8611g;
                if (i9 >= iArr2.length) {
                    break;
                }
                int i10 = this.f8610f;
                if (i10 == iArr2[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f8609e = i9;
                    break;
                }
                i9++;
            }
            if (nt.f8637c == 246) {
                int i11 = b6 & 255;
                if (i11 == 1) {
                    if (i9 < iArr2.length) {
                        l0.b0.l0(iArr2[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i11 == 0) {
                        int i12 = this.f8609e;
                        if (i12 < iArr2.length && i12 != 255) {
                            l0.b0.l0(iArr2[i12][1], 1);
                        }
                        this.f8609e = 255;
                        return;
                    }
                    return;
                }
            }
            int i13 = this.f8610f;
            if (i13 == 1 || i13 == 2) {
                if (y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            int i14 = b6 & 255;
            if (i14 == 1) {
                if (i9 < iArr2.length) {
                    l0.b0.l0(iArr2[i9][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f8609e;
                    if (i15 < iArr2.length && i15 != 255) {
                        l0.b0.l0(iArr2[i15][1], 1);
                    }
                    this.f8609e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i16 = i2 + 2;
            qt.y0(10, (bArr[i16] >> 7) & 1);
            qt.y0(11, (bArr[i16] >> 6) & 1);
            qt.y0(66, (bArr[i16] >> 5) & 1);
            qt.y0(13, (bArr[i16] >> 4) & 1);
            qt.y0(12, 3 & (bArr[i16] >> 2));
            qt.y0(16, (bArr[i16] >> 1) & 1);
            qt.y0(53, (bArr[i16] >> 0) & 1);
            int i17 = i2 + 3;
            qt.y0(15, (bArr[i17] >> 7) & 1);
            qt.y0(14, (bArr[i17] >> 6) & 1);
            qt.y0(17, (bArr[i17] >> 5) & 1);
            qt.y0(21, bArr[i17] & 31);
            int i18 = i2 + 4;
            qt.y0(49, (bArr[i18] >> 7) & 1);
            qt.y0(18, (bArr[i18] >> 6) & 1);
            qt.y0(19, (bArr[i18] >> 4) & 1);
            qt.y0(20, (bArr[i18] >> 5) & 1);
            int i19 = i2 + 5;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 6;
            int i22 = bArr[i21] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i20 = bArr[i21] & 255;
                i22 = bArr[i19] & 255;
            }
            if (i20 == 0) {
                qt.y0(27, -2);
            } else if (i20 == 63) {
                qt.y0(27, -3);
            } else if (nt.f8645g[37] == 1) {
                if (i20 < 12 || i20 > 37) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i20 * 10) + 480);
                }
            } else if (i20 < 12 || i20 > 40) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i20 - 12) * 5) + 155);
            }
            if (i22 == 0) {
                qt.y0(28, -2);
            } else if (i22 == 63) {
                qt.y0(28, -3);
            } else if (nt.f8645g[37] == 1) {
                if (i22 < 12 || i22 > 37) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, (i22 * 10) + 480);
                }
            } else if (i22 < 12 || i22 > 40) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, ((i22 - 12) * 5) + 155);
            }
            int i23 = i2 + 7;
            qt.y0(29, (bArr[i23] >> 4) & 15);
            qt.y0(30, (bArr[i23] >> 0) & 15);
            int i24 = i2 + 9;
            qt.y0(31, (bArr[i24] >> 4) & 15);
            qt.y0(32, 15 & (bArr[i24] >> 0));
            int i25 = bArr[i2 + 8] & 255;
            if (i25 == 0) {
                u0.d.A3(0);
                return;
            }
            int i26 = (i25 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
            if (nt.f8645g[37] == 1) {
                i26 = (((i25 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1);
            }
            u0.d.B3(i26);
            return;
        }
        if (b2 == 4) {
            byte b7 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b7 >> 7) & 1);
                qt.y0(1, (b7 >> 6) & 1);
            } else {
                qt.y0(2, (b7 >> 6) & 1);
                qt.y0(1, (b7 >> 7) & 1);
            }
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            qt.y0(0, (b7 >> 2) & 1);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i27 = i2 + 3;
                l0.c0.b((bArr[i27] >> 1) & 1, (bArr[i27] >> 0) & 1, 0);
                return;
            } else {
                int i28 = i2 + 3;
                l0.c0.a((bArr[i28] >> 1) & 1, (bArr[i28] >> 0) & 1, 0);
                return;
            }
        }
        if (b2 == 30) {
            qt.y0(37, bArr[i2 + 2] & 255);
            qt.y0(98, bArr[i2 + 3] & 255);
            qt.y0(99, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == 113) {
            if (bArr[i2 + 2] == 4) {
                str = ProxyProperties.LOCAL_EXCL_LIST + "Ford-";
            } else {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (bArr[i2 + 3] == 6) {
                str = str + "EDGE-";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("20");
            int i29 = i2 + 4;
            sb.append(bArr[i29] / 16);
            sb.append(ProxyProperties.LOCAL_EXCL_LIST);
            sb.append(bArr[i29] % 16);
            sb.append("-");
            int i30 = i2 + 5;
            sb.append(bArr[i30] / 16);
            sb.append(ProxyProperties.LOCAL_EXCL_LIST);
            sb.append(bArr[i30] % 16);
            sb.append("-");
            int i31 = i2 + 6;
            sb.append(bArr[i31] / 16);
            sb.append(ProxyProperties.LOCAL_EXCL_LIST);
            sb.append(bArr[i31] % 16);
            sb.append("-V");
            sb.append(new String(bArr, i2 + 8, 1));
            sb.append(new String(bArr, i2 + 9, 1));
            sb.append(new String(bArr, i2 + 10, 1));
            qt.L(sb.toString());
            return;
        }
        if (b2 == 34) {
            u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 35) {
            if (b2 == 38) {
                qt.m(bArr[i2 + 2], 0, 128, true, 128);
                return;
            }
            if (b2 != 39) {
                return;
            }
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            qt.y0(105, bArr[i2 + 8] & 255);
            qt.y0(106, bArr[i2 + 9] & 255);
            return;
        }
        int i32 = i2 + 2;
        int i33 = bArr[i32] & 255;
        int i34 = i2 + 3;
        int i35 = bArr[i34] & 255;
        int i36 = i2 + 4;
        int i37 = bArr[i36] & 255;
        int i38 = i2 + 5;
        int i39 = bArr[i38] & 255;
        if (i33 == 0 && i35 == 0 && i37 == 0 && i39 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i33 || l0.c0.f13014h != i35 || l0.c0.f13015i != i37 || l0.c0.f13016j != i39) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i33;
        l0.c0.f13014h = i35;
        l0.c0.f13015i = i37;
        l0.c0.f13016j = i39;
        u0.d.D2(l0.c0.K0(bArr[i32] & 255));
        u0.d.E2(l0.c0.K0(bArr[i34] & 255));
        u0.d.F2(l0.c0.K0(bArr[i36] & 255));
        u0.d.G2(l0.c0.K0(bArr[i38] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8614j);
        l0.b0.p0(this.f8615k);
        qt.q0(this.f8612h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, 160, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
        }
    }
}
