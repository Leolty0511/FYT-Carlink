package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
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
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class FrameLayout extends ViewGroup {
    private static final int DEFAULT_CHILD_GRAVITY = 8388659;

    @ViewDebug.ExportedProperty(category = "drawing")
    private Drawable mForeground;
    public boolean mForegroundBoundsChanged;

    @ViewDebug.ExportedProperty(category = "drawing")
    private int mForegroundGravity;

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean mForegroundInPadding;

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
    public boolean mMeasureAllChildren;
    private final Rect mOverlayBounds;
    private final Rect mSelfBounds;

    public FrameLayout(Context context) {
        super(context);
        this.mMeasureAllChildren = false;
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mSelfBounds = new Rect();
        this.mOverlayBounds = new Rect();
        this.mForegroundGravity = 119;
        this.mForegroundInPadding = true;
        this.mForegroundBoundsChanged = false;
        this.mMatchParentChildren = new ArrayList<>(1);
    }

    private int getPaddingBottomWithForeground() {
        return this.mForegroundInPadding ? Math.max(this.mPaddingBottom, this.mForegroundPaddingBottom) : this.mPaddingBottom + this.mForegroundPaddingBottom;
    }

    private int getPaddingTopWithForeground() {
        return this.mForegroundInPadding ? Math.max(this.mPaddingTop, this.mForegroundPaddingTop) : this.mPaddingTop + this.mForegroundPaddingTop;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.mForeground;
        if (drawable != null) {
            if (this.mForegroundBoundsChanged) {
                this.mForegroundBoundsChanged = false;
                Rect rect = this.mSelfBounds;
                Rect rect2 = this.mOverlayBounds;
                int i2 = this.mRight - this.mLeft;
                int i3 = this.mBottom - this.mTop;
                if (this.mForegroundInPadding) {
                    rect.set(0, 0, i2, i3);
                } else {
                    rect.set(this.mPaddingLeft, this.mPaddingTop, i2 - this.mPaddingRight, i3 - this.mPaddingBottom);
                }
                Gravity.apply(this.mForegroundGravity, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2, getLayoutDirection());
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mForeground;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.mForeground.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        Drawable drawable;
        boolean zGatherTransparentRegion = super.gatherTransparentRegion(region);
        if (region != null && (drawable = this.mForeground) != null) {
            applyDrawableToTransparentRegion(drawable, region);
        }
        return zGatherTransparentRegion;
    }

    @Deprecated
    public boolean getConsiderGoneChildrenWhenMeasuring() {
        return getMeasureAllChildren();
    }

    public Drawable getForeground() {
        return this.mForeground;
    }

    public int getForegroundGravity() {
        return this.mForegroundGravity;
    }

    public boolean getMeasureAllChildren() {
        return this.mMeasureAllChildren;
    }

    public int getPaddingLeftWithForeground() {
        return this.mForegroundInPadding ? Math.max(this.mPaddingLeft, this.mForegroundPaddingLeft) : this.mPaddingLeft + this.mForegroundPaddingLeft;
    }

    public int getPaddingRightWithForeground() {
        return this.mForegroundInPadding ? Math.max(this.mPaddingRight, this.mForegroundPaddingRight) : this.mPaddingRight + this.mForegroundPaddingRight;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mForeground;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
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
        this.mForegroundBoundsChanged = true;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = layoutParams.gravity;
                if (i13 == -1) {
                    i13 = DEFAULT_CHILD_GRAVITY;
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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(FrameLayout.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(FrameLayout.class.getName());
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
        int paddingLeftWithForeground = iMax2 + getPaddingLeftWithForeground() + getPaddingRightWithForeground();
        int iMax3 = Math.max(iMax + getPaddingTopWithForeground() + getPaddingBottomWithForeground(), getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingLeftWithForeground, getSuggestedMinimumWidth());
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
                view.measure(marginLayoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec((((getMeasuredWidth() - getPaddingLeftWithForeground()) - getPaddingRightWithForeground()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingLeftWithForeground() + getPaddingRightWithForeground() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), marginLayoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec((((getMeasuredHeight() - getPaddingTopWithForeground()) - getPaddingBottomWithForeground()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin, 1073741824) : ViewGroup.getChildMeasureSpec(i3, getPaddingTopWithForeground() + getPaddingBottomWithForeground() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.mForegroundBoundsChanged = true;
    }

    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.mForeground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.mForeground);
            }
            this.mForeground = drawable;
            this.mForegroundPaddingLeft = 0;
            this.mForegroundPaddingTop = 0;
            this.mForegroundPaddingRight = 0;
            this.mForegroundPaddingBottom = 0;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.mForegroundGravity == 119) {
                    Rect rect = new Rect();
                    if (drawable.getPadding(rect)) {
                        this.mForegroundPaddingLeft = rect.left;
                        this.mForegroundPaddingTop = rect.top;
                        this.mForegroundPaddingRight = rect.right;
                        this.mForegroundPaddingBottom = rect.bottom;
                    }
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @RemotableViewMethod
    public void setForegroundGravity(int i2) {
        if (this.mForegroundGravity != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= Gravity.START;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mForegroundGravity = i2;
            if (i2 != 119 || this.mForeground == null) {
                this.mForegroundPaddingLeft = 0;
                this.mForegroundPaddingTop = 0;
                this.mForegroundPaddingRight = 0;
                this.mForegroundPaddingBottom = 0;
            } else {
                Rect rect = new Rect();
                if (this.mForeground.getPadding(rect)) {
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

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mForeground;
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
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.FrameLayout_Layout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.gravity = -1;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3);
            this.gravity = -1;
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
        super(context, attributeSet, i2);
        this.mMeasureAllChildren = false;
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mSelfBounds = new Rect();
        this.mOverlayBounds = new Rect();
        this.mForegroundGravity = 119;
        this.mForegroundInPadding = true;
        this.mForegroundBoundsChanged = false;
        this.mMatchParentChildren = new ArrayList<>(1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.FrameLayout, i2, 0);
        this.mForegroundGravity = typedArrayObtainStyledAttributes.getInt(2, this.mForegroundGravity);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(1, false)) {
            setMeasureAllChildren(true);
        }
        this.mForegroundInPadding = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
