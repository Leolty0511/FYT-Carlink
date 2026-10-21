package k0;

import android.content.IntentFilter;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class jt extends lt implements o1.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f7094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f7095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f7096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f7097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f7098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f7099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f7100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f7101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f7102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f7103k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f7104l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f7105m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7106n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f7107o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f7108p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public st f7111s;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f7109q = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f7110r = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f7112t = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f7113u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7114v = -1;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f7115a = new Time();

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f7115a = time;
            time.setToNow();
            long millis = this.f7115a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (jt.this.f7113u == millis && jt.this.f7114v == zIs24HourFormat) {
                return;
            }
            jt.this.f7113u = millis;
            jt.this.f7114v = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f7115a;
            z.k.s(227, 35, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f7112t);
        IntentFilter intentFilter = new IntentFilter();
        this.f7111s = new st();
        App.c().registerReceiver(this.f7111s, intentFilter);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -86) {
            int i4 = i2 + 1;
            pt.o(bArr, i4, bArr[i4]);
        }
        switch (b2) {
            case 16:
                byte b3 = bArr[i2 + 1];
                this.f7094b = b3;
                this.f7095c = bArr[i2 + 2];
                this.f7096d = bArr[i2 + 3];
                this.f7097e = bArr[i2 + 4];
                qt.y0(34, b3 & 3);
                qt.y0(35, this.f7095c & 1);
                qt.y0(30, this.f7096d & 3);
                qt.y0(31, this.f7097e & 1);
                break;
            case 17:
                byte b4 = bArr[i2 + 1];
                this.f7094b = b4;
                byte b5 = bArr[i2 + 2];
                this.f7095c = b5;
                qt.y0(32, ((b5 << 8) & 65280) | (b4 & 255));
                break;
            case 18:
                byte b6 = bArr[i2 + 1];
                this.f7094b = b6;
                qt.y0(33, b6 & 7);
                break;
            case 19:
                byte b7 = bArr[i2 + 1];
                this.f7094b = b7;
                this.f7095c = bArr[i2 + 2];
                this.f7096d = bArr[i2 + 3];
                this.f7097e = bArr[i2 + 4];
                this.f7098f = bArr[i2 + 5];
                this.f7099g = bArr[i2 + 6];
                this.f7100h = bArr[i2 + 7];
                this.f7101i = bArr[i2 + 8];
                this.f7102j = bArr[i2 + 9];
                this.f7103k = bArr[i2 + 10];
                this.f7104l = bArr[i2 + 11];
                this.f7105m = bArr[i2 + 12];
                qt.y0(17, b7 & 7);
                qt.y0(11, this.f7095c & 1);
                qt.y0(19, this.f7096d & 1);
                qt.y0(20, this.f7098f & 1);
                qt.y0(21, this.f7099g & 1);
                qt.y0(22, this.f7100h & 1);
                qt.y0(18, this.f7101i & 31);
                qt.y0(12, this.f7102j & 1);
                qt.y0(23, this.f7103k & 31);
                qt.y0(13, this.f7104l & 1);
                qt.y0(25, this.f7105m & 1);
                qt.y0(24, this.f7097e & 7);
                this.f7106n = 0;
                this.f7107o = 0;
                this.f7108p = 0;
                int i5 = this.f7097e & 7;
                if (i5 == 0) {
                    this.f7107o = 1;
                } else if (i5 == 1) {
                    this.f7107o = 1;
                    this.f7108p = 1;
                } else if (i5 == 2) {
                    this.f7108p = 1;
                } else if (i5 == 3) {
                    this.f7106n = 1;
                    this.f7108p = 1;
                } else if (i5 == 4) {
                    this.f7106n = 1;
                }
                qt.y0(14, this.f7106n);
                qt.y0(15, this.f7107o);
                qt.y0(16, this.f7108p);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7112t);
        if (this.f7111s != null) {
            App.c().unregisterReceiver(this.f7111s);
        }
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
            if (e3(iArr, 1)) {
                z.k.s(227, 36, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (e3(iArr, 1)) {
                z.k.s(227, 37, iArr[0]);
            }
        } else if (i2 == 2) {
            if (e3(iArr, 1)) {
                z.k.s(227, 38, iArr[0]);
            }
        } else if (i2 == 3) {
            if (e3(iArr, 1)) {
                z.k.s(227, 39, iArr[0], iArr[1]);
            }
        } else if (i2 == 7 && e3(iArr, 4)) {
            z.k.s(227, 35, iArr[0], iArr[1], iArr[2], iArr[3]);
        }
    }

    public final boolean e3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
