package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class SlidingDrawer extends ViewGroup {
    private static final int ANIMATION_FRAME_DURATION = 16;
    private static final int COLLAPSED_FULL_CLOSED = -10002;
    private static final int EXPANDED_FULL_OPEN = -10001;
    private static final float MAXIMUM_ACCELERATION = 2000.0f;
    private static final float MAXIMUM_MAJOR_VELOCITY = 200.0f;
    private static final float MAXIMUM_MINOR_VELOCITY = 150.0f;
    private static final float MAXIMUM_TAP_VELOCITY = 100.0f;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    private static final int TAP_THRESHOLD = 6;
    private static final int VELOCITY_UNITS = 1000;
    private boolean mAllowSingleTap;
    private boolean mAnimateOnClick;
    private float mAnimatedAcceleration;
    private float mAnimatedVelocity;
    private boolean mAnimating;
    private long mAnimationLastTime;
    private float mAnimationPosition;
    private int mBottomOffset;
    private View mContent;
    private final int mContentId;
    private long mCurrentAnimationTime;
    private boolean mExpanded;
    private final Rect mFrame;
    private View mHandle;
    private int mHandleHeight;
    private final int mHandleId;
    private int mHandleWidth;
    private final Rect mInvalidate;
    private boolean mLocked;
    private final int mMaximumAcceleration;
    private final int mMaximumMajorVelocity;
    private final int mMaximumMinorVelocity;
    private final int mMaximumTapVelocity;
    private OnDrawerCloseListener mOnDrawerCloseListener;
    private OnDrawerOpenListener mOnDrawerOpenListener;
    private OnDrawerScrollListener mOnDrawerScrollListener;
    private final Runnable mSlidingRunnable;
    private final int mTapThreshold;
    private int mTopOffset;
    private int mTouchDelta;
    private boolean mTracking;
    private VelocityTracker mVelocityTracker;
    private final int mVelocityUnits;
    private boolean mVertical;

    public class DrawerToggler implements View.OnClickListener {
        private DrawerToggler() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SlidingDrawer.this.mLocked) {
                return;
            }
            if (SlidingDrawer.this.mAnimateOnClick) {
                SlidingDrawer.this.animateToggle();
            } else {
                SlidingDrawer.this.toggle();
            }
        }
    }

    public interface OnDrawerCloseListener {
        void onDrawerClosed();
    }

    public interface OnDrawerOpenListener {
        void onDrawerOpened();
    }

    public interface OnDrawerScrollListener {
        void onScrollEnded();

        void onScrollStarted();
    }

    public SlidingDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void animateClose(int i2, boolean z2) {
        prepareTracking(i2);
        performFling(i2, this.mMaximumAcceleration, true, z2);
    }

    private void animateOpen(int i2, boolean z2) {
        prepareTracking(i2);
        performFling(i2, -this.mMaximumAcceleration, true, z2);
    }

    private void closeDrawer() {
        moveHandle(COLLAPSED_FULL_CLOSED);
        this.mContent.setVisibility(8);
        this.mContent.destroyDrawingCache();
        if (this.mExpanded) {
            this.mExpanded = false;
            OnDrawerCloseListener onDrawerCloseListener = this.mOnDrawerCloseListener;
            if (onDrawerCloseListener != null) {
                onDrawerCloseListener.onDrawerClosed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAnimation() {
        if (this.mAnimating) {
            incrementAnimation();
            if (this.mAnimationPosition >= (this.mBottomOffset + (this.mVertical ? getHeight() : getWidth())) - 1) {
                this.mAnimating = false;
                closeDrawer();
                return;
            }
            float f2 = this.mAnimationPosition;
            if (f2 < this.mTopOffset) {
                this.mAnimating = false;
                openDrawer();
            } else {
                moveHandle((int) f2);
                this.mCurrentAnimationTime += 16;
                postDelayed(this.mSlidingRunnable, 16L);
            }
        }
    }

    private void incrementAnimation() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        float f2 = (jUptimeMillis - this.mAnimationLastTime) / 1000.0f;
        float f3 = this.mAnimationPosition;
        float f4 = this.mAnimatedVelocity;
        float f5 = this.mAnimatedAcceleration;
        this.mAnimationPosition = (0.5f * f5 * f2 * f2) + (f4 * f2) + f3;
        this.mAnimatedVelocity = (f5 * f2) + f4;
        this.mAnimationLastTime = jUptimeMillis;
    }

    private void moveHandle(int i2) {
        View view = this.mHandle;
        if (this.mVertical) {
            if (i2 == EXPANDED_FULL_OPEN) {
                view.offsetTopAndBottom(this.mTopOffset - view.getTop());
                invalidate();
                return;
            }
            if (i2 == COLLAPSED_FULL_CLOSED) {
                view.offsetTopAndBottom((((this.mBottomOffset + this.mBottom) - this.mTop) - this.mHandleHeight) - view.getTop());
                invalidate();
                return;
            }
            int top = view.getTop();
            int i3 = i2 - top;
            int i4 = this.mTopOffset;
            if (i2 < i4) {
                i3 = i4 - top;
            } else {
                int i5 = this.mBottomOffset;
                int i6 = this.mBottom;
                int i7 = this.mTop;
                int i8 = this.mHandleHeight;
                if (i3 > (((i5 + i6) - i7) - i8) - top) {
                    i3 = (((i5 + i6) - i7) - i8) - top;
                }
            }
            view.offsetTopAndBottom(i3);
            Rect rect = this.mFrame;
            Rect rect2 = this.mInvalidate;
            view.getHitRect(rect);
            rect2.set(rect);
            rect2.union(rect.left, rect.top - i3, rect.right, rect.bottom - i3);
            rect2.union(0, rect.bottom - i3, getWidth(), this.mContent.getHeight() + (rect.bottom - i3));
            invalidate(rect2);
            return;
        }
        if (i2 == EXPANDED_FULL_OPEN) {
            view.offsetLeftAndRight(this.mTopOffset - view.getLeft());
            invalidate();
            return;
        }
        if (i2 == COLLAPSED_FULL_CLOSED) {
            view.offsetLeftAndRight((((this.mBottomOffset + this.mRight) - this.mLeft) - this.mHandleWidth) - view.getLeft());
            invalidate();
            return;
        }
        int left = view.getLeft();
        int i9 = i2 - left;
        int i10 = this.mTopOffset;
        if (i2 < i10) {
            i9 = i10 - left;
        } else {
            int i11 = this.mBottomOffset;
            int i12 = this.mRight;
            int i13 = this.mLeft;
            int i14 = this.mHandleWidth;
            if (i9 > (((i11 + i12) - i13) - i14) - left) {
                i9 = (((i11 + i12) - i13) - i14) - left;
            }
        }
        view.offsetLeftAndRight(i9);
        Rect rect3 = this.mFrame;
        Rect rect4 = this.mInvalidate;
        view.getHitRect(rect3);
        rect4.set(rect3);
        rect4.union(rect3.left - i9, rect3.top, rect3.right - i9, rect3.bottom);
        int i15 = rect3.right;
        rect4.union(i15 - i9, 0, this.mContent.getWidth() + (i15 - i9), getHeight());
        invalidate(rect4);
    }

    private void openDrawer() {
        moveHandle(EXPANDED_FULL_OPEN);
        this.mContent.setVisibility(0);
        if (this.mExpanded) {
            return;
        }
        this.mExpanded = true;
        OnDrawerOpenListener onDrawerOpenListener = this.mOnDrawerOpenListener;
        if (onDrawerOpenListener != null) {
            onDrawerOpenListener.onDrawerOpened();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0035  */
    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0079  */
    private void performFling(int i2, float f2, boolean z2, boolean z3) {
        this.mAnimationPosition = i2;
        this.mAnimatedVelocity = f2;
        if (this.mExpanded) {
            if (z2) {
                this.mAnimatedAcceleration = this.mMaximumAcceleration;
                if (f2 < 0.0f) {
                    this.mAnimatedVelocity = 0.0f;
                }
            } else {
                int i3 = this.mMaximumMajorVelocity;
                if (f2 <= i3) {
                    if (i2 <= this.mTopOffset + (this.mVertical ? this.mHandleHeight : this.mHandleWidth) || f2 <= (-i3)) {
                        this.mAnimatedAcceleration = -this.mMaximumAcceleration;
                        if (f2 > 0.0f) {
                            this.mAnimatedVelocity = 0.0f;
                        }
                    } else {
                        this.mAnimatedAcceleration = this.mMaximumAcceleration;
                        if (f2 < 0.0f) {
                            this.mAnimatedVelocity = 0.0f;
                        }
                    }
                } else {
                    this.mAnimatedAcceleration = this.mMaximumAcceleration;
                    if (f2 < 0.0f) {
                        this.mAnimatedVelocity = 0.0f;
                    }
                }
            }
        } else if (z2) {
            this.mAnimatedAcceleration = -this.mMaximumAcceleration;
            if (f2 > 0.0f) {
                this.mAnimatedVelocity = 0.0f;
            }
        } else {
            if (f2 <= this.mMaximumMajorVelocity) {
                if (i2 <= (this.mVertical ? getHeight() : getWidth()) / 2 || f2 <= (-this.mMaximumMajorVelocity)) {
                    this.mAnimatedAcceleration = -this.mMaximumAcceleration;
                    if (f2 > 0.0f) {
                        this.mAnimatedVelocity = 0.0f;
                    }
                }
            }
            this.mAnimatedAcceleration = this.mMaximumAcceleration;
            if (f2 < 0.0f) {
                this.mAnimatedVelocity = 0.0f;
            }
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mAnimationLastTime = jUptimeMillis;
        this.mCurrentAnimationTime = jUptimeMillis + 16;
        this.mAnimating = true;
        removeCallbacks(this.mSlidingRunnable);
        postDelayed(this.mSlidingRunnable, 16L);
        stopTracking(z3);
    }

    private void prepareContent() {
        if (this.mAnimating) {
            return;
        }
        View view = this.mContent;
        if (view.isLayoutRequested()) {
            if (this.mVertical) {
                int i2 = this.mHandleHeight;
                view.measure(View.MeasureSpec.makeMeasureSpec(this.mRight - this.mLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(((this.mBottom - this.mTop) - i2) - this.mTopOffset, 1073741824));
                view.layout(0, this.mTopOffset + i2, view.getMeasuredWidth(), view.getMeasuredHeight() + this.mTopOffset + i2);
            } else {
                int width = this.mHandle.getWidth();
                view.measure(View.MeasureSpec.makeMeasureSpec(((this.mRight - this.mLeft) - width) - this.mTopOffset, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mBottom - this.mTop, 1073741824));
                int i3 = this.mTopOffset;
                view.layout(width + i3, 0, view.getMeasuredWidth() + i3 + width, view.getMeasuredHeight());
            }
        }
        view.getViewTreeObserver().dispatchOnPreDraw();
        if (!view.isHardwareAccelerated()) {
            view.buildDrawingCache();
        }
        view.setVisibility(8);
    }

    private void prepareTracking(int i2) {
        int width;
        int i3;
        this.mTracking = true;
        this.mVelocityTracker = VelocityTracker.obtain();
        if (!(!this.mExpanded)) {
            if (this.mAnimating) {
                this.mAnimating = false;
                removeCallbacks(this.mSlidingRunnable);
            }
            moveHandle(i2);
            return;
        }
        this.mAnimatedAcceleration = this.mMaximumAcceleration;
        this.mAnimatedVelocity = this.mMaximumMajorVelocity;
        int i4 = this.mBottomOffset;
        if (this.mVertical) {
            width = getHeight();
            i3 = this.mHandleHeight;
        } else {
            width = getWidth();
            i3 = this.mHandleWidth;
        }
        float f2 = i4 + (width - i3);
        this.mAnimationPosition = f2;
        moveHandle((int) f2);
        this.mAnimating = true;
        removeCallbacks(this.mSlidingRunnable);
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mAnimationLastTime = jUptimeMillis;
        this.mCurrentAnimationTime = jUptimeMillis + 16;
        this.mAnimating = true;
    }

    private void stopTracking(boolean z2) {
        OnDrawerScrollListener onDrawerScrollListener;
        this.mHandle.setPressed(false);
        this.mTracking = false;
        if (z2 && (onDrawerScrollListener = this.mOnDrawerScrollListener) != null) {
            onDrawerScrollListener.onScrollEnded();
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void animateToggle() {
        if (this.mExpanded) {
            animateClose();
        } else {
            animateOpen();
        }
    }

    public void close() {
        closeDrawer();
        invalidate();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        long drawingTime = getDrawingTime();
        View view = this.mHandle;
        boolean z2 = this.mVertical;
        drawChild(canvas, view, drawingTime);
        if (!this.mTracking && !this.mAnimating) {
            if (this.mExpanded) {
                drawChild(canvas, this.mContent, drawingTime);
                return;
            }
            return;
        }
        Bitmap drawingCache = this.mContent.getDrawingCache();
        if (drawingCache != null) {
            if (z2) {
                canvas.drawBitmap(drawingCache, 0.0f, view.getBottom(), (Paint) null);
                return;
            } else {
                canvas.drawBitmap(drawingCache, view.getRight(), 0.0f, (Paint) null);
                return;
            }
        }
        canvas.save();
        canvas.translate(z2 ? 0.0f : view.getLeft() - this.mTopOffset, z2 ? view.getTop() - this.mTopOffset : 0.0f);
        drawChild(canvas, this.mContent, drawingTime);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return SlidingDrawer.class.getName();
    }

    public View getContent() {
        return this.mContent;
    }

    public View getHandle() {
        return this.mHandle;
    }

    public boolean isMoving() {
        return this.mTracking || this.mAnimating;
    }

    public boolean isOpened() {
        return this.mExpanded;
    }

    public void lock() {
        this.mLocked = true;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        View viewFindViewById = findViewById(this.mHandleId);
        this.mHandle = viewFindViewById;
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
        }
        viewFindViewById.setOnClickListener(new DrawerToggler());
        View viewFindViewById2 = findViewById(this.mContentId);
        this.mContent = viewFindViewById2;
        if (viewFindViewById2 == null) {
            throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
        }
        viewFindViewById2.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mLocked) {
            return false;
        }
        int action = motionEvent.getAction();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        Rect rect = this.mFrame;
        View view = this.mHandle;
        view.getHitRect(rect);
        if (!this.mTracking && !rect.contains((int) x2, (int) y2)) {
            return false;
        }
        if (action == 0) {
            this.mTracking = true;
            view.setPressed(true);
            prepareContent();
            OnDrawerScrollListener onDrawerScrollListener = this.mOnDrawerScrollListener;
            if (onDrawerScrollListener != null) {
                onDrawerScrollListener.onScrollStarted();
            }
            if (this.mVertical) {
                int top = this.mHandle.getTop();
                this.mTouchDelta = ((int) y2) - top;
                prepareTracking(top);
            } else {
                int left = this.mHandle.getLeft();
                this.mTouchDelta = ((int) x2) - left;
                prepareTracking(left);
            }
            this.mVelocityTracker.addMovement(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (this.mTracking) {
            return;
        }
        int i8 = i4 - i2;
        int i9 = i5 - i3;
        View view = this.mHandle;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        View view2 = this.mContent;
        if (this.mVertical) {
            i6 = (i8 - measuredWidth) / 2;
            i7 = this.mExpanded ? this.mTopOffset : (i9 - measuredHeight) + this.mBottomOffset;
            view2.layout(0, this.mTopOffset + measuredHeight, view2.getMeasuredWidth(), view2.getMeasuredHeight() + this.mTopOffset + measuredHeight);
        } else {
            i6 = this.mExpanded ? this.mTopOffset : (i8 - measuredWidth) + this.mBottomOffset;
            i7 = (i9 - measuredHeight) / 2;
            int i10 = this.mTopOffset;
            view2.layout(i10 + measuredWidth, 0, view2.getMeasuredWidth() + i10 + measuredWidth, view2.getMeasuredHeight());
        }
        view.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
        this.mHandleHeight = view.getHeight();
        this.mHandleWidth = view.getWidth();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("SlidingDrawer cannot have UNSPECIFIED dimensions");
        }
        View view = this.mHandle;
        measureChild(view, i2, i3);
        if (this.mVertical) {
            this.mContent.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - view.getMeasuredHeight()) - this.mTopOffset, 1073741824));
        } else {
            this.mContent.measure(View.MeasureSpec.makeMeasureSpec((size - view.getMeasuredWidth()) - this.mTopOffset, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        setMeasuredDimension(size, size2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0034  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    /* JADX WARN: Code duplicated, block: B:24:0x004e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0061  */
    /* JADX WARN: Code duplicated, block: B:34:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0092  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00fb  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float yVelocity;
        float xVelocity;
        boolean z2;
        boolean z3;
        int i2;
        float fHypot;
        int top;
        int left;
        int i3;
        if (this.mLocked) {
            return true;
        }
        if (this.mTracking) {
            this.mVelocityTracker.addMovement(motionEvent);
            int action = motionEvent.getAction();
            if (action == 1) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(this.mVelocityUnits);
                yVelocity = velocityTracker.getYVelocity();
                xVelocity = velocityTracker.getXVelocity();
                z2 = this.mVertical;
                if (z2) {
                    if (yVelocity < 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (xVelocity < 0.0f) {
                        xVelocity = -xVelocity;
                    }
                    i3 = this.mMaximumMinorVelocity;
                    if (xVelocity > i3) {
                        xVelocity = i3;
                    }
                } else {
                    if (xVelocity < 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (yVelocity < 0.0f) {
                        yVelocity = -yVelocity;
                    }
                    i2 = this.mMaximumMinorVelocity;
                    if (yVelocity > i2) {
                        yVelocity = i2;
                    }
                }
                fHypot = (float) Math.hypot(xVelocity, yVelocity);
                if (z3) {
                    fHypot = -fHypot;
                }
                top = this.mHandle.getTop();
                left = this.mHandle.getLeft();
                if (Math.abs(fHypot) < this.mMaximumTapVelocity) {
                    boolean z4 = this.mExpanded;
                    if (z2 ? (!z4 || left >= this.mTapThreshold + this.mTopOffset) && (z4 || left <= (((this.mBottomOffset + this.mRight) - this.mLeft) - this.mHandleWidth) - this.mTapThreshold) : (!z4 || top >= this.mTapThreshold + this.mTopOffset) && (z4 || top <= (((this.mBottomOffset + this.mBottom) - this.mTop) - this.mHandleHeight) - this.mTapThreshold)) {
                        if (!z2) {
                            top = left;
                        }
                        performFling(top, fHypot, false, true);
                    } else if (this.mAllowSingleTap) {
                        playSoundEffect(0);
                        if (this.mExpanded) {
                            if (!z2) {
                                top = left;
                            }
                            animateClose(top, true);
                        } else {
                            if (!z2) {
                                top = left;
                            }
                            animateOpen(top, true);
                        }
                    } else {
                        if (!z2) {
                            top = left;
                        }
                        performFling(top, fHypot, false, true);
                    }
                } else {
                    if (!z2) {
                        top = left;
                    }
                    performFling(top, fHypot, false, true);
                }
            } else if (action == 2) {
                moveHandle(((int) (this.mVertical ? motionEvent.getY() : motionEvent.getX())) - this.mTouchDelta);
            } else if (action == 3) {
                VelocityTracker velocityTracker2 = this.mVelocityTracker;
                velocityTracker2.computeCurrentVelocity(this.mVelocityUnits);
                yVelocity = velocityTracker2.getYVelocity();
                xVelocity = velocityTracker2.getXVelocity();
                z2 = this.mVertical;
                if (z2) {
                    if (yVelocity < 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (xVelocity < 0.0f) {
                        xVelocity = -xVelocity;
                    }
                    i3 = this.mMaximumMinorVelocity;
                    if (xVelocity > i3) {
                        xVelocity = i3;
                    }
                } else {
                    if (xVelocity < 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (yVelocity < 0.0f) {
                        yVelocity = -yVelocity;
                    }
                    i2 = this.mMaximumMinorVelocity;
                    if (yVelocity > i2) {
                        yVelocity = i2;
                    }
                }
                fHypot = (float) Math.hypot(xVelocity, yVelocity);
                if (z3) {
                    fHypot = -fHypot;
                }
                top = this.mHandle.getTop();
                left = this.mHandle.getLeft();
                if (Math.abs(fHypot) < this.mMaximumTapVelocity) {
                    boolean z5 = this.mExpanded;
                    if (z2) {
                        if (!z2) {
                            top = left;
                        }
                        performFling(top, fHypot, false, true);
                    } else {
                        if (!z2) {
                            top = left;
                        }
                        performFling(top, fHypot, false, true);
                    }
                } else {
                    if (!z2) {
                        top = left;
                    }
                    performFling(top, fHypot, false, true);
                }
            }
        }
        return this.mTracking || this.mAnimating || super.onTouchEvent(motionEvent);
    }

    public void open() {
        openDrawer();
        invalidate();
        requestLayout();
        sendAccessibilityEvent(32);
    }

    public void setOnDrawerCloseListener(OnDrawerCloseListener onDrawerCloseListener) {
        this.mOnDrawerCloseListener = onDrawerCloseListener;
    }

    public void setOnDrawerOpenListener(OnDrawerOpenListener onDrawerOpenListener) {
        this.mOnDrawerOpenListener = onDrawerOpenListener;
    }

    public void setOnDrawerScrollListener(OnDrawerScrollListener onDrawerScrollListener) {
        this.mOnDrawerScrollListener = onDrawerScrollListener;
    }

    public void toggle() {
        if (this.mExpanded) {
            closeDrawer();
        } else {
            openDrawer();
        }
        invalidate();
        requestLayout();
    }

    public void unlock() {
        this.mLocked = false;
    }

    public SlidingDrawer(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SlidingDrawer(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mFrame = new Rect();
        this.mInvalidate = new Rect();
        this.mSlidingRunnable = new Runnable() { // from class: android.widget.SlidingDrawer.1
            @Override // java.lang.Runnable
            public void run() {
                SlidingDrawer.this.doAnimation();
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingDrawer, i2, i3);
        this.mVertical = typedArrayObtainStyledAttributes.getInt(0, 1) == 1;
        this.mBottomOffset = (int) typedArrayObtainStyledAttributes.getDimension(1, 0.0f);
        this.mTopOffset = (int) typedArrayObtainStyledAttributes.getDimension(2, 0.0f);
        this.mAllowSingleTap = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.mAnimateOnClick = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        if (resourceId != 0) {
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(5, 0);
            if (resourceId2 == 0) {
                throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
            }
            if (resourceId != resourceId2) {
                this.mHandleId = resourceId;
                this.mContentId = resourceId2;
                float f2 = getResources().getDisplayMetrics().density;
                this.mTapThreshold = (int) ((6.0f * f2) + 0.5f);
                this.mMaximumTapVelocity = (int) ((100.0f * f2) + 0.5f);
                this.mMaximumMinorVelocity = (int) ((MAXIMUM_MINOR_VELOCITY * f2) + 0.5f);
                this.mMaximumMajorVelocity = (int) ((200.0f * f2) + 0.5f);
                this.mMaximumAcceleration = (int) ((MAXIMUM_ACCELERATION * f2) + 0.5f);
                this.mVelocityUnits = (int) ((f2 * 1000.0f) + 0.5f);
                typedArrayObtainStyledAttributes.recycle();
                setAlwaysDrawnWithCacheEnabled(false);
                return;
            }
            throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
        }
        throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
    }

    public void animateClose() {
        prepareContent();
        OnDrawerScrollListener onDrawerScrollListener = this.mOnDrawerScrollListener;
        if (onDrawerScrollListener != null) {
            onDrawerScrollListener.onScrollStarted();
        }
        animateClose(this.mVertical ? this.mHandle.getTop() : this.mHandle.getLeft(), false);
        if (onDrawerScrollListener != null) {
            onDrawerScrollListener.onScrollEnded();
        }
    }

    public void animateOpen() {
        prepareContent();
        OnDrawerScrollListener onDrawerScrollListener = this.mOnDrawerScrollListener;
        if (onDrawerScrollListener != null) {
            onDrawerScrollListener.onScrollStarted();
        }
        animateOpen(this.mVertical ? this.mHandle.getTop() : this.mHandle.getLeft(), false);
        sendAccessibilityEvent(32);
        if (onDrawerScrollListener != null) {
            onDrawerScrollListener.onScrollEnded();
        }
    }
}
