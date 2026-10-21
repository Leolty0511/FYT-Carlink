package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class s5 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10155c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10154b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10156d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10157e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{10, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10158f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10159g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10160h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s5 s5Var = s5.this;
            int i2 = s5Var.f10154b;
            if (i2 > 0) {
                s5Var.f10154b = i2 - 1;
            }
            if (s5Var.f10154b == 0) {
                s5.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s5.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, (byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1), 0, 0, 0);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[3] = 48;
                int i6 = w0.d.f17798j;
                if ((i6 & 3) != 0 || (i6 & 255) == 0) {
                    iArr[4] = ((i6 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i7 % 100) / 10) + 48;
            } else {
                iArr[3] = 48;
                int i8 = w0.d.f17798j;
                if ((i8 & 3) != 0 || (i8 & 255) == 0) {
                    iArr[4] = ((i8 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i9 = w0.d.f17797i;
                iArr[6] = i9 / 10000 == 0 ? (i9 / 10000) + 32 : (i9 / 10000) + 48;
                iArr[7] = (i9 % 10000) / 1000 == 0 ? ((i9 % 10000) / 1000) + 32 : ((i9 % 10000) / 1000) + 48;
                iArr[8] = ((i9 % 1000) / 100) + 48;
                iArr[9] = ((i9 % 100) / 10) + 48;
                iArr[10] = (i9 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i10 = u0.b.r3;
                    iArr[3] = ((i10 / 100) % 10) + 48;
                    iArr[4] = ((i10 / 10) % 10) + 48;
                    iArr[5] = (i10 % 10) + 48;
                    iArr[6] = 32;
                    int i11 = u0.b.t3;
                    iArr[7] = ((i11 / 60) / 10) + 48;
                    iArr[8] = ((i11 / 60) % 10) + 48;
                    iArr[9] = ((i11 % 60) / 10) + 48;
                    iArr[10] = ((i11 % 60) % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i12 = d1.d.f1572e;
                if (i12 / 10 > 0) {
                    iArr[3] = (i12 / 10) + 48;
                }
                iArr[4] = (i12 % 10) + 48;
                iArr[5] = 45;
                int i13 = d1.d.f1571d / 100;
                int i14 = i13 / 10000;
                if (i14 > 0) {
                    iArr[6] = i14 + 48;
                }
                iArr[7] = ((i13 % 10000) / 1000) + 48;
                iArr[8] = ((i13 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i13 % 100) / 10) + 48;
                iArr[11] = ((i13 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            int i15 = o0.e.B;
            iArr[3] = ((i15 / 100) % 10) + 48;
            iArr[4] = ((i15 / 10) % 10) + 48;
            iArr[5] = (i15 % 10) + 48;
            iArr[6] = 32;
            int i16 = o0.e.f16794r;
            iArr[7] = ((i16 / 60) / 10) + 48;
            iArr[8] = ((i16 / 60) % 10) + 48;
            iArr[9] = ((i16 % 60) / 10) + 48;
            iArr[10] = ((i16 % 60) % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i17 = i2 + 1;
            iArr2[i17] = (byte) iArr[i2];
            i2 = i17;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 7;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
            case 9:
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f10160h);
        if (((nt.f8633a >> 16) & 65535) == 2) {
            this.f7886a.f8313h = 1;
        }
        this.f7886a.f8313h = 0;
        if (nt.a()) {
            qt.z(this.f10158f);
            y0.g.f18094d.a(this.f10159g, 1);
            y0.g.f18095e.a(this.f10159g, 1);
            w0.e.f17815a.a(this.f10158f, 1);
            w0.e.f17819e.a(this.f10158f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114 && nt.a()) {
            this.f10156d = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10157e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10156d;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10155c = i4;
                    break;
                }
                i4++;
            }
            if (this.f10156d != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f10155c;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f10155c = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10160h);
        if (nt.a()) {
            qt.q0(this.f10158f);
            y0.g.f18094d.d(this.f10159g);
            y0.g.f18095e.d(this.f10159g);
            w0.e.f17815a.d(this.f10158f);
            w0.e.f17819e.d(this.f10158f);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003 && iArr != null && iArr.length > 0) {
            z.k.s(227, 2, 109, (byte) iArr[0], 0);
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f10154b = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i3 < 15) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }
}
