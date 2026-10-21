package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class en extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f4904b = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 118, 7, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute, time.second, time.weekDay);
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
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f4904b);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i4 = i2 + 3;
            l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 39:
                int i5 = i2 + 2;
                qt.y0(99, (bArr[i5] >> 7) & 1);
                qt.y0(100, (bArr[i5] >> 0) & 127);
                qt.y0(101, bArr[i2 + 3] & 255);
                qt.y0(102, bArr[i2 + 4] & 255);
                qt.y0(103, bArr[i2 + 5] & 255);
                break;
            case 40:
                int i6 = i2 + 2;
                qt.y0(10, (bArr[i6] >> 7) & 1);
                qt.y0(11, (bArr[i6] >> 6) & 1);
                qt.y0(12, (bArr[i6] >> 5) & 1);
                qt.y0(68, (bArr[i6] >> 2) & 1);
                qt.y0(65, (bArr[i6] >> 1) & 1);
                int i7 = i2 + 3;
                qt.y0(18, (bArr[i7] >> 7) & 1);
                qt.y0(19, (bArr[i7] >> 6) & 1);
                qt.y0(20, (bArr[i7] >> 5) & 1);
                qt.y0(21, (bArr[i7] >> 0) & 15);
                int i8 = i2 + 4;
                int i9 = bArr[i8] & 255;
                if (i9 == 0) {
                    qt.y0(27, -2);
                } else if (i9 != 31) {
                    qt.y0(27, bArr[i8] & 255);
                } else {
                    qt.y0(27, -3);
                }
                qt.y0(98, bArr[i2 + 6] & 255);
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f4904b);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 117, 2, iArr[0], iArr[1]);
        }
    }
}
