package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
@Deprecated
public class AbsoluteLayout extends ViewGroup {
    public AbsoluteLayout(Context context) {
        this(context, null);
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
                int i7 = this.mPaddingLeft + layoutParams.f253x;
                int i8 = this.mPaddingTop + layoutParams.f254y;
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
                int measuredWidth = childAt.getMeasuredWidth() + layoutParams.f253x;
                int measuredHeight = childAt.getMeasuredHeight() + layoutParams.f254y;
                iMax = Math.max(iMax, measuredWidth);
                iMax2 = Math.max(iMax2, measuredHeight);
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(this.mPaddingLeft + this.mPaddingRight + iMax, getSuggestedMinimumWidth()), i2, 0), View.resolveSizeAndState(Math.max(this.mPaddingTop + this.mPaddingBottom + iMax2, getSuggestedMinimumHeight()), i3, 0));
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public AbsoluteLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f253x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f254y;

        public LayoutParams(int i2, int i3, int i4, int i5) {
            super(i2, i3);
            this.f253x = i4;
            this.f254y = i5;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "Absolute.LayoutParams={width=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.width));
            sbU.append(", height=");
            sbU.append(ViewGroup.LayoutParams.sizeToString(this.height));
            sbU.append(" x=");
            sbU.append(this.f253x);
            sbU.append(" y=");
            return android.accessibilityservice.c.m(sbU, this.f254y, "}");
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AbsoluteLayout_Layout);
            this.f253x = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
            this.f254y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public AbsoluteLayout(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public AbsoluteLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
