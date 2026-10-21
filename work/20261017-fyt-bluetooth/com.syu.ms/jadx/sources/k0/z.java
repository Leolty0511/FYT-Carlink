package k0;

import android.bluetooth.BluetoothClass;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class z extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12665c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12664b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12666d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f12667e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 25}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f12668f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12669g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12670h = {34, 204};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12671i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12672j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12673k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12674l = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z zVar = z.this;
            byte b2 = (byte) (zVar.f12668f + 1);
            zVar.f12668f = b2;
            if (b2 > 5) {
                l0.b0.o0(zVar.f12669g);
                z.this.f12668f = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z zVar = z.this;
            int i2 = zVar.f12664b;
            if (i2 > 0) {
                zVar.f12664b = i2 - 1;
            }
            if (zVar.f12664b == 0) {
                zVar.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i4 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (i4 == 0 || (i3 = time.hour) <= 12) {
                i2 = 0;
            } else {
                time.hour = i3 - 12;
                i2 = 1;
            }
            z.k.s(227, -58, 4, 1, time.hour, time.minute, (byte) ((i2 << 7) | (i4 << 6)));
        }
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        qt.z(this.f12672j);
        y0.g.f18094d.a(this.f12673k, 1);
        y0.g.f18095e.a(this.f12673k, 1);
        w0.e.f17815a.a(this.f12672j, 1);
        w0.e.f17819e.a(this.f12672j, 1);
        qt.z(this.f12674l);
        int i2 = nt.f8637c;
        if (i2 == 3) {
            z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 27, 170);
            z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 27, 170);
            z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 27, 170);
            int i3 = this.f12671i + 1;
            this.f12671i = i3;
            this.f12671i = i3 % 2;
            return;
        }
        if (i2 != 4) {
            return;
        }
        z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 26, 170);
        z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 26, 170);
        z.k.s(227, 51, 5, 0, this.f12670h[this.f12671i % 2], 37, 26, 170);
        int i4 = this.f12671i + 1;
        this.f12671i = i4;
        this.f12671i = i4 % 2;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b3 = bArr[i2];
        if (b3 == 32) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f12666d = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f12667e;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f12666d;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f12665c = i9;
                        break;
                    }
                    i9++;
                }
                if (this.f12666d == 9) {
                    if ((b5 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    return;
                }
                int i11 = b5 & 255;
                if (i11 == 1) {
                    if (i9 >= iArr.length || (b2 = this.f12668f) != 0) {
                        return;
                    }
                    this.f12668f = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i9][1], 0);
                    l0.b0.a(this.f12669g);
                    return;
                }
                if (i11 == 0) {
                    int i12 = this.f12665c;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                        l0.b0.o0(this.f12669g);
                        this.f12668f = (byte) 0;
                    }
                    this.f12665c = 255;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 47) {
            if (nt.a()) {
                d3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b3 != 85) {
            if (b3 == 102) {
                if (nt.a() && nt.f8633a == 333) {
                    d3(bArr[i2 + 2] & 255);
                    return;
                }
                return;
            }
            if (b3 == 34) {
                if (nt.a() && u0.b.f17347o == 1) {
                    u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                    return;
                }
                return;
            }
            if (b3 == 35 && nt.a() && u0.b.f17347o == 1) {
                u0.d.D2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.P0(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (nt.f8633a == 27) {
            return;
        }
        int i13 = i2 + 2;
        byte b6 = bArr[i13];
        int i14 = i2 + 3;
        byte b7 = bArr[i14];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 5];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        byte b12 = bArr[i2 + 8];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i14];
            b7 = bArr[i13];
        }
        int i15 = b6 & 255;
        if (i15 == 16) {
            qt.y0(27, -2);
        } else if (i15 == 80) {
            qt.y0(27, -3);
        } else if (i15 > 16 && i15 < 80) {
            qt.y0(27, i15);
        }
        int i16 = b7 & 255;
        if (i16 == 16) {
            qt.y0(28, -2);
        } else if (i16 == 80) {
            qt.y0(28, -3);
        } else if (i16 > 16 && i16 < 80) {
            qt.y0(28, i16);
        }
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
        int i17 = (b8 >> 4) & 15;
        switch (i17) {
            case 1:
                i5 = 0;
                i6 = 0;
                i4 = 1;
                break;
            case 2:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i4 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 7:
                i4 = 1;
                i5 = i4;
                i6 = i5;
                break;
            default:
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
        }
        qt.y0(19, i4);
        qt.y0(20, i5);
        qt.y0(18, i6);
        qt.y0(77, i17);
        qt.y0(29, b9 & 3);
        qt.y0(31, (b9 >> 2) & 3);
        qt.y0(30, (b9 >> 4) & 3);
        qt.y0(32, (b9 >> 6) & 3);
        qt.y0(13, b10 & 1);
        qt.y0(11, (b10 >> 1) & 1);
        qt.y0(14, (b10 >> 2) & 1);
        qt.y0(53, (b10 >> 4) & 1);
        qt.y0(65, (b10 >> 5) & 1);
        qt.y0(38, (b10 >> 6) & 1);
        qt.y0(15, (b10 >> 7) & 1);
        qt.y0(12, (b11 >> 0) & 3);
        qt.y0(79, (b11 >> 2) & 1);
        qt.y0(67, (b11 >> 3) & 1);
        if (!nt.a() || (i7 = bArr[i2 + 9] & 255) == 255) {
            return;
        }
        if (i7 > 40) {
            i8 = ((i7 > 90 ? 50 : i7 - 40) * 10) + 1000;
        } else {
            i8 = 1000 - ((40 - i7) * 10);
        }
        u0.d.A3(i8);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12674l);
        qt.q0(this.f12672j);
        y0.g.f18094d.d(this.f12673k);
        y0.g.f18095e.d(this.f12673k);
        w0.e.f17815a.d(this.f12672j);
        w0.e.f17819e.d(this.f12672j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        if (nt.f8637c == 4) {
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 26, 170);
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 26, 170);
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 26, 170);
        } else {
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 27, 170);
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 27, 170);
            z.k.s(227, 51, 5, iArr[0], this.f12670h[this.f12671i % 2], 37, 27, 170);
        }
        int i3 = this.f12671i + 1;
        this.f12671i = i3;
        this.f12671i = i3 % 2;
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
            } else if (i6 == 65537) {
                iArr[4] = 2;
            } else if (i6 == 65538) {
                iArr[4] = 0;
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 == 0) {
                iArr[7] = 6;
            } else {
                iArr[7] = i7;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i8 = u0.b.s3;
                iArr[4] = i8 & 255;
                iArr[5] = (i8 >> 8) & 255;
                int i9 = u0.b.r3;
                iArr[6] = i9 & 255;
                iArr[7] = (i9 >> 8) & 255;
                int i10 = u0.b.t3;
                iArr[8] = i10 / 60;
                iArr[9] = i10 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i11 = o0.e.f16794r;
            iArr[7] = i11 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i11 % 60;
        } else {
            int i12 = o0.e.C;
            iArr[4] = i12 & 255;
            iArr[5] = (i12 >> 8) & 255;
            int i13 = o0.e.B;
            iArr[6] = i13 & 255;
            iArr[7] = (i13 >> 8) & 255;
            int i14 = o0.e.f16794r;
            iArr[8] = i14 / 60;
            iArr[9] = i14 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i15 = i2 + 1;
            iArr2[i15] = iArr[i2];
            i2 = i15;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final void d3(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 9:
                o1.u.x0();
                if (i2 == 1) {
                    w0.f.J(0, 0);
                } else if (i2 == 2) {
                    w0.f.J(0, 65536);
                } else if (i2 == 3) {
                    w0.f.J(0, 65537);
                } else if (i2 == 9) {
                    w0.f.J(0, 65536);
                }
                break;
            case 4:
            case 5:
                if (i2 == 5) {
                    o1.u.i();
                } else {
                    o1.u.E();
                }
                break;
            case 6:
                if (nt.f8633a != 333) {
                    o1.u.q();
                } else {
                    o1.u.i();
                }
                break;
            case 7:
                if (nt.f8633a != 333) {
                    o1.u.j();
                } else {
                    o1.u.q();
                }
                break;
            case 8:
                o1.u.j();
                break;
            case 10:
                o1.u.i();
                break;
            case 14:
                o1.u.Z0();
                break;
            case 15:
                c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
                break;
            case 17:
                if (h0.c.E != 5) {
                    h0.c.f2425b.h(0);
                } else {
                    h0.c.f2425b.h(1);
                }
                break;
            case 18:
                h0.c.f2425b.h(1);
                break;
        }
    }
}
