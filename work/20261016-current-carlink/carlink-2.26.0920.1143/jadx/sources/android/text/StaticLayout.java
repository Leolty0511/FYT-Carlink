package android.text;

import android.accessibilityservice.c;
import android.graphics.Paint;
import android.os.LocaleList;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineHeightSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.TabStopSpan;
import android.util.Log;
import android.util.Pools;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class StaticLayout extends Layout {
    private static final char CHAR_NEW_LINE = '\n';
    private static final int COLUMNS_ELLIPSIZE = 6;
    private static final int COLUMNS_NORMAL = 4;
    private static final int DEFAULT_MAX_LINE_HEIGHT = -1;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 5;
    private static final int ELLIPSIS_START = 4;
    private static final double EXTRA_ROUNDING = 0.5d;
    private static final int HYPHEN = 3;
    private static final int HYPHEN_MASK = 255;
    private static final int START = 0;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final int TAB_INCREMENT = 20;
    private static final int TAB_MASK = 536870912;
    static final String TAG = "StaticLayout";
    private static final int TOP = 1;
    private int mBottomPadding;
    private int mColumns;
    private boolean mEllipsized;
    private int mEllipsizedWidth;
    private int[] mLeftIndents;
    private int mLineCount;
    private Layout.Directions[] mLineDirections;
    private int[] mLines;
    private int mMaxLineHeight;
    private int mMaximumVisibleLineCount;
    private int[] mRightIndents;
    private int mTopPadding;

    public static final class Builder {
        private static final Pools.SynchronizedPool<Builder> sPool = new Pools.SynchronizedPool<>(3);
        Layout.Alignment mAlignment;
        int mBreakStrategy;
        TextUtils.TruncateAt mEllipsize;
        int mEllipsizedWidth;
        int mEnd;
        int mHyphenationFrequency;
        boolean mIncludePad;
        int mJustificationMode;
        int[] mLeftIndents;
        LocaleList mLocales;
        int mMaxLines;
        MeasuredText mMeasuredText;
        TextPaint mPaint;
        int[] mRightIndents;
        float mSpacingAdd;
        float mSpacingMult;
        int mStart;
        CharSequence mText;
        TextDirectionHeuristic mTextDir;
        int mWidth;
        Paint.FontMetricsInt mFontMetricsInt = new Paint.FontMetricsInt();
        long mNativePtr = StaticLayout.nNewBuilder();

        private Builder() {
        }

        private long[] getHyphenators(LocaleList localeList) {
            int size = localeList.size();
            long[] jArr = new long[size];
            for (int i2 = 0; i2 < size; i2++) {
                jArr[i2] = Hyphenator.get(localeList.get(i2)).getNativePtr();
            }
            return jArr;
        }

        public static Builder obtain(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4) {
            Builder builderAcquire = sPool.acquire();
            if (builderAcquire == null) {
                builderAcquire = new Builder();
            }
            builderAcquire.mText = charSequence;
            builderAcquire.mStart = i2;
            builderAcquire.mEnd = i3;
            builderAcquire.mPaint = textPaint;
            builderAcquire.mWidth = i4;
            builderAcquire.mAlignment = Layout.Alignment.ALIGN_NORMAL;
            builderAcquire.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            builderAcquire.mSpacingMult = 1.0f;
            builderAcquire.mSpacingAdd = 0.0f;
            builderAcquire.mIncludePad = true;
            builderAcquire.mEllipsizedWidth = i4;
            builderAcquire.mEllipsize = null;
            builderAcquire.mMaxLines = Integer.MAX_VALUE;
            builderAcquire.mBreakStrategy = 0;
            builderAcquire.mHyphenationFrequency = 0;
            builderAcquire.mJustificationMode = 0;
            builderAcquire.mMeasuredText = MeasuredText.obtain();
            return builderAcquire;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void recycle(Builder builder) {
            builder.mPaint = null;
            builder.mText = null;
            MeasuredText.recycle(builder.mMeasuredText);
            builder.mMeasuredText = null;
            builder.mLeftIndents = null;
            builder.mRightIndents = null;
            StaticLayout.nFinishBuilder(builder.mNativePtr);
            sPool.release(builder);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLocales(LocaleList localeList) {
            if (localeList.equals(this.mLocales)) {
                return;
            }
            StaticLayout.nSetLocales(this.mNativePtr, localeList.toLanguageTags(), getHyphenators(localeList));
            this.mLocales = localeList;
        }

        public void addMeasuredRun(int i2, int i3, float[] fArr) {
            StaticLayout.nAddMeasuredRun(this.mNativePtr, i2, i3, fArr);
        }

        public void addReplacementRun(int i2, int i3, float f2) {
            StaticLayout.nAddReplacementRun(this.mNativePtr, i2, i3, f2);
        }

        public float addStyleRun(TextPaint textPaint, int i2, int i3, boolean z2) {
            setLocales(textPaint.getTextLocales());
            return StaticLayout.nAddStyleRun(this.mNativePtr, textPaint.getNativeInstance(), textPaint.mNativeTypeface, i2, i3, z2);
        }

        public StaticLayout build() {
            StaticLayout staticLayout = new StaticLayout(this);
            recycle(this);
            return staticLayout;
        }

        public void finalize() throws Throwable {
            try {
                StaticLayout.nFreeBuilder(this.mNativePtr);
            } finally {
                super.finalize();
            }
        }

        public void finish() {
            StaticLayout.nFinishBuilder(this.mNativePtr);
            this.mText = null;
            this.mPaint = null;
            this.mLeftIndents = null;
            this.mRightIndents = null;
            this.mMeasuredText.finish();
        }

        public Builder setAlignment(Layout.Alignment alignment) {
            this.mAlignment = alignment;
            return this;
        }

        public Builder setBreakStrategy(int i2) {
            this.mBreakStrategy = i2;
            return this;
        }

        public Builder setEllipsize(TextUtils.TruncateAt truncateAt) {
            this.mEllipsize = truncateAt;
            return this;
        }

        public Builder setEllipsizedWidth(int i2) {
            this.mEllipsizedWidth = i2;
            return this;
        }

        public Builder setHyphenationFrequency(int i2) {
            this.mHyphenationFrequency = i2;
            return this;
        }

        public Builder setIncludePad(boolean z2) {
            this.mIncludePad = z2;
            return this;
        }

        public Builder setIndents(int[] iArr, int[] iArr2) {
            this.mLeftIndents = iArr;
            this.mRightIndents = iArr2;
            int length = iArr == null ? 0 : iArr.length;
            int length2 = iArr2 == null ? 0 : iArr2.length;
            int iMax = Math.max(length, length2);
            int[] iArr3 = new int[iMax];
            int i2 = 0;
            while (i2 < iMax) {
                iArr3[i2] = (i2 < length ? iArr[i2] : 0) + (i2 < length2 ? iArr2[i2] : 0);
                i2++;
            }
            StaticLayout.nSetIndents(this.mNativePtr, iArr3);
            return this;
        }

        public Builder setJustificationMode(int i2) {
            this.mJustificationMode = i2;
            return this;
        }

        public Builder setLineSpacing(float f2, float f3) {
            this.mSpacingAdd = f2;
            this.mSpacingMult = f3;
            return this;
        }

        public Builder setMaxLines(int i2) {
            this.mMaxLines = i2;
            return this;
        }

        public Builder setPaint(TextPaint textPaint) {
            this.mPaint = textPaint;
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            return setText(charSequence, 0, charSequence.length());
        }

        public Builder setTextDirection(TextDirectionHeuristic textDirectionHeuristic) {
            this.mTextDir = textDirectionHeuristic;
            return this;
        }

        public Builder setWidth(int i2) {
            this.mWidth = i2;
            if (this.mEllipsize == null) {
                this.mEllipsizedWidth = i2;
            }
            return this;
        }

        public Builder setText(CharSequence charSequence, int i2, int i3) {
            this.mText = charSequence;
            this.mStart = i2;
            this.mEnd = i3;
            return this;
        }
    }

    public static class LineBreaks {
        private static final int INITIAL_SIZE = 16;
        public int[] breaks = new int[16];
        public float[] widths = new float[16];
        public int[] flags = new int[16];
    }

    private void calculateEllipsis(int i2, int i3, float[] fArr, int i4, float f2, TextUtils.TruncateAt truncateAt, int i5, float f3, TextPaint textPaint, boolean z2) {
        int i6;
        float totalInsets = f2 - getTotalInsets(i5);
        int i7 = 0;
        if (f3 <= totalInsets && !z2) {
            int[] iArr = this.mLines;
            int i8 = this.mColumns;
            iArr[(i8 * i5) + 4] = 0;
            iArr[(i8 * i5) + 5] = 0;
            return;
        }
        TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.END_SMALL;
        float fMeasureText = textPaint.measureText(truncateAt == truncateAt2 ? TextUtils.ELLIPSIS_TWO_DOTS : TextUtils.ELLIPSIS_NORMAL, 0, 1);
        int i9 = i3 - i2;
        float f4 = 0.0f;
        if (truncateAt == TextUtils.TruncateAt.START) {
            if (this.mMaximumVisibleLineCount == 1) {
                i6 = i9;
                float f5 = 0.0f;
                while (i6 > 0) {
                    f5 += fArr[((i6 - 1) + i2) - i4];
                    if (f5 + fMeasureText > totalInsets) {
                        while (i6 < i9 && fArr[(i6 + i2) - i4] == 0.0f) {
                            i6++;
                        }
                        break;
                    }
                    i6--;
                }
            } else {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Start Ellipsis only supported with one line");
                }
                i6 = 0;
            }
        } else if (truncateAt == TextUtils.TruncateAt.END || truncateAt == TextUtils.TruncateAt.MARQUEE || truncateAt == truncateAt2) {
            while (i7 < i9) {
                f4 += fArr[(i7 + i2) - i4];
                if (f4 + fMeasureText > totalInsets) {
                    break;
                } else {
                    i7++;
                }
            }
            i6 = i9 - i7;
            if (z2 && i6 == 0 && i9 > 0) {
                i6 = 1;
                i7 = i9 - 1;
            }
        } else if (this.mMaximumVisibleLineCount == 1) {
            float f6 = totalInsets - fMeasureText;
            float f7 = f6 / 2.0f;
            int i10 = i9;
            float f8 = 0.0f;
            while (i10 > 0) {
                float f9 = fArr[((i10 - 1) + i2) - i4] + f8;
                if (f9 > f7) {
                    while (i10 < i9 && fArr[(i10 + i2) - i4] == 0.0f) {
                        i10++;
                    }
                    break;
                }
                i10--;
                f8 = f9;
            }
            float f10 = f6 - f8;
            while (i7 < i10) {
                f4 += fArr[(i7 + i2) - i4];
                if (f4 > f10) {
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
            i6 = 0;
        }
        this.mEllipsized = true;
        int[] iArr2 = this.mLines;
        int i11 = this.mColumns;
        iArr2[(i11 * i5) + 4] = i7;
        iArr2[(i11 * i5) + 5] = i6;
    }

    private float getTotalInsets(int i2) {
        int[] iArr = this.mLeftIndents;
        int i3 = iArr != null ? iArr[Math.min(i2, iArr.length - 1)] : 0;
        int[] iArr2 = this.mRightIndents;
        if (iArr2 != null) {
            i3 += iArr2[Math.min(i2, iArr2.length - 1)];
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nAddMeasuredRun(long j2, int i2, int i3, float[] fArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nAddReplacementRun(long j2, int i2, int i3, float f2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native float nAddStyleRun(long j2, long j3, long j4, int i2, int i3, boolean z2);

    private static native int nComputeLineBreaks(long j2, LineBreaks lineBreaks, int[] iArr, float[] fArr, int[] iArr2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nFinishBuilder(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nFreeBuilder(long j2);

    private static native void nGetWidths(long j2, float[] fArr);

    public static native long nLoadHyphenator(ByteBuffer byteBuffer, int i2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nNewBuilder();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetIndents(long j2, int[] iArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetLocales(long j2, String str, long[] jArr);

    private static native void nSetupParagraph(long j2, char[] cArr, int i2, float f2, int i3, float f3, int[] iArr, int i4, int i5, int i6, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    /* JADX WARN: Type inference failed for: r7v5 */
    private int out(CharSequence charSequence, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, float f3, LineHeightSpan[] lineHeightSpanArr, int[] iArr, Paint.FontMetricsInt fontMetricsInt, int i9, boolean z2, byte[] bArr, int i10, boolean z3, int i11, boolean z4, boolean z5, char[] cArr, float[] fArr, int i12, TextUtils.TruncateAt truncateAt, float f4, float f5, TextPaint textPaint, boolean z6) {
        int[] iArr2;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z7;
        ?? r7;
        int i17;
        int i18 = this.mLineCount;
        int i19 = this.mColumns;
        int i20 = i18 * i19;
        int i21 = i19 + i20 + 1;
        int[] iArr3 = this.mLines;
        boolean z8 = false;
        if (i21 >= iArr3.length) {
            Layout.Directions[] directionsArr = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, GrowingArrayUtils.growSize(i21));
            Layout.Directions[] directionsArr2 = this.mLineDirections;
            System.arraycopy(directionsArr2, 0, directionsArr, 0, directionsArr2.length);
            this.mLineDirections = directionsArr;
            int[] iArr4 = new int[directionsArr.length];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.mLines = iArr4;
            iArr2 = iArr4;
        } else {
            iArr2 = iArr3;
        }
        if (lineHeightSpanArr != null) {
            fontMetricsInt.ascent = i4;
            fontMetricsInt.descent = i5;
            fontMetricsInt.top = i6;
            fontMetricsInt.bottom = i7;
            int i22 = 0;
            while (i22 < lineHeightSpanArr.length) {
                LineHeightSpan lineHeightSpan = lineHeightSpanArr[i22];
                if (lineHeightSpan instanceof LineHeightSpan.WithDensity) {
                    i17 = i22;
                    ((LineHeightSpan.WithDensity) lineHeightSpan).chooseHeight(charSequence, i2, i3, iArr[i22], i8, fontMetricsInt, textPaint);
                } else {
                    i17 = i22;
                    lineHeightSpan.chooseHeight(charSequence, i2, i3, iArr[i17], i8, fontMetricsInt);
                }
                i22 = i17 + 1;
                z8 = z8;
            }
            z7 = z8;
            i13 = fontMetricsInt.ascent;
            i14 = fontMetricsInt.descent;
            i15 = fontMetricsInt.top;
            i16 = fontMetricsInt.bottom;
        } else {
            i13 = i4;
            i14 = i5;
            i15 = i6;
            i16 = i7;
            z7 = false;
        }
        int i23 = i13;
        int i24 = i14;
        int i25 = i15;
        int i26 = i16;
        boolean z9 = i18 == 0 ? true : z7;
        int i27 = i18 + 1;
        int i28 = this.mMaximumVisibleLineCount;
        boolean z10 = i27 == i28 ? true : z7;
        if (truncateAt != null) {
            boolean z11 = (z6 && this.mLineCount + 1 == i28) ? true : z7;
            if ((((!(i28 == 1 && z6) && (!z9 || z6)) || truncateAt == TextUtils.TruncateAt.MARQUEE) && (z9 || ((!z10 && z6) || truncateAt != TextUtils.TruncateAt.END))) ? z7 : true) {
                calculateEllipsis(i2, i3, fArr, i12, f4, truncateAt, i18, f5, textPaint, z11);
            }
        }
        boolean z12 = this.mEllipsized;
        boolean z13 = (z12 || i3 == i11) ? true : z7;
        if (z9) {
            if (z5) {
                this.mTopPadding = i25 - i23;
            }
            if (z4) {
                i23 = i25;
            }
        }
        if (z13) {
            if (z5) {
                this.mBottomPadding = i26 - i24;
            }
            if (z4) {
                i24 = i26;
            }
        }
        if (!z2 || z13) {
            r7 = z7;
        } else {
            double dA = c.a(f2, 1.0f, i24 - i23, f3);
            r7 = dA >= 0.0d ? (int) (dA + EXTRA_ROUNDING) : -((int) ((-dA) + EXTRA_ROUNDING));
        }
        int i29 = i20 + 0;
        iArr2[i29] = i2;
        iArr2[i20 + 1] = i8;
        iArr2[i20 + 2] = i24 + r7;
        if (!z12 && z10) {
            if (!z4) {
                i26 = i24;
            }
            this.mMaxLineHeight = (i26 - i23) + i8;
        }
        int i30 = (i24 - i23) + r7 + i8;
        int i31 = this.mColumns;
        iArr2[i20 + i31 + 0] = i3;
        iArr2[i31 + i20 + 1] = i30;
        iArr2[i29] = iArr2[i29] | (i9 & 536870912);
        iArr2[i20 + 3] = i9;
        iArr2[i29] = iArr2[i29] | (i10 << 30);
        Layout.Directions directions = Layout.DIRS_ALL_LEFT_TO_RIGHT;
        if (z3) {
            this.mLineDirections[i18] = directions;
        } else {
            int i32 = i2 - i12;
            this.mLineDirections[i18] = AndroidBidi.directions(i10, bArr, i32, cArr, i32, i3 - i2);
        }
        this.mLineCount++;
        return i30;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:127:0x0304  */
    /* JADX WARN: Code duplicated, block: B:130:0x0319  */
    /* JADX WARN: Code duplicated, block: B:132:0x0345  */
    /* JADX WARN: Code duplicated, block: B:134:0x0348  */
    /* JADX WARN: Code duplicated, block: B:136:0x034b  */
    /* JADX WARN: Code duplicated, block: B:138:0x034e  */
    /* JADX WARN: Code duplicated, block: B:146:0x0362  */
    /* JADX WARN: Code duplicated, block: B:148:0x0368  */
    /* JADX WARN: Code duplicated, block: B:150:0x036e  */
    /* JADX WARN: Code duplicated, block: B:151:0x0371  */
    /* JADX WARN: Code duplicated, block: B:154:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:155:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:166:0x04e7 A[LOOP:0: B:18:0x006d->B:166:0x04e7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x04e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x044b A[EDGE_INSN: B:193:0x044b->B:162:0x044b BREAK  A[LOOP:8: B:145:0x0360->B:161:0x0415], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0191  */
    /* JADX WARN: Code duplicated, block: B:64:0x0194  */
    /* JADX WARN: Code duplicated, block: B:69:0x01ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x01af  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:90:0x020c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0211  */
    /* JADX WARN: Code duplicated, block: B:93:0x021d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0223  */
    /* JADX WARN: Code duplicated, block: B:98:0x022d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0236  */
    public void generate(Builder builder, boolean z2, boolean z3) {
        TextUtils.TruncateAt truncateAt;
        float f2;
        float f3;
        TextDirectionHeuristic textDirectionHeuristic;
        TextPaint textPaint;
        MeasuredText measuredText;
        CharSequence charSequence;
        float f4;
        Paint.FontMetricsInt fontMetricsInt;
        int i2;
        StaticLayout staticLayout;
        int i3;
        int i4;
        CharSequence charSequence2;
        TextUtils.TruncateAt truncateAt2;
        float f5;
        boolean z4;
        int[] iArr;
        int i5;
        int i6;
        LineHeightSpan[] lineHeightSpanArr;
        int i7;
        boolean z5;
        int[] iArr2;
        boolean z6;
        int[] iArr3;
        int length;
        int[] iArr4;
        int length2;
        int iMax;
        int[] iArr5;
        int i8;
        int[] iArr6;
        int i9;
        int[] iArr7;
        int i10;
        int i11;
        int[] iArr8;
        int[] iArr9;
        int i12;
        int i13;
        char[] cArr;
        int i14;
        LineBreaks lineBreaks;
        Spanned spanned;
        int iNComputeLineBreaks;
        int[] iArr10;
        float[] fArr;
        int[] iArr11;
        int i15;
        TextUtils.TruncateAt truncateAt3;
        TextPaint textPaint2;
        boolean z7;
        MeasuredText measuredText2;
        int i16;
        float[] fArr2;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int[] iArr12;
        int[] iArr13;
        int i26;
        int i27;
        int i28;
        Spanned spanned2;
        LineBreaks lineBreaks2;
        int i29;
        int[] iArr14;
        int i30;
        int i31;
        int i32;
        TextUtils.TruncateAt truncateAt4;
        int i33;
        float[] fArr3;
        int i34;
        boolean z8;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        boolean z9;
        int i43;
        Paint.FontMetricsInt fontMetricsInt2;
        Paint.FontMetricsInt fontMetricsInt3;
        int i44;
        int i45;
        StaticLayout staticLayout2 = this;
        Builder builder2 = builder;
        CharSequence charSequence3 = builder2.mText;
        int i46 = builder2.mStart;
        int i47 = builder2.mEnd;
        TextPaint textPaint3 = builder2.mPaint;
        int i48 = builder2.mWidth;
        TextDirectionHeuristic textDirectionHeuristic2 = builder2.mTextDir;
        float f6 = builder2.mSpacingMult;
        float f7 = builder2.mSpacingAdd;
        float f8 = builder2.mEllipsizedWidth;
        TextUtils.TruncateAt truncateAt5 = builder2.mEllipsize;
        LineBreaks lineBreaks3 = new LineBreaks();
        int[] iArr15 = new int[4];
        int[] iArr16 = new int[16];
        builder2.setLocales(textPaint3.getTextLocales());
        staticLayout2.mLineCount = 0;
        staticLayout2.mEllipsized = false;
        int i49 = i46;
        staticLayout2.mMaxLineHeight = staticLayout2.mMaximumVisibleLineCount < 1 ? 0 : -1;
        boolean z10 = (f6 == 1.0f && f7 == 0.0f) ? false : true;
        Paint.FontMetricsInt fontMetricsInt4 = builder2.mFontMetricsInt;
        MeasuredText measuredText3 = builder2.mMeasuredText;
        int[] iArr17 = iArr15;
        Spanned spanned3 = charSequence3 instanceof Spanned ? (Spanned) charSequence3 : null;
        int[] iArr18 = iArr16;
        Paint.FontMetricsInt fontMetricsInt5 = fontMetricsInt4;
        int i50 = i48;
        int i51 = i49;
        int[] iArrNewUnpaddedIntArray = null;
        int iOut = 0;
        while (true) {
            if (i51 > i47) {
                truncateAt = truncateAt5;
                f2 = f8;
                f3 = f6;
                textDirectionHeuristic = textDirectionHeuristic2;
                textPaint = textPaint3;
                measuredText = measuredText3;
                charSequence = charSequence3;
                f4 = f7;
                fontMetricsInt = fontMetricsInt5;
                StaticLayout staticLayout3 = staticLayout2;
                i2 = i47;
                staticLayout = staticLayout3;
                i3 = i49;
                i4 = iOut;
                break;
            }
            int iIndexOf = TextUtils.indexOf(charSequence3, CHAR_NEW_LINE, i51, i47);
            int i52 = iIndexOf < 0 ? i47 : iIndexOf + 1;
            LineBreaks lineBreaks4 = lineBreaks3;
            if (spanned3 != null) {
                LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) Layout.getParagraphSpans(spanned3, i51, i52, LeadingMarginSpan.class);
                truncateAt2 = truncateAt5;
                f5 = f8;
                f3 = f6;
                int leadingMargin = i50;
                int leadingMargin2 = leadingMargin;
                int iMax2 = 1;
                int i53 = 0;
                while (i53 < leadingMarginSpanArr.length) {
                    LeadingMarginSpan leadingMarginSpan = leadingMarginSpanArr[i53];
                    float f9 = f7;
                    leadingMargin -= leadingMarginSpan.getLeadingMargin(true);
                    LeadingMarginSpan[] leadingMarginSpanArr2 = leadingMarginSpanArr;
                    leadingMargin2 -= leadingMarginSpanArr[i53].getLeadingMargin(false);
                    if (leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                        iMax2 = Math.max(iMax2, ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan).getLeadingMarginLineCount());
                    }
                    i53++;
                    f7 = f9;
                    leadingMarginSpanArr = leadingMarginSpanArr2;
                }
                f4 = f7;
                z4 = false;
                LineHeightSpan[] lineHeightSpanArr2 = (LineHeightSpan[]) Layout.getParagraphSpans(spanned3, i51, i52, LineHeightSpan.class);
                if (lineHeightSpanArr2.length == 0) {
                    iArr = iArrNewUnpaddedIntArray;
                    i7 = iMax2;
                    i5 = leadingMargin;
                    i6 = leadingMargin2;
                    lineHeightSpanArr = null;
                } else {
                    if (iArrNewUnpaddedIntArray == null || iArrNewUnpaddedIntArray.length < lineHeightSpanArr2.length) {
                        iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(lineHeightSpanArr2.length);
                    }
                    for (int i54 = 0; i54 < lineHeightSpanArr2.length; i54++) {
                        int spanStart = spanned3.getSpanStart(lineHeightSpanArr2[i54]);
                        if (spanStart < i51) {
                            iArrNewUnpaddedIntArray[i54] = staticLayout2.getLineTop(staticLayout2.getLineForOffset(spanStart));
                        } else {
                            iArrNewUnpaddedIntArray[i54] = iOut;
                        }
                    }
                    iArr = iArrNewUnpaddedIntArray;
                    i7 = iMax2;
                    lineHeightSpanArr = lineHeightSpanArr2;
                    i5 = leadingMargin;
                    i6 = leadingMargin2;
                }
            } else {
                truncateAt2 = truncateAt5;
                f5 = f8;
                f3 = f6;
                f4 = f7;
                z4 = false;
                iArr = iArrNewUnpaddedIntArray;
                i5 = i50;
                i6 = i5;
                lineHeightSpanArr = null;
                i7 = 1;
            }
            int i55 = i51;
            CharSequence charSequence4 = charSequence3;
            CharSequence charSequence5 = charSequence3;
            Paint.FontMetricsInt fontMetricsInt6 = fontMetricsInt5;
            int i56 = i47;
            int i57 = i55;
            TextUtils.TruncateAt truncateAt6 = truncateAt2;
            TextDirectionHeuristic textDirectionHeuristic3 = textDirectionHeuristic2;
            TextDirectionHeuristic textDirectionHeuristic4 = textDirectionHeuristic2;
            f2 = f5;
            Spanned spanned4 = spanned3;
            measuredText3.setPara(charSequence4, i55, i52, textDirectionHeuristic3, builder);
            char[] cArr2 = measuredText3.mChars;
            float[] fArr4 = measuredText3.mWidths;
            byte[] bArr = measuredText3.mLevels;
            int i58 = measuredText3.mDir;
            boolean z11 = measuredText3.mEasy;
            if (spanned4 != null) {
                TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) Layout.getParagraphSpans(spanned4, i57, i52, TabStopSpan.class);
                z5 = z11;
                if (tabStopSpanArr.length > 0) {
                    int length3 = tabStopSpanArr.length;
                    int[] iArr19 = new int[length3];
                    for (int i59 = 0; i59 < tabStopSpanArr.length; i59++) {
                        iArr19[i59] = tabStopSpanArr[i59].getTabStop();
                    }
                    Arrays.sort(iArr19, 0, length3);
                    iArr2 = iArr19;
                }
                long j2 = builder2.mNativePtr;
                int i60 = i52 - i57;
                float f10 = i5;
                float f11 = i6;
                int i61 = builder2.mBreakStrategy;
                int i62 = builder2.mHyphenationFrequency;
                if (builder2.mJustificationMode != 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                nSetupParagraph(j2, cArr2, i60, f10, i7, f11, iArr2, 20, i61, i62, z6);
                iArr3 = staticLayout2.mLeftIndents;
                if (iArr3 == null || staticLayout2.mRightIndents != null) {
                    if (iArr3 == null) {
                        length = 0;
                    } else {
                        length = iArr3.length;
                    }
                    iArr4 = staticLayout2.mRightIndents;
                    if (iArr4 == null) {
                        length2 = 0;
                    } else {
                        length2 = iArr4.length;
                    }
                    iMax = Math.max(1, Math.max(length, length2) - staticLayout2.mLineCount);
                    iArr5 = new int[iMax];
                    i8 = 0;
                    while (i8 < iMax) {
                        iArr6 = staticLayout2.mLeftIndents;
                        if (iArr6 == null) {
                            i9 = 0;
                        } else {
                            i9 = iArr6[Math.min(staticLayout2.mLineCount + i8, length - 1)];
                        }
                        iArr7 = staticLayout2.mRightIndents;
                        if (iArr7 == null) {
                            i10 = 0;
                        } else {
                            i10 = iArr7[Math.min(staticLayout2.mLineCount + i8, length2 - 1)];
                        }
                        iArr5[i8] = i9 + i10;
                        i8++;
                        iMax = iMax;
                        length = length;
                    }
                    nSetIndents(builder2.mNativePtr, iArr5);
                }
                i11 = i57;
                iArr8 = iArr17;
                iArr9 = iArr18;
                i12 = 0;
                i13 = 0;
                while (i11 < i52) {
                    i44 = i13 * 4;
                    if (i44 >= iArr9.length) {
                        int[] iArr20 = new int[i44 * 2];
                        i45 = 0;
                        System.arraycopy(iArr9, 0, iArr20, 0, i44);
                        iArr9 = iArr20;
                    } else {
                        i45 = 0;
                    }
                    if (i12 >= iArr8.length) {
                        int[] iArr21 = new int[i12 * 2];
                        System.arraycopy(iArr8, i45, iArr21, i45, i12);
                        iArr8 = iArr21;
                    }
                    if (spanned4 == null) {
                        measuredText3.addStyleRun(textPaint3, i52 - i11, fontMetricsInt6);
                        i11 = i52;
                    } else {
                        int iNextSpanTransition = spanned4.nextSpanTransition(i11, i52, MetricAffectingSpan.class);
                        measuredText3.addStyleRun(textPaint3, (MetricAffectingSpan[]) TextUtils.removeEmptySpans((MetricAffectingSpan[]) spanned4.getSpans(i11, iNextSpanTransition, MetricAffectingSpan.class), spanned4, MetricAffectingSpan.class), iNextSpanTransition - i11, fontMetricsInt6);
                        i11 = iNextSpanTransition;
                    }
                    iArr9[i44 + 0] = fontMetricsInt6.top;
                    iArr9[i44 + 1] = fontMetricsInt6.bottom;
                    iArr9[i44 + 2] = fontMetricsInt6.ascent;
                    iArr9[i44 + 3] = fontMetricsInt6.descent;
                    i13++;
                    iArr8[i12] = i11;
                    i12++;
                    cArr2 = cArr2;
                    i57 = i57;
                }
                cArr = cArr2;
                i14 = i57;
                nGetWidths(builder2.mNativePtr, fArr4);
                long j3 = builder2.mNativePtr;
                lineBreaks = lineBreaks4;
                int[] iArr22 = lineBreaks.breaks;
                spanned = spanned4;
                iNComputeLineBreaks = nComputeLineBreaks(j3, lineBreaks, iArr22, lineBreaks.widths, lineBreaks.flags, iArr22.length);
                iArr10 = lineBreaks.breaks;
                fArr = lineBreaks.widths;
                iArr11 = lineBreaks.flags;
                int i63 = staticLayout2.mMaximumVisibleLineCount;
                i15 = i63 - staticLayout2.mLineCount;
                truncateAt3 = truncateAt6;
                textPaint2 = textPaint3;
                if (truncateAt3 != null || (truncateAt3 != TextUtils.TruncateAt.END && (i63 != 1 || truncateAt3 == TextUtils.TruncateAt.MARQUEE))) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                if (i15 > 0 || i15 >= iNComputeLineBreaks || !z7) {
                    measuredText2 = measuredText3;
                    i16 = iNComputeLineBreaks;
                } else {
                    int i64 = i15 - 1;
                    float f12 = 0.0f;
                    int i65 = 0;
                    int i66 = i64;
                    while (i66 < iNComputeLineBreaks) {
                        MeasuredText measuredText4 = measuredText3;
                        if (i66 == iNComputeLineBreaks - 1) {
                            f12 += fArr[i66];
                        } else {
                            for (int i67 = i66 == 0 ? 0 : iArr10[i66 - 1]; i67 < iArr10[i66]; i67++) {
                                f12 += fArr4[i67];
                            }
                        }
                        i65 |= iArr11[i66] & 536870912;
                        i66++;
                        measuredText3 = measuredText4;
                    }
                    measuredText2 = measuredText3;
                    iArr10[i64] = iArr10[iNComputeLineBreaks - 1];
                    fArr[i64] = f12;
                    iArr11[i64] = i65;
                    i16 = i15;
                }
                fArr2 = fArr4;
                i17 = i14;
                i18 = i17;
                i19 = 0;
                i20 = 0;
                i21 = 0;
                i22 = 0;
                i23 = 0;
                i24 = 0;
                i25 = 0;
                while (i17 < i52) {
                    int i68 = i21 + 1;
                    i29 = iArr8[i21];
                    int i69 = i22 * 4;
                    iArr14 = iArr8;
                    i30 = iArr9[i69 + 0];
                    fontMetricsInt6.top = i30;
                    i31 = i52;
                    i32 = iArr9[i69 + 1];
                    fontMetricsInt6.bottom = i32;
                    truncateAt4 = truncateAt3;
                    i33 = iArr9[i69 + 2];
                    fontMetricsInt6.ascent = i33;
                    fArr3 = fArr;
                    i34 = iArr9[i69 + 3];
                    fontMetricsInt6.descent = i34;
                    z8 = true;
                    int i70 = i22 + 1;
                    if (i30 < i23) {
                        i23 = i30;
                    }
                    if (i33 < i24) {
                        i24 = i33;
                    }
                    if (i34 > i19) {
                        i19 = i34;
                    }
                    if (i32 > i20) {
                        i20 = i32;
                    }
                    i35 = i25;
                    while (i35 < i16 && i14 + iArr10[i35] < i17) {
                        i35++;
                    }
                    i36 = i35;
                    i37 = i20;
                    i38 = i24;
                    i39 = i19;
                    while (i36 < i16) {
                        i40 = iArr10[i36];
                        if (i14 + i40 <= i29) {
                            break;
                        }
                        i41 = i14 + i40;
                        i42 = i56;
                        if (i41 < i42) {
                            z9 = z8;
                        } else {
                            z9 = false;
                        }
                        boolean z12 = z5;
                        int[] iArr23 = iArr11;
                        int i71 = i58;
                        float[] fArr5 = fArr3;
                        byte[] bArr2 = bArr;
                        int[] iArr24 = iArr9;
                        float[] fArr6 = fArr2;
                        int[] iArr25 = iArr14;
                        Spanned spanned5 = spanned;
                        TextDirectionHeuristic textDirectionHeuristic5 = textDirectionHeuristic4;
                        int[] iArr26 = iArr10;
                        int i72 = i31;
                        int i73 = i50;
                        i43 = i29;
                        TextPaint textPaint4 = textPaint2;
                        LineBreaks lineBreaks5 = lineBreaks;
                        int i74 = i14;
                        MeasuredText measuredText5 = measuredText2;
                        boolean z13 = z8;
                        int i75 = i49;
                        fontMetricsInt2 = fontMetricsInt6;
                        CharSequence charSequence6 = charSequence5;
                        int i76 = i16;
                        int i77 = i36;
                        iOut = out(charSequence5, i18, i41, i38, i39, i23, i37, iOut, f3, f4, lineHeightSpanArr, iArr, fontMetricsInt2, iArr11[i36], z10, bArr2, i71, z12, i42, z2, z3, cArr, fArr6, i74, truncateAt4, f2, fArr3[i36], textPaint4, z9);
                        if (i41 < i43) {
                            fontMetricsInt3 = fontMetricsInt2;
                            int i78 = fontMetricsInt3.top;
                            int i79 = fontMetricsInt3.bottom;
                            int i80 = fontMetricsInt3.ascent;
                            i39 = fontMetricsInt3.descent;
                            i23 = i78;
                            i37 = i79;
                            i38 = i80;
                        } else {
                            fontMetricsInt3 = fontMetricsInt2;
                            i39 = 0;
                            i38 = 0;
                            i37 = 0;
                            i23 = 0;
                        }
                        i36 = i77 + 1;
                        if (this.mLineCount < this.mMaximumVisibleLineCount && this.mEllipsized) {
                            return;
                        }
                        i29 = i43;
                        i18 = i41;
                        fontMetricsInt6 = fontMetricsInt3;
                        i50 = i73;
                        iArr11 = iArr23;
                        fArr3 = fArr5;
                        iArr14 = iArr25;
                        iArr10 = iArr26;
                        iArr9 = iArr24;
                        textPaint2 = textPaint4;
                        i49 = i75;
                        measuredText2 = measuredText5;
                        i31 = i72;
                        z8 = z13;
                        charSequence5 = charSequence6;
                        i16 = i76;
                        textDirectionHeuristic4 = textDirectionHeuristic5;
                        z5 = z12;
                        bArr = bArr2;
                        spanned = spanned5;
                        i58 = i71;
                        lineBreaks = lineBreaks5;
                        i14 = i74;
                        fArr2 = fArr6;
                        i56 = i42;
                    }
                    int i81 = i36;
                    i17 = i29;
                    i19 = i39;
                    i24 = i38;
                    i20 = i37;
                    fontMetricsInt6 = fontMetricsInt6;
                    i21 = i68;
                    i50 = i50;
                    i22 = i70;
                    iArr11 = iArr11;
                    fArr = fArr3;
                    truncateAt3 = truncateAt4;
                    iArr8 = iArr14;
                    iArr10 = iArr10;
                    iArr9 = iArr9;
                    textPaint2 = textPaint2;
                    i49 = i49;
                    measuredText2 = measuredText2;
                    i52 = i31;
                    charSequence5 = charSequence5;
                    i16 = i16;
                    i25 = i81;
                    textDirectionHeuristic4 = textDirectionHeuristic4;
                    z5 = z5;
                    bArr = bArr;
                    spanned = spanned;
                    i58 = i58;
                    lineBreaks = lineBreaks;
                    i14 = i14;
                    fArr2 = fArr2;
                    i56 = i56;
                }
                staticLayout = this;
                iArr12 = iArr9;
                iArr13 = iArr8;
                i26 = i52;
                fontMetricsInt = fontMetricsInt6;
                truncateAt = truncateAt3;
                textPaint = textPaint2;
                measuredText = measuredText2;
                i27 = i49;
                i28 = i50;
                charSequence = charSequence5;
                spanned2 = spanned;
                i2 = i56;
                lineBreaks2 = lineBreaks;
                textDirectionHeuristic = textDirectionHeuristic4;
                if (i26 == i2) {
                    i4 = iOut;
                    i3 = i27;
                    break;
                }
                i51 = i26;
                fontMetricsInt5 = fontMetricsInt;
                f6 = f3;
                f7 = f4;
                iArrNewUnpaddedIntArray = iArr;
                lineBreaks3 = lineBreaks2;
                textDirectionHeuristic2 = textDirectionHeuristic;
                i50 = i28;
                truncateAt5 = truncateAt;
                iArr17 = iArr13;
                f8 = f2;
                iArr18 = iArr12;
                spanned3 = spanned2;
                textPaint3 = textPaint;
                i49 = i27;
                measuredText3 = measuredText;
                charSequence3 = charSequence;
                builder2 = builder;
                staticLayout2 = staticLayout;
                i47 = i2;
            } else {
                z5 = z11;
            }
            iArr2 = null;
            long j4 = builder2.mNativePtr;
            int i610 = i52 - i57;
            float f13 = i5;
            float f14 = i6;
            int i611 = builder2.mBreakStrategy;
            int i612 = builder2.mHyphenationFrequency;
            if (builder2.mJustificationMode != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            nSetupParagraph(j4, cArr2, i610, f13, i7, f14, iArr2, 20, i611, i612, z6);
            iArr3 = staticLayout2.mLeftIndents;
            if (iArr3 == null) {
                if (iArr3 == null) {
                    length = 0;
                } else {
                    length = iArr3.length;
                }
                iArr4 = staticLayout2.mRightIndents;
                if (iArr4 == null) {
                    length2 = 0;
                } else {
                    length2 = iArr4.length;
                }
                iMax = Math.max(1, Math.max(length, length2) - staticLayout2.mLineCount);
                iArr5 = new int[iMax];
                i8 = 0;
                while (i8 < iMax) {
                    iArr6 = staticLayout2.mLeftIndents;
                    if (iArr6 == null) {
                        i9 = 0;
                    } else {
                        i9 = iArr6[Math.min(staticLayout2.mLineCount + i8, length - 1)];
                    }
                    iArr7 = staticLayout2.mRightIndents;
                    if (iArr7 == null) {
                        i10 = 0;
                    } else {
                        i10 = iArr7[Math.min(staticLayout2.mLineCount + i8, length2 - 1)];
                    }
                    iArr5[i8] = i9 + i10;
                    i8++;
                    iMax = iMax;
                    length = length;
                }
                nSetIndents(builder2.mNativePtr, iArr5);
            } else {
                if (iArr3 == null) {
                    length = 0;
                } else {
                    length = iArr3.length;
                }
                iArr4 = staticLayout2.mRightIndents;
                if (iArr4 == null) {
                    length2 = 0;
                } else {
                    length2 = iArr4.length;
                }
                iMax = Math.max(1, Math.max(length, length2) - staticLayout2.mLineCount);
                iArr5 = new int[iMax];
                i8 = 0;
                while (i8 < iMax) {
                    iArr6 = staticLayout2.mLeftIndents;
                    if (iArr6 == null) {
                        i9 = 0;
                    } else {
                        i9 = iArr6[Math.min(staticLayout2.mLineCount + i8, length - 1)];
                    }
                    iArr7 = staticLayout2.mRightIndents;
                    if (iArr7 == null) {
                        i10 = 0;
                    } else {
                        i10 = iArr7[Math.min(staticLayout2.mLineCount + i8, length2 - 1)];
                    }
                    iArr5[i8] = i9 + i10;
                    i8++;
                    iMax = iMax;
                    length = length;
                }
                nSetIndents(builder2.mNativePtr, iArr5);
            }
            i11 = i57;
            iArr8 = iArr17;
            iArr9 = iArr18;
            i12 = 0;
            i13 = 0;
            while (i11 < i52) {
                i44 = i13 * 4;
                if (i44 >= iArr9.length) {
                    int[] iArr27 = new int[i44 * 2];
                    i45 = 0;
                    System.arraycopy(iArr9, 0, iArr27, 0, i44);
                    iArr9 = iArr27;
                } else {
                    i45 = 0;
                }
                if (i12 >= iArr8.length) {
                    int[] iArr28 = new int[i12 * 2];
                    System.arraycopy(iArr8, i45, iArr28, i45, i12);
                    iArr8 = iArr28;
                }
                if (spanned4 == null) {
                    measuredText3.addStyleRun(textPaint3, i52 - i11, fontMetricsInt6);
                    i11 = i52;
                } else {
                    int iNextSpanTransition2 = spanned4.nextSpanTransition(i11, i52, MetricAffectingSpan.class);
                    measuredText3.addStyleRun(textPaint3, (MetricAffectingSpan[]) TextUtils.removeEmptySpans((MetricAffectingSpan[]) spanned4.getSpans(i11, iNextSpanTransition2, MetricAffectingSpan.class), spanned4, MetricAffectingSpan.class), iNextSpanTransition2 - i11, fontMetricsInt6);
                    i11 = iNextSpanTransition2;
                }
                iArr9[i44 + 0] = fontMetricsInt6.top;
                iArr9[i44 + 1] = fontMetricsInt6.bottom;
                iArr9[i44 + 2] = fontMetricsInt6.ascent;
                iArr9[i44 + 3] = fontMetricsInt6.descent;
                i13++;
                iArr8[i12] = i11;
                i12++;
                cArr2 = cArr2;
                i57 = i57;
            }
            cArr = cArr2;
            i14 = i57;
            nGetWidths(builder2.mNativePtr, fArr4);
            long j5 = builder2.mNativePtr;
            lineBreaks = lineBreaks4;
            int[] iArr29 = lineBreaks.breaks;
            spanned = spanned4;
            iNComputeLineBreaks = nComputeLineBreaks(j5, lineBreaks, iArr29, lineBreaks.widths, lineBreaks.flags, iArr29.length);
            iArr10 = lineBreaks.breaks;
            fArr = lineBreaks.widths;
            iArr11 = lineBreaks.flags;
            int i613 = staticLayout2.mMaximumVisibleLineCount;
            i15 = i613 - staticLayout2.mLineCount;
            truncateAt3 = truncateAt6;
            textPaint2 = textPaint3;
            if (truncateAt3 != null) {
                z7 = false;
            } else {
                z7 = false;
            }
            if (i15 > 0) {
                measuredText2 = measuredText3;
                i16 = iNComputeLineBreaks;
            } else {
                measuredText2 = measuredText3;
                i16 = iNComputeLineBreaks;
            }
            fArr2 = fArr4;
            i17 = i14;
            i18 = i17;
            i19 = 0;
            i20 = 0;
            i21 = 0;
            i22 = 0;
            i23 = 0;
            i24 = 0;
            i25 = 0;
            while (i17 < i52) {
                int i614 = i21 + 1;
                i29 = iArr8[i21];
                int i615 = i22 * 4;
                iArr14 = iArr8;
                i30 = iArr9[i615 + 0];
                fontMetricsInt6.top = i30;
                i31 = i52;
                i32 = iArr9[i615 + 1];
                fontMetricsInt6.bottom = i32;
                truncateAt4 = truncateAt3;
                i33 = iArr9[i615 + 2];
                fontMetricsInt6.ascent = i33;
                fArr3 = fArr;
                i34 = iArr9[i615 + 3];
                fontMetricsInt6.descent = i34;
                z8 = true;
                int i710 = i22 + 1;
                if (i30 < i23) {
                    i23 = i30;
                }
                if (i33 < i24) {
                    i24 = i33;
                }
                if (i34 > i19) {
                    i19 = i34;
                }
                if (i32 > i20) {
                    i20 = i32;
                }
                i35 = i25;
                while (i35 < i16) {
                    i35++;
                }
                i36 = i35;
                i37 = i20;
                i38 = i24;
                i39 = i19;
                while (i36 < i16) {
                    i40 = iArr10[i36];
                    if (i14 + i40 <= i29) {
                        break;
                        break;
                    }
                    i41 = i14 + i40;
                    i42 = i56;
                    if (i41 < i42) {
                        z9 = z8;
                    } else {
                        z9 = false;
                    }
                    boolean z14 = z5;
                    int[] iArr210 = iArr11;
                    int i711 = i58;
                    float[] fArr7 = fArr3;
                    byte[] bArr3 = bArr;
                    int[] iArr211 = iArr9;
                    float[] fArr8 = fArr2;
                    int[] iArr212 = iArr14;
                    Spanned spanned6 = spanned;
                    TextDirectionHeuristic textDirectionHeuristic6 = textDirectionHeuristic4;
                    int[] iArr213 = iArr10;
                    int i712 = i31;
                    int i713 = i50;
                    i43 = i29;
                    TextPaint textPaint5 = textPaint2;
                    LineBreaks lineBreaks6 = lineBreaks;
                    int i714 = i14;
                    MeasuredText measuredText6 = measuredText2;
                    boolean z15 = z8;
                    int i715 = i49;
                    fontMetricsInt2 = fontMetricsInt6;
                    CharSequence charSequence7 = charSequence5;
                    int i716 = i16;
                    int i717 = i36;
                    iOut = out(charSequence5, i18, i41, i38, i39, i23, i37, iOut, f3, f4, lineHeightSpanArr, iArr, fontMetricsInt2, iArr11[i36], z10, bArr3, i711, z14, i42, z2, z3, cArr, fArr8, i714, truncateAt4, f2, fArr3[i36], textPaint5, z9);
                    if (i41 < i43) {
                        fontMetricsInt3 = fontMetricsInt2;
                        int i718 = fontMetricsInt3.top;
                        int i719 = fontMetricsInt3.bottom;
                        int i82 = fontMetricsInt3.ascent;
                        i39 = fontMetricsInt3.descent;
                        i23 = i718;
                        i37 = i719;
                        i38 = i82;
                    } else {
                        fontMetricsInt3 = fontMetricsInt2;
                        i39 = 0;
                        i38 = 0;
                        i37 = 0;
                        i23 = 0;
                    }
                    i36 = i717 + 1;
                    if (this.mLineCount < this.mMaximumVisibleLineCount) {
                    }
                    i29 = i43;
                    i18 = i41;
                    fontMetricsInt6 = fontMetricsInt3;
                    i50 = i713;
                    iArr11 = iArr210;
                    fArr3 = fArr7;
                    iArr14 = iArr212;
                    iArr10 = iArr213;
                    iArr9 = iArr211;
                    textPaint2 = textPaint5;
                    i49 = i715;
                    measuredText2 = measuredText6;
                    i31 = i712;
                    z8 = z15;
                    charSequence5 = charSequence7;
                    i16 = i716;
                    textDirectionHeuristic4 = textDirectionHeuristic6;
                    z5 = z14;
                    bArr = bArr3;
                    spanned = spanned6;
                    i58 = i711;
                    lineBreaks = lineBreaks6;
                    i14 = i714;
                    fArr2 = fArr8;
                    i56 = i42;
                }
                int i83 = i36;
                i17 = i29;
                i19 = i39;
                i24 = i38;
                i20 = i37;
                fontMetricsInt6 = fontMetricsInt6;
                i21 = i614;
                i50 = i50;
                i22 = i710;
                iArr11 = iArr11;
                fArr = fArr3;
                truncateAt3 = truncateAt4;
                iArr8 = iArr14;
                iArr10 = iArr10;
                iArr9 = iArr9;
                textPaint2 = textPaint2;
                i49 = i49;
                measuredText2 = measuredText2;
                i52 = i31;
                charSequence5 = charSequence5;
                i16 = i16;
                i25 = i83;
                textDirectionHeuristic4 = textDirectionHeuristic4;
                z5 = z5;
                bArr = bArr;
                spanned = spanned;
                i58 = i58;
                lineBreaks = lineBreaks;
                i14 = i14;
                fArr2 = fArr2;
                i56 = i56;
            }
            staticLayout = this;
            iArr12 = iArr9;
            iArr13 = iArr8;
            i26 = i52;
            fontMetricsInt = fontMetricsInt6;
            truncateAt = truncateAt3;
            textPaint = textPaint2;
            measuredText = measuredText2;
            i27 = i49;
            i28 = i50;
            charSequence = charSequence5;
            spanned2 = spanned;
            i2 = i56;
            lineBreaks2 = lineBreaks;
            textDirectionHeuristic = textDirectionHeuristic4;
            if (i26 == i2) {
                i4 = iOut;
                i3 = i27;
                break;
            }
            i51 = i26;
            fontMetricsInt5 = fontMetricsInt;
            f6 = f3;
            f7 = f4;
            iArrNewUnpaddedIntArray = iArr;
            lineBreaks3 = lineBreaks2;
            textDirectionHeuristic2 = textDirectionHeuristic;
            i50 = i28;
            truncateAt5 = truncateAt;
            iArr17 = iArr13;
            f8 = f2;
            iArr18 = iArr12;
            spanned3 = spanned2;
            textPaint3 = textPaint;
            i49 = i27;
            measuredText3 = measuredText;
            charSequence3 = charSequence;
            builder2 = builder;
            staticLayout2 = staticLayout;
            i47 = i2;
        }
        if (i2 != i3) {
            charSequence2 = charSequence;
            if (charSequence2.charAt(i2 - 1) != '\n') {
                return;
            }
        } else {
            charSequence2 = charSequence;
        }
        if (staticLayout.mLineCount < staticLayout.mMaximumVisibleLineCount) {
            CharSequence charSequence8 = charSequence2;
            measuredText.setPara(charSequence8, i2, i2, textDirectionHeuristic, builder);
            TextPaint textPaint6 = textPaint;
            textPaint6.getFontMetricsInt(fontMetricsInt);
            MeasuredText measuredText7 = measuredText;
            out(charSequence8, i2, i2, fontMetricsInt.ascent, fontMetricsInt.descent, fontMetricsInt.top, fontMetricsInt.bottom, i4, f3, f4, null, null, fontMetricsInt, 0, z10, measuredText7.mLevels, measuredText7.mDir, measuredText7.mEasy, i2, z2, z3, null, null, i3, truncateAt, f2, 0.0f, textPaint6, false);
        }
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int i2) {
        int i3 = this.mColumns;
        if (i3 < 6) {
            return 0;
        }
        return this.mLines[(i3 * i2) + 5];
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int i2) {
        int i3 = this.mColumns;
        if (i3 < 6) {
            return 0;
        }
        return this.mLines[(i3 * i2) + 4];
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public int getHeight(boolean z2) {
        int i2;
        if (z2 && this.mLineCount >= this.mMaximumVisibleLineCount && this.mMaxLineHeight == -1 && Log.isLoggable(TAG, 5)) {
            StringBuilder sb = new StringBuilder("maxLineHeight should not be -1.  maxLines:");
            sb.append(this.mMaximumVisibleLineCount);
            sb.append(" lineCount:");
            c.A(sb, this.mLineCount, TAG);
        }
        return (!z2 || this.mLineCount < this.mMaximumVisibleLineCount || (i2 = this.mMaxLineHeight) == -1) ? super.getHeight() : i2;
    }

    @Override // android.text.Layout
    public int getHyphen(int i2) {
        return this.mLines[(this.mColumns * i2) + 3] & 255;
    }

    @Override // android.text.Layout
    public int getIndentAdjust(int i2, Layout.Alignment alignment) {
        if (alignment == Layout.Alignment.ALIGN_LEFT) {
            int[] iArr = this.mLeftIndents;
            if (iArr == null) {
                return 0;
            }
            return iArr[Math.min(i2, iArr.length - 1)];
        }
        if (alignment == Layout.Alignment.ALIGN_RIGHT) {
            int[] iArr2 = this.mRightIndents;
            if (iArr2 == null) {
                return 0;
            }
            return -iArr2[Math.min(i2, iArr2.length - 1)];
        }
        if (alignment != Layout.Alignment.ALIGN_CENTER) {
            throw new AssertionError("unhandled alignment " + alignment);
        }
        int[] iArr3 = this.mLeftIndents;
        int i3 = iArr3 != null ? iArr3[Math.min(i2, iArr3.length - 1)] : 0;
        int[] iArr4 = this.mRightIndents;
        return (i3 - (iArr4 != null ? iArr4[Math.min(i2, iArr4.length - 1)] : 0)) >> 1;
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
        return this.mLines[(this.mColumns * i2) + 2];
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
        return this.mLines[(this.mColumns * i2) + 1];
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int i2) {
        return this.mLines[(this.mColumns * i2) + 0] >> 30;
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    public StaticLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, boolean z2) {
        this(charSequence, 0, charSequence.length(), textPaint, i2, alignment, f2, f3, z2);
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
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        Builder maxLines = Builder.obtain(charSequence, i2, i3, textPaint, i4).setAlignment(alignment).setTextDirection(textDirectionHeuristic).setLineSpacing(f3, f2).setIncludePad(z2).setEllipsizedWidth(i5).setEllipsize(truncateAt).setMaxLines(i6);
        if (truncateAt != null) {
            Layout.Ellipsizer ellipsizer = (Layout.Ellipsizer) getText();
            ellipsizer.mLayout = this;
            ellipsizer.mWidth = i5;
            ellipsizer.mMethod = truncateAt;
            this.mEllipsizedWidth = i5;
            this.mColumns = 6;
        } else {
            this.mColumns = 4;
            this.mEllipsizedWidth = i4;
        }
        Layout.Directions[] directionsArr = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, this.mColumns * 2);
        this.mLineDirections = directionsArr;
        this.mLines = new int[directionsArr.length];
        this.mMaximumVisibleLineCount = i6;
        boolean z3 = maxLines.mIncludePad;
        generate(maxLines, z3, z3);
        Builder.recycle(maxLines);
    }

    public StaticLayout(CharSequence charSequence) {
        super(charSequence, null, 0, null, 0.0f, 0.0f);
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        this.mColumns = 6;
        Layout.Directions[] directionsArr = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, 6 * 2);
        this.mLineDirections = directionsArr;
        this.mLines = new int[directionsArr.length];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private StaticLayout(Builder builder) {
        CharSequence spannedEllipsizer;
        if (builder.mEllipsize == null) {
            spannedEllipsizer = builder.mText;
        } else {
            CharSequence charSequence = builder.mText;
            spannedEllipsizer = charSequence instanceof Spanned ? new Layout.SpannedEllipsizer(charSequence) : new Layout.Ellipsizer(charSequence);
        }
        super(spannedEllipsizer, builder.mPaint, builder.mWidth, builder.mAlignment, builder.mSpacingMult, builder.mSpacingAdd);
        this.mMaxLineHeight = -1;
        this.mMaximumVisibleLineCount = Integer.MAX_VALUE;
        if (builder.mEllipsize != null) {
            Layout.Ellipsizer ellipsizer = (Layout.Ellipsizer) getText();
            ellipsizer.mLayout = this;
            int i2 = builder.mEllipsizedWidth;
            ellipsizer.mWidth = i2;
            ellipsizer.mMethod = builder.mEllipsize;
            this.mEllipsizedWidth = i2;
            this.mColumns = 6;
        } else {
            this.mColumns = 4;
            this.mEllipsizedWidth = builder.mWidth;
        }
        Layout.Directions[] directionsArr = (Layout.Directions[]) ArrayUtils.newUnpaddedArray(Layout.Directions.class, this.mColumns * 2);
        this.mLineDirections = directionsArr;
        this.mLines = new int[directionsArr.length];
        this.mMaximumVisibleLineCount = builder.mMaxLines;
        this.mLeftIndents = builder.mLeftIndents;
        this.mRightIndents = builder.mRightIndents;
        setJustificationMode(builder.mJustificationMode);
        boolean z2 = builder.mIncludePad;
        generate(builder, z2, z2);
    }
}
