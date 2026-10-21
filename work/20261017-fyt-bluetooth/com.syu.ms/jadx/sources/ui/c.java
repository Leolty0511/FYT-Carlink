package ui;

import a.f;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import app.App;
import com.syu.ms.R;
import o1.j0;
import o1.m;
import o1.q0;
import o1.r0;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class c extends ui.b.a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PopupWindow f17570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f17571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f17572d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f17577i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f17578j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f17579k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f17580l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f17581m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f17582n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17573e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17574f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17575g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17576h = 255;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f17583o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f17584p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f17585q = new RunnableC0118c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f17586r = "ui/guesture/";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f17587s = 216;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f17588t = 214;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f17589u = 40;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f17590v = 20;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f17591w = 174;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f17592x = 4;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f17593y = 216;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f17594z = 214;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f17570b == null) {
                PopupWindow popupWindow = c.this.f17570b = new PopupWindow(App.c());
                popupWindow.setWidth(-2);
                popupWindow.setHeight(-2);
                popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                popupWindow.setContentView(c.this.new d(App.c()));
                c.this.f17570b.setAnimationStyle(R.style.AnimScale);
            }
            a.e.b(c.this.f17570b);
            if (f.s().getWindowToken() == null) {
                m.a().postDelayed(this, 1L);
                return;
            }
            if (!q0.v()) {
                h.R(1);
                c.this.f17570b.showAtLocation(f.s(), 17, 0, 214 - (f.i() >> 1));
            } else if (u0.b.h2) {
                h.R(1);
                c.this.f17570b.showAtLocation(f.s(), 48, 0, 0);
            }
            c.this.A();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17571c.invalidate();
            c.this.A();
        }
    }

    /* JADX INFO: renamed from: ui.c$c, reason: collision with other inner class name */
    public class RunnableC0118c implements Runnable {
        public RunnableC0118c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17582n = null;
            c.this.f17577i = null;
            c.this.f17578j = null;
            c.this.f17579k = null;
            c.this.f17580l = null;
            c.this.f17581m = null;
            c.this.f17582n = null;
            c.this.f17570b.dismiss();
        }
    }

    public class d extends ViewGroup {
        public d(Context context) {
            super(context);
            h(context);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            canvas.drawColor(33619712);
        }

        public final void h(Context context) {
            c.this.f17572d = new View(context);
            c.this.f17572d.layout(0, 0, 216, 214);
            addView(c.this.f17572d);
            c cVar = c.this;
            cVar.f17571c = cVar.new e(context);
            c.this.f17571c.layout(0, 0, 216, 214);
            addView(c.this.f17571c);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            setMeasuredDimension(216, 214);
        }
    }

    public class e extends View implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Paint f17599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f17600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f17601c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Rect f17602d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f17603e;

        public e(Context context) {
            super(context);
            this.f17599a = new Paint();
            this.f17602d = new Rect();
            init();
        }

        public final void init() {
            this.f17599a.setAntiAlias(true);
            this.f17599a.setFilterBitmap(true);
            this.f17599a.setTextSize(40.0f);
            this.f17599a.setTextAlign(Paint.Align.CENTER);
            this.f17599a.setColor(-1);
            BitmapDrawable bitmapDrawableA = r0.a("ui/guesture/bar_p.png");
            this.f17601c = bitmapDrawableA;
            bitmapDrawableA.setBounds(0, 0, 174, 4);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f2 = y0.f.f18037c;
            float f3 = y0.f.f18049g;
            if (c.this.f17576h != 0) {
                if (c.this.f17576h == 1) {
                    if (c.this.f17582n == null) {
                        Log.d("LG", "onDraw mDown");
                        c.this.f17582n = r0.a("ui/guesture/down.png");
                        c.this.f17582n.setBounds(0, 0, 216, 214);
                        c.this.f17572d.setBackground(c.this.f17582n);
                        c.this.f17579k = null;
                    }
                } else if (c.this.f17576h == 2) {
                    if (c.this.f17579k == null) {
                        Log.d("LG", "onDraw  mNext");
                        c.this.f17579k = r0.a("ui/guesture/next.png");
                        c.this.f17579k.setBounds(0, 0, 216, 214);
                        c.this.f17572d.setBackground(c.this.f17579k);
                        c.this.f17582n = null;
                    }
                } else if (c.this.f17576h == 3) {
                    if (c.this.f17580l == null) {
                        Log.d("LG", "onDraw  mUp");
                        c.this.f17580l = r0.a("ui/guesture/up.png");
                        c.this.f17580l.setBounds(0, 0, 216, 214);
                        c.this.f17572d.setBackground(c.this.f17580l);
                        c.this.f17581m = null;
                    }
                } else if (c.this.f17576h == 4 && c.this.f17581m == null) {
                    Log.d("LG", "onDraw  mPrev");
                    c.this.f17581m = r0.a("ui/guesture/prev.png");
                    c.this.f17581m.setBounds(0, 0, 216, 214);
                    c.this.f17572d.setBackground(c.this.f17581m);
                    c.this.f17580l = null;
                }
                this.f17603e = 0L;
                return;
            }
            if (y0.f.f18055i != 0 || f2 == 0.0f) {
                if (c.this.f17578j == null) {
                    Log.d("LG", "setBackground");
                    c.this.f17578j = r0.a("ui/guesture/mute.png");
                    c.this.f17572d.setBackground(c.this.f17578j);
                    c.this.f17577i = null;
                }
                f2 = 0.0f;
            } else if (c.this.f17577i == null) {
                Log.d("LG", "onDraw DataSound");
                c.this.f17577i = r0.a("ui/guesture/volume.png");
                c.this.f17572d.setBackground(c.this.f17577i);
                c.this.f17578j = null;
            }
            if (f2 == 0.0f) {
                this.f17599a.setColor(-65536);
            } else {
                this.f17599a.setColor(-1);
            }
            canvas.drawText(ProxyProperties.LOCAL_EXCL_LIST + ((int) f2), 181.0f, (getHeight() >> 1) + 13, this.f17599a);
            canvas.save();
            canvas.translate(20.0f, 186.0f);
            this.f17602d.set(0, 0, (int) ((this.f17600b * 174.0f) / f3), 4);
            canvas.clipRect(this.f17602d);
            this.f17601c.draw(canvas);
            canvas.restore();
            if (this.f17600b == f2) {
                this.f17603e = 0L;
                return;
            }
            long drawingTime = getDrawingTime();
            if (this.f17603e == 0) {
                this.f17603e = drawingTime - 33;
            }
            float f4 = ((drawingTime - this.f17603e) * f3) / 200.0f;
            this.f17603e = drawingTime;
            if (Math.abs(this.f17600b - f2) < f4) {
                this.f17600b = f2;
            } else {
                float f5 = this.f17600b;
                if (f5 > f2) {
                    this.f17600b = f5 - f4;
                } else {
                    this.f17600b = f5 + f4;
                }
            }
            invalidate();
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public final void A() {
        this.f17574f = this.f17575g;
        if (this.f17573e) {
            return;
        }
        this.f17573e = true;
        j0.f16915j.c(this);
    }

    @Override // ui.b
    public void b(int i2) {
        Log.d("LG", "mShowMode = " + i2);
        this.f17576h = i2;
    }

    @Override // ui.b
    public void c() {
        if (!isShowing() || this.f17571c == null) {
            return;
        }
        m.a().post(this.f17584p);
    }

    @Override // ui.b.a
    public void d() {
        if (isShowing()) {
            m.a().post(this.f17585q);
        }
    }

    @Override // ui.b.a
    public void e() {
        m.a().post(this.f17583o);
    }

    @Override // ui.b
    public boolean isShowing() {
        PopupWindow popupWindow = this.f17570b;
        return popupWindow != null && popupWindow.isShowing();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17574f--;
        Log.d("LG", "mTickRemain = " + this.f17574f);
        if (this.f17574f <= 0) {
            hide();
            j0.f16915j.d(this);
            this.f17573e = false;
        }
    }
}
