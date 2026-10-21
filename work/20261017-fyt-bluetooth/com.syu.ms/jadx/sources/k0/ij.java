package k0;

import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class ij extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f6465b = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ij.a3();
        }
    }

    public static void a3() {
        int i2;
        int[] iArr = new int[10];
        int i3 = 0;
        iArr[0] = 8;
        iArr[1] = 17;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = iArr[2] & 7;
        } else {
            iArr[2] = (i2 << 2) & 248;
        }
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[2] = iArr[2] | 1;
                int i6 = (w0.d.f17797i - 8750) / 10;
                iArr[6] = (i6 >> 8) & 255;
                iArr[7] = i6 & 255;
            } else {
                iArr[2] = iArr[2] | 2;
                int i7 = w0.d.f17797i;
                iArr[4] = (i7 >> 8) & 255;
                iArr[5] = i7 & 255;
            }
            iArr[3] = (w0.d.f17798j << 4) & 240;
        } else if (i4 == 8 || i4 == 9) {
            iArr[2] = iArr[2] | 0;
        } else {
            iArr[2] = iArr[2] | 3;
        }
        if (u0.b.K3 != 1) {
            iArr[3] = iArr[3] | 1;
        } else {
            iArr[3] = iArr[3] | 0;
        }
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        byte b2 = (byte) time.hour;
        byte b3 = (byte) time.minute;
        iArr[8] = b2;
        iArr[9] = b3;
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i3 < 10) {
            int i8 = i3 + 1;
            iArr2[i8] = (byte) iArr[i3];
            i3 = i8;
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
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        qt.z(this.f6465b);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 1];
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6465b);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
