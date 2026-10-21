package com.android.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class WatchListDecorLayout extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener {
    private View mBottomPanel;
    private int mForegroundPaddingBottom;
    private int mForegroundPaddingLeft;
    private int mForegroundPaddingRight;
    private int mForegroundPaddingTop;
    private ListView mListView;
    private final ArrayList<View> mMatchParentChildren;
    private ViewTreeObserver mObserver;
    private int mPendingScroll;
    private View mTopPanel;

    public WatchListDecorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mMatchParentChildren = new ArrayList<>(1);
    }

    private void applyMeasureToChild(View view, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(marginLayoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (((getMeasuredWidth() - getPaddingLeftWithForeground()) - getPaddingRightWithForeground()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin), 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingLeftWithForeground() + getPaddingRightWithForeground() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), marginLayoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (((getMeasuredHeight() - getPaddingTopWithForeground()) - getPaddingBottomWithForeground()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin), 1073741824) : ViewGroup.getChildMeasureSpec(i3, getPaddingTopWithForeground() + getPaddingBottomWithForeground() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
    }

    private int getPaddingBottomWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingBottom, this.mForegroundPaddingBottom) : this.mPaddingBottom + this.mForegroundPaddingBottom;
    }

    private int getPaddingLeftWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingLeft, this.mForegroundPaddingLeft) : this.mPaddingLeft + this.mForegroundPaddingLeft;
    }

    private int getPaddingRightWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingRight, this.mForegroundPaddingRight) : this.mPaddingRight + this.mForegroundPaddingRight;
    }

    private int getPaddingTopWithForeground() {
        return isForegroundInsidePadding() ? Math.max(this.mPaddingTop, this.mForegroundPaddingTop) : this.mPaddingTop + this.mForegroundPaddingTop;
    }

    private int measureAndGetHeight(View view, int i2, int i3) {
        if (view == null) {
            return 0;
        }
        if (view.getVisibility() != 8) {
            applyMeasureToChild(this.mBottomPanel, i2, i3);
            return view.getMeasuredHeight();
        }
        if (!getMeasureAllChildren()) {
            return 0;
        }
        applyMeasureToChild(this.mBottomPanel, i2, i3);
        return 0;
    }

    private void setScrolling(View view, float f2) {
        if (view.getTranslationY() != f2) {
            view.setTranslationY(f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mPendingScroll = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (!(childAt instanceof ListView)) {
                int i3 = ((FrameLayout.LayoutParams) childAt.getLayoutParams()).gravity & 112;
                if (i3 == 48 && this.mTopPanel == null) {
                    this.mTopPanel = childAt;
                } else if (i3 == 80 && this.mBottomPanel == null) {
                    this.mBottomPanel = childAt;
                }
            } else {
                if (this.mListView != null) {
                    throw new IllegalArgumentException("only one ListView child allowed");
                }
                ListView listView = (ListView) childAt;
                this.mListView = listView;
                listView.setNestedScrollingEnabled(true);
                ViewTreeObserver viewTreeObserver = this.mListView.getViewTreeObserver();
                this.mObserver = viewTreeObserver;
                viewTreeObserver.addOnScrollChangedListener(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.mListView = null;
        this.mBottomPanel = null;
        this.mTopPanel = null;
        ViewTreeObserver viewTreeObserver = this.mObserver;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.mObserver.removeOnScrollChangedListener(this);
            }
            this.mObserver = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int childCount = getChildCount();
        boolean z2 = (View.MeasureSpec.getMode(i2) == 1073741824 && View.MeasureSpec.getMode(i3) == 1073741824) ? false : true;
        this.mMatchParentChildren.clear();
        int iCombineMeasuredStates = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (getMeasureAllChildren() || childAt.getVisibility() != 8) {
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                iMax = Math.max(iMax, childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
                iMax2 = Math.max(iMax2, childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                if (z2 && (layoutParams.width == -1 || layoutParams.height == -1)) {
                    this.mMatchParentChildren.add(childAt);
                }
            }
        }
        int i5 = iCombineMeasuredStates;
        int paddingLeftWithForeground = getPaddingLeftWithForeground() + getPaddingRightWithForeground() + iMax;
        int iMax3 = Math.max(getPaddingTopWithForeground() + getPaddingBottomWithForeground() + iMax2, getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingLeftWithForeground, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        setMeasuredDimension(View.resolveSizeAndState(iMax4, i2, i5), View.resolveSizeAndState(iMax3, i3, i5 << 16));
        ListView listView = this.mListView;
        if (listView != null) {
            int i6 = this.mPendingScroll;
            if (i6 != 0) {
                listView.scrollListBy(i6);
                this.mPendingScroll = 0;
            }
            int iMax5 = Math.max(this.mListView.getPaddingTop(), measureAndGetHeight(this.mTopPanel, i2, i3));
            int iMax6 = Math.max(this.mListView.getPaddingBottom(), measureAndGetHeight(this.mBottomPanel, i2, i3));
            if (iMax5 != this.mListView.getPaddingTop() || iMax6 != this.mListView.getPaddingBottom()) {
                this.mPendingScroll = (this.mListView.getPaddingTop() - iMax5) + this.mPendingScroll;
                ListView listView2 = this.mListView;
                listView2.setPadding(listView2.getPaddingLeft(), iMax5, this.mListView.getPaddingRight(), iMax6);
            }
        }
        int size = this.mMatchParentChildren.size();
        if (size > 1) {
            for (int i7 = 0; i7 < size; i7++) {
                View view = this.mMatchParentChildren.get(i7);
                if (this.mListView == null || (view != this.mTopPanel && view != this.mBottomPanel)) {
                    applyMeasureToChild(view, i2, i3);
                }
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        ListView listView = this.mListView;
        if (listView == null) {
            return;
        }
        if (this.mTopPanel != null) {
            if (listView.getChildCount() <= 0) {
                setScrolling(this.mTopPanel, 0.0f);
            } else if (this.mListView.getFirstVisiblePosition() == 0) {
                setScrolling(this.mTopPanel, (this.mListView.getChildAt(0).getY() - this.mTopPanel.getHeight()) - this.mTopPanel.getTop());
            } else {
                View view = this.mTopPanel;
                setScrolling(view, -view.getHeight());
            }
        }
        if (this.mBottomPanel != null) {
            if (this.mListView.getChildCount() <= 0) {
                setScrolling(this.mBottomPanel, 0.0f);
                return;
            }
            if (this.mListView.getLastVisiblePosition() < this.mListView.getCount() - 1) {
                View view2 = this.mBottomPanel;
                setScrolling(view2, view2.getHeight());
            } else {
                ListView listView2 = this.mListView;
                View childAt = listView2.getChildAt(listView2.getChildCount() - 1);
                setScrolling(this.mBottomPanel, Math.max(0.0f, (childAt.getY() + childAt.getHeight()) - this.mBottomPanel.getTop()));
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void setForegroundGravity(int i2) {
        if (getForegroundGravity() != i2) {
            super.setForegroundGravity(i2);
            Drawable foreground = getForeground();
            if (getForegroundGravity() != 119 || foreground == null) {
                this.mForegroundPaddingLeft = 0;
                this.mForegroundPaddingTop = 0;
                this.mForegroundPaddingRight = 0;
                this.mForegroundPaddingBottom = 0;
                return;
            }
            Rect rect = new Rect();
            if (foreground.getPadding(rect)) {
                this.mForegroundPaddingLeft = rect.left;
                this.mForegroundPaddingTop = rect.top;
                this.mForegroundPaddingRight = rect.right;
                this.mForegroundPaddingBottom = rect.bottom;
            }
        }
    }

    public WatchListDecorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mMatchParentChildren = new ArrayList<>(1);
    }

    public WatchListDecorLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mForegroundPaddingLeft = 0;
        this.mForegroundPaddingTop = 0;
        this.mForegroundPaddingRight = 0;
        this.mForegroundPaddingBottom = 0;
        this.mMatchParentChildren = new ArrayList<>(1);
    }
}
