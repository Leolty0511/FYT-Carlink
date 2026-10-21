package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class MessagingLinearLayout extends ViewGroup {
    private static final int NOT_MEASURED_BEFORE = -1;
    private int mContractedChildId;
    private int mIndentLines;
    private int mLastMeasuredWidth;
    private int mMaxHeight;
    private int mSpacing;

    public MessagingLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastMeasuredWidth = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MessagingLinearLayout, 0, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            if (typedArrayObtainStyledAttributes.getIndex(i2) == 0) {
                this.mSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(i2, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        if (((LayoutParams) view.getLayoutParams()).hide) {
            return true;
        }
        return super.drawChild(canvas, view, j2);
    }

    public int getContractedChildId() {
        return this.mContractedChildId;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = this.mPaddingLeft;
        int i7 = (i4 - i2) - this.mPaddingRight;
        int layoutDirection = getLayoutDirection();
        int childCount = getChildCount();
        int i8 = this.mPaddingTop;
        boolean z3 = true;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 && !layoutParams.hide) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = layoutDirection == 1 ? (i7 - measuredWidth) - layoutParams.rightMargin : layoutParams.leftMargin + i6;
                if (!z3) {
                    i8 += this.mSpacing;
                }
                int i11 = i8 + layoutParams.topMargin;
                childAt.layout(i10, i11, measuredWidth + i10, i11 + measuredHeight);
                z3 = false;
                i8 = measuredHeight + layoutParams.bottomMargin + i11;
            }
        }
        this.mLastMeasuredWidth = -1;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        ImageFloatingTextView imageFloatingTextView;
        boolean z2;
        int size = View.MeasureSpec.getSize(i3);
        if (View.MeasureSpec.getMode(i3) == 0) {
            size = Integer.MAX_VALUE;
        }
        int i6 = size;
        int size2 = View.MeasureSpec.getSize(i2);
        boolean z3 = (this.mLastMeasuredWidth != -1 && getMeasuredHeight() == i6 && this.mLastMeasuredWidth == size2) ? false : true;
        int childCount = getChildCount();
        int i7 = 8;
        int i8 = 2;
        if (!z3) {
            i4 = size2;
            i5 = i7;
            break;
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            ((LayoutParams) getChildAt(i9).getLayoutParams()).hide = true;
        }
        int i10 = this.mPaddingTop + this.mPaddingBottom;
        int i11 = childCount - 1;
        boolean z4 = true;
        while (true) {
            if (i11 < 0 || i10 >= i6) {
                i4 = size2;
                i5 = i7;
                break;
            }
            if (getChildAt(i11).getVisibility() == i7) {
                i4 = size2;
                i5 = i7;
            } else {
                View childAt = getChildAt(i11);
                LayoutParams layoutParams = (LayoutParams) getChildAt(i11).getLayoutParams();
                if (childAt instanceof ImageFloatingTextView) {
                    imageFloatingTextView = (ImageFloatingTextView) childAt;
                    int i12 = this.mIndentLines;
                    if (i12 == i8) {
                        i12 = 3;
                    }
                    imageFloatingTextView.setNumIndentLines(i12);
                } else {
                    imageFloatingTextView = null;
                }
                ImageFloatingTextView imageFloatingTextView2 = imageFloatingTextView;
                int i13 = z4 ? 0 : this.mSpacing;
                int i14 = i10;
                i4 = size2;
                i5 = 8;
                measureChildWithMargins(childAt, i2, 0, i3, ((i10 - this.mPaddingTop) - this.mPaddingBottom) + i13);
                int measuredHeight = childAt.getMeasuredHeight();
                int iMax = Math.max(i14, i14 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + i13);
                if (imageFloatingTextView2 == null) {
                    z2 = false;
                } else if (measuredHeight < imageFloatingTextView2.getPaddingBottom() + imageFloatingTextView2.getPaddingTop() + imageFloatingTextView2.getLayoutHeight()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (iMax > i6 || z2) {
                    break;
                }
                layoutParams.hide = false;
                i10 = iMax;
                z4 = false;
            }
            i11--;
            i7 = i5;
            size2 = i4;
            i8 = 2;
        }
        int i15 = this.mPaddingLeft + this.mPaddingRight;
        int i16 = this.mIndentLines;
        int iMax2 = this.mPaddingTop + this.mPaddingBottom;
        boolean z5 = true;
        int lineCount = i16;
        int iMax3 = i15;
        int i17 = 0;
        while (i17 < childCount) {
            View childAt2 = getChildAt(i17);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (childAt2.getVisibility() == i5 || layoutParams2.hide) {
                i6 = i6;
            } else {
                if (childAt2 instanceof ImageFloatingTextView) {
                    ImageFloatingTextView imageFloatingTextView3 = (ImageFloatingTextView) childAt2;
                    if (lineCount == 2 && imageFloatingTextView3.getLineCount() > 2) {
                        lineCount = 3;
                    }
                    if (imageFloatingTextView3.setNumIndentLines(Math.max(0, lineCount)) || !z3) {
                        childAt2.measure(ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width), ViewGroup.getChildMeasureSpec(i3, i6 - childAt2.getMeasuredHeight(), layoutParams2.height));
                    }
                    lineCount -= imageFloatingTextView3.getLineCount();
                } else {
                    i6 = i6;
                }
                iMax3 = Math.max(iMax3, childAt2.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin + this.mPaddingLeft + this.mPaddingRight);
                iMax2 = Math.max(iMax2, childAt2.getMeasuredHeight() + iMax2 + layoutParams2.topMargin + layoutParams2.bottomMargin + (z5 ? 0 : this.mSpacing));
                z5 = false;
            }
            i17++;
            i6 = i6;
            i5 = 8;
        }
        setMeasuredDimension(View.resolveSize(Math.max(getSuggestedMinimumWidth(), iMax3), i2), View.resolveSize(Math.max(getSuggestedMinimumHeight(), iMax2), i3));
        this.mLastMeasuredWidth = i4;
    }

    @RemotableViewMethod
    public void setContractedChildId(int i2) {
        this.mContractedChildId = i2;
    }

    @RemotableViewMethod
    public void setNumIndentLines(int i2) {
        this.mIndentLines = i2;
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        boolean hide;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.hide = false;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.hide = false;
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.mContext, attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams(layoutParams.width, layoutParams.height);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            layoutParams2.copyMarginsFrom((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return layoutParams2;
    }
}
