package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import i.a;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
@Deprecated
public class AbsoluteLayout extends ViewGroup {
    public AbsoluteLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2, 0, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i7 = this.mPaddingLeft + layoutParams.f208x;
                int i8 = this.mPaddingTop + layoutParams.f209y;
                childAt.layout(i7, i8, childAt.getMeasuredWidth() + i7, childAt.getMeasuredHeight() + i8);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int childCount = getChildCount();
        measureChildren(i2, i3);
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = layoutParams.f208x + childAt.getMeasuredWidth();
                int measuredHeight = layoutParams.f209y + childAt.getMeasuredHeight();
                iMax = Math.max(iMax, measuredWidth);
                iMax2 = Math.max(iMax2, measuredHeight);
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + this.mPaddingLeft + this.mPaddingRight, getSuggestedMinimumWidth()), i2, 0), View.resolveSizeAndState(Math.max(iMax2 + this.mPaddingTop + this.mPaddingBottom, getSuggestedMinimumHeight()), i3, 0));
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public AbsoluteLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f208x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f209y;

        public LayoutParams(int i2, int i3, int i4, int i5) {
            super(i2, i3);
            this.f208x = i4;
            this.f209y = i5;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            return str + "Absolute.LayoutParams={width=" + ViewGroup.LayoutParams.sizeToString(this.width) + ", height=" + ViewGroup.LayoutParams.sizeToString(this.height) + " x=" + this.f208x + " y=" + this.f209y + "}";
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AbsoluteLayout_Layout);
            this.f208x = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
            this.f209y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public AbsoluteLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
