package android.text;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineHeightSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.TabStopSpan;
import android.util.Log;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class StaticLayout extends Layout {
    private static final char CHAR_FIRST_CJK = 11904;
    private static final int CHAR_FIRST_HIGH_SURROGATE = 55296;
    private static final char CHAR_HYPHEN = '-';
    private static final int CHAR_LAST_LOW_SURROGATE = 57343;
    private static final char CHAR_NEW_LINE = '\n';
    private static final char CHAR_SLASH = '/';
    private static final char CHAR_SPACE = ' ';
    private static final char CHAR_TAB = '\t';
    private static final char CHAR_ZWSP = 8203;
    private static final int COLUMNS_ELLIPSIZE = 5;
    private static final int COLUMNS_NORMAL = 3;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 4;
    private static final int ELLIPSIS_START = 3;
    private static final double EXTRA_ROUNDING = 0.5d;
    private static final int START = 0;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final int TAB_INCREMENT = 20;
    private static final int TAB_MASK = 536870912;
    public static final String TAG = "StaticLayout";
    private static final int TOP = 1;
    private int mBottomPadding;
    private int mColumns;
    private int mEllipsizedWidth;
    private Paint.FontMetricsInt mFontMetricsInt;
    private int mLineCount;
    private Layout.Directions[] mLineDirections;
    private int[] mLines;
    private int mMaximumVisibleLineCount;
    private MeasuredText mMeasured;
    private int mTopPadding;

    public StaticLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, boolean z2) {
        this(charSequence, 0, charSequence.length(), textPaint, i2, alignment, f2, f3, z2);
    }

    private void calculateEllipsis(int i2, int i3, float[] fArr, int i4, float f2, TextUtils.TruncateAt truncateAt, int i5, float f3, TextPaint textPaint, boolean z2) {
        int i6;
        int i7 = 0;
        if (f3 <= f2 && !z2) {
            int[] iArr = this.mLines;
            int i8 = this.mColumns;
            iArr[(i8 * i5) + 3] = 0;
            iArr[(i8 * i5) + 4] = 0;
            return;
        }
        TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.END_SMALL;
        int i9 = 1;
        float fMeasureText = textPaint.measureText(truncateAt == truncateAt2 ? Layout.ELLIPSIS_TWO_DOTS : Layout.ELLIPSIS_NORMAL, 0, 1);
        int i10 = i3 - i2;
        float f4 = 0.0f;
        if (truncateAt != TextUtils.TruncateAt.START) {
            if (truncateAt == TextUtils.TruncateAt.END || truncateAt == TextUtils.TruncateAt.MARQUEE || truncateAt == truncateAt2) {
                while (i7 < i10) {
                    f4 += fArr[(i7 + i2) - i4];
                    if (f4 + fMeasureText > f2) {
                        break;
                    } else {
                        i7++;
                    }
                }
                i6 = i10 - i7;
                if (z2 && i6 == 0 && i10 > 0) {
                    i7 = i10 - 1;
                }
            } else if (this.mMaximumVisibleLineCount == 1) {
                float f5 = f2 - fMeasureText;
                float f6 = f5 / 2.0f;
                float f7 = 0.0f;
                while (i10 >= 0) {
                    float f8 = fArr[((i10 - 1) + i2) - i4] + f7;
                    if (f8 > f6) {
                        break;
                    }
                    i10--;
                    f7 = f8;
                }
                float f9 = f5 - f7;
                while (i7 < i10) {
                    f4 += fArr[(i7 + i2) - i4];
                    if (f4 > f9) {
                        break;
                    } else {
                        i7++;
                    }
                }
                i6 = i10 - i7;
            } else {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Middle Ellipsis only supported with one line");
                }
                i9 = 0;
            }
            i9 = i6;
        } else if (this.mMaximumVisibleLineCount == 1) {
            while (i10 >= 0) {
                f4 += fArr[((i10 - 1) + i2) - i4];
                if (f4 + fMeasureText > f2) {
                    break;
                } else {
                    i10--;
                }
            }
            i9 = i10;
        } else {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Start Ellipsis only supported with one line");
            }
            i9 = 0;
        }
        int[] iArr2 = this.mLines;
        int i11 = this.mColumns;
        iArr2[(i11 * i5) + 3] = i7;
        iArr2[(i11 * i5) + 4] = i9;
    }

    private static final boolean isIdeographic(char c2, boolean z2) {
        if ((c2 >= 11904 && c2 <= 12287) || c2 == 12288) {
            return true;
        }
        if (c2 >= 12352 && c2 <= 12447) {
            if (!z2) {
                if (c2 != 12353 && c2 != 12355 && c2 != 12357 && c2 != 12359 && c2 != 12361 && c2 != 12387 && c2 != 12419 && c2 != 12421 && c2 != 12423 && c2 != 12430 && c2 != 12437 && c2 != 12438) {
                    switch (c2) {
                    }
                }
                return false;
            }
            return true;
        }
        if (c2 >= 12448 && c2 <= 12543) {
            if (!z2) {
                if (c2 != 12448 && c2 != 12449 && c2 != 12451 && c2 != 12453 && c2 != 12455 && c2 != 12457 && c2 != 12483 && c2 != 12515 && c2 != 12517 && c2 != 12519 && c2 != 12526 && c2 != 12533 && c2 != 12534) {
                    switch (c2) {
                    }
                }
                return false;
            }
            return true;
        }
        if (c2 >= 13312 && c2 <= 19893) {
            return true;
        }
        if (c2 >= 19968 && c2 <= 40891) {
            return true;
        }
        if (c2 >= 63744 && c2 <= 64217) {
            return true;
        }
        if (c2 >= 40960 && c2 <= 42127) {
            return true;
        }
        if (c2 >= 42128 && c2 <= 42191) {
            return true;
        }
        if (c2 < 65122 || c2 > 65126) {
            return c2 >= 65296 && c2 <= 65305;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [int] */
    /* JADX WARN: Type inference failed for: r8v9 */
    private int out(CharSequence charSequence, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, float f3, LineHeightSpan[] lineHeightSpanArr, int[] iArr, Paint.FontMetricsInt fontMetricsInt, boolean z2, boolean z3, byte[] bArr, int i9, boolean z4, int i10, boolean z5, boolean z6, char[] cArr, float[] fArr, int i11, TextUtils.TruncateAt truncateAt, float f4, float f5, TextPaint textPaint, boolean z7) {
        int[] iArr2;
        int i12;
        int i13;
        int i14;
        boolean z8;
        ?? r8;
        int i15;
        int i16 = this.mLineCount;
        int i17 = this.mColumns;
        int i18 = i16 * i17;
        int i19 = i17 + i18 + 1;
        int[] iArr3 = this.mLines;
        boolean z9 = false;
        if (i19 >= iArr3.length) {
            int iH = a.h(i19 + 1);
            int[] iArr4 = new int[iH];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.mLines = iArr4;
            Layout.Directions[] directionsArr = new Layout.Directions[iH];
            Layout.Directions[] directionsArr2 = this.mLineDirections;
            System.arraycopy(directionsArr2, 0, directionsArr, 0, directionsArr2.length);
            this.mLineDirections = directionsArr;
            iArr2 = iArr4;
        } else {
            iArr2 = iArr3;
        }
        int i20 = i4;
        if (lineHeightSpanArr != null) {
            fontMetricsInt.ascent = i20;
            fontMetricsInt.descent = i5;
            fontMetricsInt.top = i6;
            fontMetricsInt.bottom = i7;
            int i21 = 0;
            while (i21 < lineHeightSpanArr.length) {
                if (lineHeightSpanArr[i21] instanceof LineHeightSpan.WithDensity) {
                    i15 = i21;
                    ((LineHeightSpan.WithDensity) lineHeightSpanArr[i21]).chooseHeight(charSequence, i2, i3, iArr[i21], i8, fontMetricsInt, textPaint);
                } else {
                    i15 = i21;
                    lineHeightSpanArr[i15].chooseHeight(charSequence, i2, i3, iArr[i15], i8, fontMetricsInt);
                }
                i21 = i15 + 1;
                z9 = z9;
            }
            z8 = z9;
            i20 = fontMetricsInt.ascent;
            i12 = fontMetricsInt.descent;
            i13 = fontMetricsInt.top;
            i14 = fontMetricsInt.bottom;
        } else {
            i12 = i5;
            i13 = i6;
            i14 = i7;
            z8 = false;
        }
        if (i16 == 0) {
            if (z6) {
                this.mTopPadding = i13 - i20;
            }
            if (z5) {
                i20 = i13;
            }
        }
        if (i3 == i10) {
            if (z6) {
                this.mBottomPadding = i14 - i12;
            }
            if (z5) {
                i12 = i14;
            }
        }
        if (z3) {
            double d2 = ((i12 - i20) * (f2 - 1.0f)) + f3;
            r8 = d2 >= 0.0d ? (int) (d2 + EXTRA_ROUNDING) : -((int) ((-d2) + EXTRA_ROUNDING));
        } else {
            r8 = z8;
        }
        int i22 = i18 + 0;
        iArr2[i22] = i2;
        iArr2[i18 + 1] = i8;
        iArr2[i18 + 2] = i12 + r8;
        int i23 = i8 + (i12 - i20) + r8;
        int i24 = this.mColumns;
        iArr2[i18 + i24 + 0] = i3;
        iArr2[i18 + i24 + 1] = i23;
        if (z2) {
            iArr2[i22] = iArr2[i22] | 536870912;
        }
        iArr2[i22] = iArr2[i22] | (i9 << 30);
        Layout.Directions directions = Layout.DIRS_ALL_LEFT_TO_RIGHT;
        if (z4) {
            this.mLineDirections[i16] = directions;
        } else {
            int i25 = i2 - i11;
            this.mLineDirections[i16] = AndroidBidi.directions(i9, bArr, i25, cArr, i25, i3 - i2);
        }
        if (truncateAt != null) {
            boolean z10 = i16 == 0 ? true : z8;
            int i26 = i16 + 1;
            int i27 = this.mMaximumVisibleLineCount;
            boolean z11 = i26 == i27 ? true : z8;
            boolean z12 = (z7 && this.mLineCount + 1 == i27) ? true : z8;
            if ((((!(i27 == 1 && z7) && (!z10 || z7)) || truncateAt == TextUtils.TruncateAt.MARQUEE) && (z10 || ((!z11 && z7) || truncateAt != TextUtils.TruncateAt.END))) ? z8 : true) {
                calculateEllipsis(i2, i3, fArr, i11, f4, truncateAt, i16, f5, textPaint, z12);
            }
        }
        this.mLineCount++;
        return i23;
    }

    public void finish() {
        this.mMeasured = MeasuredText.recycle(this.mMeasured);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:116:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:120:0x030f  */
    /* JADX WARN: Code duplicated, block: B:123:0x033b  */
    /* JADX WARN: Code duplicated, block: B:163:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:165:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:166:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:169:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:170:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:173:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:174:0x0401  */
    /* JADX WARN: Code duplicated, block: B:177:0x0407  */
    /* JADX WARN: Code duplicated, block: B:178:0x040b  */
    /* JADX WARN: Code duplicated, block: B:180:0x0411  */
    /* JADX WARN: Code duplicated, block: B:226:0x02e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0319 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x01ad  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r26v6 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public void generate(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3, boolean z2, boolean z3, float f4, TextUtils.TruncateAt truncateAt) {
        MeasuredText measuredText;
        Paint.FontMetricsInt fontMetricsInt;
        CharSequence charSequence2;
        Class<MetricAffectingSpan> cls;
        boolean z4;
        int leadingMargin;
        int i5;
        int[] iArr;
        LineHeightSpan[] lineHeightSpanArr;
        int i6;
        int i7;
        int i8;
        int i9;
        Class<MetricAffectingSpan> cls2;
        int i10;
        int i11;
        int i12;
        Spanned spanned;
        Paint.FontMetricsInt fontMetricsInt2;
        float[] fArr;
        char[] cArr;
        StaticLayout staticLayout;
        boolean z5;
        MeasuredText measuredText2;
        int i13;
        boolean z6;
        int i14;
        int i15;
        int i16;
        int i17;
        int iCodePointAt;
        Bitmap bitmapFromAndroidPua;
        int i18;
        Layout.TabStops tabStops;
        boolean z7;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z8;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        boolean z9;
        int i31;
        int i32;
        float f5;
        int i33;
        int i34;
        MeasuredText measuredText3;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        StaticLayout staticLayout2 = this;
        CharSequence charSequence3 = charSequence;
        Class<MetricAffectingSpan> cls3 = MetricAffectingSpan.class;
        staticLayout2.mLineCount = 0;
        int i41 = 1;
        boolean z10 = (f2 == 1.0f && f3 == 0.0f) ? false : true;
        Paint.FontMetricsInt fontMetricsInt3 = staticLayout2.mFontMetricsInt;
        MeasuredText measuredText4 = staticLayout2.mMeasured;
        Spanned spanned2 = charSequence3 instanceof Spanned ? (Spanned) charSequence3 : null;
        int iOut = 0;
        int i42 = i2;
        int[] iArr2 = null;
        while (true) {
            if (i42 > i3) {
                measuredText = measuredText4;
                fontMetricsInt = fontMetricsInt3;
                i3 = i3;
                break;
            }
            int iIndexOf = TextUtils.indexOf(charSequence3, CHAR_NEW_LINE, i42, i3);
            int i43 = iIndexOf < 0 ? i3 : iIndexOf + 1;
            int i44 = staticLayout2.mLineCount + i41;
            if (spanned2 != null) {
                LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) Layout.getParagraphSpans(spanned2, i42, i43, LeadingMarginSpan.class);
                leadingMargin = i4;
                int leadingMargin2 = leadingMargin;
                int lineForOffset = i44;
                int i45 = 0;
                while (i45 < leadingMarginSpanArr.length) {
                    LeadingMarginSpan leadingMarginSpan = leadingMarginSpanArr[i45];
                    Class<MetricAffectingSpan> cls4 = cls3;
                    leadingMargin -= leadingMarginSpanArr[i45].getLeadingMargin(true);
                    leadingMargin2 -= leadingMarginSpanArr[i45].getLeadingMargin(false);
                    if (leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                        LeadingMarginSpan.LeadingMarginSpan2 leadingMarginSpan2 = (LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan;
                        lineForOffset = staticLayout2.getLineForOffset(spanned2.getSpanStart(leadingMarginSpan2)) + leadingMarginSpan2.getLeadingMarginLineCount();
                    }
                    i45++;
                    cls3 = cls4;
                }
                cls = cls3;
                z4 = false;
                LineHeightSpan[] lineHeightSpanArr2 = (LineHeightSpan[]) Layout.getParagraphSpans(spanned2, i42, i43, LineHeightSpan.class);
                if (lineHeightSpanArr2.length != 0) {
                    if (iArr2 == null || iArr2.length < lineHeightSpanArr2.length) {
                        iArr2 = new int[a.h(lineHeightSpanArr2.length)];
                    }
                    for (int i46 = 0; i46 < lineHeightSpanArr2.length; i46++) {
                        int spanStart = spanned2.getSpanStart(lineHeightSpanArr2[i46]);
                        if (spanStart < i42) {
                            iArr2[i46] = staticLayout2.getLineTop(staticLayout2.getLineForOffset(spanStart));
                        } else {
                            iArr2[i46] = iOut;
                        }
                    }
                }
                iArr = iArr2;
                lineHeightSpanArr = lineHeightSpanArr2;
                i44 = lineForOffset;
                i5 = leadingMargin2;
            } else {
                cls = cls3;
                z4 = false;
                leadingMargin = i4;
                i5 = leadingMargin;
                iArr = iArr2;
                lineHeightSpanArr = null;
            }
            measuredText4.setPara(charSequence3, i42, i43, textDirectionHeuristic);
            char[] cArr2 = measuredText4.mChars;
            float[] fArr2 = measuredText4.mWidths;
            byte[] bArr = measuredText4.mLevels;
            int i47 = measuredText4.mDir;
            boolean z11 = measuredText4.mEasy;
            int iOut2 = iOut;
            int i48 = i42;
            int i49 = i48;
            int i50 = i44;
            boolean z12 = z4;
            boolean z13 = z12;
            int i51 = z13 ? 1 : 0;
            int i52 = i51 == true ? 1 : 0;
            int i53 = i52 == true ? 1 : 0;
            int i54 = i53 == true ? 1 : 0;
            int i55 = i54 == true ? 1 : 0;
            int i56 = i55 == true ? 1 : 0;
            int i57 = i56 == true ? 1 : 0;
            boolean z14 = i57 == true ? 1 : 0;
            boolean z15 = z11;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            Layout.TabStops tabStops2 = null;
            int i58 = i49;
            int i59 = i58;
            while (i59 < i43) {
                if (spanned2 == null) {
                    measuredText4.addStyleRun(textPaint, i43 - i59, fontMetricsInt3);
                    i10 = i43;
                    cls2 = cls;
                } else {
                    cls2 = cls;
                    int iNextSpanTransition = spanned2.nextSpanTransition(i59, i43, cls2);
                    measuredText4.addStyleRun(textPaint, (MetricAffectingSpan[]) TextUtils.removeEmptySpans((MetricAffectingSpan[]) spanned2.getSpans(i59, iNextSpanTransition, cls2), spanned2, cls2), iNextSpanTransition - i59, fontMetricsInt3);
                    i10 = iNextSpanTransition;
                }
                int i60 = fontMetricsInt3.top;
                int i61 = i59;
                int i62 = fontMetricsInt3.bottom;
                int i63 = fontMetricsInt3.ascent;
                float width = f6;
                int i64 = i48;
                int i65 = i54;
                int i66 = i55;
                int i67 = i56;
                int i68 = i57;
                int i69 = i60;
                byte[] bArr2 = bArr;
                Class<MetricAffectingSpan> cls5 = cls2;
                ?? r1 = z13;
                int i70 = i51;
                int i71 = i52;
                int i72 = i53;
                float f9 = f7;
                int i73 = i61;
                MeasuredText measuredText5 = measuredText4;
                int i74 = i49;
                int i75 = leadingMargin;
                int i76 = fontMetricsInt3.descent;
                int i77 = i75;
                boolean z16 = z14;
                while (true) {
                    if (i73 >= i10) {
                        i11 = i43;
                        i12 = i42;
                        spanned = spanned2;
                        fontMetricsInt2 = fontMetricsInt3;
                        fArr = fArr2;
                        cArr = cArr2;
                        int i78 = i77;
                        staticLayout = staticLayout2;
                        z5 = z15;
                        i47 = i47;
                        int i79 = i70;
                        measuredText2 = measuredText5;
                        i13 = i66;
                        z6 = false;
                        ?? r6 = r1;
                        i14 = i67 == true ? 1 : 0;
                        i59 = i10;
                        i49 = i74;
                        z13 = r6 == true ? 1 : 0;
                        f6 = width;
                        i48 = i64;
                        i53 = i72 == true ? 1 : 0;
                        i15 = i65 == true ? 1 : 0;
                        i16 = i68 == true ? 1 : 0;
                        i52 = i71;
                        i50 = i50;
                        leadingMargin = i78;
                        i51 = i79 == true ? 1 : 0;
                        break;
                    }
                    int i80 = i72;
                    int i81 = i73 - i42;
                    ?? r26 = r1;
                    char c2 = cArr2[i81];
                    Paint.FontMetricsInt fontMetricsInt4 = fontMetricsInt3;
                    if (c2 == '\n') {
                        i43 = i43;
                        z16 = z16;
                    } else if (c2 == '\t') {
                        if (z16) {
                            i43 = i43;
                            i18 = 20;
                            tabStops = tabStops2;
                        } else {
                            if (spanned2 != null) {
                                TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) Layout.getParagraphSpans(spanned2, i42, i43, TabStopSpan.class);
                                if (tabStopSpanArr.length > 0) {
                                    i18 = 20;
                                    tabStops = new Layout.TabStops(20, tabStopSpanArr);
                                } else {
                                    i18 = 20;
                                    tabStops = tabStops2;
                                }
                            } else {
                                i18 = 20;
                                tabStops = tabStops2;
                            }
                            z12 = true;
                            z7 = true;
                        }
                        if (tabStops != null) {
                            z7 = z16;
                            width = tabStops.nextTab(width);
                        } else {
                            z7 = z16;
                            width = Layout.TabStops.nextDefaultStop(width, i18);
                        }
                        tabStops2 = tabStops;
                        z16 = z7;
                    } else {
                        i43 = i43;
                        if (c2 < CHAR_FIRST_HIGH_SURROGATE || c2 > CHAR_LAST_LOW_SURROGATE || (i17 = i73 + 1) >= i10 || (iCodePointAt = Character.codePointAt(cArr2, i81)) < Layout.MIN_EMOJI || iCodePointAt > Layout.MAX_EMOJI || (bitmapFromAndroidPua = Layout.EMOJI_FACTORY.getBitmapFromAndroidPua(iCodePointAt)) == null) {
                            float f10 = fArr2[i81];
                            width += f10;
                            z16 = z16;
                        } else {
                            width += (bitmapFromAndroidPua.getWidth() * (-(spanned2 == null ? textPaint : staticLayout2.mWorkPaint).ascent())) / bitmapFromAndroidPua.getHeight();
                            i73 = i17;
                            z12 = true;
                            z16 = z16;
                        }
                    }
                    boolean z17 = z12;
                    boolean z18 = c2 == ' ' || c2 == '\t' || c2 == 8203;
                    if (width <= i77 || z18) {
                        int i82 = i10;
                        spanned = spanned2;
                        fArr = fArr2;
                        cArr = cArr2;
                        staticLayout = staticLayout2;
                        int i83 = i76;
                        int i84 = i69;
                        measuredText2 = measuredText5;
                        fontMetricsInt2 = fontMetricsInt4;
                        int i85 = i62;
                        int i86 = i63;
                        i11 = i43;
                        i12 = i42;
                        z5 = z15;
                        i47 = i47;
                        int i87 = i61;
                        i19 = i77;
                        i64 = i73 + 1;
                        int i88 = r26 == true ? 1 : 0;
                        if (i84 < i88) {
                            i88 = i84;
                        }
                        i20 = i80 == true ? 1 : 0;
                        i21 = i86;
                        if (i21 < i20) {
                            i20 = i21;
                        }
                        int i89 = i71;
                        i22 = i83;
                        i23 = i87;
                        i69 = i84;
                        if (i22 > i89) {
                            i89 = i22;
                        }
                        int i90 = i70;
                        if (i85 > i90) {
                            i90 = i85;
                        }
                        if (z18) {
                            i24 = i82;
                        } else {
                            if (c2 == '/' || c2 == '-') {
                                i24 = i82;
                                if (i64 >= i24 || !Character.isDigit(cArr[i64 - i12])) {
                                }
                            } else {
                                i24 = i82;
                            }
                            if (c2 < 11904 || !isIdeographic(c2, true) || i64 >= i24) {
                                z9 = false;
                            } else {
                                z9 = false;
                                if (isIdeographic(cArr[i64 - i12], false)) {
                                    z8 = true;
                                }
                                if (z8) {
                                    i27 = i67 == true ? 1 : 0;
                                    if (i88 < i27) {
                                        i67 = i88;
                                    } else {
                                        i67 = i27 == true ? 1 : 0;
                                    }
                                    i28 = i65;
                                    if (i20 < i28) {
                                        i65 = i20 == true ? 1 : 0;
                                    } else {
                                        i65 = i28 == true ? 1 : 0;
                                    }
                                    i29 = i66;
                                    if (i89 > i29) {
                                        i66 = i89;
                                    } else {
                                        i66 = i29 == true ? 1 : 0;
                                    }
                                    i30 = i68;
                                    if (i90 > i30) {
                                        i25 = i90;
                                    } else {
                                        i25 = i30 == true ? 1 : 0;
                                    }
                                    f9 = width;
                                } else {
                                    boolean z19 = i67 == true ? 1 : 0;
                                    i25 = i68;
                                }
                                i70 = i90;
                                i71 = i89;
                                i26 = i88;
                                f8 = width;
                                i68 = i25;
                                i74 = i64;
                            }
                            z8 = z9;
                            if (z8) {
                                i27 = i67 == true ? 1 : 0;
                                if (i88 < i27) {
                                    i67 = i88;
                                } else {
                                    i67 = i27 == true ? 1 : 0;
                                }
                                i28 = i65;
                                if (i20 < i28) {
                                    i65 = i20 == true ? 1 : 0;
                                } else {
                                    i65 = i28 == true ? 1 : 0;
                                }
                                i29 = i66;
                                if (i89 > i29) {
                                    i66 = i89;
                                } else {
                                    i66 = i29 == true ? 1 : 0;
                                }
                                i30 = i68;
                                if (i90 > i30) {
                                    i25 = i90;
                                } else {
                                    i25 = i30 == true ? 1 : 0;
                                }
                                f9 = width;
                            } else {
                                boolean z110 = i67 == true ? 1 : 0;
                                i25 = i68;
                            }
                            i70 = i90;
                            i71 = i89;
                            i26 = i88;
                            f8 = width;
                            i68 = i25;
                            i74 = i64;
                        }
                        z8 = true;
                        if (z8) {
                            i27 = i67 == true ? 1 : 0;
                            if (i88 < i27) {
                                i67 = i88;
                            } else {
                                i67 = i27 == true ? 1 : 0;
                            }
                            i28 = i65;
                            if (i20 < i28) {
                                i65 = i20 == true ? 1 : 0;
                            } else {
                                i65 = i28 == true ? 1 : 0;
                            }
                            i29 = i66;
                            if (i89 > i29) {
                                i66 = i89;
                            } else {
                                i66 = i29 == true ? 1 : 0;
                            }
                            i30 = i68;
                            if (i90 > i30) {
                                i25 = i90;
                            } else {
                                i25 = i30 == true ? 1 : 0;
                            }
                            f9 = width;
                        } else {
                            boolean z111 = i67 == true ? 1 : 0;
                            i25 = i68;
                        }
                        i70 = i90;
                        i71 = i89;
                        i26 = i88;
                        f8 = width;
                        i68 = i25;
                        i74 = i64;
                    } else {
                        boolean z20 = i73 + 1 < i10;
                        if (i64 != i58) {
                            f5 = f9;
                            i80 = i65;
                            i33 = i66;
                            i32 = i68;
                        } else {
                            if (i74 != i58) {
                                i64 = i74;
                                i32 = i70;
                                i33 = i71;
                                i67 = r26 == true ? 1 : 0;
                                f5 = f8;
                            } else {
                                i64 = i58 + 1;
                                fontMetricsInt4 = fontMetricsInt4;
                                int i91 = fontMetricsInt4.ascent;
                                int i92 = fontMetricsInt4.descent;
                                int i93 = fontMetricsInt4.top;
                                i32 = fontMetricsInt4.bottom;
                                i80 = i91;
                                i67 = i93;
                                f5 = fArr2[i58 - i42];
                                i69 = i69;
                                i33 = i92;
                            }
                            i34 = i10;
                            i11 = i43;
                            i12 = i42;
                            spanned = spanned2;
                            measuredText3 = measuredText5;
                            fontMetricsInt2 = fontMetricsInt4;
                            i35 = i69;
                            fArr = fArr2;
                            cArr = cArr2;
                            i36 = i76;
                            i37 = i61;
                            i31 = i62;
                            i38 = i63;
                            i39 = i77;
                            z5 = z15;
                            iOut2 = out(charSequence, i58, i64, i80 == true ? 1 : 0, i33, i67 == true ? 1 : 0, i32, iOut2, f2, f3, lineHeightSpanArr, iArr, fontMetricsInt2, z17, z10, bArr2, i47, z5, i3, z2, z3, cArr, fArr, i12, truncateAt, f4, f5, textPaint, z20);
                            i64 = i64;
                            i73 = i64 - 1;
                            i50--;
                            if (i50 <= 0) {
                                i40 = i5;
                            } else {
                                i40 = i39;
                            }
                            if (i64 < i37) {
                                measuredText2 = measuredText3;
                                measuredText2.setPos(i64);
                                i58 = i64;
                                i48 = i58;
                                leadingMargin = i40;
                                f6 = 0.0f;
                                z12 = z17;
                                i50 = i50;
                                i14 = 0;
                                i16 = 0;
                                z6 = false;
                                i13 = 0;
                                z13 = false;
                                i51 = 0;
                                i52 = 0;
                                i53 = 0;
                                i15 = 0;
                                staticLayout = this;
                                i59 = i48;
                                i49 = i59;
                                break;
                            }
                            staticLayout = this;
                            measuredText2 = measuredText3;
                            if (staticLayout.mLineCount >= staticLayout.mMaximumVisibleLineCount) {
                                i58 = i64;
                                i48 = i58;
                                leadingMargin = i40;
                                f6 = 0.0f;
                                z12 = z17;
                                i50 = i50;
                                i59 = i34;
                                i14 = 0;
                                i16 = 0;
                                z6 = false;
                                i13 = 0;
                                z13 = false;
                                i51 = 0;
                                i52 = 0;
                                i53 = 0;
                                i15 = 0;
                                i49 = i48;
                                break;
                            }
                            i23 = i37;
                            i74 = i64;
                            i58 = i74;
                            i19 = i40;
                            width = 0.0f;
                            i24 = i34;
                            i69 = i35;
                            i21 = i38;
                            i22 = i36;
                            i26 = 0;
                            i20 = 0;
                            i70 = 0;
                            i71 = 0;
                            i65 = 0;
                            i66 = 0;
                            i67 = 0;
                            i68 = 0;
                        }
                        i34 = i10;
                        i11 = i43;
                        i12 = i42;
                        spanned = spanned2;
                        measuredText3 = measuredText5;
                        fontMetricsInt2 = fontMetricsInt4;
                        i35 = i69;
                        fArr = fArr2;
                        cArr = cArr2;
                        i36 = i76;
                        i37 = i61;
                        i31 = i62;
                        i38 = i63;
                        i39 = i77;
                        z5 = z15;
                        iOut2 = out(charSequence, i58, i64, i80 == true ? 1 : 0, i33, i67 == true ? 1 : 0, i32, iOut2, f2, f3, lineHeightSpanArr, iArr, fontMetricsInt2, z17, z10, bArr2, i47, z5, i3, z2, z3, cArr, fArr, i12, truncateAt, f4, f5, textPaint, z20);
                        i64 = i64;
                        i73 = i64 - 1;
                        i50--;
                        if (i50 <= 0) {
                            i40 = i5;
                        } else {
                            i40 = i39;
                        }
                        if (i64 < i37) {
                            measuredText2 = measuredText3;
                            measuredText2.setPos(i64);
                            i58 = i64;
                            i48 = i58;
                            leadingMargin = i40;
                            f6 = 0.0f;
                            z12 = z17;
                            i50 = i50;
                            i14 = 0;
                            i16 = 0;
                            z6 = false;
                            i13 = 0;
                            z13 = false;
                            i51 = 0;
                            i52 = 0;
                            i53 = 0;
                            i15 = 0;
                            staticLayout = this;
                            i59 = i48;
                            i49 = i59;
                            break;
                            break;
                        }
                        staticLayout = this;
                        measuredText2 = measuredText3;
                        if (staticLayout.mLineCount >= staticLayout.mMaximumVisibleLineCount) {
                            i58 = i64;
                            i48 = i58;
                            leadingMargin = i40;
                            f6 = 0.0f;
                            z12 = z17;
                            i50 = i50;
                            i59 = i34;
                            i14 = 0;
                            i16 = 0;
                            z6 = false;
                            i13 = 0;
                            z13 = false;
                            i51 = 0;
                            i52 = 0;
                            i53 = 0;
                            i15 = 0;
                            i49 = i48;
                            break;
                            break;
                        }
                        i23 = i37;
                        i74 = i64;
                        i58 = i74;
                        i19 = i40;
                        width = 0.0f;
                        i24 = i34;
                        i69 = i35;
                        i21 = i38;
                        i22 = i36;
                        i26 = 0;
                        i20 = 0;
                        i70 = 0;
                        i71 = 0;
                        i65 = 0;
                        i66 = 0;
                        i67 = 0;
                        i68 = 0;
                    }
                    i73++;
                    i10 = i24;
                    i63 = i21;
                    i72 = i20;
                    i76 = i22;
                    measuredText5 = measuredText2;
                    i47 = i47;
                    z12 = z17;
                    fArr2 = fArr;
                    i77 = i19;
                    z15 = z5;
                    i42 = i12;
                    i43 = i11;
                    spanned2 = spanned;
                    fontMetricsInt3 = fontMetricsInt2;
                    i61 = i23;
                    i62 = i31;
                    staticLayout2 = staticLayout;
                    cArr2 = cArr;
                    r1 = i26;
                    z16 = z16;
                }
                textPaint = textPaint;
                z4 = z6;
                measuredText4 = measuredText2;
                bArr = bArr2;
                cls = cls5;
                f7 = f9;
                fArr2 = fArr;
                z15 = z5;
                i42 = i12;
                spanned2 = spanned;
                fontMetricsInt3 = fontMetricsInt2;
                i54 = i15;
                i56 = i14;
                staticLayout2 = staticLayout;
                i55 = i13;
                i47 = i47;
                cArr2 = cArr;
                i57 = i16;
                i43 = i11;
                z14 = z16;
            }
            int i94 = i47;
            int i95 = i43;
            int i96 = i42;
            Spanned spanned3 = spanned2;
            fontMetricsInt = fontMetricsInt3;
            byte[] bArr3 = bArr;
            boolean z21 = z4;
            float[] fArr3 = fArr2;
            char[] cArr3 = cArr2;
            StaticLayout staticLayout3 = staticLayout2;
            boolean z22 = z15;
            Class<MetricAffectingSpan> cls6 = cls;
            measuredText = measuredText4;
            if (i95 == i58 || staticLayout3.mLineCount >= staticLayout3.mMaximumVisibleLineCount) {
                iOut = iOut2;
            } else {
                if (((((z13 | i51) | i52) == true ? 1 : 0) | i53) == 0) {
                    textPaint.getFontMetricsInt(fontMetricsInt);
                    int i97 = fontMetricsInt.top;
                    int i98 = fontMetricsInt.bottom;
                    int i99 = fontMetricsInt.ascent;
                    i6 = i97;
                    i7 = i98;
                    i8 = fontMetricsInt.descent;
                    i9 = i99;
                } else {
                    i6 = z13;
                    i7 = i51;
                    i8 = i52;
                    i9 = i53;
                }
                fontMetricsInt = fontMetricsInt;
                iOut = out(charSequence, i58, i95, i9, i8, i6, i7, iOut2, f2, f3, lineHeightSpanArr, iArr, fontMetricsInt, z12, z10, bArr3, i94, z22, i3, z2, z3, cArr3, fArr3, i96, truncateAt, f4, f6, textPaint, i95 != i3 ? true : z21);
            }
            if (i95 == i3) {
                break;
            }
            charSequence3 = charSequence;
            i42 = i95;
            iArr2 = iArr;
            i41 = 1;
            cls3 = cls6;
            spanned2 = spanned3;
            fontMetricsInt3 = fontMetricsInt;
            measuredText4 = measuredText;
            staticLayout2 = this;
        }
        int i100 = iOut;
        if (i3 != i2) {
            charSequence2 = charSequence;
            if (charSequence2.charAt(i3 - 1) != '\n') {
                return;
            }
        } else {
            charSequence2 = charSequence;
        }
        if (this.mLineCount < this.mMaximumVisibleLineCount) {
            MeasuredText measuredText6 = measuredText;
            measuredText6.setPara(charSequence2, i2, i3, textDirectionHeuristic);
            Paint.FontMetricsInt fontMetricsInt5 = fontMetricsInt;
            textPaint.getFontMetricsInt(fontMetricsInt5);
            out(charSequence, i3, i3, fontMetricsInt5.ascent, fontMetricsInt5.descent, fontMetricsInt5.top, fontMetricsInt5.bottom, i100, f2, f3, null, null, fontMetricsInt5, false, z10, measuredText6.mLevels, measuredText6.mDir, measuredText6.mEasy, i3, z2, z3, null, null, i2, truncateAt, f4, 0.0f, textPaint, false);
        }
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int i2) {
        int i3 = this.mColumns;
        if (i3 < 5) {
            return 0;
        }
        return this.mLines[(i3 * i2) + 4];
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int i2) {
        int i3 = this.mColumns;
        if (i3 < 5) {
            return 0;
        }
        return this.mLines[(i3 * i2) + 3];
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int i2) {
        return (this.mLines[(this.mColumns * i2) + 0] & 536870912) != 0;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return this.mLineCount;
    }

    @Override // android.text.Layout
    public int getLineDescent(int i2) {
        int i3 = this.mLines[(this.mColumns * i2) + 2];
        int i4 = this.mMaximumVisibleLineCount;
        return (i4 <= 0 || i2 < i4 + (-1) || i2 == this.mLineCount) ? i3 : i3 + getBottomPadding();
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int i2) {
        return this.mLineDirections[i2];
    }

    @Override // android.text.Layout
    public int getLineForVertical(int i2) {
        int i3 = this.mLineCount;
        int[] iArr = this.mLines;
        int i4 = -1;
        while (i3 - i4 > 1) {
            int i5 = (i3 + i4) >> 1;
            if (iArr[(this.mColumns * i5) + 1] > i2) {
                i3 = i5;
            } else {
                i4 = i5;
            }
        }
        if (i4 < 0) {
            return 0;
        }
        return i4;
    }

    @Override // android.text.Layout
    public int getLineStart(int i2) {
        return this.mLines[(this.mColumns * i2) + 0] & 536870911;
    }

    @Override // android.text.Layout
    public int getLineTop(int i2) {
        int i3 = this.mLines[(this.mColumns * i2) + 1];
        int i4 = this.mMaximumVisibleLineCount;
        return (i4 <= 0 || i2 < i4 || i2 == this.mLineCount) ? i3 : i3 + getBottomPadding();
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int i2) {
        return this.mLines[(this.mColumns * i2) + 0] >> 30;
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    public void prepare() {
        this.mMeasured = MeasuredText.obtain();
    }

    public StaticLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3, boolean z2) {
        this(charSequence, 0, charSequence.length(), textPaint, i2, alignment, textDirectionHeuristic, f2, f3, z2);
    }

    public StaticLayout(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, Layout.Alignment alignment, float f2, float f3, boolean z2) {
        this(charSequence, i2, i3, textPaint, i4, alignment, f2, f3, z2, null, 0);
    }

    public StaticLayout(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, Layout.Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3, boolean z2) {
        this(charSequence, i2, i3, textPaint, i4, alignment, textDirectionHeuristic, f2, f3, z2, null, 0, Integer.MAX_VALUE);
    }

    public StaticLayout(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, Layout.Alignment alignment, float f2, float f3, boolean z2, TextUtils.TruncateAt truncateAt, int i5) {
        this(charSequence, i2, i3, textPaint, i4, alignment, TextDirectionHeuristics.FIRSTSTRONG_LTR, f2, f3, z2, truncateAt, i5, Integer.MAX_VALUE);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public StaticLayout(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, Layout.Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3, boolean z2, TextUtils.TruncateAt truncateAt, int i5, int i6) {
        CharSequence spannedEllipsizer;
        if (truncateAt == null) {
            spannedEllipsizer = charSequence;
        } else {
            spannedEllipsizer = charSequence instanceof Spanned ? new Layout.SpannedEllipsizer(charSequence) : new Layout.Ellipsizer(charSequence);
        }
        super(spannedEllipsizer, textPaint, i4, alignment, textDirectionHeuristic, f2, f3);
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mFontMetricsInt = new Paint.FontMetricsInt();
        if (truncateAt != null) {
            Layout.Ellipsizer ellipsizer = (Layout.Ellipsizer) getText();
            ellipsizer.mLayout = this;
            ellipsizer.mWidth = i5;
            ellipsizer.mMethod = truncateAt;
            this.mEllipsizedWidth = i5;
            this.mColumns = 5;
        } else {
            this.mColumns = 3;
            this.mEllipsizedWidth = i4;
        }
        this.mLines = new int[a.h(this.mColumns * 2)];
        this.mLineDirections = new Layout.Directions[a.h(this.mColumns * 2)];
        this.mMaximumVisibleLineCount = i6;
        this.mMeasured = MeasuredText.obtain();
        generate(charSequence, i2, i3, textPaint, i4, textDirectionHeuristic, f2, f3, z2, z2, i5, truncateAt);
        this.mMeasured = MeasuredText.recycle(this.mMeasured);
        this.mFontMetricsInt = null;
    }

    public StaticLayout(CharSequence charSequence) {
        super(charSequence, null, 0, null, 0.0f, 0.0f);
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mFontMetricsInt = new Paint.FontMetricsInt();
        this.mColumns = 5;
        this.mLines = new int[a.h(5 * 2)];
        this.mLineDirections = new Layout.Directions[a.h(this.mColumns * 2)];
        this.mMeasured = MeasuredText.obtain();
    }
}
