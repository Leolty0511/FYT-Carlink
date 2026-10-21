package android.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class ScrollBarDrawable extends Drawable {
    private boolean mAlwaysDrawHorizontalTrack;
    private boolean mAlwaysDrawVerticalTrack;
    private boolean mChanged;
    private int mExtent;
    private Drawable mHorizontalThumb;
    private Drawable mHorizontalTrack;
    private int mOffset;
    private int mRange;
    private boolean mRangeChanged;
    private final Rect mTempBounds = new Rect();
    private boolean mVertical;
    private Drawable mVerticalThumb;
    private Drawable mVerticalTrack;

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3 = this.mVertical;
        int i2 = this.mExtent;
        int i3 = this.mRange;
        boolean z4 = true;
        if (i2 <= 0 || i3 <= i2) {
            z4 = z3 ? this.mAlwaysDrawVerticalTrack : this.mAlwaysDrawHorizontalTrack;
            z2 = false;
        } else {
            z2 = true;
        }
        Rect bounds = getBounds();
        if (canvas.quickReject(bounds.left, bounds.top, bounds.right, bounds.bottom, Canvas.EdgeType.AA)) {
            return;
        }
        if (z4) {
            drawTrack(canvas, bounds, z3);
        }
        if (z2) {
            int iHeight = z3 ? bounds.height() : bounds.width();
            int iWidth = z3 ? bounds.width() : bounds.height();
            int iRound = Math.round((iHeight * i2) / i3);
            int iRound2 = Math.round(((iHeight - iRound) * this.mOffset) / (i3 - i2));
            int i4 = iWidth * 2;
            if (iRound < i4) {
                iRound = i4;
            }
            drawThumb(canvas, bounds, iRound2 + iRound > iHeight ? iHeight - iRound : iRound2, iRound, z3);
        }
    }

    public void drawThumb(Canvas canvas, Rect rect, int i2, int i3, boolean z2) {
        Rect rect2 = this.mTempBounds;
        boolean z3 = this.mRangeChanged || this.mChanged;
        if (z3) {
            if (z2) {
                int i4 = rect.left;
                int i5 = rect.top;
                rect2.set(i4, i5 + i2, rect.right, i5 + i2 + i3);
            } else {
                int i6 = rect.left;
                rect2.set(i6 + i2, rect.top, i6 + i2 + i3, rect.bottom);
            }
        }
        if (z2) {
            Drawable drawable = this.mVerticalThumb;
            if (z3) {
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
            return;
        }
        Drawable drawable2 = this.mHorizontalThumb;
        if (z3) {
            drawable2.setBounds(rect2);
        }
        drawable2.draw(canvas);
    }

    public void drawTrack(Canvas canvas, Rect rect, boolean z2) {
        Drawable drawable = z2 ? this.mVerticalTrack : this.mHorizontalTrack;
        if (drawable != null) {
            if (this.mChanged) {
                drawable.setBounds(rect);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mVerticalThumb.getAlpha();
    }

    public boolean getAlwaysDrawHorizontalTrack() {
        return this.mAlwaysDrawHorizontalTrack;
    }

    public boolean getAlwaysDrawVerticalTrack() {
        return this.mAlwaysDrawVerticalTrack;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public int getSize(boolean z2) {
        if (z2) {
            Drawable drawable = this.mVerticalTrack;
            if (drawable == null) {
                drawable = this.mVerticalThumb;
            }
            return drawable.getIntrinsicWidth();
        }
        Drawable drawable2 = this.mHorizontalTrack;
        if (drawable2 == null) {
            drawable2 = this.mHorizontalThumb;
        }
        return drawable2.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mChanged = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.mVerticalTrack;
        if (drawable != null) {
            drawable.setAlpha(i2);
        }
        this.mVerticalThumb.setAlpha(i2);
        Drawable drawable2 = this.mHorizontalTrack;
        if (drawable2 != null) {
            drawable2.setAlpha(i2);
        }
        this.mHorizontalThumb.setAlpha(i2);
    }

    public void setAlwaysDrawHorizontalTrack(boolean z2) {
        this.mAlwaysDrawHorizontalTrack = z2;
    }

    public void setAlwaysDrawVerticalTrack(boolean z2) {
        this.mAlwaysDrawVerticalTrack = z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.mVerticalTrack;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        this.mVerticalThumb.setColorFilter(colorFilter);
        Drawable drawable2 = this.mHorizontalTrack;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        }
        this.mHorizontalThumb.setColorFilter(colorFilter);
    }

    public void setHorizontalThumbDrawable(Drawable drawable) {
        if (drawable != null) {
            this.mHorizontalThumb = drawable;
        }
    }

    public void setHorizontalTrackDrawable(Drawable drawable) {
        this.mHorizontalTrack = drawable;
    }

    public void setParameters(int i2, int i3, int i4, boolean z2) {
        if (this.mVertical != z2) {
            this.mChanged = true;
        }
        if (this.mRange != i2 || this.mOffset != i3 || this.mExtent != i4) {
            this.mRangeChanged = true;
        }
        this.mRange = i2;
        this.mOffset = i3;
        this.mExtent = i4;
        this.mVertical = z2;
    }

    public void setVerticalThumbDrawable(Drawable drawable) {
        if (drawable != null) {
            this.mVerticalThumb = drawable;
        }
    }

    public void setVerticalTrackDrawable(Drawable drawable) {
        this.mVerticalTrack = drawable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ScrollBarDrawable: range=");
        sb.append(this.mRange);
        sb.append(" offset=");
        sb.append(this.mOffset);
        sb.append(" extent=");
        sb.append(this.mExtent);
        sb.append(this.mVertical ? " V" : " H");
        return sb.toString();
    }
}
