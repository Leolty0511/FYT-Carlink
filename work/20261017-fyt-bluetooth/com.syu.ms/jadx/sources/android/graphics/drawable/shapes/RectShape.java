package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public class RectShape extends Shape {
    private RectF mRect = new RectF();

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.drawRect(this.mRect, paint);
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void onResize(float f2, float f3) {
        this.mRect.set(0.0f, 0.0f, f2, f3);
    }

    public final RectF rect() {
        return this.mRect;
    }

    @Override // android.graphics.drawable.shapes.Shape
    /* JADX INFO: renamed from: clone */
    public RectShape mo9clone() {
        RectShape rectShape = (RectShape) super.mo9clone();
        rectShape.mRect = new RectF(this.mRect);
        return rectShape;
    }
}
