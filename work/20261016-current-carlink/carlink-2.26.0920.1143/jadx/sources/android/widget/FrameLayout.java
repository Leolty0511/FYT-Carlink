package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class FrameLayout extends ViewGroup {
    private static final int DEFAULT_CHILD_GRAVITY = 8388659;

    @ViewDebug.ExportedProperty(category = "padding")
    private int mForegroundPaddingBottom;

    @ViewDebug.ExportedProperty(category = "padding")
    private int mForegroundPaddingLeft;

    @ViewDebug.ExportedProperty(category = "padding")
    private int mForegroundPaddingRight;

    @ViewDebug.ExportedProperty(category = "padding")
    private int mForegroundPaddingTop;
    private final ArrayList<View> mMatchParentChildren;

    @ViewDebug.ExportedProperty(category = "measurement")
    boolean mMeasureAllChildren;

    public FrameLayout(Context context) {
        super(context);
        this.mMeasureAllChildren = false;
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mMatchParentChildren = new ArrayList<>(1);
    }

    private int getPaddingBottomWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingBottom, this.mForegroundPaddingBottom) : this.mPaddingBottom + this.mForegroundPaddingBottom;
    }

    private int getPaddingTopWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingTop, this.mForegroundPaddingTop) : this.mPaddingTop + this.mForegroundPaddingTop;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("measurement:measureAllChildren", this.mMeasureAllChildren);
        viewHierarchyEncoder.addProperty("padding:foregroundPaddingLeft", this.mForegroundPaddingLeft);
        viewHierarchyEncoder.addProperty("padding:foregroundPaddingTop", this.mForegroundPaddingTop);
        viewHierarchyEncoder.addProperty("padding:foregroundPaddingRight", this.mForegroundPaddingRight);
        viewHierarchyEncoder.addProperty("padding:foregroundPaddingBottom", this.mForegroundPaddingBottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return FrameLayout.class.getName();
    }

    @Deprecated
    public boolean getConsiderGoneChildrenWhenMeasuring() {
        return getMeasureAllChildren();
    }

    public boolean getMeasureAllChildren() {
        return this.mMeasureAllChildren;
    }

    public int getPaddingLeftWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingLeft, this.mForegroundPaddingLeft) : this.mPaddingLeft + this.mForegroundPaddingLeft;
    }

    public int getPaddingRightWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingRight, this.mForegroundPaddingRight) : this.mPaddingRight + this.mForegroundPaddingRight;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    public void layoutChildren(int i2, int i3, int i4, int i5, boolean z2) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int childCount = getChildCount();
        int paddingLeftWithForeground = getPaddingLeftWithForeground();
        int paddingRightWithForeground = (i4 - i2) - getPaddingRightWithForeground();
        int paddingTopWithForeground = getPaddingTopWithForeground();
        int paddingBottomWithForeground = (i5 - i3) - getPaddingBottomWithForeground();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = layoutParams.gravity;
                if (i13 == -1) {
                    i13 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i13, getLayoutDirection());
                int i14 = i13 & 112;
                int i15 = absoluteGravity & 7;
                if (i15 != 1) {
                    if (i15 == 5 && !z2) {
                        i6 = paddingRightWithForeground - measuredWidth;
                        i7 = layoutParams.rightMargin;
                    } else {
                        i8 = layoutParams.leftMargin + paddingLeftWithForeground;
                    }
                    if (i14 == 16) {
                        i9 = (((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) / 2) + paddingTopWithForeground + layoutParams.topMargin;
                        i10 = layoutParams.bottomMargin;
                    } else if (i14 == 48 && i14 == 80) {
                        i9 = paddingBottomWithForeground - measuredHeight;
                        i10 = layoutParams.bottomMargin;
                    } else {
                        i11 = i + paddingTopWithForeground;
                        childAt.layout(i8, i11, measuredWidth + i8, measuredHeight + i11);
                    }
                    i11 = i9 - i10;
                    childAt.layout(i8, i11, measuredWidth + i8, measuredHeight + i11);
                } else {
                    i6 = (((paddingRightWithForeground - paddingLeftWithForeground) - measuredWidth) / 2) + paddingLeftWithForeground + layoutParams.leftMargin;
                    i7 = layoutParams.rightMargin;
                }
                i8 = i6 - i7;
                if (i14 == 16) {
                    int i16 = i14 == 48 ? layoutParams.topMargin : layoutParams.topMargin;
                    i11 = i16 + paddingTopWithForeground;
                    childAt.layout(i8, i11, measuredWidth + i8, measuredHeight + i11);
                } else {
                    i9 = (((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) / 2) + paddingTopWithForeground + layoutParams.topMargin;
                    i10 = layoutParams.bottomMargin;
                }
                i11 = i9 - i10;
                childAt.layout(i8, i11, measuredWidth + i8, measuredHeight + i11);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        layoutChildren(i2, i3, i4, i5, false);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int childCount = getChildCount();
        boolean z2 = (View.MeasureSpec.getMode(i2) == 1073741824 && View.MeasureSpec.getMode(i3) == 1073741824) ? false : true;
        this.mMatchParentChildren.clear();
        int iCombineMeasuredStates = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (this.mMeasureAllChildren || childAt.getVisibility() != 8) {
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                iMax2 = Math.max(iMax2, childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                if (z2 && (layoutParams.width == -1 || layoutParams.height == -1)) {
                    this.mMatchParentChildren.add(childAt);
                }
            }
        }
        int i5 = iCombineMeasuredStates;
        int paddingRightWithForeground = getPaddingRightWithForeground() + getPaddingLeftWithForeground() + iMax2;
        int iMax3 = Math.max(getPaddingTopWithForeground() + getPaddingBottomWithForeground() + iMax, getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingRightWithForeground, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax4, i2, i5), View.resolveSizeAndState(iMax3, i3, i5 << 16));
        int size = this.mMatchParentChildren.size();
        if (size > 1) {
            for (int i6 = 0; i6 < size; i6++) {
                View view = this.mMatchParentChildren.get(i6);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                view.measure(marginLayoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (((getMeasuredWidth() - getPaddingLeftWithForeground()) - getPaddingRightWithForeground()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin), 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingRightWithForeground() + getPaddingLeftWithForeground() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), marginLayoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (((getMeasuredHeight() - getPaddingTopWithForeground()) - getPaddingBottomWithForeground()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin), 1073741824) : ViewGroup.getChildMeasureSpec(i3, getPaddingTopWithForeground() + getPaddingBottomWithForeground() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
            }
        }
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setForegroundGravity(int i2) {
        if (getForegroundGravity() != i2) {
            super.setForegroundGravity(i2);
            Drawable foreground = getForeground();
            if (getForegroundGravity() != 119 || foreground == null) {
                this.mForegroundPaddingLeft = 0;
                this.mForegroundPaddingTop = 0;
                this.mForegroundPaddingRight = 0;
                this.mForegroundPaddingBottom = 0;
            } else {
                Rect rect = new Rect();
                if (foreground.getPadding(rect)) {
                    this.mForegroundPaddingLeft = rect.left;
                    this.mForegroundPaddingTop = rect.top;
                    this.mForegroundPaddingRight = rect.right;
                    this.mForegroundPaddingBottom = rect.bottom;
                }
            }
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setMeasureAllChildren(boolean z2) {
        this.mMeasureAllChildren = z2;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
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
        public static final int UNSPECIFIED_GRAVITY = -1;
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FrameLayout_Layout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.gravity = -1;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3);
            this.gravity = i4;
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
            this.gravity = layoutParams.gravity;
        }
    }

    public FrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FrameLayout(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public FrameLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mMeasureAllChildren = false;
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mMatchParentChildren = new ArrayList<>(1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FrameLayout, i2, i3);
        if (typedArrayObtainStyledAttributes.getBoolean(0, false)) {
            setMeasureAllChildren(true);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
