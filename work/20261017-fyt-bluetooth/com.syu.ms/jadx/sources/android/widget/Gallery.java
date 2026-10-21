package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Transformation;
import i.a;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {
    private static final int SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT = 250;
    private static final String TAG = "Gallery";
    private static final boolean localLOGV = false;
    private int mAnimationDuration;
    private AdapterView.AdapterContextMenuInfo mContextMenuInfo;
    private Runnable mDisableSuppressSelectionChangedRunnable;
    private int mDownTouchPosition;
    private View mDownTouchView;
    private FlingRunnable mFlingRunnable;
    private GestureDetector mGestureDetector;
    private int mGravity;
    private boolean mIsFirstScroll;
    private boolean mIsRtl;
    private int mLeftMost;
    private boolean mReceivedInvokeKeyDown;
    private int mRightMost;
    private int mSelectedCenterOffset;
    private View mSelectedChild;
    private boolean mShouldCallbackDuringFling;
    private boolean mShouldCallbackOnUnselectedItemClick;
    private boolean mShouldStopFling;
    private int mSpacing;
    private boolean mSuppressSelectionChanged;
    private float mUnselectedAlpha;

    public class FlingRunnable implements Runnable {
        private int mLastFlingX;
        private Scroller mScroller;

        public FlingRunnable() {
            this.mScroller = new Scroller(Gallery.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endFling(boolean z2) {
            this.mScroller.forceFinished(true);
            if (z2) {
                Gallery.this.scrollIntoSlots();
            }
        }

        private void startCommon() {
            Gallery.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int childCount;
            int iMax;
            int childCount2;
            Gallery gallery = Gallery.this;
            if (gallery.mItemCount == 0) {
                endFling(true);
                return;
            }
            gallery.mShouldStopFling = false;
            Scroller scroller = this.mScroller;
            boolean zComputeScrollOffset = scroller.computeScrollOffset();
            int currX = scroller.getCurrX();
            int i2 = this.mLastFlingX - currX;
            if (i2 > 0) {
                Gallery gallery2 = Gallery.this;
                if (gallery2.mIsRtl) {
                    Gallery gallery3 = Gallery.this;
                    childCount2 = (gallery3.mFirstPosition + gallery3.getChildCount()) - 1;
                } else {
                    childCount2 = Gallery.this.mFirstPosition;
                }
                gallery2.mDownTouchPosition = childCount2;
                iMax = Math.min(((Gallery.this.getWidth() - Gallery.this.mPaddingLeft) - Gallery.this.mPaddingRight) - 1, i2);
            } else {
                Gallery.this.getChildCount();
                Gallery gallery4 = Gallery.this;
                if (gallery4.mIsRtl) {
                    childCount = Gallery.this.mFirstPosition;
                } else {
                    Gallery gallery5 = Gallery.this;
                    childCount = (gallery5.mFirstPosition + gallery5.getChildCount()) - 1;
                }
                gallery4.mDownTouchPosition = childCount;
                iMax = Math.max(-(((Gallery.this.getWidth() - Gallery.this.mPaddingRight) - Gallery.this.mPaddingLeft) - 1), i2);
            }
            Gallery.this.trackMotionScroll(iMax);
            if (!zComputeScrollOffset || Gallery.this.mShouldStopFling) {
                endFling(true);
            } else {
                this.mLastFlingX = currX;
                Gallery.this.post(this);
            }
        }

        public void startUsingDistance(int i2) {
            if (i2 == 0) {
                return;
            }
            startCommon();
            this.mLastFlingX = 0;
            this.mScroller.startScroll(0, 0, -i2, 0, Gallery.this.mAnimationDuration);
            Gallery.this.post(this);
        }

        public void startUsingVelocity(int i2) {
            if (i2 == 0) {
                return;
            }
            startCommon();
            int i3 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingX = i3;
            this.mScroller.fling(i3, 0, i2, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            Gallery.this.post(this);
        }

        public void stop(boolean z2) {
            Gallery.this.removeCallbacks(this);
            endFling(z2);
        }
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public Gallery(Context context) {
        this(context, null);
    }

    private int calculateTop(View view, boolean z2) {
        int measuredHeight = z2 ? getMeasuredHeight() : getHeight();
        int measuredHeight2 = z2 ? view.getMeasuredHeight() : view.getHeight();
        int i2 = this.mGravity;
        if (i2 == 16) {
            Rect rect = this.mSpinnerPadding;
            int i3 = measuredHeight - rect.bottom;
            int i4 = rect.top;
            return i4 + (((i3 - i4) - measuredHeight2) / 2);
        }
        if (i2 == 48) {
            return this.mSpinnerPadding.top;
        }
        if (i2 != 80) {
            return 0;
        }
        return (measuredHeight - this.mSpinnerPadding.bottom) - measuredHeight2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0069 A[PHI: r5 r6
  0x0069: PHI (r5v4 int) = (r5v1 int), (r5v6 int) binds: [B:28:0x0066, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE]
  0x0069: PHI (r6v4 int) = (r6v1 int), (r6v6 int) binds: [B:28:0x0066, B:15:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    private void detachOffScreenChildren(boolean z2) {
        int i2;
        int i3;
        int childCount = getChildCount();
        int i4 = this.mFirstPosition;
        int i5 = 0;
        if (z2) {
            int i6 = this.mPaddingLeft;
            int i7 = 0;
            i2 = 0;
            i3 = 0;
            while (i7 < childCount) {
                int i8 = this.mIsRtl ? (childCount - 1) - i7 : i7;
                View childAt = getChildAt(i8);
                if (childAt.getRight() >= i6) {
                    break;
                }
                i2++;
                this.mRecycler.put(i4 + i8, childAt);
                i7++;
                i3 = i8;
            }
            if (this.mIsRtl) {
                i5 = i3;
            }
        } else {
            int width = getWidth() - this.mPaddingRight;
            int i9 = childCount - 1;
            int i10 = i9;
            i2 = 0;
            i3 = 0;
            while (i10 >= 0) {
                int i11 = this.mIsRtl ? i9 - i10 : i10;
                View childAt2 = getChildAt(i11);
                if (childAt2.getLeft() <= width) {
                    break;
                }
                i2++;
                this.mRecycler.put(i4 + i11, childAt2);
                i10--;
                i3 = i11;
            }
            if (!this.mIsRtl) {
                i5 = i3;
            }
        }
        detachViewsFromParent(i5, i2);
        if (z2 != this.mIsRtl) {
            this.mFirstPosition += i2;
        }
    }

    private boolean dispatchLongPress(View view, int i2, long j2) {
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        boolean zOnItemLongClick = onItemLongClickListener != null ? onItemLongClickListener.onItemLongClick(this, this.mDownTouchView, this.mDownTouchPosition, j2) : false;
        if (!zOnItemLongClick) {
            this.mContextMenuInfo = new AdapterView.AdapterContextMenuInfo(view, i2, j2);
            zOnItemLongClick = super.showContextMenuForChild(this);
        }
        if (zOnItemLongClick) {
            performHapticFeedback(0);
        }
        return zOnItemLongClick;
    }

    private void dispatchPress(View view) {
        if (view != null) {
            view.setPressed(true);
        }
        setPressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUnpress() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                setPressed(false);
                return;
            }
            getChildAt(childCount).setPressed(false);
        }
    }

    private void fillToGalleryLeft() {
        if (this.mIsRtl) {
            fillToGalleryLeftRtl();
        } else {
            fillToGalleryLeftLtr();
        }
    }

    private void fillToGalleryLeftLtr() {
        int left;
        int i2;
        int i3 = this.mSpacing;
        int i4 = this.mPaddingLeft;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i2 = this.mFirstPosition - 1;
            left = childAt.getLeft() - i3;
        } else {
            left = (this.mRight - this.mLeft) - this.mPaddingRight;
            this.mShouldStopFling = true;
            i2 = 0;
        }
        while (left > i4 && i2 >= 0) {
            View viewMakeAndAddView = makeAndAddView(i2, i2 - this.mSelectedPosition, left, false);
            this.mFirstPosition = i2;
            left = viewMakeAndAddView.getLeft() - i3;
            i2--;
        }
    }

    private void fillToGalleryLeftRtl() {
        int i2;
        int left;
        int i3 = this.mSpacing;
        int i4 = this.mPaddingLeft;
        int childCount = getChildCount();
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i2 = this.mFirstPosition + childCount;
            left = childAt.getLeft() - i3;
        } else {
            i2 = this.mItemCount - 1;
            this.mFirstPosition = i2;
            left = (this.mRight - this.mLeft) - this.mPaddingRight;
            this.mShouldStopFling = true;
        }
        while (left > i4 && i2 < this.mItemCount) {
            left = makeAndAddView(i2, i2 - this.mSelectedPosition, left, false).getLeft() - i3;
            i2++;
        }
    }

    private void fillToGalleryRight() {
        if (this.mIsRtl) {
            fillToGalleryRightRtl();
        } else {
            fillToGalleryRightLtr();
        }
    }

    private void fillToGalleryRightLtr() {
        int i2;
        int right;
        int i3 = this.mSpacing;
        int i4 = (this.mRight - this.mLeft) - this.mPaddingRight;
        int childCount = getChildCount();
        int i5 = this.mItemCount;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i2 = this.mFirstPosition + childCount;
            right = childAt.getRight() + i3;
        } else {
            i2 = this.mItemCount - 1;
            this.mFirstPosition = i2;
            right = this.mPaddingLeft;
            this.mShouldStopFling = true;
        }
        while (right < i4 && i2 < i5) {
            right = makeAndAddView(i2, i2 - this.mSelectedPosition, right, true).getRight() + i3;
            i2++;
        }
    }

    private void fillToGalleryRightRtl() {
        int right;
        int i2 = this.mSpacing;
        int i3 = (this.mRight - this.mLeft) - this.mPaddingRight;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i4 = this.mFirstPosition - 1;
            right = childAt.getRight() + i2;
        } else {
            right = this.mPaddingLeft;
            this.mShouldStopFling = true;
        }
        while (right < i3 && i4 >= 0) {
            View viewMakeAndAddView = makeAndAddView(i4, i4 - this.mSelectedPosition, right, true);
            this.mFirstPosition = i4;
            right = viewMakeAndAddView.getRight() + i2;
            i4--;
        }
    }

    private int getCenterOfGallery() {
        int width = getWidth();
        int i2 = this.mPaddingLeft;
        return (((width - i2) - this.mPaddingRight) / 2) + i2;
    }

    private static int getCenterOfView(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private View makeAndAddView(int i2, int i3, int i4, boolean z2) {
        View view;
        if (this.mDataChanged || (view = this.mRecycler.get(i2)) == null) {
            View view2 = this.mAdapter.getView(i2, null, this);
            setUpChild(view2, i3, i4, z2);
            return view2;
        }
        int left = view.getLeft();
        this.mRightMost = Math.max(this.mRightMost, view.getMeasuredWidth() + left);
        this.mLeftMost = Math.min(this.mLeftMost, left);
        setUpChild(view, i3, i4, z2);
        return view;
    }

    private void offsetChildrenLeftAndRight(int i2) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getChildAt(childCount).offsetLeftAndRight(i2);
        }
    }

    private void onFinishedMovement() {
        if (this.mSuppressSelectionChanged) {
            this.mSuppressSelectionChanged = false;
            super.selectionChanged();
        }
        this.mSelectedCenterOffset = 0;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollIntoSlots() {
        View view;
        if (getChildCount() == 0 || (view = this.mSelectedChild) == null) {
            return;
        }
        int centerOfGallery = getCenterOfGallery() - getCenterOfView(view);
        if (centerOfGallery != 0) {
            this.mFlingRunnable.startUsingDistance(centerOfGallery);
        } else {
            onFinishedMovement();
        }
    }

    private boolean scrollToChild(int i2) {
        View childAt = getChildAt(i2);
        if (childAt == null) {
            return false;
        }
        this.mFlingRunnable.startUsingDistance(getCenterOfGallery() - getCenterOfView(childAt));
        return true;
    }

    private void setSelectionToCenterChild() {
        View view = this.mSelectedChild;
        if (view == null) {
            return;
        }
        int centerOfGallery = getCenterOfGallery();
        if (view.getLeft() > centerOfGallery || view.getRight() < centerOfGallery) {
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                if (childAt.getLeft() <= centerOfGallery && childAt.getRight() >= centerOfGallery) {
                    i3 = childCount;
                    break;
                }
                int iMin = Math.min(Math.abs(childAt.getLeft() - centerOfGallery), Math.abs(childAt.getRight() - centerOfGallery));
                if (iMin < i2) {
                    i3 = childCount;
                    i2 = iMin;
                }
            }
            int i4 = this.mFirstPosition + i3;
            if (i4 != this.mSelectedPosition) {
                setSelectedPositionInt(i4);
                setNextSelectedPositionInt(i4);
                checkSelectionChanged();
            }
        }
    }

    private void setUpChild(View view, int i2, int i3, boolean z2) {
        int i4;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (LayoutParams) generateDefaultLayoutParams();
        }
        addViewInLayout(view, z2 != this.mIsRtl ? -1 : 0, layoutParams, true);
        view.setSelected(i2 == 0);
        int i5 = this.mHeightMeasureSpec;
        Rect rect = this.mSpinnerPadding;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i5, rect.top + rect.bottom, layoutParams.height);
        int i6 = this.mWidthMeasureSpec;
        Rect rect2 = this.mSpinnerPadding;
        view.measure(ViewGroup.getChildMeasureSpec(i6, rect2.left + rect2.right, layoutParams.width), childMeasureSpec);
        int iCalculateTop = calculateTop(view, true);
        int measuredHeight = view.getMeasuredHeight() + iCalculateTop;
        int measuredWidth = view.getMeasuredWidth();
        if (z2) {
            i4 = measuredWidth + i3;
        } else {
            int i7 = i3 - measuredWidth;
            i4 = i3;
            i3 = i7;
        }
        view.layout(i3, iCalculateTop, i4, measuredHeight);
    }

    private void updateSelectedItemMetadata() {
        View view = this.mSelectedChild;
        View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
        this.mSelectedChild = childAt;
        if (childAt == null) {
            return;
        }
        childAt.setSelected(true);
        childAt.setFocusable(true);
        if (hasFocus()) {
            childAt.requestFocus();
        }
        if (view == null || view == childAt) {
            return;
        }
        view.setSelected(false);
        view.setFocusable(false);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return 1;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return this.mSelectedPosition;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return this.mItemCount;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.dispatch(this, null, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetPressed(boolean z2) {
        View view = this.mSelectedChild;
        if (view != null) {
            view.setPressed(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(boolean z2) {
    }

    @Override // android.widget.AbsSpinner, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        int i4 = this.mSelectedPosition - this.mFirstPosition;
        if (i4 < 0) {
            return i3;
        }
        if (i3 == i2 - 1) {
            return i4;
        }
        return i3 >= i4 ? i3 + 1 : i3;
    }

    @Override // android.widget.AbsSpinner
    public int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    @Override // android.view.ViewGroup
    public boolean getChildStaticTransformation(View view, Transformation transformation) {
        transformation.clear();
        transformation.setAlpha(view == this.mSelectedChild ? 1.0f : this.mUnselectedAlpha);
        return true;
    }

    @Override // android.view.View
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    public int getLimitedMotionScrollAmount(boolean z2, int i2) {
        View childAt = getChildAt((z2 != this.mIsRtl ? this.mItemCount - 1 : 0) - this.mFirstPosition);
        if (childAt == null) {
            return i2;
        }
        int centerOfView = getCenterOfView(childAt);
        int centerOfGallery = getCenterOfGallery();
        if (z2) {
            if (centerOfView <= centerOfGallery) {
                return 0;
            }
        } else if (centerOfView >= centerOfGallery) {
            return 0;
        }
        int i3 = centerOfGallery - centerOfView;
        return z2 ? Math.max(i3, i2) : Math.min(i3, i2);
    }

    @Override // android.widget.AbsSpinner
    public void layout(int i2, boolean z2) {
        this.mIsRtl = isLayoutRtl();
        Rect rect = this.mSpinnerPadding;
        int i3 = rect.left;
        int i4 = ((this.mRight - this.mLeft) - i3) - rect.right;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
            return;
        }
        int i5 = this.mNextSelectedPosition;
        if (i5 >= 0) {
            setSelectedPositionInt(i5);
        }
        recycleAllViews();
        detachAllViewsFromParent();
        this.mRightMost = 0;
        this.mLeftMost = 0;
        int i6 = this.mSelectedPosition;
        this.mFirstPosition = i6;
        View viewMakeAndAddView = makeAndAddView(i6, 0, 0, true);
        viewMakeAndAddView.offsetLeftAndRight(((i3 + (i4 / 2)) - (viewMakeAndAddView.getWidth() / 2)) + this.mSelectedCenterOffset);
        fillToGalleryRight();
        fillToGalleryLeft();
        this.mRecycler.clear();
        invalidate();
        checkSelectionChanged();
        this.mDataChanged = false;
        this.mNeedSync = false;
        setNextSelectedPositionInt(this.mSelectedPosition);
        updateSelectedItemMetadata();
    }

    public boolean moveNext() {
        int i2;
        int i3 = this.mItemCount;
        if (i3 <= 0 || (i2 = this.mSelectedPosition) >= i3 - 1) {
            return false;
        }
        scrollToChild((i2 - this.mFirstPosition) + 1);
        return true;
    }

    public boolean movePrevious() {
        int i2;
        if (this.mItemCount <= 0 || (i2 = this.mSelectedPosition) <= 0) {
            return false;
        }
        scrollToChild((i2 - this.mFirstPosition) - 1);
        return true;
    }

    public void onCancel() {
        onUp();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.mFlingRunnable.stop(false);
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        this.mDownTouchPosition = iPointToPosition;
        if (iPointToPosition >= 0) {
            View childAt = getChildAt(iPointToPosition - this.mFirstPosition);
            this.mDownTouchView = childAt;
            childAt.setPressed(true);
        }
        this.mIsFirstScroll = true;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (!this.mShouldCallbackDuringFling) {
            removeCallbacks(this.mDisableSuppressSelectionChangedRunnable);
            if (!this.mSuppressSelectionChanged) {
                this.mSuppressSelectionChanged = true;
            }
        }
        this.mFlingRunnable.startUsingVelocity((int) (-f2));
        return true;
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        View view;
        super.onFocusChanged(z2, i2, rect);
        if (!z2 || (view = this.mSelectedChild) == null) {
            return;
        }
        view.requestFocus(i2);
        this.mSelectedChild.setSelected(true);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Gallery.class.getName());
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Gallery.class.getName());
        accessibilityNodeInfo.setScrollable(this.mItemCount > 1);
        if (isEnabled()) {
            int i2 = this.mItemCount;
            if (i2 > 0 && this.mSelectedPosition < i2 - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            if (!isEnabled() || this.mItemCount <= 0 || this.mSelectedPosition <= 0) {
                return;
            }
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 66) {
            switch (i2) {
                case 21:
                    if (movePrevious()) {
                        playSoundEffect(1);
                        return true;
                    }
                    break;
                case 22:
                    if (moveNext()) {
                        playSoundEffect(3);
                        return true;
                    }
                    break;
                case 23:
                    this.mReceivedInvokeKeyDown = true;
                    break;
            }
        } else {
            this.mReceivedInvokeKeyDown = true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (!KeyEvent.isConfirmKey(i2)) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (this.mReceivedInvokeKeyDown && this.mItemCount > 0) {
            dispatchPress(this.mSelectedChild);
            postDelayed(new Runnable() { // from class: android.widget.Gallery.2
                @Override // java.lang.Runnable
                public void run() {
                    Gallery.this.dispatchUnpress();
                }
            }, ViewConfiguration.getPressedStateDuration());
            View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
            int i3 = this.mSelectedPosition;
            performItemClick(childAt, i3, this.mAdapter.getItemId(i3));
        }
        this.mReceivedInvokeKeyDown = false;
        return true;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.mDownTouchPosition < 0) {
            return;
        }
        performHapticFeedback(0);
        dispatchLongPress(this.mDownTouchView, this.mDownTouchPosition, getItemIdAtPosition(this.mDownTouchPosition));
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        this.mParent.requestDisallowInterceptTouchEvent(true);
        if (this.mShouldCallbackDuringFling) {
            if (this.mSuppressSelectionChanged) {
                this.mSuppressSelectionChanged = false;
            }
        } else if (this.mIsFirstScroll) {
            if (!this.mSuppressSelectionChanged) {
                this.mSuppressSelectionChanged = true;
            }
            postDelayed(this.mDisableSuppressSelectionChangedRunnable, 250L);
        }
        trackMotionScroll(((int) f2) * (-1));
        this.mIsFirstScroll = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int i2 = this.mDownTouchPosition;
        if (i2 < 0) {
            return false;
        }
        scrollToChild(i2 - this.mFirstPosition);
        if (!this.mShouldCallbackOnUnselectedItemClick && this.mDownTouchPosition != this.mSelectedPosition) {
            return true;
        }
        View view = this.mDownTouchView;
        int i3 = this.mDownTouchPosition;
        performItemClick(view, i3, this.mAdapter.getItemId(i3));
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.mGestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            onUp();
        } else if (action == 3) {
            onCancel();
        }
        return zOnTouchEvent;
    }

    public void onUp() {
        if (this.mFlingRunnable.mScroller.isFinished()) {
            scrollIntoSlots();
        }
        dispatchUnpress();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        int i3;
        int i4;
        int i5;
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (i2 == 4096) {
            if (!isEnabled() || (i3 = this.mItemCount) <= 0 || (i4 = this.mSelectedPosition) >= i3 - 1) {
                return false;
            }
            return scrollToChild((i4 - this.mFirstPosition) + 1);
        }
        if (i2 == 8192 && isEnabled() && this.mItemCount > 0 && (i5 = this.mSelectedPosition) > 0) {
            return scrollToChild((i5 - this.mFirstPosition) - 1);
        }
        return false;
    }

    @Override // android.widget.AdapterView
    public void selectionChanged() {
        if (this.mSuppressSelectionChanged) {
            return;
        }
        super.selectionChanged();
    }

    public void setAnimationDuration(int i2) {
        this.mAnimationDuration = i2;
    }

    public void setCallbackDuringFling(boolean z2) {
        this.mShouldCallbackDuringFling = z2;
    }

    public void setCallbackOnUnselectedItemClick(boolean z2) {
        this.mShouldCallbackOnUnselectedItemClick = z2;
    }

    public void setGravity(int i2) {
        if (this.mGravity != i2) {
            this.mGravity = i2;
            requestLayout();
        }
    }

    @Override // android.widget.AdapterView
    public void setSelectedPositionInt(int i2) {
        super.setSelectedPositionInt(i2);
        updateSelectedItemMetadata();
    }

    public void setSpacing(int i2) {
        this.mSpacing = i2;
    }

    public void setUnselectedAlpha(float f2) {
        this.mUnselectedAlpha = f2;
    }

    @Override // android.view.View
    public boolean showContextMenu() {
        int i2;
        if (!isPressed() || (i2 = this.mSelectedPosition) < 0) {
            return false;
        }
        return dispatchLongPress(getChildAt(i2 - this.mFirstPosition), this.mSelectedPosition, this.mSelectedRowId);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int positionForView = getPositionForView(view);
        if (positionForView < 0) {
            return false;
        }
        return dispatchLongPress(view, positionForView, this.mAdapter.getItemId(positionForView));
    }

    public void trackMotionScroll(int i2) {
        if (getChildCount() == 0) {
            return;
        }
        boolean z2 = i2 < 0;
        int limitedMotionScrollAmount = getLimitedMotionScrollAmount(z2, i2);
        if (limitedMotionScrollAmount != i2) {
            this.mFlingRunnable.endFling(false);
            onFinishedMovement();
        }
        offsetChildrenLeftAndRight(limitedMotionScrollAmount);
        detachOffScreenChildren(z2);
        if (z2) {
            fillToGalleryRight();
        } else {
            fillToGalleryLeft();
        }
        this.mRecycler.clear();
        setSelectionToCenterChild();
        View view = this.mSelectedChild;
        if (view != null) {
            this.mSelectedCenterOffset = (view.getLeft() + (view.getWidth() / 2)) - (getWidth() / 2);
        }
        onScrollChanged(0, 0, 0, 0);
        invalidate();
    }

    public Gallery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.galleryStyle);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public Gallery(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mSpacing = 0;
        this.mAnimationDuration = 400;
        this.mFlingRunnable = new FlingRunnable();
        this.mDisableSuppressSelectionChangedRunnable = new Runnable() { // from class: android.widget.Gallery.1
            @Override // java.lang.Runnable
            public void run() {
                Gallery.this.mSuppressSelectionChanged = false;
                Gallery.this.selectionChanged();
            }
        };
        this.mShouldCallbackDuringFling = true;
        this.mShouldCallbackOnUnselectedItemClick = true;
        this.mIsRtl = true;
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.mGestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.Gallery, i2, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i4 > 0) {
            setAnimationDuration(i4);
        }
        setSpacing(typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0));
        setUnselectedAlpha(typedArrayObtainStyledAttributes.getFloat(3, 0.5f));
        typedArrayObtainStyledAttributes.recycle();
        int i5 = this.mGroupFlags | 1024;
        this.mGroupFlags = i5;
        this.mGroupFlags = i5 | 2048;
    }
}
