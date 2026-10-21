package android.gesture;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public class OrientedBoundingBox {
    public final float centerX;
    public final float centerY;
    public final float height;
    public final float orientation;
    public final float squareness;
    public final float width;

    public OrientedBoundingBox(float f2, float f3, float f4, float f5, float f6) {
        this.orientation = f2;
        this.width = f5;
        this.height = f6;
        this.centerX = f3;
        this.centerY = f4;
        float f7 = f5 / f6;
        if (f7 > 1.0f) {
            this.squareness = 1.0f / f7;
        } else {
            this.squareness = f7;
        }
    }

    public Path toPath() {
        Path path = new Path();
        float[] fArr = {(-this.width) / 2.0f, this.height / 2.0f};
        Matrix matrix = new Matrix();
        matrix.setRotate(this.orientation);
        matrix.postTranslate(this.centerX, this.centerY);
        matrix.mapPoints(fArr);
        path.moveTo(fArr[0], fArr[1]);
        fArr[0] = (-this.width) / 2.0f;
        fArr[1] = (-this.height) / 2.0f;
        matrix.mapPoints(fArr);
        path.lineTo(fArr[0], fArr[1]);
        fArr[0] = this.width / 2.0f;
        fArr[1] = (-this.height) / 2.0f;
        matrix.mapPoints(fArr);
        path.lineTo(fArr[0], fArr[1]);
        fArr[0] = this.width / 2.0f;
        fArr[1] = this.height / 2.0f;
        matrix.mapPoints(fArr);
        path.lineTo(fArr[0], fArr[1]);
        path.close();
        return path;
    }
}
