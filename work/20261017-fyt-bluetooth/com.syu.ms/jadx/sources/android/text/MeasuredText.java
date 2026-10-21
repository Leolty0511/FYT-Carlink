package android.text;

import android.graphics.Paint;
import android.text.style.MetricAffectingSpan;
import android.text.style.ReplacementSpan;
import u.a;

/* JADX INFO: loaded from: classes.dex */
class MeasuredText {
    private static final boolean localLOGV = false;
    public char[] mChars;
    public int mDir;
    public boolean mEasy;
    public int mLen;
    public byte[] mLevels;
    private int mPos;
    public CharSequence mText;
    public int mTextStart;
    public float[] mWidths;
    private TextPaint mWorkPaint = new TextPaint();
    private static final Object[] sLock = new Object[0];
    private static MeasuredText[] sCached = new MeasuredText[3];

    private MeasuredText() {
    }

    public static MeasuredText obtain() {
        MeasuredText[] measuredTextArr;
        synchronized (sLock) {
            int length = sCached.length;
            do {
                length--;
                if (length < 0) {
                    return new MeasuredText();
                }
                measuredTextArr = sCached;
            } while (measuredTextArr[length] == null);
            MeasuredText measuredText = measuredTextArr[length];
            measuredTextArr[length] = null;
            return measuredText;
        }
    }

    public static MeasuredText recycle(MeasuredText measuredText) {
        measuredText.mText = null;
        if (measuredText.mLen < 1000) {
            synchronized (sLock) {
                int i2 = 0;
                while (true) {
                    MeasuredText[] measuredTextArr = sCached;
                    if (i2 >= measuredTextArr.length) {
                        break;
                    }
                    if (measuredTextArr[i2] == null) {
                        measuredTextArr[i2] = measuredText;
                        measuredText.mText = null;
                        break;
                    }
                    i2++;
                }
            }
        }
        return null;
    }

    public float addStyleRun(TextPaint textPaint, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            textPaint.getFontMetricsInt(fontMetricsInt);
        }
        int i3 = this.mPos;
        int i4 = i3 + i2;
        this.mPos = i4;
        if (this.mEasy) {
            return textPaint.getTextRunAdvances(this.mChars, i3, i2, i3, i2, this.mDir == 1 ? 0 : 1, this.mWidths, i3);
        }
        byte b2 = this.mLevels[i3];
        float textRunAdvances = 0.0f;
        int i5 = i3 + 1;
        while (true) {
            if (i5 == i4 || this.mLevels[i5] != b2) {
                int i6 = i5 - i3;
                textRunAdvances += textPaint.getTextRunAdvances(this.mChars, i3, i6, i3, i6, (b2 & 1) == 0 ? 0 : 1, this.mWidths, i3);
                if (i5 == i4) {
                    return textRunAdvances;
                }
                b2 = this.mLevels[i5];
                i3 = i5;
            }
            i5++;
        }
    }

    public int breakText(int i2, boolean z2, float f2) {
        float[] fArr = this.mWidths;
        if (z2) {
            int i3 = 0;
            while (i3 < i2) {
                f2 -= fArr[i3];
                if (f2 < 0.0f) {
                    break;
                }
                i3++;
            }
            while (i3 > 0 && this.mChars[i3 - 1] == ' ') {
                i3--;
            }
            return i3;
        }
        int i4 = i2 - 1;
        int i5 = i4;
        while (i5 >= 0) {
            f2 -= fArr[i5];
            if (f2 < 0.0f) {
                break;
            }
            i5--;
        }
        while (i5 < i4) {
            int i6 = i5 + 1;
            if (this.mChars[i6] != ' ') {
                break;
            }
            i5 = i6;
        }
        return (i2 - i5) - 1;
    }

    public float measure(int i2, int i3) {
        float[] fArr = this.mWidths;
        float f2 = 0.0f;
        while (i2 < i3) {
            f2 += fArr[i2];
            i2++;
        }
        return f2;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0094  */
    public void setPara(CharSequence charSequence, int i2, int i3, TextDirectionHeuristic textDirectionHeuristic) {
        this.mText = charSequence;
        this.mTextStart = i2;
        int i4 = i3 - i2;
        this.mLen = i4;
        this.mPos = 0;
        float[] fArr = this.mWidths;
        if (fArr == null || fArr.length < i4) {
            this.mWidths = new float[a.g(i4)];
        }
        char[] cArr = this.mChars;
        if (cArr == null || cArr.length < i4) {
            this.mChars = new char[a.f(i4)];
        }
        TextUtils.getChars(charSequence, i2, i3, this.mChars, 0);
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i2, i3, ReplacementSpan.class);
            for (int i5 = 0; i5 < replacementSpanArr.length; i5++) {
                int spanStart = spanned.getSpanStart(replacementSpanArr[i5]) - i2;
                int spanEnd = spanned.getSpanEnd(replacementSpanArr[i5]) - i2;
                if (spanStart < 0) {
                    spanStart = 0;
                }
                if (spanEnd > i4) {
                    spanEnd = i4;
                }
                while (spanStart < spanEnd) {
                    this.mChars[spanStart] = 65532;
                    spanStart++;
                }
            }
        }
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.LTR;
        int i6 = 1;
        if ((textDirectionHeuristic == textDirectionHeuristic2 || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR || textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) && TextUtils.doesNotNeedBidi(this.mChars, 0, i4)) {
            this.mDir = 1;
            this.mEasy = true;
            return;
        }
        byte[] bArr = this.mLevels;
        if (bArr == null || bArr.length < i4) {
            this.mLevels = new byte[a.e(i4)];
        }
        if (textDirectionHeuristic != textDirectionHeuristic2) {
            if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i6 = -1;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i6 = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i6 = -2;
            } else if (textDirectionHeuristic.isRtl(this.mChars, 0, i4)) {
                i6 = -1;
            }
        }
        this.mDir = AndroidBidi.bidi(i6, this.mChars, this.mLevels, i4, false);
        this.mEasy = false;
    }

    public void setPos(int i2) {
        this.mPos = i2 - this.mTextStart;
    }

    public float addStyleRun(TextPaint textPaint, MetricAffectingSpan[] metricAffectingSpanArr, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float size;
        TextPaint textPaint2 = this.mWorkPaint;
        textPaint2.set(textPaint);
        textPaint2.baselineShift = 0;
        ReplacementSpan replacementSpan = null;
        for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
            if (metricAffectingSpan instanceof ReplacementSpan) {
                replacementSpan = (ReplacementSpan) metricAffectingSpan;
            } else {
                metricAffectingSpan.updateMeasureState(textPaint2);
            }
        }
        if (replacementSpan == null) {
            size = addStyleRun(textPaint2, i2, fontMetricsInt);
        } else {
            CharSequence charSequence = this.mText;
            int i3 = this.mTextStart;
            int i4 = this.mPos;
            size = replacementSpan.getSize(textPaint2, charSequence, i3 + i4, i3 + i4 + i2, fontMetricsInt);
            float[] fArr = this.mWidths;
            int i5 = this.mPos;
            fArr[i5] = size;
            int i6 = i5 + i2;
            for (int i7 = i5 + 1; i7 < i6; i7++) {
                fArr[i7] = 0.0f;
            }
            this.mPos += i2;
        }
        if (fontMetricsInt != null) {
            int i8 = textPaint2.baselineShift;
            if (i8 < 0) {
                fontMetricsInt.ascent += i8;
                fontMetricsInt.top += i8;
            } else {
                fontMetricsInt.descent += i8;
                fontMetricsInt.bottom += i8;
            }
        }
        return size;
    }
}
