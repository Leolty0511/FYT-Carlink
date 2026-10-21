package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class WeightedLinearLayout extends LinearLayout {
    private float mMajorWeightMax;
    private float mMajorWeightMin;
    private float mMinorWeightMax;
    private float mMinorWeightMin;

    public WeightedLinearLayout(Context context) {
        super(context);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        boolean z2 = false;
        boolean z3 = i4 < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i2);
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        float f2 = z3 ? this.mMinorWeightMin : this.mMajorWeightMin;
        float f3 = z3 ? this.mMinorWeightMax : this.mMajorWeightMax;
        if (mode == Integer.MIN_VALUE) {
            int i5 = (int) (i4 * f2);
            if (f2 > 0.0f && measuredWidth < i5) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            } else if (f3 > 0.0f && measuredWidth > i5) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            }
            z2 = true;
        }
        if (z2) {
            super.onMeasure(iMakeMeasureSpec, i3);
        }
    }

    public WeightedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WeightedLinearLayout);
        this.mMajorWeightMin = typedArrayObtainStyledAttributes.getFloat(1, 0.0f);
        this.mMinorWeightMin = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.mMajorWeightMax = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        this.mMinorWeightMax = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
