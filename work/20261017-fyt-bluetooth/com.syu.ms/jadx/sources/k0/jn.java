package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class jn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7004c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7005d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 18}, new int[]{7, 2}, new int[]{8, 26}, new int[]{9, 0}, new int[]{10, 1}, new int[]{11, 6}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 5}, new int[]{15, 55}, new int[]{16, 18}, new int[]{17, 2}, new int[]{18, 62}, new int[]{20, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7006e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7007f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7008g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7009h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7010i = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(jn.this.f7008g);
            jn.this.f7006e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jn jnVar = jn.this;
            int i2 = jnVar.f7006e - 1;
            jnVar.f7006e = i2;
            if (i2 <= 0) {
                l0.b0.p0(jnVar.f7008g);
                jn.this.f7006e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 48, 0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jn.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = time.year;
            z.k.s(227, 130, 6, i2 & 255, ((i2 >> 8) & 15) | (((time.month + 1) << 4) & 240), time.monthDay, time.hour, time.minute, 0);
        }
    }

    public static void a3() {
        int i2;
        int[] iArr = new int[8];
        int i3 = 0;
        iArr[0] = 192;
        iArr[1] = 6;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr[2] = 1;
            iArr[3] = 1;
            int i5 = w0.d.f17796h;
            if (i5 < 65536 || i5 > 65538) {
                iArr[4] = 16;
            } else {
                iArr[4] = 1;
            }
            int i6 = w0.d.f17797i;
            iArr[5] = i6 & 255;
            iArr[6] = (i6 >> 8) & 255;
        } else if (i4 == 2) {
            iArr[2] = 5;
            iArr[3] = 0;
        } else if (i4 == 5) {
            iArr[2] = 12;
            iArr[3] = 0;
        } else if (i4 == 8 || i4 == 10) {
            iArr[2] = 8;
            iArr[3] = 2;
            iArr[4] = u0.b.r3;
        } else {
            iArr[2] = 13;
            iArr[3] = 0;
        }
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[7] = 0;
        } else {
            iArr[7] = i2;
        }
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i3 < 8) {
            int i7 = i3 + 1;
            iArr2[i7] = iArr[i3];
            i3 = i7;
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
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f7007f, 1);
        switch (nt.f8633a) {
            case 1376712:
            case 5505480:
            case 5571016:
                this.f7886a.f8314i = 0;
                break;
            case 15270343:
                this.f7886a.f8314i = 1;
                qt.z(this.f7010i);
                qt.z(this.f7009h);
                break;
            default:
                qt.z(this.f7010i);
                qt.z(this.f7009h);
                this.f7886a.f8314i = 0;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 255) {
                u0.d.A3(0);
                return;
            }
            u0.d.A3((i4 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8860);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            int i5 = i2 + 2;
            qt.y0(98, (bArr[i5] >> 7) & 1);
            qt.y0(99, (bArr[i5] >> 6) & 1);
            qt.y0(100, (bArr[i5] >> 5) & 1);
            qt.y0(101, (bArr[i5] >> 4) & 1);
            qt.y0(102, (bArr[i5] >> 3) & 1);
            qt.y0(107, (bArr[i5] >> 2) & 1);
            qt.y0(108, (bArr[i5] >> 1) & 1);
            qt.y0(109, (bArr[i5] >> 0) & 1);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            int i6 = i2 + 5;
            qt.y0(110, (bArr[i6] >> 3) & 1);
            qt.y0(111, (bArr[i6] >> 1) & 3);
            qt.y0(112, (bArr[i6] >> 0) & 1);
            qt.y0(113, bArr[i2 + 6] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(114, bArr[i2 + 7] & 255);
            int i7 = i2 + 8;
            qt.y0(115, (bArr[i7] >> 4) & 1);
            qt.y0(116, (bArr[i7] >> 3) & 1);
            qt.y0(117, (bArr[i7] >> 0) & 7);
            int i8 = i2 + 9;
            qt.y0(118, 15 & (bArr[i8] >> 4));
            qt.y0(119, (bArr[i8] >> 1) & 7);
            qt.y0(120, (bArr[i8] >> 0) & 1);
            return;
        }
        if (b2 == 68) {
            int i9 = (bArr[i2 + 2] << 8) & 65280;
            int i10 = i2 + 3;
            qt.y0(105, i9 | (bArr[i10] & 255));
            qt.y0(106, bArr[i10] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i11 = i2 + 3;
            l0.c0.a((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i11] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7004c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f7005d;
                    if (i12 < iArr.length) {
                        int i13 = this.f7004c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f7003b = i12;
                        }
                    }
                }
                if (this.f7004c != 5) {
                    int i14 = b4 & 255;
                    if (i14 != 1) {
                        if (i14 == 0) {
                            int i15 = this.f7003b;
                            if (i15 < iArr.length && i15 != 255) {
                                l0.b0.l0(iArr[i15][1], 1);
                            }
                            this.f7003b = 255;
                        }
                    } else if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    int i16 = h0.c.E;
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                break;
            case 33:
                int i17 = bArr[i2 + 2] & 255;
                int i18 = bArr[i2 + 3] & 255;
                qt.y0(10, (i17 >> 7) & 1);
                qt.y0(11, (i17 >> 6) & 1);
                qt.y0(12, (i17 >> 5) & 1);
                qt.y0(68, (i17 >> 4) & 1);
                qt.y0(15, (i17 >> 1) & 1);
                qt.y0(16, i17 & 1);
                qt.y0(18, (i18 >> 7) & 1);
                qt.y0(19, (i18 >> 6) & 1);
                qt.y0(20, (i18 >> 5) & 1);
                qt.y0(21, 15 & i18);
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i20 = bArr[i21] & 255;
                    i22 = bArr[i19] & 255;
                }
                if (i20 == 0) {
                    qt.y0(27, -2);
                } else if (i20 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i20);
                }
                if (i22 == 0) {
                    qt.y0(28, -2);
                } else if (i22 != 31) {
                    qt.y0(28, i22);
                } else {
                    qt.y0(28, -3);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 4;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 5;
                int i30 = bArr[i29] & 255;
                if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i24;
                l0.c0.f13014h = i26;
                l0.c0.f13015i = i28;
                l0.c0.f13016j = i30;
                u0.d.D2(l0.c0.E0(bArr[i23] & 255));
                u0.d.E2(l0.c0.E0(bArr[i25] & 255));
                u0.d.F2(l0.c0.E0(bArr[i27] & 255));
                u0.d.G2(l0.c0.E0(bArr[i29] & 255));
                break;
            case 36:
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
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7007f);
        l0.b0.p0(this.f7008g);
        qt.q0(this.f7010i);
        qt.q0(this.f7009h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 121) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        } else if (i2 == 1) {
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
        }
    }
}
