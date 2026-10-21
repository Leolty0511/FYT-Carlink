package android.view;

import android.content.Context;
import android.os.Handler;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScaleGestureDetector {
    private static final int ANCHORED_SCALE_MODE_DOUBLE_TAP = 1;
    private static final int ANCHORED_SCALE_MODE_NONE = 0;
    private static final int ANCHORED_SCALE_MODE_STYLUS = 2;
    private static final float SCALE_FACTOR = 0.5f;
    private static final String TAG = "ScaleGestureDetector";
    private static final long TOUCH_STABILIZE_TIME = 128;
    private int mAnchoredScaleMode;
    private float mAnchoredScaleStartX;
    private float mAnchoredScaleStartY;
    private final Context mContext;
    private float mCurrSpan;
    private float mCurrSpanX;
    private float mCurrSpanY;
    private long mCurrTime;
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
    private boolean mStylusScaleEnabled;

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

    private boolean inAnchoredScaleMode() {
        return this.mAnchoredScaleMode != 0;
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
        if (!inAnchoredScaleMode()) {
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

    public boolean isStylusScaleEnabled() {
        return this.mStylusScaleEnabled;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onTouchEvent(motionEvent, 0);
        }
        this.mCurrTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.mQuickScaleEnabled) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z2 = (motionEvent.getButtonState() & 32) != 0;
        boolean z3 = this.mAnchoredScaleMode == 2 && !z2;
        boolean z4 = actionMasked == 1 || actionMasked == 3 || z3;
        float f4 = 0.0f;
        if (actionMasked == 0 || z4) {
            if (this.mInProgress) {
                this.mListener.onScaleEnd(this);
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mAnchoredScaleMode = 0;
            } else if (inAnchoredScaleMode() && z4) {
                this.mInProgress = false;
                this.mInitialSpan = 0.0f;
                this.mAnchoredScaleMode = 0;
            }
            if (z4) {
                return true;
            }
        }
        if (!this.mInProgress && this.mStylusScaleEnabled && !inAnchoredScaleMode() && !z4 && z2) {
            this.mAnchoredScaleStartX = motionEvent.getX();
            this.mAnchoredScaleStartY = motionEvent.getY();
            this.mAnchoredScaleMode = 2;
            this.mInitialSpan = 0.0f;
        }
        boolean z5 = actionMasked == 0 || actionMasked == 6 || actionMasked == 5 || z3;
        boolean z6 = actionMasked == 6;
        int actionIndex = z6 ? motionEvent.getActionIndex() : -1;
        int i2 = z6 ? pointerCount - 1 : pointerCount;
        if (inAnchoredScaleMode()) {
            f3 = this.mAnchoredScaleStartX;
            f2 = this.mAnchoredScaleStartY;
            if (motionEvent.getY() < f2) {
                this.mEventBeforeOrAboveStartingGestureEvent = true;
            } else {
                this.mEventBeforeOrAboveStartingGestureEvent = false;
            }
        } else {
            float x2 = 0.0f;
            float y2 = 0.0f;
            for (int i3 = 0; i3 < pointerCount; i3++) {
                if (actionIndex != i3) {
                    x2 += motionEvent.getX(i3);
                    y2 += motionEvent.getY(i3);
                }
            }
            float f5 = i2;
            float f6 = x2 / f5;
            f2 = y2 / f5;
            f3 = f6;
        }
        float fAbs = 0.0f;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            if (actionIndex != i4) {
                float fAbs2 = Math.abs(motionEvent.getX(i4) - f3) + f4;
                fAbs = Math.abs(motionEvent.getY(i4) - f2) + fAbs;
                f4 = fAbs2;
            }
        }
        float f7 = i2;
        float f8 = (f4 / f7) * 2.0f;
        float f9 = (fAbs / f7) * 2.0f;
        float fHypot = inAnchoredScaleMode() ? f9 : (float) Math.hypot(f8, f9);
        boolean z7 = this.mInProgress;
        this.mFocusX = f3;
        this.mFocusY = f2;
        if (!inAnchoredScaleMode() && this.mInProgress && (fHypot < this.mMinSpan || z5)) {
            this.mListener.onScaleEnd(this);
            this.mInProgress = false;
            this.mInitialSpan = fHypot;
        }
        if (z5) {
            this.mCurrSpanX = f8;
            this.mPrevSpanX = f8;
            this.mCurrSpanY = f9;
            this.mPrevSpanY = f9;
            this.mCurrSpan = fHypot;
            this.mPrevSpan = fHypot;
            this.mInitialSpan = fHypot;
        }
        int i5 = inAnchoredScaleMode() ? this.mSpanSlop : this.mMinSpan;
        if (!this.mInProgress && fHypot >= i5 && (z7 || Math.abs(fHypot - this.mInitialSpan) > this.mSpanSlop)) {
            this.mCurrSpanX = f8;
            this.mPrevSpanX = f8;
            this.mCurrSpanY = f9;
            this.mPrevSpanY = f9;
            this.mCurrSpan = fHypot;
            this.mPrevSpan = fHypot;
            this.mPrevTime = this.mCurrTime;
            this.mInProgress = this.mListener.onScaleBegin(this);
        }
        if (actionMasked == 2) {
            this.mCurrSpanX = f8;
            this.mCurrSpanY = f9;
            this.mCurrSpan = fHypot;
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
                    ScaleGestureDetector.this.mAnchoredScaleStartX = motionEvent.getX();
                    ScaleGestureDetector.this.mAnchoredScaleStartY = motionEvent.getY();
                    ScaleGestureDetector.this.mAnchoredScaleMode = 1;
                    return true;
                }
            }, this.mHandler);
        }
    }

    public void setStylusScaleEnabled(boolean z2) {
        this.mStylusScaleEnabled = z2;
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener, Handler handler) {
        this.mAnchoredScaleMode = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mContext = context;
        this.mListener = onScaleGestureListener;
        this.mSpanSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        this.mMinSpan = context.getResources().getDimensionPixelSize(R.dimen.config_minScalingSpan);
        this.mHandler = handler;
        int i2 = context.getApplicationInfo().targetSdkVersion;
        if (i2 > 18) {
            setQuickScaleEnabled(true);
        }
        if (i2 > 22) {
            setStylusScaleEnabled(true);
        }
    }
}
