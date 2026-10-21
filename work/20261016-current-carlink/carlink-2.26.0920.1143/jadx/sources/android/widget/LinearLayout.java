package android.widget;

import android.app.m;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.media.TtmlUtils;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import com.android.internal.R;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
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
    private final boolean mAllowInconsistentMeasurement;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private boolean mBaselineAligned;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private int mBaselineAlignedChildIndex;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(equals = -1, mask = -1, name = KeyProperties.DIGEST_NONE), @ViewDebug.FlagToString(equals = 0, mask = 0, name = KeyProperties.DIGEST_NONE), @ViewDebug.FlagToString(equals = 48, mask = 48, name = "TOP"), @ViewDebug.FlagToString(equals = 80, mask = 80, name = "BOTTOM"), @ViewDebug.FlagToString(equals = 3, mask = 3, name = "LEFT"), @ViewDebug.FlagToString(equals = 5, mask = 5, name = "RIGHT"), @ViewDebug.FlagToString(equals = 8388611, mask = 8388611, name = "START"), @ViewDebug.FlagToString(equals = 8388613, mask = 8388613, name = "END"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "CENTER_VERTICAL"), @ViewDebug.FlagToString(equals = 112, mask = 112, name = "FILL_VERTICAL"), @ViewDebug.FlagToString(equals = 1, mask = 1, name = "CENTER_HORIZONTAL"), @ViewDebug.FlagToString(equals = 7, mask = 7, name = "FILL_HORIZONTAL"), @ViewDebug.FlagToString(equals = 17, mask = 17, name = "CENTER"), @ViewDebug.FlagToString(equals = 119, mask = 119, name = "FILL"), @ViewDebug.FlagToString(equals = 8388608, mask = 8388608, name = "RELATIVE")}, formatToHexString = true)
    private int mGravity;
    private int mLayoutDirection;
    private int[] mMaxAscent;
    private int[] mMaxDescent;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mOrientation;
    private int mShowDividers;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mTotalLength;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private boolean mUseLargestChild;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayout(Context context) {
        this(context, null);
    }

    private boolean allViewsAreGoneBefore(int i2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void forceUniformHeight(int i2, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
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
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
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

    private View getLastNonGoneChild() {
        for (int virtualChildCount = getVirtualChildCount() - 1; virtualChildCount >= 0; virtualChildCount--) {
            View virtualChildAt = getVirtualChildAt(virtualChildCount);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                return virtualChildAt;
            }
        }
        return null;
    }

    private boolean isShowingDividers() {
        return (this.mShowDividers == 0 || this.mDivider == null) ? false : true;
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
        boolean zIsLayoutRtl = isLayoutRtl();
        for (int i3 = 0; i3 < virtualChildCount; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i3)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + layoutParams.rightMargin : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View lastNonGoneChild = getLastNonGoneChild();
            if (lastNonGoneChild != null) {
                LayoutParams layoutParams2 = (LayoutParams) lastNonGoneChild.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = lastNonGoneChild.getLeft() - layoutParams2.leftMargin;
                    i2 = this.mDividerWidth;
                    right = left - i2;
                } else {
                    right = lastNonGoneChild.getRight() + layoutParams2.rightMargin;
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
            View lastNonGoneChild = getLastNonGoneChild();
            drawHorizontalDivider(canvas, lastNonGoneChild == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : lastNonGoneChild.getBottom() + ((LayoutParams) lastNonGoneChild.getLayoutParams()).bottomMargin);
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

    @Override // android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("layout:baselineAligned", this.mBaselineAligned);
        viewHierarchyEncoder.addProperty("layout:baselineAlignedChildIndex", this.mBaselineAlignedChildIndex);
        viewHierarchyEncoder.addProperty("measurement:baselineChildTop", this.mBaselineChildTop);
        viewHierarchyEncoder.addProperty("measurement:orientation", this.mOrientation);
        viewHierarchyEncoder.addProperty("measurement:gravity", this.mGravity);
        viewHierarchyEncoder.addProperty("measurement:totalLength", this.mTotalLength);
        viewHierarchyEncoder.addProperty("layout:totalLength", this.mTotalLength);
        viewHierarchyEncoder.addProperty("layout:useLargestChild", this.mUseLargestChild);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return LinearLayout.class.getName();
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
                iB = m.b(((this.mBottom - this.mTop) - this.mPaddingTop) - this.mPaddingBottom, this.mTotalLength, 2, iB);
            } else if (i2 == 80) {
                iB = ((this.mBottom - this.mTop) - this.mPaddingBottom) - this.mTotalLength;
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

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

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

    public boolean hasDividerBeforeChildAt(int i2) {
        if (i2 == getVirtualChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if (allViewsAreGoneBefore(i2)) {
            return (this.mShowDividers & 1) != 0;
        }
        return (this.mShowDividers & 2) != 0;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
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
        boolean zIsLayoutRtl = isLayoutRtl();
        int i12 = this.mPaddingTop;
        int i13 = i5 - i3;
        int i14 = this.mPaddingBottom;
        int i15 = i13 - i14;
        int i16 = (i13 - i12) - i14;
        int virtualChildCount = getVirtualChildCount();
        int i17 = this.mGravity;
        int i18 = i17 & 112;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = Gravity.getAbsoluteGravity(8388615 & i17, getLayoutDirection());
        int i19 = 1;
        if (absoluteGravity != 1) {
            iB = absoluteGravity != 5 ? this.mPaddingLeft : ((this.mPaddingLeft + i4) - i2) - this.mTotalLength;
        } else {
            iB = m.b(i4 - i2, this.mTotalLength, 2, this.mPaddingLeft);
        }
        if (zIsLayoutRtl) {
            i19 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i6 = 0;
        }
        int i20 = i19;
        int i21 = 0;
        while (i21 < virtualChildCount) {
            int i22 = (i20 * i21) + i6;
            View virtualChildAt = getVirtualChildAt(i22);
            if (virtualChildAt == null) {
                iB += measureNullChild(i22);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    if (z2) {
                        i7 = i21;
                        i8 = virtualChildCount;
                        baseline = layoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                        i9 = layoutParams.gravity;
                        if (i9 < 0) {
                            i9 = i18;
                        }
                        i10 = i9 & 112;
                        if (i10 != 16) {
                            iB2 = (m.b(i16, measuredHeight, 2, i12) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        } else if (i10 != 48) {
                            i11 = layoutParams.topMargin + i12;
                            if (baseline != -1) {
                                iB2 = (iArr[1] - baseline) + i11;
                            } else {
                                iB2 = i11;
                            }
                        } else if (i10 != 80) {
                            iB2 = i12;
                        } else {
                            iB2 = (i15 - measuredHeight) - layoutParams.bottomMargin;
                            if (baseline != -1) {
                                iB2 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        if (hasDividerBeforeChildAt(i22)) {
                            iB += this.mDividerWidth;
                        }
                        int i23 = layoutParams.leftMargin + iB;
                        setChildFrame(virtualChildAt, i23 + getLocationOffset(virtualChildAt), iB2, measuredWidth, measuredHeight);
                        int nextLocationOffset = measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt) + i23;
                        childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i22);
                        iB = nextLocationOffset;
                    } else {
                        i7 = i21;
                        i8 = virtualChildCount;
                    }
                    i9 = layoutParams.gravity;
                    if (i9 < 0) {
                        i9 = i18;
                    }
                    i10 = i9 & 112;
                    if (i10 != 16) {
                        iB2 = (m.b(i16, measuredHeight, 2, i12) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    } else if (i10 != 48) {
                        i11 = layoutParams.topMargin + i12;
                        if (baseline != -1) {
                            iB2 = (iArr[1] - baseline) + i11;
                        } else {
                            iB2 = i11;
                        }
                    } else if (i10 != 80) {
                        iB2 = i12;
                    } else {
                        iB2 = (i15 - measuredHeight) - layoutParams.bottomMargin;
                        if (baseline != -1) {
                            iB2 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                        }
                    }
                    if (hasDividerBeforeChildAt(i22)) {
                        iB += this.mDividerWidth;
                    }
                    int i24 = layoutParams.leftMargin + iB;
                    setChildFrame(virtualChildAt, i24 + getLocationOffset(virtualChildAt), iB2, measuredWidth, measuredHeight);
                    int nextLocationOffset2 = measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt) + i24;
                    childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i22);
                    iB = nextLocationOffset2;
                }
                i21 = childrenSkipCount + 1;
                virtualChildCount = i8;
                i18 = i18;
                i12 = i12;
                i15 = i15;
            }
            i8 = virtualChildCount;
            childrenSkipCount = i21;
            i21 = childrenSkipCount + 1;
            virtualChildCount = i8;
            i18 = i18;
            i12 = i12;
            i15 = i15;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0092  */
    void layoutVertical(int i2, int i3, int i4, int i5) {
        int iB;
        int iB2;
        int i6;
        int i7;
        int i8 = this.mPaddingLeft;
        int i9 = i4 - i2;
        int i10 = this.mPaddingRight;
        int i11 = i9 - i10;
        int i12 = (i9 - i8) - i10;
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.mGravity;
        int i14 = i13 & 112;
        int i15 = i13 & 8388615;
        if (i14 != 16) {
            iB = i14 != 80 ? this.mPaddingTop : ((this.mPaddingTop + i5) - i3) - this.mTotalLength;
        } else {
            iB = m.b(i5 - i3, this.mTotalLength, 2, this.mPaddingTop);
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            int i16 = 1;
            if (virtualChildAt == null) {
                iB += measureNullChild(childrenSkipCount);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i17 = layoutParams.gravity;
                if (i17 < 0) {
                    i17 = i15;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i17, getLayoutDirection()) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i7 = layoutParams.leftMargin + i8;
                    } else {
                        iB2 = i11 - measuredWidth;
                        i6 = layoutParams.rightMargin;
                    }
                    int i18 = i7;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        iB += this.mDividerHeight;
                    }
                    int i19 = iB + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i18, i19 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt) + i19;
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    i16 = 1;
                    iB = nextLocationOffset;
                } else {
                    iB2 = m.b(i12, measuredWidth, 2, i8) + layoutParams.leftMargin;
                    i6 = layoutParams.rightMargin;
                }
                i7 = iB2 - i6;
                int i110 = i7;
                if (hasDividerBeforeChildAt(childrenSkipCount)) {
                    iB += this.mDividerHeight;
                }
                int i111 = iB + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i110, i111 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset2 = measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt) + i111;
                childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                i16 = 1;
                iB = nextLocationOffset2;
            }
            childrenSkipCount += i16;
        }
    }

    void measureChildBeforeLayout(View view, int i2, int i3, int i4, int i5, int i6) {
        measureChildWithMargins(view, i3, i4, i5, i6);
    }

    /* JADX WARN: Code duplicated, block: B:162:0x038f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0393  */
    /* JADX WARN: Code duplicated, block: B:166:0x0397  */
    /* JADX WARN: Code duplicated, block: B:169:0x039c  */
    /* JADX WARN: Code duplicated, block: B:170:0x039f  */
    /* JADX WARN: Code duplicated, block: B:200:0x044c  */
    /* JADX WARN: Code duplicated, block: B:66:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:73:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:76:0x01dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ed  */
    void measureHorizontal(int i2, int i3) {
        int[] iArr;
        int iMax;
        int i4;
        int i5;
        int i6;
        int baseline;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        int measuredHeight;
        int baseline2;
        int i12;
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
        int i13 = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z3 = this.mBaselineAligned;
        boolean z4 = this.mUseLargestChild;
        int i14 = 1073741824;
        boolean z5 = mode == 1073741824;
        int childrenSkipCount = 0;
        int i15 = 0;
        int iMax2 = 0;
        int i16 = 0;
        boolean z6 = false;
        int iMax3 = 0;
        int iMax4 = 0;
        int iCombineMeasuredStates = 0;
        boolean z7 = false;
        boolean z8 = true;
        float f2 = 0.0f;
        int iMax5 = Integer.MIN_VALUE;
        while (true) {
            iArr = iArr3;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
                z4 = z4;
                z3 = z3;
                i10 = i13;
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                z4 = z4;
                z3 = z3;
                i10 = -1;
            } else {
                i15++;
                if (hasDividerBeforeChildAt(childrenSkipCount)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f3 = layoutParams.weight;
                f2 += f3;
                boolean z9 = layoutParams.width == 0 && f3 > 0.0f;
                if (mode == i14 && z9) {
                    if (z5) {
                        this.mTotalLength = layoutParams.leftMargin + layoutParams.rightMargin + this.mTotalLength;
                    } else {
                        int i17 = this.mTotalLength;
                        this.mTotalLength = Math.max(i17, layoutParams.leftMargin + i17 + layoutParams.rightMargin);
                    }
                    if (z3) {
                        virtualChildAt.measure(View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i2), 0), View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i3), 0));
                    } else {
                        z6 = true;
                    }
                    i9 = 1073741824;
                } else {
                    if (z9) {
                        layoutParams.width = -2;
                    }
                    childrenSkipCount = childrenSkipCount;
                    z4 = z4;
                    z3 = z3;
                    layoutParams = layoutParams;
                    measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i2, f2 == 0.0f ? this.mTotalLength : 0, i3, 0);
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z9) {
                        layoutParams.width = 0;
                        i16 += measuredWidth;
                    }
                    if (z5) {
                        virtualChildAt = virtualChildAt;
                        this.mTotalLength = layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt) + this.mTotalLength;
                    } else {
                        virtualChildAt = virtualChildAt;
                        int i18 = this.mTotalLength;
                        this.mTotalLength = Math.max(i18, i18 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt));
                    }
                    if (z4) {
                        iMax5 = Math.max(measuredWidth, iMax5);
                    }
                    i9 = 1073741824;
                }
                if (mode2 != i9) {
                    i10 = -1;
                    if (layoutParams.height == -1) {
                        z2 = true;
                        z7 = true;
                    }
                    i11 = layoutParams.topMargin + layoutParams.bottomMargin;
                    measuredHeight = virtualChildAt.getMeasuredHeight() + i11;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt.getMeasuredState());
                    if (z3 && (baseline2 = virtualChildAt.getBaseline()) != i10) {
                        i12 = layoutParams.gravity;
                        if (i12 < 0) {
                            i12 = this.mGravity;
                        }
                        int i19 = (((i12 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i19] = Math.max(iArr2[i19], baseline2);
                        iArr[i19] = Math.max(iArr[i19], measuredHeight - baseline2);
                    }
                    iMax2 = Math.max(iMax2, measuredHeight);
                    if (z8 || layoutParams.height != i10) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    if (layoutParams.weight > 0.0f) {
                        if (!z2) {
                            i11 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i11);
                    } else {
                        int i20 = iMax4;
                        if (!z2) {
                            i11 = measuredHeight;
                        }
                        iMax3 = Math.max(iMax3, i11);
                        iMax4 = i20;
                    }
                    int i21 = childrenSkipCount;
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt, i21) + i21;
                } else {
                    i10 = -1;
                }
                z2 = false;
                i11 = layoutParams.topMargin + layoutParams.bottomMargin;
                measuredHeight = virtualChildAt.getMeasuredHeight() + i11;
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt.getMeasuredState());
                if (z3) {
                    i12 = layoutParams.gravity;
                    if (i12 < 0) {
                        i12 = this.mGravity;
                    }
                    int i110 = (((i12 & 112) >> 4) & (-2)) >> 1;
                    iArr2[i110] = Math.max(iArr2[i110], baseline2);
                    iArr[i110] = Math.max(iArr[i110], measuredHeight - baseline2);
                }
                iMax2 = Math.max(iMax2, measuredHeight);
                if (z8) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (layoutParams.weight > 0.0f) {
                    if (!z2) {
                        i11 = measuredHeight;
                    }
                    iMax4 = Math.max(iMax4, i11);
                } else {
                    int i22 = iMax4;
                    if (!z2) {
                        i11 = measuredHeight;
                    }
                    iMax3 = Math.max(iMax3, i11);
                    iMax4 = i22;
                }
                int i23 = childrenSkipCount;
                childrenSkipCount = getChildrenSkipCount(virtualChildAt, i23) + i23;
            }
            childrenSkipCount++;
            i13 = i10;
            iArr3 = iArr;
            z4 = z4;
            z3 = z3;
            i14 = 1073741824;
        }
        boolean z10 = z4;
        boolean z11 = z3;
        int i24 = i13;
        int i25 = iMax2;
        int iMax6 = iMax3;
        int i26 = iMax4;
        int iCombineMeasuredStates2 = iCombineMeasuredStates;
        if (i15 > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i27 = iArr2[1];
        int iMax7 = (i27 == i24 && iArr2[0] == i24 && iArr2[2] == i24 && iArr2[3] == i24) ? i25 : Math.max(i25, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i27, iArr2[2]))));
        if (z10 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount2 = 0;
            while (childrenSkipCount2 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount2);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z5) {
                        this.mTotalLength = layoutParams2.leftMargin + iMax5 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2) + this.mTotalLength;
                    } else {
                        int i28 = this.mTotalLength;
                        this.mTotalLength = Math.max(i28, i28 + iMax5 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                }
                childrenSkipCount2++;
            }
        }
        int i29 = this.mPaddingLeft + this.mPaddingRight + this.mTotalLength;
        this.mTotalLength = i29;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(i29, getSuggestedMinimumWidth()), i2, 0);
        int i30 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (this.mAllowInconsistentMeasurement) {
            i16 = 0;
        }
        int i31 = i30 + i16;
        if (z6 || (i31 != 0 && f2 > 0.0f)) {
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
            int i32 = 0;
            int iMax8 = -1;
            while (i32 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i32);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    mode = mode;
                    i5 = iMax5;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f5 = layoutParams3.weight;
                    if (f5 > 0.0f) {
                        i5 = iMax5;
                        int measuredWidth2 = (int) ((i31 * f5) / f2);
                        int i33 = i31 - measuredWidth2;
                        f2 -= f5;
                        if (this.mUseLargestChild) {
                            i8 = 1073741824;
                            if (mode != 1073741824) {
                                measuredWidth2 = i5;
                            } else {
                                if (layoutParams3.width == 0) {
                                    i8 = 1073741824;
                                } else if (this.mAllowInconsistentMeasurement) {
                                    i8 = 1073741824;
                                    if (mode != 1073741824) {
                                    }
                                } else {
                                    i8 = 1073741824;
                                }
                                measuredWidth2 = virtualChildAt3.getMeasuredWidth() + measuredWidth2;
                            }
                        } else {
                            if (layoutParams3.width == 0) {
                                i8 = 1073741824;
                            } else if (this.mAllowInconsistentMeasurement) {
                                i8 = 1073741824;
                                if (mode != 1073741824) {
                                }
                            } else {
                                i8 = 1073741824;
                            }
                            measuredWidth2 = virtualChildAt3.getMeasuredWidth() + measuredWidth2;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, measuredWidth2), i8), ViewGroup.getChildMeasureSpec(i3, this.mPaddingTop + this.mPaddingBottom + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height));
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-16777216));
                        i31 = i33;
                    } else {
                        i5 = iMax5;
                    }
                    if (z5) {
                        this.mTotalLength = virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3) + this.mTotalLength;
                    } else {
                        int i34 = this.mTotalLength;
                        this.mTotalLength = Math.max(i34, virtualChildAt3.getMeasuredWidth() + i34 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z12 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i35 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i35;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z12) {
                        i35 = measuredHeight2;
                    }
                    iMax6 = Math.max(iMax6, i35);
                    if (z8) {
                        i6 = -1;
                        boolean z13 = layoutParams3.height == -1;
                        if (z11 && (baseline = virtualChildAt3.getBaseline()) != i6) {
                            i7 = layoutParams3.gravity;
                            if (i7 < 0) {
                                i7 = this.mGravity;
                            }
                            int i36 = (((i7 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i36] = Math.max(iArr2[i36], baseline);
                            iArr[i36] = Math.max(iArr[i36], measuredHeight2 - baseline);
                        }
                        z8 = z13;
                        i31 = i31;
                    } else {
                        i6 = -1;
                    }
                    if (z11) {
                        i7 = layoutParams3.gravity;
                        if (i7 < 0) {
                            i7 = this.mGravity;
                        }
                        int i37 = (((i7 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i37] = Math.max(iArr2[i37], baseline);
                        iArr[i37] = Math.max(iArr[i37], measuredHeight2 - baseline);
                    }
                    z8 = z13;
                    i31 = i31;
                }
                i32++;
                iMax5 = i5;
                mode = mode;
            }
            this.mTotalLength = this.mPaddingLeft + this.mPaddingRight + this.mTotalLength;
            int i38 = iArr2[1];
            iMax = (i38 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i38, iArr2[2]))));
            i4 = iCombineMeasuredStates2;
        } else {
            iMax6 = Math.max(iMax6, i26);
            if (z10 && mode != 1073741824) {
                for (int i39 = 0; i39 < virtualChildCount; i39++) {
                    View virtualChildAt4 = getVirtualChildAt(i39);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax5, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i4 = iCombineMeasuredStates2;
            iMax = iMax7;
        }
        if (z8 || mode2 == 1073741824) {
            iMax6 = iMax;
        }
        setMeasuredDimension(iResolveSizeAndState | (i4 & (-16777216)), View.resolveSizeAndState(Math.max(this.mPaddingTop + this.mPaddingBottom + iMax6, getSuggestedMinimumHeight()), i3, i4 << 16));
        if (z7) {
            forceUniformHeight(virtualChildCount, i2);
        }
    }

    int measureNullChild(int i2) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0293  */
    /* JADX WARN: Code duplicated, block: B:135:0x0297  */
    /* JADX WARN: Code duplicated, block: B:137:0x029b  */
    /* JADX WARN: Code duplicated, block: B:140:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:141:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:155:0x0308  */
    /* JADX WARN: Code duplicated, block: B:161:0x0317  */
    void measureVertical(int i2, int i3) {
        int iMax;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        boolean z2;
        boolean z3;
        int i8;
        int i9;
        int i10;
        boolean z4;
        int i11;
        int i12;
        int i13;
        int i14;
        LayoutParams layoutParams;
        View view;
        int i15;
        boolean z5;
        int iMax2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i16 = this.mBaselineAlignedChildIndex;
        boolean z6 = this.mUseLargestChild;
        int i17 = 0;
        int i18 = 0;
        int iMax3 = 0;
        int childrenSkipCount = 0;
        int i19 = 0;
        boolean z7 = false;
        int iMax4 = 0;
        int iCombineMeasuredStates = 0;
        boolean z8 = false;
        boolean z9 = true;
        float f3 = 0.0f;
        int iMax5 = Integer.MIN_VALUE;
        while (true) {
            int i20 = 8;
            if (childrenSkipCount >= virtualChildCount) {
                int i21 = i18;
                int i22 = iMax3;
                int i23 = iCombineMeasuredStates;
                if (i17 > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                if (z6 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < virtualChildCount) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength += measureNullChild(childrenSkipCount2);
                        } else if (virtualChildAt.getVisibility() == i20) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                            int i24 = this.mTotalLength;
                            this.mTotalLength = Math.max(i24, i24 + iMax5 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt));
                        }
                        childrenSkipCount2++;
                        i20 = 8;
                    }
                }
                int i25 = this.mPaddingTop + this.mPaddingBottom + this.mTotalLength;
                this.mTotalLength = i25;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(i25, getSuggestedMinimumHeight()), i3, 0);
                int i26 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (this.mAllowInconsistentMeasurement) {
                    i19 = 0;
                }
                int i27 = i26 + i19;
                if (z7 || (i27 != 0 && f3 > 0.0f)) {
                    float f4 = this.mWeightSum;
                    if (f4 > 0.0f) {
                        f3 = f4;
                    }
                    this.mTotalLength = 0;
                    int iCombineMeasuredStates2 = i23;
                    int iMax6 = iMax4;
                    float f5 = f3;
                    int i28 = 0;
                    while (i28 < virtualChildCount) {
                        View virtualChildAt2 = getVirtualChildAt(i28);
                        if (virtualChildAt2 == null || virtualChildAt2.getVisibility() == 8) {
                            i4 = iMax5;
                            i5 = i27;
                        } else {
                            LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f6 = layoutParams3.weight;
                            i4 = iMax5;
                            if (f6 > 0.0f) {
                                int measuredHeight = (int) ((i27 * f6) / f5);
                                int i29 = i27 - measuredHeight;
                                float f7 = f5 - f6;
                                if (this.mUseLargestChild) {
                                    i8 = 1073741824;
                                    if (mode2 != 1073741824) {
                                        i9 = i4;
                                    } else {
                                        if (layoutParams3.height == 0) {
                                            if (this.mAllowInconsistentMeasurement) {
                                                i8 = 1073741824;
                                                if (mode2 != 1073741824) {
                                                }
                                            } else {
                                                i8 = 1073741824;
                                            }
                                            i9 = measuredHeight;
                                        } else {
                                            i8 = 1073741824;
                                        }
                                        measuredHeight = virtualChildAt2.getMeasuredHeight() + measuredHeight;
                                        i9 = measuredHeight;
                                    }
                                } else {
                                    if (layoutParams3.height == 0) {
                                        if (this.mAllowInconsistentMeasurement) {
                                            i8 = 1073741824;
                                            if (mode2 != 1073741824) {
                                            }
                                        } else {
                                            i8 = 1073741824;
                                        }
                                        i9 = measuredHeight;
                                    } else {
                                        i8 = 1073741824;
                                    }
                                    measuredHeight = virtualChildAt2.getMeasuredHeight() + measuredHeight;
                                    i9 = measuredHeight;
                                }
                                virtualChildAt2.measure(ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width), View.MeasureSpec.makeMeasureSpec(Math.max(0, i9), i8));
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt2.getMeasuredState() & (-256));
                                f5 = f7;
                                i6 = i29;
                            } else {
                                i6 = i27;
                            }
                            int i30 = i6;
                            int i31 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i31;
                            iMax6 = Math.max(iMax6, measuredWidth);
                            if (mode != 1073741824) {
                                f2 = f5;
                                i7 = -1;
                                z2 = layoutParams3.width == -1;
                                if (!z2) {
                                    i31 = measuredWidth;
                                }
                                int iMax7 = Math.max(i22, i31);
                                if (z9 || layoutParams3.width != i7) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                int i32 = this.mTotalLength;
                                this.mTotalLength = Math.max(i32, virtualChildAt2.getMeasuredHeight() + i32 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt2));
                                z9 = z3;
                                f5 = f2;
                                i22 = iMax7;
                                i5 = i30;
                            } else {
                                f2 = f5;
                                i7 = -1;
                            }
                            if (!z2) {
                                i31 = measuredWidth;
                            }
                            int iMax8 = Math.max(i22, i31);
                            if (z9) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                            int i33 = this.mTotalLength;
                            this.mTotalLength = Math.max(i33, virtualChildAt2.getMeasuredHeight() + i33 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt2));
                            z9 = z3;
                            f5 = f2;
                            i22 = iMax8;
                            i5 = i30;
                        }
                        i28++;
                        i27 = i5;
                        iMax5 = i4;
                    }
                    this.mTotalLength = this.mPaddingTop + this.mPaddingBottom + this.mTotalLength;
                    iMax4 = iMax6;
                    iMax = i22;
                    i23 = iCombineMeasuredStates2;
                } else {
                    iMax = Math.max(i22, i21);
                    if (z6 && mode2 != 1073741824) {
                        for (int i34 = 0; i34 < virtualChildCount; i34++) {
                            View virtualChildAt3 = getVirtualChildAt(i34);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(iMax5, 1073741824));
                            }
                        }
                    }
                }
                if (z9 || mode == 1073741824) {
                    iMax = iMax4;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(this.mPaddingLeft + this.mPaddingRight + iMax, getSuggestedMinimumWidth()), i2, i23), iResolveSizeAndState);
                if (z8) {
                    forceUniformWidth(virtualChildCount, i3);
                    return;
                }
                return;
            }
            int i35 = iMax3;
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                } else {
                    int i36 = i17 + 1;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f8 = layoutParams4.weight;
                    float f9 = f3 + f8;
                    if (layoutParams4.height != 0 || f8 <= 0.0f) {
                        i10 = 1073741824;
                        z4 = false;
                    } else {
                        z4 = true;
                        i10 = 1073741824;
                    }
                    if (mode2 == i10 && z4) {
                        int i37 = this.mTotalLength;
                        this.mTotalLength = Math.max(i37, layoutParams4.topMargin + i37 + layoutParams4.bottomMargin);
                        i14 = childrenSkipCount;
                        layoutParams = layoutParams4;
                        z7 = true;
                        i13 = i35;
                        iMax5 = iMax5;
                        i11 = i36;
                        i12 = i18;
                        view = virtualChildAt4;
                    } else {
                        int i38 = iMax5;
                        if (z4) {
                            layoutParams4.height = -2;
                        }
                        i11 = i36;
                        i12 = i18;
                        i13 = i35;
                        i14 = childrenSkipCount;
                        layoutParams = layoutParams4;
                        measureChildBeforeLayout(virtualChildAt4, childrenSkipCount, i2, 0, i3, f9 == 0.0f ? this.mTotalLength : 0);
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight();
                        if (z4) {
                            layoutParams.height = 0;
                            i19 += measuredHeight2;
                        }
                        int i39 = this.mTotalLength;
                        view = virtualChildAt4;
                        this.mTotalLength = Math.max(i39, i39 + measuredHeight2 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
                        iMax5 = i38;
                        if (z6) {
                            iMax5 = Math.max(measuredHeight2, iMax5);
                        }
                    }
                    if (i16 >= 0) {
                        i15 = i14;
                        if (i16 == i15 + 1) {
                            this.mBaselineChildTop = this.mTotalLength;
                        }
                    } else {
                        i15 = i14;
                    }
                    if (i15 < i16 && layoutParams.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || layoutParams.width != -1) {
                        z5 = false;
                    } else {
                        z5 = true;
                        z8 = true;
                    }
                    int i40 = layoutParams.leftMargin + layoutParams.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i40;
                    iMax4 = Math.max(iMax4, measuredWidth2);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    z9 = z9 && layoutParams.width == -1;
                    if (layoutParams.weight > 0.0f) {
                        iMax2 = Math.max(i12, z5 ? i40 : measuredWidth2);
                        iMax3 = i13;
                    } else {
                        iMax3 = Math.max(i13, z5 ? i40 : measuredWidth2);
                        iMax2 = i12;
                    }
                    childrenSkipCount = i15 + getChildrenSkipCount(view, i15);
                    i18 = iMax2;
                    f3 = f9;
                    i17 = i11;
                }
                childrenSkipCount++;
            }
            iMax3 = i35;
            childrenSkipCount++;
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

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (i2 != this.mLayoutDirection) {
            this.mLayoutDirection = i2;
            if (this.mOrientation == 0) {
                requestLayout();
            }
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
        setWillNotDraw(!isShowingDividers());
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        if (i2 == this.mDividerPadding) {
            return;
        }
        this.mDividerPadding = i2;
        if (isShowingDividers()) {
            requestLayout();
            invalidate();
        }
    }

    @RemotableViewMethod
    public void setGravity(int i2) {
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
        if (i2 == this.mShowDividers) {
            return;
        }
        this.mShowDividers = i2;
        setWillNotDraw(!isShowingDividers());
        requestLayout();
    }

    @RemotableViewMethod
    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.mGravity;
        if ((i4 & 112) != i3) {
            this.mGravity = i3 | (i4 & PackageManager.INSTALL_FAILED_NO_MATCHING_ABIS);
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

    public LinearLayout(Context context, AttributeSet attributeSet) {
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

    public LinearLayout(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public LinearLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = BadgeDrawable.TOP_START;
        this.mLayoutDirection = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayout, i2, i3);
        int i4 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i4 >= 0) {
            setOrientation(i4);
        }
        int i5 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i5 >= 0) {
            setGravity(i5);
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(2, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.mWeightSum = typedArrayObtainStyledAttributes.getFloat(4, -1.0f);
        this.mBaselineAlignedChildIndex = typedArrayObtainStyledAttributes.getInt(3, -1);
        this.mUseLargestChild = typedArrayObtainStyledAttributes.getBoolean(6, false);
        this.mShowDividers = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.mDividerPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        setDividerDrawable(typedArrayObtainStyledAttributes.getDrawable(5));
        this.mAllowInconsistentMeasurement = context.getApplicationInfo().targetSdkVersion <= 23;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (View.sPreserveMarginParamsInLayoutParamConversion) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
        }
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, mapping = {@ViewDebug.IntToString(from = -1, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = 8388611, to = "START"), @ViewDebug.IntToString(from = 8388613, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayout_Layout);
            this.weight = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "LinearLayout.LayoutParams={width=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.width));
            sbU.append(", height=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.height));
            sbU.append(" weight=");
            return m.i(sbU, this.weight, "}");
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("layout:weight", this.weight);
            viewHierarchyEncoder.addProperty("layout:gravity", this.gravity);
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
}
