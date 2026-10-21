package android.text;

import android.accessibilityservice.c;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;
import android.text.style.ReplacementSpan;
import com.android.internal.util.ArrayUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class TextLine {
    private static final boolean DEBUG = false;
    private static final int TAB_INCREMENT = 20;
    private static final TextLine[] sCached = new TextLine[3];
    private float mAddedWidth;
    private char[] mChars;
    private boolean mCharsValid;
    private int mDir;
    private Layout.Directions mDirections;
    private boolean mHasTabs;
    private int mLen;
    private TextPaint mPaint;
    private Spanned mSpanned;
    private int mStart;
    private Layout.TabStops mTabs;
    private CharSequence mText;
    private final TextPaint mWorkPaint = new TextPaint();
    private final TextPaint mActivePaint = new TextPaint();
    private final SpanSet<MetricAffectingSpan> mMetricAffectingSpanSpanSet = new SpanSet<>(MetricAffectingSpan.class);
    private final SpanSet<CharacterStyle> mCharacterStyleSpanSet = new SpanSet<>(CharacterStyle.class);
    private final SpanSet<ReplacementSpan> mReplacementSpanSpanSet = new SpanSet<>(ReplacementSpan.class);
    private final DecorationInfo mDecorationInfo = new DecorationInfo();
    private final ArrayList<DecorationInfo> mDecorations = new ArrayList<>();

    public static final class DecorationInfo {
        public int end;
        public boolean isStrikeThruText;
        public boolean isUnderlineText;
        public int start;
        public int underlineColor;
        public float underlineThickness;

        private DecorationInfo() {
            this.start = -1;
            this.end = -1;
        }

        public DecorationInfo copyInfo() {
            DecorationInfo decorationInfo = new DecorationInfo();
            decorationInfo.isStrikeThruText = this.isStrikeThruText;
            decorationInfo.isUnderlineText = this.isUnderlineText;
            decorationInfo.underlineColor = this.underlineColor;
            decorationInfo.underlineThickness = this.underlineThickness;
            return decorationInfo;
        }

        public boolean hasDecoration() {
            return this.isStrikeThruText || this.isUnderlineText || this.underlineColor != 0;
        }
    }

    private int adjustHyphenEdit(int i2, int i3, int i4) {
        if (i2 > 0) {
            i4 &= -25;
        }
        return i3 < this.mLen ? i4 & (-8) : i4;
    }

    private int countStretchableSpaces(int i2, int i3) {
        int i4 = 0;
        while (i2 < i3) {
            i4++;
            i2 = nextStretchableSpace(i2 + 1, i3);
        }
        return i4;
    }

    private float drawRun(Canvas canvas, int i2, int i3, boolean z2, float f2, int i4, int i5, int i6, boolean z3) {
        if ((this.mDir == 1) != z2) {
            return handleRun(i2, i3, i3, z2, canvas, f2, i4, i5, i6, null, z3);
        }
        float f3 = -measureRun(i2, i3, i3, z2, null);
        handleRun(i2, i3, i3, z2, canvas, f2 + f3, i4, i5, i6, null, false);
        return f3;
    }

    private static void drawStroke(TextPaint textPaint, Canvas canvas, int i2, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f6 + textPaint.baselineShift + f2;
        int color = textPaint.getColor();
        Paint.Style style = textPaint.getStyle();
        boolean zIsAntiAlias = textPaint.isAntiAlias();
        textPaint.setStyle(Paint.Style.FILL);
        textPaint.setAntiAlias(true);
        textPaint.setColor(i2);
        canvas.drawRect(f4, f7, f5, f7 + f3, textPaint);
        textPaint.setStyle(style);
        textPaint.setColor(color);
        textPaint.setAntiAlias(zIsAntiAlias);
    }

    private void drawTextRun(Canvas canvas, TextPaint textPaint, int i2, int i3, int i4, int i5, boolean z2, float f2, int i6) {
        if (this.mCharsValid) {
            canvas.drawTextRun(this.mChars, i2, i3 - i2, i4, i5 - i4, f2, i6, z2, textPaint);
        } else {
            int i7 = this.mStart;
            canvas.drawTextRun(this.mText, i7 + i2, i7 + i3, i7 + i4, i7 + i5, f2, i6, z2, textPaint);
        }
    }

    private static void expandMetricsFromPaint(Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint) {
        int i2 = fontMetricsInt.top;
        int i3 = fontMetricsInt.ascent;
        int i4 = fontMetricsInt.descent;
        int i5 = fontMetricsInt.bottom;
        int i6 = fontMetricsInt.leading;
        textPaint.getFontMetricsInt(fontMetricsInt);
        updateMetrics(fontMetricsInt, i2, i3, i4, i5, i6);
    }

    private void extractDecorationInfo(TextPaint textPaint, DecorationInfo decorationInfo) {
        boolean zIsStrikeThruText = textPaint.isStrikeThruText();
        decorationInfo.isStrikeThruText = zIsStrikeThruText;
        if (zIsStrikeThruText) {
            textPaint.setStrikeThruText(false);
        }
        boolean zIsUnderlineText = textPaint.isUnderlineText();
        decorationInfo.isUnderlineText = zIsUnderlineText;
        if (zIsUnderlineText) {
            textPaint.setUnderlineText(false);
        }
        decorationInfo.underlineColor = textPaint.underlineColor;
        decorationInfo.underlineThickness = textPaint.underlineThickness;
        textPaint.setUnderlineText(0, 0.0f);
    }

    private int getOffsetBeforeAfter(int i2, int i3, int i4, boolean z2, int i5, boolean z3) {
        int i6;
        if (i2 >= 0) {
            if (i5 != (z3 ? this.mLen : 0)) {
                TextPaint textPaint = this.mWorkPaint;
                textPaint.set(this.mPaint);
                textPaint.setWordSpacing(this.mAddedWidth);
                if (this.mSpanned != null) {
                    int i7 = z3 ? i5 + 1 : i5;
                    int i8 = this.mStart + i4;
                    while (true) {
                        int iNextSpanTransition = this.mSpanned.nextSpanTransition(this.mStart + i3, i8, MetricAffectingSpan.class);
                        i6 = this.mStart;
                        i4 = iNextSpanTransition - i6;
                        if (i4 >= i7) {
                            break;
                        }
                        i3 = i4;
                    }
                    MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) TextUtils.removeEmptySpans((MetricAffectingSpan[]) this.mSpanned.getSpans(i6 + i3, i6 + i4, MetricAffectingSpan.class), this.mSpanned, MetricAffectingSpan.class);
                    if (metricAffectingSpanArr.length > 0) {
                        ReplacementSpan replacementSpan = null;
                        for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
                            if (metricAffectingSpan instanceof ReplacementSpan) {
                                replacementSpan = (ReplacementSpan) metricAffectingSpan;
                            } else {
                                metricAffectingSpan.updateMeasureState(textPaint);
                            }
                        }
                        if (replacementSpan != null) {
                            return z3 ? i4 : i3;
                        }
                    }
                }
                int i9 = i3;
                int i10 = z3 ? 0 : 2;
                if (this.mCharsValid) {
                    return textPaint.getTextRunCursor(this.mChars, i9, i4 - i9, z2 ? 1 : 0, i5, i10);
                }
                CharSequence charSequence = this.mText;
                int i11 = this.mStart;
                return textPaint.getTextRunCursor(charSequence, i9 + i11, i11 + i4, z2 ? 1 : 0, i11 + i5, i10) - this.mStart;
            }
        }
        return z3 ? TextUtils.getOffsetAfter(this.mText, i5 + this.mStart) - this.mStart : TextUtils.getOffsetBefore(this.mText, i5 + this.mStart) - this.mStart;
    }

    private float getRunAdvance(TextPaint textPaint, int i2, int i3, int i4, int i5, boolean z2, int i6) {
        if (this.mCharsValid) {
            return textPaint.getRunAdvance(this.mChars, i2, i3, i4, i5, z2, i6);
        }
        int i7 = this.mStart;
        return textPaint.getRunAdvance(this.mText, i7 + i2, i7 + i3, i7 + i4, i7 + i5, z2, i7 + i6);
    }

    private float handleReplacement(ReplacementSpan replacementSpan, TextPaint textPaint, int i2, int i3, boolean z2, Canvas canvas, float f2, int i4, int i5, int i6, Paint.FontMetricsInt fontMetricsInt, boolean z3) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f3;
        int i12 = this.mStart;
        int i13 = i12 + i2;
        int i14 = i12 + i3;
        if (z3 || (canvas != null && z2)) {
            boolean z4 = fontMetricsInt != null;
            if (z4) {
                int i15 = fontMetricsInt.top;
                i7 = i15;
                i8 = fontMetricsInt.ascent;
                i9 = fontMetricsInt.descent;
                i10 = fontMetricsInt.bottom;
                i11 = fontMetricsInt.leading;
            } else {
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                i11 = 0;
            }
            float size = replacementSpan.getSize(textPaint, this.mText, i13, i14, fontMetricsInt);
            if (z4) {
                updateMetrics(fontMetricsInt, i7, i8, i9, i10, i11);
            }
            f3 = size;
        } else {
            f3 = 0.0f;
        }
        if (canvas != null) {
            replacementSpan.draw(canvas, this.mText, i13, i14, z2 ? f2 - f3 : f2, i4, i5, i6, textPaint);
        }
        return z2 ? -f3 : f3;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:74:0x01f4  */
    private float handleRun(int i2, int i3, int i4, boolean z2, Canvas canvas, float f2, int i5, int i6, int i7, Paint.FontMetricsInt fontMetricsInt, boolean z3) {
        boolean z4;
        int i8;
        float fHandleText;
        int i9;
        int i10;
        TextPaint textPaint;
        TextPaint textPaint2;
        TextLine textLine;
        int i11;
        int i12 = i3;
        int i13 = i4;
        if (i12 < i2 || i12 > i13) {
            throw new IndexOutOfBoundsException(c.m(c.t("measureLimit (", i3, ") is out of start (", i2, ") and limit ("), i4, ") bounds"));
        }
        if (i2 == i12) {
            TextPaint textPaint3 = this.mWorkPaint;
            textPaint3.set(this.mPaint);
            if (fontMetricsInt == null) {
                return 0.0f;
            }
            expandMetricsFromPaint(fontMetricsInt, textPaint3);
            return 0.0f;
        }
        Spanned spanned = this.mSpanned;
        if (spanned == null) {
            z4 = false;
        } else {
            SpanSet<MetricAffectingSpan> spanSet = this.mMetricAffectingSpanSpanSet;
            int i14 = this.mStart;
            spanSet.init(spanned, i14 + i2, i14 + i13);
            SpanSet<CharacterStyle> spanSet2 = this.mCharacterStyleSpanSet;
            Spanned spanned2 = this.mSpanned;
            int i15 = this.mStart;
            spanSet2.init(spanned2, i15 + i2, i15 + i13);
            if (this.mMetricAffectingSpanSpanSet.numberOfSpans == 0 && this.mCharacterStyleSpanSet.numberOfSpans == 0) {
                z4 = false;
            } else {
                z4 = true;
            }
        }
        if (!z4) {
            TextPaint textPaint4 = this.mWorkPaint;
            textPaint4.set(this.mPaint);
            textPaint4.setHyphenEdit(adjustHyphenEdit(i2, i13, textPaint4.getHyphenEdit()));
            return handleText(textPaint4, i2, i4, i2, i4, z2, canvas, f2, i5, i6, i7, fontMetricsInt, z3, i3, null);
        }
        float fHandleText2 = f2;
        int i16 = i2;
        while (i16 < i12) {
            TextPaint textPaint5 = this.mWorkPaint;
            textPaint5.set(this.mPaint);
            SpanSet<MetricAffectingSpan> spanSet3 = this.mMetricAffectingSpanSpanSet;
            int i17 = this.mStart;
            int nextTransition = spanSet3.getNextTransition(i17 + i16, i17 + i13) - this.mStart;
            int iMin = Math.min(nextTransition, i12);
            ReplacementSpan replacementSpan = null;
            int i18 = 0;
            while (true) {
                SpanSet<MetricAffectingSpan> spanSet4 = this.mMetricAffectingSpanSpanSet;
                if (i18 >= spanSet4.numberOfSpans) {
                    break;
                }
                int i19 = spanSet4.spanStarts[i18];
                int i20 = this.mStart;
                if (i19 < i20 + iMin && spanSet4.spanEnds[i18] > i20 + i16) {
                    MetricAffectingSpan metricAffectingSpan = spanSet4.spans[i18];
                    if (metricAffectingSpan instanceof ReplacementSpan) {
                        replacementSpan = (ReplacementSpan) metricAffectingSpan;
                    } else {
                        metricAffectingSpan.updateDrawState(textPaint5);
                    }
                }
                i18++;
            }
            if (replacementSpan != null) {
                i8 = nextTransition;
                fHandleText = handleReplacement(replacementSpan, textPaint5, i16, iMin, z2, canvas, fHandleText2, i5, i6, i7, fontMetricsInt, z3 || iMin < i12);
            } else {
                i8 = nextTransition;
                TextLine textLine2 = this;
                TextPaint textPaint6 = textLine2.mActivePaint;
                textPaint6.set(textLine2.mPaint);
                DecorationInfo decorationInfo = textLine2.mDecorationInfo;
                textLine2.mDecorations.clear();
                int i21 = iMin;
                TextLine textLine3 = textLine2;
                int i22 = i16;
                int i23 = i22;
                while (i23 < iMin) {
                    SpanSet<CharacterStyle> spanSet5 = textLine3.mCharacterStyleSpanSet;
                    int i24 = textLine3.mStart;
                    int nextTransition2 = spanSet5.getNextTransition(i24 + i23, i24 + i8) - textLine3.mStart;
                    int iMin2 = Math.min(nextTransition2, iMin);
                    textPaint5.set(textLine3.mPaint);
                    int i25 = 0;
                    while (true) {
                        SpanSet<CharacterStyle> spanSet6 = textLine3.mCharacterStyleSpanSet;
                        i9 = nextTransition2;
                        if (i25 >= spanSet6.numberOfSpans) {
                            break;
                        }
                        int i26 = spanSet6.spanStarts[i25];
                        int i27 = textLine3.mStart;
                        if (i26 < i27 + iMin2 && spanSet6.spanEnds[i25] > i27 + i23) {
                            spanSet6.spans[i25].updateDrawState(textPaint5);
                        }
                        i25++;
                        nextTransition2 = i9;
                    }
                    textLine3.extractDecorationInfo(textPaint5, decorationInfo);
                    if (i23 == i16) {
                        textPaint6.set(textPaint5);
                    } else {
                        if (!textPaint5.hasEqualAttributes(textPaint6)) {
                            textPaint6.setHyphenEdit(textLine3.adjustHyphenEdit(i22, i21, textLine3.mPaint.getHyphenEdit()));
                            i10 = i23;
                            fHandleText2 += handleText(textPaint6, i22, i21, i16, i8, z2, canvas, fHandleText2, i5, i6, i7, fontMetricsInt, z3 || i21 < i12, Math.min(i21, iMin), textLine3.mDecorations);
                            textPaint = textPaint5;
                            textPaint2 = textPaint6;
                            textPaint2.set(textPaint);
                            textLine = this;
                            textLine.mDecorations.clear();
                            textLine3 = textLine;
                            i22 = i10;
                        }
                        if (decorationInfo.hasDecoration()) {
                            DecorationInfo decorationInfoCopyInfo = decorationInfo.copyInfo();
                            decorationInfoCopyInfo.start = i10;
                            i11 = i9;
                            decorationInfoCopyInfo.end = i11;
                            textLine3.mDecorations.add(decorationInfoCopyInfo);
                        } else {
                            i11 = i9;
                        }
                        i12 = i3;
                        textPaint5 = textPaint;
                        textPaint6 = textPaint2;
                        i21 = i11;
                        i23 = i21;
                        textLine2 = textLine;
                        i16 = i16;
                        iMin = iMin;
                        decorationInfo = decorationInfo;
                    }
                    i10 = i23;
                    textPaint = textPaint5;
                    textPaint2 = textPaint6;
                    textLine = this;
                    if (decorationInfo.hasDecoration()) {
                        DecorationInfo decorationInfoCopyInfo2 = decorationInfo.copyInfo();
                        decorationInfoCopyInfo2.start = i10;
                        i11 = i9;
                        decorationInfoCopyInfo2.end = i11;
                        textLine3.mDecorations.add(decorationInfoCopyInfo2);
                    } else {
                        i11 = i9;
                    }
                    i12 = i3;
                    textPaint5 = textPaint;
                    textPaint6 = textPaint2;
                    i21 = i11;
                    i23 = i21;
                    textLine2 = textLine;
                    i16 = i16;
                    iMin = iMin;
                    decorationInfo = decorationInfo;
                }
                int i28 = iMin;
                TextPaint textPaint7 = textPaint6;
                int i29 = i16;
                textPaint7.setHyphenEdit(textLine3.adjustHyphenEdit(i22, i21, textLine3.mPaint.getHyphenEdit()));
                fHandleText = handleText(textPaint7, i22, i21, i29, i8, z2, canvas, fHandleText2, i5, i6, i7, fontMetricsInt, z3 || i21 < i3, Math.min(i21, i28), textLine3.mDecorations);
            }
            fHandleText2 += fHandleText;
            i12 = i3;
            i13 = i4;
            i16 = i8;
        }
        return fHandleText2 - f2;
    }

    private float handleText(TextPaint textPaint, int i2, int i3, int i4, int i5, boolean z2, Canvas canvas, float f2, int i6, int i7, int i8, Paint.FontMetricsInt fontMetricsInt, boolean z3, int i9, ArrayList<DecorationInfo> arrayList) {
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int i10 = i2;
        ArrayList<DecorationInfo> arrayList2 = arrayList;
        textPaint.setWordSpacing(this.mAddedWidth);
        if (fontMetricsInt != null) {
            expandMetricsFromPaint(fontMetricsInt, textPaint);
        }
        float runAdvance = 0.0f;
        if (i3 == i10) {
            return 0.0f;
        }
        int size = arrayList2 == null ? 0 : arrayList.size();
        if (z3 || (canvas != null && (textPaint.bgColor != 0 || size != 0 || z2))) {
            runAdvance = getRunAdvance(textPaint, i2, i3, i4, i5, z2, i9);
        }
        float f8 = runAdvance;
        if (canvas != null) {
            if (z2) {
                f5 = f2;
                f4 = f2 - f8;
            } else {
                f4 = f2;
                f5 = f2 + f8;
            }
            if (textPaint.bgColor != 0) {
                int color = textPaint.getColor();
                Paint.Style style = textPaint.getStyle();
                textPaint.setColor(textPaint.bgColor);
                textPaint.setStyle(Paint.Style.FILL);
                canvas.drawRect(f4, i6, f5, i8, textPaint);
                textPaint.setStyle(style);
                textPaint.setColor(color);
            }
            if (size != 0) {
                int i11 = 0;
                while (i11 < size) {
                    DecorationInfo decorationInfo = arrayList2.get(i11);
                    int iMax = Math.max(decorationInfo.start, i10);
                    int iMin = Math.min(decorationInfo.end, i9);
                    float f9 = f8;
                    float runAdvance2 = getRunAdvance(textPaint, i2, i3, i4, i5, z2, iMax);
                    float runAdvance3 = getRunAdvance(textPaint, i2, i3, i4, i5, z2, iMin);
                    if (z2) {
                        float f10 = f5 - runAdvance2;
                        f6 = f5 - runAdvance3;
                        f7 = f10;
                    } else {
                        f6 = f4 + runAdvance2;
                        f7 = f4 + runAdvance3;
                    }
                    int i12 = decorationInfo.underlineColor;
                    if (i12 != 0) {
                        drawStroke(textPaint, canvas, i12, textPaint.getUnderlinePosition(), decorationInfo.underlineThickness, f6, f7, i7);
                    }
                    if (decorationInfo.isUnderlineText) {
                        drawStroke(textPaint, canvas, textPaint.getColor(), textPaint.getUnderlinePosition(), Math.max(textPaint.getUnderlineThickness(), 1.0f), f6, f7, i7);
                    }
                    if (decorationInfo.isStrikeThruText) {
                        drawStroke(textPaint, canvas, textPaint.getColor(), textPaint.getStrikeThruPosition(), Math.max(textPaint.getStrikeThruThickness(), 1.0f), f6, f7, i7);
                    }
                    i11++;
                    i10 = i2;
                    arrayList2 = arrayList;
                    f8 = f9;
                }
            }
            f3 = f8;
            drawTextRun(canvas, textPaint, i2, i3, i4, i5, z2, f4, i7 + textPaint.baselineShift);
        } else {
            f3 = f8;
        }
        return z2 ? -f3 : f3;
    }

    public static boolean isLineEndSpace(char c) {
        return c == ' ' || c == '\t' || c == 5760 || (8192 <= c && c <= 8202 && c != 8199) || c == 8287 || c == 12288;
    }

    private boolean isStretchableWhitespace(int i2) {
        return i2 == 32 || i2 == 160;
    }

    private float measureRun(int i2, int i3, int i4, boolean z2, Paint.FontMetricsInt fontMetricsInt) {
        return handleRun(i2, i3, i4, z2, null, 0.0f, 0, 0, 0, fontMetricsInt, true);
    }

    private int nextStretchableSpace(int i2, int i3) {
        while (i2 < i3) {
            if (isStretchableWhitespace(this.mCharsValid ? this.mChars[i2] : this.mText.charAt(this.mStart + i2))) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static TextLine obtain() {
        TextLine[] textLineArr;
        TextLine textLine;
        TextLine[] textLineArr2 = sCached;
        synchronized (textLineArr2) {
            int length = textLineArr2.length;
            do {
                length--;
                if (length < 0) {
                    return new TextLine();
                }
                textLineArr = sCached;
                textLine = textLineArr[length];
            } while (textLine == null);
            textLineArr[length] = null;
            return textLine;
        }
    }

    public static TextLine recycle(TextLine textLine) {
        textLine.mText = null;
        textLine.mPaint = null;
        textLine.mDirections = null;
        textLine.mSpanned = null;
        textLine.mTabs = null;
        textLine.mChars = null;
        textLine.mMetricAffectingSpanSpanSet.recycle();
        textLine.mCharacterStyleSpanSet.recycle();
        textLine.mReplacementSpanSpanSet.recycle();
        synchronized (sCached) {
            int i2 = 0;
            while (true) {
                TextLine[] textLineArr = sCached;
                if (i2 >= textLineArr.length) {
                    break;
                }
                if (textLineArr[i2] == null) {
                    textLineArr[i2] = textLine;
                    break;
                }
                i2++;
            }
        }
        return null;
    }

    public static void updateMetrics(Paint.FontMetricsInt fontMetricsInt, int i2, int i3, int i4, int i5, int i6) {
        fontMetricsInt.top = Math.min(fontMetricsInt.top, i2);
        fontMetricsInt.ascent = Math.min(fontMetricsInt.ascent, i3);
        fontMetricsInt.descent = Math.max(fontMetricsInt.descent, i4);
        fontMetricsInt.bottom = Math.max(fontMetricsInt.bottom, i5);
        fontMetricsInt.leading = Math.max(fontMetricsInt.leading, i6);
    }

    public void draw(Canvas canvas, float f2, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int iCodePointAt;
        if (!this.mHasTabs) {
            Layout.Directions directions = this.mDirections;
            if (directions == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                drawRun(canvas, 0, this.mLen, false, f2, i2, i3, i4, false);
                return;
            } else if (directions == Layout.DIRS_ALL_RIGHT_TO_LEFT) {
                drawRun(canvas, 0, this.mLen, true, f2, i2, i3, i4, false);
                return;
            }
        }
        int[] iArr = this.mDirections.mDirections;
        int length = iArr.length - 2;
        float f3 = 0.0f;
        int i8 = 0;
        while (i8 < iArr.length) {
            int i9 = iArr[i8];
            int i10 = iArr[i8 + 1];
            int i11 = (67108863 & i10) + i9;
            int i12 = this.mLen;
            int i13 = i11 > i12 ? i12 : i11;
            boolean z2 = (i10 & 67108864) != 0;
            float fDrawRun = f3;
            int i14 = this.mHasTabs ? i9 : i13;
            int i15 = i9;
            while (i14 <= i13) {
                if (!this.mHasTabs || i14 >= i13) {
                    i5 = 0;
                } else {
                    char[] cArr = this.mChars;
                    char c = cArr[i14];
                    if (c < 55296 || c >= 56320 || (i7 = i14 + 1) >= i13 || (iCodePointAt = Character.codePointAt(cArr, i14)) <= 65535) {
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i6 = iCodePointAt;
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i5 = i6;
                    } else {
                        i6 = c;
                        i6 = c;
                        i6 = c;
                        i6 = iCodePointAt;
                        i14 = i7;
                    }
                    i14++;
                    iArr = iArr;
                }
                if (i14 == i13 || i5 == 9) {
                    int i16 = i5;
                    int i17 = i14;
                    fDrawRun += drawRun(canvas, i15, i14, z2, f2 + fDrawRun, i2, i3, i4, (i8 == length && i14 == this.mLen) ? false : true);
                    if (i16 == 9) {
                        int i18 = this.mDir;
                        fDrawRun = i18 * nextTab(i18 * fDrawRun);
                    }
                    i15 = i17 + 1;
                    i14 = i17;
                }
                i14++;
                iArr = iArr;
            }
            i8 += 2;
            f3 = fDrawRun;
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00b6  */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00b8, code lost:
    
        r12 = r0;
        r0 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getOffsetToLeftRightOf(int r22, boolean r23) {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.TextLine.getOffsetToLeftRightOf(int, boolean):int");
    }

    public void justify(float f2) {
        int i2 = this.mLen;
        while (i2 > 0 && isLineEndSpace(this.mText.charAt((this.mStart + i2) - 1))) {
            i2--;
        }
        int iCountStretchableSpaces = countStretchableSpaces(0, i2);
        if (iCountStretchableSpaces == 0) {
            return;
        }
        this.mAddedWidth = (f2 - Math.abs(measure(i2, false, null))) / iCountStretchableSpaces;
    }

    public float measure(int i2, boolean z2, Paint.FontMetricsInt fontMetricsInt) {
        int i3;
        float fMeasureRun;
        int i4;
        int i5;
        int iCodePointAt;
        int i6 = z2 ? i2 - 1 : i2;
        float f2 = 0.0f;
        if (i6 < 0) {
            return 0.0f;
        }
        if (!this.mHasTabs) {
            Layout.Directions directions = this.mDirections;
            if (directions == Layout.DIRS_ALL_LEFT_TO_RIGHT) {
                return measureRun(0, i2, this.mLen, false, fontMetricsInt);
            }
            if (directions == Layout.DIRS_ALL_RIGHT_TO_LEFT) {
                return measureRun(0, i2, this.mLen, true, fontMetricsInt);
            }
        }
        char[] cArr = this.mChars;
        int[] iArr = this.mDirections.mDirections;
        int i7 = 0;
        while (i7 < iArr.length) {
            int i8 = iArr[i7];
            int i9 = iArr[i7 + 1];
            int i10 = (67108863 & i9) + i8;
            int i11 = this.mLen;
            int i12 = i10 > i11 ? i11 : i10;
            boolean z3 = (i9 & 67108864) != 0;
            float f3 = f2;
            int i13 = i8;
            int i14 = this.mHasTabs ? i8 : i12;
            while (i14 <= i12) {
                if (!this.mHasTabs || i14 >= i12) {
                    i3 = 0;
                } else {
                    char c = cArr[i14];
                    if (c < 55296 || c >= 56320 || (i5 = i14 + 1) >= i12 || (iCodePointAt = Character.codePointAt(cArr, i14)) <= 65535) {
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i4 = iCodePointAt;
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i3 = i4;
                    } else {
                        i4 = c;
                        i4 = c;
                        i4 = c;
                        i4 = iCodePointAt;
                        i14 = i5;
                    }
                    i14++;
                }
                if (i14 == i12 || i3 == 9) {
                    boolean z4 = i6 >= i13 && i6 < i14;
                    boolean z5 = (this.mDir == -1) == z3;
                    if (z4 && z5) {
                        fMeasureRun = measureRun(i13, i2, i14, z3, fontMetricsInt);
                    } else {
                        int i15 = i3;
                        int i16 = i14;
                        int i17 = i13;
                        float fMeasureRun2 = measureRun(i13, i14, i14, z3, fontMetricsInt);
                        if (!z5) {
                            fMeasureRun2 = -fMeasureRun2;
                        }
                        f3 += fMeasureRun2;
                        if (z4) {
                            fMeasureRun = measureRun(i17, i2, i16, z3, null);
                        } else {
                            if (i15 == 9) {
                                if (i2 == i16) {
                                    return f3;
                                }
                                int i18 = this.mDir;
                                float fNextTab = i18 * nextTab(i18 * f3);
                                if (i6 == i16) {
                                    return fNextTab;
                                }
                                f3 = fNextTab;
                            }
                            i13 = i16 + 1;
                            i14 = i16;
                        }
                    }
                    return f3 + fMeasureRun;
                }
                i14++;
            }
            i7 += 2;
            f2 = f3;
        }
        return f2;
    }

    public float metrics(Paint.FontMetricsInt fontMetricsInt) {
        return measure(this.mLen, false, fontMetricsInt);
    }

    public float nextTab(float f2) {
        Layout.TabStops tabStops = this.mTabs;
        return tabStops != null ? tabStops.nextTab(f2) : Layout.TabStops.nextDefaultStop(f2, 20);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    public void set(TextPaint textPaint, CharSequence charSequence, int i2, int i3, int i4, Layout.Directions directions, boolean z2, Layout.TabStops tabStops) {
        boolean z3;
        this.mPaint = textPaint;
        this.mText = charSequence;
        this.mStart = i2;
        this.mLen = i3 - i2;
        this.mDir = i4;
        this.mDirections = directions;
        if (directions == null) {
            throw new IllegalArgumentException("Directions cannot be null");
        }
        this.mHasTabs = z2;
        this.mSpanned = null;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            this.mSpanned = spanned;
            this.mReplacementSpanSpanSet.init(spanned, i2, i3);
            if (this.mReplacementSpanSpanSet.numberOfSpans > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        boolean z4 = z3 || z2 || directions != Layout.DIRS_ALL_LEFT_TO_RIGHT;
        this.mCharsValid = z4;
        if (z4) {
            char[] cArr = this.mChars;
            if (cArr == null || cArr.length < this.mLen) {
                this.mChars = ArrayUtils.newUnpaddedCharArray(this.mLen);
            }
            TextUtils.getChars(charSequence, i2, i3, this.mChars, 0);
            if (z3) {
                char[] cArr2 = this.mChars;
                int i5 = i2;
                while (i5 < i3) {
                    int nextTransition = this.mReplacementSpanSpanSet.getNextTransition(i5, i3);
                    if (this.mReplacementSpanSpanSet.hasSpansIntersecting(i5, nextTransition)) {
                        int i6 = i5 - i2;
                        cArr2[i6] = 65532;
                        int i7 = nextTransition - i2;
                        for (int i8 = i6 + 1; i8 < i7; i8++) {
                            cArr2[i8] = 65279;
                        }
                    }
                    i5 = nextTransition;
                }
            }
        }
        this.mTabs = tabStops;
        this.mAddedWidth = 0.0f;
    }
}
