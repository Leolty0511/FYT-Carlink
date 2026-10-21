package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public class PathShape extends Shape {
    private Path mPath;
    private float mScaleX;
    private float mScaleY;
    private final float mStdHeight;
    private final float mStdWidth;

    public PathShape(Path path, float f2, float f3) {
        this.mPath = path;
        this.mStdWidth = f2;
        this.mStdHeight = f3;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.save();
        canvas.scale(this.mScaleX, this.mScaleY);
        canvas.drawPath(this.mPath, paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void onResize(float f2, float f3) {
        this.mScaleX = f2 / this.mStdWidth;
        this.mScaleY = f3 / this.mStdHeight;
    }

    @Override // android.graphics.drawable.shapes.Shape
    /* JADX INFO: renamed from: clone */
    public PathShape mo21clone() {
        PathShape pathShape = (PathShape) super.mo21clone();
        pathShape.mPath = new Path(this.mPath);
        return pathShape;
    }
}
