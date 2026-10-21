package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public class ResolverDrawerLayout extends ViewGroup {
    private static final String TAG = "ResolverDrawerLayout";
    private int mActivePointerId;
    private float mCollapseOffset;
    private int mCollapsibleHeight;
    private int mCollapsibleHeightReserved;
    private boolean mDismissLocked;
    private boolean mDismissOnScrollerFinished;
    private float mInitialTouchX;
    private float mInitialTouchY;
    private boolean mIsDragging;
    private float mLastTouchY;
    private int mMaxCollapsedHeight;
    private int mMaxCollapsedHeightSmall;
    private int mMaxWidth;
    private final float mMinFlingVelocity;
    private OnDismissedListener mOnDismissedListener;
    private boolean mOpenOnClick;
    private boolean mOpenOnLayout;
    private RunOnDismissedListener mRunOnDismissedListener;
    private Drawable mScrollIndicatorDrawable;
    private final OverScroller mScroller;
    private boolean mSmallCollapsed;
    private final Rect mTempRect;
    private int mTopOffset;
    private final ViewTreeObserver.OnTouchModeChangeListener mTouchModeChangeListener;
    private final int mTouchSlop;
    private int mUncollapsibleHeight;
    private final VelocityTracker mVelocityTracker;

    public interface OnDismissedListener {
        void onDismissed();
    }

    public class RunOnDismissedListener implements Runnable {
        private RunOnDismissedListener() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResolverDrawerLayout.this.dispatchOnDismissed();
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.widget.ResolverDrawerLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        boolean open;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.open ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.open = parcel.readInt() != 0;
        }
    }

    public ResolverDrawerLayout(Context context) {
        this(context, null);
    }

    private void abortAnimation() {
        this.mScroller.abortAnimation();
        this.mRunOnDismissedListener = null;
        this.mDismissOnScrollerFinished = false;
    }

    private float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((float) (((double) (f2 - 0.5f)) * 0.4712389167638204d));
    }

    private View findChildUnder(float f2, float f3) {
        return findChildUnder(this, f2, f3);
    }

    private View findListChildUnder(float f2, float f3) {
        View viewFindChildUnder = findChildUnder(f2, f3);
        while (viewFindChildUnder != null) {
            f2 -= viewFindChildUnder.getX();
            f3 -= viewFindChildUnder.getY();
            if (viewFindChildUnder instanceof AbsListView) {
                return findChildUnder((ViewGroup) viewFindChildUnder, f2, f3);
            }
            viewFindChildUnder = viewFindChildUnder instanceof ViewGroup ? findChildUnder((ViewGroup) viewFindChildUnder, f2, f3) : null;
        }
        return viewFindChildUnder;
    }

    private int getMaxCollapsedHeight() {
        return (isSmallCollapsed() ? this.mMaxCollapsedHeightSmall : this.mMaxCollapsedHeight) + this.mCollapsibleHeightReserved;
    }

    private static boolean isChildUnder(View view, float f2, float f3) {
        float x2 = view.getX();
        float y2 = view.getY();
        return f2 >= x2 && f3 >= y2 && f2 < ((float) view.getWidth()) + x2 && f3 < ((float) view.getHeight()) + y2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDescendantClipped(View view) {
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        if (view.getParent() != this) {
            ViewParent parent = view.getParent();
            while (parent != this) {
                view = parent;
                parent = view.getParent();
            }
        }
        int height = getHeight() - getPaddingBottom();
        int childCount = getChildCount();
        for (int iIndexOfChild = indexOfChild(view) + 1; iIndexOfChild < childCount; iIndexOfChild++) {
            View childAt = getChildAt(iIndexOfChild);
            if (childAt.getVisibility() != 8) {
                height = Math.min(height, childAt.getTop());
            }
        }
        return this.mTempRect.bottom > height;
    }

    private boolean isDismissable() {
        return (this.mOnDismissedListener == null || this.mDismissLocked) ? false : true;
    }

    private boolean isDragging() {
        return this.mIsDragging || getNestedScrollAxes() == 2;
    }

    private boolean isListChildUnderClipped(float f2, float f3) {
        View viewFindListChildUnder = findListChildUnder(f2, f3);
        return viewFindListChildUnder != null && isDescendantClipped(viewFindListChildUnder);
    }

    private boolean isMoving() {
        return this.mIsDragging || !this.mScroller.isFinished();
    }

    private void onCollapsedChanged(boolean z2) {
        notifyViewAccessibilityStateChangedIfNeeded(0);
        if (this.mScrollIndicatorDrawable != null) {
            setWillNotDraw(!z2);
        }
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mInitialTouchX = motionEvent.getX(i2);
            float y2 = motionEvent.getY(i2);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            this.mActivePointerId = motionEvent.getPointerId(i2);
        }
    }

    private float performDrag(float f2) {
        float fMax = Math.max(0.0f, Math.min(this.mCollapseOffset + f2, this.mCollapsibleHeight + this.mUncollapsibleHeight));
        float f3 = this.mCollapseOffset;
        if (fMax == f3) {
            return 0.0f;
        }
        float f4 = fMax - f3;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (!((LayoutParams) childAt.getLayoutParams()).ignoreOffset) {
                childAt.offsetTopAndBottom((int) f4);
            }
        }
        boolean z2 = this.mCollapseOffset != 0.0f;
        this.mCollapseOffset = fMax;
        this.mTopOffset = (int) (this.mTopOffset + f4);
        boolean z3 = fMax != 0.0f;
        if (z2 != z3) {
            onCollapsedChanged(z3);
        }
        postInvalidateOnAnimation();
        return f4;
    }

    private void resetTouch() {
        this.mActivePointerId = -1;
        this.mIsDragging = false;
        this.mOpenOnClick = false;
        this.mLastTouchY = 0.0f;
        this.mInitialTouchY = 0.0f;
        this.mInitialTouchX = 0.0f;
        this.mVelocityTracker.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void smoothScrollTo(int i2, float f2) {
        abortAnimation();
        int i3 = (int) this.mCollapseOffset;
        int i4 = i2 - i3;
        if (i4 == 0) {
            return;
        }
        int height = getHeight();
        int i5 = height / 2;
        float f3 = height;
        float f4 = i5;
        float fDistanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i4) * 1.0f) / f3)) * f4) + f4;
        float fAbs = Math.abs(f2);
        this.mScroller.startScroll(0, i3, 0, i4, Math.min(fAbs > 0.0f ? Math.round(Math.abs(fDistanceInfluenceForSnapDuration / fAbs) * 1000.0f) * 4 : (int) (((Math.abs(i4) / f3) + 1.0f) * 100.0f), 300));
        postInvalidateOnAnimation();
    }

    private boolean updateCollapseOffset(int i2, boolean z2) {
        int i3;
        if (i2 == this.mCollapsibleHeight) {
            return false;
        }
        if (isLaidOut()) {
            float f2 = this.mCollapseOffset;
            boolean z3 = f2 != 0.0f;
            if (z2 && i2 < (i3 = this.mCollapsibleHeight) && f2 == i2) {
                this.mCollapseOffset = i3;
            } else {
                this.mCollapseOffset = Math.min(f2, this.mCollapsibleHeight);
            }
            boolean z4 = this.mCollapseOffset != 0.0f;
            if (z3 != z4) {
                onCollapsedChanged(z4);
            }
        } else {
            this.mCollapseOffset = this.mOpenOnLayout ? 0.0f : this.mCollapsibleHeight;
        }
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.mScroller.computeScrollOffset()) {
            boolean z2 = !this.mScroller.isFinished();
            performDrag(this.mScroller.getCurrY() - this.mCollapseOffset);
            if (z2) {
                postInvalidateOnAnimation();
            } else {
                if (!this.mDismissOnScrollerFinished || this.mOnDismissedListener == null) {
                    return;
                }
                RunOnDismissedListener runOnDismissedListener = new RunOnDismissedListener();
                this.mRunOnDismissedListener = runOnDismissedListener;
                post(runOnDismissedListener);
            }
        }
    }

    public void dispatchOnDismissed() {
        OnDismissedListener onDismissedListener = this.mOnDismissedListener;
        if (onDismissedListener != null) {
            onDismissedListener.onDismissed();
        }
        RunOnDismissedListener runOnDismissedListener = this.mRunOnDismissedListener;
        if (runOnDismissedListener != null) {
            removeCallbacks(runOnDismissedListener);
            this.mRunOnDismissedListener = null;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ScrollView.class.getName();
    }

    public boolean isCollapsed() {
        return this.mCollapseOffset > 0.0f;
    }

    public boolean isSmallCollapsed() {
        return this.mSmallCollapsed;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this.mTouchModeChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnTouchModeChangeListener(this.mTouchModeChangeListener);
        abortAnimation();
    }

    @Override // android.view.View
    public void onDrawForeground(Canvas canvas) {
        Drawable drawable = this.mScrollIndicatorDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        super.onDrawForeground(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (isEnabled() && this.mCollapseOffset != 0.0f) {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.setScrollable(true);
        }
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0065  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mVelocityTracker.clear();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.mInitialTouchX = x2;
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            this.mOpenOnClick = isListChildUnderClipped(x2, y2) && this.mCollapseOffset > 0.0f;
        } else if (actionMasked == 1) {
            resetTouch();
        } else if (actionMasked == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            float f2 = y3 - this.mInitialTouchY;
            if (Math.abs(f2) > this.mTouchSlop && findChildUnder(x3, y3) != null && (getNestedScrollAxes() & 2) == 0) {
                this.mActivePointerId = motionEvent.getPointerId(0);
                this.mIsDragging = true;
                float f3 = this.mLastTouchY;
                int i2 = this.mTouchSlop;
                this.mLastTouchY = Math.max(f3 - i2, Math.min(f2 + f3, f3 + i2));
            }
        } else if (actionMasked == 3) {
            resetTouch();
        } else if (actionMasked == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        if (this.mIsDragging) {
            abortAnimation();
        }
        return this.mIsDragging || this.mOpenOnClick;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int width = getWidth();
        int i6 = this.mTopOffset;
        int paddingLeft = getPaddingLeft();
        int paddingRight = width - getPaddingRight();
        int childCount = getChildCount();
        View view = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.hasNestedScrollIndicator) {
                view = childAt;
            }
            if (childAt.getVisibility() != 8) {
                int i8 = i6 + layoutParams.topMargin;
                if (layoutParams.ignoreOffset) {
                    i8 = (int) (i8 - this.mCollapseOffset);
                }
                int measuredHeight = childAt.getMeasuredHeight() + i8;
                int measuredWidth = childAt.getMeasuredWidth();
                int i9 = (((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft;
                childAt.layout(i9, i8, measuredWidth + i9, measuredHeight);
                i6 = measuredHeight + layoutParams.bottomMargin;
            }
        }
        if (this.mScrollIndicatorDrawable != null) {
            if (view == null) {
                this.mScrollIndicatorDrawable = null;
                setWillNotDraw(true);
                return;
            }
            int left = view.getLeft();
            int right = view.getRight();
            int top = view.getTop();
            this.mScrollIndicatorDrawable.setBounds(left, top - this.mScrollIndicatorDrawable.getIntrinsicHeight(), right, top);
            setWillNotDraw(true ^ isCollapsed());
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int i5 = this.mMaxWidth;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5 >= 0 ? Math.min(size, i5) : size, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childCount = getChildCount();
        int measuredHeight = paddingBottom;
        int i6 = 0;
        while (true) {
            i4 = 8;
            if (i6 >= childCount) {
                break;
            }
            View childAt = getChildAt(i6);
            if (((LayoutParams) childAt.getLayoutParams()).alwaysShow && childAt.getVisibility() != 8) {
                measureChildWithMargins(childAt, iMakeMeasureSpec, paddingRight, iMakeMeasureSpec2, measuredHeight);
                measuredHeight = childAt.getMeasuredHeight() + measuredHeight;
            }
            i6++;
        }
        int i7 = 0;
        int measuredHeight2 = measuredHeight;
        while (i7 < childCount) {
            View childAt2 = getChildAt(i7);
            if (!((LayoutParams) childAt2.getLayoutParams()).alwaysShow && childAt2.getVisibility() != i4) {
                measureChildWithMargins(childAt2, iMakeMeasureSpec, paddingRight, iMakeMeasureSpec2, measuredHeight2);
                measuredHeight2 = childAt2.getMeasuredHeight() + measuredHeight2;
            }
            i7++;
            i4 = i4;
        }
        int i8 = this.mCollapsibleHeight;
        int iMax = Math.max(0, (measuredHeight2 - measuredHeight) - getMaxCollapsedHeight());
        this.mCollapsibleHeight = iMax;
        this.mUncollapsibleHeight = measuredHeight2 - iMax;
        updateCollapseOffset(i8, !isDragging());
        this.mTopOffset = Math.max(0, size2 - measuredHeight2) + ((int) this.mCollapseOffset);
        setMeasuredDimension(size, size2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    /* JADX WARN: Code duplicated, block: B:16:0x0030  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        if (z2 || Math.abs(f3) <= this.mMinFlingVelocity) {
            return false;
        }
        if (!isDismissable() || f3 >= 0.0f) {
            smoothScrollTo(f3 <= 0.0f ? this.mCollapsibleHeight : 0, f3);
        } else {
            float f4 = this.mCollapseOffset;
            int i2 = this.mCollapsibleHeight;
            if (f4 > i2) {
                smoothScrollTo(i2 + this.mUncollapsibleHeight, f3);
                this.mDismissOnScrollerFinished = true;
            } else {
                smoothScrollTo(f3 <= 0.0f ? this.mCollapsibleHeight : 0, f3);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        if (f3 <= this.mMinFlingVelocity || this.mCollapseOffset == 0.0f) {
            return false;
        }
        smoothScrollTo(0, f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View view, int i2, Bundle bundle) {
        if (super.onNestedPrePerformAccessibilityAction(view, i2, bundle)) {
            return true;
        }
        if (i2 != 4096 || this.mCollapseOffset == 0.0f) {
            return false;
        }
        smoothScrollTo(0, 0.0f);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        if (i3 > 0) {
            iArr[1] = (int) (-performDrag(-i3));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        if (i5 < 0) {
            performDrag(-i5);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        super.onNestedScrollAccepted(view, view2, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mOpenOnLayout = savedState.open;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.open = this.mCollapsibleHeight > 0 && this.mCollapseOffset == 0.0f;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (i2 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        super.onStopNestedScroll(view);
        if (this.mScroller.isFinished()) {
            float f2 = this.mCollapseOffset;
            int i2 = this.mCollapsibleHeight;
            if (f2 < i2 / 2) {
                i2 = 0;
            }
            smoothScrollTo(i2, 0.0f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:68:0x0161  */
    /* JADX WARN: Code duplicated, block: B:70:0x0165  */
    /* JADX WARN: Code duplicated, block: B:71:0x0167  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        this.mVelocityTracker.addMovement(motionEvent);
        boolean z2 = true;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.mInitialTouchX = x2;
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            this.mActivePointerId = motionEvent.getPointerId(0);
            boolean z3 = findChildUnder(this.mInitialTouchX, this.mInitialTouchY) != null;
            boolean z4 = isDismissable() || this.mCollapsibleHeight > 0;
            this.mIsDragging = z3 && z4;
            abortAnimation();
            return z4;
        }
        if (actionMasked == 1) {
            boolean z5 = this.mIsDragging;
            this.mIsDragging = false;
            if (!z5 && findChildUnder(this.mInitialTouchX, this.mInitialTouchY) == null && findChildUnder(motionEvent.getX(), motionEvent.getY()) == null && isDismissable()) {
                dispatchOnDismissed();
                resetTouch();
                return true;
            }
            if (this.mOpenOnClick && Math.abs(motionEvent.getX() - this.mInitialTouchX) < this.mTouchSlop && Math.abs(motionEvent.getY() - this.mInitialTouchY) < this.mTouchSlop) {
                smoothScrollTo(0, 0.0f);
                return true;
            }
            this.mVelocityTracker.computeCurrentVelocity(1000);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            if (Math.abs(yVelocity) <= this.mMinFlingVelocity) {
                float f2 = this.mCollapseOffset;
                int i3 = this.mCollapsibleHeight;
                if (f2 < i3 / 2) {
                    i3 = 0;
                }
                smoothScrollTo(i3, 0.0f);
            } else if (!isDismissable() || yVelocity <= 0.0f) {
                if (yVelocity < 0.0f) {
                    i2 = 0;
                } else {
                    i2 = this.mCollapsibleHeight;
                }
                smoothScrollTo(i2, yVelocity);
            } else {
                float f3 = this.mCollapseOffset;
                int i4 = this.mCollapsibleHeight;
                if (f3 > i4) {
                    smoothScrollTo(i4 + this.mUncollapsibleHeight, yVelocity);
                    this.mDismissOnScrollerFinished = true;
                } else {
                    if (yVelocity < 0.0f) {
                        i2 = 0;
                    } else {
                        i2 = this.mCollapsibleHeight;
                    }
                    smoothScrollTo(i2, yVelocity);
                }
            }
            resetTouch();
            return false;
        }
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.mIsDragging) {
                    float f4 = this.mCollapseOffset;
                    int i5 = this.mCollapsibleHeight;
                    smoothScrollTo(f4 >= ((float) (i5 / 2)) ? i5 : 0, 0.0f);
                }
                resetTouch();
                return true;
            }
            if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return false;
                }
                onSecondaryPointerUp(motionEvent);
                return false;
            }
            int actionIndex = motionEvent.getActionIndex();
            this.mActivePointerId = motionEvent.getPointerId(actionIndex);
            this.mInitialTouchX = motionEvent.getX(actionIndex);
            float y3 = motionEvent.getY(actionIndex);
            this.mLastTouchY = y3;
            this.mInitialTouchY = y3;
            return false;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (iFindPointerIndex < 0) {
            Log.e(TAG, "Bad pointer id " + this.mActivePointerId + ", resetting");
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mInitialTouchX = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
            iFindPointerIndex = 0;
        }
        float x3 = motionEvent.getX(iFindPointerIndex);
        float y5 = motionEvent.getY(iFindPointerIndex);
        if (this.mIsDragging) {
            z2 = false;
        } else {
            float f5 = y5 - this.mInitialTouchY;
            if (Math.abs(f5) <= this.mTouchSlop || findChildUnder(x3, y5) == null) {
                z2 = false;
            } else {
                this.mIsDragging = true;
                float f6 = this.mLastTouchY;
                int i6 = this.mTouchSlop;
                this.mLastTouchY = Math.max(f6 - i6, Math.min(f5 + f6, f6 + i6));
            }
        }
        if (this.mIsDragging) {
            performDrag(y5 - this.mLastTouchY);
        }
        this.mLastTouchY = y5;
        return z2;
    }

    @Override // android.view.View
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (i2 == AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS.getId()) {
            return false;
        }
        if (super.performAccessibilityActionInternal(i2, bundle)) {
            return true;
        }
        if (i2 != 4096 || this.mCollapseOffset == 0.0f) {
            return false;
        }
        smoothScrollTo(0, 0.0f);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || !isDescendantClipped(view2)) {
            return;
        }
        smoothScrollTo(0, 0.0f);
    }

    public void setCollapsed(boolean z2) {
        if (isLaidOut()) {
            smoothScrollTo(z2 ? this.mCollapsibleHeight : 0, 0.0f);
        } else {
            this.mOpenOnLayout = z2;
        }
    }

    public void setCollapsibleHeightReserved(int i2) {
        int i3 = this.mCollapsibleHeightReserved;
        this.mCollapsibleHeightReserved = i2;
        int i4 = i2 - i3;
        if (i4 != 0 && this.mIsDragging) {
            this.mLastTouchY -= i4;
        }
        int i5 = this.mCollapsibleHeight;
        this.mCollapsibleHeight = Math.max(i5, getMaxCollapsedHeight());
        if (updateCollapseOffset(i5, !isDragging())) {
            return;
        }
        invalidate();
    }

    public void setDismissLocked(boolean z2) {
        this.mDismissLocked = z2;
    }

    public void setOnDismissedListener(OnDismissedListener onDismissedListener) {
        this.mOnDismissedListener = onDismissedListener;
    }

    public void setSmallCollapsed(boolean z2) {
        this.mSmallCollapsed = z2;
        requestLayout();
    }

    public ResolverDrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private static View findChildUnder(ViewGroup viewGroup, float f2, float f3) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (isChildUnder(childAt, f2, f3)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public ResolverDrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mActivePointerId = -1;
        this.mTempRect = new Rect();
        this.mTouchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: com.android.internal.widget.ResolverDrawerLayout.1
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public void onTouchModeChanged(boolean z2) {
                if (z2 || !ResolverDrawerLayout.this.hasFocus()) {
                    return;
                }
                ResolverDrawerLayout resolverDrawerLayout = ResolverDrawerLayout.this;
                if (resolverDrawerLayout.isDescendantClipped(resolverDrawerLayout.getFocusedChild())) {
                    ResolverDrawerLayout.this.smoothScrollTo(0, 0.0f);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ResolverDrawerLayout, i2, 0);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.mMaxCollapsedHeight = dimensionPixelSize;
        this.mMaxCollapsedHeightSmall = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, dimensionPixelSize);
        typedArrayObtainStyledAttributes.recycle();
        this.mScrollIndicatorDrawable = this.mContext.getDrawable(R.drawable.scroll_indicator_material);
        this.mScroller = new OverScroller(context, AnimationUtils.loadInterpolator(context, 17563653));
        this.mVelocityTracker = VelocityTracker.obtain();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        setImportantForAccessibility(1);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean alwaysShow;
        public boolean hasNestedScrollIndicator;
        public boolean ignoreOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ResolverDrawerLayout_LayoutParams);
            this.alwaysShow = typedArrayObtainStyledAttributes.getBoolean(1, false);
            this.ignoreOffset = typedArrayObtainStyledAttributes.getBoolean(3, false);
            this.hasNestedScrollIndicator = typedArrayObtainStyledAttributes.getBoolean(2, false);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.alwaysShow = layoutParams.alwaysShow;
            this.ignoreOffset = layoutParams.ignoreOffset;
            this.hasNestedScrollIndicator = layoutParams.hasNestedScrollIndicator;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
