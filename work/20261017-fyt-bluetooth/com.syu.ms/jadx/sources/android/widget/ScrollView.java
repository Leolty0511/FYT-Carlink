package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import i.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ScrollView extends FrameLayout {
    public static final int ANIMATED_SCROLL_GAP = 250;
    private static final int INVALID_POINTER = -1;
    public static final float MAX_SCROLL_FACTOR = 0.5f;
    private static final String TAG = "ScrollView";
    private int mActivePointerId;
    private View mChildToScrollTo;
    private EdgeEffect mEdgeGlowBottom;
    private EdgeEffect mEdgeGlowTop;

    @ViewDebug.ExportedProperty(category = "layout")
    private boolean mFillViewport;
    private StrictMode.Span mFlingStrictSpan;
    private boolean mIsBeingDragged;
    private boolean mIsLayoutDirty;
    private int mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mOverflingDistance;
    private int mOverscrollDistance;
    private SavedState mSavedState;
    private StrictMode.Span mScrollStrictSpan;
    private OverScroller mScroller;
    private boolean mSmoothScrollingEnabled;
    private final Rect mTempRect;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.ScrollView.SavedState.1
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
        public int scrollPosition;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.scrollPosition);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }
    }

    public ScrollView(Context context) {
        this(context, null);
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + this.mPaddingTop) + this.mPaddingBottom;
        }
        return false;
    }

    private static int clamp(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
    }

    private void doScrollY(int i2) {
        if (i2 != 0) {
            if (this.mSmoothScrollingEnabled) {
                smoothScrollBy(0, i2);
            } else {
                scrollBy(0, i2);
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        recycleVelocityTracker();
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
        StrictMode.Span span = this.mScrollStrictSpan;
        if (span != null) {
            span.finish();
            this.mScrollStrictSpan = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    private View findFocusableViewInBounds(boolean z2, int i2, int i3) {
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = focusables.get(i4);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z4 = i2 < top && bottom < i3;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4 && z5) {
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else if (z5) {
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - this.mPaddingBottom) - this.mPaddingTop));
        }
        return 0;
    }

    private boolean inChild(int i2, int i3) {
        if (getChildCount() <= 0) {
            return false;
        }
        int i4 = this.mScrollY;
        View childAt = getChildAt(0);
        return i3 >= childAt.getTop() - i4 && i3 < childAt.getBottom() - i4 && i2 >= childAt.getLeft() && i2 < childAt.getRight();
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initScrollView() {
        this.mScroller = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.mContext);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mOverscrollDistance = viewConfiguration.getScaledOverscrollDistance();
        this.mOverflingDistance = viewConfiguration.getScaledOverflingDistance();
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean isOffScreen(View view) {
        return !isWithinDeltaOfScreen(view, 0, getHeight());
    }

    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    private boolean isWithinDeltaOfScreen(View view, int i2, int i3) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        return this.mTempRect.bottom + i2 >= getScrollY() && this.mTempRect.top - i2 <= getScrollY() + i3;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i2 = action == 0 ? 1 : 0;
            this.mLastMotionY = (int) motionEvent.getY(i2);
            this.mActivePointerId = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private boolean scrollAndFocus(int i2, int i3, int i4) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z2 = false;
        boolean z3 = i2 == 33;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z3, i3, i4);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if (i3 < scrollY || i4 > i5) {
            doScrollY(z3 ? i3 - scrollY : i4 - i5);
            z2 = true;
        }
        if (viewFindFocusableViewInBounds != findFocus()) {
            viewFindFocusableViewInBounds.requestFocus(i2);
        }
        return z2;
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (iComputeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean z2) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z3 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z3) {
            if (z2) {
                scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z3;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public boolean arrowScroll(int i2) {
        int bottom;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !isWithinDeltaOfScreen(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0 && (bottom = getChildAt(0).getBottom() - ((getScrollY() + getHeight()) - this.mPaddingBottom)) < maxScrollAmount) {
                maxScrollAmount = bottom;
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            doScrollY(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            viewFindNextFocus.requestFocus(i2);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || !isOffScreen(viewFindFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.mScroller.computeScrollOffset()) {
            StrictMode.Span span = this.mFlingStrictSpan;
            if (span != null) {
                span.finish();
                this.mFlingStrictSpan = null;
                return;
            }
            return;
        }
        int i2 = this.mScrollX;
        int i3 = this.mScrollY;
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (i2 != currX || i3 != currY) {
            int scrollRange = getScrollRange();
            int overScrollMode = getOverScrollMode();
            boolean z2 = true;
            if (overScrollMode != 0 && (overScrollMode != 1 || scrollRange <= 0)) {
                z2 = false;
            }
            boolean z3 = z2;
            overScrollBy(currX - i2, currY - i3, i2, i3, 0, scrollRange, 0, this.mOverflingDistance, false);
            onScrollChanged(this.mScrollX, this.mScrollY, i2, i3);
            if (z3) {
                if (currY < 0 && i3 >= 0) {
                    this.mEdgeGlowTop.onAbsorb((int) this.mScroller.getCurrVelocity());
                } else if (currY > scrollRange && i3 <= scrollRange) {
                    this.mEdgeGlowBottom.onAbsorb((int) this.mScroller.getCurrVelocity());
                }
            }
        }
        if (awakenScrollBars()) {
            return;
        }
        postInvalidateOnAnimation();
    }

    public int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i2 -= verticalFadingEdgeLength;
        }
        int i3 = rect.bottom;
        if (i3 > i2 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, getChildAt(0).getBottom() - i2);
        }
        if (rect.top >= scrollY || i3 >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - this.mPaddingBottom) - this.mPaddingTop;
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int i2 = this.mScrollY;
        int iMax = Math.max(0, bottom - height);
        if (i2 < 0) {
            return bottom - i2;
        }
        return i2 > iMax ? bottom + (i2 - iMax) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        EdgeEffect edgeEffect = this.mEdgeGlowTop;
        if (edgeEffect != null) {
            int i2 = this.mScrollY;
            if (!edgeEffect.isFinished()) {
                int iSave = canvas.save();
                int width = getWidth();
                int i3 = this.mPaddingLeft;
                int i4 = (width - i3) - this.mPaddingRight;
                canvas.translate(i3, Math.min(0, i2));
                this.mEdgeGlowTop.setSize(i4, getHeight());
                if (this.mEdgeGlowTop.draw(canvas)) {
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(iSave);
            }
            if (this.mEdgeGlowBottom.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            int width2 = (getWidth() - this.mPaddingLeft) - this.mPaddingRight;
            int height = getHeight();
            canvas.translate((-width2) + this.mPaddingLeft, Math.max(getScrollRange(), i2) + height);
            canvas.rotate(180.0f, width2, 0.0f);
            this.mEdgeGlowBottom.setSize(width2, height);
            if (this.mEdgeGlowBottom.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave2);
        }
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return !keyEvent.isAltPressed() ? arrowScroll(33) : fullScroll(33);
        }
        if (keyCode == 20) {
            return !keyEvent.isAltPressed() ? arrowScroll(130) : fullScroll(130);
        }
        if (keyCode != 62) {
            return false;
        }
        pageScroll(keyEvent.isShiftPressed() ? 33 : 130);
        return false;
    }

    public void fling(int i2) {
        if (getChildCount() > 0) {
            int height = (getHeight() - this.mPaddingBottom) - this.mPaddingTop;
            this.mScroller.fling(this.mScrollX, this.mScrollY, 0, i2, 0, 0, 0, Math.max(0, getChildAt(0).getHeight() - height), 0, height / 2);
            if (this.mFlingStrictSpan == null) {
                this.mFlingStrictSpan = StrictMode.enterCriticalSpan("ScrollView-fling");
            }
            postInvalidateOnAnimation();
        }
    }

    public boolean fullScroll(int i2) {
        int childCount;
        boolean z2 = i2 == 130;
        int height = getHeight();
        Rect rect = this.mTempRect;
        rect.top = 0;
        rect.bottom = height;
        if (z2 && (childCount = getChildCount()) > 0) {
            this.mTempRect.bottom = getChildAt(childCount - 1).getBottom() + this.mPaddingBottom;
            Rect rect2 = this.mTempRect;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.mTempRect;
        return scrollAndFocus(i2, rect3.top, rect3.bottom);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - this.mScrollY) - (getHeight() - this.mPaddingBottom);
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) ((this.mBottom - this.mTop) * 0.5f);
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i2 = this.mScrollY;
        if (i2 < verticalFadingEdgeLength) {
            return i2 / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public boolean isFillViewport() {
        return this.mFillViewport;
    }

    public boolean isSmoothScrollingEnabled() {
        return this.mSmoothScrollingEnabled;
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i2, int i3) {
        view.measure(ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight, view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        StrictMode.Span span = this.mScrollStrictSpan;
        if (span != null) {
            span.finish();
            this.mScrollStrictSpan = null;
        }
        StrictMode.Span span2 = this.mFlingStrictSpan;
        if (span2 != null) {
            span2.finish();
            this.mFlingStrictSpan = null;
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.mIsBeingDragged) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactor = (int) (axisValue * getVerticalScrollFactor());
                int scrollRange = getScrollRange();
                int i2 = this.mScrollY;
                int i3 = i2 - verticalScrollFactor;
                if (i3 < 0) {
                    scrollRange = 0;
                } else if (i3 <= scrollRange) {
                    scrollRange = i3;
                }
                if (scrollRange != i2) {
                    super.scrollTo(this.mScrollX, scrollRange);
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(getScrollRange() > 0);
        accessibilityEvent.setScrollX(this.mScrollX);
        accessibilityEvent.setScrollY(this.mScrollY);
        accessibilityEvent.setMaxScrollX(this.mScrollX);
        accessibilityEvent.setMaxScrollY(getScrollRange());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int scrollRange;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ScrollView.class.getName());
        if (!isEnabled() || (scrollRange = getScrollRange()) <= 0) {
            return;
        }
        accessibilityNodeInfo.setScrollable(true);
        if (this.mScrollY > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        if (this.mScrollY < scrollRange) {
            accessibilityNodeInfo.addAction(4096);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        if (getScrollY() == 0 && !canScrollVertically(1)) {
            return false;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            int y2 = (int) motionEvent.getY();
            if (inChild((int) motionEvent.getX(), y2)) {
                this.mLastMotionY = y2;
                this.mActivePointerId = motionEvent.getPointerId(0);
                initOrResetVelocityTracker();
                this.mVelocityTracker.addMovement(motionEvent);
                boolean z2 = !this.mScroller.isFinished();
                this.mIsBeingDragged = z2;
                if (z2 && this.mScrollStrictSpan == null) {
                    this.mScrollStrictSpan = StrictMode.enterCriticalSpan("ScrollView-scroll");
                }
            } else {
                this.mIsBeingDragged = false;
                recycleVelocityTracker();
            }
        } else if (i2 == 1) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            recycleVelocityTracker();
            if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
        } else if (i2 == 2) {
            int i3 = this.mActivePointerId;
            if (i3 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i3);
                if (iFindPointerIndex == -1) {
                    Log.e(TAG, "Invalid pointerId=" + i3 + " in onInterceptTouchEvent");
                } else {
                    int y3 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y3 - this.mLastMotionY) > this.mTouchSlop) {
                        this.mIsBeingDragged = true;
                        this.mLastMotionY = y3;
                        initVelocityTrackerIfNotExists();
                        this.mVelocityTracker.addMovement(motionEvent);
                        if (this.mScrollStrictSpan == null) {
                            this.mScrollStrictSpan = StrictMode.enterCriticalSpan("ScrollView-scroll");
                        }
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i2 == 3) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            recycleVelocityTracker();
            if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
        } else if (i2 == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        return this.mIsBeingDragged;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.mIsLayoutDirty = false;
        View view = this.mChildToScrollTo;
        if (view != null && isViewDescendantOf(view, this)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (!isLaidOut()) {
            SavedState savedState = this.mSavedState;
            if (savedState != null) {
                this.mScrollY = savedState.scrollPosition;
                this.mSavedState = null;
            }
            int iMax = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i5 - i3) - this.mPaddingBottom) - this.mPaddingTop));
            int i6 = this.mScrollY;
            if (i6 > iMax) {
                this.mScrollY = iMax;
            } else if (i6 < 0) {
                this.mScrollY = 0;
            }
        }
        scrollTo(this.mScrollX, this.mScrollY);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.mFillViewport && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i2, this.mPaddingLeft + this.mPaddingRight, ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - this.mPaddingTop) - this.mPaddingBottom, 1073741824));
            }
        }
    }

    @Override // android.view.View
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        if (this.mScroller.isFinished()) {
            super.scrollTo(i2, i3);
        } else {
            int i4 = this.mScrollX;
            int i5 = this.mScrollY;
            this.mScrollX = i2;
            this.mScrollY = i3;
            invalidateParentIfNeeded();
            onScrollChanged(this.mScrollX, this.mScrollY, i4, i5);
            if (z3) {
                this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, 0, 0, getScrollRange());
            }
        }
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        View viewFindNextFocus = rect == null ? focusFinder.findNextFocus(this, null, i2) : focusFinder.findNextFocusFromRect(this, rect, i2);
        if (viewFindNextFocus == null || isOffScreen(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (this.mContext.getApplicationInfo().targetSdkVersion <= 18) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSavedState = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        if (this.mContext.getApplicationInfo().targetSdkVersion <= 18) {
            return super.onSaveInstanceState();
        }
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = this.mScrollY;
        return savedState;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !isWithinDeltaOfScreen(viewFindFocus, 0, i5)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        initVelocityTrackerIfNotExists();
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        boolean z2 = false;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (iFindPointerIndex == -1) {
                        Log.e(TAG, "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent");
                    } else {
                        int y2 = (int) motionEvent.getY(iFindPointerIndex);
                        int i2 = this.mLastMotionY - y2;
                        if (!this.mIsBeingDragged && Math.abs(i2) > this.mTouchSlop) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.mIsBeingDragged = true;
                            i2 = i2 > 0 ? i2 - this.mTouchSlop : i2 + this.mTouchSlop;
                        }
                        if (this.mIsBeingDragged) {
                            this.mLastMotionY = y2;
                            int i3 = this.mScrollY;
                            int scrollRange = getScrollRange();
                            int overScrollMode = getOverScrollMode();
                            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                                z2 = true;
                            }
                            if (overScrollBy(0, i2, 0, this.mScrollY, 0, scrollRange, 0, this.mOverscrollDistance, true)) {
                                this.mVelocityTracker.clear();
                            }
                            if (z2) {
                                int i4 = i3 + i2;
                                if (i4 < 0) {
                                    this.mEdgeGlowTop.onPull(i2 / getHeight());
                                    if (!this.mEdgeGlowBottom.isFinished()) {
                                        this.mEdgeGlowBottom.onRelease();
                                    }
                                } else if (i4 > scrollRange) {
                                    this.mEdgeGlowBottom.onPull(i2 / getHeight());
                                    if (!this.mEdgeGlowTop.isFinished()) {
                                        this.mEdgeGlowTop.onRelease();
                                    }
                                }
                                EdgeEffect edgeEffect = this.mEdgeGlowTop;
                                if (edgeEffect != null && (!edgeEffect.isFinished() || !this.mEdgeGlowBottom.isFinished())) {
                                    postInvalidateOnAnimation();
                                }
                            }
                        }
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.mLastMotionY = (int) motionEvent.getY(actionIndex);
                        this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        onSecondaryPointerUp(motionEvent);
                        this.mLastMotionY = (int) motionEvent.getY(motionEvent.findPointerIndex(this.mActivePointerId));
                    }
                } else if (this.mIsBeingDragged && getChildCount() > 0) {
                    if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, 0, 0, getScrollRange())) {
                        postInvalidateOnAnimation();
                    }
                    this.mActivePointerId = -1;
                    endDrag();
                }
            } else if (this.mIsBeingDragged) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int yVelocity = (int) velocityTracker.getYVelocity(this.mActivePointerId);
                if (getChildCount() > 0) {
                    if (Math.abs(yVelocity) > this.mMinimumVelocity) {
                        fling(-yVelocity);
                    } else if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, 0, 0, getScrollRange())) {
                        postInvalidateOnAnimation();
                    }
                }
                this.mActivePointerId = -1;
                endDrag();
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            boolean z3 = !this.mScroller.isFinished();
            this.mIsBeingDragged = z3;
            if (z3 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                StrictMode.Span span = this.mFlingStrictSpan;
                if (span != null) {
                    span.finish();
                    this.mFlingStrictSpan = null;
                }
            }
            this.mLastMotionY = (int) motionEvent.getY();
            this.mActivePointerId = motionEvent.getPointerId(0);
        }
        return true;
    }

    public boolean pageScroll(int i2) {
        boolean z2 = i2 == 130;
        int height = getHeight();
        if (z2) {
            this.mTempRect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.mTempRect.top + height > childAt.getBottom()) {
                    this.mTempRect.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.mTempRect.top = getScrollY() - height;
            Rect rect = this.mTempRect;
            if (rect.top < 0) {
                rect.top = 0;
            }
        }
        Rect rect2 = this.mTempRect;
        int i3 = rect2.top;
        int i4 = height + i3;
        rect2.bottom = i4;
        return scrollAndFocus(i2, i3, i4);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (!isEnabled()) {
            return false;
        }
        if (i2 == 4096) {
            int iMin = Math.min(this.mScrollY + ((getHeight() - this.mPaddingBottom) - this.mPaddingTop), getScrollRange());
            if (iMin == this.mScrollY) {
                return false;
            }
            smoothScrollTo(0, iMin);
            return true;
        }
        if (i2 != 8192) {
            return false;
        }
        int iMax = Math.max(this.mScrollY - ((getHeight() - this.mPaddingBottom) - this.mPaddingTop), 0);
        if (iMax == this.mScrollY) {
            return false;
        }
        smoothScrollTo(0, iMax);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.mIsLayoutDirty) {
            this.mChildToScrollTo = view2;
        } else {
            scrollToChild(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return scrollToChildRect(rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        if (z2) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int iClamp = clamp(i2, (getWidth() - this.mPaddingRight) - this.mPaddingLeft, childAt.getWidth());
            int iClamp2 = clamp(i3, (getHeight() - this.mPaddingBottom) - this.mPaddingTop, childAt.getHeight());
            if (iClamp == this.mScrollX && iClamp2 == this.mScrollY) {
                return;
            }
            super.scrollTo(iClamp, iClamp2);
        }
    }

    public void setFillViewport(boolean z2) {
        if (z2 != this.mFillViewport) {
            this.mFillViewport = z2;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setOverScrollMode(int i2) {
        if (i2 == 2) {
            this.mEdgeGlowTop = null;
            this.mEdgeGlowBottom = null;
        } else if (this.mEdgeGlowTop == null) {
            Context context = getContext();
            this.mEdgeGlowTop = new EdgeEffect(context);
            this.mEdgeGlowBottom = new EdgeEffect(context);
        }
        super.setOverScrollMode(i2);
    }

    public void setSmoothScrollingEnabled(boolean z2) {
        this.mSmoothScrollingEnabled = z2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public final void smoothScrollBy(int i2, int i3) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
            int iMax = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - this.mPaddingBottom) - this.mPaddingTop));
            int i4 = this.mScrollY;
            this.mScroller.startScroll(this.mScrollX, i4, 0, Math.max(0, Math.min(i3 + i4, iMax)) - i4);
            postInvalidateOnAnimation();
        } else {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                StrictMode.Span span = this.mFlingStrictSpan;
                if (span != null) {
                    span.finish();
                    this.mFlingStrictSpan = null;
                }
            }
            scrollBy(i2, i3);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int i2, int i3) {
        smoothScrollBy(i2 - this.mScrollX, i3 - this.mScrollY);
    }

    public ScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.scrollViewStyle);
    }

    public ScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        this.mScrollStrictSpan = null;
        this.mFlingStrictSpan = null;
        initScrollView();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ScrollView, i2, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
