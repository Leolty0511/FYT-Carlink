package android.graphics;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class Outline {
    public static final int MODE_CONVEX_PATH = 2;
    public static final int MODE_EMPTY = 0;
    public static final int MODE_ROUND_RECT = 1;
    private static final float RADIUS_UNDEFINED = Float.NEGATIVE_INFINITY;
    public float mAlpha;
    public Path mPath;
    public int mMode = 0;
    public final Rect mRect = new Rect();
    public float mRadius = RADIUS_UNDEFINED;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public Outline() {
    }

    public boolean canClip() {
        return this.mMode != 2;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public float getRadius() {
        return this.mRadius;
    }

    public boolean getRect(Rect rect) {
        if (this.mMode != 1) {
            return false;
        }
        rect.set(this.mRect);
        return true;
    }

    public boolean isEmpty() {
        return this.mMode == 0;
    }

    public void offset(int i2, int i3) {
        int i4 = this.mMode;
        if (i4 == 1) {
            this.mRect.offset(i2, i3);
        } else if (i4 == 2) {
            this.mPath.offset(i2, i3);
        }
    }

    public void set(Outline outline) {
        this.mMode = outline.mMode;
        if (outline.mMode == 2) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            this.mPath.set(outline.mPath);
        }
        this.mRect.set(outline.mRect);
        this.mRadius = outline.mRadius;
        this.mAlpha = outline.mAlpha;
    }

    public void setAlpha(float f2) {
        this.mAlpha = f2;
    }

    public void setConvexPath(Path path) {
        if (path.isEmpty()) {
            setEmpty();
            return;
        }
        if (!path.isConvex()) {
            throw new IllegalArgumentException("path must be convex");
        }
        if (this.mPath == null) {
            this.mPath = new Path();
        }
        this.mMode = 2;
        this.mPath.set(path);
        this.mRect.setEmpty();
        this.mRadius = RADIUS_UNDEFINED;
    }

    public void setEmpty() {
        Path path = this.mPath;
        if (path != null) {
            path.rewind();
        }
        this.mMode = 0;
        this.mRect.setEmpty();
        this.mRadius = RADIUS_UNDEFINED;
    }

    public void setOval(int i2, int i3, int i4, int i5) {
        if (i2 >= i4 || i3 >= i5) {
            setEmpty();
            return;
        }
        int i6 = i5 - i3;
        if (i6 == i4 - i2) {
            setRoundRect(i2, i3, i4, i5, i6 / 2.0f);
            return;
        }
        Path path = this.mPath;
        if (path == null) {
            this.mPath = new Path();
        } else {
            path.rewind();
        }
        this.mMode = 2;
        this.mPath.addOval(i2, i3, i4, i5, Path.Direction.CW);
        this.mRect.setEmpty();
        this.mRadius = RADIUS_UNDEFINED;
    }

    public void setRect(int i2, int i3, int i4, int i5) {
        setRoundRect(i2, i3, i4, i5, 0.0f);
    }

    public void setRoundRect(int i2, int i3, int i4, int i5, float f2) {
        if (i2 >= i4 || i3 >= i5) {
            setEmpty();
            return;
        }
        if (this.mMode == 2) {
            this.mPath.rewind();
        }
        this.mMode = 1;
        this.mRect.set(i2, i3, i4, i5);
        this.mRadius = f2;
    }

    public void setRect(Rect rect) {
        setRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    public Outline(Outline outline) {
        set(outline);
    }

    public void setRoundRect(Rect rect, float f2) {
        setRoundRect(rect.left, rect.top, rect.right, rect.bottom, f2);
    }

    public void setOval(Rect rect) {
        setOval(rect.left, rect.top, rect.right, rect.bottom);
    }
}
