package android.text;

import android.emoji.EmojiFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.text.method.MetaKeyKeyListener;
import android.text.style.AlignmentSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineBackgroundSpan;
import android.text.style.ParagraphStyle;
import android.text.style.ReplacementSpan;
import android.text.style.TabStopSpan;
import java.util.Arrays;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class Layout {
    public static final Directions DIRS_ALL_LEFT_TO_RIGHT;
    public static final Directions DIRS_ALL_RIGHT_TO_LEFT;
    public static final int DIR_LEFT_TO_RIGHT = 1;
    public static final int DIR_REQUEST_DEFAULT_LTR = 2;
    public static final int DIR_REQUEST_DEFAULT_RTL = -2;
    public static final int DIR_REQUEST_LTR = 1;
    public static final int DIR_REQUEST_RTL = -1;
    public static final int DIR_RIGHT_TO_LEFT = -1;
    public static final char[] ELLIPSIS_NORMAL;
    public static final char[] ELLIPSIS_TWO_DOTS;
    public static final EmojiFactory EMOJI_FACTORY;
    public static final int MAX_EMOJI;
    public static final int MIN_EMOJI;
    private static final ParagraphStyle[] NO_PARA_SPANS = (ParagraphStyle[]) a.d(ParagraphStyle.class);
    public static final int RUN_LENGTH_MASK = 67108863;
    public static final int RUN_LEVEL_MASK = 63;
    public static final int RUN_LEVEL_SHIFT = 26;
    public static final int RUN_RTL_FLAG = 67108864;
    private static final int TAB_INCREMENT = 20;
    private static final Rect sTempRect;
    private Alignment mAlignment;
    private SpanSet<LineBackgroundSpan> mLineBackgroundSpans;
    private TextPaint mPaint;
    private float mSpacingAdd;
    private float mSpacingMult;
    private boolean mSpannedText;
    private CharSequence mText;
    private TextDirectionHeuristic mTextDir;
    private int mWidth;
    public TextPaint mWorkPaint;

    /* JADX INFO: renamed from: android.text.Layout$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            int[] iArr = new int[Alignment.values().length];
            $SwitchMap$android$text$Layout$Alignment = iArr;
            try {
                iArr[Alignment.ALIGN_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Alignment.ALIGN_NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum Alignment {
        ALIGN_NORMAL,
        ALIGN_OPPOSITE,
        ALIGN_CENTER,
        ALIGN_LEFT,
        ALIGN_RIGHT
    }

    public static class Directions {
        public int[] mDirections;

        public Directions(int[] iArr) {
            this.mDirections = iArr;
        }
    }

    public static class Ellipsizer implements CharSequence, GetChars {
        public Layout mLayout;
        public TextUtils.TruncateAt mMethod;
        public CharSequence mText;
        public int mWidth;

        public Ellipsizer(CharSequence charSequence) {
            this.mText = charSequence;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i2) {
            char[] cArrObtain = TextUtils.obtain(1);
            getChars(i2, i2 + 1, cArrObtain, 0);
            char c2 = cArrObtain[0];
            TextUtils.recycle(cArrObtain);
            return c2;
        }

        @Override // android.text.GetChars
        public void getChars(int i2, int i3, char[] cArr, int i4) {
            int lineForOffset = this.mLayout.getLineForOffset(i3);
            TextUtils.getChars(this.mText, i2, i3, cArr, i4);
            for (int lineForOffset2 = this.mLayout.getLineForOffset(i2); lineForOffset2 <= lineForOffset; lineForOffset2++) {
                this.mLayout.ellipsize(i2, i3, lineForOffset2, cArr, i4, this.mMethod);
            }
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mText.length();
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            char[] cArr = new char[i3 - i2];
            getChars(i2, i3, cArr, 0);
            return new String(cArr);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            char[] cArr = new char[length()];
            getChars(0, length(), cArr, 0);
            return new String(cArr);
        }
    }

    public static class SpannedEllipsizer extends Ellipsizer implements Spanned {
        private Spanned mSpanned;

        public SpannedEllipsizer(CharSequence charSequence) {
            super(charSequence);
            this.mSpanned = (Spanned) charSequence;
        }

        @Override // android.text.Spanned
        public int getSpanEnd(Object obj) {
            return this.mSpanned.getSpanEnd(obj);
        }

        @Override // android.text.Spanned
        public int getSpanFlags(Object obj) {
            return this.mSpanned.getSpanFlags(obj);
        }

        @Override // android.text.Spanned
        public int getSpanStart(Object obj) {
            return this.mSpanned.getSpanStart(obj);
        }

        @Override // android.text.Spanned
        public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
            return (T[]) this.mSpanned.getSpans(i2, i3, cls);
        }

        @Override // android.text.Spanned
        public int nextSpanTransition(int i2, int i3, Class cls) {
            return this.mSpanned.nextSpanTransition(i2, i3, cls);
        }

        @Override // android.text.Layout.Ellipsizer, java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            char[] cArr = new char[i3 - i2];
            getChars(i2, i3, cArr, 0);
            SpannableString spannableString = new SpannableString(new String(cArr));
            TextUtils.copySpansFrom(this.mSpanned, i2, i3, Object.class, spannableString, 0);
            return spannableString;
        }
    }

    public static class TabStops {
        private int mIncrement;
        private int mNumStops;
        private int[] mStops;

        public TabStops(int i2, Object[] objArr) {
            reset(i2, objArr);
        }

        public static float nextDefaultStop(float f2, int i2) {
            float f3 = i2;
            return ((int) ((f2 + f3) / f3)) * i2;
        }

        public float nextTab(float f2) {
            int i2 = this.mNumStops;
            if (i2 > 0) {
                int[] iArr = this.mStops;
                for (int i3 = 0; i3 < i2; i3++) {
                    float f3 = iArr[i3];
                    if (f3 > f2) {
                        return f3;
                    }
                }
            }
            return nextDefaultStop(f2, this.mIncrement);
        }

        public void reset(int i2, Object[] objArr) {
            this.mIncrement = i2;
            int i3 = 0;
            if (objArr != null) {
                int[] iArr = this.mStops;
                int i4 = 0;
                for (Object obj : objArr) {
                    if (obj instanceof TabStopSpan) {
                        if (iArr == null) {
                            iArr = new int[10];
                        } else if (i4 == iArr.length) {
                            int[] iArr2 = new int[i4 * 2];
                            for (int i5 = 0; i5 < i4; i5++) {
                                iArr2[i5] = iArr[i5];
                            }
                            iArr = iArr2;
                        }
                        iArr[i4] = ((TabStopSpan) obj).getTabStop();
                        i4++;
                    }
                }
                if (i4 > 1) {
                    Arrays.sort(iArr, 0, i4);
                }
                if (iArr != this.mStops) {
                    this.mStops = iArr;
                }
                i3 = i4;
            }
            this.mNumStops = i3;
        }
    }

    static {
        EmojiFactory emojiFactoryNewAvailableInstance = EmojiFactory.newAvailableInstance();
        EMOJI_FACTORY = emojiFactoryNewAvailableInstance;
        if (emojiFactoryNewAvailableInstance != null) {
            MIN_EMOJI = emojiFactoryNewAvailableInstance.getMinimumAndroidPua();
            MAX_EMOJI = emojiFactoryNewAvailableInstance.getMaximumAndroidPua();
        } else {
            MIN_EMOJI = -1;
            MAX_EMOJI = -1;
        }
        sTempRect = new Rect();
        DIRS_ALL_LEFT_TO_RIGHT = new Directions(new int[]{0, RUN_LENGTH_MASK});
        DIRS_ALL_RIGHT_TO_LEFT = new Directions(new int[]{0, 134217727});
        ELLIPSIS_NORMAL = new char[]{8230};
        ELLIPSIS_TWO_DOTS = new char[]{8229};
    }

    public Layout(CharSequence charSequence, TextPaint textPaint, int i2, Alignment alignment, float f2, float f3) {
        this(charSequence, textPaint, i2, alignment, TextDirectionHeuristics.FIRSTSTRONG_LTR, f2, f3);
    }

    private void addSelection(int i2, int i3, int i4, int i5, int i6, Path path) {
        int iMax;
        int iMin;
        int lineStart = getLineStart(i2);
        int lineEnd = getLineEnd(i2);
        Directions lineDirections = getLineDirections(i2);
        if (lineEnd > lineStart && this.mText.charAt(lineEnd - 1) == '\n') {
            lineEnd--;
        }
        int i7 = 0;
        while (true) {
            int[] iArr = lineDirections.mDirections;
            if (i7 >= iArr.length) {
                return;
            }
            int i8 = iArr[i7] + lineStart;
            int i9 = (iArr[i7 + 1] & RUN_LENGTH_MASK) + i8;
            if (i9 > lineEnd) {
                i9 = lineEnd;
            }
            if (i3 <= i9 && i4 >= i8 && (iMax = Math.max(i3, i8)) != (iMin = Math.min(i4, i9))) {
                float horizontal = getHorizontal(iMax, false, i2, false);
                float horizontal2 = getHorizontal(iMin, true, i2, false);
                path.addRect(Math.min(horizontal, horizontal2), i5, Math.max(horizontal, horizontal2), i6, Path.Direction.CW);
            }
            i7 += 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ellipsize(int i2, int i3, int i4, char[] cArr, int i5, TextUtils.TruncateAt truncateAt) {
        int ellipsisCount = getEllipsisCount(i4);
        if (ellipsisCount == 0) {
            return;
        }
        int ellipsisStart = getEllipsisStart(i4);
        int lineStart = getLineStart(i4);
        int i6 = ellipsisStart;
        while (i6 < ellipsisStart + ellipsisCount) {
            char ellipsisChar = i6 == ellipsisStart ? getEllipsisChar(truncateAt) : (char) 65279;
            int i7 = i6 + lineStart;
            if (i7 >= i2 && i7 < i3) {
                cArr[(i7 + i5) - i2] = ellipsisChar;
            }
            i6++;
        }
    }

    public static float getDesiredWidth(CharSequence charSequence, TextPaint textPaint) {
        return getDesiredWidth(charSequence, 0, charSequence.length(), textPaint);
    }

    private char getEllipsisChar(TextUtils.TruncateAt truncateAt) {
        return truncateAt == TextUtils.TruncateAt.END_SMALL ? ELLIPSIS_TWO_DOTS[0] : ELLIPSIS_NORMAL[0];
    }

    private float getHorizontal(int i2, boolean z2, boolean z3) {
        return getHorizontal(i2, z2, getLineForOffset(i2), z3);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    private float getLineExtent(int i2, boolean z2) {
        TabStops tabStops;
        int lineStart = getLineStart(i2);
        int lineEnd = z2 ? getLineEnd(i2) : getLineVisibleEnd(i2);
        boolean lineContainsTab = getLineContainsTab(i2);
        if (lineContainsTab) {
            CharSequence charSequence = this.mText;
            if (charSequence instanceof Spanned) {
                TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans((Spanned) charSequence, lineStart, lineEnd, TabStopSpan.class);
                if (tabStopSpanArr.length > 0) {
                    tabStops = new TabStops(20, tabStopSpanArr);
                } else {
                    tabStops = null;
                }
            } else {
                tabStops = null;
            }
        } else {
            tabStops = null;
        }
        Directions lineDirections = getLineDirections(i2);
        if (lineDirections == null) {
            return 0.0f;
        }
        int paragraphDirection = getParagraphDirection(i2);
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        float fMetrics = textLineObtain.metrics(null);
        TextLine.recycle(textLineObtain);
        return fMetrics;
    }

    private int getLineStartPos(int i2, int i3, int i4) {
        Alignment paragraphAlignment = getParagraphAlignment(i2);
        int paragraphDirection = getParagraphDirection(i2);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            paragraphAlignment = paragraphDirection == 1 ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
        } else if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
            paragraphAlignment = paragraphDirection == 1 ? Alignment.ALIGN_OPPOSITE : Alignment.ALIGN_NORMAL;
        }
        if (paragraphAlignment == Alignment.ALIGN_NORMAL) {
            return paragraphDirection == 1 ? i3 : i4;
        }
        TabStops tabStops = null;
        if (this.mSpannedText && getLineContainsTab(i2)) {
            Spanned spanned = (Spanned) this.mText;
            int lineStart = getLineStart(i2);
            TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans(spanned, lineStart, spanned.nextSpanTransition(lineStart, spanned.length(), TabStopSpan.class), TabStopSpan.class);
            if (tabStopSpanArr.length > 0) {
                tabStops = new TabStops(20, tabStopSpanArr);
            }
        }
        int lineExtent = (int) getLineExtent(i2, tabStops, false);
        if (paragraphAlignment == Alignment.ALIGN_OPPOSITE) {
            return paragraphDirection == 1 ? i4 - lineExtent : i3 - lineExtent;
        }
        return ((i3 + i4) - (lineExtent & (-2))) >> 1;
    }

    private int getOffsetAtStartOf(int i2) {
        char cCharAt;
        if (i2 == 0) {
            return 0;
        }
        CharSequence charSequence = this.mText;
        char cCharAt2 = charSequence.charAt(i2);
        if (cCharAt2 >= 56320 && cCharAt2 <= 57343 && (cCharAt = charSequence.charAt(i2 - 1)) >= 55296 && cCharAt <= 56319) {
            i2--;
        }
        if (this.mSpannedText) {
            Spanned spanned = (Spanned) charSequence;
            ReplacementSpan[] replacementSpanArr = (ReplacementSpan[]) spanned.getSpans(i2, i2, ReplacementSpan.class);
            for (int i3 = 0; i3 < replacementSpanArr.length; i3++) {
                int spanStart = spanned.getSpanStart(replacementSpanArr[i3]);
                int spanEnd = spanned.getSpanEnd(replacementSpanArr[i3]);
                if (spanStart < i2 && spanEnd > i2) {
                    i2 = spanStart;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004b A[PHI: r1 r2
  0x004b: PHI (r1v1 int) = (r1v0 int), (r1v3 int) binds: [B:20:0x0035, B:22:0x0043] A[DONT_GENERATE, DONT_INLINE]
  0x004b: PHI (r2v1 int) = (r2v0 int), (r2v3 int) binds: [B:20:0x0035, B:22:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    private int getOffsetToLeftRightOf(int i2, boolean z2) {
        int i3;
        int i4;
        int i5;
        int lineForOffset = getLineForOffset(i2);
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        int paragraphDirection = getParagraphDirection(lineForOffset);
        boolean z3 = false;
        if (z2 == (paragraphDirection == -1)) {
            if (i2 == lineEnd) {
                if (lineForOffset >= getLineCount() - 1) {
                    return i2;
                }
                lineForOffset++;
                z3 = true;
            }
        } else if (i2 == lineStart) {
            if (lineForOffset <= 0) {
                return i2;
            }
            lineForOffset--;
            z3 = true;
        }
        if (z3) {
            lineStart = getLineStart(lineForOffset);
            lineEnd = getLineEnd(lineForOffset);
            int paragraphDirection2 = getParagraphDirection(lineForOffset);
            if (paragraphDirection2 != paragraphDirection) {
                z2 = !z2;
                i3 = lineStart;
                i4 = lineEnd;
                i5 = paragraphDirection2;
            } else {
                i3 = lineStart;
                i4 = lineEnd;
                i5 = paragraphDirection;
            }
        } else {
            i3 = lineStart;
            i4 = lineEnd;
            i5 = paragraphDirection;
        }
        Directions lineDirections = getLineDirections(lineForOffset);
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(this.mPaint, this.mText, i3, i4, i5, lineDirections, false, null);
        int offsetToLeftRightOf = i3 + textLineObtain.getOffsetToLeftRightOf(i2 - i3, z2);
        TextLine.recycle(textLineObtain);
        return offsetToLeftRightOf;
    }

    private int getParagraphLeadingMargin(int i2) {
        if (!this.mSpannedText) {
            return 0;
        }
        Spanned spanned = (Spanned) this.mText;
        int lineStart = getLineStart(i2);
        LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) getParagraphSpans(spanned, lineStart, spanned.nextSpanTransition(lineStart, getLineEnd(i2), LeadingMarginSpan.class), LeadingMarginSpan.class);
        if (leadingMarginSpanArr.length == 0) {
            return 0;
        }
        boolean z2 = lineStart == 0 || spanned.charAt(lineStart - 1) == '\n';
        int leadingMargin = 0;
        for (LeadingMarginSpan leadingMarginSpan : leadingMarginSpanArr) {
            leadingMargin += leadingMarginSpan.getLeadingMargin(leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2 ? i2 < getLineForOffset(spanned.getSpanStart(leadingMarginSpan)) + ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan).getLeadingMarginLineCount() : z2);
        }
        return leadingMargin;
    }

    public static <T> T[] getParagraphSpans(Spanned spanned, int i2, int i3, Class<T> cls) {
        return (i2 != i3 || i2 <= 0) ? (T[]) spanned.getSpans(i2, i3, cls) : (T[]) a.d(cls);
    }

    public static float measurePara(TextPaint textPaint, CharSequence charSequence, int i2, int i3) {
        int i4;
        Directions directions;
        boolean z2;
        TabStops tabStops;
        MeasuredText measuredTextObtain = MeasuredText.obtain();
        TextLine textLineObtain = TextLine.obtain();
        try {
            measuredTextObtain.setPara(charSequence, i2, i3, TextDirectionHeuristics.LTR);
            if (measuredTextObtain.mEasy) {
                directions = DIRS_ALL_LEFT_TO_RIGHT;
                i4 = 1;
            } else {
                Directions directions2 = AndroidBidi.directions(measuredTextObtain.mDir, measuredTextObtain.mLevels, 0, measuredTextObtain.mChars, 0, measuredTextObtain.mLen);
                i4 = measuredTextObtain.mDir;
                directions = directions2;
            }
            char[] cArr = measuredTextObtain.mChars;
            int i5 = measuredTextObtain.mLen;
            int i6 = 0;
            while (true) {
                if (i6 >= i5) {
                    z2 = false;
                } else if (cArr[i6] != '\t') {
                    i6++;
                } else {
                    if (charSequence instanceof Spanned) {
                        Spanned spanned = (Spanned) charSequence;
                        TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans(spanned, i2, spanned.nextSpanTransition(i2, i3, TabStopSpan.class), TabStopSpan.class);
                        tabStops = tabStopSpanArr.length > 0 ? new TabStops(20, tabStopSpanArr) : null;
                        z2 = true;
                        break;
                    }
                    z2 = true;
                }
                tabStops = null;
                break;
            }
            textLineObtain.set(textPaint, charSequence, i2, i3, i4, directions, z2, tabStops);
            return textLineObtain.metrics(null);
        } finally {
            TextLine.recycle(textLineObtain);
            MeasuredText.recycle(measuredTextObtain);
        }
    }

    public static float nextTab(CharSequence charSequence, int i2, int i3, float f2, Object[] objArr) {
        boolean z2;
        if (charSequence instanceof Spanned) {
            if (objArr == null) {
                objArr = getParagraphSpans((Spanned) charSequence, i2, i3, TabStopSpan.class);
                z2 = true;
            } else {
                z2 = false;
            }
            float f3 = Float.MAX_VALUE;
            for (int i4 = 0; i4 < objArr.length; i4++) {
                if (z2 || (objArr[i4] instanceof TabStopSpan)) {
                    float tabStop = ((TabStopSpan) objArr[i4]).getTabStop();
                    if (tabStop < f3 && tabStop > f2) {
                        f3 = tabStop;
                    }
                }
            }
            if (f3 != Float.MAX_VALUE) {
                return f3;
            }
        }
        return ((int) ((f2 + 20.0f) / 20.0f)) * 20;
    }

    private boolean primaryIsTrailingPrevious(int i2) {
        int i3;
        int i4;
        int lineForOffset = getLineForOffset(i2);
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        int[] iArr = getLineDirections(lineForOffset).mDirections;
        int i5 = 0;
        while (true) {
            i3 = -1;
            if (i5 >= iArr.length) {
                i4 = -1;
                break;
            }
            int i6 = iArr[i5] + lineStart;
            int i7 = i5 + 1;
            int i8 = (iArr[i7] & RUN_LENGTH_MASK) + i6;
            if (i8 > lineEnd) {
                i8 = lineEnd;
            }
            if (i2 >= i6 && i2 < i8) {
                if (i2 <= i6) {
                    i4 = (iArr[i7] >>> 26) & 63;
                    break;
                }
                return false;
            }
            i5 += 2;
        }
        if (i4 == -1) {
            i4 = getParagraphDirection(lineForOffset) == 1 ? 0 : 1;
        }
        if (i2 != lineStart) {
            int i9 = i2 - 1;
            for (int i10 = 0; i10 < iArr.length; i10 += 2) {
                int i11 = iArr[i10] + lineStart;
                int i12 = i10 + 1;
                int i13 = (iArr[i12] & RUN_LENGTH_MASK) + i11;
                if (i13 > lineEnd) {
                    i13 = lineEnd;
                }
                if (i9 >= i11 && i9 < i13) {
                    i3 = (iArr[i12] >>> 26) & 63;
                    break;
                }
            }
        } else {
            i3 = getParagraphDirection(lineForOffset) == 1 ? 0 : 1;
        }
        return i3 < i4;
    }

    public void draw(Canvas canvas) {
        draw(canvas, null, null, 0);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b3 A[LOOP:1: B:36:0x00b1->B:37:0x00b3, LOOP_END] */
    public void drawBackground(Canvas canvas, Path path, Paint paint, int i2, int i3, int i4) {
        int i5;
        int i6;
        ParagraphStyle[] paragraphStyleArr;
        int i7;
        if (this.mSpannedText) {
            if (this.mLineBackgroundSpans == null) {
                this.mLineBackgroundSpans = new SpanSet<>(LineBackgroundSpan.class);
            }
            Spanned spanned = (Spanned) this.mText;
            int length = spanned.length();
            int i8 = 0;
            this.mLineBackgroundSpans.init(spanned, 0, length);
            if (this.mLineBackgroundSpans.numberOfSpans > 0) {
                int lineTop = getLineTop(i3);
                int lineStart = getLineStart(i3);
                ParagraphStyle[] paragraphStyleArr2 = NO_PARA_SPANS;
                TextPaint textPaint = this.mPaint;
                int i9 = this.mWidth;
                int i10 = i3;
                int i11 = lineTop;
                int i12 = lineStart;
                int i13 = 0;
                int i14 = 0;
                while (i10 <= i4) {
                    int i15 = i10 + 1;
                    int lineStart2 = getLineStart(i15);
                    int lineTop2 = getLineTop(i15);
                    int lineDescent = lineTop2 - getLineDescent(i10);
                    if (i12 >= i13) {
                        int nextTransition = this.mLineBackgroundSpans.getNextTransition(i12, length);
                        if (i12 != lineStart2 || i12 == 0) {
                            i14 = i8;
                            while (true) {
                                SpanSet<LineBackgroundSpan> spanSet = this.mLineBackgroundSpans;
                                i5 = i15;
                                if (i8 >= spanSet.numberOfSpans) {
                                    break;
                                }
                                if (spanSet.spanStarts[i8] < lineStart2 && spanSet.spanEnds[i8] > i12) {
                                    if (i14 == paragraphStyleArr2.length) {
                                        ParagraphStyle[] paragraphStyleArr3 = new ParagraphStyle[a.j(i14 * 2)];
                                        System.arraycopy(paragraphStyleArr2, 0, paragraphStyleArr3, 0, i14);
                                        paragraphStyleArr2 = paragraphStyleArr3;
                                    }
                                    paragraphStyleArr2[i14] = this.mLineBackgroundSpans.spans[i8];
                                    i14++;
                                }
                                i8++;
                                i15 = i5;
                            }
                            i6 = nextTransition;
                        } else {
                            i6 = nextTransition;
                            paragraphStyleArr = paragraphStyleArr2;
                            i5 = i15;
                        }
                        i7 = 0;
                        while (i7 < i8) {
                            int i16 = lineStart2;
                            int i17 = i12;
                            int i18 = i10;
                            ((LineBackgroundSpan) paragraphStyleArr[i7]).drawBackground(canvas, textPaint, 0, i9, i11, lineDescent, lineTop2, spanned, i17, i16, i18);
                            i7++;
                            i5 = i5;
                            lineStart2 = i16;
                            i8 = i8;
                            i12 = i17;
                            i10 = i18;
                            i9 = i9;
                            textPaint = textPaint;
                            length = length;
                        }
                        i11 = lineTop2;
                        i10 = i5;
                        i13 = i6;
                        paragraphStyleArr2 = paragraphStyleArr;
                        i12 = lineStart2;
                        i14 = i8;
                        i8 = 0;
                    } else {
                        i5 = i15;
                        i6 = i13;
                    }
                    i8 = i14;
                    paragraphStyleArr = paragraphStyleArr2;
                    i7 = 0;
                    while (i7 < i8) {
                        int i19 = lineStart2;
                        int i110 = i12;
                        int i111 = i10;
                        ((LineBackgroundSpan) paragraphStyleArr[i7]).drawBackground(canvas, textPaint, 0, i9, i11, lineDescent, lineTop2, spanned, i110, i19, i111);
                        i7++;
                        i5 = i5;
                        lineStart2 = i19;
                        i8 = i8;
                        i12 = i110;
                        i10 = i111;
                        i9 = i9;
                        textPaint = textPaint;
                        length = length;
                    }
                    i11 = lineTop2;
                    i10 = i5;
                    i13 = i6;
                    paragraphStyleArr2 = paragraphStyleArr;
                    i12 = lineStart2;
                    i14 = i8;
                    i8 = 0;
                }
            }
            this.mLineBackgroundSpans.recycle();
        }
        if (path != null) {
            if (i2 != 0) {
                canvas.translate(0.0f, i2);
            }
            canvas.drawPath(path, paint);
            if (i2 != 0) {
                canvas.translate(0.0f, -i2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00af  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:41:0x011d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0159  */
    public void drawText(Canvas canvas, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        CharSequence charSequence;
        TextPaint textPaint;
        Class<ParagraphStyle> cls;
        TabStops tabStops;
        int i8;
        int i9;
        Alignment alignment;
        int i10;
        int i11;
        int i12;
        Alignment alignment2;
        int i13;
        TabStops tabStops2;
        ParagraphStyle[] paragraphStyleArr;
        Alignment alignment3;
        boolean z2;
        boolean z3;
        ParagraphStyle[] paragraphStyleArr2;
        boolean z4;
        int i14;
        int length;
        int i15;
        int leadingMargin;
        int i16;
        int i17;
        int i18;
        int i19;
        CharSequence charSequence2;
        TextPaint textPaint2;
        int i20;
        LeadingMarginSpan leadingMarginSpan;
        boolean z5;
        boolean z6;
        Layout layout = this;
        int i21 = i2;
        Class<ParagraphStyle> cls2 = ParagraphStyle.class;
        int lineTop = layout.getLineTop(i21);
        int lineStart = layout.getLineStart(i21);
        ParagraphStyle[] paragraphStyleArr3 = NO_PARA_SPANS;
        TextPaint textPaint3 = layout.mPaint;
        CharSequence charSequence3 = layout.mText;
        Alignment alignment4 = layout.mAlignment;
        TextLine textLineObtain = TextLine.obtain();
        int i22 = lineTop;
        int i23 = lineStart;
        TabStops tabStops3 = null;
        int i24 = i21;
        int i25 = 0;
        boolean z7 = false;
        while (i24 <= i3) {
            int i26 = i24 + 1;
            int lineStart2 = layout.getLineStart(i26);
            int lineVisibleEnd = layout.getLineVisibleEnd(i24, i23, lineStart2);
            int lineTop2 = layout.getLineTop(i26);
            int lineDescent = lineTop2 - layout.getLineDescent(i24);
            TabStops tabStops4 = tabStops3;
            int paragraphDirection = layout.getParagraphDirection(i24);
            boolean z8 = z7;
            int leadingMargin2 = layout.mWidth;
            if (layout.mSpannedText) {
                Spanned spanned = (Spanned) charSequence3;
                int length2 = charSequence3.length();
                if (i23 != 0) {
                    paragraphStyleArr = paragraphStyleArr3;
                    alignment3 = alignment4;
                    if (charSequence3.charAt(i23 - 1) != '\n') {
                        z2 = false;
                    }
                    if (i23 >= i25 || !(i24 == i21 || z2)) {
                        z3 = true;
                        paragraphStyleArr2 = paragraphStyleArr;
                        z4 = z8;
                        i14 = i25;
                    } else {
                        int iNextSpanTransition = spanned.nextSpanTransition(i23, length2, cls2);
                        ParagraphStyle[] paragraphStyleArr4 = (ParagraphStyle[]) getParagraphSpans(spanned, i23, iNextSpanTransition, cls2);
                        Alignment alignment5 = layout.mAlignment;
                        z3 = true;
                        int length3 = paragraphStyleArr4.length - 1;
                        while (true) {
                            i14 = iNextSpanTransition;
                            if (length3 < 0) {
                                break;
                            }
                            if (paragraphStyleArr4[length3] instanceof AlignmentSpan) {
                                alignment5 = ((AlignmentSpan) paragraphStyleArr4[length3]).getAlignment();
                                break;
                            } else {
                                length3--;
                                iNextSpanTransition = i14;
                            }
                        }
                        paragraphStyleArr2 = paragraphStyleArr4;
                        alignment3 = alignment5;
                        z4 = false;
                    }
                    length = paragraphStyleArr2.length;
                    i15 = 0;
                    leadingMargin = 0;
                    while (i15 < length) {
                        if (paragraphStyleArr2[i15] instanceof LeadingMarginSpan) {
                            leadingMarginSpan = (LeadingMarginSpan) paragraphStyleArr2[i15];
                            i16 = i15;
                            if (leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                                if (i24 < layout.getLineForOffset(spanned.getSpanStart(leadingMarginSpan)) + ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan).getLeadingMarginLineCount()) {
                                    z6 = z3;
                                } else {
                                    z6 = false;
                                }
                                z5 = z6;
                            } else {
                                z5 = z2;
                            }
                            if (paragraphDirection == -1) {
                                i17 = i24;
                                i18 = i23;
                                i20 = paragraphDirection;
                                i19 = lineDescent;
                                charSequence2 = charSequence3;
                                textPaint2 = textPaint3;
                                leadingMarginSpan.drawLeadingMargin(canvas, textPaint3, leadingMargin2, paragraphDirection, i22, lineDescent, lineTop2, charSequence3, i18, lineVisibleEnd, z2, this);
                                leadingMargin2 -= leadingMarginSpan.getLeadingMargin(z5);
                            } else {
                                i17 = i24;
                                i18 = i23;
                                i19 = lineDescent;
                                charSequence2 = charSequence3;
                                textPaint2 = textPaint3;
                                i20 = paragraphDirection;
                                leadingMarginSpan.drawLeadingMargin(canvas, textPaint2, leadingMargin, i20, i22, i19, lineTop2, charSequence2, i18, lineVisibleEnd, z2, this);
                                leadingMargin += leadingMarginSpan.getLeadingMargin(z5);
                            }
                        } else {
                            i16 = i15;
                            length = length;
                            i17 = i24;
                            i18 = i23;
                            i19 = lineDescent;
                            charSequence2 = charSequence3;
                            textPaint2 = textPaint3;
                            i20 = paragraphDirection;
                        }
                        i15 = i16 + 1;
                        paragraphDirection = i20;
                        lineDescent = i19;
                        paragraphStyleArr2 = paragraphStyleArr2;
                        length = length;
                        spanned = spanned;
                        cls2 = cls2;
                        lineStart2 = lineStart2;
                        i26 = i26;
                        i24 = i17;
                        i23 = i18;
                        charSequence3 = charSequence2;
                        textPaint3 = textPaint2;
                        z3 = true;
                        tabStops4 = tabStops4;
                        layout = this;
                    }
                    i4 = lineStart2;
                    i5 = i26;
                    i6 = i23;
                    i7 = lineDescent;
                    charSequence = charSequence3;
                    textPaint = textPaint3;
                    cls = cls2;
                    tabStops = tabStops4;
                    i8 = paragraphDirection;
                    i9 = i24;
                    i25 = i14;
                    paragraphStyleArr3 = paragraphStyleArr2;
                    z7 = z4;
                    alignment = alignment3;
                    i10 = leadingMargin;
                } else {
                    paragraphStyleArr = paragraphStyleArr3;
                    alignment3 = alignment4;
                }
                z2 = true;
                if (i23 >= i25) {
                    z3 = true;
                    paragraphStyleArr2 = paragraphStyleArr;
                    z4 = z8;
                    i14 = i25;
                } else {
                    z3 = true;
                    paragraphStyleArr2 = paragraphStyleArr;
                    z4 = z8;
                    i14 = i25;
                }
                length = paragraphStyleArr2.length;
                i15 = 0;
                leadingMargin = 0;
                while (i15 < length) {
                    if (paragraphStyleArr2[i15] instanceof LeadingMarginSpan) {
                        leadingMarginSpan = (LeadingMarginSpan) paragraphStyleArr2[i15];
                        i16 = i15;
                        if (leadingMarginSpan instanceof LeadingMarginSpan.LeadingMarginSpan2) {
                            if (i24 < layout.getLineForOffset(spanned.getSpanStart(leadingMarginSpan)) + ((LeadingMarginSpan.LeadingMarginSpan2) leadingMarginSpan).getLeadingMarginLineCount()) {
                                z6 = z3;
                            } else {
                                z6 = false;
                            }
                            z5 = z6;
                        } else {
                            z5 = z2;
                        }
                        if (paragraphDirection == -1) {
                            i17 = i24;
                            i18 = i23;
                            i20 = paragraphDirection;
                            i19 = lineDescent;
                            charSequence2 = charSequence3;
                            textPaint2 = textPaint3;
                            leadingMarginSpan.drawLeadingMargin(canvas, textPaint3, leadingMargin2, paragraphDirection, i22, lineDescent, lineTop2, charSequence3, i18, lineVisibleEnd, z2, this);
                            leadingMargin2 -= leadingMarginSpan.getLeadingMargin(z5);
                        } else {
                            i17 = i24;
                            i18 = i23;
                            i19 = lineDescent;
                            charSequence2 = charSequence3;
                            textPaint2 = textPaint3;
                            i20 = paragraphDirection;
                            leadingMarginSpan.drawLeadingMargin(canvas, textPaint2, leadingMargin, i20, i22, i19, lineTop2, charSequence2, i18, lineVisibleEnd, z2, this);
                            leadingMargin += leadingMarginSpan.getLeadingMargin(z5);
                        }
                    } else {
                        i16 = i15;
                        length = length;
                        i17 = i24;
                        i18 = i23;
                        i19 = lineDescent;
                        charSequence2 = charSequence3;
                        textPaint2 = textPaint3;
                        i20 = paragraphDirection;
                    }
                    i15 = i16 + 1;
                    paragraphDirection = i20;
                    lineDescent = i19;
                    paragraphStyleArr2 = paragraphStyleArr2;
                    length = length;
                    spanned = spanned;
                    cls2 = cls2;
                    lineStart2 = lineStart2;
                    i26 = i26;
                    i24 = i17;
                    i23 = i18;
                    charSequence3 = charSequence2;
                    textPaint3 = textPaint2;
                    z3 = true;
                    tabStops4 = tabStops4;
                    layout = this;
                }
                i4 = lineStart2;
                i5 = i26;
                i6 = i23;
                i7 = lineDescent;
                charSequence = charSequence3;
                textPaint = textPaint3;
                cls = cls2;
                tabStops = tabStops4;
                i8 = paragraphDirection;
                i9 = i24;
                i25 = i14;
                paragraphStyleArr3 = paragraphStyleArr2;
                z7 = z4;
                alignment = alignment3;
                i10 = leadingMargin;
            } else {
                Alignment alignment6 = alignment4;
                i4 = lineStart2;
                i5 = i26;
                i6 = i23;
                i7 = lineDescent;
                charSequence = charSequence3;
                textPaint = textPaint3;
                cls = cls2;
                tabStops = tabStops4;
                i8 = paragraphDirection;
                i9 = i24;
                z7 = z8;
                alignment = alignment6;
                i10 = 0;
            }
            boolean lineContainsTab = getLineContainsTab(i9);
            if (lineContainsTab && !z7) {
                if (tabStops == null) {
                    tabStops2 = new TabStops(20, paragraphStyleArr3);
                } else {
                    tabStops.reset(20, paragraphStyleArr3);
                    tabStops2 = tabStops;
                }
                tabStops = tabStops2;
                z7 = true;
            }
            if (alignment == Alignment.ALIGN_LEFT) {
                i11 = i8;
                i12 = 1;
                alignment2 = i11 == 1 ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
            } else {
                i11 = i8;
                i12 = 1;
                if (alignment == Alignment.ALIGN_RIGHT) {
                    alignment2 = i11 == 1 ? Alignment.ALIGN_OPPOSITE : Alignment.ALIGN_NORMAL;
                } else {
                    alignment2 = alignment;
                }
            }
            if (alignment2 != Alignment.ALIGN_NORMAL) {
                int lineExtent = (int) getLineExtent(i9, tabStops, false);
                if (alignment2 == Alignment.ALIGN_OPPOSITE) {
                    i13 = i11 == i12 ? leadingMargin2 - lineExtent : i10 - lineExtent;
                } else {
                    i13 = ((leadingMargin2 + i10) - (lineExtent & (-2))) >> 1;
                }
                i10 = i13;
            } else if (i11 != i12) {
                i10 = leadingMargin2;
            }
            Directions lineDirections = getLineDirections(i9);
            if (lineDirections != DIRS_ALL_LEFT_TO_RIGHT || this.mSpannedText || lineContainsTab) {
                textLineObtain.set(textPaint, charSequence, i6, lineVisibleEnd, i11, lineDirections, lineContainsTab, tabStops);
                textLineObtain.draw(canvas, i10, i22, i7, lineTop2);
            } else {
                canvas.drawText(charSequence, i6, lineVisibleEnd, i10, i7, textPaint);
            }
            alignment4 = alignment;
            tabStops3 = tabStops;
            layout = this;
            i22 = lineTop2;
            cls2 = cls;
            i23 = i4;
            i24 = i5;
            charSequence3 = charSequence;
            textPaint3 = textPaint;
            i21 = i2;
        }
        TextLine.recycle(textLineObtain);
    }

    public final Alignment getAlignment() {
        return this.mAlignment;
    }

    public abstract int getBottomPadding();

    public void getCursorPath(int i2, Path path, CharSequence charSequence) {
        path.reset();
        int lineForOffset = getLineForOffset(i2);
        int lineTop = getLineTop(lineForOffset);
        int lineTop2 = getLineTop(lineForOffset + 1);
        boolean zShouldClampCursor = shouldClampCursor(lineForOffset);
        float primaryHorizontal = getPrimaryHorizontal(i2, zShouldClampCursor) - 0.5f;
        float secondaryHorizontal = isLevelBoundary(i2) ? getSecondaryHorizontal(i2, zShouldClampCursor) - 0.5f : primaryHorizontal;
        int metaState = MetaKeyKeyListener.getMetaState(charSequence, 1) | MetaKeyKeyListener.getMetaState(charSequence, 2048);
        int metaState2 = MetaKeyKeyListener.getMetaState(charSequence, 2);
        int i3 = 0;
        if (metaState != 0 || metaState2 != 0) {
            i3 = (lineTop2 - lineTop) >> 2;
            if (metaState2 != 0) {
                lineTop += i3;
            }
            if (metaState != 0) {
                lineTop2 -= i3;
            }
        }
        if (primaryHorizontal < 0.5f) {
            primaryHorizontal = 0.5f;
        }
        if (secondaryHorizontal < 0.5f) {
            secondaryHorizontal = 0.5f;
        }
        if (Float.compare(primaryHorizontal, secondaryHorizontal) == 0) {
            path.moveTo(primaryHorizontal, lineTop);
            path.lineTo(primaryHorizontal, lineTop2);
        } else {
            path.moveTo(primaryHorizontal, lineTop);
            float f2 = (lineTop + lineTop2) >> 1;
            path.lineTo(primaryHorizontal, f2);
            path.moveTo(secondaryHorizontal, f2);
            path.lineTo(secondaryHorizontal, lineTop2);
        }
        if (metaState == 2) {
            float f3 = lineTop2;
            path.moveTo(secondaryHorizontal, f3);
            float f4 = i3;
            float f5 = lineTop2 + i3;
            path.lineTo(secondaryHorizontal - f4, f5);
            path.lineTo(secondaryHorizontal, f3);
            path.lineTo(secondaryHorizontal + f4, f5);
        } else if (metaState == 1) {
            float f6 = lineTop2;
            path.moveTo(secondaryHorizontal, f6);
            float f7 = i3;
            float f8 = secondaryHorizontal - f7;
            float f9 = lineTop2 + i3;
            path.lineTo(f8, f9);
            float f10 = f9 - 0.5f;
            path.moveTo(f8, f10);
            float f11 = f7 + secondaryHorizontal;
            path.lineTo(f11, f10);
            path.moveTo(f11, f9);
            path.lineTo(secondaryHorizontal, f6);
        }
        if (metaState2 == 2) {
            float f12 = lineTop;
            path.moveTo(primaryHorizontal, f12);
            float f13 = i3;
            float f14 = lineTop - i3;
            path.lineTo(primaryHorizontal - f13, f14);
            path.lineTo(primaryHorizontal, f12);
            path.lineTo(primaryHorizontal + f13, f14);
            return;
        }
        if (metaState2 == 1) {
            float f15 = lineTop;
            path.moveTo(primaryHorizontal, f15);
            float f16 = i3;
            float f17 = primaryHorizontal - f16;
            float f18 = lineTop - i3;
            path.lineTo(f17, f18);
            float f19 = 0.5f + f18;
            path.moveTo(f17, f19);
            float f20 = f16 + primaryHorizontal;
            path.lineTo(f20, f19);
            path.moveTo(f20, f18);
            path.lineTo(primaryHorizontal, f15);
        }
    }

    public abstract int getEllipsisCount(int i2);

    public abstract int getEllipsisStart(int i2);

    public int getEllipsizedWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return getLineTop(getLineCount());
    }

    public final int getLineAscent(int i2) {
        return getLineTop(i2) - (getLineTop(i2 + 1) - getLineDescent(i2));
    }

    public final int getLineBaseline(int i2) {
        return getLineTop(i2 + 1) - getLineDescent(i2);
    }

    public final int getLineBottom(int i2) {
        return getLineTop(i2 + 1);
    }

    public int getLineBounds(int i2, Rect rect) {
        if (rect != null) {
            rect.left = 0;
            rect.top = getLineTop(i2);
            rect.right = this.mWidth;
            rect.bottom = getLineTop(i2 + 1);
        }
        return getLineBaseline(i2);
    }

    public abstract boolean getLineContainsTab(int i2);

    public abstract int getLineCount();

    public abstract int getLineDescent(int i2);

    public abstract Directions getLineDirections(int i2);

    public final int getLineEnd(int i2) {
        return getLineStart(i2 + 1);
    }

    public int getLineForOffset(int i2) {
        int lineCount = getLineCount();
        int i3 = -1;
        while (lineCount - i3 > 1) {
            int i4 = (lineCount + i3) / 2;
            if (getLineStart(i4) > i2) {
                lineCount = i4;
            } else {
                i3 = i4;
            }
        }
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    public int getLineForVertical(int i2) {
        int lineCount = getLineCount();
        int i3 = -1;
        while (lineCount - i3 > 1) {
            int i4 = (lineCount + i3) / 2;
            if (getLineTop(i4) > i2) {
                lineCount = i4;
            } else {
                i3 = i4;
            }
        }
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    public float getLineLeft(int i2) {
        float paragraphRight;
        float lineMax;
        int paragraphDirection = getParagraphDirection(i2);
        Alignment paragraphAlignment = getParagraphAlignment(i2);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            return 0.0f;
        }
        if (paragraphAlignment == Alignment.ALIGN_NORMAL) {
            if (paragraphDirection != -1) {
                return 0.0f;
            }
            paragraphRight = getParagraphRight(i2);
            lineMax = getLineMax(i2);
        } else if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
            paragraphRight = this.mWidth;
            lineMax = getLineMax(i2);
        } else {
            if (paragraphAlignment != Alignment.ALIGN_OPPOSITE) {
                int paragraphLeft = getParagraphLeft(i2);
                return paragraphLeft + (((getParagraphRight(i2) - paragraphLeft) - (((int) getLineMax(i2)) & (-2))) / 2);
            }
            if (paragraphDirection == -1) {
                return 0.0f;
            }
            paragraphRight = this.mWidth;
            lineMax = getLineMax(i2);
        }
        return paragraphRight - lineMax;
    }

    public float getLineMax(int i2) {
        float paragraphLeadingMargin = getParagraphLeadingMargin(i2);
        float lineExtent = getLineExtent(i2, false);
        return paragraphLeadingMargin + lineExtent >= 0.0f ? lineExtent : -lineExtent;
    }

    public long getLineRangeForDraw(Canvas canvas) {
        Rect rect = sTempRect;
        synchronized (rect) {
            if (!canvas.getClipBounds(rect)) {
                return TextUtils.packRangeInLong(0, -1);
            }
            int i2 = rect.top;
            int i3 = rect.bottom;
            int iMax = Math.max(i2, 0);
            int iMin = Math.min(getLineTop(getLineCount()), i3);
            return iMax >= iMin ? TextUtils.packRangeInLong(0, -1) : TextUtils.packRangeInLong(getLineForVertical(iMax), getLineForVertical(iMin));
        }
    }

    public float getLineRight(int i2) {
        float paragraphLeft;
        float lineMax;
        int paragraphDirection = getParagraphDirection(i2);
        Alignment paragraphAlignment = getParagraphAlignment(i2);
        if (paragraphAlignment == Alignment.ALIGN_LEFT) {
            paragraphLeft = getParagraphLeft(i2);
            lineMax = getLineMax(i2);
        } else {
            if (paragraphAlignment != Alignment.ALIGN_NORMAL) {
                if (paragraphAlignment == Alignment.ALIGN_RIGHT) {
                    return this.mWidth;
                }
                if (paragraphAlignment == Alignment.ALIGN_OPPOSITE) {
                    return paragraphDirection == -1 ? getLineMax(i2) : this.mWidth;
                }
                int paragraphLeft2 = getParagraphLeft(i2);
                int paragraphRight = getParagraphRight(i2);
                return paragraphRight - (((paragraphRight - paragraphLeft2) - (((int) getLineMax(i2)) & (-2))) / 2);
            }
            if (paragraphDirection == -1) {
                return this.mWidth;
            }
            paragraphLeft = getParagraphLeft(i2);
            lineMax = getLineMax(i2);
        }
        return paragraphLeft + lineMax;
    }

    public abstract int getLineStart(int i2);

    public abstract int getLineTop(int i2);

    public int getLineVisibleEnd(int i2) {
        return getLineVisibleEnd(i2, getLineStart(i2), getLineStart(i2 + 1));
    }

    public float getLineWidth(int i2) {
        float paragraphLeadingMargin = getParagraphLeadingMargin(i2);
        float lineExtent = getLineExtent(i2, true);
        return paragraphLeadingMargin + lineExtent >= 0.0f ? lineExtent : -lineExtent;
    }

    public int getOffsetForHorizontal(int i2, float f2) {
        int i3 = 1;
        int lineEnd = getLineEnd(i2) - 1;
        int lineStart = getLineStart(i2);
        Directions lineDirections = getLineDirections(i2);
        if (i2 == getLineCount() - 1) {
            lineEnd++;
        }
        float fAbs = Math.abs(getPrimaryHorizontal(lineStart) - f2);
        int i4 = 0;
        int i5 = lineStart;
        while (true) {
            int[] iArr = lineDirections.mDirections;
            if (i4 >= iArr.length) {
                break;
            }
            int i6 = iArr[i4] + lineStart;
            int i7 = i4 + 1;
            int i8 = (iArr[i7] & RUN_LENGTH_MASK) + i6;
            int i9 = (iArr[i7] & 67108864) != 0 ? -1 : i3;
            if (i8 > lineEnd) {
                i8 = lineEnd;
            }
            int i10 = (i8 - 1) + i3;
            int i11 = i6 + 1;
            int i12 = i11 - 1;
            while (i10 - i12 > i3) {
                int i13 = (i10 + i12) / 2;
                float f3 = i9;
                if (getPrimaryHorizontal(getOffsetAtStartOf(i13)) * f3 >= f3 * f2) {
                    i10 = i13;
                } else {
                    i12 = i13;
                }
                i3 = 1;
            }
            if (i12 >= i11) {
                i11 = i12;
            }
            if (i11 < i8) {
                int offsetAtStartOf = getOffsetAtStartOf(i11);
                float fAbs2 = Math.abs(getPrimaryHorizontal(offsetAtStartOf) - f2);
                int offsetAfter = TextUtils.getOffsetAfter(this.mText, offsetAtStartOf);
                if (offsetAfter < i8) {
                    float fAbs3 = Math.abs(getPrimaryHorizontal(offsetAfter) - f2);
                    if (fAbs3 < fAbs2) {
                        offsetAtStartOf = offsetAfter;
                        fAbs2 = fAbs3;
                    }
                }
                if (fAbs2 < fAbs) {
                    i5 = offsetAtStartOf;
                    fAbs = fAbs2;
                }
            }
            float fAbs4 = Math.abs(getPrimaryHorizontal(i6) - f2);
            if (fAbs4 < fAbs) {
                fAbs = fAbs4;
                i5 = i6;
            }
            i4 += 2;
            i3 = 1;
        }
        return Math.abs(getPrimaryHorizontal(lineEnd) - f2) <= fAbs ? lineEnd : i5;
    }

    public int getOffsetToLeftOf(int i2) {
        return getOffsetToLeftRightOf(i2, true);
    }

    public int getOffsetToRightOf(int i2) {
        return getOffsetToLeftRightOf(i2, false);
    }

    public final TextPaint getPaint() {
        return this.mPaint;
    }

    public final Alignment getParagraphAlignment(int i2) {
        AlignmentSpan[] alignmentSpanArr;
        int length;
        Alignment alignment = this.mAlignment;
        return (!this.mSpannedText || (length = (alignmentSpanArr = (AlignmentSpan[]) getParagraphSpans((Spanned) this.mText, getLineStart(i2), getLineEnd(i2), AlignmentSpan.class)).length) <= 0) ? alignment : alignmentSpanArr[length - 1].getAlignment();
    }

    public abstract int getParagraphDirection(int i2);

    public final int getParagraphLeft(int i2) {
        if (getParagraphDirection(i2) == -1 || !this.mSpannedText) {
            return 0;
        }
        return getParagraphLeadingMargin(i2);
    }

    public final int getParagraphRight(int i2) {
        int i3 = this.mWidth;
        return (getParagraphDirection(i2) == 1 || !this.mSpannedText) ? i3 : i3 - getParagraphLeadingMargin(i2);
    }

    public float getPrimaryHorizontal(int i2) {
        return getPrimaryHorizontal(i2, false);
    }

    public float getSecondaryHorizontal(int i2) {
        return getSecondaryHorizontal(i2, false);
    }

    public void getSelectionPath(int i2, int i3, Path path) {
        int i4;
        int i5;
        path.reset();
        if (i2 == i3) {
            return;
        }
        if (i3 < i2) {
            i5 = i2;
            i4 = i3;
        } else {
            i4 = i2;
            i5 = i3;
        }
        int lineForOffset = getLineForOffset(i4);
        int lineForOffset2 = getLineForOffset(i5);
        int lineTop = getLineTop(lineForOffset);
        int lineBottom = getLineBottom(lineForOffset2);
        if (lineForOffset == lineForOffset2) {
            addSelection(lineForOffset, i4, i5, lineTop, lineBottom, path);
            return;
        }
        float f2 = this.mWidth;
        addSelection(lineForOffset, i4, getLineEnd(lineForOffset), lineTop, getLineBottom(lineForOffset), path);
        if (getParagraphDirection(lineForOffset) == -1) {
            path.addRect(getLineLeft(lineForOffset), lineTop, 0.0f, getLineBottom(lineForOffset), Path.Direction.CW);
        } else {
            path.addRect(getLineRight(lineForOffset), lineTop, f2, getLineBottom(lineForOffset), Path.Direction.CW);
        }
        while (true) {
            lineForOffset++;
            if (lineForOffset >= lineForOffset2) {
                break;
            }
            path.addRect(0.0f, getLineTop(lineForOffset), f2, getLineBottom(lineForOffset), Path.Direction.CW);
        }
        int lineTop2 = getLineTop(lineForOffset2);
        int lineBottom2 = getLineBottom(lineForOffset2);
        addSelection(lineForOffset2, getLineStart(lineForOffset2), i5, lineTop2, lineBottom2, path);
        if (getParagraphDirection(lineForOffset2) == -1) {
            path.addRect(f2, lineTop2, getLineRight(lineForOffset2), lineBottom2, Path.Direction.CW);
        } else {
            path.addRect(0.0f, lineTop2, getLineLeft(lineForOffset2), lineBottom2, Path.Direction.CW);
        }
    }

    public final float getSpacingAdd() {
        return this.mSpacingAdd;
    }

    public final float getSpacingMultiplier() {
        return this.mSpacingMult;
    }

    public final CharSequence getText() {
        return this.mText;
    }

    public final TextDirectionHeuristic getTextDirectionHeuristic() {
        return this.mTextDir;
    }

    public abstract int getTopPadding();

    public final int getWidth() {
        return this.mWidth;
    }

    public final void increaseWidthTo(int i2) {
        if (i2 < this.mWidth) {
            throw new RuntimeException("attempted to reduce Layout width");
        }
        this.mWidth = i2;
    }

    public boolean isLevelBoundary(int i2) {
        int lineForOffset = getLineForOffset(i2);
        Directions lineDirections = getLineDirections(lineForOffset);
        if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT || lineDirections == DIRS_ALL_RIGHT_TO_LEFT) {
            return false;
        }
        int[] iArr = lineDirections.mDirections;
        int lineStart = getLineStart(lineForOffset);
        int lineEnd = getLineEnd(lineForOffset);
        if (i2 == lineStart || i2 == lineEnd) {
            return ((iArr[(i2 == lineStart ? 0 : iArr.length + (-2)) + 1] >>> 26) & 63) != (getParagraphDirection(lineForOffset) == 1 ? 0 : 1);
        }
        int i3 = i2 - lineStart;
        for (int i4 = 0; i4 < iArr.length; i4 += 2) {
            if (i3 == iArr[i4]) {
                return true;
            }
        }
        return false;
    }

    public boolean isRtlCharAt(int i2) {
        int lineForOffset = getLineForOffset(i2);
        Directions lineDirections = getLineDirections(lineForOffset);
        if (lineDirections == DIRS_ALL_LEFT_TO_RIGHT) {
            return false;
        }
        if (lineDirections == DIRS_ALL_RIGHT_TO_LEFT) {
            return true;
        }
        int[] iArr = lineDirections.mDirections;
        int lineStart = getLineStart(lineForOffset);
        for (int i3 = 0; i3 < iArr.length; i3 += 2) {
            if (i2 >= (iArr[i3] & RUN_LENGTH_MASK) + lineStart) {
                return (((iArr[i3 + 1] >>> 26) & 63) & 1) != 0;
            }
        }
        return false;
    }

    public final boolean isSpanned() {
        return this.mSpannedText;
    }

    public void replaceWith(CharSequence charSequence, TextPaint textPaint, int i2, Alignment alignment, float f2, float f3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Layout: " + i2 + " < 0");
        }
        this.mText = charSequence;
        this.mPaint = textPaint;
        this.mWidth = i2;
        this.mAlignment = alignment;
        this.mSpacingMult = f2;
        this.mSpacingAdd = f3;
        this.mSpannedText = charSequence instanceof Spanned;
    }

    public boolean shouldClampCursor(int i2) {
        int i3 = AnonymousClass1.$SwitchMap$android$text$Layout$Alignment[getParagraphAlignment(i2).ordinal()];
        if (i3 != 1) {
            return i3 == 2 && getParagraphDirection(i2) > 0;
        }
        return true;
    }

    public Layout(CharSequence charSequence, TextPaint textPaint, int i2, Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3) {
        this.mAlignment = Alignment.ALIGN_NORMAL;
        if (i2 < 0) {
            throw new IllegalArgumentException("Layout: " + i2 + " < 0");
        }
        if (textPaint != null) {
            textPaint.bgColor = 0;
            textPaint.baselineShift = 0;
        }
        this.mText = charSequence;
        this.mPaint = textPaint;
        this.mWorkPaint = new TextPaint();
        this.mWidth = i2;
        this.mAlignment = alignment;
        this.mSpacingMult = f2;
        this.mSpacingAdd = f3;
        this.mSpannedText = charSequence instanceof Spanned;
        this.mTextDir = textDirectionHeuristic;
    }

    public static float getDesiredWidth(CharSequence charSequence, int i2, int i3, TextPaint textPaint) {
        float f2 = 0.0f;
        while (i2 <= i3) {
            int iIndexOf = TextUtils.indexOf(charSequence, '\n', i2, i3);
            if (iIndexOf < 0) {
                iIndexOf = i3;
            }
            float fMeasurePara = measurePara(textPaint, charSequence, i2, iIndexOf);
            if (fMeasurePara > f2) {
                f2 = fMeasurePara;
            }
            i2 = iIndexOf + 1;
        }
        return f2;
    }

    private int getLineVisibleEnd(int i2, int i3, int i4) {
        CharSequence charSequence = this.mText;
        if (i2 == getLineCount() - 1) {
            return i4;
        }
        while (i4 > i3) {
            int i5 = i4 - 1;
            char cCharAt = charSequence.charAt(i5);
            if (cCharAt != '\n') {
                if (cCharAt != ' ' && cCharAt != '\t') {
                    break;
                }
                i4--;
            } else {
                return i5;
            }
        }
        return i4;
    }

    public void draw(Canvas canvas, Path path, Paint paint, int i2) {
        long lineRangeForDraw = getLineRangeForDraw(canvas);
        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lineRangeForDraw);
        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lineRangeForDraw);
        if (iUnpackRangeEndFromLong < 0) {
            return;
        }
        drawBackground(canvas, path, paint, i2, iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
        drawText(canvas, iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
    }

    public float getPrimaryHorizontal(int i2, boolean z2) {
        return getHorizontal(i2, primaryIsTrailingPrevious(i2), z2);
    }

    public float getSecondaryHorizontal(int i2, boolean z2) {
        return getHorizontal(i2, !primaryIsTrailingPrevious(i2), z2);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private float getHorizontal(int i2, boolean z2, int i3, boolean z3) {
        TabStops tabStops;
        int lineStart = getLineStart(i3);
        int lineEnd = getLineEnd(i3);
        int paragraphDirection = getParagraphDirection(i3);
        boolean lineContainsTab = getLineContainsTab(i3);
        Directions lineDirections = getLineDirections(i3);
        if (lineContainsTab) {
            CharSequence charSequence = this.mText;
            if (charSequence instanceof Spanned) {
                TabStopSpan[] tabStopSpanArr = (TabStopSpan[]) getParagraphSpans((Spanned) charSequence, lineStart, lineEnd, TabStopSpan.class);
                if (tabStopSpanArr.length > 0) {
                    tabStops = new TabStops(20, tabStopSpanArr);
                } else {
                    tabStops = null;
                }
            } else {
                tabStops = null;
            }
        } else {
            tabStops = null;
        }
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        float fMeasure = textLineObtain.measure(i2 - lineStart, z2, null);
        TextLine.recycle(textLineObtain);
        if (z3) {
            int i4 = this.mWidth;
            if (fMeasure > i4) {
                fMeasure = i4;
            }
        }
        return getLineStartPos(i3, getParagraphLeft(i3), getParagraphRight(i3)) + fMeasure;
    }

    private float getLineExtent(int i2, TabStops tabStops, boolean z2) {
        int lineStart = getLineStart(i2);
        int lineEnd = z2 ? getLineEnd(i2) : getLineVisibleEnd(i2);
        boolean lineContainsTab = getLineContainsTab(i2);
        Directions lineDirections = getLineDirections(i2);
        int paragraphDirection = getParagraphDirection(i2);
        TextLine textLineObtain = TextLine.obtain();
        textLineObtain.set(this.mPaint, this.mText, lineStart, lineEnd, paragraphDirection, lineDirections, lineContainsTab, tabStops);
        float fMetrics = textLineObtain.metrics(null);
        TextLine.recycle(textLineObtain);
        return fMetrics;
    }
}
