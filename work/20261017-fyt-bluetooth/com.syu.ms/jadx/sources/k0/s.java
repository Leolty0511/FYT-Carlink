package k0;

import android.media.MediaPlayer;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class s extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f10080l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10084e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f10081b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f10082c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10083d = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10085f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10086g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 5}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10087h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10088i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f10089j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10090k = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 34, 0);
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (s.this.f10089j == millis && s.this.f10090k == i2) {
                return;
            }
            s.this.f10089j = millis;
            s.this.f10090k = i2;
            int i3 = time.hour;
            int i4 = time.minute;
            int i5 = time.second;
            if (i2 != 0 && i3 > 12) {
                i3 -= 12;
            }
            z.k.s(227, 198, 4, 80, (i2 << 7) | i3, i4, i5);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f10082c.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        z.k.s(227, 144, 2, 51, 1);
        z.k.s(227, 144, 2, 51, 2);
        f3(this.f10082c.b(1, 0));
        qt.z(this.f10088i);
        if (nt.a()) {
            u0.c.f17379f.a(this.f10087h, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            int i4 = i2 + 2;
            byte b3 = bArr[i4];
            int i5 = i2 + 3;
            byte b4 = bArr[i5];
            if (b3 == 24 && b4 == 1) {
                if (o1.u.Y0().equals("com.syu.canbus")) {
                    o1.u.k();
                } else {
                    o1.u.v();
                }
            }
            if (nt.a()) {
                byte b5 = bArr[i4];
                byte b6 = bArr[i5];
                this.f10085f = b5 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f10086g;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f10085f;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f10084e = i6;
                        break;
                    }
                    i6++;
                }
                int i8 = b6 & 255;
                if (i8 == 1) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i8 == 0) {
                        int i9 = this.f10084e;
                        if (i9 < iArr.length && i9 != 255) {
                            l0.b0.l0(iArr[i9][1], 1);
                        }
                        this.f10084e = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b2 == 36) {
            byte b7 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            } else {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            }
            qt.y0(3, (b7 >> 4) & 1);
            qt.y0(4, (b7 >> 5) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            qt.y0(0, (b7 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 != 51) {
            return;
        }
        byte b8 = bArr[i2 + 2];
        int i10 = 11;
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
            int i11 = bArr[i2 + 16] & 255;
            if (i11 < 0) {
                i10 = 0;
            } else if (i11 <= 11) {
                i10 = i11;
            }
            qt.y0(109, this.f10081b[i10]);
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
        int i12 = bArr[i2 + 19] & 255;
        if (i12 < 0) {
            i10 = 0;
        } else if (i12 <= 11) {
            i10 = i12;
        }
        qt.y0(109, this.f10081b[i10]);
    }

    @Override // k0.lt
    public void W2() {
        this.f10082c.j();
        qt.q0(this.f10088i);
        if (nt.a()) {
            u0.c.f17379f.d(this.f10087h);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 117) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 100) {
            if (T2(iArr, 1)) {
                z.k.s(227, 144, 2, 51, iArr[0]);
            }
        } else if (i2 == 101) {
            z.k.s(227, 144, 2, 51, 3);
        } else if (i2 == 1005 && T2(iArr, 1)) {
            f3(iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public final void f3(int i2) {
        f10080l = i2;
        if (i2 == 0) {
            z.k.s(227, 198, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, 198, 2, 64, 0);
        } else if (i2 == 2) {
            z.k.s(227, 198, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, f10080l);
        int iB = this.f10082c.b(1, 0);
        int i3 = f10080l;
        if (iB != i3) {
            this.f10082c.g(1, i3);
        }
    }
}
