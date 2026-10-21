package android.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.internal.widget.ScrollBarUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ScrollBarDrawable extends Drawable implements Drawable.Callback {
    private int mAlpha = 255;
    private boolean mAlwaysDrawHorizontalTrack;
    private boolean mAlwaysDrawVerticalTrack;
    private boolean mBoundsChanged;
    private ColorFilter mColorFilter;
    private int mExtent;
    private boolean mHasSetAlpha;
    private boolean mHasSetColorFilter;
    private Drawable mHorizontalThumb;
    private Drawable mHorizontalTrack;
    private boolean mMutated;
    private int mOffset;
    private int mRange;
    private boolean mRangeChanged;
    private boolean mVertical;
    private Drawable mVerticalThumb;
    private Drawable mVerticalTrack;

    private void drawThumb(Canvas canvas, Rect rect, int i2, int i3, boolean z2) {
        boolean z3 = this.mRangeChanged || this.mBoundsChanged;
        if (!z2) {
            Drawable drawable = this.mHorizontalThumb;
            if (drawable != null) {
                if (z3) {
                    int i4 = rect.left;
                    drawable.setBounds(i4 + i2, rect.top, i4 + i2 + i3, rect.bottom);
                }
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = this.mVerticalThumb;
        if (drawable2 != null) {
            if (z3) {
                int i5 = rect.left;
                int i6 = rect.top;
                drawable2.setBounds(i5, i6 + i2, rect.right, i6 + i2 + i3);
            }
            drawable2.draw(canvas);
        }
    }

    private void drawTrack(Canvas canvas, Rect rect, boolean z2) {
        Drawable drawable = z2 ? this.mVerticalTrack : this.mHorizontalTrack;
        if (drawable != null) {
            if (this.mBoundsChanged) {
                drawable.setBounds(rect);
            }
            drawable.draw(canvas);
        }
    }

    private void propagateCurrentState(Drawable drawable) {
        if (drawable != null) {
            if (this.mMutated) {
                drawable.mutate();
            }
            drawable.setState(getState());
            drawable.setCallback(this);
            if (this.mHasSetAlpha) {
                drawable.setAlpha(this.mAlpha);
            }
            if (this.mHasSetColorFilter) {
                drawable.setColorFilter(this.mColorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        boolean z4 = this.mVertical;
        int i2 = this.mExtent;
        int i3 = this.mRange;
        if (i2 <= 0 || i3 <= i2) {
            z2 = z4 ? this.mAlwaysDrawVerticalTrack : this.mAlwaysDrawHorizontalTrack;
            z3 = false;
        } else {
            z2 = true;
            z3 = true;
        }
        Rect bounds = getBounds();
        if (canvas.quickReject(bounds.left, bounds.top, bounds.right, bounds.bottom, Canvas.EdgeType.AA)) {
            return;
        }
        if (z2) {
            drawTrack(canvas, bounds, z4);
        }
        if (z3) {
            int iHeight = z4 ? bounds.height() : bounds.width();
            int thumbLength = ScrollBarUtils.getThumbLength(iHeight, z4 ? bounds.width() : bounds.height(), i2, i3);
            drawThumb(canvas, bounds, ScrollBarUtils.getThumbOffset(iHeight, thumbLength, i2, i3, this.mOffset), thumbLength, z4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    public boolean getAlwaysDrawHorizontalTrack() {
        return this.mAlwaysDrawHorizontalTrack;
    }

    public boolean getAlwaysDrawVerticalTrack() {
        return this.mAlwaysDrawVerticalTrack;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public int getSize(boolean z2) {
        if (z2) {
            Drawable drawable = this.mVerticalTrack;
            if (drawable != null) {
                return drawable.getIntrinsicWidth();
            }
            Drawable drawable2 = this.mVerticalThumb;
            if (drawable2 != null) {
                return drawable2.getIntrinsicWidth();
            }
            return 0;
        }
        Drawable drawable3 = this.mHorizontalTrack;
        if (drawable3 != null) {
            return drawable3.getIntrinsicHeight();
        }
        Drawable drawable4 = this.mHorizontalThumb;
        if (drawable4 != null) {
            return drawable4.getIntrinsicHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4 = this.mVerticalTrack;
        return (drawable4 != null && drawable4.isStateful()) || ((drawable = this.mVerticalThumb) != null && drawable.isStateful()) || (((drawable2 = this.mHorizontalTrack) != null && drawable2.isStateful()) || (((drawable3 = this.mHorizontalThumb) != null && drawable3.isStateful()) || super.isStateful()));
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mBoundsChanged = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        Drawable drawable = this.mVerticalTrack;
        if (drawable != null) {
            zOnStateChange |= drawable.setState(iArr);
        }
        Drawable drawable2 = this.mVerticalThumb;
        if (drawable2 != null) {
            zOnStateChange |= drawable2.setState(iArr);
        }
        Drawable drawable3 = this.mHorizontalTrack;
        if (drawable3 != null) {
            zOnStateChange |= drawable3.setState(iArr);
        }
        Drawable drawable4 = this.mHorizontalThumb;
        return drawable4 != null ? zOnStateChange | drawable4.setState(iArr) : zOnStateChange;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.mAlpha = i2;
        this.mHasSetAlpha = true;
        Drawable drawable = this.mVerticalTrack;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
        Drawable drawable2 = this.mVerticalThumb;
        if (drawable2 != null) {
            drawable2.setAlpha(i2);
        }
        Drawable drawable3 = this.mHorizontalTrack;
        if (drawable3 != null) {
            drawable3.setAlpha(i2);
        }
        Drawable drawable4 = this.mHorizontalThumb;
        if (drawable4 != null) {
            drawable4.setAlpha(i2);
        }
    }

    public void setAlwaysDrawHorizontalTrack(boolean z2) {
        this.mAlwaysDrawHorizontalTrack = z2;
    }

    public void setAlwaysDrawVerticalTrack(boolean z2) {
        this.mAlwaysDrawVerticalTrack = z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mColorFilter = colorFilter;
        this.mHasSetColorFilter = true;
        Drawable drawable = this.mVerticalTrack;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.mVerticalThumb;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        }
        Drawable drawable3 = this.mHorizontalTrack;
        if (drawable3 != null) {
            drawable3.setColorFilter(colorFilter);
        }
        Drawable drawable4 = this.mHorizontalThumb;
        if (drawable4 != null) {
            drawable4.setColorFilter(colorFilter);
        }
    }

    public void setHorizontalThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.mHorizontalThumb;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        propagateCurrentState(drawable);
        this.mHorizontalThumb = drawable;
    }

    public void setHorizontalTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.mHorizontalTrack;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        propagateCurrentState(drawable);
        this.mHorizontalTrack = drawable;
    }

    public void setParameters(int i2, int i3, int i4, boolean z2) {
        if (this.mVertical != z2) {
            this.mVertical = z2;
            this.mBoundsChanged = true;
        }
        if (this.mRange == i2 && this.mOffset == i3 && this.mExtent == i4) {
            return;
        }
        this.mRange = i2;
        this.mOffset = i3;
        this.mExtent = i4;
        this.mRangeChanged = true;
    }

    public void setVerticalThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.mVerticalThumb;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        propagateCurrentState(drawable);
        this.mVerticalThumb = drawable;
    }

    public void setVerticalTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.mVerticalTrack;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        propagateCurrentState(drawable);
        this.mVerticalTrack = drawable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScrollBarDrawable: range=");
        sb.append(this.mRange);
        sb.append(" offset=");
        sb.append(this.mOffset);
        sb.append(" extent=");
        sb.append(this.mExtent);
        sb.append(this.mVertical ? " V" : " H");
        return sb.toString();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public ScrollBarDrawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            Drawable drawable = this.mVerticalTrack;
            if (drawable != null) {
                drawable.mutate();
            }
            Drawable drawable2 = this.mVerticalThumb;
            if (drawable2 != null) {
                drawable2.mutate();
            }
            Drawable drawable3 = this.mHorizontalTrack;
            if (drawable3 != null) {
                drawable3.mutate();
            }
            Drawable drawable4 = this.mHorizontalThumb;
            if (drawable4 != null) {
                drawable4.mutate();
            }
            this.mMutated = true;
        }
        return this;
    }
}
