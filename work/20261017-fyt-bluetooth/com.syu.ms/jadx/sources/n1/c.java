package n1;

import a.f;
import a.i;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.ProxyProperties;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;
import o1.m;

/* JADX INFO: loaded from: classes2.dex */
public class c extends View {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f16660g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o1.c<String> f16661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<b> f16662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Paint f16664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f16666f;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.invalidate();
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f16668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f16669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Paint.Align f16670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f16671d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16672e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16673f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f16674g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16675h;

        public /* synthetic */ b(c cVar, int i2, String str, String str2, Paint.Align align, int i3, int i4, int i5, int i6, a aVar) {
            this(i2, str, str2, align, i3, i4, i5, i6);
        }

        public final boolean h(String str) {
            return str.equals(this.f16668a);
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.f16669b;
            if (str == null || str.isEmpty()) {
                return;
            }
            for (b bVar : c.this.f16662b) {
                if (bVar.h(this.f16668a)) {
                    c.this.f16662b.remove(bVar);
                    break;
                }
            }
            int i2 = this.f16671d;
            if (i2 < 0) {
                this.f16671d = 0;
            } else if (i2 > c.this.f16662b.size()) {
                this.f16671d = c.this.f16662b.size();
            }
            int i3 = this.f16672e;
            int i4 = this.f16674g;
            if (i3 > i4) {
                this.f16672e = i4;
            }
            c.this.f16662b.add(this.f16671d, this);
            c.this.k();
        }

        public b(int i2, String str, String str2, Paint.Align align, int i3, int i4, int i5, int i6) {
            this.f16671d = i2;
            this.f16668a = str;
            this.f16669b = str2;
            this.f16670c = align;
            this.f16672e = i3;
            this.f16673f = i4;
            this.f16674g = i5;
            this.f16675h = i6;
        }
    }

    /* JADX INFO: renamed from: n1.c$c, reason: collision with other inner class name */
    public class RunnableC0085c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f16677a;

        public /* synthetic */ RunnableC0085c(c cVar, String str, a aVar) {
            this(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            for (b bVar : c.this.f16662b) {
                if (bVar.h(this.f16677a)) {
                    c.this.f16662b.remove(bVar);
                    if (c.this.f16663c) {
                        c.this.invalidate();
                        return;
                    }
                    return;
                }
            }
        }

        public RunnableC0085c(String str) {
            this.f16677a = str;
        }
    }

    public c(Context context) {
        super(context);
        this.f16661a = new o1.c<>(0);
        this.f16662b = new ArrayList<>(10);
        this.f16663c = false;
        Paint paint = new Paint();
        this.f16664d = paint;
        this.f16665e = true;
        this.f16666f = ProxyProperties.LOCAL_EXCL_LIST;
        paint.setAntiAlias(true);
    }

    public final void k() {
        if (this.f16663c) {
            invalidate();
            return;
        }
        WindowManager.LayoutParams layoutParamsE = i.e(-1, -1);
        layoutParamsE.gravity = 17;
        f.y().addView(this, layoutParamsE);
        this.f16663c = true;
    }

    public void l(int i2, String str, String str2, Paint.Align align, int i3, int i4, int i5, int i6) {
        if (f16660g) {
            return;
        }
        synchronized (this.f16661a) {
            this.f16661a.f(str, 1);
            m.a().post(new b(this, i2, str, str2, align, i3, i4, i5, i6, null));
        }
    }

    public void m(String str) {
        synchronized (this.f16661a) {
            if (this.f16661a.d(str, 0) != 0) {
                this.f16661a.g(str);
                m.a().post(new RunnableC0085c(this, str, null));
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int i2 = 0;
        for (b bVar : this.f16662b) {
            canvas.save();
            int i3 = bVar.f16674g + i2;
            canvas.clipRect(0, i2, width, i3);
            this.f16664d.setColor(bVar.f16675h);
            canvas.drawColor(bVar.f16675h);
            if (bVar.f16672e > 0 && ((bVar.f16673f >> 24) & 255) != 0) {
                Paint.Align align = bVar.f16670c;
                this.f16664d.setTextAlign(align);
                this.f16664d.setTextSize(bVar.f16672e);
                this.f16664d.setColor(bVar.f16673f);
                int i4 = i2 + (bVar.f16674g >> 1) + (bVar.f16672e >> 2);
                if (align == Paint.Align.LEFT) {
                    canvas.drawText(bVar.f16669b, 10.0f, i4, this.f16664d);
                } else if (align == Paint.Align.CENTER) {
                    canvas.drawText(bVar.f16669b, width >> 1, i4, this.f16664d);
                } else {
                    canvas.drawText(bVar.f16669b, width - 10, i4, this.f16664d);
                }
            }
            canvas.restore();
            i2 = i3;
        }
    }

    public void setText(String str) {
        this.f16666f = str;
        m.a().post(new a());
    }
}
