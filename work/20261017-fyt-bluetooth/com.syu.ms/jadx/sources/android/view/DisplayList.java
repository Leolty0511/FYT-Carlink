package android.view;

import android.graphics.Matrix;

/* JADX INFO: loaded from: classes.dex */
public abstract class DisplayList {
    public static final int FLAG_CLIP_CHILDREN = 1;
    public static final int STATUS_DONE = 0;
    public static final int STATUS_DRAW = 1;
    public static final int STATUS_DREW = 4;
    public static final int STATUS_INVOKE = 2;
    private boolean mDirty;

    public abstract void clear();

    public void clearDirty() {
        this.mDirty = false;
    }

    public abstract void end();

    public abstract float getAlpha();

    public abstract float getBottom();

    public abstract float getCameraDistance();

    public abstract float getLeft();

    public Matrix getMatrix() {
        return getMatrix(new Matrix());
    }

    public abstract Matrix getMatrix(Matrix matrix);

    public abstract float getPivotX();

    public abstract float getPivotY();

    public abstract float getRight();

    public abstract float getRotation();

    public abstract float getRotationX();

    public abstract float getRotationY();

    public abstract float getScaleX();

    public abstract float getScaleY();

    public abstract int getSize();

    public abstract float getTop();

    public abstract float getTranslationX();

    public abstract float getTranslationY();

    public abstract boolean hasOverlappingRendering();

    public boolean isDirty() {
        return this.mDirty;
    }

    public abstract boolean isValid();

    public void markDirty() {
        this.mDirty = true;
    }

    public abstract void offsetLeftAndRight(float f2);

    public abstract void offsetTopAndBottom(float f2);

    public abstract void reset();

    public abstract void setAlpha(float f2);

    public abstract void setAnimationMatrix(Matrix matrix);

    public abstract void setBottom(int i2);

    public abstract void setCaching(boolean z2);

    public abstract void setCameraDistance(float f2);

    public abstract void setClipToBounds(boolean z2);

    public abstract void setHasOverlappingRendering(boolean z2);

    public abstract void setLeft(int i2);

    public abstract void setLeftTopRightBottom(int i2, int i3, int i4, int i5);

    public abstract void setMatrix(Matrix matrix);

    public abstract void setPivotX(float f2);

    public abstract void setPivotY(float f2);

    public abstract void setRight(int i2);

    public abstract void setRotation(float f2);

    public abstract void setRotationX(float f2);

    public abstract void setRotationY(float f2);

    public abstract void setScaleX(float f2);

    public abstract void setScaleY(float f2);

    public abstract void setTop(int i2);

    public abstract void setTransformationInfo(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9);

    public abstract void setTranslationX(float f2);

    public abstract void setTranslationY(float f2);

    public abstract HardwareCanvas start(int i2, int i3);
}
