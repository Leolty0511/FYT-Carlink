package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class z6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12740c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12741d = {new int[]{17, 2}, new int[]{18, 67}, new int[]{19, 68}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 3}, new int[]{25, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12742e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12743f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12744g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12745h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                l0.e0.d();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.l();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                z.k.s(227, 8, -90, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
            }
            int i2 = nt.f8637c;
            if (i2 == 7) {
                z.k.s(227, 6, 167, 5, 1, 0);
                return;
            }
            if (i2 == 8) {
                z.k.s(227, 6, 167, 5, 2, 0);
            } else if (i2 != 9) {
                z.k.s(227, 6, 167, 5, 0, 0);
            } else {
                z.k.s(227, 6, 167, 5, 3, 0);
            }
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            w0.e.f17815a.a(this.f12742e, 1);
            u0.c.f17374a.a(this.f12742e, 1);
            l0.b0.b(this.f12742e);
            y0.g.f18094d.a(this.f12743f, 1);
            y0.g.f18095e.a(this.f12743f, 1);
            qt.z(this.f12745h);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 2) {
            int i4 = i2 + 2;
            if (bArr[i4] == 32) {
                nt.f8643f[108].s(108, new int[]{1}, null, null);
                return;
            }
            if (nt.a()) {
                int i5 = bArr[i4] & 255;
                this.f12740c = i5;
                int i6 = 0;
                while (true) {
                    iArr = this.f12741d;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f12740c;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f12739b = i6;
                        break;
                    }
                    i6++;
                }
                if (i5 != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i6 <= iArr.length) {
                        l0.b0.l0(iArr[this.f12739b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 8) {
            if (nt.a()) {
                int i8 = i2 + 2;
                int i9 = bArr[i8] & 255;
                int i10 = i2 + 3;
                int i11 = bArr[i10] & 255;
                int i12 = bArr[i10] & 255;
                int i13 = i2 + 4;
                int i14 = bArr[i13] & 255;
                if (i9 == 0 && i11 == 0 && i12 == 0 && i14 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i9 || l0.c0.f13014h != i11 || l0.c0.f13015i != i12 || l0.c0.f13016j != i14) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i9;
                l0.c0.f13014h = i11;
                l0.c0.f13015i = i12;
                l0.c0.f13016j = i14;
                u0.d.D2(l0.e0.p(bArr[i8] & 255));
                u0.d.E2(l0.e0.p(bArr[i10] & 255));
                u0.d.F2(l0.e0.p(bArr[i10] & 255));
                u0.d.G2(l0.e0.p(bArr[i13] & 255));
                u0.d.R2(l0.e0.p(bArr[i2 + 5] & 255));
                int i15 = i2 + 6;
                u0.d.S2(l0.e0.p(bArr[i15] & 255));
                u0.d.T2(l0.e0.p(bArr[i15] & 255));
                u0.d.U2(l0.e0.p(bArr[i2 + 7] & 255));
                return;
            }
            return;
        }
        if (b2 != 33) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 5450);
                return;
            }
            if (b2 == 56) {
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                } else {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                }
                qt.y0(3, (b3 >> 5) & 1);
                qt.y0(4, (b3 >> 4) & 1);
                qt.y0(109, bArr[i2 + 3] & 255 & 3);
                return;
            }
            if (b2 != 125) {
                switch (b2) {
                    case 51:
                        qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(102, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(103, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                        break;
                    case 52:
                        qt.y0(99, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(100, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(104, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                        break;
                    case 53:
                        qt.y0(105, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                        qt.y0(107, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                        break;
                    case 54:
                        if (nt.a()) {
                            l0.f0.a(bArr[i2 + 2]);
                        }
                        break;
                }
                return;
            }
            int i16 = bArr[i2 + 2] & 255;
            if (i16 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i17 = i2 + 3;
                    l0.c0.b((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                } else {
                    int i18 = i2 + 3;
                    l0.c0.a((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i16 == 3) {
                int i19 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i19);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i19}, null, null);
                return;
            } else {
                if (i16 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f12744g = true;
                return;
            }
        }
        byte b4 = bArr[i2 + 2];
        qt.y0(10, (b4 >> 7) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = ((b4 >> 5) & 1) == 0 ? 0 : 1;
        qt.y0(12, iArr2);
        qt.y0(54, (b4 >> 4) & 1);
        qt.y0(13, (b4 >> 3) & 1);
        int i20 = (b4 >> 2) & 1;
        qt.y0(14, i20);
        qt.y0(55, i20);
        qt.y0(16, (b4 >> 0) & 1);
        byte b5 = bArr[i2 + 3];
        qt.y0(18, (b5 >> 7) & 1);
        qt.y0(19, (b5 >> 6) & 1);
        qt.y0(20, (b5 >> 5) & 1);
        int[] iArr3 = new int[1];
        iArr3[0] = (b5 & 224) == 0 ? 0 : 1;
        qt.y0(49, iArr3);
        int i21 = b5 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i21 > 9) {
            i21 = 9;
        }
        qt.y0(21, i21);
        int i22 = i2 + 4;
        byte b6 = bArr[i22];
        int i23 = i2 + 5;
        byte b7 = bArr[i23];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i23];
            b7 = bArr[i22];
        }
        int i24 = i2 + 6;
        if ((bArr[i24] & 2) == 0) {
            if (b6 == -1) {
                qt.y0(27, -3);
            } else if (b6 != 0) {
                qt.y0(27, b6 & 255);
            } else {
                qt.y0(27, -2);
            }
        }
        if ((bArr[i24] & 2) == 0) {
            if (b7 == -1) {
                qt.y0(28, -3);
            } else if (b7 != 0) {
                qt.y0(28, b7 & 255);
            } else {
                qt.y0(28, -2);
            }
        }
        byte b8 = bArr[i24];
        qt.y0(15, (b8 >> 7) & 1);
        qt.y0(53, (b8 >> 3) & 1);
        qt.y0(37, (b8 >> 0) & 1);
        int[] iArr4 = new int[1];
        iArr4[0] = ((bArr[i2 + 7] & 255) & 128) == 0 ? 0 : 1;
        qt.y0(38, iArr4);
        int i25 = i2 + 8;
        int i26 = (bArr[i25] >> 6) & 3;
        qt.y0(52, i26 <= 2 ? i26 : 2);
        qt.y0(51, (bArr[i25] >> 6) & 3);
        int i27 = i2 + 9;
        qt.y0(22, (bArr[i27] >> 7) & 1);
        qt.y0(23, (bArr[i27] >> 6) & 1);
        qt.y0(24, (bArr[i27] >> 5) & 1);
        int[] iArr5 = new int[1];
        iArr5[0] = (bArr[i27] & 224) == 0 ? 0 : 1;
        qt.y0(50, iArr5);
    }

    @Override // k0.lt
    public void W2() {
        y0.g.f18094d.d(this.f12743f);
        y0.g.f18095e.d(this.f12743f);
        w0.e.f17815a.d(this.f12742e);
        u0.c.f17374a.d(this.f12742e);
        l0.b0.p0(this.f12742e);
        qt.q0(this.f12745h);
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
        switch (i2) {
            case 70:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, 51);
                    break;
                }
                break;
            case 71:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, 52);
                    break;
                }
                break;
            case 72:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, -113, 53);
                    break;
                }
                break;
            case 73:
                if (T2(iArr, 2)) {
                    z.k.s(227, 5, 8, iArr[0], iArr[1]);
                }
                z.k.s(227, 5, 8, 0, 0);
                break;
        }
    }
}
