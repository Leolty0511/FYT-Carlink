package ui;

import a.f;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.SpellChecker;
import app.App;
import com.syu.ms.R;
import o1.j;
import o1.j0;
import o1.l;
import o1.m;
import o1.q0;
import o1.r0;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class e extends ui.b.a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PopupWindow f17645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f17646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f17647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17648e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17649f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17650g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f17651h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f17652i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f17653j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17654k = "ui/vol/hog_htop/";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f17655l = 499;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f17656m = 100;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f17657n = 40;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f17658o = 80;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f17659p = SpellChecker.WORD_ITERATOR_INTERVAL;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f17660q = 12;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f17661r = 41;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f17662s = 41;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f17663t = 79;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f17664u = 63;

    public class a implements Runnable {

        /* JADX INFO: renamed from: ui.e$a$a, reason: collision with other inner class name */
        public class C0121a implements PopupWindow.OnDismissListener {
            public C0121a() {
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n1.a.f16644a.a();
                e.this.f17649f = 0;
                a.e.f(e.this.f17645b);
                h.R(0);
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f17645b == null) {
                PopupWindow popupWindow = e.this.f17645b = new PopupWindow(App.c());
                popupWindow.setWidth(-2);
                popupWindow.setHeight(-2);
                popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                popupWindow.setOutsideTouchable(true);
                popupWindow.setOnDismissListener(new C0121a());
                popupWindow.setContentView(e.this.new d(App.c()));
                e.this.f17645b.setAnimationStyle(R.style.AnimScale);
            }
            a.e.b(e.this.f17645b);
            if (f.s().getWindowToken() == null) {
                m.a().postDelayed(this, 1L);
                return;
            }
            if (!q0.v()) {
                h.R(1);
                e.this.f17645b.showAtLocation(f.s(), 17, 0, 100 - (f.i() >> 1));
            } else if (u0.b.h2) {
                h.R(1);
                e.this.f17645b.showAtLocation(f.s(), 48, 0, 650);
            }
            e.this.o();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.f17646c.invalidate();
            e.this.o();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.f17645b.dismiss();
        }
    }

    public class d extends ViewGroup {

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.u0(-5);
            }
        }

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
            setBackground(r0.a("ui/vol/hog_htop/bk.png"));
            e eVar = e.this;
            eVar.f17646c = eVar.new RunnableC0122e(context);
            e.this.f17646c.layout(0, 0, 499, 100);
            addView(e.this.f17646c);
            e.this.f17647d = new View(context);
            e.this.f17647d.setOnClickListener(new a());
            e.this.f17647d.layout(0, 18, 79, 82);
            addView(e.this.f17647d);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            setMeasuredDimension(499, 100);
        }
    }

    /* JADX INFO: renamed from: ui.e$e, reason: collision with other inner class name */
    public class RunnableC0122e extends View implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Paint f17671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f17672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f17673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f17674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Drawable f17675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Rect f17676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f17677g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17678h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Drawable f17679i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f17680j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f17681k;

        public RunnableC0122e(Context context) {
            super(context);
            this.f17671a = new Paint();
            this.f17676f = new Rect();
            init();
        }

        public final void h(float f2) {
            if (f2 <= 80.0f) {
                this.f17678h = 0;
            } else if (f2 >= 430.0f) {
                this.f17678h = y0.f.f18049g;
            } else {
                this.f17678h = (int) (((y0.f.f18049g * (f2 - 80.0f)) / 350.0f) + 0.5f);
            }
            if (this.f17677g) {
                int i2 = y0.f.f18037c;
                int i3 = this.f17678h;
                if (i2 != i3) {
                    h.u0(i3);
                }
            }
        }

        public final void init() {
            this.f17671a.setAntiAlias(true);
            this.f17671a.setFilterBitmap(true);
            this.f17671a.setTextSize(40.0f);
            this.f17671a.setTextAlign(Paint.Align.CENTER);
            this.f17671a.setColor(-1);
            this.f17673c = r0.a("ui/vol/hog_htop/bar.png");
            this.f17674d = r0.a("ui/vol/hog_htop/bar_p.png");
            this.f17675e = r0.a("ui/vol/hog_htop/node.png");
            this.f17673c.setBounds(0, 0, SpellChecker.WORD_ITERATOR_INTERVAL, 12);
            this.f17674d.setBounds(0, 0, SpellChecker.WORD_ITERATOR_INTERVAL, 12);
            this.f17675e.setBounds(0, 0, 41, 41);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f2 = y0.f.f18037c;
            float f3 = y0.f.f18049g;
            if (y0.f.f18055i != 0 || f2 == 0.0f) {
                if (this.f17680j == null) {
                    this.f17680j = r0.b("ui/vol/hog_htop/mute.png", "ui/vol/hog_htop/mute.png");
                }
                e.this.f17647d.setBackground(this.f17680j);
                f2 = 0.0f;
            } else {
                if (this.f17679i == null) {
                    this.f17679i = r0.b("ui/vol/hog_htop/unmute.png", "ui/vol/hog_htop/unmute.png");
                }
                e.this.f17647d.setBackground(this.f17679i);
            }
            if (f2 == 0.0f) {
                this.f17671a.setColor(-65536);
            } else {
                this.f17671a.setColor(-1);
            }
            canvas.drawText(ProxyProperties.LOCAL_EXCL_LIST + ((int) f2), 467.0f, (getHeight() >> 1) + 13, this.f17671a);
            canvas.save();
            canvas.translate(80.0f, (float) ((getHeight() - 12) >> 1));
            this.f17673c.draw(canvas);
            int i2 = (int) ((this.f17672b * 350.0f) / f3);
            this.f17676f.set(0, 0, i2, 12);
            canvas.clipRect(this.f17676f);
            this.f17674d.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(i2 + 60, (getHeight() - 41) >> 1);
            this.f17675e.draw(canvas);
            canvas.restore();
            if (this.f17672b == f2) {
                this.f17681k = 0L;
                return;
            }
            long drawingTime = getDrawingTime();
            if (this.f17681k == 0) {
                this.f17681k = drawingTime - 33;
            }
            float f4 = ((drawingTime - this.f17681k) * f3) / 200.0f;
            this.f17681k = drawingTime;
            if (Math.abs(this.f17672b - f2) < f4) {
                this.f17672b = f2;
            } else {
                float f5 = this.f17672b;
                if (f5 > f2) {
                    this.f17672b = f5 - f4;
                } else {
                    this.f17672b = f5 + f4;
                }
            }
            invalidate();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        /* JADX WARN: Code duplicated, block: B:13:0x0025  */
        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            e.this.o();
            float x2 = (int) motionEvent.getX();
            int i2 = y0.f.f18049g;
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (!this.f17677g) {
                        j.e(l.a(), this);
                    }
                } else if (action == 2) {
                    h(x2);
                } else if (action == 3) {
                    if (!this.f17677g) {
                        j.e(l.a(), this);
                    }
                }
            } else if (Math.abs(x2 - ((int) (((this.f17672b * 350.0f) / i2) + 80.0f))) <= 20.0f) {
                this.f17677g = true;
                h(x2);
            } else {
                this.f17677g = false;
                h(x2);
                j.b(l.a(), this, 0L);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            if (!this.f17677g && (i2 = y0.f.f18037c) != (i3 = this.f17678h)) {
                if (i2 < i3) {
                    h.u0(-1);
                } else {
                    h.u0(-2);
                }
            }
            l.a().postDelayed(this, 35L);
        }
    }

    @Override // ui.b
    public void b(int i2) {
        this.f17650g = i2;
    }

    @Override // ui.b
    public void c() {
        if (!isShowing() || this.f17646c == null) {
            return;
        }
        m.a().post(this.f17652i);
    }

    @Override // ui.b.a
    public void d() {
        if (isShowing()) {
            m.a().post(this.f17653j);
        }
    }

    @Override // ui.b.a
    public void e() {
        m.a().post(this.f17651h);
    }

    @Override // ui.b
    public boolean isShowing() {
        PopupWindow popupWindow = this.f17645b;
        return popupWindow != null && popupWindow.isShowing();
    }

    public final void o() {
        this.f17649f = 6;
        if (this.f17648e) {
            return;
        }
        this.f17648e = true;
        j0.f16915j.c(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = this.f17649f - 1;
        this.f17649f = i2;
        if (i2 <= 0) {
            hide();
            j0.f16915j.d(this);
            this.f17648e = false;
        }
    }
}
