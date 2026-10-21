package ui;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import app.App;
import com.syu.ms.R;
import o1.j0;
import o1.m;
import o1.q0;
import o1.r0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class a extends ui.b.a implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PopupWindow f17513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f17514d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f17518h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f17519i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17512b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17515e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17516f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17517g = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g f17520j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f17521k = new RunnableC0116a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f17522l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f17523m = new c();

    /* JADX INFO: renamed from: ui.a$a, reason: collision with other inner class name */
    public class RunnableC0116a implements Runnable {

        /* JADX INFO: renamed from: ui.a$a$a, reason: collision with other inner class name */
        public class C0117a implements PopupWindow.OnDismissListener {
            public C0117a() {
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n1.a.f16644a.a();
                a.this.f17516f = 0;
                a.e.f(a.this.f17513c);
                y0.h.R(0);
                Log.e("VOL", "====================>>> hidded vol window");
            }
        }

        public RunnableC0116a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM;
            if (a.this.f17513c == null) {
                Log.e("VOL", "Control Bar =====>>> create window");
                PopupWindow popupWindow = a.this.f17513c = new PopupWindow(App.c());
                popupWindow.setWidth(-2);
                popupWindow.setHeight(-2);
                popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                popupWindow.setOutsideTouchable(true);
                popupWindow.setOnDismissListener(new C0117a());
                a aVar = a.this;
                d dVar = aVar.f17518h;
                if (dVar.f17531d == 0) {
                    int i2 = dVar.f17530c;
                    if (i2 == 48 || i2 == 80 || i2 == 17) {
                        a aVar2 = a.this;
                        App appC = App.c();
                        d dVar2 = a.this.f17518h;
                        aVar.f17514d = aVar2.new i(appC, 0, dVar2.f17528a, dVar2.f17533f);
                    } else if (i2 == 8388611 || i2 == 8388613) {
                        a aVar3 = a.this;
                        App appC2 = App.c();
                        d dVar3 = a.this.f17518h;
                        aVar.f17514d = aVar3.new i(appC2, 1, dVar3.f17528a, dVar3.f17533f);
                    }
                } else {
                    int i3 = dVar.f17530c;
                    if (i3 == 48 || i3 == 80 || i3 == 17) {
                        aVar.f17514d = a.this.new h(App.c(), 0, a.this.f17518h.f17528a);
                    } else if (i3 == 8388611 || i3 == 8388613) {
                        aVar.f17514d = a.this.new h(App.c(), 1, a.this.f17518h.f17528a);
                    }
                }
                if (!s0.t(a.this.f17518h.f17541n)) {
                    a.this.f17514d.setBackground(r0.a(a.this.f17518h.f17528a + a.this.f17518h.f17541n));
                }
                popupWindow.setContentView(a.this.f17514d);
                a.this.f17513c.setAnimationStyle(R.style.AnimScale);
            }
            Log.e("VOL", "====================>>> to show vol window");
            a.e.b(a.this.f17513c);
            if (a.f.s().getWindowToken() == null) {
                Log.e("VOL", "====================>>> RootView not attached!!");
                m.a().postDelayed(this, 100L);
                return;
            }
            int i4 = a.this.f17518h.f17530c;
            int i5 = 30;
            if (i4 == 48) {
                iM = s0.m("sys.lsec.status_bar_height", 60) + 20;
                i5 = 0;
            } else if (i4 == 8388611 || i4 == 8388613) {
                iM = 0;
            } else {
                iM = 0;
                i5 = 0;
            }
            a.this.f17514d.setPadding(0, 0, 0, 0);
            if (!q0.v()) {
                y0.h.R(1);
                a.this.f17513c.showAtLocation(a.f.s(), a.this.f17518h.f17530c, i5, iM);
                if (a.this.f17519i != null) {
                    a.this.f17519i.a(true);
                }
            } else if (u0.b.h2) {
                y0.h.R(1);
                a.this.f17513c.showAtLocation(a.f.s(), a.this.f17518h.f17530c, i5, iM);
                if (a.this.f17519i != null) {
                    a.this.f17519i.a(true);
                }
            }
            a.this.o();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f17514d.invalidate();
            a.this.o();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f17513c.dismiss();
            if (a.this.f17519i != null) {
                a.this.f17519i.a(false);
            }
        }
    }

    public static class d {
        public Bar.a A;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f17528a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f17531d;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f17541n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public String f17542o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public String f17543p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public String f17544q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public String f17545r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public String f17546s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public String f17547t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public String f17548u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public String f17549v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public String f17550w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f17551x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public String f17552y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public View.OnClickListener f17553z;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f17529b = ProxyProperties.LOCAL_EXCL_LIST;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f17532e = 100;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f17533f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f17534g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17535h = -2;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f17536i = -2;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f17537j = 32;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int[] f17538k = {-1, -65536};

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public Rect f17539l = new Rect(-1, -1, -1, -1);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public Rect f17540m = new Rect(-1, -1, -1, -1);

        public a a() {
            return new a(this);
        }

        public d b(String str) {
            this.f17541n = str;
            return this;
        }

        public d c(String str) {
            this.f17550w = str;
            return this;
        }

        public d d(String str) {
            this.f17551x = str;
            return this;
        }

        public d e(String str) {
            this.f17548u = str;
            return this;
        }

        public d f(String str) {
            this.f17546s = str;
            return this;
        }

        public d g(String str) {
            this.f17544q = str;
            return this;
        }

        public d h(int i2) {
            this.f17530c = i2;
            return this;
        }

        public d i(boolean z2) {
            this.f17533f = z2;
            return this;
        }

        public d j(Rect rect) {
            this.f17540m = rect;
            return this;
        }

        public d k(String str) {
            this.f17552y = str;
            return this;
        }

        public d l(String str) {
            this.f17542o = str;
            return this;
        }

        public d m(View.OnClickListener onClickListener) {
            this.f17553z = onClickListener;
            return this;
        }

        public d n(Bar.a aVar) {
            this.A = aVar;
            return this;
        }

        public d o(int i2) {
            this.f17532e = i2;
            return this;
        }

        public d p(String str) {
            Log.e("VOL", " setResDir : " + str);
            this.f17528a = str;
            return this;
        }

        public d q(int[] iArr) {
            this.f17538k = iArr;
            return this;
        }

        public d r(String str) {
            this.f17529b = str;
            return this;
        }

        public d s(Rect rect) {
            this.f17539l = rect;
            return this;
        }

        public d t(int i2) {
            this.f17537j = i2;
            return this;
        }

        public d u(int i2) {
            this.f17531d = i2;
            return this;
        }
    }

    public interface e {
        void f(int i2, boolean z2);
    }

    public interface f {
        void a(boolean z2);
    }

    public interface g {
        int a();

        String b(int i2, int i3);
    }

    public class h extends FrameLayout implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f17554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Bar f17555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f17556c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f17557d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Drawable f17558e;

        public h(Context context, int i2, String str) {
            super(context);
            j(i2, str);
        }

        @Override // ui.a.e
        public void f(int i2, boolean z2) {
            if (z2) {
                i2 = 0;
            }
            ImageView imageView = this.f17556c;
            if (imageView != null) {
                imageView.setImageDrawable(i2 == 0 ? this.f17557d : this.f17558e);
            }
            TextView textView = this.f17554a;
            if (textView != null) {
                textView.setText(ProxyProperties.LOCAL_EXCL_LIST + i2);
                d dVar = a.this.f17518h;
                int[] iArr = dVar.f17538k;
                if (iArr == null || iArr.length <= 0) {
                    this.f17554a.setTextColor((dVar.f17534g || i2 != 0) ? -1 : -65536);
                } else {
                    int i3 = iArr[0];
                    int i4 = iArr[iArr.length - 1];
                    TextView textView2 = this.f17554a;
                    if (!dVar.f17534g && i2 == 0) {
                        i3 = i4;
                    }
                    textView2.setTextColor(i3);
                }
            }
            Bar bar = this.f17555b;
            if (bar != null) {
                bar.setTarget(i2);
            }
        }

        public FrameLayout.LayoutParams h(int i2, int i3, int i4) {
            return i(i2, i3, i4, -1, -1, -1, -1);
        }

        public FrameLayout.LayoutParams i(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3, i4);
            if (i5 >= 0) {
                layoutParams.leftMargin = i5;
            }
            if (i6 >= 0) {
                layoutParams.topMargin = i6;
            }
            if (i7 >= 0) {
                layoutParams.rightMargin = i7;
            }
            if (i8 >= 0) {
                layoutParams.bottomMargin = i8;
            }
            return layoutParams;
        }

        public void j(int i2, String str) {
            if (!s0.t(a.this.f17518h.f17542o)) {
                this.f17557d = r0.b(a.this.f17518h.f17528a + a.this.f17518h.f17542o, a.this.f17518h.f17528a + a.this.f17518h.f17543p);
            }
            if (!s0.t(a.this.f17518h.f17544q)) {
                this.f17558e = r0.b(a.this.f17518h.f17528a + a.this.f17518h.f17544q, a.this.f17518h.f17528a + a.this.f17518h.f17545r);
            }
            boolean z2 = i2 == 0;
            TextView textView = new TextView(getContext());
            this.f17554a = textView;
            textView.setTextSize(0, a.this.f17518h.f17537j);
            this.f17554a.setGravity(17);
            this.f17555b = new Bar(getContext(), str, a.this.f17518h.f17532e, i2);
            if (!s0.t(a.this.f17518h.f17550w)) {
                this.f17555b.setNormalDrawable(r0.a(str + a.this.f17518h.f17550w));
            }
            if (!s0.t(a.this.f17518h.f17551x)) {
                this.f17555b.setProgressDrawable(r0.a(str + a.this.f17518h.f17551x));
            }
            if (!s0.t(a.this.f17518h.f17552y)) {
                this.f17555b.setNodeDrawable(r0.a(str + a.this.f17518h.f17552y));
            }
            this.f17556c = new ImageView(getContext());
            if (z2) {
                addView(this.f17555b, h(-2, -2, 17));
                ImageView imageView = this.f17556c;
                Rect rect = a.this.f17518h.f17540m;
                addView(imageView, i(-2, -2, 8388627, rect.left, rect.top, rect.right, rect.bottom));
                d dVar = a.this.f17518h;
                int i3 = dVar.f17535h;
                int i4 = i3 < 0 ? -2 : i3;
                int i5 = dVar.f17536i;
                int i6 = i5 < 0 ? -2 : i5;
                TextView textView2 = this.f17554a;
                Rect rect2 = dVar.f17539l;
                addView(textView2, i(i4, i6, 8388627, rect2.left, rect2.top, rect2.right, rect2.bottom));
            } else {
                addView(this.f17555b, new FrameLayout.LayoutParams(-2, -2, 17));
                ImageView imageView2 = this.f17556c;
                Rect rect3 = a.this.f17518h.f17540m;
                addView(imageView2, i(-2, -2, 49, rect3.left, rect3.top, rect3.right, rect3.bottom));
                d dVar2 = a.this.f17518h;
                int i7 = dVar2.f17535h;
                int i8 = i7 < 0 ? -2 : i7;
                int i9 = dVar2.f17536i;
                int i10 = i9 < 0 ? -2 : i9;
                TextView textView3 = this.f17554a;
                Rect rect4 = dVar2.f17539l;
                addView(textView3, i(i8, i10, 48, rect4.left, rect4.top, rect4.right, rect4.bottom));
            }
            this.f17556c.setOnClickListener(a.this.f17518h.f17553z);
            this.f17555b.setOnProgressListener(a.this.f17518h.A);
        }
    }

    public class i extends LinearLayout implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f17560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Bar f17561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f17562c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f17563d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Drawable f17564e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Drawable f17565f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Drawable f17566g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f17567h;

        public i(Context context, int i2, String str, boolean z2) {
            super(context);
            this.f17567h = true;
            this.f17567h = z2;
            h(i2, str);
        }

        @Override // ui.a.e
        public void f(int i2, boolean z2) {
            Drawable drawable;
            Drawable drawable2;
            Drawable drawable3;
            if (z2) {
                i2 = 0;
            }
            boolean z3 = u0.b.D != 2;
            ImageView imageView = this.f17562c;
            if (imageView != null) {
                if (z3 || (drawable2 = this.f17565f) == null) {
                    if (i2 != 0 || (drawable = this.f17564e) == null) {
                        drawable = this.f17563d;
                    }
                    imageView.setImageDrawable(drawable);
                } else {
                    if (i2 == 0 && (drawable3 = this.f17566g) != null) {
                        drawable2 = drawable3;
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            TextView textView = this.f17560a;
            if (textView != null) {
                textView.setText(ProxyProperties.LOCAL_EXCL_LIST + i2);
                this.f17560a.setTextColor((a.this.f17518h.f17534g || i2 != 0) ? -1 : -65536);
            }
            Bar bar = this.f17561b;
            if (bar != null) {
                bar.setTarget(i2);
            }
        }

        public void h(int i2, String str) {
            setOrientation(i2);
            if (!s0.t(a.this.f17518h.f17542o)) {
                String str2 = a.this.f17518h.f17528a + a.this.f17518h.f17542o;
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.f17518h.f17528a);
                d dVar = a.this.f17518h;
                String str3 = dVar.f17543p;
                if (str3 == null) {
                    str3 = dVar.f17542o;
                }
                sb.append(str3);
                this.f17563d = r0.b(str2, sb.toString());
            }
            if (!s0.t(a.this.f17518h.f17546s)) {
                String str4 = a.this.f17518h.f17528a + a.this.f17518h.f17546s;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(a.this.f17518h.f17528a);
                d dVar2 = a.this.f17518h;
                String str5 = dVar2.f17547t;
                if (str5 == null) {
                    str5 = dVar2.f17546s;
                }
                sb2.append(str5);
                this.f17565f = r0.b(str4, sb2.toString());
            }
            if (!s0.t(a.this.f17518h.f17544q)) {
                String str6 = a.this.f17518h.f17528a + a.this.f17518h.f17544q;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(a.this.f17518h.f17528a);
                d dVar3 = a.this.f17518h;
                String str7 = dVar3.f17545r;
                if (str7 == null) {
                    str7 = dVar3.f17544q;
                }
                sb3.append(str7);
                this.f17564e = r0.b(str6, sb3.toString());
            }
            if (!s0.t(a.this.f17518h.f17548u)) {
                String str8 = a.this.f17518h.f17528a + a.this.f17518h.f17548u;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(a.this.f17518h.f17528a);
                d dVar4 = a.this.f17518h;
                String str9 = dVar4.f17549v;
                if (str9 == null) {
                    str9 = dVar4.f17548u;
                }
                sb4.append(str9);
                this.f17566g = r0.b(str8, sb4.toString());
            }
            boolean z2 = i2 == 0;
            setGravity(z2 ? 16 : 1);
            TextView textView = new TextView(getContext());
            this.f17560a = textView;
            textView.setTextSize(0, a.this.f17518h.f17537j);
            this.f17560a.setGravity(17);
            this.f17561b = new Bar(getContext(), str, a.this.f17518h.f17532e, i2);
            if (!s0.t(a.this.f17518h.f17550w)) {
                this.f17561b.setNormalDrawable(r0.a(str + a.this.f17518h.f17550w));
            }
            if (!s0.t(a.this.f17518h.f17551x)) {
                this.f17561b.setProgressDrawable(r0.a(str + a.this.f17518h.f17551x));
            }
            if (!s0.t(a.this.f17518h.f17552y)) {
                this.f17561b.setNodeDrawable(r0.a(str + a.this.f17518h.f17552y));
            }
            ImageView imageView = new ImageView(getContext());
            this.f17562c = imageView;
            if (z2) {
                addView(imageView, new LinearLayout.LayoutParams(-2, -2));
                addView(this.f17561b, new LinearLayout.LayoutParams(-2, -2));
                if (!s0.t(a.this.f17518h.f17529b)) {
                    TextView textView2 = new TextView(getContext());
                    textView2.setGravity(17);
                    textView2.setTextColor(-1);
                    textView2.setText(a.this.f17518h.f17529b);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    addView(textView2, layoutParams);
                }
                if (this.f17567h) {
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    addView(this.f17560a, layoutParams2);
                }
            } else {
                if (this.f17567h) {
                    addView(this.f17560a, new LinearLayout.LayoutParams(-2, -2));
                }
                addView(this.f17561b, new LinearLayout.LayoutParams(-2, -2));
                addView(this.f17562c, new LinearLayout.LayoutParams(-2, -2));
            }
            this.f17562c.setOnClickListener(a.this.f17518h.f17553z);
            this.f17561b.setOnProgressListener(a.this.f17518h.A);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                getChildAt(i4);
            }
        }
    }

    public a(d dVar) {
        this.f17518h = dVar;
    }

    @Override // ui.b
    public void b(int i2) {
    }

    @Override // ui.b
    public void c() {
        if (!isShowing() || this.f17514d == null) {
            return;
        }
        m.a().post(this.f17522l);
    }

    @Override // ui.b.a
    public void d() {
        if (isShowing()) {
            m.a().post(this.f17523m);
        }
    }

    @Override // ui.b.a
    public void e() {
        Log.e("VOL", "====>>> Control Bar show");
        m.a().removeCallbacks(this.f17521k);
        m.a().post(this.f17521k);
    }

    @Override // ui.b
    public boolean isShowing() {
        PopupWindow popupWindow = this.f17513c;
        return popupWindow != null && popupWindow.isShowing();
    }

    public void m() {
        this.f17513c = null;
    }

    public void n(int i2, int i3) {
        m();
        g gVar = this.f17520j;
        if (gVar != null) {
            this.f17518h.p(gVar.b(i2, i3));
            this.f17518h.t(this.f17520j.a());
        }
    }

    public void o() {
        this.f17516f = this.f17517g + 1;
        if (this.f17515e) {
            return;
        }
        this.f17515e = true;
        j0.f16915j.c(this);
    }

    public void p(g gVar) {
        this.f17520j = gVar;
    }

    public void q(f fVar) {
        this.f17519i = fVar;
    }

    public void r(int i2) {
        this.f17517g = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = this.f17516f - 1;
        this.f17516f = i2;
        if (i2 <= 0) {
            hide();
            j0.f16915j.d(this);
            this.f17515e = false;
        }
    }

    public void s(int i2, boolean z2) {
        KeyEvent.Callback callback = this.f17514d;
        if (callback == null || !(callback instanceof e)) {
            return;
        }
        ((e) callback).f(i2, z2);
    }
}
