package com.android.internal.widget;

import android.app.m;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class AlertDialogLayout extends LinearLayout {
    public AlertDialogLayout(Context context) {
        super(context);
    }

    private void forceUniformWidth(int i2, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i5 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, iMakeMeasureSpec, 0, i3, 0);
                    layoutParams.height = i5;
                }
            }
        }
    }

    private int resolveMinimumHeight(View view) {
        int minimumHeight = view.getMinimumHeight();
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return resolveMinimumHeight(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    private void setChildFrame(View view, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i4 + i2, i5 + i3);
    }

    private boolean tryOnMeasure(int i2, int i3) {
        int iCombineMeasuredStates;
        int iResolveMinimumHeight;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                switch (childAt.getId()) {
                    case R.id.buttonPanel /* 16908759 */:
                        view2 = childAt;
                        break;
                    case R.id.contentPanel /* 16908806 */:
                    case R.id.customPanel /* 16908813 */:
                        if (view3 != null) {
                            return false;
                        }
                        view3 = childAt;
                        break;
                        break;
                    case R.id.topPanel /* 16909393 */:
                        view = childAt;
                        break;
                    default:
                        return false;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i2);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i2, 0);
            paddingBottom += view.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            iCombineMeasuredStates = 0;
        }
        if (view2 != null) {
            view2.measure(i2, 0);
            iResolveMinimumHeight = resolveMinimumHeight(view2);
            measuredHeight = view2.getMeasuredHeight() - iResolveMinimumHeight;
            paddingBottom += iResolveMinimumHeight;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        } else {
            iResolveMinimumHeight = 0;
            measuredHeight = 0;
        }
        if (view3 != null) {
            view3.measure(i2, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            measuredHeight2 = view3.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        } else {
            measuredHeight2 = 0;
        }
        int i5 = size - paddingBottom;
        if (view2 != null) {
            int i6 = paddingBottom - iResolveMinimumHeight;
            int iMin = Math.min(i5, measuredHeight);
            if (iMin > 0) {
                i5 -= iMin;
                iResolveMinimumHeight += iMin;
            }
            view2.measure(i2, View.MeasureSpec.makeMeasureSpec(iResolveMinimumHeight, 1073741824));
            paddingBottom = i6 + view2.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        }
        if (view3 != null && i5 > 0) {
            view3.measure(i2, View.MeasureSpec.makeMeasureSpec(measuredHeight2 + i5, mode));
            paddingBottom = (paddingBottom - measuredHeight2) + view3.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        }
        int iMax = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt2 = getChildAt(i7);
            if (childAt2.getVisibility() != 8) {
                iMax = Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + iMax, i2, iCombineMeasuredStates), View.resolveSizeAndState(paddingBottom, i3, 0));
        if (mode2 == 1073741824) {
            return true;
        }
        forceUniformWidth(childCount, i3);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x009a  */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int iB;
        int i6;
        int i7;
        int i8 = this.mPaddingLeft;
        int i9 = i4 - i2;
        int i10 = this.mPaddingRight;
        int i11 = i9 - i10;
        int i12 = (i9 - i8) - i10;
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i13 = gravity & 112;
        int i14 = gravity & 8388615;
        int i15 = i13 != 16 ? i13 != 80 ? this.mPaddingTop : ((this.mPaddingTop + i5) - i3) - measuredHeight : (((i5 - i3) - measuredHeight) / 2) + this.mPaddingTop;
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                int i17 = layoutParams.gravity;
                if (i17 < 0) {
                    i17 = i14;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i17, getLayoutDirection()) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i7 = layoutParams.leftMargin + i8;
                    } else {
                        iB = i11 - measuredWidth;
                        i6 = layoutParams.rightMargin;
                    }
                    if (hasDividerBeforeChildAt(i16)) {
                        i15 += intrinsicHeight;
                    }
                    int i18 = i15 + layoutParams.topMargin;
                    setChildFrame(childAt, i7, i18, measuredWidth, measuredHeight2);
                    i15 = measuredHeight2 + layoutParams.bottomMargin + i18;
                } else {
                    iB = m.b(i12, measuredWidth, 2, i8) + layoutParams.leftMargin;
                    i6 = layoutParams.rightMargin;
                }
                i7 = iB - i6;
                if (hasDividerBeforeChildAt(i16)) {
                    i15 += intrinsicHeight;
                }
                int i19 = i15 + layoutParams.topMargin;
                setChildFrame(childAt, i7, i19, measuredWidth, measuredHeight2);
                i15 = measuredHeight2 + layoutParams.bottomMargin + i19;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (tryOnMeasure(i2, i3)) {
            return;
        }
        super.onMeasure(i2, i3);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
