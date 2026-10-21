package android.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;
import android.text.style.ReplacementSpan;
import u.a;

/* JADX INFO: loaded from: classes.dex */
class TextLine {
    private static final boolean DEBUG = false;
    private static final int TAB_INCREMENT = 20;
    private static final TextLine[] sCached = new TextLine[3];
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
    private final SpanSet<MetricAffectingSpan> mMetricAffectingSpanSpanSet = new SpanSet<>(MetricAffectingSpan.class);
    private final SpanSet<CharacterStyle> mCharacterStyleSpanSet = new SpanSet<>(CharacterStyle.class);
    private final SpanSet<ReplacementSpan> mReplacementSpanSpanSet = new SpanSet<>(ReplacementSpan.class);

    private float drawRun(Canvas canvas, int i2, int i3, boolean z2, float f2, int i4, int i5, int i6, boolean z3) {
        if ((this.mDir == 1) != z2) {
            return handleRun(i2, i3, i3, z2, canvas, f2, i4, i5, i6, null, z3);
        }
        float f3 = -measureRun(i2, i3, i3, z2, null);
        handleRun(i2, i3, i3, z2, canvas, f2 + f3, i4, i5, i6, null, false);
        return f3;
    }

    private void drawTextRun(Canvas canvas, TextPaint textPaint, int i2, int i3, int i4, int i5, boolean z2, float f2, int i6) {
        if (this.mCharsValid) {
            canvas.drawTextRun(this.mChars, i2, i3 - i2, i4, i5 - i4, f2, i6, z2 ? 1 : 0, textPaint);
        } else {
            int i7 = this.mStart;
            canvas.drawTextRun(this.mText, i7 + i2, i7 + i3, i7 + i4, i7 + i5, f2, i6, z2 ? 1 : 0, textPaint);
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

    private int getOffsetBeforeAfter(int i2, int i3, int i4, boolean z2, int i5, boolean z3) {
        int i6;
        if (i2 >= 0) {
            if (i5 != (z3 ? this.mLen : 0)) {
                TextPaint textPaint = this.mWorkPaint;
                textPaint.set(this.mPaint);
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

    private float handleRun(int i2, int i3, int i4, boolean z2, Canvas canvas, float f2, int i5, int i6, int i7, Paint.FontMetricsInt fontMetricsInt, boolean z3) {
        int i8;
        if (i2 == i3) {
            TextPaint textPaint = this.mWorkPaint;
            textPaint.set(this.mPaint);
            if (fontMetricsInt == null) {
                return 0.0f;
            }
            expandMetricsFromPaint(fontMetricsInt, textPaint);
            return 0.0f;
        }
        Spanned spanned = this.mSpanned;
        if (spanned == null) {
            TextPaint textPaint2 = this.mWorkPaint;
            textPaint2.set(this.mPaint);
            return handleText(textPaint2, i2, i3, i2, i4, z2, canvas, f2, i5, i6, i7, fontMetricsInt, z3);
        }
        SpanSet<MetricAffectingSpan> spanSet = this.mMetricAffectingSpanSpanSet;
        int i9 = this.mStart;
        spanSet.init(spanned, i9 + i2, i9 + i4);
        SpanSet<CharacterStyle> spanSet2 = this.mCharacterStyleSpanSet;
        Spanned spanned2 = this.mSpanned;
        int i10 = this.mStart;
        spanSet2.init(spanned2, i10 + i2, i10 + i4);
        float fHandleText = f2;
        int i11 = i2;
        while (i11 < i3) {
            TextPaint textPaint3 = this.mWorkPaint;
            textPaint3.set(this.mPaint);
            SpanSet<MetricAffectingSpan> spanSet3 = this.mMetricAffectingSpanSpanSet;
            int i12 = this.mStart;
            int nextTransition = spanSet3.getNextTransition(i12 + i11, i12 + i4) - this.mStart;
            int iMin = Math.min(nextTransition, i3);
            ReplacementSpan replacementSpan = null;
            int i13 = 0;
            while (true) {
                SpanSet<MetricAffectingSpan> spanSet4 = this.mMetricAffectingSpanSpanSet;
                if (i13 >= spanSet4.numberOfSpans) {
                    break;
                }
                int i14 = spanSet4.spanStarts[i13];
                int i15 = this.mStart;
                if (i14 < i15 + iMin && spanSet4.spanEnds[i13] > i15 + i11) {
                    MetricAffectingSpan metricAffectingSpan = spanSet4.spans[i13];
                    if (metricAffectingSpan instanceof ReplacementSpan) {
                        replacementSpan = (ReplacementSpan) metricAffectingSpan;
                    } else {
                        metricAffectingSpan.updateDrawState(textPaint3);
                    }
                }
                i13++;
            }
            if (replacementSpan != null) {
                i8 = nextTransition;
                fHandleText += handleReplacement(replacementSpan, textPaint3, i11, iMin, z2, canvas, fHandleText, i5, i6, i7, fontMetricsInt, z3 || iMin < i3);
            } else {
                i8 = nextTransition;
                int i16 = i11;
                while (i16 < iMin) {
                    SpanSet<CharacterStyle> spanSet5 = this.mCharacterStyleSpanSet;
                    int i17 = this.mStart;
                    int nextTransition2 = spanSet5.getNextTransition(i17 + i16, i17 + iMin) - this.mStart;
                    textPaint3.set(this.mPaint);
                    int i18 = 0;
                    while (true) {
                        SpanSet<CharacterStyle> spanSet6 = this.mCharacterStyleSpanSet;
                        if (i18 >= spanSet6.numberOfSpans) {
                            break;
                        }
                        int i19 = spanSet6.spanStarts[i18];
                        int i20 = this.mStart;
                        if (i19 < i20 + nextTransition2 && spanSet6.spanEnds[i18] > i20 + i16) {
                            spanSet6.spans[i18].updateDrawState(textPaint3);
                        }
                        i18++;
                    }
                    fHandleText += handleText(textPaint3, i16, nextTransition2, i11, i8, z2, canvas, fHandleText, i5, i6, i7, fontMetricsInt, z3 || nextTransition2 < i3);
                    iMin = iMin;
                    i16 = nextTransition2;
                    textPaint3 = textPaint3;
                    i11 = i11;
                }
            }
            i11 = i8;
        }
        return fHandleText - f2;
    }

    private float handleText(TextPaint textPaint, int i2, int i3, int i4, int i5, boolean z2, Canvas canvas, float f2, int i6, int i7, int i8, Paint.FontMetricsInt fontMetricsInt, boolean z3) {
        if (fontMetricsInt != null) {
            expandMetricsFromPaint(fontMetricsInt, textPaint);
        }
        int i9 = i3 - i2;
        float textRunAdvances = 0.0f;
        if (i9 == 0) {
            return 0.0f;
        }
        int i10 = i5 - i4;
        if (z3 || (canvas != null && (textPaint.bgColor != 0 || textPaint.underlineColor != 0 || z2))) {
            if (this.mCharsValid) {
                textRunAdvances = textPaint.getTextRunAdvances(this.mChars, i2, i9, i4, i10, z2 ? 1 : 0, (float[]) null, 0);
            } else {
                int i11 = this.mStart;
                textRunAdvances = textPaint.getTextRunAdvances(this.mText, i11 + i2, i11 + i3, i11 + i4, i11 + i5, z2 ? 1 : 0, (float[]) null, 0);
            }
        }
        float f3 = textRunAdvances;
        if (canvas != null) {
            float f4 = z2 ? f2 - f3 : f2;
            if (textPaint.bgColor != 0) {
                int color = textPaint.getColor();
                Paint.Style style = textPaint.getStyle();
                textPaint.setColor(textPaint.bgColor);
                textPaint.setStyle(Paint.Style.FILL);
                canvas.drawRect(f4, i6, f4 + f3, i8, textPaint);
                textPaint.setStyle(style);
                textPaint.setColor(color);
            }
            if (textPaint.underlineColor != 0) {
                float textSize = (textPaint.getTextSize() * 0.11111111f) + i7 + textPaint.baselineShift;
                int color2 = textPaint.getColor();
                Paint.Style style2 = textPaint.getStyle();
                boolean zIsAntiAlias = textPaint.isAntiAlias();
                textPaint.setStyle(Paint.Style.FILL);
                textPaint.setAntiAlias(true);
                textPaint.setColor(textPaint.underlineColor);
                canvas.drawRect(f4, textSize, f4 + f3, textSize + textPaint.underlineThickness, textPaint);
                textPaint.setStyle(style2);
                textPaint.setColor(color2);
                textPaint.setAntiAlias(zIsAntiAlias);
            }
            drawTextRun(canvas, textPaint, i2, i3, i4, i5, z2, f4, i7 + textPaint.baselineShift);
        }
        return z2 ? -f3 : f3;
    }

    private float measureRun(int i2, int i3, int i4, boolean z2, Paint.FontMetricsInt fontMetricsInt) {
        return handleRun(i2, i3, i4, z2, null, 0.0f, 0, 0, 0, fontMetricsInt, true);
    }

    public static TextLine obtain() {
        TextLine[] textLineArr;
        TextLine[] textLineArr2 = sCached;
        synchronized (textLineArr2) {
            int length = textLineArr2.length;
            do {
                length--;
                if (length < 0) {
                    return new TextLine();
                }
                textLineArr = sCached;
            } while (textLineArr[length] == null);
            TextLine textLine = textLineArr[length];
            textLineArr[length] = null;
            return textLine;
        }
    }

    public static TextLine recycle(TextLine textLine) {
        textLine.mText = null;
        textLine.mPaint = null;
        textLine.mDirections = null;
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

    public float ascent(int i2) {
        Spanned spanned = this.mSpanned;
        if (spanned == null) {
            return this.mPaint.ascent();
        }
        int i3 = i2 + this.mStart;
        MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) spanned.getSpans(i3, i3 + 1, MetricAffectingSpan.class);
        if (metricAffectingSpanArr.length == 0) {
            return this.mPaint.ascent();
        }
        TextPaint textPaint = this.mWorkPaint;
        textPaint.set(this.mPaint);
        for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
            metricAffectingSpan.updateMeasureState(textPaint);
        }
        return textPaint.ascent();
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:66:0x0107  */
    /* JADX WARN: Code duplicated, block: B:68:0x010b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0120  */
    /* JADX WARN: Code duplicated, block: B:71:0x0126  */
    /* JADX WARN: Code duplicated, block: B:73:0x0142  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void draw(Canvas canvas, float f2, int i2, int i3, int i4) {
        int i5;
        Bitmap bitmapFromAndroidPua;
        int i6;
        boolean z2;
        int i7;
        Bitmap bitmap;
        int i8;
        RectF rectF;
        int i9;
        int i10;
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
        float f3 = 0.0f;
        int[] iArr = this.mDirections.mDirections;
        int length = iArr.length - 2;
        RectF rectF2 = null;
        int i11 = 0;
        while (i11 < iArr.length) {
            int i12 = iArr[i11];
            int i13 = i11 + 1;
            int i14 = (iArr[i13] & Layout.RUN_LENGTH_MASK) + i12;
            int i15 = this.mLen;
            int i16 = i14 > i15 ? i15 : i14;
            boolean z3 = (iArr[i13] & 67108864) != 0;
            float fDrawRun = f3;
            RectF rectF3 = rectF2;
            int i17 = this.mHasTabs ? i12 : i16;
            while (i17 <= i16) {
                if (!this.mHasTabs || i17 >= i16) {
                    i5 = 0;
                } else {
                    char[] cArr = this.mChars;
                    char c2 = cArr[i17];
                    if (c2 >= 55296 && c2 < 56320 && (i10 = i17 + 1) < i16) {
                        int iCodePointAt = Character.codePointAt(cArr, i17);
                        if (iCodePointAt < Layout.MIN_EMOJI || iCodePointAt > Layout.MAX_EMOJI) {
                            i9 = c2;
                            i9 = c2;
                            i9 = c2;
                            i9 = c2;
                            i9 = c2;
                            i9 = c2;
                            i9 = iCodePointAt;
                            if (iCodePointAt > 65535) {
                                i17 = i10;
                            }
                        } else {
                            i9 = c2;
                            i9 = c2;
                            i9 = c2;
                            bitmapFromAndroidPua = Layout.EMOJI_FACTORY.getBitmapFromAndroidPua(iCodePointAt);
                            i6 = iCodePointAt;
                            if (i17 != i16 || i6 == 9 || bitmapFromAndroidPua != null) {
                                float f4 = f2 + fDrawRun;
                                if (i11 == length || i17 != this.mLen) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                i7 = i6;
                                bitmap = bitmapFromAndroidPua;
                                i8 = i17;
                                fDrawRun += drawRun(canvas, i12, i17, z3, f4, i2, i3, i4, z2);
                                if (i7 == 9) {
                                    int i18 = this.mDir;
                                    fDrawRun = i18 * nextTab(i18 * fDrawRun);
                                    i17 = i8;
                                } else if (bitmap != null) {
                                    float fAscent = ascent(i8);
                                    float width = bitmap.getWidth() * ((-fAscent) / bitmap.getHeight());
                                    if (rectF3 == null) {
                                        rectF = new RectF();
                                    } else {
                                        rectF = rectF3;
                                    }
                                    float f5 = f2 + fDrawRun;
                                    float f6 = i3;
                                    rectF.set(f5, fAscent + f6, f5 + width, f6);
                                    canvas.drawBitmap(bitmap, (Rect) null, rectF, this.mPaint);
                                    fDrawRun += width;
                                    i17 = i8 + 1;
                                    rectF3 = rectF;
                                } else {
                                    i17 = i8;
                                }
                                i12 = i17 + 1;
                            }
                            i17++;
                            i16 = i16;
                        }
                        i17++;
                        i16 = i16;
                    }
                    i9 = c2;
                    i9 = c2;
                    i9 = c2;
                    i9 = c2;
                    i9 = c2;
                    i9 = c2;
                    i5 = i9;
                }
                bitmapFromAndroidPua = null;
                i6 = i5;
                if (i17 != i16) {
                }
                float f7 = f2 + fDrawRun;
                if (i11 == length) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                i7 = i6;
                bitmap = bitmapFromAndroidPua;
                i8 = i17;
                fDrawRun += drawRun(canvas, i12, i17, z3, f7, i2, i3, i4, z2);
                if (i7 == 9) {
                    int i19 = this.mDir;
                    fDrawRun = i19 * nextTab(i19 * fDrawRun);
                    i17 = i8;
                } else if (bitmap != null) {
                    float fAscent2 = ascent(i8);
                    float width2 = bitmap.getWidth() * ((-fAscent2) / bitmap.getHeight());
                    if (rectF3 == null) {
                        rectF = new RectF();
                    } else {
                        rectF = rectF3;
                    }
                    float f8 = f2 + fDrawRun;
                    float f9 = i3;
                    rectF.set(f8, fAscent2 + f9, f8 + width2, f9);
                    canvas.drawBitmap(bitmap, (Rect) null, rectF, this.mPaint);
                    fDrawRun += width2;
                    i17 = i8 + 1;
                    rectF3 = rectF;
                } else {
                    i17 = i8;
                }
                i12 = i17 + 1;
                i17++;
                i16 = i16;
            }
            i11 += 2;
            f3 = fDrawRun;
            rectF2 = rectF3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00bd  */
    public int getOffsetToLeftRightOf(int i2, boolean z2) {
        int i3;
        int i4;
        int i5;
        boolean z3;
        int i6;
        int length;
        int i7;
        boolean z4;
        int offsetBeforeAfter;
        boolean z5;
        int i8;
        int i9 = this.mLen;
        int i10 = -1;
        boolean z6 = this.mDir == -1;
        int[] iArr = this.mDirections.mDirections;
        if (i2 == 0) {
            i6 = 0;
            length = -2;
        } else if (i2 == i9) {
            length = iArr.length;
            i6 = 0;
        } else {
            int i11 = i9;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (i12 >= iArr.length) {
                    i3 = i12;
                    i4 = i13;
                    i5 = i11;
                    z3 = false;
                    i6 = 0;
                    break;
                }
                i13 = iArr[i12] + 0;
                if (i2 >= i13) {
                    int i14 = i12 + 1;
                    int i15 = (iArr[i14] & Layout.RUN_LENGTH_MASK) + i13;
                    if (i15 > i9) {
                        i15 = i9;
                    }
                    if (i2 < i15) {
                        int i16 = (iArr[i14] >>> 26) & 63;
                        if (i2 != i13) {
                            i3 = i12;
                            i4 = i13;
                            i6 = i16;
                            i5 = i15;
                            z3 = false;
                            break;
                        }
                        int i17 = i2 - 1;
                        int i18 = 0;
                        while (true) {
                            if (i18 >= iArr.length) {
                                z3 = false;
                                break;
                            }
                            int i19 = iArr[i18] + 0;
                            if (i17 >= i19) {
                                int i20 = i18 + 1;
                                int i21 = i19 + (iArr[i20] & Layout.RUN_LENGTH_MASK);
                                if (i21 > i9) {
                                    i21 = i9;
                                }
                                if (i17 < i21 && (i7 = (iArr[i20] >>> 26) & 63) < i16) {
                                    i12 = i18;
                                    i16 = i7;
                                    i15 = i21;
                                    i13 = i19;
                                    z3 = true;
                                    break;
                                }
                            }
                            i18 += 2;
                        }
                        i3 = i12;
                        i4 = i13;
                        i6 = i16;
                        i5 = i15;
                        break;
                    }
                    i11 = i15;
                }
                i12 += 2;
            }
            if (i3 == iArr.length) {
                length = i3;
                i10 = -1;
            } else {
                boolean z7 = (i6 & 1) != 0;
                boolean z8 = z2 == z7;
                if (i2 == (z8 ? i5 : i4) && z8 == z3) {
                    length = i3;
                    i10 = -1;
                } else {
                    boolean z9 = z8;
                    int offsetBeforeAfter2 = getOffsetBeforeAfter(i3, i4, i5, z7, i2, z9);
                    if (z9) {
                        i4 = i5;
                    }
                    if (offsetBeforeAfter2 != i4) {
                        return offsetBeforeAfter2;
                    }
                    int i22 = i3;
                    i10 = offsetBeforeAfter2;
                    length = i22;
                }
            }
        }
        while (true) {
            z4 = z2 == z6;
            int i23 = length + (z4 ? 2 : -2);
            if (i23 < 0 || i23 >= iArr.length) {
                break;
            }
            int i24 = 0 + iArr[i23];
            int i25 = i23 + 1;
            int i26 = i24 + (iArr[i25] & Layout.RUN_LENGTH_MASK);
            int i27 = i26 > i9 ? i9 : i26;
            int i28 = (iArr[i25] >>> 26) & 63;
            boolean z10 = (i28 & 1) != 0;
            if (z2 == z10) {
                i8 = -1;
                z5 = true;
            } else {
                z5 = false;
                i8 = -1;
            }
            if (i10 != i8) {
                if (i28 < i6) {
                    return z5 ? i24 : i27;
                }
                return i10;
            }
            offsetBeforeAfter = getOffsetBeforeAfter(i23, i24, i27, z10, z5 ? i24 : i27, z5);
            if (offsetBeforeAfter == (z5 ? i27 : i24)) {
                i6 = i28;
                i10 = offsetBeforeAfter;
                length = i23;
            }
            return offsetBeforeAfter;
        }
        offsetBeforeAfter = -1;
        if (i10 == -1) {
            if (z4) {
                return this.mLen + 1;
            }
            return offsetBeforeAfter;
        }
        if (i10 > i9) {
            return i10;
        }
        if (!z4) {
            i9 = 0;
        }
        return i9;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public float measure(int i2, boolean z2, Paint.FontMetricsInt fontMetricsInt) {
        Bitmap bitmap;
        int i3;
        float fMeasureRun;
        int i4;
        int i5;
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
            int i9 = i7 + 1;
            int i10 = (iArr[i9] & Layout.RUN_LENGTH_MASK) + i8;
            int i11 = this.mLen;
            int i12 = i10 > i11 ? i11 : i10;
            boolean z3 = (iArr[i9] & 67108864) != 0;
            float width = f2;
            int i13 = i8;
            int i14 = this.mHasTabs ? i8 : i12;
            while (i14 <= i12) {
                Bitmap bitmapFromAndroidPua = null;
                if (!this.mHasTabs || i14 >= i12) {
                    bitmap = null;
                    i3 = 0;
                } else {
                    char c2 = cArr[i14];
                    if (c2 >= 55296 && c2 < 56320 && (i5 = i14 + 1) < i12) {
                        int iCodePointAt = Character.codePointAt(cArr, i14);
                        if (iCodePointAt < Layout.MIN_EMOJI || iCodePointAt > Layout.MAX_EMOJI) {
                            i4 = c2;
                            i4 = c2;
                            i4 = c2;
                            i4 = c2;
                            i4 = c2;
                            i4 = c2;
                            i4 = iCodePointAt;
                            if (iCodePointAt > 65535) {
                                i14 = i5;
                            }
                            i14++;
                        } else {
                            i4 = c2;
                            i4 = c2;
                            i4 = c2;
                            bitmapFromAndroidPua = Layout.EMOJI_FACTORY.getBitmapFromAndroidPua(iCodePointAt);
                            i4 = iCodePointAt;
                        }
                    }
                    i4 = c2;
                    i4 = c2;
                    i4 = c2;
                    i4 = c2;
                    i4 = c2;
                    i4 = c2;
                    bitmap = bitmapFromAndroidPua;
                    i3 = i4;
                }
                if (i14 == i12 || i3 == 9 || bitmap != null) {
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
                        width += fMeasureRun2;
                        if (z4) {
                            fMeasureRun = measureRun(i17, i2, i16, z3, null);
                        } else {
                            if (i15 == 9) {
                                if (i2 == i16) {
                                    return width;
                                }
                                int i18 = this.mDir;
                                width = i18 * nextTab(i18 * width);
                                if (i6 == i16) {
                                    return width;
                                }
                            }
                            if (bitmap != null) {
                                width += this.mDir * ((bitmap.getWidth() * (-ascent(i16))) / bitmap.getHeight());
                                i14 = i16 + 1;
                            } else {
                                i14 = i16;
                            }
                            i13 = i14 + 1;
                        }
                    }
                    return width + fMeasureRun;
                }
                i14++;
            }
            i7 += 2;
            f2 = width;
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
                this.mChars = new char[a.f(this.mLen)];
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
    }
}
