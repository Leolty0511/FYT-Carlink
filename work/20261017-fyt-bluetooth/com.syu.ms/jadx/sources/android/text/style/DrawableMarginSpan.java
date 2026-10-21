package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spanned;

/* JADX INFO: loaded from: classes.dex */
public class DrawableMarginSpan implements LeadingMarginSpan, LineHeightSpan {
    private Drawable mDrawable;
    private int mPad;

    public DrawableMarginSpan(Drawable drawable) {
        this.mDrawable = drawable;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        if (i3 == ((Spanned) charSequence).getSpanEnd(this)) {
            int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
            int i6 = fontMetricsInt.descent;
            int i7 = intrinsicHeight - (((i5 + i6) - fontMetricsInt.ascent) - i4);
            if (i7 > 0) {
                fontMetricsInt.descent = i6 + i7;
            }
            int i8 = fontMetricsInt.bottom;
            int i9 = intrinsicHeight - (((i5 + i8) - fontMetricsInt.top) - i4);
            if (i9 > 0) {
                fontMetricsInt.bottom = i8 + i9;
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z2, Layout layout) {
        int lineTop = layout.getLineTop(layout.getLineForOffset(((Spanned) charSequence).getSpanStart(this)));
        this.mDrawable.setBounds(i2, lineTop, this.mDrawable.getIntrinsicWidth() + i2, this.mDrawable.getIntrinsicHeight() + lineTop);
        this.mDrawable.draw(canvas);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z2) {
        return this.mDrawable.getIntrinsicWidth() + this.mPad;
    }

    public DrawableMarginSpan(Drawable drawable, int i2) {
        this.mDrawable = drawable;
        this.mPad = i2;
    }
}
