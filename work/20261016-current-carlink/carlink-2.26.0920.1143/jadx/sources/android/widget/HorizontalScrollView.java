package android.widget;

import android.R;
import android.app.m;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.media.TtmlUtils;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
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
import android.view.ViewHierarchyEncoder;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class HorizontalScrollView extends FrameLayout {
    private static final int ANIMATED_SCROLL_GAP = 250;
    private static final int INVALID_POINTER = -1;
    private static final float MAX_SCROLL_FACTOR = 0.5f;
    private static final String TAG = "HorizontalScrollView";
    private int mActivePointerId;
    private View mChildToScrollTo;
    private EdgeEffect mEdgeGlowLeft;
    private EdgeEffect mEdgeGlowRight;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    private boolean mFillViewport;
    private float mHorizontalScrollFactor;
    private boolean mIsBeingDragged;
    private boolean mIsLayoutDirty;
    private int mLastMotionX;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mOverflingDistance;
    private int mOverscrollDistance;
    private SavedState mSavedState;
    private OverScroller mScroller;
    private boolean mSmoothScrollingEnabled;
    private final Rect mTempRect;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.HorizontalScrollView.SavedState.1
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
        public int scrollOffsetFromStart;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" scrollPosition=");
            return android.accessibilityservice.c.m(sb, this.scrollOffsetFromStart, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.scrollOffsetFromStart);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.scrollOffsetFromStart = parcel.readInt();
        }
    }

    public HorizontalScrollView(Context context) {
        this(context, null);
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getWidth() < (childAt.getWidth() + this.mPaddingLeft) + this.mPaddingRight;
        }
        return false;
    }

    private static int clamp(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
    }

    private void doScrollX(int i2) {
        if (i2 != 0) {
            if (this.mSmoothScrollingEnabled) {
                smoothScrollBy(i2, 0);
            } else {
                scrollBy(i2, 0);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    private View findFocusableViewInBounds(boolean z2, int i2, int i3) {
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = focusables.get(i4);
            int left = view2.getLeft();
            int right = view2.getRight();
            if (i2 < right && left < i3) {
                boolean z4 = i2 < left && right < i3;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && left < view.getLeft()) || (!z2 && right > view.getRight());
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

    private View findFocusableViewInMyBounds(boolean z2, int i2, View view) {
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength() / 2;
        int i3 = i2 + horizontalFadingEdgeLength;
        int width = (getWidth() + i2) - horizontalFadingEdgeLength;
        return (view == null || view.getLeft() >= width || view.getRight() <= i3) ? findFocusableViewInBounds(z2, i3, width) : view;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getWidth() - ((getWidth() - this.mPaddingLeft) - this.mPaddingRight));
        }
        return 0;
    }

    private boolean inChild(int i2, int i3) {
        if (getChildCount() <= 0) {
            return false;
        }
        int i4 = this.mScrollX;
        View childAt = getChildAt(0);
        return i3 >= childAt.getTop() && i3 < childAt.getBottom() && i2 >= childAt.getLeft() - i4 && i2 < childAt.getRight() - i4;
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
        this.mHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean isOffScreen(View view) {
        return !isWithinDeltaOfScreen(view, 0);
    }

    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    private boolean isWithinDeltaOfScreen(View view, int i2) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        if (this.mTempRect.right + i2 >= getScrollX()) {
            if (this.mTempRect.left - i2 <= getWidth() + getScrollX()) {
                return true;
            }
        }
        return false;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i2 = action == 0 ? 1 : 0;
            this.mLastMotionX = (int) motionEvent.getX(i2);
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
        int width = getWidth();
        int scrollX = getScrollX();
        int i5 = width + scrollX;
        boolean z2 = false;
        boolean z3 = i2 == 17;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z3, i3, i4);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if (i3 < scrollX || i4 > i5) {
            doScrollX(z3 ? i3 - scrollX : i4 - i5);
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
            scrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean z2) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z3 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z3) {
            if (z2) {
                scrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
            } else {
                smoothScrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
            }
        }
        return z3;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("HorizontalScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public boolean arrowScroll(int i2) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !isWithinDeltaOfScreen(viewFindNextFocus, maxScrollAmount)) {
            if (i2 == 17 && getScrollX() < maxScrollAmount) {
                maxScrollAmount = getScrollX();
            } else if (i2 == 66 && getChildCount() > 0) {
                int right = getChildAt(0).getRight() - (getWidth() + getScrollX());
                if (right < maxScrollAmount) {
                    maxScrollAmount = right;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 66) {
                maxScrollAmount = -maxScrollAmount;
            }
            doScrollX(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScrollX(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
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
    public int computeHorizontalScrollOffset() {
        return Math.max(0, super.computeHorizontalScrollOffset());
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        int childCount = getChildCount();
        int width = (getWidth() - this.mPaddingLeft) - this.mPaddingRight;
        if (childCount == 0) {
            return width;
        }
        int right = getChildAt(0).getRight();
        int i2 = this.mScrollX;
        int iMax = Math.max(0, right - width);
        if (i2 < 0) {
            return right - i2;
        }
        return i2 > iMax ? right + (i2 - iMax) : right;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
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
                overScrollBy(currX - i2, currY - i3, i2, i3, scrollRange, 0, this.mOverflingDistance, 0, false);
                onScrollChanged(this.mScrollX, this.mScrollY, i2, i3);
                if (z3) {
                    if (currX < 0 && i2 >= 0) {
                        this.mEdgeGlowLeft.onAbsorb((int) this.mScroller.getCurrVelocity());
                    } else if (currX > scrollRange && i2 <= scrollRange) {
                        this.mEdgeGlowRight.onAbsorb((int) this.mScroller.getCurrVelocity());
                    }
                }
            }
            if (awakenScrollBars()) {
                return;
            }
            postInvalidateOnAnimation();
        }
    }

    public int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int width = getWidth();
        int scrollX = getScrollX();
        int i2 = scrollX + width;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (rect.left > 0) {
            scrollX += horizontalFadingEdgeLength;
        }
        if (rect.right < getChildAt(0).getWidth()) {
            i2 -= horizontalFadingEdgeLength;
        }
        int i3 = rect.right;
        if (i3 > i2 && rect.left > scrollX) {
            return Math.min((rect.width() > width ? rect.left - scrollX : rect.right - i2) + 0, getChildAt(0).getRight() - i2);
        }
        if (rect.left >= scrollX || i3 >= i2) {
            return 0;
        }
        return Math.max(rect.width() > width ? 0 - (i2 - rect.right) : 0 - (scrollX - rect.left), -getScrollX());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        EdgeEffect edgeEffect = this.mEdgeGlowLeft;
        if (edgeEffect != null) {
            int i2 = this.mScrollX;
            if (!edgeEffect.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - this.mPaddingTop) - this.mPaddingBottom;
                canvas.rotate(270.0f);
                canvas.translate((-height) + this.mPaddingTop, Math.min(0, i2));
                this.mEdgeGlowLeft.setSize(height, getWidth());
                if (this.mEdgeGlowLeft.draw(canvas)) {
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(iSave);
            }
            if (this.mEdgeGlowRight.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            int width = getWidth();
            int height2 = (getHeight() - this.mPaddingTop) - this.mPaddingBottom;
            canvas.rotate(90.0f);
            canvas.translate(-this.mPaddingTop, -(Math.max(getScrollRange(), i2) + width));
            this.mEdgeGlowRight.setSize(height2, width);
            if (this.mEdgeGlowRight.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("layout:fillViewPort", this.mFillViewport);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused()) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 66);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(66)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 21) {
            return !keyEvent.isAltPressed() ? arrowScroll(17) : fullScroll(17);
        }
        if (keyCode == 22) {
            return !keyEvent.isAltPressed() ? arrowScroll(66) : fullScroll(66);
        }
        if (keyCode != 62) {
            return false;
        }
        pageScroll(keyEvent.isShiftPressed() ? 17 : 66);
        return false;
    }

    public void fling(int i2) {
        if (getChildCount() > 0) {
            int width = (getWidth() - this.mPaddingRight) - this.mPaddingLeft;
            this.mScroller.fling(this.mScrollX, this.mScrollY, i2, 0, 0, Math.max(0, getChildAt(0).getWidth() - width), 0, 0, width / 2, 0);
            boolean z2 = i2 > 0;
            View viewFindFocus = findFocus();
            View viewFindFocusableViewInMyBounds = findFocusableViewInMyBounds(z2, this.mScroller.getFinalX(), viewFindFocus);
            if (viewFindFocusableViewInMyBounds == null) {
                viewFindFocusableViewInMyBounds = this;
            }
            if (viewFindFocusableViewInMyBounds != viewFindFocus) {
                viewFindFocusableViewInMyBounds.requestFocus(z2 ? 66 : 17);
            }
            postInvalidateOnAnimation();
        }
    }

    public boolean fullScroll(int i2) {
        boolean z2 = i2 == 66;
        int width = getWidth();
        Rect rect = this.mTempRect;
        rect.left = 0;
        rect.right = width;
        if (z2 && getChildCount() > 0) {
            this.mTempRect.right = getChildAt(0).getRight();
            Rect rect2 = this.mTempRect;
            rect2.left = rect2.right - width;
        }
        Rect rect3 = this.mTempRect;
        return scrollAndFocus(i2, rect3.left, rect3.right);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return HorizontalScrollView.class.getName();
    }

    @Override // android.view.View
    public float getLeftFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int i2 = this.mScrollX;
        if (i2 < horizontalFadingEdgeLength) {
            return i2 / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) ((this.mRight - this.mLeft) * 0.5f);
    }

    @Override // android.view.View
    public float getRightFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int right = (getChildAt(0).getRight() - this.mScrollX) - (getWidth() - this.mPaddingRight);
        if (right < horizontalFadingEdgeLength) {
            return right / horizontalFadingEdgeLength;
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
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(View.MeasureSpec.makeSafeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(i2) - (this.mPaddingLeft + this.mPaddingRight)), 0), ViewGroup.getChildMeasureSpec(i3, this.mPaddingTop + this.mPaddingBottom, layoutParams.height));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeSafeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(i2) - ((((this.mPaddingLeft + this.mPaddingRight) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i3)), 0), ViewGroup.getChildMeasureSpec(i4, this.mPaddingTop + this.mPaddingBottom + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        if (motionEvent.getAction() == 8 && !this.mIsBeingDragged) {
            if (motionEvent.isFromSource(2)) {
                axisValue = (motionEvent.getMetaState() & 1) != 0 ? -motionEvent.getAxisValue(9) : motionEvent.getAxisValue(10);
            } else {
                axisValue = motionEvent.isFromSource(4194304) ? motionEvent.getAxisValue(26) : 0.0f;
            }
            int iRound = Math.round(axisValue * this.mHorizontalScrollFactor);
            if (iRound != 0) {
                int scrollRange = getScrollRange();
                int i2 = this.mScrollX;
                int i3 = iRound + i2;
                if (i3 < 0) {
                    scrollRange = 0;
                } else if (i3 <= scrollRange) {
                    scrollRange = i3;
                }
                if (scrollRange != i2) {
                    super.scrollTo(scrollRange, this.mScrollY);
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setScrollable(getScrollRange() > 0);
        accessibilityEvent.setScrollX(this.mScrollX);
        accessibilityEvent.setScrollY(this.mScrollY);
        accessibilityEvent.setMaxScrollX(getScrollRange());
        accessibilityEvent.setMaxScrollY(this.mScrollY);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        int scrollRange = getScrollRange();
        if (scrollRange > 0) {
            accessibilityNodeInfo.setScrollable(true);
            if (isEnabled() && this.mScrollX > 0) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT);
            }
            if (!isEnabled() || this.mScrollX >= scrollRange) {
                return;
            }
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0089  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a0  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if ((action == 2 && this.mIsBeingDragged) || super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            int x2 = (int) motionEvent.getX();
            if (inChild(x2, (int) motionEvent.getY())) {
                this.mLastMotionX = x2;
                this.mActivePointerId = motionEvent.getPointerId(0);
                initOrResetVelocityTracker();
                this.mVelocityTracker.addMovement(motionEvent);
                this.mIsBeingDragged = !this.mScroller.isFinished();
            } else {
                this.mIsBeingDragged = false;
                recycleVelocityTracker();
            }
        } else if (i2 == 1) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, getScrollRange(), 0, 0)) {
                postInvalidateOnAnimation();
            }
        } else if (i2 == 2) {
            int i3 = this.mActivePointerId;
            if (i3 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i3);
                if (iFindPointerIndex == -1) {
                    m.q("Invalid pointerId=", i3, " in onInterceptTouchEvent", TAG);
                } else {
                    int x3 = (int) motionEvent.getX(iFindPointerIndex);
                    if (Math.abs(x3 - this.mLastMotionX) > this.mTouchSlop) {
                        this.mIsBeingDragged = true;
                        this.mLastMotionX = x3;
                        initVelocityTrackerIfNotExists();
                        this.mVelocityTracker.addMovement(motionEvent);
                        ViewParent viewParent = this.mParent;
                        if (viewParent != null) {
                            viewParent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i2 == 3) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, getScrollRange(), 0, 0)) {
                postInvalidateOnAnimation();
            }
        } else if (i2 == 5) {
            int actionIndex = motionEvent.getActionIndex();
            this.mLastMotionX = (int) motionEvent.getX(actionIndex);
            this.mActivePointerId = motionEvent.getPointerId(actionIndex);
        } else if (i2 == 6) {
            onSecondaryPointerUp(motionEvent);
            this.mLastMotionX = (int) motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
        }
        return this.mIsBeingDragged;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth;
        int i6;
        if (getChildCount() > 0) {
            measuredWidth = getChildAt(0).getMeasuredWidth();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getChildAt(0).getLayoutParams();
            i6 = layoutParams.leftMargin + layoutParams.rightMargin;
        } else {
            measuredWidth = 0;
            i6 = 0;
        }
        int i7 = i4 - i2;
        layoutChildren(i2, i3, i4, i5, measuredWidth > ((i7 - getPaddingLeftWithForeground()) - getPaddingRightWithForeground()) - i6);
        this.mIsLayoutDirty = false;
        View view = this.mChildToScrollTo;
        if (view != null && isViewDescendantOf(view, this)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (!isLaidOut()) {
            int iMax = Math.max(0, measuredWidth - ((i7 - this.mPaddingLeft) - this.mPaddingRight));
            if (this.mSavedState != null) {
                this.mScrollX = isLayoutRtl() ? iMax - this.mSavedState.scrollOffsetFromStart : this.mSavedState.scrollOffsetFromStart;
                this.mSavedState = null;
            } else if (isLayoutRtl()) {
                this.mScrollX = iMax - this.mScrollX;
            }
            int i8 = this.mScrollX;
            if (i8 > iMax) {
                this.mScrollX = iMax;
            } else if (i8 < 0) {
                this.mScrollX = 0;
            }
        }
        scrollTo(this.mScrollX, this.mScrollY);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        super.onMeasure(i2, i3);
        if (this.mFillViewport && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (getContext().getApplicationInfo().targetSdkVersion >= 23) {
                i4 = this.mPaddingLeft + this.mPaddingRight + layoutParams.leftMargin + layoutParams.rightMargin;
                i5 = this.mPaddingTop + this.mPaddingBottom + layoutParams.topMargin;
                i6 = layoutParams.bottomMargin;
            } else {
                i4 = this.mPaddingLeft + this.mPaddingRight;
                i5 = this.mPaddingTop;
                i6 = this.mPaddingBottom;
            }
            int i7 = i5 + i6;
            int measuredWidth = getMeasuredWidth() - i4;
            if (childAt.getMeasuredWidth() < measuredWidth) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), ViewGroup.getChildMeasureSpec(i3, i7, layoutParams.height));
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
            if (z2) {
                this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, getScrollRange(), 0, 0);
            }
        }
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 66;
        } else if (i2 == 1) {
            i2 = 17;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
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
        savedState.scrollOffsetFromStart = isLayoutRtl() ? -this.mScrollX : this.mScrollX;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !isWithinDeltaOfScreen(viewFindFocus, this.mRight - this.mLeft)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScrollX(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        initVelocityTrackerIfNotExists();
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (iFindPointerIndex == -1) {
                        Log.e(TAG, "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent");
                    } else {
                        int x2 = (int) motionEvent.getX(iFindPointerIndex);
                        int i2 = this.mLastMotionX - x2;
                        if (!this.mIsBeingDragged && Math.abs(i2) > this.mTouchSlop) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.mIsBeingDragged = true;
                            i2 = i2 > 0 ? i2 - this.mTouchSlop : i2 + this.mTouchSlop;
                        }
                        int i3 = i2;
                        if (this.mIsBeingDragged) {
                            this.mLastMotionX = x2;
                            int i4 = this.mScrollX;
                            int scrollRange = getScrollRange();
                            int overScrollMode = getOverScrollMode();
                            boolean z2 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                            if (overScrollBy(i3, 0, this.mScrollX, 0, scrollRange, 0, this.mOverscrollDistance, 0, true)) {
                                this.mVelocityTracker.clear();
                            }
                            if (z2) {
                                int i5 = i4 + i3;
                                if (i5 < 0) {
                                    this.mEdgeGlowLeft.onPull(i3 / getWidth(), 1.0f - (motionEvent.getY(iFindPointerIndex) / getHeight()));
                                    if (!this.mEdgeGlowRight.isFinished()) {
                                        this.mEdgeGlowRight.onRelease();
                                    }
                                } else if (i5 > scrollRange) {
                                    this.mEdgeGlowRight.onPull(i3 / getWidth(), motionEvent.getY(iFindPointerIndex) / getHeight());
                                    if (!this.mEdgeGlowLeft.isFinished()) {
                                        this.mEdgeGlowLeft.onRelease();
                                    }
                                }
                                EdgeEffect edgeEffect = this.mEdgeGlowLeft;
                                if (edgeEffect != null && (!edgeEffect.isFinished() || !this.mEdgeGlowRight.isFinished())) {
                                    postInvalidateOnAnimation();
                                }
                            }
                        }
                    }
                } else if (action != 3) {
                    if (action == 6) {
                        onSecondaryPointerUp(motionEvent);
                    }
                } else if (this.mIsBeingDragged && getChildCount() > 0) {
                    if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, getScrollRange(), 0, 0)) {
                        postInvalidateOnAnimation();
                    }
                    this.mActivePointerId = -1;
                    this.mIsBeingDragged = false;
                    recycleVelocityTracker();
                    EdgeEffect edgeEffect2 = this.mEdgeGlowLeft;
                    if (edgeEffect2 != null) {
                        edgeEffect2.onRelease();
                        this.mEdgeGlowRight.onRelease();
                    }
                }
                return true;
            }
            if (this.mIsBeingDragged) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                if (getChildCount() > 0) {
                    if (Math.abs(xVelocity) > this.mMinimumVelocity) {
                        fling(-xVelocity);
                    } else if (this.mScroller.springBack(this.mScrollX, this.mScrollY, 0, getScrollRange(), 0, 0)) {
                        postInvalidateOnAnimation();
                    }
                }
                this.mActivePointerId = -1;
                this.mIsBeingDragged = false;
                recycleVelocityTracker();
                EdgeEffect edgeEffect3 = this.mEdgeGlowLeft;
                if (edgeEffect3 != null) {
                    edgeEffect3.onRelease();
                    this.mEdgeGlowRight.onRelease();
                }
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
            }
            this.mLastMotionX = (int) motionEvent.getX();
            this.mActivePointerId = motionEvent.getPointerId(0);
        }
        return true;
    }

    public boolean pageScroll(int i2) {
        boolean z2 = i2 == 66;
        int width = getWidth();
        if (z2) {
            this.mTempRect.left = getScrollX() + width;
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                if (this.mTempRect.left + width > childAt.getRight()) {
                    this.mTempRect.left = childAt.getRight() - width;
                }
            }
        } else {
            this.mTempRect.left = getScrollX() - width;
            Rect rect = this.mTempRect;
            if (rect.left < 0) {
                rect.left = 0;
            }
        }
        Rect rect2 = this.mTempRect;
        int i3 = rect2.left;
        int i4 = width + i3;
        rect2.right = i4;
        return scrollAndFocus(i2, i3, i4);
    }

    @Override // android.view.View
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i2, bundle)) {
            return true;
        }
        if (i2 != 4096) {
            if (i2 == 8192 || i2 == 16908345) {
                if (!isEnabled()) {
                    return false;
                }
                int iMax = Math.max(0, this.mScrollX - ((getWidth() - this.mPaddingLeft) - this.mPaddingRight));
                if (iMax == this.mScrollX) {
                    return false;
                }
                smoothScrollTo(iMax, 0);
                return true;
            }
            if (i2 != 16908347) {
                return false;
            }
        }
        if (!isEnabled()) {
            return false;
        }
        int iMin = Math.min(this.mScrollX + ((getWidth() - this.mPaddingLeft) - this.mPaddingRight), getScrollRange());
        if (iMin == this.mScrollX) {
            return false;
        }
        smoothScrollTo(iMin, 0);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (view2 != null && view2.getRevealOnFocusHint()) {
            if (this.mIsLayoutDirty) {
                this.mChildToScrollTo = view2;
            } else {
                scrollToChild(view2);
            }
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
            this.mEdgeGlowLeft = null;
            this.mEdgeGlowRight = null;
        } else if (this.mEdgeGlowLeft == null) {
            Context context = getContext();
            this.mEdgeGlowLeft = new EdgeEffect(context);
            this.mEdgeGlowRight = new EdgeEffect(context);
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
            int iMax = Math.max(0, getChildAt(0).getWidth() - ((getWidth() - this.mPaddingRight) - this.mPaddingLeft));
            int i4 = this.mScrollX;
            this.mScroller.startScroll(i4, this.mScrollY, Math.max(0, Math.min(i2 + i4, iMax)) - i4, 0);
            postInvalidateOnAnimation();
        } else {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            scrollBy(i2, i3);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int i2, int i3) {
        smoothScrollBy(i2 - this.mScrollX, i3 - this.mScrollY);
    }

    public HorizontalScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843603);
    }

    public HorizontalScrollView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public HorizontalScrollView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        initScrollView();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HorizontalScrollView, i2, i3);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        if (context.getResources().getConfiguration().uiMode == 6) {
            setRevealOnFocusHint(false);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("HorizontalScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("HorizontalScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("HorizontalScrollView can host only one direct child");
    }
}
