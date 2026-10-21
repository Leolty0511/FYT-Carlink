package com.android.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ViewAnimator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class DialogViewAnimator extends ViewAnimator {
    private final ArrayList<View> mMatchParentChildren;

    public DialogViewAnimator(Context context) {
        super(context);
        this.mMatchParentChildren = new ArrayList<>(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int measuredHeightAndState;
        boolean z2 = (View.MeasureSpec.getMode(i2) == 1073741824 && View.MeasureSpec.getMode(i3) == 1073741824) ? false : true;
        int childCount = getChildCount();
        int iCombineMeasuredStates = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (getMeasureAllChildren() || childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                boolean z3 = layoutParams.width == -1;
                boolean z4 = layoutParams.height == -1;
                if (z2 && (z3 || z4)) {
                    this.mMatchParentChildren.add(childAt);
                }
                int i7 = iCombineMeasuredStates;
                int i8 = i4;
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                if (!z2 || z3) {
                    measuredHeightAndState = 0;
                } else {
                    int iMax = Math.max(i5, childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
                    measuredHeightAndState = (childAt.getMeasuredWidthAndState() & (-16777216)) | 0;
                    i5 = iMax;
                }
                if (!z2 || z4) {
                    i4 = i8;
                } else {
                    int iMax2 = Math.max(i8, childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
                    measuredHeightAndState |= (childAt.getMeasuredHeightAndState() >> 16) & (-256);
                    i4 = iMax2;
                }
                iCombineMeasuredStates = View.combineMeasuredStates(i7, measuredHeightAndState);
            }
        }
        int i9 = iCombineMeasuredStates;
        int paddingRight = getPaddingRight() + getPaddingLeft() + i5;
        int iMax3 = Math.max(getPaddingBottom() + getPaddingTop() + i4, getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingRight, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax4, i2, i9), View.resolveSizeAndState(iMax3, i3, i9 << 16));
        int size = this.mMatchParentChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = this.mMatchParentChildren.get(i10);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            view.measure(marginLayoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec((((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), marginLayoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec((((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin, 1073741824) : ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        }
        this.mMatchParentChildren.clear();
    }

    public DialogViewAnimator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMatchParentChildren = new ArrayList<>(1);
    }
}
