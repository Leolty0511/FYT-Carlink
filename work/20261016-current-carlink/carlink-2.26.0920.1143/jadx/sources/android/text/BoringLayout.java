package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.style.ParagraphStyle;

/* JADX INFO: loaded from: classes2.dex */
public class BoringLayout extends Layout implements TextUtils.EllipsizeCallback {
    int mBottom;
    private int mBottomPadding;
    int mDesc;
    private String mDirect;
    private int mEllipsizedCount;
    private int mEllipsizedStart;
    private int mEllipsizedWidth;
    private float mMax;
    private Paint mPaint;
    private int mTopPadding;

    public static class Metrics extends Paint.FontMetricsInt {
        public int width;

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.top = 0;
            this.bottom = 0;
            this.ascent = 0;
            this.descent = 0;
            this.width = 0;
            this.leading = 0;
        }

        @Override // android.graphics.Paint.FontMetricsInt
        public String toString() {
            return super.toString() + " width=" + this.width;
        }
    }

    public BoringLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2) {
        super(charSequence, textPaint, i2, alignment, f2, f3);
        this.mEllipsizedWidth = i2;
        this.mEllipsizedStart = 0;
        this.mEllipsizedCount = 0;
        init(charSequence, textPaint, i2, alignment, f2, f3, metrics, z2, true);
    }

    private static boolean hasAnyInterestingChars(CharSequence charSequence, int i2) {
        char[] cArrObtain = TextUtils.obtain(500);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 + 500;
            try {
                int iMin = Math.min(i4, i2);
                TextUtils.getChars(charSequence, i3, iMin, cArrObtain, 0);
                int i5 = iMin - i3;
                for (int i6 = 0; i6 < i5; i6++) {
                    char c = cArrObtain[i6];
                    if (c == '\n' || c == '\t' || TextUtils.couldAffectRtl(c)) {
                        TextUtils.recycle(cArrObtain);
                        return true;
                    }
                }
                i3 = i4;
            } catch (Throwable th) {
                TextUtils.recycle(cArrObtain);
                throw th;
            }
        }
        TextUtils.recycle(cArrObtain);
        return false;
    }

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint) {
        return isBoring(charSequence, textPaint, TextDirectionHeuristics.FIRSTSTRONG_LTR, null);
    }

    public static BoringLayout make(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2) {
        return new BoringLayout(charSequence, textPaint, i2, alignment, f2, f3, metrics, z2);
    }

    @Override // android.text.Layout
    public void draw(Canvas canvas, Path path, Paint paint, int i2) {
        String str = this.mDirect;
        if (str == null || path != null) {
            super.draw(canvas, path, paint, i2);
        } else {
            canvas.drawText(str, 0.0f, this.mBottom - this.mDesc, this.mPaint);
        }
    }

    @Override // android.text.TextUtils.EllipsizeCallback
    public void ellipsized(int i2, int i3) {
        this.mEllipsizedStart = i2;
        this.mEllipsizedCount = i3 - i2;
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int i2) {
        return this.mEllipsizedCount;
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int i2) {
        return this.mEllipsizedStart;
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public int getHeight() {
        return this.mBottom;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int i2) {
        return false;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return 1;
    }

    @Override // android.text.Layout
    public int getLineDescent(int i2) {
        return this.mDesc;
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int i2) {
        return Layout.DIRS_ALL_LEFT_TO_RIGHT;
    }

    @Override // android.text.Layout
    public float getLineMax(int i2) {
        return this.mMax;
    }

    @Override // android.text.Layout
    public int getLineStart(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return getText().length();
    }

    @Override // android.text.Layout
    public int getLineTop(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return this.mBottom;
    }

    @Override // android.text.Layout
    public float getLineWidth(int i2) {
        if (i2 == 0) {
            return this.mMax;
        }
        return 0.0f;
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int i2) {
        return 1;
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    public void init(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, boolean z3) {
        int i3;
        if ((charSequence instanceof String) && alignment == Layout.Alignment.ALIGN_NORMAL) {
            this.mDirect = charSequence.toString();
        } else {
            this.mDirect = null;
        }
        this.mPaint = textPaint;
        if (z2) {
            int i4 = metrics.bottom;
            i3 = i4 - metrics.top;
            this.mDesc = i4;
        } else {
            int i5 = metrics.descent;
            i3 = i5 - metrics.ascent;
            this.mDesc = i5;
        }
        this.mBottom = i3;
        if (z3) {
            this.mMax = metrics.width;
        } else {
            TextLine textLineObtain = TextLine.obtain();
            textLineObtain.set(textPaint, charSequence, 0, charSequence.length(), 1, Layout.DIRS_ALL_LEFT_TO_RIGHT, false, null);
            this.mMax = (int) Math.ceil(textLineObtain.metrics(null));
            TextLine.recycle(textLineObtain);
        }
        if (z2) {
            this.mTopPadding = metrics.top - metrics.ascent;
            this.mBottomPadding = metrics.bottom - metrics.descent;
        }
    }

    public BoringLayout replaceOrMake(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2) {
        replaceWith(charSequence, textPaint, i2, alignment, f2, f3);
        this.mEllipsizedWidth = i2;
        this.mEllipsizedStart = 0;
        this.mEllipsizedCount = 0;
        init(charSequence, textPaint, i2, alignment, f2, f3, metrics, z2, true);
        return this;
    }

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint, Metrics metrics) {
        return isBoring(charSequence, textPaint, TextDirectionHeuristics.FIRSTSTRONG_LTR, metrics);
    }

    public static BoringLayout make(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, TextUtils.TruncateAt truncateAt, int i3) {
        return new BoringLayout(charSequence, textPaint, i2, alignment, f2, f3, metrics, z2, truncateAt, i3);
    }

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, Metrics metrics) {
        int length = charSequence.length();
        if (hasAnyInterestingChars(charSequence, length)) {
            return null;
        }
        if (textDirectionHeuristic != null && textDirectionHeuristic.isRtl(charSequence, 0, length)) {
            return null;
        }
        if ((charSequence instanceof Spanned) && ((Spanned) charSequence).getSpans(0, length, ParagraphStyle.class).length > 0) {
            return null;
        }
        if (metrics == null) {
            metrics = new Metrics();
        } else {
            metrics.reset();
        }
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(textPaint, charSequence, 0, length, 1, Layout.DIRS_ALL_LEFT_TO_RIGHT, false, null);
        metrics.width = (int) Math.ceil(textLineObtain.metrics(metrics));
        TextLine.recycle(textLineObtain);
        return metrics;
    }

    public BoringLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, TextUtils.TruncateAt truncateAt, int i3) {
        boolean z3;
        super(charSequence, textPaint, i2, alignment, f2, f3);
        if (truncateAt != null && truncateAt != TextUtils.TruncateAt.MARQUEE) {
            replaceWith(TextUtils.ellipsize(charSequence, textPaint, i3, truncateAt, true, this), textPaint, i2, alignment, f2, f3);
            this.mEllipsizedWidth = i3;
            z3 = false;
        } else {
            this.mEllipsizedWidth = i2;
            this.mEllipsizedStart = 0;
            this.mEllipsizedCount = 0;
            z3 = true;
        }
        init(getText(), textPaint, i2, alignment, f2, f3, metrics, z2, z3);
    }

    public BoringLayout replaceOrMake(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, TextUtils.TruncateAt truncateAt, int i3) {
        boolean z3;
        if (truncateAt != null && truncateAt != TextUtils.TruncateAt.MARQUEE) {
            replaceWith(TextUtils.ellipsize(charSequence, textPaint, i3, truncateAt, true, this), textPaint, i2, alignment, f2, f3);
            this.mEllipsizedWidth = i3;
            z3 = false;
        } else {
            replaceWith(charSequence, textPaint, i2, alignment, f2, f3);
            this.mEllipsizedWidth = i2;
            this.mEllipsizedStart = 0;
            this.mEllipsizedCount = 0;
            z3 = true;
        }
        init(getText(), textPaint, i2, alignment, f2, f3, metrics, z2, z3);
        return this;
    }
}
