package k0;

import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class o7 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8743c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8742b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8744d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8745e = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 12}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f8746f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8747g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8748h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8749i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8750j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f8751k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f8752l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8753m = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o7 o7Var = o7.this;
            byte b2 = (byte) (o7Var.f8746f + 1);
            o7Var.f8746f = b2;
            if (b2 > 2) {
                l0.b0.o0(o7Var.f8747g);
                o7.this.f8746f = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o7 o7Var = o7.this;
            int i2 = o7Var.f8742b;
            if (i2 > 0) {
                o7Var.f8742b = i2 - 1;
            }
            if (o7Var.f8742b == 0) {
                o7Var.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o7.this.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = 0;
            int[] iArr = {200, 4, time.minute, time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0};
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i2 < 6) {
                int i3 = i2 + 1;
                iArr2[i3] = iArr[i2];
                i2 = i3;
            }
            o7.f3(iArr2);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(o7.this.f8753m);
            o7.this.f8751k = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o7 o7Var = o7.this;
            byte b2 = (byte) (o7Var.f8751k - 1);
            o7Var.f8751k = b2;
            if (b2 <= 0) {
                l0.b0.p0(o7Var.f8753m);
                o7.this.f8751k = (byte) 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 5, 4, 0);
            } else {
                z.k.s(227, 5, 4, 1);
            }
        }
    }

    public static void f3(int... iArr) {
        int i2;
        int i3 = 2;
        int length = iArr.length + 2;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 46;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 1];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 = 1; i4 < iArr.length; i4++) {
            iArr2[i2] = iArr2[i2] + iArr[i4];
        }
        iArr2[i2] = iArr2[i2] ^ 255;
        l0.a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i2));
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f8752l, 1);
        qt.z(this.f8748h);
        qt.z(this.f8750j);
        y0.g.f18094d.a(this.f8749i, 1);
        y0.g.f18095e.a(this.f8749i, 1);
        w0.e.f17815a.a(this.f8748h, 1);
        w0.e.f17819e.a(this.f8748h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2 + 1] == 0 && nt.a()) {
            this.f8744d = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8745e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8744d;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8743c = i4;
                    break;
                }
                i4++;
            }
            if (this.f8744d == 0) {
                this.f8746f = (byte) 0;
                this.f8743c = 0;
                l0.b0.o0(this.f8747g);
            } else if (this.f8746f == 0) {
                l0.b0.l0(iArr[this.f8743c][1], 0);
                l0.b0.l0(this.f8745e[this.f8743c][1], 1);
                l0.b0.a(this.f8747g);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8752l);
        qt.q0(this.f8748h);
        qt.q0(this.f8750j);
        y0.g.f18094d.d(this.f8749i);
        y0.g.f18095e.d(this.f8749i);
        w0.e.f17815a.d(this.f8748h);
        w0.e.f17819e.d(this.f8748h);
        l0.b0.p0(this.f8753m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1) {
            return;
        }
        z.k.s(227, 5, 6, iArr[0]);
    }

    public void a3() {
        int[] iArr = new int[14];
        for (int i2 = 0; i2 < 14; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 16;
        iArr[1] = 0;
        switch (u0.b.D) {
            case 0:
                iArr[4] = 87;
                iArr[5] = 69;
                iArr[6] = 76;
                iArr[7] = 67;
                iArr[8] = 79;
                iArr[9] = 77;
                iArr[10] = 69;
                break;
            case 1:
                int iB3 = b3();
                if (iB3 == 1) {
                    iArr[2] = 70;
                    iArr[3] = 77;
                    iArr[4] = 49;
                } else if (iB3 == 2) {
                    iArr[2] = 70;
                    iArr[3] = 77;
                    iArr[4] = 50;
                } else if (iB3 == 3) {
                    iArr[2] = 70;
                    iArr[3] = 77;
                    iArr[4] = 51;
                } else if (iB3 == 4) {
                    iArr[2] = 65;
                    iArr[3] = 77;
                    iArr[4] = 49;
                } else if (iB3 == 5) {
                    iArr[2] = 65;
                    iArr[3] = 77;
                    iArr[4] = 50;
                }
                int i3 = w0.d.f17796h;
                if (i3 < 65536 || i3 > 65538) {
                    int i4 = w0.d.f17797i;
                    iArr[6] = i4 / 10000 == 0 ? (i4 / 10000) + 32 : (i4 / 10000) + 48;
                    iArr[7] = (i4 % 10000) / 1000 == 0 ? ((i4 % 10000) / 1000) + 32 : ((i4 % 10000) / 1000) + 48;
                    iArr[8] = ((i4 % 1000) / 100) + 48;
                    iArr[9] = ((i4 % 100) / 10) + 48;
                    iArr[10] = (i4 % 10) + 48;
                    iArr[11] = 75;
                } else {
                    int i5 = w0.d.f17797i;
                    iArr[6] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                    iArr[7] = ((i5 % 10000) / 1000) + 48;
                    iArr[8] = ((i5 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i5 % 100) / 10) + 48;
                    iArr[11] = (i5 % 10) + 48;
                    iArr[12] = 77;
                }
                break;
            case 2:
                iArr[5] = 80;
                iArr[6] = 72;
                iArr[7] = 79;
                iArr[8] = 78;
                iArr[9] = 69;
                break;
            case 3:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
                if (o0.e.C != 0) {
                    int iB4 = b3();
                    if (iB4 == 7) {
                        iArr[2] = 68;
                        iArr[3] = 86;
                        iArr[4] = 68;
                    } else if (iB4 == 14) {
                        iArr[2] = 83;
                        iArr[3] = 68;
                        iArr[4] = 32;
                    } else if (iB4 == 13) {
                        iArr[2] = 85;
                        iArr[3] = 83;
                        iArr[4] = 66;
                    }
                    int i6 = o0.e.B % 1000;
                    iArr[5] = (i6 / 100) + 48;
                    iArr[6] = ((i6 % 100) / 10) + 48;
                    iArr[7] = (i6 % 10) + 48;
                    int i7 = o0.e.f16794r;
                    int i8 = (i7 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i8 / 10) + 48;
                    iArr[10] = (i8 % 10) + 48;
                    iArr[11] = 32;
                    int i9 = i7 % 60;
                    iArr[12] = (i9 / 10) + 48;
                    iArr[13] = (i9 % 10) + 48;
                }
                break;
            case 5:
                iArr[6] = 65;
                iArr[7] = 85;
                iArr[8] = 88;
                break;
            case 6:
                iArr[2] = 84;
                iArr[3] = 86;
                iArr[4] = 32;
                if (d1.d.f1570c == 1) {
                    int i10 = d1.d.f1572e;
                    if (i10 / 10 > 0) {
                        iArr[5] = (i10 / 10) + 48;
                    }
                    iArr[6] = (i10 % 10) + 48;
                    iArr[7] = 45;
                    int i11 = d1.d.f1571d / 100;
                    int i12 = i11 / 10000;
                    if (i12 > 0) {
                        iArr[8] = i12 + 48;
                    }
                    iArr[9] = ((i11 % 10000) / 1000) + 48;
                    iArr[10] = ((i11 % 1000) / 100) + 48;
                    iArr[11] = 46;
                    iArr[12] = ((i11 % 100) / 10) + 48;
                    iArr[13] = ((i11 % 10) / 1) + 48;
                }
                break;
            case 7:
                iArr[6] = 73;
                iArr[7] = 80;
                iArr[8] = 79;
                iArr[9] = 68;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    iArr[2] = 77;
                    iArr[3] = 80;
                    iArr[4] = 51;
                    int i13 = u0.b.r3 % 1000;
                    iArr[5] = (i13 / 100) + 48;
                    iArr[6] = ((i13 % 100) / 10) + 48;
                    iArr[7] = (i13 % 10) + 48;
                    int i14 = u0.b.t3;
                    int i15 = (i14 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i15 / 10) + 48;
                    iArr[10] = (i15 % 10) + 48;
                    iArr[11] = 32;
                    int i16 = i14 % 60;
                    iArr[12] = (i16 / 10) + 48;
                    iArr[13] = (i16 % 10) + 48;
                }
                break;
            case 10:
            default:
                iArr[4] = 87;
                iArr[5] = 69;
                iArr[6] = 76;
                iArr[7] = 67;
                iArr[8] = 79;
                iArr[9] = 77;
                iArr[10] = 69;
                break;
            case 14:
                iArr[7] = 77;
                iArr[8] = 80;
                iArr[9] = 53;
                break;
        }
        int[] iArr2 = new int[15];
        iArr2[0] = 227;
        int i17 = 0;
        while (i17 < 14) {
            int i18 = i17 + 1;
            iArr2[i18] = (byte) iArr[i17];
            i17 = i18;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 9:
            default:
                i2 = 0;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 == 65536) {
                    i2 = 1;
                } else if (i3 == 65537) {
                    i2 = 2;
                } else if (i3 != 65538) {
                    if (i3 != 0) {
                        i2 = i3 != 1 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 7;
                } else if (i4 == 2) {
                    i2 = 14;
                } else if (i4 != 3) {
                    i2 = 0;
                } else {
                    i2 = 13;
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
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    public void c3() {
        int i2;
        int[] iArr = new int[14];
        int i3 = 0;
        for (int i4 = 0; i4 < 12; i4++) {
            iArr[i4] = 32;
        }
        iArr[12] = 0;
        iArr[13] = 0;
        iArr[0] = 16;
        iArr[1] = 0;
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
        int[] iArr2 = new int[15];
        iArr2[0] = 227;
        while (i3 < 14) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }
}
