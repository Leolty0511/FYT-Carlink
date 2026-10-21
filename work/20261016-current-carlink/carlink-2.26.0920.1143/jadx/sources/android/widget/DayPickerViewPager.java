package android.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.widget.ViewPager;
import java.util.ArrayList;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class DayPickerViewPager extends ViewPager {
    private final ArrayList<View> mMatchParentChildren;

    public DayPickerViewPager(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t2;
        T t3;
        if (predicate.test(this)) {
            return this;
        }
        SimpleMonthView view2 = ((DayPickerPagerAdapter) getAdapter()).getView(getCurrent());
        if (view2 != view && view2 != null && (t3 = (T) view2.findViewByPredicate(predicate)) != null) {
            return t3;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != view && childAt != view2 && (t2 = (T) childAt.findViewByPredicate(predicate)) != null) {
                return t2;
            }
        }
        return null;
    }

    @Override // com.android.internal.widget.ViewPager, android.view.View
    public void onMeasure(int i2, int i3) {
        populate();
        int childCount = getChildCount();
        boolean z2 = (View.MeasureSpec.getMode(i2) == 1073741824 && View.MeasureSpec.getMode(i3) == 1073741824) ? false : true;
        int iMax = 0;
        int iMax2 = 0;
        int iCombineMeasuredStates = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i3);
                ViewPager.LayoutParams layoutParams = (ViewPager.LayoutParams) childAt.getLayoutParams();
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
                iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                if (z2 && (layoutParams.width == -1 || layoutParams.height == -1)) {
                    this.mMatchParentChildren.add(childAt);
                }
            }
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + iMax;
        int iMax3 = Math.max(getPaddingBottom() + getPaddingTop() + iMax2, getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingRight, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax4, i2, iCombineMeasuredStates), View.resolveSizeAndState(iMax3, i3, iCombineMeasuredStates << 16));
        int size = this.mMatchParentChildren.size();
        if (size > 1) {
            for (int i5 = 0; i5 < size; i5++) {
                View view = this.mMatchParentChildren.get(i5);
                ViewPager.LayoutParams layoutParams2 = (ViewPager.LayoutParams) view.getLayoutParams();
                view.measure(layoutParams2.width == -1 ? View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft(), layoutParams2.width), layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824) : ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop(), layoutParams2.height));
            }
        }
        this.mMatchParentChildren.clear();
    }

    public DayPickerViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DayPickerViewPager(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public DayPickerViewPager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mMatchParentChildren = new ArrayList<>(1);
    }
}
