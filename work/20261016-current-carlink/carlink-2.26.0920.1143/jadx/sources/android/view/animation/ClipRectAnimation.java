package android.view.animation;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class ClipRectAnimation extends Animation {
    protected Rect mFromRect = new Rect();
    protected Rect mToRect = new Rect();

    public ClipRectAnimation(Rect rect, Rect rect2) {
        if (rect == null || rect2 == null) {
            throw new RuntimeException("Expected non-null animation clip rects");
        }
        this.mFromRect.set(rect);
        this.mToRect.set(rect2);
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        Rect rect = this.mFromRect;
        int i2 = rect.left;
        Rect rect2 = this.mToRect;
        int i3 = i2 + ((int) ((rect2.left - i2) * f2));
        int i4 = rect.top;
        int i5 = i4 + ((int) ((rect2.top - i4) * f2));
        int i6 = rect.right;
        int i7 = i6 + ((int) ((rect2.right - i6) * f2));
        int i8 = rect.bottom;
        transformation.setClipRect(i3, i5, i7, i8 + ((int) ((rect2.bottom - i8) * f2)));
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return false;
    }

    public ClipRectAnimation(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.mFromRect.set(i2, i3, i4, i5);
        this.mToRect.set(i6, i7, i8, i9);
    }
}
