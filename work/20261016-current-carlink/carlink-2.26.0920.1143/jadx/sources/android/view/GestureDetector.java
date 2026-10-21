package android.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GestureDetector {
    private static final int LONG_PRESS = 2;
    private static final int SHOW_PRESS = 1;
    private static final int TAP = 3;
    private boolean mAlwaysInBiggerTapRegion;
    private boolean mAlwaysInTapRegion;
    private OnContextClickListener mContextClickListener;
    private MotionEvent mCurrentDownEvent;
    private boolean mDeferConfirmSingleTap;
    private OnDoubleTapListener mDoubleTapListener;
    private int mDoubleTapSlopSquare;
    private int mDoubleTapTouchSlopSquare;
    private float mDownFocusX;
    private float mDownFocusY;
    private final Handler mHandler;
    private boolean mIgnoreNextUpEvent;
    private boolean mInContextClick;
    private boolean mInLongPress;
    private final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    private boolean mIsDoubleTapping;
    private boolean mIsLongpressEnabled;
    private float mLastFocusX;
    private float mLastFocusY;
    private final OnGestureListener mListener;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    private MotionEvent mPreviousUpEvent;
    private boolean mStillDown;
    private int mTouchSlopSquare;
    private VelocityTracker mVelocityTracker;
    private static final int LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
    private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
    private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
    private static final int DOUBLE_TAP_MIN_TIME = ViewConfiguration.getDoubleTapMinTime();

    public interface OnContextClickListener {
        boolean onContextClick(MotionEvent motionEvent);
    }

    public interface OnDoubleTapListener {
        boolean onDoubleTap(MotionEvent motionEvent);

        boolean onDoubleTapEvent(MotionEvent motionEvent);

        boolean onSingleTapConfirmed(MotionEvent motionEvent);
    }

    public interface OnGestureListener {
        boolean onDown(MotionEvent motionEvent);

        boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3);

        void onLongPress(MotionEvent motionEvent);

        boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3);

        void onShowPress(MotionEvent motionEvent);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public static class SimpleOnGestureListener implements OnGestureListener, OnDoubleTapListener, OnContextClickListener {
        @Override // android.view.GestureDetector.OnContextClickListener
        public boolean onContextClick(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    @Deprecated
    public GestureDetector(OnGestureListener onGestureListener, Handler handler) {
        this(null, onGestureListener, handler);
    }

    private void cancel() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(3);
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
        this.mIsDoubleTapping = false;
        this.mStillDown = false;
        this.mAlwaysInTapRegion = false;
        this.mAlwaysInBiggerTapRegion = false;
        this.mDeferConfirmSingleTap = false;
        this.mInLongPress = false;
        this.mInContextClick = false;
        this.mIgnoreNextUpEvent = false;
    }

    private void cancelTaps() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(3);
        this.mIsDoubleTapping = false;
        this.mAlwaysInTapRegion = false;
        this.mAlwaysInBiggerTapRegion = false;
        this.mDeferConfirmSingleTap = false;
        this.mInLongPress = false;
        this.mInContextClick = false;
        this.mIgnoreNextUpEvent = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchLongPress() {
        this.mHandler.removeMessages(3);
        this.mDeferConfirmSingleTap = false;
        this.mInLongPress = true;
        this.mListener.onLongPress(this.mCurrentDownEvent);
    }

    private void init(Context context) {
        int scaledDoubleTapTouchSlop;
        int touchSlop;
        int doubleTapSlop;
        if (this.mListener == null) {
            throw new NullPointerException("OnGestureListener must not be null");
        }
        this.mIsLongpressEnabled = true;
        if (context == null) {
            touchSlop = ViewConfiguration.getTouchSlop();
            doubleTapSlop = ViewConfiguration.getDoubleTapSlop();
            this.mMinimumFlingVelocity = ViewConfiguration.getMinimumFlingVelocity();
            this.mMaximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity();
            scaledDoubleTapTouchSlop = touchSlop;
        } else {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            scaledDoubleTapTouchSlop = viewConfiguration.getScaledDoubleTapTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
            this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            touchSlop = scaledTouchSlop;
            doubleTapSlop = scaledDoubleTapSlop;
        }
        this.mTouchSlopSquare = touchSlop * touchSlop;
        this.mDoubleTapTouchSlopSquare = scaledDoubleTapTouchSlop * scaledDoubleTapTouchSlop;
        this.mDoubleTapSlopSquare = doubleTapSlop * doubleTapSlop;
    }

    private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
        if (!this.mAlwaysInBiggerTapRegion) {
            return false;
        }
        long eventTime = motionEvent3.getEventTime() - motionEvent2.getEventTime();
        if (eventTime > DOUBLE_TAP_TIMEOUT || eventTime < DOUBLE_TAP_MIN_TIME) {
            return false;
        }
        int x2 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
        int y2 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
        return (y2 * y2) + (x2 * x2) < ((motionEvent.getFlags() & 8) != 0 ? 0 : this.mDoubleTapSlopSquare);
    }

    public boolean isLongpressEnabled() {
        return this.mIsLongpressEnabled;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onGenericMotionEvent(motionEvent, 0);
        }
        int actionButton = motionEvent.getActionButton();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 11) {
            OnContextClickListener onContextClickListener = this.mContextClickListener;
            if (onContextClickListener != null && !this.mInContextClick && !this.mInLongPress && ((actionButton == 32 || actionButton == 2) && onContextClickListener.onContextClick(motionEvent))) {
                this.mInContextClick = true;
                this.mHandler.removeMessages(2);
                this.mHandler.removeMessages(3);
                return true;
            }
        } else if (actionMasked == 12 && this.mInContextClick && (actionButton == 32 || actionButton == 2)) {
            this.mInContextClick = false;
            this.mIgnoreNextUpEvent = true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnDoubleTap;
        boolean zOnDown;
        MotionEvent motionEvent2;
        InputEventConsistencyVerifier inputEventConsistencyVerifier;
        boolean zOnFling;
        OnDoubleTapListener onDoubleTapListener;
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onTouchEvent(motionEvent, 0);
        }
        int action = motionEvent.getAction();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i2 = action & 255;
        boolean z2 = i2 == 6;
        int actionIndex = z2 ? motionEvent.getActionIndex() : -1;
        boolean z3 = (motionEvent.getFlags() & 8) != 0;
        int pointerCount = motionEvent.getPointerCount();
        float x2 = 0.0f;
        float y2 = 0.0f;
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (actionIndex != i3) {
                x2 += motionEvent.getX(i3);
                y2 += motionEvent.getY(i3);
            }
        }
        float f2 = z2 ? pointerCount - 1 : pointerCount;
        float f3 = x2 / f2;
        float f4 = y2 / f2;
        if (i2 == 0) {
            if (this.mDoubleTapListener == null) {
                zOnDoubleTap = false;
            } else {
                boolean zHasMessages = this.mHandler.hasMessages(3);
                if (zHasMessages) {
                    this.mHandler.removeMessages(3);
                }
                MotionEvent motionEvent3 = this.mCurrentDownEvent;
                if (motionEvent3 == null || (motionEvent2 = this.mPreviousUpEvent) == null || !zHasMessages || !isConsideredDoubleTap(motionEvent3, motionEvent2, motionEvent)) {
                    this.mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
                    zOnDoubleTap = false;
                } else {
                    this.mIsDoubleTapping = true;
                    zOnDoubleTap = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | false | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                }
            }
            this.mLastFocusX = f3;
            this.mDownFocusX = f3;
            this.mLastFocusY = f4;
            this.mDownFocusY = f4;
            MotionEvent motionEvent4 = this.mCurrentDownEvent;
            if (motionEvent4 != null) {
                motionEvent4.recycle();
            }
            this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
            this.mAlwaysInTapRegion = true;
            this.mAlwaysInBiggerTapRegion = true;
            this.mStillDown = true;
            this.mInLongPress = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mIsLongpressEnabled) {
                this.mHandler.removeMessages(2);
                this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + ((long) LONGPRESS_TIMEOUT));
            }
            this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT));
            zOnDown = zOnDoubleTap | this.mListener.onDown(motionEvent);
        } else if (i2 != 1) {
            if (i2 == 2) {
                if (this.mInLongPress || this.mInContextClick) {
                    break;
                }
                float f5 = this.mLastFocusX - f3;
                float f6 = this.mLastFocusY - f4;
                if (this.mIsDoubleTapping) {
                    zOnDown = this.mDoubleTapListener.onDoubleTapEvent(motionEvent) | false;
                } else if (this.mAlwaysInTapRegion) {
                    int i4 = (int) (f3 - this.mDownFocusX);
                    int i5 = (int) (f4 - this.mDownFocusY);
                    int i6 = (i5 * i5) + (i4 * i4);
                    if (i6 > (z3 ? 0 : this.mTouchSlopSquare)) {
                        zOnDown = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f5, f6);
                        this.mLastFocusX = f3;
                        this.mLastFocusY = f4;
                        this.mAlwaysInTapRegion = false;
                        this.mHandler.removeMessages(3);
                        this.mHandler.removeMessages(1);
                        this.mHandler.removeMessages(2);
                    } else {
                        zOnDown = false;
                    }
                    if (i6 > (z3 ? 0 : this.mDoubleTapTouchSlopSquare)) {
                        this.mAlwaysInBiggerTapRegion = false;
                    }
                } else if (Math.abs(f5) >= 1.0f || Math.abs(f6) >= 1.0f) {
                    zOnDown = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f5, f6);
                    this.mLastFocusX = f3;
                    this.mLastFocusY = f4;
                }
            } else if (i2 == 3) {
                cancel();
            } else if (i2 == 5) {
                this.mLastFocusX = f3;
                this.mDownFocusX = f3;
                this.mLastFocusY = f4;
                this.mDownFocusY = f4;
                cancelTaps();
            } else if (i2 == 6) {
                this.mLastFocusX = f3;
                this.mDownFocusX = f3;
                this.mLastFocusY = f4;
                this.mDownFocusY = f4;
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                int actionIndex2 = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex2);
                float xVelocity = this.mVelocityTracker.getXVelocity(pointerId);
                float yVelocity = this.mVelocityTracker.getYVelocity(pointerId);
                for (int i7 = 0; i7 < pointerCount; i7++) {
                    if (i7 != actionIndex2) {
                        int pointerId2 = motionEvent.getPointerId(i7);
                        if ((this.mVelocityTracker.getYVelocity(pointerId2) * yVelocity) + (this.mVelocityTracker.getXVelocity(pointerId2) * xVelocity) < 0.0f) {
                            this.mVelocityTracker.clear();
                            break;
                        }
                    }
                }
            }
            zOnDown = false;
        } else {
            this.mStillDown = false;
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            if (this.mIsDoubleTapping) {
                zOnFling = this.mDoubleTapListener.onDoubleTapEvent(motionEvent) | false;
            } else {
                if (this.mInLongPress) {
                    this.mHandler.removeMessages(3);
                    this.mInLongPress = false;
                } else if (this.mAlwaysInTapRegion && !this.mIgnoreNextUpEvent) {
                    zOnFling = this.mListener.onSingleTapUp(motionEvent);
                    if (this.mDeferConfirmSingleTap && (onDoubleTapListener = this.mDoubleTapListener) != null) {
                        onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                    }
                } else if (!this.mIgnoreNextUpEvent) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    int pointerId3 = motionEvent.getPointerId(0);
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                    float yVelocity2 = velocityTracker.getYVelocity(pointerId3);
                    float xVelocity2 = velocityTracker.getXVelocity(pointerId3);
                    if (Math.abs(yVelocity2) > this.mMinimumFlingVelocity || Math.abs(xVelocity2) > this.mMinimumFlingVelocity) {
                        zOnFling = this.mListener.onFling(this.mCurrentDownEvent, motionEvent, xVelocity2, yVelocity2);
                    }
                }
                zOnFling = false;
            }
            MotionEvent motionEvent5 = this.mPreviousUpEvent;
            if (motionEvent5 != null) {
                motionEvent5.recycle();
            }
            this.mPreviousUpEvent = motionEventObtain;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
            this.mIsDoubleTapping = false;
            this.mDeferConfirmSingleTap = false;
            this.mIgnoreNextUpEvent = false;
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            zOnDown = zOnFling;
        }
        if (!zOnDown && (inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier) != null) {
            inputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 0);
        }
        return zOnDown;
    }

    public void setContextClickListener(OnContextClickListener onContextClickListener) {
        this.mContextClickListener = onContextClickListener;
    }

    public void setIsLongpressEnabled(boolean z2) {
        this.mIsLongpressEnabled = z2;
    }

    public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
        this.mDoubleTapListener = onDoubleTapListener;
    }

    public class GestureHandler extends Handler {
        public GestureHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                GestureDetector.this.mListener.onShowPress(GestureDetector.this.mCurrentDownEvent);
                return;
            }
            if (i2 == 2) {
                GestureDetector.this.dispatchLongPress();
                return;
            }
            if (i2 != 3) {
                throw new RuntimeException("Unknown message " + message);
            }
            if (GestureDetector.this.mDoubleTapListener != null) {
                if (GestureDetector.this.mStillDown) {
                    GestureDetector.this.mDeferConfirmSingleTap = true;
                } else {
                    GestureDetector.this.mDoubleTapListener.onSingleTapConfirmed(GestureDetector.this.mCurrentDownEvent);
                }
            }
        }

        public GestureHandler(Handler handler) {
            super(handler.getLooper());
        }
    }

    @Deprecated
    public GestureDetector(OnGestureListener onGestureListener) {
        this(null, onGestureListener, null);
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener, Handler handler) {
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        if (handler != null) {
            this.mHandler = new GestureHandler(handler);
        } else {
            this.mHandler = new GestureHandler();
        }
        this.mListener = onGestureListener;
        if (onGestureListener instanceof OnDoubleTapListener) {
            setOnDoubleTapListener((OnDoubleTapListener) onGestureListener);
        }
        if (onGestureListener instanceof OnContextClickListener) {
            setContextClickListener((OnContextClickListener) onGestureListener);
        }
        init(context);
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener, Handler handler, boolean z2) {
        this(context, onGestureListener, handler);
    }
}
