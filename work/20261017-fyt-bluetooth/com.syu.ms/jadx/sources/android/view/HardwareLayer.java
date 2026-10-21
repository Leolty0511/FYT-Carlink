package android.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
abstract class HardwareLayer {
    public static final int DIMENSION_UNDEFINED = -1;
    public DisplayList mDisplayList;
    public int mHeight;
    public boolean mOpaque;
    public int mWidth;

    public HardwareLayer() {
        this(-1, -1, false);
    }

    public abstract void clearStorage();

    public abstract boolean copyInto(Bitmap bitmap);

    public abstract void destroy();

    public abstract void end(Canvas canvas);

    public abstract HardwareCanvas getCanvas();

    public DisplayList getDisplayList() {
        return this.mDisplayList;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isOpaque() {
        return this.mOpaque;
    }

    public abstract boolean isValid();

    public abstract void redrawLater(DisplayList displayList, Rect rect);

    public abstract boolean resize(int i2, int i3);

    public void setDisplayList(DisplayList displayList) {
        this.mDisplayList = displayList;
    }

    public void setLayerPaint(Paint paint) {
    }

    public abstract void setOpaque(boolean z2);

    public abstract void setTransform(Matrix matrix);

    public abstract HardwareCanvas start(Canvas canvas);

    public abstract HardwareCanvas start(Canvas canvas, Rect rect);

    public void update(int i2, int i3, boolean z2) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mOpaque = z2;
    }

    public HardwareLayer(int i2, int i3, boolean z2) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mOpaque = z2;
    }
}
