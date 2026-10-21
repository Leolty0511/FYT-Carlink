package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public class ArcShape extends RectShape {
    private float mStart;
    private float mSweep;

    public ArcShape(float f2, float f3) {
        this.mStart = f2;
        this.mSweep = f3;
    }

    @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.drawArc(rect(), this.mStart, this.mSweep, true, paint);
    }
}
