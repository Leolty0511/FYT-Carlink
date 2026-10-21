package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ft extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f5320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f5321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f5322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f5323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f5324f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f5325g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5329k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5330l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f5331m = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5332n = 7;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o1.o f5333o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f5334p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5335q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f5336r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5337s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5338t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5339u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f5340v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5341w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5342x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f5343y;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 230;
            e.e.f1624b.c();
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.b0.i("sBspAirKey:" + u0.b.E0);
            if (u0.b.E0 != 230) {
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.canbus.g10f.ActivityG10Light"));
            o1.u.e(intent);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f5346a = new Time();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte f5347b = 1;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5346a.setToNow();
            long millis = this.f5346a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            Time time = this.f5346a;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            byte b7 = (byte) time.second;
            if (ft.this.f5336r != millis || ft.this.f5337s != zIs24HourFormat) {
                ft.this.f5336r = millis;
                ft.this.f5337s = zIs24HourFormat ? 1 : 0;
                z.k.s(227, 7, 33, b2, b3, b4, b5, b6, b7);
            }
            int i2 = this.f5346a.year;
            ft.f3(new byte[]{-1, -86, 3, 7, (byte) ((i2 >> 8) & 255), (byte) (i2 & 255), b3, b4, b5, b6, b7, 0});
        }
    }

    public ft() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8314i = 1;
        mtVar.f8311f = 1;
        mtVar.f8318m = new int[]{33, 34, 36, 38, 39, 41};
        this.f5334p = new b();
        this.f5335q = new c();
        this.f5336r = -1L;
        this.f5337s = -1;
        this.f5340v = new byte[1024];
        this.f5341w = 0;
        this.f5342x = 0;
        this.f5343y = 0;
    }

    public static void f3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[2];
        for (int i2 = 3; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f5335q);
        z.k.s(227, 24, 0);
        this.f5333o = e.c.f1608n;
        e.c.f1608n = new a();
        e.e.f1624b.a(this.f5334p, 0);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 3];
            this.f5322d = b3;
            this.f5323e = bArr[i2 + 4];
            this.f5324f = bArr[i2 + 5];
            this.f5325g = bArr[i2 + 6];
            this.f5326h = bArr[i2 + 7];
            qt.y0(30, b3 & 1);
            qt.y0(31, (this.f5322d >> 1) & 1);
            qt.y0(32, (this.f5322d >> 2) & 1);
            qt.y0(33, (this.f5322d >> 4) & 1);
            qt.y0(34, (this.f5322d >> 5) & 1);
            qt.y0(35, (this.f5322d >> 6) & 1);
            qt.y0(36, ((this.f5323e << 8) & 65280) | (this.f5324f & 255));
            qt.y0(37, ((this.f5325g << 8) & 65280) | (this.f5326h & 255));
            return;
        }
        if (b2 == 17) {
            byte b4 = bArr[i2 + 1];
            this.f5320b = b4;
            this.f5321c = bArr[i2 + 2];
            this.f5322d = bArr[i2 + 3];
            this.f5323e = bArr[i2 + 4];
            this.f5324f = bArr[i2 + 5];
            qt.y0(5, (b4 >> 2) & 1);
            qt.y0(1, (this.f5320b >> 3) & 1);
            qt.y0(2, (this.f5320b >> 4) & 1);
            qt.y0(40, (this.f5320b >> 5) & 1);
            qt.y0(41, this.f5321c & 1);
            qt.y0(42, (this.f5321c >> 1) & 1);
            qt.y0(43, (this.f5321c >> 2) & 1);
            qt.y0(44, (this.f5321c >> 3) & 1);
            qt.y0(45, (this.f5321c >> 4) & 1);
            qt.y0(47, (this.f5321c >> 5) & 1);
            qt.y0(46, ((this.f5323e << 8) & 65280) | (this.f5324f & 255));
            return;
        }
        if (b2 != 23) {
            return;
        }
        byte b5 = bArr[i2 + 1];
        this.f5320b = b5;
        this.f5321c = bArr[i2 + 2];
        this.f5322d = bArr[i2 + 3];
        qt.y0(11, b5 & 1);
        qt.y0(20, (this.f5320b >> 3) & 1);
        qt.y0(13, (this.f5320b >> 3) & 1);
        qt.y0(12, (this.f5320b >> 5) & 1);
        qt.y0(22, (this.f5320b >> 6) & 1);
        int i4 = this.f5321c & 7;
        this.f5327i = i4;
        if (i4 < 0) {
            this.f5327i = 0;
        } else if (i4 > 7) {
            this.f5327i = 7;
        }
        qt.y0(18, this.f5327i);
        this.f5328j = 0;
        this.f5329k = 0;
        this.f5330l = 0;
        byte b6 = this.f5321c;
        int i5 = (b6 >> 3) & 7;
        if (i5 == 0) {
            this.f5329k = 1;
        } else if (i5 == 1) {
            this.f5329k = 1;
            this.f5330l = 1;
        } else if (i5 == 2) {
            this.f5330l = 1;
        } else if (i5 == 3) {
            this.f5328j = 1;
            this.f5330l = 1;
        }
        qt.y0(17, (b6 >> 3) & 7);
        qt.y0(14, this.f5328j);
        qt.y0(15, this.f5329k);
        qt.y0(16, this.f5330l);
        qt.y0(19, this.f5322d & 31);
    }

    @Override // k0.lt
    public void W2() {
        qt.z(this.f5335q);
        e.c.f1608n = this.f5333o;
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (e3(iArr, 2)) {
                o1.b0.i("设置命令：" + iArr[0] + " value:" + iArr[1]);
                z.k.s(227, 3, 32, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 4 && e3(iArr, 1)) {
                    f3(new byte[]{-1, -86, 4, 1, (byte) iArr[0], 0});
                    return;
                }
                return;
            }
            if (e3(iArr, 1)) {
                o1.b0.i("发送按键" + iArr[0]);
                f3(new byte[]{-1, -86, 2, 1, (byte) iArr[0], 0});
                return;
            }
            return;
        }
        if (e3(iArr, 3)) {
            this.f5338t = iArr[1];
            this.f5339u = iArr[2];
            o1.b0.i("发送坐标 X：" + this.f5338t + ", Y:" + this.f5339u);
            int i3 = this.f5338t;
            int i4 = this.f5339u;
            f3(new byte[]{-1, -86, 1, 4, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255), 0});
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f5341w + bArr.length > 1024) {
            this.f5341w = 0;
            this.f5342x = 0;
            this.f5343y = 0;
        }
        System.arraycopy(bArr, 0, this.f5340v, this.f5341w, bArr.length);
        int length = this.f5341w + bArr.length;
        this.f5341w = length;
        int i4 = this.f5343y;
        if (i4 != 0) {
            if (i4 >= length) {
                return;
            }
            byte b2 = this.f5340v[2];
            int i5 = 3;
            while (true) {
                i3 = this.f5343y;
                if (i5 >= i3) {
                    break;
                }
                b2 = (byte) (b2 + this.f5340v[i5]);
                i5++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f5340v;
            if (b3 == bArr2[i3]) {
                U2(bArr2, 2, bArr2[2]);
                this.f5342x = this.f5343y + 1;
            } else {
                this.f5342x = 2;
            }
            this.f5343y = 0;
        }
        int i6 = this.f5341w - 3;
        while (true) {
            i2 = this.f5342x;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr3 = this.f5340v;
            if (bArr3[i2] == -1 && bArr3[i2 + 1] == -86) {
                if (this.f5343y > 512) {
                    this.f5343y = 0;
                } else {
                    int i7 = i2 + 4;
                    this.f5343y = i7;
                    if (i7 >= this.f5341w) {
                        this.f5343y = i7 - i2;
                        break;
                    } else {
                        U2(bArr3, i2 + 2, 3);
                        this.f5342x = this.f5343y;
                        this.f5343y = 0;
                    }
                }
            }
            this.f5342x++;
        }
        if (i2 != 0) {
            int i8 = this.f5341w - i2;
            this.f5341w = i8;
            if (i8 != 0) {
                byte[] bArr4 = this.f5340v;
                System.arraycopy(bArr4, i2, bArr4, 0, i8);
            }
            this.f5342x = 0;
        }
    }

    public final boolean e3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
