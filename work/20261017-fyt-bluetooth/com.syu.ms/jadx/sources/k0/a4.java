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
public class a4 extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f3139o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3144f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3140b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f3141c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3142d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3143e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3145g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3146h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}, new int[]{48, 12}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f3147i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3148j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3149k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3150l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3151m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f3152n = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4 a4Var = a4.this;
            byte b2 = (byte) (a4Var.f3147i + 1);
            a4Var.f3147i = b2;
            if (b2 > 5) {
                l0.b0.o0(a4Var.f3148j);
                a4.this.f3147i = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4 a4Var = a4.this;
            int i2 = a4Var.f3143e;
            if (i2 > 0) {
                a4Var.f3143e = i2 - 1;
            }
            if (a4Var.f3143e == 0) {
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
        this.f3141c.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        c3(this.f3141c.b(1, 0));
        qt.z(this.f3152n);
        if (nt.a()) {
            y0.g.f18094d.a(this.f3150l, 1);
            y0.g.f18095e.a(this.f3150l, 1);
            w0.e.f17815a.a(this.f3149k, 1);
            w0.e.f17819e.a(this.f3149k, 1);
            u0.c.f17374a.a(this.f3149k, 1);
            u0.c.f17392s.a(this.f3149k, 1);
            u0.c.f17393t.a(this.f3149k, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 != -48) {
            if (b3 == 32) {
                int i4 = i2 + 2;
                byte b4 = bArr[i4];
                int i5 = i2 + 3;
                byte b5 = bArr[i5];
                if (b4 == 24 && b5 == 1) {
                    if (o1.u.Y0().equals("com.syu.canbus")) {
                        o1.u.k();
                    } else {
                        o1.u.v();
                    }
                }
                if (nt.a()) {
                    byte b6 = bArr[i4];
                    byte b7 = bArr[i5];
                    this.f3145g = b6 & 255;
                    int i6 = 0;
                    while (true) {
                        iArr = this.f3146h;
                        if (i6 >= iArr.length) {
                            break;
                        }
                        int i7 = this.f3145g;
                        if (i7 == iArr[i6][0]) {
                            if (i7 == 0) {
                                break;
                            }
                            this.f3144f = i6;
                            break;
                        }
                        i6++;
                    }
                    if (this.f3145g == 10) {
                        if ((b7 & 255) == 1) {
                            int i8 = h0.c.E;
                            if (i8 == 3 || i8 == 4 || i8 == 5) {
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
                        if (i6 >= iArr.length || (b2 = this.f3147i) != 0) {
                            return;
                        }
                        this.f3147i = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i6][1], 0);
                        l0.b0.a(this.f3148j);
                        return;
                    }
                    int i9 = this.f3144f;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                        l0.b0.o0(this.f3148j);
                        this.f3147i = (byte) 0;
                    }
                    this.f3144f = 255;
                    return;
                }
                return;
            }
            if (b3 == 41) {
                if (this.f3151m) {
                    return;
                }
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
                return;
            }
            if (b3 != 51) {
                if (b3 == 125) {
                    int i10 = bArr[i2 + 2] & 255;
                    if (i10 == 1) {
                        if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i11 = i2 + 3;
                            l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                            return;
                        } else {
                            int i12 = i2 + 3;
                            l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                            return;
                        }
                    }
                    if (i10 == 3) {
                        int i13 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                        qt.y0(1031, i13);
                        o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
                        return;
                    } else {
                        if (i10 != 8) {
                            return;
                        }
                        qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                        this.f3151m = true;
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
                        byte b8 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b8 >> 7) & 1);
                            qt.y0(2, (b8 >> 6) & 1);
                        } else {
                            qt.y0(1, (b8 >> 6) & 1);
                            qt.y0(2, (b8 >> 7) & 1);
                        }
                        qt.y0(3, (b8 >> 4) & 1);
                        qt.y0(4, (b8 >> 5) & 1);
                        qt.y0(5, (b8 >> 3) & 1);
                        qt.y0(0, (b8 >> 2) & 1);
                        break;
                }
                return;
            }
        }
        byte b9 = bArr[i2 + 2];
        int i14 = 11;
        if (b9 == 1) {
            qt.y0(98, bArr[i2 + 3] & 255);
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(102, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(103, (65280 & (bArr[i2 + 13] << 8)) | (bArr[i2 + 14] & 255));
            byte b10 = bArr[i2 + 15];
            qt.y0(104, b10 & 3);
            qt.y0(105, (b10 >> 2) & 3);
            qt.y0(106, (b10 >> 4) & 3);
            qt.y0(107, (b10 >> 6) & 1);
            qt.y0(108, (b10 >> 7) & 1);
            int i15 = bArr[i2 + 16] & 255;
            if (i15 < 0) {
                i14 = 0;
            } else if (i15 <= 11) {
                i14 = i15;
            }
            qt.y0(109, this.f3140b[i14]);
            return;
        }
        if (b9 != 2) {
            return;
        }
        qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
        qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
        qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
        qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
        qt.y0(114, ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
        qt.y0(115, (65280 & (bArr[i2 + 16] << 8)) | (bArr[i2 + 17] & 255));
        byte b11 = bArr[i2 + 18];
        qt.y0(104, b11 & 3);
        qt.y0(105, (b11 >> 2) & 3);
        qt.y0(106, (b11 >> 4) & 3);
        qt.y0(107, (b11 >> 6) & 1);
        qt.y0(108, (b11 >> 7) & 1);
        int i16 = bArr[i2 + 19] & 255;
        if (i16 < 0) {
            i14 = 0;
        } else if (i16 <= 11) {
            i14 = i16;
        }
        qt.y0(109, this.f3140b[i14]);
    }

    @Override // k0.lt
    public void W2() {
        this.f3141c.j();
        qt.q0(this.f3152n);
        y0.g.f18094d.d(this.f3150l);
        y0.g.f18095e.d(this.f3150l);
        w0.e.f17815a.d(this.f3149k);
        w0.e.f17819e.d(this.f3149k);
        u0.c.f17374a.d(this.f3149k);
        u0.c.f17392s.d(this.f3149k);
        u0.c.f17393t.d(this.f3149k);
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
                c3(iArr[0]);
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

    public final void c3(int i2) {
        f3139o = i2;
        if (i2 == 0) {
            z.k.s(227, 198, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, 198, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, 198, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, f3139o);
        int iB = this.f3141c.b(1, 0);
        int i3 = f3139o;
        if (iB != i3) {
            this.f3141c.g(1, i3);
        }
    }
}
