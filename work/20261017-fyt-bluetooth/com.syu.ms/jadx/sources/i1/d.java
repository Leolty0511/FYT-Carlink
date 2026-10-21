package i1;

import android.content.ComponentName;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseIntArray;
import o1.h0;

/* JADX INFO: loaded from: classes2.dex */
public class d extends s<b> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2603h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2604i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2605j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2606k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2607l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2608m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2609n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public h0 f2610o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public SparseIntArray f2611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f2612q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Integer[] f2613r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f2614s;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f2607l = 0;
            d.this.f2608m = 0;
        }
    }

    public static class b extends e {
        @Override // i1.e
        public boolean a(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public boolean d() {
            this.f2619d = 2;
            return false;
        }

        @Override // i1.e
        public int[] f() {
            return null;
        }
    }

    public d(int i2, int i3) {
        super(i2, i3);
        this.f2603h = 255;
        this.f2604i = 0L;
        this.f2605j = 0;
        this.f2606k = 0;
        this.f2607l = 0;
        this.f2608m = 0;
        this.f2609n = false;
        this.f2610o = new h0("wireless_steer");
        this.f2611p = new SparseIntArray();
        this.f2612q = new a();
        this.f2613r = new Integer[2];
        this.f2614s = 0L;
        b bVar = new b();
        this.f2721a = bVar;
        bVar.h();
        y();
    }

    @Override // i1.s
    public s<b>.a i(int i2) {
        if (i2 == 101 || i2 == 100) {
            return super.i(i2);
        }
        return null;
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 200:
                if (iArr == null || iArr.length <= 0) {
                    return false;
                }
                if (iArr[0] != 1) {
                    this.f2603h = 255;
                    this.f2609n = false;
                    if (this.f2611p.size() > 0) {
                        this.f2610o.q(0, this.f2611p.get(9, -1));
                        this.f2610o.q(1, this.f2611p.get(8, -1));
                        this.f2610o.q(2, this.f2611p.get(5, -1));
                        this.f2610o.q(3, this.f2611p.get(6, -1));
                        this.f2610o.q(4, this.f2611p.get(1, -1));
                        this.f2610o.q(5, this.f2611p.get(128, -1));
                        this.f2610o.q(6, this.f2611p.get(144, -1));
                    } else {
                        this.f2610o.q(0, 255);
                        this.f2610o.q(1, 255);
                        this.f2610o.q(2, 255);
                        this.f2610o.q(3, 255);
                        this.f2610o.q(4, 255);
                        this.f2610o.q(5, 255);
                        this.f2610o.q(6, 255);
                    }
                    this.f2610o.d();
                } else {
                    this.f2609n = true;
                }
                break;
            case 201:
                if (iArr == null || iArr.length <= 0) {
                    return false;
                }
                this.f2603h = iArr[0];
                break;
            case 202:
                this.f2603h = 255;
                this.f2611p.clear();
                break;
            default:
                return false;
        }
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        for (int i2 : iArr) {
            Integer[] numArr = this.f2613r;
            if (numArr[0] == null) {
                numArr[0] = Integer.valueOf(i2);
            } else if ((numArr[0].intValue() ^ 165) == i2) {
                this.f2613r[1] = Integer.valueOf(i2);
                this.f2605j = this.f2613r[0].intValue() & 15;
                this.f2606k = this.f2613r[0].intValue() & 240;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.f2604i >= 200) {
                    this.f2604i = jElapsedRealtime;
                    if (this.f2605j != 0 && this.f2606k != 0) {
                        x();
                    }
                }
                Integer[] numArr2 = this.f2613r;
                numArr2[0] = null;
                numArr2[1] = null;
            } else {
                this.f2613r[0] = Integer.valueOf(i2);
                this.f2613r[1] = null;
            }
        }
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        if (i2 != 100) {
            return false;
        }
        int size = this.f2611p.size();
        for (int i4 = 0; i4 < size; i4++) {
            int iKeyAt = this.f2611p.keyAt(i4);
            int i5 = this.f2611p.get(iKeyAt);
            if (i5 >= 0) {
                o1.x.v(bVar, i2, iKeyAt, i5);
            }
        }
        return true;
    }

    public final void x() {
        if (this.f2609n) {
            int i2 = this.f2603h;
            if (i2 == 255) {
                r(101, 255, 0);
                return;
            }
            int i3 = this.f2606k;
            if (i3 != 16) {
                this.f2611p.put(i3, i2);
                r(101, this.f2606k, this.f2603h);
                return;
            } else {
                this.f2611p.put(this.f2605j, i2);
                r(101, this.f2605j, this.f2603h);
                return;
            }
        }
        int i4 = this.f2608m;
        int i5 = this.f2606k;
        if (i4 == i5 && this.f2607l == this.f2605j) {
            return;
        }
        this.f2608m = i5;
        this.f2607l = this.f2605j;
        o1.j.e(o1.l.a(), this.f2612q);
        o1.j.b(o1.l.a(), this.f2612q, 300L);
        int i6 = this.f2611p.get(255 & this.f2606k, -1);
        if (i6 == -1) {
            i6 = this.f2611p.get(this.f2605j, -1);
        }
        switch (i6) {
            case 0:
                u0.d.U1(2);
                break;
            case 1:
                u0.d.A1();
                break;
            case 2:
                u0.d.C1();
                break;
            case 3:
                u0.d.t1();
                break;
            case 4:
                u0.d.u1();
                break;
            case 5:
                u0.d.O1();
                break;
            case 6:
                u0.d.M1();
                break;
            case 7:
                u0.d.N1();
                break;
            case 8:
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("net.easyconn", "net.easyconn.MainActivity"));
                o1.u.e(intent);
                break;
            case 9:
                u0.d.B1();
                break;
            case 10:
                u0.d.y1();
                break;
            case 11:
                u0.d.I1();
                break;
            case 12:
                u0.d.w1();
                break;
            case 13:
                h0.c.f2425b.h(1);
                break;
            case 14:
                u0.d.D1();
                break;
            case 15:
                o1.u.a1();
                break;
            case 16:
                u0.d.v1();
                break;
            case 17:
                u0.d.E1();
                break;
            case 18:
                u0.d.I3(60, 5);
                break;
            case 19:
                u0.d.I3(60, 6);
                break;
            case 20:
                u0.d.I3(60, 0);
                break;
            case 21:
                if (!o1.u.b0()) {
                    o1.u.E();
                } else {
                    o1.u.k();
                }
                break;
        }
    }

    public final void y() {
        z(0, this.f2610o.h(0, 255));
        z(1, this.f2610o.h(1, 255));
        z(2, this.f2610o.h(2, 255));
        z(3, this.f2610o.h(3, 255));
        z(4, this.f2610o.h(4, 255));
        z(5, this.f2610o.h(5, 255));
        z(6, this.f2610o.h(6, 255));
    }

    public void z(int i2, int i3) {
        int i4;
        switch (i2) {
            case 0:
                i4 = 9;
                break;
            case 1:
                i4 = 8;
                break;
            case 2:
                i4 = 5;
                break;
            case 3:
                i4 = 6;
                break;
            case 4:
                i4 = 1;
                break;
            case 5:
                i4 = 128;
                break;
            case 6:
                i4 = 144;
                break;
            default:
                i4 = 0;
                break;
        }
        if (i3 != 255) {
            this.f2611p.put(i4, i3);
        }
    }
}
