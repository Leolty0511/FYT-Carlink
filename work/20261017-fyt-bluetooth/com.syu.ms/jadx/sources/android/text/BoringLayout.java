package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.style.ParagraphStyle;
import android.util.FloatMath;

/* JADX INFO: loaded from: classes.dex */
public class BoringLayout extends Layout implements TextUtils.EllipsizeCallback {
    private static final char FIRST_RIGHT_TO_LEFT = 1424;
    private static final TextPaint sTemp = new TextPaint();
    public int mBottom;
    private int mBottomPadding;
    public int mDesc;
    private String mDirect;
    private int mEllipsizedCount;
    private int mEllipsizedStart;
    private int mEllipsizedWidth;
    private float mMax;
    private Paint mPaint;
    private int mTopPadding;

    public static class Metrics extends Paint.FontMetricsInt {
        public int width;

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
    public int getParagraphDirection(int i2) {
        return 1;
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    public void init(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, boolean z3) {
        int i3;
        int i4;
        if ((charSequence instanceof String) && alignment == Layout.Alignment.ALIGN_NORMAL) {
            this.mDirect = charSequence.toString();
        } else {
            this.mDirect = null;
        }
        this.mPaint = textPaint;
        if (z2) {
            i3 = metrics.bottom;
            i4 = metrics.top;
        } else {
            i3 = metrics.descent;
            i4 = metrics.ascent;
        }
        int i5 = i3 - i4;
        if (f2 != 1.0f || f3 != 0.0f) {
            i5 = (int) ((i5 * f2) + f3 + 0.5f);
        }
        this.mBottom = i5;
        if (z2) {
            this.mDesc = i5 + metrics.top;
        } else {
            this.mDesc = i5 + metrics.ascent;
        }
        if (z3) {
            this.mMax = metrics.width;
        } else {
            TextLine textLineObtain = TextLine.obtain();
            textLineObtain.set(textPaint, charSequence, 0, charSequence.length(), 1, Layout.DIRS_ALL_LEFT_TO_RIGHT, false, null);
            this.mMax = (int) FloatMath.ceil(textLineObtain.metrics(null));
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

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        return isBoring(charSequence, textPaint, textDirectionHeuristic, null);
    }

    public static BoringLayout make(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, Metrics metrics, boolean z2, TextUtils.TruncateAt truncateAt, int i3) {
        return new BoringLayout(charSequence, textPaint, i2, alignment, f2, f3, metrics, z2, truncateAt, i3);
    }

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint, Metrics metrics) {
        return isBoring(charSequence, textPaint, TextDirectionHeuristics.FIRSTSTRONG_LTR, metrics);
    }

    public static Metrics isBoring(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, Metrics metrics) {
        boolean z2;
        char[] cArrObtain = TextUtils.obtain(500);
        int length = charSequence.length();
        int i2 = 0;
        loop0: while (true) {
            if (i2 < length) {
                int i3 = i2 + 500;
                int i4 = i3 > length ? length : i3;
                TextUtils.getChars(charSequence, i2, i4, cArrObtain, 0);
                int i5 = i4 - i2;
                int i6 = 0;
                while (true) {
                    if (i6 < i5) {
                        char c2 = cArrObtain[i6];
                        if (c2 != '\n' && c2 != '\t' && c2 < 1424) {
                            i6++;
                        }
                    } else if (textDirectionHeuristic == null || !textDirectionHeuristic.isRtl(cArrObtain, 0, i5)) {
                        i2 = i3;
                    }
                    z2 = false;
                    break loop0;
                }
            }
            z2 = true;
            break;
        }
        TextUtils.recycle(cArrObtain);
        if (!((z2 && (charSequence instanceof Spanned) && ((Spanned) charSequence).getSpans(0, length, ParagraphStyle.class).length > 0) ? false : z2)) {
            return null;
        }
        if (metrics == null) {
            metrics = new Metrics();
        }
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(textPaint, charSequence, 0, length, 1, Layout.DIRS_ALL_LEFT_TO_RIGHT, false, null);
        metrics.width = (int) FloatMath.ceil(textLineObtain.metrics(metrics));
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
