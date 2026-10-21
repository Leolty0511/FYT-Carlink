package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class LinearLayout extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;

    @ViewDebug.ExportedProperty(category = "layout")
    private boolean mBaselineAligned;

    @ViewDebug.ExportedProperty(category = "layout")
    private int mBaselineAlignedChildIndex;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(equals = -1, mask = -1, name = "NONE"), @ViewDebug.FlagToString(equals = 0, mask = 0, name = "NONE"), @ViewDebug.FlagToString(equals = 48, mask = 48, name = "TOP"), @ViewDebug.FlagToString(equals = 80, mask = 80, name = "BOTTOM"), @ViewDebug.FlagToString(equals = 3, mask = 3, name = "LEFT"), @ViewDebug.FlagToString(equals = 5, mask = 5, name = "RIGHT"), @ViewDebug.FlagToString(equals = Gravity.START, mask = Gravity.START, name = "START"), @ViewDebug.FlagToString(equals = Gravity.END, mask = Gravity.END, name = "END"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "CENTER_VERTICAL"), @ViewDebug.FlagToString(equals = 112, mask = 112, name = "FILL_VERTICAL"), @ViewDebug.FlagToString(equals = 1, mask = 1, name = "CENTER_HORIZONTAL"), @ViewDebug.FlagToString(equals = 7, mask = 7, name = "FILL_HORIZONTAL"), @ViewDebug.FlagToString(equals = 17, mask = 17, name = "CENTER"), @ViewDebug.FlagToString(equals = 119, mask = 119, name = "FILL"), @ViewDebug.FlagToString(equals = 8388608, mask = 8388608, name = "RELATIVE")})
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mOrientation;
    private int mShowDividers;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mTotalLength;

    @ViewDebug.ExportedProperty(category = "layout")
    private boolean mUseLargestChild;

    @ViewDebug.ExportedProperty(category = "layout")
    private float mWeightSum;

    public LinearLayout(Context context) {
        super(context);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
    }

    private void forceUniformHeight(int i2, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i5 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i3, 0, iMakeMeasureSpec, 0);
                    layoutParams.width = i5;
                }
            }
        }
    }

    private void forceUniformWidth(int i2, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i5 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i3, 0);
                    layoutParams.height = i5;
                }
            }
        }
    }

    private void setChildFrame(View view, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i4 + i2, i5 + i3);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i2;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = isLayoutRtl();
        for (int i3 = 0; i3 < virtualChildCount; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i3)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + layoutParams.rightMargin : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt2.getLeft() - layoutParams2.leftMargin;
                    i2 = this.mDividerWidth;
                    right = left - i2;
                } else {
                    right = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i2 = this.mDividerWidth;
                right = left - i2;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i2) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i2, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i2);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i2) {
        this.mDivider.setBounds(i2, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i2, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i2;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i3 = this.mBaselineAlignedChildIndex;
        if (childCount <= i3) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i3);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i4 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i2 = this.mGravity & 112) != 48) {
            if (i2 == 16) {
                i4 += ((((this.mBottom - this.mTop) - this.mPaddingTop) - this.mPaddingBottom) - this.mTotalLength) / 2;
            } else if (i2 == 80) {
                i4 = ((this.mBottom - this.mTop) - this.mPaddingBottom) - this.mTotalLength;
            }
        }
        return i4 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i2) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i2) {
        return getChildAt(i2);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public boolean hasDividerBeforeChildAt(int i2) {
        if (i2 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    public void layoutHorizontal(int i2, int i3, int i4, int i5) {
        int iMeasureNullChild;
        int i6;
        int i7;
        boolean z2;
        int baseline;
        int i8;
        int i9;
        int measuredHeight;
        boolean zIsLayoutRtl = isLayoutRtl();
        int i10 = this.mPaddingTop;
        int i11 = i5 - i3;
        int i12 = this.mPaddingBottom;
        int i13 = i11 - i12;
        int i14 = (i11 - i10) - i12;
        int virtualChildCount = getVirtualChildCount();
        int i15 = this.mGravity;
        int i16 = i15 & 112;
        boolean z3 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = Gravity.getAbsoluteGravity(8388615 & i15, getLayoutDirection());
        boolean z4 = true;
        if (absoluteGravity != 1) {
            iMeasureNullChild = absoluteGravity != 5 ? this.mPaddingLeft : ((this.mPaddingLeft + i4) - i2) - this.mTotalLength;
        } else {
            iMeasureNullChild = this.mPaddingLeft + (((i4 - i2) - this.mTotalLength) / 2);
        }
        if (zIsLayoutRtl) {
            i6 = virtualChildCount - 1;
            i7 = -1;
        } else {
            i6 = 0;
            i7 = 1;
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            int i17 = i6 + (i7 * childrenSkipCount);
            View virtualChildAt = getVirtualChildAt(i17);
            if (virtualChildAt == null) {
                iMeasureNullChild += measureNullChild(i17);
                z2 = z4;
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i18 = childrenSkipCount;
                    if (z3) {
                        virtualChildCount = virtualChildCount;
                        baseline = layoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                        i8 = layoutParams.gravity;
                        if (i8 < 0) {
                            i8 = i16;
                        }
                        i9 = i8 & 112;
                        i16 = i16;
                        if (i9 != 16) {
                            if (i9 != 48) {
                                measuredHeight = layoutParams.topMargin + i10;
                                if (baseline != -1) {
                                    z2 = true;
                                    measuredHeight += iArr[1] - baseline;
                                }
                            } else if (i9 != 80) {
                                measuredHeight = i10;
                            } else {
                                measuredHeight = (i13 - measuredHeight2) - layoutParams.bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            z2 = true;
                        } else {
                            z2 = true;
                            measuredHeight = ((((i14 - measuredHeight2) / 2) + i10) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        }
                        if (hasDividerBeforeChildAt(i17)) {
                            iMeasureNullChild += this.mDividerWidth;
                        }
                        int i19 = layoutParams.leftMargin + iMeasureNullChild;
                        i10 = i10;
                        setChildFrame(virtualChildAt, i19 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                        int nextLocationOffset = i19 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = i18 + getChildrenSkipCount(virtualChildAt, i17);
                        iMeasureNullChild = nextLocationOffset;
                    } else {
                        virtualChildCount = virtualChildCount;
                    }
                    i8 = layoutParams.gravity;
                    if (i8 < 0) {
                        i8 = i16;
                    }
                    i9 = i8 & 112;
                    i16 = i16;
                    if (i9 != 16) {
                        if (i9 != 48) {
                            measuredHeight = layoutParams.topMargin + i10;
                            if (baseline != -1) {
                                z2 = true;
                                measuredHeight += iArr[1] - baseline;
                            }
                        } else if (i9 != 80) {
                            measuredHeight = i10;
                        } else {
                            measuredHeight = (i13 - measuredHeight2) - layoutParams.bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        z2 = true;
                    } else {
                        z2 = true;
                        measuredHeight = ((((i14 - measuredHeight2) / 2) + i10) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    }
                    if (hasDividerBeforeChildAt(i17)) {
                        iMeasureNullChild += this.mDividerWidth;
                    }
                    int i110 = layoutParams.leftMargin + iMeasureNullChild;
                    i10 = i10;
                    setChildFrame(virtualChildAt, i110 + getLocationOffset(virtualChildAt), measuredHeight, measuredWidth, measuredHeight2);
                    int nextLocationOffset2 = i110 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = i18 + getChildrenSkipCount(virtualChildAt, i17);
                    iMeasureNullChild = nextLocationOffset2;
                } else {
                    z2 = true;
                }
                childrenSkipCount++;
                virtualChildCount = virtualChildCount;
                i16 = i16;
                z4 = z2;
                i10 = i10;
            }
            childrenSkipCount++;
            virtualChildCount = virtualChildCount;
            i16 = i16;
            z4 = z2;
            i10 = i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0091  */
    public void layoutVertical(int i2, int i3, int i4, int i5) {
        int iMeasureNullChild;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = this.mPaddingLeft;
        int i11 = i4 - i2;
        int i12 = this.mPaddingRight;
        int i13 = i11 - i12;
        int i14 = (i11 - i10) - i12;
        int virtualChildCount = getVirtualChildCount();
        int i15 = this.mGravity;
        int i16 = i15 & 112;
        int i17 = i15 & 8388615;
        if (i16 != 16) {
            iMeasureNullChild = i16 != 80 ? this.mPaddingTop : ((this.mPaddingTop + i5) - i3) - this.mTotalLength;
        } else {
            iMeasureNullChild = this.mPaddingTop + (((i5 - i3) - this.mTotalLength) / 2);
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                iMeasureNullChild += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i18 = layoutParams.gravity;
                    if (i18 < 0) {
                        i18 = i17;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i18, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i8 = layoutParams.leftMargin + i10;
                        } else {
                            i6 = i13 - measuredWidth;
                            i7 = layoutParams.rightMargin;
                        }
                        int i19 = i8;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            iMeasureNullChild += this.mDividerHeight;
                        }
                        int i20 = iMeasureNullChild + layoutParams.topMargin;
                        setChildFrame(virtualChildAt, i19, i20 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                        int nextLocationOffset = i20 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                        iMeasureNullChild = nextLocationOffset;
                        i9 = 1;
                    } else {
                        i6 = ((i14 - measuredWidth) / 2) + i10 + layoutParams.leftMargin;
                        i7 = layoutParams.rightMargin;
                    }
                    i8 = i6 - i7;
                    int i110 = i8;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        iMeasureNullChild += this.mDividerHeight;
                    }
                    int i21 = iMeasureNullChild + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i110, i21 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset2 = i21 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    iMeasureNullChild = nextLocationOffset2;
                    i9 = 1;
                }
                childrenSkipCount += i9;
            }
            i9 = 1;
            childrenSkipCount += i9;
        }
    }

    public void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        measureChildWithMargins(view, i3, i4, i5, i6);
    }

    /* JADX WARN: Code duplicated, block: B:181:0x03f3  */
    public void measureHorizontal(int i2, int i3) {
        int[] iArr;
        int i4;
        int i5;
        int iMax;
        int i6;
        int baseline;
        int i7;
        int i8;
        int i9;
        boolean z2;
        boolean z3;
        LayoutParams layoutParams;
        View view;
        int i10;
        boolean z4;
        int childrenSkipCount;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.mBaselineAligned;
        boolean z6 = this.mUseLargestChild;
        int i11 = 1073741824;
        boolean z7 = mode == 1073741824;
        int childrenSkipCount2 = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iCombineMeasuredStates = 0;
        boolean z8 = false;
        boolean z9 = true;
        float f2 = 0.0f;
        int iMax5 = Integer.MIN_VALUE;
        while (true) {
            iArr = iArr3;
            if (childrenSkipCount2 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
            } else {
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f3 = layoutParams2.weight;
                    f2 += f3;
                    if (mode == i11 && layoutParams2.width == 0 && f3 > 0.0f) {
                        if (z7) {
                            this.mTotalLength += layoutParams2.leftMargin + layoutParams2.rightMargin;
                        } else {
                            int i12 = this.mTotalLength;
                            this.mTotalLength = Math.max(i12, layoutParams2.leftMargin + i12 + layoutParams2.rightMargin);
                        }
                        if (z5) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        }
                        i9 = childrenSkipCount2;
                        z2 = z6;
                        z3 = z5;
                        layoutParams = layoutParams2;
                        view = virtualChildAt;
                    } else {
                        if (layoutParams2.width != 0 || f3 <= 0.0f) {
                            i8 = Integer.MIN_VALUE;
                        } else {
                            layoutParams2.width = -2;
                            i8 = 0;
                        }
                        i9 = childrenSkipCount2;
                        int i13 = i8;
                        z2 = z6;
                        z3 = z5;
                        layoutParams = layoutParams2;
                        measureChildBeforeLayout(virtualChildAt, i9, i2, f2 == 0.0f ? this.mTotalLength : 0, i3, 0);
                        if (i13 != Integer.MIN_VALUE) {
                            layoutParams.width = i13;
                        }
                        int measuredWidth = virtualChildAt.getMeasuredWidth();
                        if (z7) {
                            view = virtualChildAt;
                            this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                        } else {
                            view = virtualChildAt;
                            int i14 = this.mTotalLength;
                            this.mTotalLength = Math.max(i14, i14 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                        }
                        if (z2) {
                            iMax5 = Math.max(measuredWidth, iMax5);
                        }
                    }
                    i10 = 1073741824;
                    if (mode2 == 1073741824 || layoutParams.height != -1) {
                        z4 = false;
                    } else {
                        z4 = true;
                        z8 = true;
                    }
                    int i15 = layoutParams.topMargin + layoutParams.bottomMargin;
                    int measuredHeight = view.getMeasuredHeight() + i15;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z3 && (baseline2 = view.getBaseline()) != -1) {
                        int i16 = layoutParams.gravity;
                        if (i16 < 0) {
                            i16 = this.mGravity;
                        }
                        int i17 = (((i16 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i17] = Math.max(iArr2[i17], baseline2);
                        iArr[i17] = Math.max(iArr[i17], measuredHeight - baseline2);
                    }
                    iMax2 = Math.max(iMax2, measuredHeight);
                    z9 = z9 && layoutParams.height == -1;
                    if (layoutParams.weight > 0.0f) {
                        if (!z4) {
                            i15 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i15);
                    } else {
                        int i18 = iMax4;
                        if (!z4) {
                            i15 = measuredHeight;
                        }
                        iMax3 = Math.max(iMax3, i15);
                        iMax4 = i18;
                    }
                    int i19 = i9;
                    childrenSkipCount = getChildrenSkipCount(view, i19) + i19;
                }
                i11 = i10;
                childrenSkipCount2 = childrenSkipCount + 1;
                iArr3 = iArr;
                z6 = z2;
                z5 = z3;
            }
            childrenSkipCount = childrenSkipCount2;
            i10 = i11;
            z2 = z6;
            z3 = z5;
            i11 = i10;
            childrenSkipCount2 = childrenSkipCount + 1;
            iArr3 = iArr;
            z6 = z2;
            z5 = z3;
        }
        boolean z10 = z6;
        boolean z11 = z5;
        int i20 = iMax2;
        int iMax6 = iMax3;
        int i21 = iMax4;
        int iCombineMeasuredStates2 = iCombineMeasuredStates;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int iMax7 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i20 : Math.max(i20, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        if (z10 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount3 = 0;
            while (childrenSkipCount3 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount3);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount3);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount3 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount3);
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z7) {
                        this.mTotalLength += layoutParams3.leftMargin + iMax5 + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i22 = this.mTotalLength;
                        this.mTotalLength = Math.max(i22, i22 + iMax5 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    childrenSkipCount3++;
                    iMax7 = iMax7;
                }
                childrenSkipCount3++;
                iMax7 = iMax7;
            }
        }
        int i23 = iMax7;
        int i24 = this.mTotalLength + this.mPaddingLeft + this.mPaddingRight;
        this.mTotalLength = i24;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(i24, getSuggestedMinimumWidth()), i2, 0);
        int i25 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (i25 == 0 || f2 <= 0.0f) {
            i4 = i3;
            i5 = iResolveSizeAndState;
            iMax6 = Math.max(iMax6, i21);
            if (z10 && mode != 1073741824) {
                for (int i26 = 0; i26 < virtualChildCount; i26++) {
                    View virtualChildAt3 = getVirtualChildAt(i26);
                    if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(iMax5, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            iMax = i23;
        } else {
            float f4 = this.mWeightSum;
            if (f4 > 0.0f) {
                f2 = f4;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int iMax8 = -1;
            int i27 = 0;
            while (i27 < virtualChildCount) {
                View virtualChildAt4 = getVirtualChildAt(i27);
                if (virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8) {
                    iResolveSizeAndState = iResolveSizeAndState;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f5 = layoutParams4.weight;
                    if (f5 > 0.0f) {
                        int i28 = (int) ((i25 * f5) / f2);
                        f2 -= f5;
                        int i29 = i25 - i28;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, this.mPaddingTop + this.mPaddingBottom + layoutParams4.topMargin + layoutParams4.bottomMargin, layoutParams4.height);
                        if (layoutParams4.width == 0) {
                            i7 = 1073741824;
                            if (mode == 1073741824) {
                                if (i28 <= 0) {
                                    i28 = 0;
                                }
                                virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i28, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt4.getMeasuredState() & (-16777216));
                            i25 = i29;
                        } else {
                            i7 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i28;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i7), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt4.getMeasuredState() & (-16777216));
                        i25 = i29;
                    }
                    if (z7) {
                        this.mTotalLength += virtualChildAt4.getMeasuredWidth() + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt4);
                    } else {
                        int i30 = this.mTotalLength;
                        this.mTotalLength = Math.max(i30, virtualChildAt4.getMeasuredWidth() + i30 + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt4));
                    }
                    boolean z12 = mode2 != 1073741824 && layoutParams4.height == -1;
                    int i31 = layoutParams4.topMargin + layoutParams4.bottomMargin;
                    int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i31;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z12) {
                        i31 = measuredHeight2;
                    }
                    int iMax9 = Math.max(iMax6, i31);
                    if (z9) {
                        i6 = -1;
                        boolean z13 = layoutParams4.height == -1;
                        if (!z11 && (baseline = virtualChildAt4.getBaseline()) != i6) {
                            int i32 = layoutParams4.gravity;
                            if (i32 < 0) {
                                i32 = this.mGravity;
                            }
                            int i33 = (((i32 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i33] = Math.max(iArr2[i33], baseline);
                            iArr[i33] = Math.max(iArr[i33], measuredHeight2 - baseline);
                        }
                        iMax6 = iMax9;
                        z9 = z13;
                    } else {
                        i6 = -1;
                    }
                    if (!z11) {
                    }
                    iMax6 = iMax9;
                    z9 = z13;
                }
                i27++;
                iResolveSizeAndState = iResolveSizeAndState;
            }
            i4 = i3;
            i5 = iResolveSizeAndState;
            this.mTotalLength += this.mPaddingLeft + this.mPaddingRight;
            iMax = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (!z9 && mode2 != 1073741824) {
            iMax = iMax6;
        }
        setMeasuredDimension(i5 | ((-16777216) & iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax + this.mPaddingTop + this.mPaddingBottom, getSuggestedMinimumHeight()), i4, iCombineMeasuredStates2 << 16));
        if (z8) {
            forceUniformHeight(virtualChildCount, i2);
        }
    }

    public int measureNullChild(int i2) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x02de  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:52:0x0140  */
    /* JADX WARN: Code duplicated, block: B:58:0x0161  */
    /* JADX WARN: Code duplicated, block: B:61:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x016b  */
    /* JADX WARN: Code duplicated, block: B:65:0x0176  */
    /* JADX WARN: Code duplicated, block: B:68:0x017b  */
    public void measureVertical(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        boolean z3;
        int i10;
        int childrenSkipCount;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        LayoutParams layoutParams;
        View view;
        int i18;
        boolean z4;
        int i19;
        int measuredWidth;
        boolean z5;
        int iMax;
        int iMax2;
        int iCombineMeasuredStates = 0;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i20 = this.mBaselineAlignedChildIndex;
        boolean z6 = this.mUseLargestChild;
        int i21 = 0;
        int i22 = 0;
        int childrenSkipCount2 = 0;
        boolean z7 = false;
        int i23 = 0;
        float f2 = 0.0f;
        boolean z8 = true;
        int iMax3 = Integer.MIN_VALUE;
        while (childrenSkipCount2 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
                i13 = virtualChildCount;
                i14 = mode2;
            } else {
                int i24 = i21;
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                    i13 = virtualChildCount;
                    i21 = i24;
                    i14 = mode2;
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f3 = layoutParams2.weight;
                    float f4 = f2 + f3;
                    if (mode2 == 1073741824 && layoutParams2.height == 0 && f3 > 0.0f) {
                        int i25 = this.mTotalLength;
                        this.mTotalLength = Math.max(i25, layoutParams2.topMargin + i25 + layoutParams2.bottomMargin);
                        i16 = i22;
                        view = virtualChildAt;
                        i13 = virtualChildCount;
                        i17 = i23;
                        i12 = i24;
                        i15 = childrenSkipCount2;
                        i14 = mode2;
                        layoutParams = layoutParams2;
                        i18 = iMax3;
                    } else {
                        int i26 = iMax3;
                        if (layoutParams2.height != 0 || f3 <= 0.0f) {
                            i11 = Integer.MIN_VALUE;
                        } else {
                            layoutParams2.height = -2;
                            i11 = 0;
                        }
                        i12 = i24;
                        int i27 = i11;
                        i13 = virtualChildCount;
                        i14 = mode2;
                        i15 = childrenSkipCount2;
                        i16 = i22;
                        i17 = i23;
                        layoutParams = layoutParams2;
                        measureChildBeforeLayout(virtualChildAt, childrenSkipCount2, i2, 0, i3, f4 == 0.0f ? this.mTotalLength : 0);
                        if (i27 != Integer.MIN_VALUE) {
                            layoutParams.height = i27;
                        }
                        int measuredHeight = virtualChildAt.getMeasuredHeight();
                        int i28 = this.mTotalLength;
                        view = virtualChildAt;
                        this.mTotalLength = Math.max(i28, i28 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
                        i18 = i26;
                        if (z6) {
                            iMax3 = Math.max(measuredHeight, i18);
                        }
                        if (i20 >= 0 && i20 == i15 + 1) {
                            this.mBaselineChildTop = this.mTotalLength;
                        }
                        if (i15 >= i20 && layoutParams.weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (mode == 1073741824 && layoutParams.width == -1) {
                            z4 = true;
                            z7 = true;
                        } else {
                            z4 = false;
                        }
                        i19 = layoutParams.leftMargin + layoutParams.rightMargin;
                        measuredWidth = view.getMeasuredWidth() + i19;
                        int iMax4 = Math.max(i12, measuredWidth);
                        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        if (z8 || layoutParams.width != -1) {
                            z5 = false;
                        } else {
                            z5 = true;
                        }
                        if (layoutParams.weight > 0.0f) {
                            if (!z4) {
                                i19 = measuredWidth;
                            }
                            iMax = Math.max(i16, i19);
                            iMax2 = i17;
                        } else {
                            iMax = i16;
                            if (!z4) {
                                i19 = measuredWidth;
                            }
                            iMax2 = Math.max(i17, i19);
                        }
                        int childrenSkipCount3 = getChildrenSkipCount(view, i15) + i15;
                        i23 = iMax2;
                        i21 = iMax4;
                        iCombineMeasuredStates = iCombineMeasuredStates2;
                        z8 = z5;
                        i22 = iMax;
                        childrenSkipCount2 = childrenSkipCount3;
                        f2 = f4;
                    }
                    iMax3 = i18;
                    if (i20 >= 0) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i15 >= i20) {
                    }
                    if (mode == 1073741824) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    i19 = layoutParams.leftMargin + layoutParams.rightMargin;
                    measuredWidth = view.getMeasuredWidth() + i19;
                    int iMax5 = Math.max(i12, measuredWidth);
                    int iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z8) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (layoutParams.weight > 0.0f) {
                        if (!z4) {
                            i19 = measuredWidth;
                        }
                        iMax = Math.max(i16, i19);
                        iMax2 = i17;
                    } else {
                        iMax = i16;
                        if (!z4) {
                            i19 = measuredWidth;
                        }
                        iMax2 = Math.max(i17, i19);
                    }
                    int childrenSkipCount4 = getChildrenSkipCount(view, i15) + i15;
                    i23 = iMax2;
                    i21 = iMax5;
                    iCombineMeasuredStates = iCombineMeasuredStates3;
                    z8 = z5;
                    i22 = iMax;
                    childrenSkipCount2 = childrenSkipCount4;
                    f2 = f4;
                }
            }
            childrenSkipCount2++;
            virtualChildCount = i13;
            mode2 = i14;
        }
        int i29 = i21;
        int i30 = iMax3;
        int i31 = virtualChildCount;
        int i32 = mode2;
        int i33 = i23;
        int i34 = i22;
        if (this.mTotalLength > 0) {
            i4 = i31;
            if (hasDividerBeforeChildAt(i4)) {
                this.mTotalLength += this.mDividerHeight;
            }
        } else {
            i4 = i31;
        }
        if (z6 && (i32 == Integer.MIN_VALUE || i32 == 0)) {
            this.mTotalLength = 0;
            int i35 = 0;
            while (i35 < i4) {
                View virtualChildAt2 = getVirtualChildAt(i35);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i35);
                } else {
                    if (virtualChildAt2.getVisibility() == 8) {
                        childrenSkipCount = i35 + getChildrenSkipCount(virtualChildAt2, i35);
                    } else {
                        LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                        int i36 = this.mTotalLength;
                        this.mTotalLength = Math.max(i36, i36 + i30 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    i35 = childrenSkipCount + 1;
                }
                childrenSkipCount = i35;
                i35 = childrenSkipCount + 1;
            }
        }
        int i37 = this.mTotalLength + this.mPaddingTop + this.mPaddingBottom;
        this.mTotalLength = i37;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(i37, getSuggestedMinimumHeight()), i3, 0);
        int i38 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (i38 == 0 || f2 <= 0.0f) {
            i5 = i29;
            int iMax6 = Math.max(i33, i34);
            if (z6 && i32 != 1073741824) {
                for (int i39 = 0; i39 < i4; i39++) {
                    View virtualChildAt3 = getVirtualChildAt(i39);
                    if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i30, 1073741824));
                    }
                }
            }
            i6 = iMax6;
        } else {
            float f5 = this.mWeightSum;
            if (f5 > 0.0f) {
                f2 = f5;
            }
            this.mTotalLength = 0;
            i6 = i33;
            int i40 = 0;
            while (i40 < i4) {
                View virtualChildAt4 = getVirtualChildAt(i40);
                if (virtualChildAt4.getVisibility() == 8) {
                    i7 = i38;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f6 = layoutParams4.weight;
                    if (f6 > 0.0f) {
                        int i41 = (int) ((i38 * f6) / f2);
                        float f7 = f2 - f6;
                        int i42 = i38 - i41;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight + layoutParams4.leftMargin + layoutParams4.rightMargin, layoutParams4.width);
                        if (layoutParams4.height == 0) {
                            i10 = 1073741824;
                            if (i32 == 1073741824) {
                                if (i41 <= 0) {
                                    i41 = 0;
                                }
                                virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i41, 1073741824));
                            }
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt4.getMeasuredState() & (-256));
                            f2 = f7;
                            i7 = i42;
                        } else {
                            i10 = 1073741824;
                        }
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i41;
                        if (measuredHeight2 < 0) {
                            measuredHeight2 = 0;
                        }
                        virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i10));
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt4.getMeasuredState() & (-256));
                        f2 = f7;
                        i7 = i42;
                    } else {
                        i7 = i38;
                    }
                    float f8 = f2;
                    int i43 = layoutParams4.leftMargin + layoutParams4.rightMargin;
                    int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i43;
                    int iMax7 = Math.max(i29, measuredWidth2);
                    if (mode != 1073741824) {
                        i8 = iMax7;
                        i9 = -1;
                        z2 = layoutParams4.width == -1;
                        if (!z2) {
                            i43 = measuredWidth2;
                        }
                        int iMax8 = Math.max(i6, i43);
                        if (z8 || layoutParams4.width != i9) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        int i44 = this.mTotalLength;
                        this.mTotalLength = Math.max(i44, i44 + virtualChildAt4.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt4));
                        z8 = z3;
                        i29 = i8;
                        i6 = iMax8;
                        f2 = f8;
                    } else {
                        i8 = iMax7;
                        i9 = -1;
                    }
                    if (!z2) {
                        i43 = measuredWidth2;
                    }
                    int iMax9 = Math.max(i6, i43);
                    if (z8) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    int i45 = this.mTotalLength;
                    this.mTotalLength = Math.max(i45, i45 + virtualChildAt4.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt4));
                    z8 = z3;
                    i29 = i8;
                    i6 = iMax9;
                    f2 = f8;
                }
                i40++;
                i38 = i7;
            }
            this.mTotalLength += this.mPaddingTop + this.mPaddingBottom;
            i5 = i29;
        }
        if (!z8 && mode != 1073741824) {
            i5 = i6;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5 + this.mPaddingLeft + this.mPaddingRight, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates), iResolveSizeAndState);
        if (z7) {
            forceUniformWidth(i4, i3);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayout.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayout.class.getName());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (this.mOrientation == 1) {
            layoutVertical(i2, i3, i4, i5);
        } else {
            layoutHorizontal(i2, i3, i4, i5);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.mOrientation == 1) {
            measureVertical(i2, i3);
        } else {
            measureHorizontal(i2, i3);
        }
    }

    @RemotableViewMethod
    public void setBaselineAligned(boolean z2) {
        this.mBaselineAligned = z2;
    }

    @RemotableViewMethod
    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 >= 0 && i2 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i2;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        this.mDividerPadding = i2;
    }

    @RemotableViewMethod
    public void setGravity(int i2) {
        if (this.mGravity != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= Gravity.START;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.mGravity;
        if ((8388615 & i4) != i3) {
            this.mGravity = i3 | ((-8388616) & i4);
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setMeasureWithLargestChildEnabled(boolean z2) {
        this.mUseLargestChild = z2;
    }

    public void setOrientation(int i2) {
        if (this.mOrientation != i2) {
            this.mOrientation = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i2;
    }

    @RemotableViewMethod
    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.mGravity;
        if ((i4 & 112) != i3) {
            this.mGravity = i3 | (i4 & (-113));
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setWeightSum(float f2) {
        this.mWeightSum = Math.max(0.0f, f2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i2 = this.mOrientation;
        if (i2 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i2 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "NONE"), @ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = Gravity.START, to = "START"), @ViewDebug.IntToString(from = Gravity.END, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        @ViewDebug.ExportedProperty(category = "layout")
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.LinearLayout_Layout);
            this.weight = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            return str + "LinearLayout.LayoutParams={width=" + ViewGroup.LayoutParams.sizeToString(this.width) + ", height=" + ViewGroup.LayoutParams.sizeToString(this.height) + " weight=" + this.weight + "}";
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(i2, i3);
            this.gravity = -1;
            this.weight = f2;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }

    public LinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.LinearLayout, i2, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(2, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.mWeightSum = typedArrayObtainStyledAttributes.getFloat(4, -1.0f);
        this.mBaselineAlignedChildIndex = typedArrayObtainStyledAttributes.getInt(3, -1);
        this.mUseLargestChild = typedArrayObtainStyledAttributes.getBoolean(6, false);
        setDividerDrawable(typedArrayObtainStyledAttributes.getDrawable(5));
        this.mShowDividers = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.mDividerPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
