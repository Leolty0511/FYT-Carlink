package android.text;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.style.ReplacementSpan;
import android.text.style.UpdateLayout;
import android.text.style.WrapTogetherSpan;
import android.util.ArraySet;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicLayout extends Layout {
    private static final int BLOCK_MINIMUM_CHARACTER_LENGTH = 400;
    private static final int COLUMNS_ELLIPSIZE = 6;
    private static final int COLUMNS_NORMAL = 4;
    private static final int DESCENT = 2;
    private static final int DIR = 0;
    private static final int DIR_SHIFT = 30;
    private static final int ELLIPSIS_COUNT = 5;
    private static final int ELLIPSIS_START = 4;
    private static final int ELLIPSIS_UNDEFINED = Integer.MIN_VALUE;
    private static final int HYPHEN = 3;
    private static final int HYPHEN_MASK = 255;
    public static final int INVALID_BLOCK_INDEX = -1;
    private static final int MAY_PROTRUDE_FROM_TOP_OR_BOTTOM = 3;
    private static final int MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK = 256;
    private static final int PRIORITY = 128;
    private static final int START = 0;
    private static final int START_MASK = 536870911;
    private static final int TAB = 0;
    private static final int TAB_MASK = 536870912;
    private static final int TOP = 1;
    private static StaticLayout.Builder sBuilder;
    private static final Object[] sLock = new Object[0];
    private static StaticLayout sStaticLayout;
    private CharSequence mBase;
    private int[] mBlockEndLines;
    private int[] mBlockIndices;
    private ArraySet<Integer> mBlocksAlwaysNeedToBeRedrawn;
    private int mBottomPadding;
    private int mBreakStrategy;
    private CharSequence mDisplay;
    private boolean mEllipsize;
    private TextUtils.TruncateAt mEllipsizeAt;
    private int mEllipsizedWidth;
    private int mHyphenationFrequency;
    private boolean mIncludePad;
    private int mIndexFirstChangedBlock;
    private PackedIntVector mInts;
    private int mJustificationMode;
    private int mNumberOfBlocks;
    private PackedObjectVector<Layout.Directions> mObjects;
    private Rect mTempRect;
    private int mTopPadding;
    private ChangeWatcher mWatcher;

    public static class ChangeWatcher implements TextWatcher, SpanWatcher {
        private WeakReference<DynamicLayout> mLayout;

        public ChangeWatcher(DynamicLayout dynamicLayout) {
            this.mLayout = new WeakReference<>(dynamicLayout);
        }

        private void reflow(CharSequence charSequence, int i2, int i3, int i4) {
            DynamicLayout dynamicLayout = this.mLayout.get();
            if (dynamicLayout != null) {
                dynamicLayout.reflow(charSequence, i2, i3, i4);
            } else if (charSequence instanceof Spannable) {
                ((Spannable) charSequence).removeSpan(this);
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
            if (obj instanceof UpdateLayout) {
                int i4 = i3 - i2;
                reflow(spannable, i2, i4, i4);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
            if (obj instanceof UpdateLayout) {
                int i6 = i3 - i2;
                reflow(spannable, i2, i6, i6);
                int i7 = i5 - i4;
                reflow(spannable, i4, i7, i7);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
            if (obj instanceof UpdateLayout) {
                int i4 = i3 - i2;
                reflow(spannable, i2, i4, i4);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            reflow(charSequence, i2, i3, i4);
        }
    }

    public DynamicLayout(CharSequence charSequence, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, boolean z2) {
        this(charSequence, charSequence, textPaint, i2, alignment, f2, f3, z2);
    }

    private void addBlockAtOffset(int i2) {
        int lineForOffset = getLineForOffset(i2);
        int[] iArr = this.mBlockEndLines;
        if (iArr == null) {
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(1);
            this.mBlockEndLines = iArrNewUnpaddedIntArray;
            int i3 = this.mNumberOfBlocks;
            iArrNewUnpaddedIntArray[i3] = lineForOffset;
            updateAlwaysNeedsToBeRedrawn(i3);
            this.mNumberOfBlocks++;
            return;
        }
        int i4 = this.mNumberOfBlocks;
        if (lineForOffset > iArr[i4 - 1]) {
            this.mBlockEndLines = GrowingArrayUtils.append(iArr, i4, lineForOffset);
            updateAlwaysNeedsToBeRedrawn(this.mNumberOfBlocks);
            this.mNumberOfBlocks++;
        }
    }

    private boolean contentMayProtrudeFromLineTopOrBottom(CharSequence charSequence, int i2, int i3) {
        if ((charSequence instanceof Spanned) && ((ReplacementSpan[]) ((Spanned) charSequence).getSpans(i2, i3, ReplacementSpan.class)).length > 0) {
            return true;
        }
        TextPaint paint = getPaint();
        paint.getTextBounds(charSequence, i2, i3, this.mTempRect);
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        Rect rect = this.mTempRect;
        return rect.top < fontMetricsInt.top || rect.bottom > fontMetricsInt.bottom;
    }

    private void createBlocks() {
        this.mNumberOfBlocks = 0;
        CharSequence charSequence = this.mDisplay;
        int i2 = 400;
        while (true) {
            int iIndexOf = TextUtils.indexOf(charSequence, '\n', i2);
            if (iIndexOf < 0) {
                break;
            }
            addBlockAtOffset(iIndexOf);
            i2 = iIndexOf + 400;
        }
        addBlockAtOffset(charSequence.length());
        this.mBlockIndices = new int[this.mBlockEndLines.length];
        for (int i3 = 0; i3 < this.mBlockEndLines.length; i3++) {
            this.mBlockIndices[i3] = -1;
        }
    }

    private boolean getContentMayProtrudeFromTopOrBottom(int i2) {
        return (this.mInts.getValue(i2, 3) & 256) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reflow(CharSequence charSequence, int i2, int i3, int i4) {
        StaticLayout staticLayout;
        StaticLayout.Builder builderObtain;
        int topPadding;
        int bottomPadding;
        int[] iArr;
        boolean z2;
        if (charSequence != this.mBase) {
            return;
        }
        CharSequence charSequence2 = this.mDisplay;
        int length = charSequence2.length();
        int iLastIndexOf = TextUtils.lastIndexOf(charSequence2, '\n', i2 - 1);
        int i5 = i2 - (iLastIndexOf < 0 ? 0 : iLastIndexOf + 1);
        int i6 = i3 + i5;
        int i7 = i4 + i5;
        int i8 = i2 - i5;
        int i9 = i8 + i7;
        int iIndexOf = TextUtils.indexOf(charSequence2, '\n', i9);
        int i10 = (iIndexOf < 0 ? length : iIndexOf + 1) - i9;
        int i11 = i6 + i10;
        int i12 = i7 + i10;
        if (charSequence2 instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence2;
            do {
                Object[] spans = spanned.getSpans(i8, i8 + i12, WrapTogetherSpan.class);
                z2 = false;
                for (int i13 = 0; i13 < spans.length; i13++) {
                    int spanStart = spanned.getSpanStart(spans[i13]);
                    int spanEnd = spanned.getSpanEnd(spans[i13]);
                    if (spanStart < i8) {
                        int i14 = i8 - spanStart;
                        i11 += i14;
                        i12 += i14;
                        i8 -= i14;
                        z2 = true;
                    }
                    int i15 = i8 + i12;
                    if (spanEnd > i15) {
                        int i16 = spanEnd - i15;
                        i11 += i16;
                        i12 += i16;
                        z2 = true;
                    }
                }
            } while (z2);
        }
        int lineForOffset = getLineForOffset(i8);
        int lineTop = getLineTop(lineForOffset);
        int lineForOffset2 = getLineForOffset(i8 + i11);
        int i17 = i8 + i12;
        if (i17 == length) {
            lineForOffset2 = getLineCount();
        }
        int lineTop2 = getLineTop(lineForOffset2);
        boolean z3 = lineForOffset2 == getLineCount();
        synchronized (sLock) {
            staticLayout = sStaticLayout;
            builderObtain = sBuilder;
            sStaticLayout = null;
            sBuilder = null;
        }
        if (staticLayout == null) {
            staticLayout = new StaticLayout((CharSequence) null);
            builderObtain = StaticLayout.Builder.obtain(charSequence2, i8, i17, getPaint(), getWidth());
        }
        StaticLayout.Builder builder = builderObtain;
        builder.setText(charSequence2, i8, i17).setPaint(getPaint()).setWidth(getWidth()).setTextDirection(getTextDirectionHeuristic()).setLineSpacing(getSpacingAdd(), getSpacingMultiplier()).setEllipsizedWidth(this.mEllipsizedWidth).setEllipsize(this.mEllipsizeAt).setBreakStrategy(this.mBreakStrategy).setHyphenationFrequency(this.mHyphenationFrequency).setJustificationMode(this.mJustificationMode);
        staticLayout.generate(builder, false, true);
        int lineCount = staticLayout.getLineCount();
        if (i17 != length && staticLayout.getLineStart(lineCount - 1) == i17) {
            lineCount--;
        }
        int i18 = lineForOffset2 - lineForOffset;
        this.mInts.deleteAt(lineForOffset, i18);
        this.mObjects.deleteAt(lineForOffset, i18);
        int lineTop3 = staticLayout.getLineTop(lineCount);
        if (this.mIncludePad && lineForOffset == 0) {
            topPadding = staticLayout.getTopPadding();
            this.mTopPadding = topPadding;
            lineTop3 -= topPadding;
        } else {
            topPadding = 0;
        }
        if (this.mIncludePad && z3) {
            bottomPadding = staticLayout.getBottomPadding();
            this.mBottomPadding = bottomPadding;
            lineTop3 += bottomPadding;
        } else {
            bottomPadding = 0;
        }
        this.mInts.adjustValuesBelow(lineForOffset, 0, i12 - i11);
        this.mInts.adjustValuesBelow(lineForOffset, 1, (lineTop - lineTop2) + lineTop3);
        if (this.mEllipsize) {
            iArr = new int[6];
            iArr[4] = Integer.MIN_VALUE;
        } else {
            iArr = new int[4];
        }
        Layout.Directions[] directionsArr = new Layout.Directions[1];
        int i19 = 0;
        while (i19 < lineCount) {
            int lineStart = staticLayout.getLineStart(i19);
            iArr[0] = lineStart;
            int paragraphDirection = lineStart | (staticLayout.getParagraphDirection(i19) << 30);
            iArr[0] = paragraphDirection;
            iArr[0] = paragraphDirection | (staticLayout.getLineContainsTab(i19) ? 536870912 : 0);
            int lineTop4 = staticLayout.getLineTop(i19) + lineTop;
            if (i19 > 0) {
                lineTop4 -= topPadding;
            }
            iArr[1] = lineTop4;
            int lineDescent = staticLayout.getLineDescent(i19);
            int i20 = lineCount - 1;
            if (i19 == i20) {
                lineDescent += bottomPadding;
            }
            iArr[2] = lineDescent;
            directionsArr[0] = staticLayout.getLineDirections(i19);
            int lineStart2 = i19 == i20 ? i17 : staticLayout.getLineStart(i19 + 1);
            int hyphen = staticLayout.getHyphen(i19) & 255;
            iArr[3] = hyphen;
            iArr[3] = hyphen | (contentMayProtrudeFromLineTopOrBottom(charSequence2, lineStart, lineStart2) ? 256 : 0);
            if (this.mEllipsize) {
                iArr[4] = staticLayout.getEllipsisStart(i19);
                iArr[5] = staticLayout.getEllipsisCount(i19);
            }
            int i21 = lineForOffset + i19;
            this.mInts.insertAt(i21, iArr);
            this.mObjects.insertAt(i21, directionsArr);
            i19++;
            topPadding = topPadding;
        }
        updateBlocks(lineForOffset, lineForOffset2 - 1, lineCount);
        builder.finish();
        synchronized (sLock) {
            sStaticLayout = staticLayout;
            sBuilder = builder;
        }
    }

    private void updateAlwaysNeedsToBeRedrawn(int i2) {
        int i3 = this.mBlockEndLines[i2];
        for (int i4 = i2 == 0 ? 0 : this.mBlockEndLines[i2 - 1] + 1; i4 <= i3; i4++) {
            if (getContentMayProtrudeFromTopOrBottom(i4)) {
                if (this.mBlocksAlwaysNeedToBeRedrawn == null) {
                    this.mBlocksAlwaysNeedToBeRedrawn = new ArraySet<>();
                }
                this.mBlocksAlwaysNeedToBeRedrawn.add(Integer.valueOf(i2));
                return;
            }
        }
        ArraySet<Integer> arraySet = this.mBlocksAlwaysNeedToBeRedrawn;
        if (arraySet != null) {
            arraySet.remove(Integer.valueOf(i2));
        }
    }

    public int[] getBlockEndLines() {
        return this.mBlockEndLines;
    }

    public int getBlockIndex(int i2) {
        return this.mBlockIndices[i2];
    }

    public int[] getBlockIndices() {
        return this.mBlockIndices;
    }

    public ArraySet<Integer> getBlocksAlwaysNeedToBeRedrawn() {
        return this.mBlocksAlwaysNeedToBeRedrawn;
    }

    @Override // android.text.Layout
    public int getBottomPadding() {
        return this.mBottomPadding;
    }

    @Override // android.text.Layout
    public int getEllipsisCount(int i2) {
        if (this.mEllipsizeAt == null) {
            return 0;
        }
        return this.mInts.getValue(i2, 5);
    }

    @Override // android.text.Layout
    public int getEllipsisStart(int i2) {
        if (this.mEllipsizeAt == null) {
            return 0;
        }
        return this.mInts.getValue(i2, 4);
    }

    @Override // android.text.Layout
    public int getEllipsizedWidth() {
        return this.mEllipsizedWidth;
    }

    @Override // android.text.Layout
    public int getHyphen(int i2) {
        return this.mInts.getValue(i2, 3) & 255;
    }

    public int getIndexFirstChangedBlock() {
        return this.mIndexFirstChangedBlock;
    }

    @Override // android.text.Layout
    public boolean getLineContainsTab(int i2) {
        return (this.mInts.getValue(i2, 0) & 536870912) != 0;
    }

    @Override // android.text.Layout
    public int getLineCount() {
        return this.mInts.size() - 1;
    }

    @Override // android.text.Layout
    public int getLineDescent(int i2) {
        return this.mInts.getValue(i2, 2);
    }

    @Override // android.text.Layout
    public final Layout.Directions getLineDirections(int i2) {
        return this.mObjects.getValue(i2, 0);
    }

    @Override // android.text.Layout
    public int getLineStart(int i2) {
        return this.mInts.getValue(i2, 0) & 536870911;
    }

    @Override // android.text.Layout
    public int getLineTop(int i2) {
        return this.mInts.getValue(i2, 1);
    }

    public int getNumberOfBlocks() {
        return this.mNumberOfBlocks;
    }

    @Override // android.text.Layout
    public int getParagraphDirection(int i2) {
        return this.mInts.getValue(i2, 0) >> 30;
    }

    @Override // android.text.Layout
    public int getTopPadding() {
        return this.mTopPadding;
    }

    public void setBlockIndex(int i2, int i3) {
        this.mBlockIndices[i2] = i3;
    }

    public void setBlocksDataForTest(int[] iArr, int[] iArr2, int i2, int i3) {
        int[] iArr3 = new int[iArr.length];
        this.mBlockEndLines = iArr3;
        this.mBlockIndices = new int[iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, this.mBlockIndices, 0, iArr2.length);
        this.mNumberOfBlocks = i2;
        while (this.mInts.size() < i3) {
            PackedIntVector packedIntVector = this.mInts;
            packedIntVector.insertAt(packedIntVector.size(), new int[4]);
        }
    }

    public void setIndexFirstChangedBlock(int i2) {
        this.mIndexFirstChangedBlock = i2;
    }

    public void updateBlocks(int i2, int i3, int i4) {
        int i5;
        int i6;
        boolean z2;
        int i7;
        if (this.mBlockEndLines == null) {
            createBlocks();
            return;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= this.mNumberOfBlocks) {
                i8 = -1;
                break;
            } else if (this.mBlockEndLines[i8] >= i2) {
                break;
            } else {
                i8++;
            }
        }
        int i9 = i8;
        while (true) {
            i5 = this.mNumberOfBlocks;
            if (i9 >= i5) {
                i9 = -1;
                break;
            } else if (this.mBlockEndLines[i9] >= i3) {
                break;
            } else {
                i9++;
            }
        }
        int[] iArr = this.mBlockEndLines;
        int i10 = iArr[i9];
        int i11 = i2 > (i8 == 0 ? 0 : iArr[i8 + (-1)] + 1) ? 1 : 0;
        boolean z3 = i4 > 0;
        boolean z4 = i3 < i10;
        int i12 = z3 ? i11 + 1 : i11;
        if (z4) {
            i12++;
        }
        int i13 = (i9 - i8) + 1;
        int i14 = (i5 + i12) - i13;
        if (i14 == 0) {
            iArr[0] = 0;
            this.mBlockIndices[0] = -1;
            this.mNumberOfBlocks = 1;
            return;
        }
        if (i14 > iArr.length) {
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(Math.max(iArr.length * 2, i14));
            int[] iArr2 = new int[iArrNewUnpaddedIntArray.length];
            System.arraycopy(this.mBlockEndLines, 0, iArrNewUnpaddedIntArray, 0, i8);
            System.arraycopy(this.mBlockIndices, 0, iArr2, 0, i8);
            int i15 = i9 + 1;
            i6 = i10;
            int i16 = i8 + i12;
            z2 = z4;
            System.arraycopy(this.mBlockEndLines, i15, iArrNewUnpaddedIntArray, i16, (this.mNumberOfBlocks - i9) - 1);
            System.arraycopy(this.mBlockIndices, i15, iArr2, i16, (this.mNumberOfBlocks - i9) - 1);
            this.mBlockEndLines = iArrNewUnpaddedIntArray;
            this.mBlockIndices = iArr2;
        } else {
            i6 = i10;
            z2 = z4;
            if (i12 + i13 != 0) {
                int i17 = i9 + 1;
                int i18 = i8 + i12;
                System.arraycopy(iArr, i17, iArr, i18, (i5 - i9) - 1);
                int[] iArr3 = this.mBlockIndices;
                System.arraycopy(iArr3, i17, iArr3, i18, (this.mNumberOfBlocks - i9) - 1);
            }
        }
        if (i12 + i13 != 0 && this.mBlocksAlwaysNeedToBeRedrawn != null) {
            ArraySet<Integer> arraySet = new ArraySet<>();
            for (int i19 = 0; i19 < this.mBlocksAlwaysNeedToBeRedrawn.size(); i19++) {
                Integer numValueAt = this.mBlocksAlwaysNeedToBeRedrawn.valueAt(i19);
                if (numValueAt.intValue() > i8) {
                    numValueAt = Integer.valueOf((i12 - i13) + numValueAt.intValue());
                }
                arraySet.add(numValueAt);
            }
            this.mBlocksAlwaysNeedToBeRedrawn = arraySet;
        }
        this.mNumberOfBlocks = i14;
        int i20 = i4 - ((i3 - i2) + 1);
        if (i20 != 0) {
            i14 = i8 + i12;
            for (int i21 = i14; i21 < this.mNumberOfBlocks; i21++) {
                int[] iArr4 = this.mBlockEndLines;
                iArr4[i21] = iArr4[i21] + i20;
            }
        }
        this.mIndexFirstChangedBlock = Math.min(this.mIndexFirstChangedBlock, i14);
        if (i11 != 0) {
            this.mBlockEndLines[i8] = i2 - 1;
            updateAlwaysNeedsToBeRedrawn(i8);
            this.mBlockIndices[i8] = -1;
            i8++;
        }
        if (z3) {
            this.mBlockEndLines[i8] = (i2 + i4) - 1;
            updateAlwaysNeedsToBeRedrawn(i8);
            i7 = -1;
            this.mBlockIndices[i8] = -1;
            i8++;
        } else {
            i7 = -1;
        }
        if (z2) {
            this.mBlockEndLines[i8] = i6 + i20;
            updateAlwaysNeedsToBeRedrawn(i8);
            this.mBlockIndices[i8] = i7;
        }
    }

    public DynamicLayout(CharSequence charSequence, CharSequence charSequence2, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, boolean z2) {
        this(charSequence, charSequence2, textPaint, i2, alignment, f2, f3, z2, null, 0);
    }

    public DynamicLayout(CharSequence charSequence, CharSequence charSequence2, TextPaint textPaint, int i2, Layout.Alignment alignment, float f2, float f3, boolean z2, TextUtils.TruncateAt truncateAt, int i3) {
        this(charSequence, charSequence2, textPaint, i2, alignment, TextDirectionHeuristics.FIRSTSTRONG_LTR, f2, f3, z2, 0, 0, 0, truncateAt, i3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DynamicLayout(CharSequence charSequence, CharSequence charSequence2, TextPaint textPaint, int i2, Layout.Alignment alignment, TextDirectionHeuristic textDirectionHeuristic, float f2, float f3, boolean z2, int i3, int i4, int i5, TextUtils.TruncateAt truncateAt, int i6) {
        CharSequence spannedEllipsizer;
        int[] iArr;
        if (truncateAt == null) {
            spannedEllipsizer = charSequence2;
        } else {
            spannedEllipsizer = charSequence2 instanceof Spanned ? new Layout.SpannedEllipsizer(charSequence2) : new Layout.Ellipsizer(charSequence2);
        }
        super(spannedEllipsizer, textPaint, i2, alignment, textDirectionHeuristic, f2, f3);
        this.mTempRect = new Rect();
        this.mBase = charSequence;
        this.mDisplay = charSequence2;
        if (truncateAt != null) {
            this.mInts = new PackedIntVector(6);
            this.mEllipsizedWidth = i6;
            this.mEllipsizeAt = truncateAt;
        } else {
            this.mInts = new PackedIntVector(4);
            this.mEllipsizedWidth = i2;
            this.mEllipsizeAt = null;
        }
        this.mObjects = new PackedObjectVector<>(1);
        this.mIncludePad = z2;
        this.mBreakStrategy = i3;
        this.mJustificationMode = i5;
        this.mHyphenationFrequency = i4;
        if (truncateAt != null) {
            Layout.Ellipsizer ellipsizer = (Layout.Ellipsizer) getText();
            ellipsizer.mLayout = this;
            ellipsizer.mWidth = i6;
            ellipsizer.mMethod = truncateAt;
            this.mEllipsize = true;
        }
        if (truncateAt != null) {
            iArr = new int[6];
            iArr[4] = Integer.MIN_VALUE;
        } else {
            iArr = new int[4];
        }
        Layout.Directions[] directionsArr = {Layout.DIRS_ALL_LEFT_TO_RIGHT};
        Paint.FontMetricsInt fontMetricsInt = textPaint.getFontMetricsInt();
        int i7 = fontMetricsInt.ascent;
        int i8 = fontMetricsInt.descent;
        iArr[0] = 1073741824;
        iArr[1] = 0;
        iArr[2] = i8;
        this.mInts.insertAt(0, iArr);
        iArr[1] = i8 - i7;
        this.mInts.insertAt(1, iArr);
        this.mObjects.insertAt(0, directionsArr);
        reflow(charSequence, 0, 0, charSequence.length());
        if (charSequence instanceof Spannable) {
            if (this.mWatcher == null) {
                this.mWatcher = new ChangeWatcher(this);
            }
            Spannable spannable = (Spannable) charSequence;
            for (ChangeWatcher changeWatcher : (ChangeWatcher[]) spannable.getSpans(0, spannable.length(), ChangeWatcher.class)) {
                spannable.removeSpan(changeWatcher);
            }
            spannable.setSpan(this.mWatcher, 0, charSequence.length(), 8388626);
        }
    }
}
