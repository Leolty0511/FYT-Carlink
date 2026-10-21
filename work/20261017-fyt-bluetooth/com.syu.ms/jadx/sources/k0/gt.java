package k0;

import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class gt extends lt implements o1.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f5664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f5665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f5666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f5667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f5668f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f5669g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5670h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f5671i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f5672j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f5673k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f5674l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f5675m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5676n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5677o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5678p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f5679q = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5680r = 7;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f5681s = new a();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f5682t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f5683u = -1;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f5684a = new Time();

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f5684a = time;
            time.setToNow();
            long millis = this.f5684a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (gt.this.f5682t == millis && gt.this.f5683u == zIs24HourFormat) {
                return;
            }
            gt.this.f5682t = millis;
            gt.this.f5683u = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f5684a;
            z.k.s(227, 35, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 16:
                byte b2 = bArr[i2 + 1];
                this.f5664b = b2;
                this.f5665c = bArr[i2 + 2];
                this.f5666d = bArr[i2 + 3];
                this.f5667e = bArr[i2 + 4];
                qt.y0(34, b2 & 3);
                qt.y0(35, this.f5665c & 1);
                qt.y0(30, this.f5666d & 3);
                qt.y0(31, this.f5667e & 1);
                break;
            case 17:
                byte b3 = bArr[i2 + 1];
                this.f5664b = b3;
                byte b4 = bArr[i2 + 2];
                this.f5665c = b4;
                qt.y0(32, ((b4 << 8) & 65280) | (b3 & 255));
                break;
            case 18:
                byte b5 = bArr[i2 + 1];
                this.f5664b = b5;
                qt.y0(33, b5 & 7);
                break;
            case 19:
                byte b6 = bArr[i2 + 1];
                this.f5664b = b6;
                this.f5665c = bArr[i2 + 2];
                this.f5666d = bArr[i2 + 3];
                this.f5667e = bArr[i2 + 4];
                this.f5668f = bArr[i2 + 5];
                this.f5669g = bArr[i2 + 6];
                this.f5670h = bArr[i2 + 7];
                this.f5671i = bArr[i2 + 8];
                this.f5672j = bArr[i2 + 9];
                this.f5673k = bArr[i2 + 10];
                this.f5674l = bArr[i2 + 11];
                this.f5675m = bArr[i2 + 12];
                qt.y0(17, b6 & 7);
                qt.y0(11, this.f5665c & 1);
                qt.y0(19, this.f5666d & 1);
                qt.y0(20, this.f5668f & 1);
                qt.y0(21, this.f5669g & 1);
                qt.y0(22, this.f5670h & 1);
                qt.y0(18, this.f5671i & 31);
                qt.y0(12, this.f5672j & 1);
                qt.y0(23, this.f5673k & 31);
                qt.y0(13, this.f5674l & 1);
                qt.y0(25, this.f5675m & 1);
                qt.y0(24, this.f5667e & 7);
                this.f5676n = 0;
                this.f5677o = 0;
                this.f5678p = 0;
                int i4 = this.f5667e & 7;
                if (i4 == 0) {
                    this.f5677o = 1;
                } else if (i4 == 1) {
                    this.f5677o = 1;
                    this.f5678p = 1;
                } else if (i4 == 2) {
                    this.f5678p = 1;
                } else if (i4 == 3) {
                    this.f5676n = 1;
                    this.f5678p = 1;
                } else if (i4 == 4) {
                    this.f5676n = 1;
                }
                qt.y0(14, this.f5676n);
                qt.y0(15, this.f5677o);
                qt.y0(16, this.f5678p);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
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
