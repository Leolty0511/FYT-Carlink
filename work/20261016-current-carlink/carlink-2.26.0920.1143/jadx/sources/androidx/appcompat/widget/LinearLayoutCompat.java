package androidx.appcompat.widget;

import android.app.m;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
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
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface DividerMode {
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(i2, i3, f2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
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

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i2;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
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

    void drawDividersVertical(Canvas canvas) {
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

    void drawHorizontalDivider(Canvas canvas, int i2) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i2, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i2);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i2) {
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
        int iB = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i2 = this.mGravity & 112) != 48) {
            if (i2 == 16) {
                iB = m.b(((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom(), this.mTotalLength, 2, iB);
            } else if (i2 == 80) {
                iB = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return iB + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i2) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @GravityInt
    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i2) {
        return getChildAt(i2);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
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

    /* JADX WARN: Code duplicated, block: B:30:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00db  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f5  */
    void layoutHorizontal(int i2, int i3, int i4, int i5) {
        int iB;
        int i6;
        int i7;
        int i8;
        int baseline;
        int i9;
        int i10;
        int iB2;
        int childrenSkipCount;
        int i11;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i12 = i5 - i3;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.mGravity;
        int i14 = i13 & 112;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i13, ViewCompat.getLayoutDirection(this));
        int i15 = 1;
        if (absoluteGravity != 1) {
            iB = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i4) - i2) - this.mTotalLength;
        } else {
            iB = m.b(i4 - i2, this.mTotalLength, 2, getPaddingLeft());
        }
        if (zIsLayoutRtl) {
            i15 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i6 = 0;
        }
        int i16 = i15;
        int i17 = 0;
        while (i17 < virtualChildCount) {
            int i18 = (i16 * i17) + i6;
            View virtualChildAt = getVirtualChildAt(i18);
            if (virtualChildAt == null) {
                iB += measureNullChild(i18);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    if (z2) {
                        i7 = i17;
                        i8 = virtualChildCount;
                        baseline = layoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                        i9 = layoutParams.gravity;
                        if (i9 < 0) {
                            i9 = i14;
                        }
                        i10 = i9 & 112;
                        if (i10 != 16) {
                            iB2 = (m.b(paddingBottom2, measuredHeight, 2, paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        } else if (i10 != 48) {
                            i11 = layoutParams.topMargin + paddingTop;
                            if (baseline != -1) {
                                iB2 = (iArr[1] - baseline) + i11;
                            } else {
                                iB2 = i11;
                            }
                        } else if (i10 != 80) {
                            iB2 = paddingTop;
                        } else {
                            iB2 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                            if (baseline != -1) {
                                iB2 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        if (hasDividerBeforeChildAt(i18)) {
                            iB += this.mDividerWidth;
                        }
                        int i19 = layoutParams.leftMargin + iB;
                        setChildFrame(virtualChildAt, i19 + getLocationOffset(virtualChildAt), iB2, measuredWidth, measuredHeight);
                        int nextLocationOffset = measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt) + i19;
                        childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i18);
                        iB = nextLocationOffset;
                    } else {
                        i7 = i17;
                        i8 = virtualChildCount;
                    }
                    i9 = layoutParams.gravity;
                    if (i9 < 0) {
                        i9 = i14;
                    }
                    i10 = i9 & 112;
                    if (i10 != 16) {
                        iB2 = (m.b(paddingBottom2, measuredHeight, 2, paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    } else if (i10 != 48) {
                        i11 = layoutParams.topMargin + paddingTop;
                        if (baseline != -1) {
                            iB2 = (iArr[1] - baseline) + i11;
                        } else {
                            iB2 = i11;
                        }
                    } else if (i10 != 80) {
                        iB2 = paddingTop;
                    } else {
                        iB2 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                        if (baseline != -1) {
                            iB2 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                        }
                    }
                    if (hasDividerBeforeChildAt(i18)) {
                        iB += this.mDividerWidth;
                    }
                    int i110 = layoutParams.leftMargin + iB;
                    setChildFrame(virtualChildAt, i110 + getLocationOffset(virtualChildAt), iB2, measuredWidth, measuredHeight);
                    int nextLocationOffset2 = measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt) + i110;
                    childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i18);
                    iB = nextLocationOffset2;
                }
                i17 = childrenSkipCount + 1;
                virtualChildCount = i8;
                i14 = i14;
                paddingTop = paddingTop;
                paddingBottom = paddingBottom;
            }
            i8 = virtualChildCount;
            childrenSkipCount = i17;
            i17 = childrenSkipCount + 1;
            virtualChildCount = i8;
            i14 = i14;
            paddingTop = paddingTop;
            paddingBottom = paddingBottom;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a0  */
    void layoutVertical(int i2, int i3, int i4, int i5) {
        int iB;
        int iB2;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i4 - i2;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & 112;
        int i11 = i9 & 8388615;
        if (i10 != 16) {
            iB = i10 != 80 ? getPaddingTop() : ((getPaddingTop() + i5) - i3) - this.mTotalLength;
        } else {
            iB = m.b(i5 - i3, this.mTotalLength, 2, getPaddingTop());
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            int i12 = 1;
            if (virtualChildAt == null) {
                iB += measureNullChild(childrenSkipCount);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i13 = layoutParams.gravity;
                if (i13 < 0) {
                    i13 = i11;
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i13, ViewCompat.getLayoutDirection(this)) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i7 = layoutParams.leftMargin + paddingLeft;
                    } else {
                        iB2 = paddingRight - measuredWidth;
                        i6 = layoutParams.rightMargin;
                    }
                    int i14 = i7;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        iB += this.mDividerHeight;
                    }
                    int i15 = iB + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i14, i15 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt) + i15;
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    i12 = 1;
                    iB = nextLocationOffset;
                } else {
                    iB2 = m.b(paddingRight2, measuredWidth, 2, paddingLeft) + layoutParams.leftMargin;
                    i6 = layoutParams.rightMargin;
                }
                i7 = iB2 - i6;
                int i16 = i7;
                if (hasDividerBeforeChildAt(childrenSkipCount)) {
                    iB += this.mDividerHeight;
                }
                int i17 = iB + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i16, i17 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset2 = measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt) + i17;
                childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                i12 = 1;
                iB = nextLocationOffset2;
            }
            childrenSkipCount += i12;
        }
    }

    void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        measureChildWithMargins(view, i3, i4, i5, i6);
    }

    /* JADX WARN: Code duplicated, block: B:197:0x0454  */
    /* JADX WARN: Code duplicated, block: B:60:0x0177  */
    /* JADX WARN: Code duplicated, block: B:67:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:84:0x01dd  */
    void measureHorizontal(int i2, int i3) {
        int[] iArr;
        int i4;
        int iMax;
        int iMax2;
        int i5;
        int i6;
        int baseline;
        int i7;
        int i8;
        byte b2;
        int i9;
        int i10;
        boolean z2;
        boolean z3;
        View view;
        int i11;
        boolean z4;
        int i12;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i13;
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
        int i14 = 1073741824;
        boolean z7 = mode == 1073741824;
        int childrenSkipCount2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        int iMax6 = 0;
        boolean z8 = false;
        int iCombineMeasuredStates = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f2 = 0.0f;
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
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f3 = layoutParams.weight;
                    float f4 = f2 + f3;
                    if (mode == i14 && layoutParams.width == 0 && f3 > 0.0f) {
                        if (z7) {
                            this.mTotalLength = layoutParams.leftMargin + layoutParams.rightMargin + this.mTotalLength;
                        } else {
                            int i15 = this.mTotalLength;
                            this.mTotalLength = Math.max(i15, layoutParams.leftMargin + i15 + layoutParams.rightMargin);
                        }
                        if (z5) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                            i10 = childrenSkipCount2;
                            z2 = z6;
                            z3 = z5;
                            view = virtualChildAt;
                        } else {
                            i10 = childrenSkipCount2;
                            z2 = z6;
                            z3 = z5;
                            view = virtualChildAt;
                            z8 = true;
                            i11 = 1073741824;
                        }
                        if (mode2 == i11 && layoutParams.height == -1) {
                            z4 = true;
                            z9 = true;
                        } else {
                            z4 = false;
                        }
                        i12 = layoutParams.topMargin + layoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i12;
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        if (z3 && (baseline2 = view.getBaseline()) != -1) {
                            i13 = layoutParams.gravity;
                            if (i13 < 0) {
                                i13 = this.mGravity;
                            }
                            int i16 = (((i13 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i16] = Math.max(iArr2[i16], baseline2);
                            iArr[i16] = Math.max(iArr[i16], measuredHeight - baseline2);
                        }
                        iMax4 = Math.max(iMax4, measuredHeight);
                        if (z10 || layoutParams.height != -1) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        if (layoutParams.weight > 0.0f) {
                            if (!z4) {
                                i12 = measuredHeight;
                            }
                            iMax6 = Math.max(iMax6, i12);
                        } else {
                            int i17 = iMax6;
                            if (!z4) {
                                i12 = measuredHeight;
                            }
                            iMax5 = Math.max(iMax5, i12);
                            iMax6 = i17;
                        }
                        int i18 = i10;
                        childrenSkipCount = getChildrenSkipCount(view, i18) + i18;
                        f2 = f4;
                    } else {
                        if (layoutParams.width != 0 || f3 <= 0.0f) {
                            b2 = -2;
                            i9 = Integer.MIN_VALUE;
                        } else {
                            b2 = -2;
                            layoutParams.width = -2;
                            i9 = 0;
                        }
                        i10 = childrenSkipCount2;
                        int i19 = i9;
                        z2 = z6;
                        z3 = z5;
                        measureChildBeforeLayout(virtualChildAt, i10, i2, f4 == 0.0f ? this.mTotalLength : 0, i3, 0);
                        if (i19 != Integer.MIN_VALUE) {
                            layoutParams.width = i19;
                        }
                        int measuredWidth = virtualChildAt.getMeasuredWidth();
                        if (z7) {
                            view = virtualChildAt;
                            this.mTotalLength = layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view) + this.mTotalLength;
                        } else {
                            view = virtualChildAt;
                            int i20 = this.mTotalLength;
                            this.mTotalLength = Math.max(i20, i20 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                        }
                        if (z2) {
                            iMax3 = Math.max(measuredWidth, iMax3);
                        }
                    }
                    i11 = 1073741824;
                    if (mode2 == i11) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    i12 = layoutParams.topMargin + layoutParams.bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i12;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z3) {
                        i13 = layoutParams.gravity;
                        if (i13 < 0) {
                            i13 = this.mGravity;
                        }
                        int i110 = (((i13 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i110] = Math.max(iArr2[i110], baseline2);
                        iArr[i110] = Math.max(iArr[i110], measuredHeight - baseline2);
                    }
                    iMax4 = Math.max(iMax4, measuredHeight);
                    if (z10) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    if (layoutParams.weight > 0.0f) {
                        if (!z4) {
                            i12 = measuredHeight;
                        }
                        iMax6 = Math.max(iMax6, i12);
                    } else {
                        int i111 = iMax6;
                        if (!z4) {
                            i12 = measuredHeight;
                        }
                        iMax5 = Math.max(iMax5, i12);
                        iMax6 = i111;
                    }
                    int i112 = i10;
                    childrenSkipCount = getChildrenSkipCount(view, i112) + i112;
                    f2 = f4;
                }
                int i21 = childrenSkipCount + 1;
                iArr3 = iArr;
                z6 = z2;
                z5 = z3;
                i14 = i11;
                childrenSkipCount2 = i21;
            }
            z2 = z6;
            z3 = z5;
            int i22 = i14;
            childrenSkipCount = childrenSkipCount2;
            i11 = i22;
            int i23 = childrenSkipCount + 1;
            iArr3 = iArr;
            z6 = z2;
            z5 = z3;
            i14 = i11;
            childrenSkipCount2 = i23;
        }
        boolean z11 = z6;
        boolean z12 = z5;
        int i24 = iMax4;
        int i25 = iMax5;
        int i26 = iMax6;
        int i27 = iCombineMeasuredStates;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i28 = iArr2[1];
        int iMax7 = (i28 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i24 : Math.max(i24, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i28, iArr2[2]))));
        if (z11 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount3 = 0;
            while (childrenSkipCount3 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount3);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount3);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount3 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount3);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z7) {
                        this.mTotalLength = layoutParams2.leftMargin + iMax3 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2) + this.mTotalLength;
                    } else {
                        int i29 = this.mTotalLength;
                        this.mTotalLength = Math.max(i29, i29 + iMax3 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    childrenSkipCount3++;
                    iMax7 = iMax7;
                }
                childrenSkipCount3++;
                iMax7 = iMax7;
            }
        }
        int i30 = iMax7;
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
        this.mTotalLength = paddingRight;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, 0);
        int i31 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z8 || (i31 != 0 && f2 > 0.0f)) {
            float f5 = this.mWeightSum;
            if (f5 > 0.0f) {
                f2 = f5;
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
            int i32 = i25;
            int iMax8 = -1;
            int iCombineMeasuredStates2 = i27;
            int i33 = 0;
            while (i33 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i33);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i5 = i31;
                    virtualChildCount = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f6 = layoutParams3.weight;
                    if (f6 > 0.0f) {
                        int i34 = (int) ((i31 * f6) / f2);
                        float f7 = f2 - f6;
                        int i35 = i31 - i34;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0) {
                            i8 = 1073741824;
                            if (mode == 1073741824) {
                                if (i34 <= 0) {
                                    i34 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i34, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-16777216));
                            f2 = f7;
                            i5 = i35;
                        } else {
                            i8 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i34;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i8), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-16777216));
                        f2 = f7;
                        i5 = i35;
                    } else {
                        i5 = i31;
                    }
                    if (z7) {
                        this.mTotalLength = virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3) + this.mTotalLength;
                    } else {
                        int i36 = this.mTotalLength;
                        this.mTotalLength = Math.max(i36, virtualChildAt3.getMeasuredWidth() + i36 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i37 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i37;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z13) {
                        i37 = measuredHeight2;
                    }
                    int iMax9 = Math.max(i32, i37);
                    if (z10) {
                        i6 = -1;
                        boolean z14 = layoutParams3.height == -1;
                        if (z12 && (baseline = virtualChildAt3.getBaseline()) != i6) {
                            i7 = layoutParams3.gravity;
                            if (i7 < 0) {
                                i7 = this.mGravity;
                            }
                            int i38 = (((i7 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i38] = Math.max(iArr2[i38], baseline);
                            iArr[i38] = Math.max(iArr[i38], measuredHeight2 - baseline);
                        }
                        z10 = z14;
                        i32 = iMax9;
                        f2 = f2;
                    } else {
                        i6 = -1;
                    }
                    if (z12) {
                        i7 = layoutParams3.gravity;
                        if (i7 < 0) {
                            i7 = this.mGravity;
                        }
                        int i39 = (((i7 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i39] = Math.max(iArr2[i39], baseline);
                        iArr[i39] = Math.max(iArr[i39], measuredHeight2 - baseline);
                    }
                    z10 = z14;
                    i32 = iMax9;
                    f2 = f2;
                }
                i33++;
                i31 = i5;
                virtualChildCount = virtualChildCount;
            }
            i4 = virtualChildCount;
            this.mTotalLength = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
            int i40 = iArr2[1];
            iMax = (i40 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i40, iArr2[2]))));
            iMax2 = i32;
            i27 = iCombineMeasuredStates2;
        } else {
            iMax2 = Math.max(i25, i26);
            if (z11 && mode != 1073741824) {
                for (int i41 = 0; i41 < virtualChildCount; i41++) {
                    View virtualChildAt4 = getVirtualChildAt(i41);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax3, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i4 = virtualChildCount;
            iMax = i30;
        }
        if (z10 || mode2 == 1073741824) {
            iMax2 = iMax;
        }
        setMeasuredDimension(iResolveSizeAndState | (i27 & (-16777216)), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax2, getSuggestedMinimumHeight()), i3, i27 << 16));
        if (z9) {
            forceUniformHeight(i4, i2);
        }
    }

    int measureNullChild(int i2) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0327  */
    /* JADX WARN: Code duplicated, block: B:156:0x0335  */
    void measureVertical(int i2, int i3) {
        int i4;
        int iCombineMeasuredStates;
        int iMax;
        int i5;
        int i6;
        int i7;
        boolean z2;
        boolean z3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        View view;
        int iMax2;
        boolean z4;
        int iMax3;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i17 = this.mBaselineAlignedChildIndex;
        boolean z5 = this.mUseLargestChild;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int iMax4 = 0;
        int i21 = 0;
        int childrenSkipCount = 0;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = true;
        float f2 = 0.0f;
        while (true) {
            int i22 = 8;
            int i23 = iMax4;
            if (childrenSkipCount >= virtualChildCount) {
                int i24 = i18;
                int i25 = i20;
                int i26 = i21;
                int i27 = virtualChildCount;
                int i28 = mode2;
                int iMax5 = i19;
                if (this.mTotalLength > 0) {
                    i4 = i27;
                    if (hasDividerBeforeChildAt(i4)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i4 = i27;
                }
                if (z5 && (i28 == Integer.MIN_VALUE || i28 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i4) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength += measureNullChild(childrenSkipCount2);
                        } else if (virtualChildAt.getVisibility() == i22) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                            int i29 = this.mTotalLength;
                            this.mTotalLength = Math.max(i29, i29 + i25 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                        }
                        childrenSkipCount2++;
                        i22 = 8;
                    }
                }
                int paddingBottom = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                this.mTotalLength = paddingBottom;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, 0);
                int i30 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z6 || (i30 != 0 && f2 > 0.0f)) {
                    float f3 = this.mWeightSum;
                    if (f3 > 0.0f) {
                        f2 = f3;
                    }
                    this.mTotalLength = 0;
                    int i31 = i30;
                    int i32 = i26;
                    iCombineMeasuredStates = i24;
                    int i33 = 0;
                    while (i33 < i4) {
                        View virtualChildAt2 = getVirtualChildAt(i33);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i5 = i31;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f4 = layoutParams2.weight;
                            if (f4 > 0.0f) {
                                int i34 = (int) ((i31 * f4) / f2);
                                float f5 = f2 - f4;
                                i5 = i31 - i34;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width);
                                if (layoutParams2.height == 0) {
                                    i8 = 1073741824;
                                    if (i28 == 1073741824) {
                                        if (i34 <= 0) {
                                            i34 = 0;
                                        }
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i34, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & (-256));
                                    f2 = f5;
                                } else {
                                    i8 = 1073741824;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i34;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i8));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & (-256));
                                f2 = f5;
                            } else {
                                i5 = i31;
                            }
                            int i35 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i35;
                            iMax5 = Math.max(iMax5, measuredWidth);
                            float f6 = f2;
                            if (mode != 1073741824) {
                                i6 = iCombineMeasuredStates;
                                i7 = -1;
                                z2 = layoutParams2.width == -1;
                                if (!z2) {
                                    i35 = measuredWidth;
                                }
                                int iMax6 = Math.max(i32, i35);
                                if (z8 || layoutParams2.width != i7) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                int i36 = this.mTotalLength;
                                this.mTotalLength = Math.max(i36, virtualChildAt2.getMeasuredHeight() + i36 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                                z8 = z3;
                                iCombineMeasuredStates = i6;
                                i32 = iMax6;
                                f2 = f6;
                            } else {
                                i6 = iCombineMeasuredStates;
                                i7 = -1;
                            }
                            if (!z2) {
                                i35 = measuredWidth;
                            }
                            int iMax7 = Math.max(i32, i35);
                            if (z8) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                            int i37 = this.mTotalLength;
                            this.mTotalLength = Math.max(i37, virtualChildAt2.getMeasuredHeight() + i37 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                            z8 = z3;
                            iCombineMeasuredStates = i6;
                            i32 = iMax7;
                            f2 = f6;
                        }
                        i33++;
                        i31 = i5;
                    }
                    this.mTotalLength = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                    iMax = i32;
                } else {
                    iMax = Math.max(i26, i23);
                    if (z5 && i28 != 1073741824) {
                        for (int i38 = 0; i38 < i4; i38++) {
                            View virtualChildAt3 = getVirtualChildAt(i38);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i25, 1073741824));
                            }
                        }
                    }
                    iCombineMeasuredStates = i24;
                }
                if (z8 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates), iResolveSizeAndState);
                if (z7) {
                    forceUniformWidth(i4, i3);
                    return;
                }
                return;
            }
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
                i12 = virtualChildCount;
                i13 = mode2;
                iMax4 = i23;
            } else {
                int i39 = i18;
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                    i12 = virtualChildCount;
                    iMax4 = i23;
                    i18 = i39;
                    i13 = mode2;
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f7 = layoutParams3.weight;
                    float f8 = f2 + f7;
                    if (mode2 == 1073741824 && layoutParams3.height == 0 && f7 > 0.0f) {
                        int i40 = this.mTotalLength;
                        this.mTotalLength = Math.max(i40, layoutParams3.topMargin + i40 + layoutParams3.bottomMargin);
                        iMax2 = i20;
                        view = virtualChildAt4;
                        i15 = i21;
                        z6 = true;
                        i10 = i39;
                        i11 = i19;
                        i12 = virtualChildCount;
                        i13 = mode2;
                        i14 = i23;
                        i16 = childrenSkipCount;
                    } else {
                        int i41 = i19;
                        if (layoutParams3.height != 0 || f7 <= 0.0f) {
                            i9 = Integer.MIN_VALUE;
                        } else {
                            layoutParams3.height = -2;
                            i9 = 0;
                        }
                        i10 = i39;
                        int i42 = i9;
                        i11 = i41;
                        int i43 = i20;
                        i12 = virtualChildCount;
                        i13 = mode2;
                        i14 = i23;
                        i15 = i21;
                        i16 = childrenSkipCount;
                        measureChildBeforeLayout(virtualChildAt4, childrenSkipCount, i2, 0, i3, f8 == 0.0f ? this.mTotalLength : 0);
                        if (i42 != Integer.MIN_VALUE) {
                            layoutParams3.height = i42;
                        }
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight();
                        int i44 = this.mTotalLength;
                        view = virtualChildAt4;
                        this.mTotalLength = Math.max(i44, i44 + measuredHeight2 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(view));
                        iMax2 = z5 ? Math.max(measuredHeight2, i43) : i43;
                    }
                    if (i17 >= 0 && i17 == i16 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i16 < i17 && layoutParams3.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || layoutParams3.width != -1) {
                        z4 = false;
                    } else {
                        z4 = true;
                        z7 = true;
                    }
                    int i45 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i45;
                    int iMax8 = Math.max(i11, measuredWidth2);
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i10, view.getMeasuredState());
                    z8 = z8 && layoutParams3.width == -1;
                    if (layoutParams3.weight > 0.0f) {
                        if (!z4) {
                            i45 = measuredWidth2;
                        }
                        iMax4 = Math.max(i14, i45);
                        iMax3 = i15;
                    } else {
                        if (!z4) {
                            i45 = measuredWidth2;
                        }
                        iMax3 = Math.max(i15, i45);
                        iMax4 = i14;
                    }
                    int childrenSkipCount3 = getChildrenSkipCount(view, i16) + i16;
                    i20 = iMax2;
                    f2 = f8;
                    i21 = iMax3;
                    i18 = iCombineMeasuredStates2;
                    childrenSkipCount = childrenSkipCount3;
                    i19 = iMax8;
                }
            }
            childrenSkipCount++;
            mode2 = i13;
            virtualChildCount = i12;
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
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
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

    public void setBaselineAligned(boolean z2) {
        this.mBaselineAligned = z2;
    }

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

    public void setGravity(@GravityInt int i2) {
        if (this.mGravity != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.mGravity;
        if ((8388615 & i4) != i3) {
            this.mGravity = i3 | ((-8388616) & i4);
            requestLayout();
        }
    }

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

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.mGravity;
        if ((i4 & 112) != i3) {
            this.mGravity = i3 | (i4 & PackageManager.INSTALL_FAILED_NO_MATCHING_ABIS);
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.mWeightSum = Math.max(0.0f, f2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
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

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = BadgeDrawable.TOP_START;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R.styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z2 = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
