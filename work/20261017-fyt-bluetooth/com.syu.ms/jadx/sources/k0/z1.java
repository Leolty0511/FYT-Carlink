package k0;

import android.net.wifi.BatchedScanSettings;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class z1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f12679b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f12680c = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z1.this.b3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z1.this.a3();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            y0.g.f18094d.a(this.f12679b, 1);
            y0.g.f18095e.a(this.f12679b, 1);
            w0.e.f17815a.a(this.f12680c, 1);
            l0.b0.b(this.f12680c);
            u0.c.f17374a.a(this.f12680c, 1);
            u0.c.f17393t.a(this.f12680c, 1);
            u0.c.f17392s.a(this.f12680c, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.p0(this.f12680c);
            y0.g.f18094d.d(this.f12679b);
            y0.g.f18095e.d(this.f12679b);
            w0.e.f17815a.d(this.f12680c);
            u0.c.f17374a.d(this.f12680c);
            u0.c.f17393t.d(this.f12680c);
            u0.c.f17392s.d(this.f12680c);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void a3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[16];
            for (int i4 = 0; i4 < 16; i4++) {
                iArr[i4] = 0;
            }
            iArr[0] = 131;
            iArr[1] = 14;
            iArr[2] = 67;
            iArr[3] = 72;
            int i5 = w0.d.f17796h;
            if (i5 < 65536 || i5 > 65538) {
                int i6 = w0.d.f17798j;
                if ((i6 & 255) % 6 != 0 || (i6 & 255) == 0) {
                    iArr[4] = ((i6 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
            } else {
                int i7 = w0.d.f17798j;
                if ((i7 & 255) % 6 != 0 || (i7 & 255) == 0) {
                    iArr[4] = ((i7 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
            }
            iArr[5] = 32;
            int i8 = w0.d.f17796h;
            if (i8 < 65536 || i8 > 65538) {
                int i9 = w0.d.f17797i;
                iArr[6] = (i9 % 10000) / 1000 == 0 ? ((i9 % 10000) / 1000) + 32 : ((i9 % 10000) / 1000) + 48;
                iArr[7] = ((i9 % 1000) / 100) + 48;
                iArr[8] = ((i9 % 100) / 10) + 48;
                iArr[9] = (i9 % 10) + 48;
            } else {
                int i10 = w0.d.f17797i;
                iArr[6] = i10 / 10000 == 0 ? (i10 / 10000) + 32 : (i10 / 10000) + 48;
                iArr[7] = ((i10 % 10000) / 1000) + 48;
                iArr[8] = ((i10 % 1000) / 100) + 48;
                iArr[9] = ((i10 % 100) / 10) + 48;
            }
            e3(iArr);
            int i11 = w0.d.f17796h;
            if (i11 == 0) {
                iArr[12] = 17;
                iArr[15] = 32;
            } else if (i11 != 1) {
                switch (i11) {
                    case 65536:
                        iArr[12] = 33;
                        iArr[15] = 16;
                        break;
                    case 65537:
                        iArr[12] = 34;
                        iArr[15] = 16;
                        break;
                    case 65538:
                        iArr[12] = 35;
                        iArr[15] = 16;
                        break;
                }
            } else {
                iArr[12] = 18;
                iArr[15] = 32;
            }
            d3(iArr);
            int[] iArr2 = new int[17];
            iArr2[0] = 227;
            while (i3 < 16) {
                int i12 = i3 + 1;
                iArr2[i12] = iArr[i3];
                i3 = i12;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 4) {
            int[] iArr3 = new int[16];
            for (int i13 = 0; i13 < 16; i13++) {
                iArr3[i13] = 0;
            }
            iArr3[0] = 131;
            iArr3[1] = 14;
            int i14 = o0.e.B;
            iArr3[2] = (i14 / 100) + 48;
            iArr3[3] = ((i14 % 100) / 10) + 48;
            iArr3[4] = (i14 % 10) + 48;
            iArr3[5] = 45;
            int i15 = o0.e.f16794r;
            iArr3[6] = (((i15 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
            iArr3[7] = (((i15 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr3[8] = ((i15 % 60) / 10) + 48;
            iArr3[9] = (i15 % 10) + 48;
            e3(iArr3);
            int i16 = o0.e.H;
            if (i16 == 1) {
                iArr3[12] = 128;
            } else if (i16 == 3 || i16 == 2) {
                iArr3[12] = 64;
            } else {
                iArr3[12] = 0;
            }
            d3(iArr3);
            iArr3[15] = 0;
            int[] iArr4 = new int[17];
            iArr4[0] = 227;
            while (i3 < 16) {
                int i17 = i3 + 1;
                iArr4[i17] = iArr3[i3];
                i3 = i17;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 != 8 && i2 != 9) {
            c3();
            return;
        }
        int[] iArr5 = new int[16];
        for (int i18 = 0; i18 < 16; i18++) {
            iArr5[i18] = 0;
        }
        iArr5[0] = 131;
        iArr5[1] = 14;
        int i19 = u0.b.r3;
        iArr5[2] = (i19 / 100) + 48;
        iArr5[3] = ((i19 % 100) / 10) + 48;
        iArr5[4] = (i19 % 10) + 48;
        iArr5[5] = 45;
        int i20 = u0.b.t3;
        iArr5[6] = (((i20 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
        iArr5[7] = (((i20 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
        iArr5[8] = ((i20 % 60) / 10) + 48;
        iArr5[9] = (i20 % 10) + 48;
        e3(iArr5);
        int i21 = o0.e.H;
        if (i21 == 1) {
            iArr5[12] = 128;
        } else if (i21 == 3 || i21 == 2) {
            iArr5[12] = 64;
        } else {
            iArr5[12] = 0;
        }
        d3(iArr5);
        iArr5[15] = 0;
        int[] iArr6 = new int[17];
        iArr6[0] = 227;
        while (i3 < 16) {
            int i22 = i3 + 1;
            iArr6[i22] = iArr5[i3];
            i3 = i22;
        }
        z.k.s(iArr6);
    }

    public void b3() {
        int i2;
        int[] iArr = new int[16];
        int i3 = 0;
        for (int i4 = 0; i4 < 14; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 131;
        iArr[1] = 14;
        iArr[2] = 0;
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
        e3(iArr);
        d3(iArr);
        iArr[15] = 0;
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i3 < 16) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public final void c3() {
        int[] iArr = new int[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 131;
        iArr[1] = 14;
        switch (u0.b.D) {
            case 2:
                iArr[2] = 80;
                iArr[3] = 72;
                iArr[4] = 79;
                iArr[5] = 78;
                iArr[6] = 69;
                break;
            case 3:
                iArr[2] = 77;
                iArr[3] = 85;
                iArr[4] = 83;
                iArr[5] = 73;
                iArr[6] = 67;
                break;
            case 4:
            case 7:
                iArr[2] = 73;
                iArr[3] = 80;
                iArr[4] = 79;
                iArr[5] = 68;
                break;
            case 5:
                iArr[2] = 65;
                iArr[3] = 85;
                iArr[4] = 88;
                break;
            case 6:
                iArr[2] = 84;
                iArr[3] = 86;
                break;
        }
        e3(iArr);
        iArr[12] = 0;
        d3(iArr);
        iArr[15] = 0;
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public final void d3(int[] iArr) {
        if (iArr == null || iArr.length < 14) {
            return;
        }
        int i2 = y0.f.f18032a0;
        if (i2 == 2) {
            iArr[13] = 1;
            return;
        }
        if (i2 == 8) {
            iArr[13] = 2;
            return;
        }
        if (i2 == 0) {
            iArr[13] = 4;
            return;
        }
        if (i2 == 4) {
            iArr[13] = 8;
            return;
        }
        if (i2 == 7) {
            iArr[13] = 16;
        } else if (i2 == 5) {
            iArr[13] = 32;
        } else {
            iArr[13] = 0;
        }
    }

    public final void e3(int[] iArr) {
        if (iArr == null || iArr.length < 12) {
            return;
        }
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        boolean z2 = !DateFormat.is24HourFormat(App.c());
        iArr[10] = time.minute;
        if (z2) {
            iArr[11] = time.hour;
            return;
        }
        int i2 = time.hour;
        if (i2 > 12) {
            iArr[11] = i2 - 12;
        } else {
            iArr[11] = i2;
        }
    }
}
