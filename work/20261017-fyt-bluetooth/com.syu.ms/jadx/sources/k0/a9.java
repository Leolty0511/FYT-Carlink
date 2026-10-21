package k0;

import android.content.Intent;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class a9 extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f3210k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3212c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3213d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 4}, new int[]{12, 3}, new int[]{18, 13}, new int[]{128, 25}, new int[]{129, 21}, new int[]{130, 3}, new int[]{131, 4}, new int[]{132, 6}, new int[]{133, 18}, new int[]{134, 1}, new int[]{135, 54}, new int[]{136, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3214e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3215f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3216g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3217h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f3218i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3219j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(a9.this.f3216g);
            a9.this.f3214e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a9 a9Var = a9.this;
            int i2 = a9Var.f3214e - 1;
            a9Var.f3214e = i2;
            if (i2 <= 0) {
                l0.b0.p0(a9Var.f3216g);
                a9.this.f3214e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                a9 a9Var2 = a9.this;
                a9Var2.d3(a9Var2.f3218i.b(1, 0));
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f3222a;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f3222a = time;
            time.setToNow();
            Time time2 = this.f3222a;
            int i2 = time2.year;
            z.k.s(227, -126, 6, (byte) (i2 & 255), (byte) (((byte) ((i2 >> 8) & 15)) | (((byte) (time2.month + 1)) << 4)), (byte) time2.monthDay, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3218i.a();
        qt.z(this.f3219j);
        u0.c.f17386m.a(this.f3215f, 1);
        int i2 = nt.f8637c;
        if (i2 == 6 || i2 == 7) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8320o = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            qt.y0(11, (b3 >> 6) & 1);
            qt.y0(12, (b3 >> 4) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(16, (b3 >> 1) & 1);
            int i7 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i7 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i7 == 2) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i7 == 3) {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            } else if (i7 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i7 != 5) {
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
            qt.y0(15, i5);
            qt.y0(77, i7);
            qt.y0(21, 15 & b5);
            int i8 = i2 + 5;
            byte b6 = bArr[i8];
            int i9 = i2 + 6;
            byte b7 = bArr[i9];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i9];
                b7 = bArr[i8];
            }
            if (b6 == 0) {
                qt.y0(27, -2);
            } else if (b6 == 30) {
                qt.y0(27, -3);
            } else if (b6 <= 0 || b6 >= 30) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, (b6 & 255) + 34);
            }
            if (b7 == 0) {
                qt.y0(28, -2);
            } else if (b7 == 30) {
                qt.y0(28, -3);
            } else if (b7 <= 0 || b7 >= 30) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, (b7 & 255) + 34);
            }
            if (nt.a()) {
                int i10 = bArr[i2 + 7] & 255;
                if (i10 != 255 && i10 != 254 && i10 != 0) {
                    u0.d.A3((i10 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
                u0.d.A3(0);
            }
            return;
        }
        if (b2 == 40) {
            byte b8 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b8 >> 7) & 1);
                qt.y0(2, (b8 >> 6) & 1);
            } else {
                qt.y0(1, (b8 >> 6) & 1);
                qt.y0(2, (b8 >> 7) & 1);
            }
            qt.y0(3, (b8 >> 4) & 1);
            qt.y0(4, (b8 >> 5) & 1);
            qt.y0(5, (b8 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            qt.l(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i11 = i2 + 2;
            if ((bArr[i11] & 255) != 255) {
                qt.y0(102, bArr[i11] & 255);
            }
            int i12 = i2 + 3;
            if ((bArr[i12] & 255) != 255) {
                qt.y0(103, bArr[i12] & 255);
            }
            int i13 = i2 + 4;
            if ((bArr[i13] & 255) != 255) {
                qt.y0(104, bArr[i13] & 255);
            }
            int i14 = i2 + 5;
            if ((bArr[i14] & 255) != 255) {
                qt.y0(105, bArr[i14] & 255);
            }
            int i15 = i2 + 6;
            if ((bArr[i15] & 255) != 255) {
                qt.y0(98, bArr[i15] & 255);
            }
            int i16 = i2 + 7;
            if ((bArr[i16] & 255) != 255) {
                qt.y0(99, bArr[i16] & 255);
            }
            int i17 = i2 + 8;
            if ((bArr[i17] & 255) != 255) {
                qt.y0(100, bArr[i17] & 255);
            }
            int i18 = i2 + 9;
            if ((bArr[i18] & 255) != 255) {
                qt.y0(101, bArr[i18] & 255);
                return;
            }
            return;
        }
        if (b2 == 57) {
            int i19 = i2 + 2;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 3;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 4;
            int i24 = bArr[i23] & 255;
            int i25 = i2 + 5;
            int i26 = bArr[i25] & 255;
            if (l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) {
                if ((i20 != 0 || i22 != 0 || i24 != 0 || i26 != 0) && f3210k == 0) {
                    c3();
                }
                l0.c0.f13013g = i20;
                l0.c0.f13014h = i22;
                l0.c0.f13015i = i24;
                l0.c0.f13016j = i26;
            }
            qt.y0(106, bArr[i19] & 255);
            qt.y0(107, bArr[i21] & 255);
            qt.y0(108, bArr[i23] & 255);
            qt.y0(109, bArr[i25] & 255);
            return;
        }
        if (b2 == 64) {
            if (nt.f8637c == 8) {
                qt.y0(117, bArr[i2 + 2] & 255);
                qt.y0(118, bArr[i2 + 3] & 255);
                qt.y0(119, bArr[i2 + 4] & 255);
                qt.y0(120, bArr[i2 + 5] & 255);
                qt.y0(121, bArr[i2 + 6] & 255);
                qt.y0(122, bArr[i2 + 7] & 255);
                return;
            }
            qt.y0(110, bArr[i2 + 2] & 255);
            qt.y0(111, bArr[i2 + 3] & 255);
            qt.y0(112, bArr[i2 + 4] & 255);
            qt.y0(113, bArr[i2 + 5] & 255);
            qt.y0(114, bArr[i2 + 6] & 255);
            qt.y0(115, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 65) {
            qt.y0(123, bArr[i2 + 2] & 255);
            qt.y0(124, bArr[i2 + 3] & 255);
            qt.y0(125, bArr[i2 + 4] & 255);
            qt.y0(126, bArr[i2 + 5] & 255);
            qt.y0(127, bArr[i2 + 6] & 255);
            qt.y0(128, bArr[i2 + 7] & 255);
            return;
        }
        switch (b2) {
            case 33:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    this.f3212c = b9 & 255;
                    int i27 = 0;
                    while (true) {
                        iArr = this.f3213d;
                        if (i27 < iArr.length) {
                            int i28 = this.f3212c;
                            if (i28 != iArr[i27][0]) {
                                i27++;
                            } else if (i28 != 0) {
                                this.f3211b = i27;
                            }
                        }
                    }
                    int i29 = this.f3212c;
                    if (i29 == 9) {
                        if ((b10 & 255) == 1) {
                            if (h0.c.E == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (!u0.i.l3().r3()) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if (i29 != 10) {
                        int i30 = b10 & 255;
                        if (i30 != 1) {
                            if (i30 == 0) {
                                int i31 = this.f3211b;
                                if (i31 < iArr.length && i31 != 255) {
                                    l0.b0.l0(iArr[i31][1], 1);
                                }
                                this.f3211b = 255;
                            }
                        } else if (i27 < iArr.length) {
                            l0.b0.l0(iArr[i27][1], 0);
                        }
                    } else if ((b10 & 255) == 1) {
                        int i32 = nt.f8637c;
                        if (i32 == 4 || i32 == 5 || i32 == 8) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            int i33 = h0.c.E;
                            if (i33 == 3 || i33 == 4 || i33 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (!u0.i.l3().r3()) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            } else {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                        }
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.e0.p(bArr[i2 + 2]));
                    u0.d.S2(l0.e0.p(bArr[i2 + 3]));
                    u0.d.T2(l0.e0.p(bArr[i2 + 4]));
                    u0.d.U2(l0.e0.p(bArr[i2 + 5]));
                }
                break;
            case 35:
                if (nt.a()) {
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
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3218i.j();
        qt.q0(this.f3219j);
        u0.c.f17386m.d(this.f3215f);
        l0.b0.p0(this.f3216g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 167, 2, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    d3(iArr[0]);
                    break;
                }
                break;
            case 7:
                z.k.s(227, 128, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void c3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.ruifengs3.JhRuiFengS3TireAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.ruifengs3.JhRuiFengS3TireAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d3(int i2) {
        qt.y0(116, i2);
        f3210k = i2;
        int iB = this.f3218i.b(1, 0);
        int i3 = f3210k;
        if (iB != i3) {
            this.f3218i.g(1, i3);
        }
    }
}
