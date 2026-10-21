package com.android.internal.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f1481r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f1484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f1485d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1489h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1494m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1495n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1496o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1497p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1498q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f1482a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Interpolator f1483b = new AccelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f1486e = {0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f1487f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float[] f1490i = {0.0f, 0.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float[] f1491j = {0.0f, 0.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float[] f1492k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public static class b extends a {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final AbsListView f1499s;

        public b(AbsListView absListView) {
            super(absListView);
            this.f1499s = absListView;
        }

        @Override // com.android.internal.widget.a
        public boolean m(int i2) {
            return false;
        }

        @Override // com.android.internal.widget.a
        public boolean n(int i2) {
            AbsListView absListView = this.f1499s;
            int count = absListView.getCount();
            int childCount = absListView.getChildCount();
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            int i3 = firstVisiblePosition + childCount;
            if (i2 > 0) {
                if (i3 >= count && absListView.getChildAt(childCount - 1).getBottom() <= absListView.getHeight()) {
                    return false;
                }
            } else {
                if (i2 >= 0) {
                    return false;
                }
                if (firstVisiblePosition <= 0 && absListView.getChildAt(0).getTop() >= 0) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.android.internal.widget.a
        public void v(int i2, int i3) {
            this.f1499s.scrollListBy(i3);
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1502c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1503d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f1509j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1510k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f1504e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f1508i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f1505f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1506g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1507h = 0;

        public void a() {
            if (this.f1505f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j2 = jCurrentAnimationTimeMillis - this.f1505f;
            this.f1505f = jCurrentAnimationTimeMillis;
            float f2 = j2 * fG;
            this.f1506g = (int) (this.f1502c * f2);
            this.f1507h = (int) (f2 * this.f1503d);
        }

        public int b() {
            return this.f1506g;
        }

        public int c() {
            return this.f1507h;
        }

        public int d() {
            float f2 = this.f1502c;
            return (int) (f2 / Math.abs(f2));
        }

        public final float e(long j2) {
            long j3 = this.f1504e;
            if (j2 < j3) {
                return 0.0f;
            }
            long j4 = this.f1508i;
            if (j4 < 0 || j2 < j4) {
                return a.q((j2 - j3) / this.f1500a, 0.0f, 1.0f) * 0.5f;
            }
            float f2 = this.f1509j;
            return (1.0f - f2) + (f2 * a.q((j2 - j4) / this.f1510k, 0.0f, 1.0f));
        }

        public int f() {
            float f2 = this.f1503d;
            return (int) (f2 / Math.abs(f2));
        }

        public final float g(float f2) {
            return ((-4.0f) * f2 * f2) + (f2 * 4.0f);
        }

        public boolean h() {
            return this.f1508i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f1508i + ((long) this.f1510k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1510k = a.r((int) (jCurrentAnimationTimeMillis - this.f1504e), 0, this.f1501b);
            this.f1509j = e(jCurrentAnimationTimeMillis);
            this.f1508i = jCurrentAnimationTimeMillis;
        }

        public void j(int i2) {
            this.f1501b = i2;
        }

        public void k(int i2) {
            this.f1500a = i2;
        }

        public void l(float f2, float f3) {
            this.f1502c = f2;
            this.f1503d = f3;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1504e = jCurrentAnimationTimeMillis;
            this.f1508i = -1L;
            this.f1505f = jCurrentAnimationTimeMillis;
            this.f1509j = 0.5f;
            this.f1506g = 0;
            this.f1507h = 0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f1496o) {
                if (a.this.f1494m) {
                    a.this.f1494m = false;
                    a.this.f1482a.m();
                }
                c cVar = a.this.f1482a;
                if (cVar.h() || !a.this.G()) {
                    a.this.f1496o = false;
                    return;
                }
                if (a.this.f1495n) {
                    a.this.f1495n = false;
                    a.this.o();
                }
                cVar.a();
                a.this.v(cVar.b(), cVar.c());
                a.this.f1484c.postOnAnimation(this);
            }
        }
    }

    public a(View view) {
        this.f1484c = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (int) ((1575.0f * f2) + 0.5f);
        A(f3, f3);
        float f4 = (int) ((f2 * 315.0f) + 0.5f);
        B(f4, f4);
        x(1);
        z(Float.MAX_VALUE, Float.MAX_VALUE);
        E(0.2f, 0.2f);
        F(1.0f, 1.0f);
        w(f1481r);
        D(500);
        C(500);
    }

    public static float q(float f2, float f3, float f4) {
        if (f2 > f4) {
            return f4;
        }
        return f2 < f3 ? f3 : f2;
    }

    public static int r(int i2, int i3, int i4) {
        if (i2 > i4) {
            return i4;
        }
        return i2 < i3 ? i3 : i2;
    }

    public a A(float f2, float f3) {
        float[] fArr = this.f1492k;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a B(float f2, float f3) {
        float[] fArr = this.f1491j;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a C(int i2) {
        this.f1482a.j(i2);
        return this;
    }

    public a D(int i2) {
        this.f1482a.k(i2);
        return this;
    }

    public a E(float f2, float f3) {
        float[] fArr = this.f1486e;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a F(float f2, float f3) {
        float[] fArr = this.f1490i;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public final boolean G() {
        c cVar = this.f1482a;
        int iF = cVar.f();
        int iD = cVar.d();
        return (iF != 0 && n(iF)) || (iD != 0 && m(iD));
    }

    public final void H() {
        int i2;
        if (this.f1485d == null) {
            this.f1485d = new d();
        }
        this.f1496o = true;
        this.f1494m = true;
        if (this.f1493l || (i2 = this.f1489h) <= 0) {
            this.f1485d.run();
        } else {
            this.f1484c.postOnAnimationDelayed(this.f1485d, i2);
        }
        this.f1493l = true;
    }

    public abstract boolean m(int i2);

    public abstract boolean n(int i2);

    public final void o() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f1484c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f1497p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                u();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    u();
                }
            }
            return this.f1498q && this.f1496o;
        }
        this.f1495n = true;
        this.f1493l = false;
        this.f1482a.l(p(0, motionEvent.getX(), view.getWidth(), this.f1484c.getWidth()), p(1, motionEvent.getY(), view.getHeight(), this.f1484c.getHeight()));
        if (!this.f1496o && G()) {
            H();
        }
        if (this.f1498q) {
            return false;
        }
    }

    public final float p(int i2, float f2, float f3, float f4) {
        float fT = t(this.f1486e[i2], f3, this.f1487f[i2], f2);
        if (fT == 0.0f) {
            return 0.0f;
        }
        float f5 = this.f1490i[i2];
        float f6 = this.f1491j[i2];
        float f7 = this.f1492k[i2];
        float f8 = f5 * f4;
        return fT > 0.0f ? q(fT * f8, f6, f7) : -q((-fT) * f8, f6, f7);
    }

    public final float s(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f1488g;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                if (this.f1496o && i2 == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
        return 0.0f;
    }

    public final float t(float f2, float f3, float f4, float f5) {
        float interpolation;
        float fQ = q(f2 * f3, 0.0f, f4);
        float fS = s(f3 - f5, fQ) - s(f5, fQ);
        if (fS < 0.0f) {
            interpolation = -this.f1483b.getInterpolation(-fS);
        } else {
            if (fS <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f1483b.getInterpolation(fS);
        }
        return q(interpolation, -1.0f, 1.0f);
    }

    public final void u() {
        if (this.f1494m) {
            this.f1496o = false;
        } else {
            this.f1482a.i();
        }
    }

    public abstract void v(int i2, int i3);

    public a w(int i2) {
        this.f1489h = i2;
        return this;
    }

    public a x(int i2) {
        this.f1488g = i2;
        return this;
    }

    public a y(boolean z2) {
        if (this.f1497p && !z2) {
            u();
        }
        this.f1497p = z2;
        return this;
    }

    public a z(float f2, float f3) {
        float[] fArr = this.f1487f;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }
}
