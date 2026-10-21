package android.text.style;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;

/* JADX INFO: loaded from: classes.dex */
public class IconMarginSpan implements LeadingMarginSpan, LineHeightSpan {
    private Bitmap mBitmap;
    private int mPad;

    public IconMarginSpan(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        if (i3 == ((Spanned) charSequence).getSpanEnd(this)) {
            int height = this.mBitmap.getHeight();
            int i6 = fontMetricsInt.descent;
            int i7 = height - (((i5 + i6) - fontMetricsInt.ascent) - i4);
            if (i7 > 0) {
                fontMetricsInt.descent = i6 + i7;
            }
            int i8 = fontMetricsInt.bottom;
            int i9 = height - (((i5 + i8) - fontMetricsInt.top) - i4);
            if (i9 > 0) {
                fontMetricsInt.bottom = i8 + i9;
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z2, Layout layout) {
        int lineTop = layout.getLineTop(layout.getLineForOffset(((Spanned) charSequence).getSpanStart(this)));
        if (i3 < 0) {
            i2 -= this.mBitmap.getWidth();
        }
        canvas.drawBitmap(this.mBitmap, i2, lineTop, paint);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z2) {
        return this.mBitmap.getWidth() + this.mPad;
    }

    public IconMarginSpan(Bitmap bitmap, int i2) {
        this.mBitmap = bitmap;
        this.mPad = i2;
    }
}
