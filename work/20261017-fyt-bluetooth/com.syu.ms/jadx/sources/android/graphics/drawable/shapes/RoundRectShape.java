package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public class RoundRectShape extends RectShape {
    private float[] mInnerRadii;
    private RectF mInnerRect;
    private RectF mInset;
    private float[] mOuterRadii;
    private Path mPath;

    public RoundRectShape(float[] fArr, RectF rectF, float[] fArr2) {
        if (fArr != null && fArr.length < 8) {
            throw new ArrayIndexOutOfBoundsException("outer radii must have >= 8 values");
        }
        if (fArr2 != null && fArr2.length < 8) {
            throw new ArrayIndexOutOfBoundsException("inner radii must have >= 8 values");
        }
        this.mOuterRadii = fArr;
        this.mInset = rectF;
        this.mInnerRadii = fArr2;
        if (rectF != null) {
            this.mInnerRect = new RectF();
        }
        this.mPath = new Path();
    }

    @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.drawPath(this.mPath, paint);
    }

    @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    public void onResize(float f2, float f3) {
        super.onResize(f2, f3);
        RectF rectFRect = rect();
        this.mPath.reset();
        float[] fArr = this.mOuterRadii;
        if (fArr != null) {
            this.mPath.addRoundRect(rectFRect, fArr, Path.Direction.CW);
        } else {
            this.mPath.addRect(rectFRect, Path.Direction.CW);
        }
        RectF rectF = this.mInnerRect;
        if (rectF != null) {
            float f4 = rectFRect.left;
            RectF rectF2 = this.mInset;
            rectF.set(f4 + rectF2.left, rectFRect.top + rectF2.top, rectFRect.right - rectF2.right, rectFRect.bottom - rectF2.bottom);
            if (this.mInnerRect.width() >= f2 || this.mInnerRect.height() >= f3) {
                return;
            }
            float[] fArr2 = this.mInnerRadii;
            if (fArr2 != null) {
                this.mPath.addRoundRect(this.mInnerRect, fArr2, Path.Direction.CCW);
            } else {
                this.mPath.addRect(this.mInnerRect, Path.Direction.CCW);
            }
        }
    }

    @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
    /* JADX INFO: renamed from: clone */
    public RoundRectShape mo9clone() {
        RoundRectShape roundRectShape = (RoundRectShape) super.mo9clone();
        float[] fArr = this.mOuterRadii;
        roundRectShape.mOuterRadii = fArr != null ? (float[]) fArr.clone() : null;
        float[] fArr2 = this.mInnerRadii;
        roundRectShape.mInnerRadii = fArr2 != null ? (float[]) fArr2.clone() : null;
        roundRectShape.mInset = new RectF(this.mInset);
        roundRectShape.mInnerRect = new RectF(this.mInnerRect);
        roundRectShape.mPath = new Path(this.mPath);
        return roundRectShape;
    }
}
