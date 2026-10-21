package k0;

import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class t3 extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f10528r;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10533f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f10529b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f10530c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10531d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10532e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10534g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f10535h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{48, 12}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f10536i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10537j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10538k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10539l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f10540m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10541n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10542o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10543p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10544q = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3 t3Var = t3.this;
            byte b2 = (byte) (t3Var.f10536i + 1);
            t3Var.f10536i = b2;
            if (b2 > 5) {
                l0.b0.o0(t3Var.f10537j);
                t3.this.f10536i = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3 t3Var = t3.this;
            int i2 = t3Var.f10532e;
            if (i2 > 0) {
                t3Var.f10532e = i2 - 1;
            }
            if (t3Var.f10532e == 0) {
                l0.c0.e();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(t3.this.f10543p);
            t3.this.f10541n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3 t3Var = t3.this;
            int i2 = t3Var.f10541n - 1;
            t3Var.f10541n = i2;
            if (i2 <= 0) {
                l0.b0.p0(t3Var.f10543p);
                t3.this.f10541n = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 2, 51, 1);
            z.k.s(227, 144, 2, 51, 2);
            t3 t3Var2 = t3.this;
            t3Var2.e3(t3Var2.f10530c.b(1, 0));
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -124, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
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
        this.f10530c.a();
        e3(this.f10530c.b(1, 0));
        qt.z(this.f10544q);
        if (nt.a()) {
            y0.g.f18094d.a(this.f10539l, 1);
            y0.g.f18095e.a(this.f10539l, 1);
            w0.e.f17815a.a(this.f10538k, 1);
            w0.e.f17819e.a(this.f10538k, 1);
            u0.c.f17374a.a(this.f10538k, 1);
            u0.c.f17392s.a(this.f10538k, 1);
            u0.c.f17393t.a(this.f10538k, 1);
            u0.c.f17386m.a(this.f10542o, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -47) {
            int i4 = (bArr[i2 + 3] >> 6) & 1;
            if (u0.b.f17347o == 0 && i4 == 1) {
                if (o1.u.T(a.b.O)) {
                    qt.f();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                }
            }
            return;
        }
        if (b3 == 32) {
            int i5 = i2 + 2;
            byte b4 = bArr[i5];
            int i6 = i2 + 3;
            byte b5 = bArr[i6];
            if (b4 == 24 && b5 == 1) {
                if (o1.u.Y0().equals("com.syu.canbus")) {
                    o1.u.k();
                } else {
                    o1.u.v();
                }
            }
            if (nt.a()) {
                byte b6 = bArr[i5];
                byte b7 = bArr[i6];
                this.f10534g = b6 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f10535h;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f10534g;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f10533f = i7;
                        break;
                    }
                    i7++;
                }
                if (this.f10534g == 10) {
                    if ((b7 & 255) == 1) {
                        int i9 = h0.c.E;
                        if (i9 == 3 || i9 == 4 || i9 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            return;
                        }
                    }
                    return;
                }
                if ((b7 & 255) != 0) {
                    if (i7 >= iArr.length || (b2 = this.f10536i) != 0) {
                        return;
                    }
                    this.f10536i = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i7][1], 0);
                    l0.b0.a(this.f10537j);
                    return;
                }
                int i10 = this.f10533f;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                    l0.b0.o0(this.f10537j);
                    this.f10536i = (byte) 0;
                }
                this.f10533f = 255;
                return;
            }
            return;
        }
        if (b3 == 41) {
            if (this.f10540m) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b3 == 51) {
            byte b8 = bArr[i2 + 2];
            int i11 = 11;
            if (b8 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                byte b9 = bArr[i2 + 15];
                qt.y0(104, b9 & 3);
                qt.y0(105, (b9 >> 2) & 3);
                qt.y0(106, 3 & (b9 >> 4));
                qt.y0(107, (b9 >> 6) & 1);
                qt.y0(108, (b9 >> 7) & 1);
                int i12 = bArr[i2 + 16] & 255;
                if (i12 < 0) {
                    i11 = 0;
                } else if (i12 <= 11) {
                    i11 = i12;
                }
                qt.y0(109, this.f10529b[i11]);
                return;
            }
            if (b8 != 2) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            byte b10 = bArr[i2 + 18];
            qt.y0(104, b10 & 3);
            qt.y0(105, (b10 >> 2) & 3);
            qt.y0(106, 3 & (b10 >> 4));
            qt.y0(107, (b10 >> 6) & 1);
            qt.y0(108, (b10 >> 7) & 1);
            int i13 = bArr[i2 + 19] & 255;
            if (i13 < 0) {
                i11 = 0;
            } else if (i13 <= 11) {
                i11 = i13;
            }
            qt.y0(109, this.f10529b[i11]);
            return;
        }
        if (b3 == 125) {
            int i14 = bArr[i2 + 2] & 255;
            if (i14 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i15 = i2 + 3;
                    l0.c0.b((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                } else {
                    int i16 = i2 + 3;
                    l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                }
            }
            if (i14 == 3) {
                int i17 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i17);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i17}, null, null);
                return;
            } else {
                if (i14 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f10540m = true;
                return;
            }
        }
        switch (b3) {
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(a3(bArr[i2 + 2] & 255));
                    u0.d.E2(a3(bArr[i2 + 3] & 255));
                    u0.d.F2(a3(bArr[i2 + 4] & 255));
                    u0.d.G2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b11 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b11 >> 7) & 1);
                    qt.y0(2, (b11 >> 6) & 1);
                } else {
                    qt.y0(1, (b11 >> 6) & 1);
                    qt.y0(2, (b11 >> 7) & 1);
                }
                qt.y0(3, (b11 >> 4) & 1);
                qt.y0(4, (b11 >> 5) & 1);
                qt.y0(5, (b11 >> 3) & 1);
                qt.y0(0, (b11 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10530c.j();
        qt.q0(this.f10544q);
        y0.g.f18094d.d(this.f10539l);
        y0.g.f18095e.d(this.f10539l);
        w0.e.f17815a.d(this.f10538k);
        w0.e.f17819e.d(this.f10538k);
        u0.c.f17374a.d(this.f10538k);
        u0.c.f17392s.d(this.f10538k);
        u0.c.f17393t.d(this.f10538k);
        u0.c.f17386m.d(this.f10542o);
        l0.b0.p0(this.f10543p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 118) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 100) {
            if (i2 == 1005 && T2(iArr, 1)) {
                e3(iArr[0]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        z.k.s(227, -112, 2, 51, (byte) iArr[0]);
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final void e3(int i2) {
        f10528r = i2;
        if (i2 == 0) {
            z.k.s(227, 198, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, 198, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, 198, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, f10528r);
        int iB = this.f10530c.b(1, 0);
        int i3 = f10528r;
        if (iB != i3) {
            this.f10530c.g(1, i3);
        }
    }
}
