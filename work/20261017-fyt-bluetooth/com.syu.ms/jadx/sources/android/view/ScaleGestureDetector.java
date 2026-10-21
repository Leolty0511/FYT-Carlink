package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.util.FloatMath;

/* JADX INFO: loaded from: classes.dex */
public class ScaleGestureDetector {
    private static final int DOUBLE_TAP_MODE_IN_PROGRESS = 1;
    private static final int DOUBLE_TAP_MODE_NONE = 0;
    private static final float SCALE_FACTOR = 0.5f;
    private static final String TAG = "ScaleGestureDetector";
    private static final long TOUCH_STABILIZE_TIME = 128;
    private final Context mContext;
    private float mCurrSpan;
    private float mCurrSpanX;
    private float mCurrSpanY;
    private long mCurrTime;
    private MotionEvent mDoubleTapEvent;
    private int mDoubleTapMode;
    private boolean mEventBeforeOrAboveStartingGestureEvent;
    private float mFocusX;
    private float mFocusY;
    private GestureDetector mGestureDetector;
    private final Handler mHandler;
    private boolean mInProgress;
    private float mInitialSpan;
    private final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    private final OnScaleGestureListener mListener;
    private int mMinSpan;
    private float mPrevSpan;
    private float mPrevSpanX;
    private float mPrevSpanY;
    private long mPrevTime;
    private boolean mQuickScaleEnabled;
    private int mSpanSlop;
    private int mTouchHistoryDirection;
    private float mTouchHistoryLastAccepted;
    private long mTouchHistoryLastAcceptedTime;
    private float mTouchLower;
    private int mTouchMinMajor;
    private float mTouchUpper;

    public interface OnScaleGestureListener {
        boolean onScale(ScaleGestureDetector scaleGestureDetector);

        boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector);

        void onScaleEnd(ScaleGestureDetector scaleGestureDetector);
    }

    public static class SimpleOnScaleGestureListener implements OnScaleGestureListener {
        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return false;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener) {
        this(context, onScaleGestureListener, null);
    }

    private void addTouchHistory(MotionEvent motionEvent) {
        int iSignum;
        int i2;
        long jUptimeMillis = SystemClock.uptimeMillis();
        int pointerCount = motionEvent.getPointerCount();
        boolean z2 = jUptimeMillis - this.mTouchHistoryLastAcceptedTime >= 128;
        float f2 = 0.0f;
        int i3 = 0;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            boolean z3 = !Float.isNaN(this.mTouchHistoryLastAccepted);
            int historySize = motionEvent.getHistorySize();
            int i5 = historySize + 1;
            int i6 = 0;
            while (i6 < i5) {
                float historicalTouchMajor = i6 < historySize ? motionEvent.getHistoricalTouchMajor(i4, i6) : motionEvent.getTouchMajor(i4);
                int i7 = this.mTouchMinMajor;
                if (historicalTouchMajor < i7) {
                    historicalTouchMajor = i7;
                }
                f2 += historicalTouchMajor;
                if (Float.isNaN(this.mTouchUpper) || historicalTouchMajor > this.mTouchUpper) {
                    this.mTouchUpper = historicalTouchMajor;
                }
                if (Float.isNaN(this.mTouchLower) || historicalTouchMajor < this.mTouchLower) {
                    this.mTouchLower = historicalTouchMajor;
                }
                if (z3 && ((iSignum = (int) Math.signum(historicalTouchMajor - this.mTouchHistoryLastAccepted)) != (i2 = this.mTouchHistoryDirection) || (iSignum == 0 && i2 == 0))) {
                    this.mTouchHistoryDirection = iSignum;
                    this.mTouchHistoryLastAcceptedTime = i6 < historySize ? motionEvent.getHistoricalEventTime(i6) : motionEvent.getEventTime();
                    z2 = false;
                }
                i6++;
            }
            i3 += i5;
        }
        float f3 = f2 / i3;
        if (z2) {
            float f4 = this.mTouchUpper;
            float f5 = this.mTouchLower;
            float f6 = ((f4 + f5) + f3) / 3.0f;
            this.mTouchUpper = (f4 + f6) / 2.0f;
            this.mTouchLower = (f5 + f6) / 2.0f;
            this.mTouchHistoryLastAccepted = f6;
            this.mTouchHistoryDirection = 0;
            this.mTouchHistoryLastAcceptedTime = motionEvent.getEventTime();
        }
    }

    private void clearTouchHistory() {
        this.mTouchUpper = Float.NaN;
        this.mTouchLower = Float.NaN;
        this.mTouchHistoryLastAccepted = Float.NaN;
        this.mTouchHistoryDirection = 0;
        this.mTouchHistoryLastAcceptedTime = 0L;
    }

    private boolean inDoubleTapMode() {
        return this.mDoubleTapMode == 1;
    }

    public float getCurrentSpan() {
        return this.mCurrSpan;
    }

    public float getCurrentSpanX() {
        return this.mCurrSpanX;
    }

    public float getCurrentSpanY() {
        return this.mCurrSpanY;
    }

    public long getEventTime() {
        return this.mCurrTime;
    }

    public float getFocusX() {
        return this.mFocusX;
    }

    public float getFocusY() {
        return this.mFocusY;
    }

    public float getPreviousSpan() {
        return this.mPrevSpan;
    }

    public float getPreviousSpanX() {
        return this.mPrevSpanX;
    }

    public float getPreviousSpanY() {
        return this.mPrevSpanY;
    }

    public float getScaleFactor() {
        if (!inDoubleTapMode()) {
            float f2 = this.mPrevSpan;
            if (f2 > 0.0f) {
                return this.mCurrSpan / f2;
            }
            return 1.0f;
        }
        boolean z2 = this.mEventBeforeOrAboveStartingGestureEvent;
        boolean z3 = (z2 && this.mCurrSpan < this.mPrevSpan) || (!z2 && this.mCurrSpan > this.mPrevSpan);
        float fAbs = Math.abs(1.0f - (this.mCurrSpan / this.mPrevSpan)) * 0.5f;
        if (this.mPrevSpan <= 0.0f) {
            return 1.0f;
        }
        return z3 ? 1.0f + fAbs : 1.0f - fAbs;
    }

    public long getTimeDelta() {
        return this.mCurrTime - this.mPrevTime;
    }

    public boolean isInProgress() {
        return this.mInProgress;
    }

    public boolean isQuickScaleEnabled() {
        return this.mQuickScaleEnabled;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float y2;
        float x2;
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onTouchEvent(motionEvent, 0);
        }
        this.mCurrTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.mQuickScaleEnabled) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        boolean z2 = actionMasked == 1 || actionMasked == 3;
        float fAbs = 0.0f;
        if (actionMasked == 0 || z2) {
            if (this.mInProgress) {
                this.mListener.onScaleEnd(this);
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mDoubleTapMode = 0;
            } else if (this.mDoubleTapMode == 1 && z2) {
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mDoubleTapMode = 0;
            }
            if (z2) {
                clearTouchHistory();
                return true;
            }
        }
        boolean z3 = actionMasked == 0 || actionMasked == 6 || actionMasked == 5;
        boolean z4 = actionMasked == 6;
        int actionIndex = z4 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        int i2 = z4 ? pointerCount - 1 : pointerCount;
        if (this.mDoubleTapMode == 1) {
            x2 = this.mDoubleTapEvent.getX();
            y2 = this.mDoubleTapEvent.getY();
            if (motionEvent.getY() < y2) {
                this.mEventBeforeOrAboveStartingGestureEvent = true;
            } else {
                this.mEventBeforeOrAboveStartingGestureEvent = false;
            }
        } else {
            float x3 = 0.0f;
            float y3 = 0.0f;
            for (int i3 = 0; i3 < pointerCount; i3++) {
                if (actionIndex != i3) {
                    x3 += motionEvent.getX(i3);
                    y3 += motionEvent.getY(i3);
                }
            }
            float f2 = i2;
            float f3 = x3 / f2;
            y2 = y3 / f2;
            x2 = f3;
        }
        addTouchHistory(motionEvent);
        float fAbs2 = 0.0f;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            if (actionIndex != i4) {
                float f4 = this.mTouchHistoryLastAccepted / 2.0f;
                fAbs += Math.abs(motionEvent.getX(i4) - x2) + f4;
                fAbs2 += Math.abs(motionEvent.getY(i4) - y2) + f4;
            }
        }
        float f5 = i2;
        float f6 = (fAbs / f5) * 2.0f;
        float f7 = (fAbs2 / f5) * 2.0f;
        float fSqrt = inDoubleTapMode() ? f7 : FloatMath.sqrt((f6 * f6) + (f7 * f7));
        boolean z5 = this.mInProgress;
        this.mFocusX = x2;
        this.mFocusY = y2;
        if (!inDoubleTapMode() && this.mInProgress && (fSqrt < this.mMinSpan || z3)) {
            this.mListener.onScaleEnd(this);
            this.mInProgress = false;
            this.mInitialSpan = fSqrt;
            this.mDoubleTapMode = 0;
        }
        if (z3) {
            this.mCurrSpanX = f6;
            this.mPrevSpanX = f6;
            this.mCurrSpanY = f7;
            this.mPrevSpanY = f7;
            this.mCurrSpan = fSqrt;
            this.mPrevSpan = fSqrt;
            this.mInitialSpan = fSqrt;
        }
        int i5 = inDoubleTapMode() ? this.mSpanSlop : this.mMinSpan;
        if (!this.mInProgress && fSqrt >= i5 && (z5 || Math.abs(fSqrt - this.mInitialSpan) > this.mSpanSlop)) {
            this.mCurrSpanX = f6;
            this.mPrevSpanX = f6;
            this.mCurrSpanY = f7;
            this.mPrevSpanY = f7;
            this.mCurrSpan = fSqrt;
            this.mPrevSpan = fSqrt;
            this.mPrevTime = this.mCurrTime;
            this.mInProgress = this.mListener.onScaleBegin(this);
        }
        if (actionMasked == 2) {
            this.mCurrSpanX = f6;
            this.mCurrSpanY = f7;
            this.mCurrSpan = fSqrt;
            if (this.mInProgress ? this.mListener.onScale(this) : true) {
                this.mPrevSpanX = this.mCurrSpanX;
                this.mPrevSpanY = this.mCurrSpanY;
                this.mPrevSpan = this.mCurrSpan;
                this.mPrevTime = this.mCurrTime;
            }
        }
        return true;
    }

    public void setQuickScaleEnabled(boolean z2) {
        this.mQuickScaleEnabled = z2;
        if (z2 && this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(this.mContext, new GestureDetector.SimpleOnGestureListener() { // from class: android.view.ScaleGestureDetector.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onDoubleTap(MotionEvent motionEvent) {
                    ScaleGestureDetector.this.mDoubleTapEvent = motionEvent;
                    ScaleGestureDetector.this.mDoubleTapMode = 1;
                    return true;
                }
            }, this.mHandler);
        }
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener, Handler handler) {
        this.mDoubleTapMode = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mContext = context;
        this.mListener = onScaleGestureListener;
        this.mSpanSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        Resources resources = context.getResources();
        this.mTouchMinMajor = resources.getDimensionPixelSize(17104906);
        this.mMinSpan = resources.getDimensionPixelSize(17104905);
        this.mHandler = handler;
        if (context.getApplicationInfo().targetSdkVersion > 18) {
            setQuickScaleEnabled(true);
        }
    }
}
