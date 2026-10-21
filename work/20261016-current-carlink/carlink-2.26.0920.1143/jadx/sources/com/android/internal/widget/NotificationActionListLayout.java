package com.android.internal.widget;

import android.app.m;
import android.app.r;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
@RemoteViews.RemoteView
public class NotificationActionListLayout extends LinearLayout {
    public static final Comparator<Pair<Integer, TextView>> MEASURE_ORDER_COMPARATOR = new r(3);
    private Drawable mDefaultBackground;
    private int mDefaultPaddingEnd;
    private boolean mMeasureLinearly;
    private ArrayList<View> mMeasureOrderOther;
    private ArrayList<Pair<Integer, TextView>> mMeasureOrderTextViews;
    private int mTotalWidth;

    public NotificationActionListLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalWidth = 0;
        this.mMeasureOrderTextViews = new ArrayList<>();
        this.mMeasureOrderOther = new ArrayList<>();
    }

    private void clearMeasureOrder() {
        this.mMeasureOrderOther.clear();
        this.mMeasureOrderTextViews.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ int lambda$static$0(Pair pair, Pair pair2) {
        return ((Integer) pair.first).compareTo((Integer) pair2.first);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003f  */
    private void rebuildMeasureOrder(int i2, int i3) {
        clearMeasureOrder();
        this.mMeasureOrderTextViews.ensureCapacity(i2);
        this.mMeasureOrderOther.ensureCapacity(i3);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (textView.getText().length() > 0) {
                    this.mMeasureOrderTextViews.add(Pair.create(Integer.valueOf(textView.getText().length()), textView));
                } else {
                    this.mMeasureOrderOther.add(childAt);
                }
            } else {
                this.mMeasureOrderOther.add(childAt);
            }
        }
        this.mMeasureOrderTextViews.sort(MEASURE_ORDER_COMPARATOR);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mDefaultPaddingEnd = getPaddingEnd();
        this.mDefaultBackground = getBackground();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (this.mMeasureLinearly) {
            super.onLayout(z2, i2, i3, i4, i5);
            return;
        }
        boolean zIsLayoutRtl = isLayoutRtl();
        int i8 = this.mPaddingTop;
        int i9 = ((i5 - i3) - i8) - this.mPaddingBottom;
        int childCount = getChildCount();
        int i10 = Gravity.getAbsoluteGravity(8388611, getLayoutDirection()) != 5 ? this.mPaddingLeft : ((this.mPaddingLeft + i4) - i2) - this.mTotalWidth;
        if (zIsLayoutRtl) {
            i7 = childCount - 1;
            i6 = -1;
        } else {
            i6 = 1;
            i7 = 0;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt((i6 * i11) + i7);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int iB = (m.b(i9, measuredHeight, 2, i8) + marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin;
                int i12 = i10 + marginLayoutParams.leftMargin;
                childAt.layout(i12, iB, i12 + measuredWidth, measuredHeight + iB);
                i10 = measuredWidth + marginLayoutParams.rightMargin + i12;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int measuredWidth;
        int i5;
        if (this.mMeasureLinearly) {
            super.onMeasure(i2, i3);
            return;
        }
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        View view = null;
        int i9 = 0;
        while (true) {
            i4 = 8;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt instanceof TextView) {
                i6++;
            } else {
                i7++;
            }
            if (childAt.getVisibility() != 8) {
                i8++;
                view = childAt;
            }
            i9++;
        }
        boolean z2 = (i6 == this.mMeasureOrderTextViews.size() && i7 == this.mMeasureOrderOther.size()) ? false : true;
        if (!z2) {
            int size = this.mMeasureOrderTextViews.size();
            for (int i10 = 0; i10 < size; i10++) {
                Pair<Integer, TextView> pair = this.mMeasureOrderTextViews.get(i10);
                if (pair.first.intValue() != pair.second.getText().length()) {
                    z2 = true;
                }
            }
        }
        if (i8 > 1 && z2) {
            rebuildMeasureOrder(i6, i7);
        }
        boolean z3 = View.MeasureSpec.getMode(i2) != 0;
        int size2 = (View.MeasureSpec.getSize(i2) - this.mPaddingLeft) - this.mPaddingRight;
        int size3 = this.mMeasureOrderOther.size();
        int measuredWidth2 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 1; i11 < childCount && i8 > i13; i13 = 1) {
            View view2 = i11 < size3 ? this.mMeasureOrderOther.get(i11) : this.mMeasureOrderTextViews.get(i11 - size3).second;
            if (view2.getVisibility() != i4) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                measureChildWithMargins(view2, i2, z3 ? size2 - ((size2 - measuredWidth2) / (i8 - i12)) : measuredWidth2, i3, 0);
                i12++;
                measuredWidth2 = view2.getMeasuredWidth() + marginLayoutParams.rightMargin + marginLayoutParams.leftMargin + measuredWidth2;
            }
            i11++;
            i4 = 8;
        }
        int measuredWidth3 = measuredWidth2;
        if (view == null) {
            measuredWidth = measuredWidth3;
        } else {
            if (!z3 || measuredWidth3 >= size2) {
                i5 = 1;
                if (i8 != 1) {
                    measuredWidth = measuredWidth3;
                }
            } else {
                i5 = 1;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (i8 > i5) {
                measuredWidth3 -= (view.getMeasuredWidth() + marginLayoutParams2.rightMargin) + marginLayoutParams2.leftMargin;
            }
            int i14 = marginLayoutParams2.width;
            marginLayoutParams2.width = -1;
            measureChildWithMargins(view, i2, measuredWidth3, i3, 0);
            marginLayoutParams2.width = i14;
            measuredWidth = view.getMeasuredWidth() + marginLayoutParams2.rightMargin + marginLayoutParams2.leftMargin + measuredWidth3;
        }
        this.mTotalWidth = measuredWidth + this.mPaddingRight + this.mPaddingLeft;
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), i2), View.resolveSize(getSuggestedMinimumHeight(), i3));
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        clearMeasureOrder();
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        clearMeasureOrder();
    }

    @RemotableViewMethod
    public void setEmphasizedMode(boolean z2) {
        this.mMeasureLinearly = z2;
        setPaddingRelative(getPaddingStart(), getPaddingTop(), z2 ? 0 : this.mDefaultPaddingEnd, getPaddingBottom());
        setBackground(z2 ? null : this.mDefaultBackground);
        requestLayout();
    }
}
