package k0;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9655c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9656d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{18, 13}, new int[]{128, 25}, new int[]{129, 5}, new int[]{130, 6}, new int[]{131, 54}, new int[]{132, 21}, new int[]{133, 3}, new int[]{134, 1}, new int[]{135, 12}, new int[]{136, 25}, new int[]{137, 18}, new int[]{138, 4}, new int[]{139, 55}, new int[]{140, 1}, new int[]{141, 63}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9657e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9658f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9659g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9660h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9661i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9662j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9663k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9664l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9665m = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f9666n = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qn qnVar = qn.this;
            int i2 = qnVar.f9659g;
            if (i2 > 0) {
                qnVar.f9659g = i2 - 1;
            }
            if (qnVar.f9659g == 0) {
                l0.c0.I();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qn.this.f9659g = 4;
            l0.c0.A0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(qn.this.f9664l);
            qn.this.f9662j = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qn qnVar = qn.this;
            int i2 = qnVar.f9662j - 1;
            qnVar.f9662j = i2;
            if (i2 <= 0) {
                l0.b0.p0(qnVar.f9664l);
                qn.this.f9662j = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 127, 0);
                }
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f9671a;

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f9671a = time;
            time.setToNow();
            Time time2 = this.f9671a;
            int i2 = time2.year;
            z.k.s(227, -126, 6, (byte) (i2 & 255), (byte) (((byte) ((i2 >> 8) & 15)) | (((byte) (time2.month + 1)) << 4)), (byte) time2.monthDay, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 655812:
                case 9503172:
                    z.k.s(227, -89, 2, 17, 0);
                    break;
                case 721348:
                case 9568708:
                    z.k.s(227, -89, 2, 17, 1);
                    break;
                case 14090695:
                    z.k.s(227, -89, 2, 17, 2);
                    break;
                case 14156231:
                    z.k.s(227, -89, 2, 17, 3);
                    break;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f9663k, 1);
        qt.z(this.f9665m);
        qt.z(this.f9666n);
        int i2 = nt.f8633a;
        if (i2 == 14090695 || i2 == 14156231 || i2 == 655812 || i2 == 721348 || i2 == 5833160) {
            y0.g.f18094d.a(this.f9661i, 1);
            y0.g.f18095e.a(this.f9661i, 1);
            qt.z(this.f9660h);
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            int i7 = bArr[i2 + 2] & 255;
            int i8 = bArr[i2 + 3] & 255;
            int i9 = bArr[i2 + 4] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            qt.y0(63, (i7 >> 7) & 1);
            qt.y0(11, (i7 >> 6) & 1);
            qt.y0(12, (i7 >> 4) & 3);
            qt.y0(13, (i7 >> 3) & 1);
            qt.y0(14, (i7 >> 2) & 1);
            qt.y0(16, (i7 >> 1) & 1);
            qt.y0(65, (i7 >> 0) & 1);
            int i14 = i8 & 255;
            if (i14 != 1) {
                if (i14 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i14 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i14 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i14 != 5) {
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
            qt.y0(21, i9 & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            if (i11 == 0) {
                qt.y0(27, -2);
            } else if (i11 == 30) {
                qt.y0(27, -3);
            } else if (i11 <= 0 || i11 >= 30) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, (i11 & 255) + 34);
            }
            if (i13 == 0) {
                qt.y0(28, -2);
            } else if (i13 == 30) {
                qt.y0(28, -3);
            } else if (i13 <= 0 || i13 >= 30) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, (i13 & 255) + 34);
            }
            int i15 = i2 + 8;
            qt.y0(29, (bArr[i15] >> 4) & 15);
            qt.y0(30, (bArr[i15] >> 0) & 15);
            int i16 = i2 + 9;
            qt.y0(31, (bArr[i16] >> 4) & 15);
            qt.y0(32, (bArr[i16] >> 0) & 15);
            byte b3 = bArr[i2 + 7];
            if (b3 != 255 && b3 != 254) {
                u0.d.B3((b3 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
            u0.d.B3(0);
        }
        if (b2 == 40) {
            int i17 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i17 >> 7) & 1);
                qt.y0(2, (i17 >> 6) & 1);
            } else {
                qt.y0(1, (i17 >> 6) & 1);
                qt.y0(2, (i17 >> 7) & 1);
            }
            qt.y0(3, (i17 >> 4) & 1);
            qt.y0(4, (i17 >> 5) & 1);
            qt.y0(5, (i17 >> 3) & 1);
            if (((bArr[i2 + 3] >> 2) & 1) == 1) {
                u0.d.C2(1);
                return;
            } else {
                u0.d.C2(0);
                return;
            }
        }
        if (b2 == 48) {
            int i18 = nt.f8633a;
            if (i18 == 8651208 || i18 == 8716744) {
                qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 13056);
                return;
            } else {
                qt.l(bArr[i2 + 3], bArr[i2 + 2], false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
                return;
            }
        }
        if (b2 == 64) {
            qt.y0(110, bArr[i2 + 2] & 255);
            qt.y0(111, bArr[i2 + 3] & 255);
            qt.y0(112, bArr[i2 + 4] & 255);
            qt.y0(113, bArr[i2 + 5] & 255);
            qt.y0(114, bArr[i2 + 6] & 255);
            qt.y0(115, bArr[i2 + 7] & 255);
            qt.y0(116, bArr[i2 + 8] & 255);
            qt.y0(117, bArr[i2 + 9] & 255);
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            qt.y0(120, bArr[i2 + 12] & 255);
            qt.y0(121, bArr[i2 + 13] & 255);
            qt.y0(122, bArr[i2 + 14] & 255);
            qt.y0(123, bArr[i2 + 15] & 255);
            qt.y0(124, bArr[i2 + 16] & 255);
            qt.y0(125, bArr[i2 + 17] & 255);
            int i19 = i2 + 18;
            qt.y0(126, (bArr[i19] >> 7) & 1);
            qt.y0(127, (bArr[i19] >> 6) & 1);
            qt.y0(128, (bArr[i19] >> 5) & 1);
            qt.y0(129, (bArr[i19] >> 4) & 1);
            qt.y0(130, (bArr[i19] >> 3) & 1);
            qt.y0(131, bArr[i2 + 19] & 255);
            return;
        }
        if (b2 == 66) {
            qt.y0(132, bArr[i2 + 2] & 255);
            qt.y0(133, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(134, bArr[i2 + 5] & 255);
            qt.y0(135, bArr[i2 + 6] & 255);
            qt.y0(136, bArr[i2 + 7] & 255);
            qt.y0(137, bArr[i2 + 8] & 255);
            qt.y0(138, bArr[i2 + 9] & 255);
            qt.y0(139, bArr[i2 + 10] & 255);
            qt.y0(140, bArr[i2 + 11] & 255);
            qt.y0(141, bArr[i2 + 12] & 255);
            qt.y0(142, bArr[i2 + 13] & 255);
            qt.y0(143, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            int i20 = i2 + 16;
            qt.y0(144, (bArr[i20] >> 7) & 1);
            qt.y0(145, (bArr[i20] >> 6) & 1);
            qt.y0(146, (bArr[i20] >> 5) & 1);
            qt.y0(147, (bArr[i20] >> 4) & 1);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i21 = i2 + 3;
            l0.c0.a((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i21] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i22 = i2 + 2;
            if ((bArr[i22] & 255) != 255) {
                qt.y0(102, bArr[i22] & 255);
            }
            int i23 = i2 + 3;
            if ((bArr[i23] & 255) != 255) {
                qt.y0(103, bArr[i23] & 255);
            }
            int i24 = i2 + 4;
            if ((bArr[i24] & 255) != 255) {
                qt.y0(104, bArr[i24] & 255);
            }
            int i25 = i2 + 5;
            if ((bArr[i25] & 255) != 255) {
                qt.y0(105, bArr[i25] & 255);
            }
            int i26 = i2 + 6;
            if ((bArr[i26] & 255) != 255) {
                qt.y0(98, bArr[i26] & 255);
            }
            int i27 = i2 + 7;
            if ((bArr[i27] & 255) != 255) {
                qt.y0(99, bArr[i27] & 255);
            }
            int i28 = i2 + 8;
            if ((bArr[i28] & 255) != 255) {
                qt.y0(100, bArr[i28] & 255);
            }
            int i29 = i2 + 9;
            if ((bArr[i29] & 255) != 255) {
                qt.y0(101, bArr[i29] & 255);
                return;
            }
            return;
        }
        if (b2 == 57) {
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            return;
        }
        switch (b2) {
            case 33:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f9655c = b4 & 255;
                int i30 = 0;
                while (true) {
                    iArr = this.f9656d;
                    if (i30 < iArr.length) {
                        int i31 = this.f9655c;
                        if (i31 != iArr[i30][0]) {
                            i30++;
                        } else if (i31 != 0) {
                            this.f9654b = i30;
                        }
                    }
                }
                int i32 = this.f9655c;
                if (i32 == 9) {
                    if ((b5 & 255) == 1) {
                        if (h0.c.E == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                } else if (i32 == 10) {
                    if ((b5 & 255) == 1) {
                        int i33 = h0.c.E;
                        if (i33 == 3 || i33 == 4 || i33 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i32 == 128) {
                    if (this.f9658f != b5) {
                        this.f9658f = b5;
                        if (b5 == 1) {
                            this.f9657e = false;
                        } else if (b5 == 2) {
                            this.f9657e = true;
                            l0.b0.l0(25, 0);
                            l0.b0.l0(25, 1);
                        } else if (b5 == 0) {
                            if (this.f9657e) {
                                this.f9657e = false;
                            } else if (u0.b.f17332j != 1) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            } else {
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                            }
                        }
                    }
                } else if ((b5 & 255) == 0) {
                    if (i30 <= iArr.length) {
                        l0.b0.l0(iArr[this.f9654b][1], 1);
                    }
                } else if (i30 < iArr.length) {
                    l0.b0.l0(iArr[i30][1], 0);
                }
                break;
            case 34:
                u0.d.R2(l0.e0.p(bArr[i2 + 2]));
                u0.d.S2(l0.e0.p(bArr[i2 + 3]));
                u0.d.T2(l0.e0.p(bArr[i2 + 4]));
                u0.d.U2(l0.e0.p(bArr[i2 + 5]));
                break;
            case 35:
                int i34 = i2 + 2;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 3;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 4;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 5;
                int i41 = bArr[i40] & 255;
                if (i35 == 0 && i37 == 0 && i39 == 0 && i41 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i35 || l0.c0.f13014h != i37 || l0.c0.f13015i != i39 || l0.c0.f13016j != i41) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i35;
                l0.c0.f13014h = i37;
                l0.c0.f13015i = i39;
                l0.c0.f13016j = i41;
                u0.d.D2(l0.e0.p(bArr[i34]));
                u0.d.E2(l0.e0.p(bArr[i36]));
                u0.d.F2(l0.e0.p(bArr[i38]));
                u0.d.G2(l0.e0.p(bArr[i40]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9665m);
        qt.q0(this.f9666n);
        qt.q0(this.f9660h);
        y0.g.f18094d.d(this.f9661i);
        y0.g.f18095e.d(this.f9661i);
        u0.c.f17386m.d(this.f9663k);
        l0.b0.p0(this.f9664l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 148) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 167, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 169, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1024) / a.f.w();
        int i3 = (iArr[2] * 1000) / a.f.i();
        a.f.p().t(LogType.CANBUS, "touch_x = " + iW + "touch_y ==" + i3 + "ObjApp.getHeight()" + a.f.i());
        if (T2(iArr, 2)) {
            if (iArr[0] == 0) {
                z.k.s(227, 168, 6, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 168, 6, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
        }
    }
}
