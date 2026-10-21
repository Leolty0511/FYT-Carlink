package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public abstract class Shape implements Cloneable {
    private float mHeight;
    private float mWidth;

    public abstract void draw(Canvas canvas, Paint paint);

    public final float getHeight() {
        return this.mHeight;
    }

    public final float getWidth() {
        return this.mWidth;
    }

    public boolean hasAlpha() {
        return true;
    }

    public void onResize(float f2, float f3) {
    }

    public final void resize(float f2, float f3) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f3 < 0.0f) {
            f3 = 0.0f;
        }
        if (this.mWidth == f2 && this.mHeight == f3) {
            return;
        }
        this.mWidth = f2;
        this.mHeight = f3;
        onResize(f2, f3);
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Shape mo9clone() {
        return (Shape) super.clone();
    }
}
