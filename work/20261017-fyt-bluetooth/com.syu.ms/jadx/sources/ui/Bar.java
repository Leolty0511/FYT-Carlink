package ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import o1.j;
import o1.l;

/* JADX INFO: loaded from: classes2.dex */
public class Bar extends View implements Runnable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f17499m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Drawable f17502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f17503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f17504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f17509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f17511l;

    public interface a {
        void a(int i2, boolean z2);

        void b();

        void c();

        void d();
    }

    public Bar(Context context, String str, int i2, int i3) {
        super(context);
        this.f17500a = ProxyProperties.LOCAL_EXCL_LIST;
        this.f17505f = f17499m;
        this.f17506g = 100;
        this.f17507h = 0;
        this.f17510k = false;
        this.f17500a = str;
        this.f17506g = i2;
        this.f17505f = i3;
    }

    public int getNodeWidth() {
        Drawable drawable = this.f17504e;
        if (drawable == null) {
            return 0;
        }
        return drawable.getIntrinsicWidth();
    }

    public int getNodeheight() {
        Drawable drawable = this.f17504e;
        if (drawable == null) {
            return 0;
        }
        return drawable.getIntrinsicHeight();
    }

    public void h(float f2) {
        int width = getWidth();
        if (f2 <= getNodeWidth()) {
            this.f17501b = 0;
        } else {
            float f3 = width;
            if (f2 >= f3) {
                this.f17501b = this.f17506g;
            } else {
                this.f17501b = (int) (((this.f17506g * f2) / f3) + 0.5f);
            }
        }
        a aVar = this.f17511l;
        if (aVar != null) {
            aVar.a(this.f17501b, true);
        }
    }

    public void i(float f2) {
        int intrinsicHeight = this.f17502c.getIntrinsicHeight();
        if (f2 <= 0.0f) {
            this.f17501b = this.f17506g;
        } else {
            float f3 = intrinsicHeight;
            if (f2 >= f3) {
                this.f17501b = 0;
            } else {
                int i2 = this.f17506g;
                this.f17501b = (int) ((i2 - ((i2 * f2) / f3)) + 0.5f);
            }
        }
        a aVar = this.f17511l;
        if (aVar != null) {
            aVar.a(this.f17501b, true);
        }
    }

    public boolean j() {
        return this.f17505f == f17499m;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.f17502c;
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = this.f17502c.getIntrinsicHeight();
        if (this.f17505f == f17499m) {
            int width = getWidth() - getNodeWidth();
            int nodeWidth = getNodeWidth() >> 1;
            canvas.save();
            canvas.translate(nodeWidth, 0.0f);
            this.f17502c.setBounds(0, (getHeight() - intrinsicHeight) >> 1, width, (getHeight() + intrinsicHeight) >> 1);
            this.f17502c.draw(canvas);
            int i2 = (this.f17507h * width) / this.f17506g;
            canvas.clipRect(new Rect(0, 0, i2, getWidth()));
            this.f17503d.setBounds(0, (getHeight() - intrinsicHeight) >> 1, width, (getHeight() + intrinsicHeight) >> 1);
            this.f17503d.draw(canvas);
            canvas.restore();
            if (this.f17504e != null) {
                canvas.save();
                canvas.translate(i2 + (nodeWidth - (getNodeWidth() >> 1)), (getHeight() - getNodeheight()) >> 1);
                this.f17504e.setBounds(0, (getHeight() - getNodeheight()) >> 1, getNodeWidth(), (getHeight() + getNodeheight()) >> 1);
                this.f17504e.draw(canvas);
                canvas.restore();
            }
        } else {
            int height = getHeight() - getNodeheight();
            int nodeheight = getNodeheight() >> 1;
            canvas.save();
            canvas.translate(0.0f, nodeheight);
            this.f17502c.setBounds((getWidth() - intrinsicWidth) >> 1, 0, (getWidth() + intrinsicWidth) >> 1, height);
            this.f17502c.draw(canvas);
            int i3 = this.f17506g;
            canvas.clipRect(new Rect(0, (((i3 - this.f17507h) * height) / i3) + nodeheight, getWidth(), height));
            this.f17503d.setBounds((getWidth() - intrinsicWidth) >> 1, 0, (getWidth() + intrinsicWidth) >> 1, height);
            this.f17503d.draw(canvas);
            canvas.restore();
            if (this.f17504e != null) {
                canvas.save();
                canvas.translate((getWidth() - getNodeWidth()) >> 1, nodeheight - (getNodeheight() >> 1));
                this.f17504e.setBounds((getWidth() - getNodeWidth()) >> 1, 0, (getWidth() + getNodeWidth()) >> 1, getNodeheight());
                this.f17504e.draw(canvas);
                canvas.restore();
            }
        }
        if (this.f17507h == this.f17508i) {
            this.f17509j = 0L;
            return;
        }
        long drawingTime = getDrawingTime();
        if (this.f17509j == 0) {
            this.f17509j = drawingTime - 33;
        }
        long j2 = this.f17509j;
        if (drawingTime - j2 < 33) {
            return;
        }
        float f2 = ((drawingTime - j2) * ((long) this.f17506g)) / 200.0f;
        this.f17509j = drawingTime;
        if (Math.abs(this.f17507h - this.f17508i) < f2) {
            this.f17507h = this.f17508i;
        } else {
            int i4 = this.f17507h;
            if (i4 > this.f17508i) {
                this.f17507h = (int) (i4 - f2);
            } else {
                this.f17507h = (int) (i4 + f2);
            }
        }
        postInvalidateDelayed(33L);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int nodeheight;
        super.onMeasure(i2, i3);
        Drawable drawable = this.f17502c;
        if (drawable != null) {
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int intrinsicWidth = this.f17502c.getIntrinsicWidth();
            int mode = View.MeasureSpec.getMode(i3);
            int mode2 = View.MeasureSpec.getMode(i2);
            if (j()) {
                nodeheight = mode == Integer.MIN_VALUE ? Math.max(intrinsicHeight, getNodeheight()) : View.getDefaultSize(getSuggestedMinimumHeight(), i3);
                intrinsicWidth = mode2 == Integer.MIN_VALUE ? intrinsicWidth + getNodeWidth() : View.getDefaultSize(getSuggestedMinimumWidth(), i2);
            } else {
                if (mode2 == Integer.MIN_VALUE) {
                    intrinsicWidth = Math.max(intrinsicWidth, getNodeWidth());
                } else {
                    intrinsicHeight = View.getDefaultSize(getSuggestedMinimumHeight(), i3);
                }
                nodeheight = mode == Integer.MIN_VALUE ? intrinsicHeight + getNodeheight() : View.getDefaultSize(getSuggestedMinimumWidth(), i2);
            }
            Log.e("VOL", "222  onMeasure ==========>> height : " + nodeheight + " width: " + intrinsicWidth);
            setMeasuredDimension(intrinsicWidth, nodeheight);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    /* JADX WARN: Code duplicated, block: B:16:0x003b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:30:0x0088  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar = this.f17511l;
        if (aVar != null) {
            aVar.b();
        }
        float y2 = (int) motionEvent.getY();
        float x2 = (int) motionEvent.getX();
        if (j()) {
            int nodeWidth = getNodeWidth() >> 1;
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (!this.f17510k) {
                        j.e(l.a(), this);
                    }
                } else if (action == 2) {
                    h(x2);
                } else if (action == 3) {
                    if (!this.f17510k) {
                        j.e(l.a(), this);
                    }
                }
            } else if (Math.abs(x2 - (((getWidth() * this.f17507h) / this.f17506g) + nodeWidth)) <= (getNodeWidth() >> 1)) {
                this.f17510k = true;
                h(x2);
            } else {
                this.f17510k = false;
                h(x2);
                j.b(l.a(), this, 0L);
            }
        } else {
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                int height = getHeight();
                int i2 = this.f17506g;
                if (Math.abs(y2 - ((height * (i2 - this.f17507h)) / i2)) <= (getNodeheight() >> 1)) {
                    this.f17510k = true;
                    i(y2);
                } else {
                    this.f17510k = false;
                    i(y2);
                    j.b(l.a(), this, 0L);
                }
            } else if (action2 == 1) {
                if (!this.f17510k) {
                    j.e(l.a(), this);
                }
            } else if (action2 == 2) {
                i(y2);
            } else if (action2 == 3) {
                if (!this.f17510k) {
                    j.e(l.a(), this);
                }
            }
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2;
        int i3;
        a aVar;
        if (!this.f17510k && (i2 = this.f17507h) != (i3 = this.f17501b)) {
            if (i2 < i3) {
                a aVar2 = this.f17511l;
                if (aVar2 != null) {
                    aVar2.d();
                }
            } else if (i2 > i3 && (aVar = this.f17511l) != null) {
                aVar.c();
            }
        }
        l.a().postDelayed(this, 35L);
    }

    public void setNodeDrawable(Drawable drawable) {
        Log.e("VOL", " setNodeDrawable : " + drawable);
        this.f17504e = drawable;
    }

    public void setNormalDrawable(Drawable drawable) {
        Log.e("VOL", " setNormalDrawable : " + drawable);
        this.f17502c = drawable;
    }

    public void setOnProgressListener(a aVar) {
        this.f17511l = aVar;
    }

    public void setProgressDrawable(Drawable drawable) {
        Log.e("VOL", " setProgressDrawable : " + drawable);
        this.f17503d = drawable;
    }

    public void setTarget(int i2) {
        this.f17508i = i2;
        if (this.f17507h != i2) {
            invalidate();
        }
    }
}
