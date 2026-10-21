package android.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public abstract class HardwareCanvas extends Canvas {
    private String mName;

    public abstract void attachFunctor(int i2);

    public int callDrawGLFunction(int i2) {
        return 0;
    }

    public abstract void cancelLayerUpdate(HardwareLayer hardwareLayer);

    public abstract void clearLayerUpdates();

    public abstract void detachFunctor(int i2);

    public abstract int drawDisplayList(DisplayList displayList, Rect rect, int i2);

    public void drawDisplayList(DisplayList displayList) {
        drawDisplayList(displayList, null, 1);
    }

    public abstract void drawHardwareLayer(HardwareLayer hardwareLayer, float f2, float f3, Paint paint);

    public abstract void flushLayerUpdates();

    public String getName() {
        return this.mName;
    }

    public int invokeFunctors(Rect rect) {
        return 0;
    }

    @Override // android.graphics.Canvas
    public boolean isHardwareAccelerated() {
        return true;
    }

    public abstract void onPostDraw();

    public abstract int onPreDraw(Rect rect);

    public abstract void outputDisplayList(DisplayList displayList);

    public abstract void pushLayerUpdate(HardwareLayer hardwareLayer);

    @Override // android.graphics.Canvas
    public void setBitmap(Bitmap bitmap) {
        throw new UnsupportedOperationException();
    }

    public void setName(String str) {
        this.mName = str;
    }
}
