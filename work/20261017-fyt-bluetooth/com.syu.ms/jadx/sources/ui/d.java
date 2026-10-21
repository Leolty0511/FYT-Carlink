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
public class d extends ui.b.a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PopupWindow f17605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f17606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f17607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17608e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17609f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17610g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f17611h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f17612i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f17613j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17614k = "ui/vol/cnc/";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f17615l = 456;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f17616m = 67;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f17617n = 30;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f17618o = 63;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f17619p = 329;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f17620q = 20;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f17621r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f17622s = 20;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f17623t = 20;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f17624u = 44;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f17625v = 41;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f17626w = 20;

    public class a implements Runnable {

        /* JADX INFO: renamed from: ui.d$a$a, reason: collision with other inner class name */
        public class C0119a implements PopupWindow.OnDismissListener {
            public C0119a() {
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n1.a.f16644a.a();
                d.this.f17609f = 0;
                a.e.f(d.this.f17605b);
                h.R(0);
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f17605b == null) {
                PopupWindow popupWindow = d.this.f17605b = new PopupWindow(App.c());
                popupWindow.setWidth(-2);
                popupWindow.setHeight(-2);
                popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                popupWindow.setOutsideTouchable(true);
                popupWindow.setOnDismissListener(new C0119a());
                popupWindow.setContentView(d.this.new C0120d(App.c()));
                d.this.f17605b.setAnimationStyle(R.style.AnimScale);
            }
            a.e.b(d.this.f17605b);
            if (f.s().getWindowToken() == null) {
                m.a().postDelayed(this, 1L);
                return;
            }
            if (!q0.v()) {
                h.R(1);
                d.this.f17605b.showAtLocation(f.s(), 17, 0, 67 - (f.i() >> 1));
            } else if (u0.b.h2) {
                h.R(1);
                d.this.f17605b.showAtLocation(f.s(), 48, 0, 0);
            }
            d.this.o();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f17606c.invalidate();
            d.this.o();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f17605b.dismiss();
        }
    }

    /* JADX INFO: renamed from: ui.d$d, reason: collision with other inner class name */
    public class C0120d extends ViewGroup {

        /* JADX INFO: renamed from: ui.d$d$a */
        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.u0(-5);
            }
        }

        public C0120d(Context context) {
            super(context);
            h(context);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            canvas.drawColor(33619712);
        }

        public final void h(Context context) {
            setBackground(r0.a("ui/vol/cnc/bk.png"));
            d dVar = d.this;
            dVar.f17606c = dVar.new e(context);
            d.this.f17606c.layout(0, 0, 456, 67);
            addView(d.this.f17606c);
            d.this.f17607d = new View(context);
            d.this.f17607d.setOnClickListener(new a());
            d.this.f17607d.layout(20, 13, 64, 54);
            addView(d.this.f17607d);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            setMeasuredDimension(456, 67);
        }
    }

    public class e extends View implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Paint f17633a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f17634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f17635c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f17636d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Drawable f17637e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Rect f17638f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f17639g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17640h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Drawable f17641i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f17642j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f17643k;

        public e(Context context) {
            super(context);
            this.f17633a = new Paint();
            this.f17638f = new Rect();
            init();
        }

        public final void h(float f2) {
            if (f2 <= 63.0f) {
                this.f17640h = 0;
            } else if (f2 >= 392.0f) {
                this.f17640h = y0.f.f18049g;
            } else {
                this.f17640h = (int) (((y0.f.f18049g * (f2 - 63.0f)) / 329.0f) + 0.5f);
            }
            if (this.f17639g) {
                int i2 = y0.f.f18037c;
                int i3 = this.f17640h;
                if (i2 != i3) {
                    h.u0(i3);
                }
            }
        }

        public final void init() {
            this.f17633a.setAntiAlias(true);
            this.f17633a.setFilterBitmap(true);
            this.f17633a.setTextSize(30.0f);
            this.f17633a.setTextAlign(Paint.Align.CENTER);
            this.f17633a.setColor(-1);
            this.f17635c = r0.a("ui/vol/cnc/bar.png");
            this.f17636d = r0.a("ui/vol/cnc/bar_p.png");
            this.f17637e = r0.a("ui/vol/cnc/node.png");
            this.f17635c.setBounds(0, 0, 329, 20);
            this.f17636d.setBounds(0, 0, 329, 20);
            this.f17637e.setBounds(0, 0, 20, 20);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f2 = y0.f.f18037c;
            float f3 = y0.f.f18049g;
            if (y0.f.f18055i != 0 || f2 == 0.0f) {
                if (this.f17642j == null) {
                    this.f17642j = r0.b("ui/vol/cnc/mute.png", "ui/vol/cnc/mute_p.png");
                }
                d.this.f17607d.setBackground(this.f17642j);
                f2 = 0.0f;
            } else {
                if (this.f17641i == null) {
                    this.f17641i = r0.b("ui/vol/cnc/unmute.png", "ui/vol/cnc/unmute_p.png");
                }
                d.this.f17607d.setBackground(this.f17641i);
            }
            if (f2 == 0.0f) {
                this.f17633a.setColor(-65536);
            } else {
                this.f17633a.setColor(-1);
            }
            canvas.drawText(ProxyProperties.LOCAL_EXCL_LIST + ((int) f2), 421.0f, (getHeight() >> 1) + 10, this.f17633a);
            canvas.save();
            canvas.translate(63.0f, (float) ((getHeight() - 20) >> 1));
            this.f17635c.draw(canvas);
            this.f17638f.set(0, 0, (int) ((this.f17634b * 329.0f) / f3), 20);
            canvas.clipRect(this.f17638f);
            this.f17636d.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(((int) ((this.f17634b * 317.0f) / f3)) + 59, (getHeight() - 20) >> 1);
            this.f17637e.draw(canvas);
            canvas.restore();
            if (this.f17634b == f2) {
                this.f17643k = 0L;
                return;
            }
            long drawingTime = getDrawingTime();
            if (this.f17643k == 0) {
                this.f17643k = drawingTime - 33;
            }
            float f4 = ((drawingTime - this.f17643k) * f3) / 200.0f;
            this.f17643k = drawingTime;
            if (Math.abs(this.f17634b - f2) < f4) {
                this.f17634b = f2;
            } else {
                float f5 = this.f17634b;
                if (f5 > f2) {
                    this.f17634b = f5 - f4;
                } else {
                    this.f17634b = f5 + f4;
                }
            }
            invalidate();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021  */
        /* JADX WARN: Code duplicated, block: B:13:0x0025  */
        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            d.this.o();
            float x2 = (int) motionEvent.getX();
            int i2 = y0.f.f18049g;
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (!this.f17639g) {
                        j.e(l.a(), this);
                    }
                } else if (action == 2) {
                    h(x2);
                } else if (action == 3) {
                    if (!this.f17639g) {
                        j.e(l.a(), this);
                    }
                }
            } else if (Math.abs(x2 - ((int) (((this.f17634b * 329.0f) / i2) + 63.0f))) <= 10.0f) {
                this.f17639g = true;
                h(x2);
            } else {
                this.f17639g = false;
                h(x2);
                j.b(l.a(), this, 0L);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            if (!this.f17639g && (i2 = y0.f.f18037c) != (i3 = this.f17640h)) {
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
        this.f17610g = i2;
    }

    @Override // ui.b
    public void c() {
        if (!isShowing() || this.f17606c == null) {
            return;
        }
        m.a().post(this.f17612i);
    }

    @Override // ui.b.a
    public void d() {
        if (isShowing()) {
            m.a().post(this.f17613j);
        }
    }

    @Override // ui.b.a
    public void e() {
        m.a().post(this.f17611h);
    }

    @Override // ui.b
    public boolean isShowing() {
        PopupWindow popupWindow = this.f17605b;
        return popupWindow != null && popupWindow.isShowing();
    }

    public final void o() {
        this.f17609f = 6;
        if (this.f17608e) {
            return;
        }
        this.f17608e = true;
        j0.f16915j.c(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = this.f17609f - 1;
        this.f17609f = i2;
        if (i2 <= 0) {
            hide();
            j0.f16915j.d(this);
            this.f17608e = false;
        }
    }
}
