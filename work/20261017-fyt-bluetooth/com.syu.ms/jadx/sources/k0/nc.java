package k0;

import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class nc extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f8414s;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8419f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f8415b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f8416c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8417d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8418e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8420g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f8421h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 12}, new int[]{48, 12}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8422i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8423j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8424k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f8425l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f8426m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8427n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8428o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8429p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f8430q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8431r = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nc.this.f8423j--;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.T(a.b.O)) {
                o1.u.k();
            }
            l0.b0.o0(nc.this.f8424k);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nc ncVar = nc.this;
            byte b2 = (byte) (ncVar.f8426m + 1);
            ncVar.f8426m = b2;
            if (b2 > 5) {
                l0.b0.o0(ncVar.f8427n);
                nc.this.f8426m = (byte) 0;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nc ncVar = nc.this;
            int i2 = ncVar.f8418e;
            if (i2 > 0) {
                ncVar.f8418e = i2 - 1;
            }
            if (ncVar.f8418e == 0) {
                l0.c0.e();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
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
        this.f8416c.a();
        qt.z(this.f8431r);
        d3(this.f8416c.b(1, 0));
        if (nt.a()) {
            y0.g.f18094d.a(this.f8429p, 1);
            y0.g.f18095e.a(this.f8429p, 1);
            w0.e.f17815a.a(this.f8428o, 1);
            w0.e.f17819e.a(this.f8428o, 1);
            u0.c.f17374a.a(this.f8428o, 1);
            u0.c.f17392s.a(this.f8428o, 1);
            u0.c.f17393t.a(this.f8428o, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -47) {
            if (nt.f8637c != 1 || (i4 = h0.c.E) == 4 || i4 == 5) {
                return;
            }
            int i5 = i2 + 3;
            byte b4 = bArr[i5];
            if (nt.f8637c == 1) {
                if (nt.W == 0) {
                    if (this.f8422i != ((bArr[i5] >> 7) & 1)) {
                        int i6 = (bArr[i5] >> 7) & 1;
                        this.f8422i = i6;
                        if (i6 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                            this.f8423j = 20;
                            l0.b0.a(this.f8424k);
                        } else if (this.f8423j > 0) {
                            o1.j.e(o1.l.a(), this.f8425l);
                            o1.j.b(o1.l.a(), this.f8425l, 4000L);
                        } else {
                            if (o1.u.T(a.b.O)) {
                                o1.u.k();
                            }
                            l0.b0.o0(this.f8424k);
                        }
                    }
                } else if (this.f8422i != ((bArr[i5] >> 2) & 1)) {
                    int i7 = (bArr[i5] >> 2) & 1;
                    this.f8422i = i7;
                    if (i7 == 1) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        }
                        this.f8423j = 20;
                        l0.b0.a(this.f8424k);
                    } else if (this.f8423j > 0) {
                        o1.j.e(o1.l.a(), this.f8425l);
                        o1.j.b(o1.l.a(), this.f8425l, 4000L);
                    } else {
                        if (o1.u.T(a.b.O)) {
                            o1.u.k();
                        }
                        l0.b0.o0(this.f8424k);
                    }
                }
            }
            int i8 = (b4 >> 6) & 1;
            if (u0.b.f17347o == 0 && i8 == 1) {
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
            int i9 = i2 + 2;
            byte b5 = bArr[i9];
            int i10 = i2 + 3;
            byte b6 = bArr[i10];
            if (b5 == 24 && b6 == 1) {
                if (o1.u.Y0().equals("com.syu.canbus")) {
                    o1.u.k();
                } else {
                    o1.u.v();
                }
            }
            if (nt.a()) {
                byte b7 = bArr[i9];
                byte b8 = bArr[i10];
                this.f8420g = b7 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f8421h;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    int i12 = this.f8420g;
                    if (i12 == iArr[i11][0]) {
                        if (i12 == 0) {
                            break;
                        }
                        this.f8419f = i11;
                        break;
                    }
                    i11++;
                }
                if (this.f8420g == 10) {
                    if ((b8 & 255) == 1) {
                        int i13 = h0.c.E;
                        if (i13 == 3 || i13 == 4 || i13 == 5) {
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
                if ((b8 & 255) != 0) {
                    if (i11 >= iArr.length || (b2 = this.f8426m) != 0) {
                        return;
                    }
                    this.f8426m = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i11][1], 0);
                    l0.b0.a(this.f8427n);
                    return;
                }
                int i14 = this.f8419f;
                if (i14 < iArr.length && i14 != 255) {
                    l0.b0.l0(iArr[i14][1], 1);
                    l0.b0.o0(this.f8427n);
                    this.f8426m = (byte) 0;
                }
                this.f8419f = 255;
                return;
            }
            return;
        }
        if (b3 == 41) {
            if (this.f8430q) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
            return;
        }
        if (b3 == 51) {
            byte b9 = bArr[i2 + 2];
            int i15 = 11;
            if (b9 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                byte b10 = bArr[i2 + 15];
                qt.y0(104, b10 & 3);
                qt.y0(105, (b10 >> 2) & 3);
                qt.y0(106, (b10 >> 4) & 3);
                qt.y0(107, (b10 >> 6) & 1);
                qt.y0(108, (b10 >> 7) & 1);
                int i16 = bArr[i2 + 16] & 255;
                if (i16 < 0) {
                    i15 = 0;
                } else if (i16 <= 11) {
                    i15 = i16;
                }
                qt.y0(109, this.f8415b[i15]);
                return;
            }
            if (b9 != 2) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            byte b11 = bArr[i2 + 18];
            qt.y0(104, b11 & 3);
            qt.y0(105, (b11 >> 2) & 3);
            qt.y0(106, (b11 >> 4) & 3);
            qt.y0(107, (b11 >> 6) & 1);
            qt.y0(108, (b11 >> 7) & 1);
            int i17 = bArr[i2 + 19] & 255;
            if (i17 < 0) {
                i15 = 0;
            } else if (i17 <= 11) {
                i15 = i17;
            }
            qt.y0(109, this.f8415b[i15]);
            return;
        }
        if (b3 == 125) {
            int i18 = bArr[i2 + 2] & 255;
            if (i18 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i19 = i2 + 3;
                    l0.c0.b((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                } else {
                    int i20 = i2 + 3;
                    l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
                    return;
                }
            }
            if (i18 == 3) {
                int i21 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i21);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i21}, null, null);
                return;
            } else {
                if (i18 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8430q = true;
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
                byte b12 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b12 >> 7) & 1);
                    qt.y0(2, (b12 >> 6) & 1);
                } else {
                    qt.y0(1, (b12 >> 6) & 1);
                    qt.y0(2, (b12 >> 7) & 1);
                }
                qt.y0(3, (b12 >> 4) & 1);
                qt.y0(4, (b12 >> 5) & 1);
                qt.y0(5, (b12 >> 3) & 1);
                qt.y0(0, (b12 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8416c.j();
        qt.q0(this.f8431r);
        y0.g.f18094d.d(this.f8429p);
        y0.g.f18095e.d(this.f8429p);
        w0.e.f17815a.d(this.f8428o);
        w0.e.f17819e.d(this.f8428o);
        u0.c.f17374a.d(this.f8428o);
        u0.c.f17392s.d(this.f8428o);
        u0.c.f17393t.d(this.f8428o);
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
                d3(iArr[0]);
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
        if (i2 != 1) {
            if (i2 == 2) {
                return 4;
            }
            if (i2 == 3) {
                return 8;
            }
            if (i2 == 4) {
                return 15;
            }
        }
        return 0;
    }

    public final void d3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 2) {
            i2 = 2;
        }
        f8414s = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        }
        if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, f8414s);
        int iB = this.f8416c.b(1, 0);
        int i3 = f8414s;
        if (iB != i3) {
            this.f8416c.g(1, i3);
        }
    }
}
