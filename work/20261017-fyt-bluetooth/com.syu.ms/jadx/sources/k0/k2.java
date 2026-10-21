package k0;

import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class k2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7157c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7158d = {new int[]{1, 1}, new int[]{2, 21}, new int[]{3, 9}, new int[]{4, 64}, new int[]{5, 38}, new int[]{6, 11}, new int[]{7, 0}, new int[]{8, 13}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 3}, new int[]{24, 4}, new int[]{48, 18}, new int[]{49, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7159e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7160f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7161g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7162h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7163i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7164j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7165k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f7166l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7167m = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.b();
            int i2 = nt.f8633a;
            if (i2 == 720975) {
                z.k.s(227, 4, 226, 0);
            } else {
                if (i2 != 786511) {
                    return;
                }
                z.k.s(227, 4, 226, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.j();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            if (k2.this.f7166l == millis && k2.this.f7167m == b2) {
                return;
            }
            k2.this.f7166l = millis;
            k2.this.f7167m = b2;
            int i2 = time.hour;
            int i3 = time.minute;
            if (b2 == 1 && i2 > 12) {
                i2 -= 12;
            }
            z.k.s(227, 5, 133, (i2 & 127) | ((b2 << 7) & 128), i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8314i = 0;
        if (nt.f8633a != 65632) {
            mtVar.f8306a = null;
        } else {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 1;
            qt.z(this.f7165k);
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8320o = 0;
        y0.g.f18094d.a(this.f7162h, 1);
        y0.g.f18095e.a(this.f7162h, 1);
        qt.z(this.f7161g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0142, code lost:
    
        r12 = true;
     */
    @Override // k0.lt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void U2(byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 1320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.k2.U2(byte[], int, int):void");
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7165k);
        y0.g.f18094d.d(this.f7162h);
        y0.g.f18095e.d(this.f7162h);
        qt.q0(this.f7161g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr[0] == 1) {
                z.k.s(227, 4, 6, 32);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 4, 6, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 1) {
            if (iArr[0] == 1) {
                z.k.s(227, 4, 6, 64);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 4, 6, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 2) {
            if (iArr[0] == 1) {
                z.k.s(227, 4, 6, 128);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 4, 6, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 3) {
            z.k.s(227, 5, 224, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 5, 6, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, 5, 6, iArr[0], iArr[1]);
        } else {
            if (i2 != 1003) {
                return;
            }
            z.k.s(227, 4, 5, 128);
            a.i.a0(200L);
            z.k.s(227, 4, 5, 0);
        }
    }

    public void a3(int i2) {
        this.f7163i = i2;
        boolean z2 = i2 == 1;
        if (this.f7164j != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        this.f7164j = this.f7163i;
    }
}
