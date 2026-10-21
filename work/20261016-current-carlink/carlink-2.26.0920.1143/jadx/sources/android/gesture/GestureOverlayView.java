package android.gesture;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class GestureOverlayView extends FrameLayout {
    private static final boolean DITHER_FLAG = true;
    private static final int FADE_ANIMATION_RATE = 16;
    private static final boolean GESTURE_RENDERING_ANTIALIAS = true;
    public static final int GESTURE_STROKE_TYPE_MULTIPLE = 1;
    public static final int GESTURE_STROKE_TYPE_SINGLE = 0;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    private int mCertainGestureColor;
    private int mCurrentColor;
    private Gesture mCurrentGesture;
    private float mCurveEndX;
    private float mCurveEndY;
    private long mFadeDuration;
    private boolean mFadeEnabled;
    private long mFadeOffset;
    private float mFadingAlpha;
    private boolean mFadingHasStarted;
    private final FadeOutRunnable mFadingOut;
    private long mFadingStart;
    private final Paint mGesturePaint;
    private float mGestureStrokeAngleThreshold;
    private float mGestureStrokeLengthThreshold;
    private float mGestureStrokeSquarenessTreshold;
    private int mGestureStrokeType;
    private float mGestureStrokeWidth;
    private boolean mGestureVisible;
    private boolean mHandleGestureActions;
    private boolean mInterceptEvents;
    private final AccelerateDecelerateInterpolator mInterpolator;
    private final Rect mInvalidRect;
    private int mInvalidateExtraBorder;
    private boolean mIsFadingOut;
    private boolean mIsGesturing;
    private boolean mIsListeningForGestures;
    private final ArrayList<OnGestureListener> mOnGestureListeners;
    private final ArrayList<OnGesturePerformedListener> mOnGesturePerformedListeners;
    private final ArrayList<OnGesturingListener> mOnGesturingListeners;
    private int mOrientation;
    private final Path mPath;
    private boolean mPreviousWasGesturing;
    private boolean mResetGesture;
    private final ArrayList<GesturePoint> mStrokeBuffer;
    private float mTotalLength;
    private int mUncertainGestureColor;
    private float mX;
    private float mY;

    public class FadeOutRunnable implements Runnable {
        boolean fireActionPerformed;
        boolean resetMultipleStrokes;

        private FadeOutRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GestureOverlayView.this.mIsFadingOut) {
                long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - GestureOverlayView.this.mFadingStart;
                if (jCurrentAnimationTimeMillis > GestureOverlayView.this.mFadeDuration) {
                    if (this.fireActionPerformed) {
                        GestureOverlayView.this.fireOnGesturePerformed();
                    }
                    GestureOverlayView.this.mPreviousWasGesturing = false;
                    GestureOverlayView.this.mIsFadingOut = false;
                    GestureOverlayView.this.mFadingHasStarted = false;
                    GestureOverlayView.this.mPath.rewind();
                    GestureOverlayView.this.mCurrentGesture = null;
                    GestureOverlayView.this.setPaintAlpha(255);
                } else {
                    GestureOverlayView.this.mFadingHasStarted = true;
                    float fMax = Math.max(0.0f, Math.min(1.0f, jCurrentAnimationTimeMillis / GestureOverlayView.this.mFadeDuration));
                    GestureOverlayView gestureOverlayView = GestureOverlayView.this;
                    gestureOverlayView.mFadingAlpha = 1.0f - gestureOverlayView.mInterpolator.getInterpolation(fMax);
                    GestureOverlayView gestureOverlayView2 = GestureOverlayView.this;
                    gestureOverlayView2.setPaintAlpha((int) (gestureOverlayView2.mFadingAlpha * 255.0f));
                    GestureOverlayView.this.postDelayed(this, 16L);
                }
            } else if (this.resetMultipleStrokes) {
                GestureOverlayView.this.mResetGesture = true;
            } else {
                GestureOverlayView.this.fireOnGesturePerformed();
                GestureOverlayView.this.mFadingHasStarted = false;
                GestureOverlayView.this.mPath.rewind();
                GestureOverlayView.this.mCurrentGesture = null;
                GestureOverlayView.this.mPreviousWasGesturing = false;
                GestureOverlayView.this.setPaintAlpha(255);
            }
            GestureOverlayView.this.invalidate();
        }
    }

    public interface OnGestureListener {
        void onGesture(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGestureCancelled(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGestureEnded(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGestureStarted(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);
    }

    public interface OnGesturePerformedListener {
        void onGesturePerformed(GestureOverlayView gestureOverlayView, Gesture gesture);
    }

    public interface OnGesturingListener {
        void onGesturingEnded(GestureOverlayView gestureOverlayView);

        void onGesturingStarted(GestureOverlayView gestureOverlayView);
    }

    public GestureOverlayView(Context context) {
        super(context);
        this.mGesturePaint = new Paint();
        this.mFadeDuration = 150L;
        this.mFadeOffset = 420L;
        this.mFadeEnabled = true;
        this.mCertainGestureColor = -256;
        this.mUncertainGestureColor = 1224736512;
        this.mGestureStrokeWidth = 12.0f;
        this.mInvalidateExtraBorder = 10;
        this.mGestureStrokeType = 0;
        this.mGestureStrokeLengthThreshold = 50.0f;
        this.mGestureStrokeSquarenessTreshold = 0.275f;
        this.mGestureStrokeAngleThreshold = 40.0f;
        this.mOrientation = 1;
        this.mInvalidRect = new Rect();
        this.mPath = new Path();
        this.mGestureVisible = true;
        this.mIsGesturing = false;
        this.mPreviousWasGesturing = false;
        this.mInterceptEvents = true;
        this.mStrokeBuffer = new ArrayList<>(100);
        this.mOnGestureListeners = new ArrayList<>();
        this.mOnGesturePerformedListeners = new ArrayList<>();
        this.mOnGesturingListeners = new ArrayList<>();
        this.mIsFadingOut = false;
        this.mFadingAlpha = 1.0f;
        this.mInterpolator = new AccelerateDecelerateInterpolator();
        this.mFadingOut = new FadeOutRunnable();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOnGesturePerformed() {
        ArrayList<OnGesturePerformedListener> arrayList = this.mOnGesturePerformedListeners;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).onGesturePerformed(this, this.mCurrentGesture);
        }
    }

    private void init() {
        setWillNotDraw(false);
        Paint paint = this.mGesturePaint;
        paint.setAntiAlias(true);
        paint.setColor(this.mCertainGestureColor);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(this.mGestureStrokeWidth);
        paint.setDither(true);
        this.mCurrentColor = this.mCertainGestureColor;
        setPaintAlpha(255);
    }

    private boolean processEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            touchDown(motionEvent);
            invalidate();
            return true;
        }
        if (action != 1) {
            if (action != 2) {
                if (action == 3 && this.mIsListeningForGestures) {
                    touchUp(motionEvent, true);
                    invalidate();
                    return true;
                }
            } else if (this.mIsListeningForGestures) {
                Rect rect = touchMove(motionEvent);
                if (rect != null) {
                    invalidate(rect);
                }
                return true;
            }
        } else if (this.mIsListeningForGestures) {
            touchUp(motionEvent, false);
            invalidate();
            return true;
        }
        return false;
    }

    private void setCurrentColor(int i2) {
        this.mCurrentColor = i2;
        if (this.mFadingHasStarted) {
            setPaintAlpha((int) (this.mFadingAlpha * 255.0f));
        } else {
            setPaintAlpha(255);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPaintAlpha(int i2) {
        int i3 = this.mCurrentColor;
        this.mGesturePaint.setColor(((((i3 >>> 24) * (i2 + (i2 >> 7))) >> 8) << 24) | ((i3 << 8) >>> 8));
    }

    private void touchDown(MotionEvent motionEvent) {
        this.mIsListeningForGestures = true;
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        this.mX = x2;
        this.mY = y2;
        this.mTotalLength = 0.0f;
        this.mIsGesturing = false;
        if (this.mGestureStrokeType == 0 || this.mResetGesture) {
            if (this.mHandleGestureActions) {
                setCurrentColor(this.mUncertainGestureColor);
            }
            this.mResetGesture = false;
            this.mCurrentGesture = null;
            this.mPath.rewind();
        } else {
            Gesture gesture = this.mCurrentGesture;
            if ((gesture == null || gesture.getStrokesCount() == 0) && this.mHandleGestureActions) {
                setCurrentColor(this.mUncertainGestureColor);
            }
        }
        if (this.mFadingHasStarted) {
            cancelClearAnimation();
        } else if (this.mIsFadingOut) {
            setPaintAlpha(255);
            this.mIsFadingOut = false;
            this.mFadingHasStarted = false;
            removeCallbacks(this.mFadingOut);
        }
        if (this.mCurrentGesture == null) {
            this.mCurrentGesture = new Gesture();
        }
        this.mStrokeBuffer.add(new GesturePoint(x2, y2, motionEvent.getEventTime()));
        this.mPath.moveTo(x2, y2);
        int i2 = this.mInvalidateExtraBorder;
        int i3 = (int) x2;
        int i4 = (int) y2;
        this.mInvalidRect.set(i3 - i2, i4 - i2, i3 + i2, i4 + i2);
        this.mCurveEndX = x2;
        this.mCurveEndY = y2;
        ArrayList<OnGestureListener> arrayList = this.mOnGestureListeners;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            arrayList.get(i5).onGestureStarted(this, motionEvent);
        }
    }

    private Rect touchMove(MotionEvent motionEvent) {
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        float f2 = this.mX;
        float f3 = this.mY;
        float fAbs = Math.abs(x2 - f2);
        float fAbs2 = Math.abs(y2 - f3);
        if (fAbs < 3.0f && fAbs2 < 3.0f) {
            return null;
        }
        Rect rect = this.mInvalidRect;
        int i2 = this.mInvalidateExtraBorder;
        float f4 = this.mCurveEndX;
        float f5 = this.mCurveEndY;
        rect.set(((int) f4) - i2, ((int) f5) - i2, ((int) f4) + i2, ((int) f5) + i2);
        float f6 = (x2 + f2) / 2.0f;
        this.mCurveEndX = f6;
        float f7 = (y2 + f3) / 2.0f;
        this.mCurveEndY = f7;
        this.mPath.quadTo(f2, f3, f6, f7);
        int i3 = (int) f2;
        int i4 = (int) f3;
        rect.union(i3 - i2, i4 - i2, i3 + i2, i4 + i2);
        int i5 = (int) f6;
        int i6 = (int) f7;
        rect.union(i5 - i2, i6 - i2, i5 + i2, i6 + i2);
        this.mX = x2;
        this.mY = y2;
        this.mStrokeBuffer.add(new GesturePoint(x2, y2, motionEvent.getEventTime()));
        if (this.mHandleGestureActions && !this.mIsGesturing) {
            float fHypot = this.mTotalLength + ((float) Math.hypot(fAbs, fAbs2));
            this.mTotalLength = fHypot;
            if (fHypot > this.mGestureStrokeLengthThreshold) {
                OrientedBoundingBox orientedBoundingBoxComputeOrientedBoundingBox = GestureUtils.computeOrientedBoundingBox(this.mStrokeBuffer);
                float fAbs3 = Math.abs(orientedBoundingBoxComputeOrientedBoundingBox.orientation);
                if (fAbs3 > 90.0f) {
                    fAbs3 = 180.0f - fAbs3;
                }
                if (orientedBoundingBoxComputeOrientedBoundingBox.squareness > this.mGestureStrokeSquarenessTreshold || (this.mOrientation != 1 ? fAbs3 > this.mGestureStrokeAngleThreshold : fAbs3 < this.mGestureStrokeAngleThreshold)) {
                    this.mIsGesturing = true;
                    setCurrentColor(this.mCertainGestureColor);
                    ArrayList<OnGesturingListener> arrayList = this.mOnGesturingListeners;
                    int size = arrayList.size();
                    for (int i7 = 0; i7 < size; i7++) {
                        arrayList.get(i7).onGesturingStarted(this);
                    }
                }
            }
        }
        ArrayList<OnGestureListener> arrayList2 = this.mOnGestureListeners;
        int size2 = arrayList2.size();
        for (int i8 = 0; i8 < size2; i8++) {
            arrayList2.get(i8).onGesture(this, motionEvent);
        }
        return rect;
    }

    private void touchUp(MotionEvent motionEvent, boolean z2) {
        this.mIsListeningForGestures = false;
        Gesture gesture = this.mCurrentGesture;
        if (gesture != null) {
            gesture.addStroke(new GestureStroke(this.mStrokeBuffer));
            if (z2) {
                cancelGesture(motionEvent);
            } else {
                ArrayList<OnGestureListener> arrayList = this.mOnGestureListeners;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.get(i2).onGestureEnded(this, motionEvent);
                }
                boolean z3 = this.mHandleGestureActions;
                clear(z3 && this.mFadeEnabled, z3 && this.mIsGesturing, false);
            }
        } else {
            cancelGesture(motionEvent);
        }
        this.mStrokeBuffer.clear();
        this.mPreviousWasGesturing = this.mIsGesturing;
        this.mIsGesturing = false;
        ArrayList<OnGesturingListener> arrayList2 = this.mOnGesturingListeners;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            arrayList2.get(i3).onGesturingEnded(this);
        }
    }

    public void addOnGestureListener(OnGestureListener onGestureListener) {
        this.mOnGestureListeners.add(onGestureListener);
    }

    public void addOnGesturePerformedListener(OnGesturePerformedListener onGesturePerformedListener) {
        this.mOnGesturePerformedListeners.add(onGesturePerformedListener);
        if (this.mOnGesturePerformedListeners.size() > 0) {
            this.mHandleGestureActions = true;
        }
    }

    public void addOnGesturingListener(OnGesturingListener onGesturingListener) {
        this.mOnGesturingListeners.add(onGesturingListener);
    }

    public void cancelClearAnimation() {
        setPaintAlpha(255);
        this.mIsFadingOut = false;
        this.mFadingHasStarted = false;
        removeCallbacks(this.mFadingOut);
        this.mPath.rewind();
        this.mCurrentGesture = null;
    }

    public void cancelGesture() {
        this.mIsListeningForGestures = false;
        this.mCurrentGesture.addStroke(new GestureStroke(this.mStrokeBuffer));
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        ArrayList<OnGestureListener> arrayList = this.mOnGestureListeners;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).onGestureCancelled(this, motionEventObtain);
        }
        motionEventObtain.recycle();
        clear(false);
        this.mIsGesturing = false;
        this.mPreviousWasGesturing = false;
        this.mStrokeBuffer.clear();
        ArrayList<OnGesturingListener> arrayList2 = this.mOnGesturingListeners;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            arrayList2.get(i3).onGesturingEnded(this);
        }
    }

    public void clear(boolean z2) {
        clear(z2, false, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Gesture gesture;
        if (!isEnabled()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        boolean z2 = (this.mIsGesturing || ((gesture = this.mCurrentGesture) != null && gesture.getStrokesCount() > 0 && this.mPreviousWasGesturing)) && this.mInterceptEvents;
        processEvent(motionEvent);
        if (z2) {
            motionEvent.setAction(3);
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mCurrentGesture == null || !this.mGestureVisible) {
            return;
        }
        canvas.drawPath(this.mPath, this.mGesturePaint);
    }

    public ArrayList<GesturePoint> getCurrentStroke() {
        return this.mStrokeBuffer;
    }

    public long getFadeOffset() {
        return this.mFadeOffset;
    }

    public Gesture getGesture() {
        return this.mCurrentGesture;
    }

    public int getGestureColor() {
        return this.mCertainGestureColor;
    }

    public Paint getGesturePaint() {
        return this.mGesturePaint;
    }

    public Path getGesturePath() {
        return this.mPath;
    }

    public float getGestureStrokeAngleThreshold() {
        return this.mGestureStrokeAngleThreshold;
    }

    public float getGestureStrokeLengthThreshold() {
        return this.mGestureStrokeLengthThreshold;
    }

    public float getGestureStrokeSquarenessTreshold() {
        return this.mGestureStrokeSquarenessTreshold;
    }

    public int getGestureStrokeType() {
        return this.mGestureStrokeType;
    }

    public float getGestureStrokeWidth() {
        return this.mGestureStrokeWidth;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getUncertainGestureColor() {
        return this.mUncertainGestureColor;
    }

    public boolean isEventsInterceptionEnabled() {
        return this.mInterceptEvents;
    }

    public boolean isFadeEnabled() {
        return this.mFadeEnabled;
    }

    public boolean isGestureVisible() {
        return this.mGestureVisible;
    }

    public boolean isGesturing() {
        return this.mIsGesturing;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelClearAnimation();
    }

    public void removeAllOnGestureListeners() {
        this.mOnGestureListeners.clear();
    }

    public void removeAllOnGesturePerformedListeners() {
        this.mOnGesturePerformedListeners.clear();
        this.mHandleGestureActions = false;
    }

    public void removeAllOnGesturingListeners() {
        this.mOnGesturingListeners.clear();
    }

    public void removeOnGestureListener(OnGestureListener onGestureListener) {
        this.mOnGestureListeners.remove(onGestureListener);
    }

    public void removeOnGesturePerformedListener(OnGesturePerformedListener onGesturePerformedListener) {
        this.mOnGesturePerformedListeners.remove(onGesturePerformedListener);
        if (this.mOnGesturePerformedListeners.size() <= 0) {
            this.mHandleGestureActions = false;
        }
    }

    public void removeOnGesturingListener(OnGesturingListener onGesturingListener) {
        this.mOnGesturingListeners.remove(onGesturingListener);
    }

    public void setEventsInterceptionEnabled(boolean z2) {
        this.mInterceptEvents = z2;
    }

    public void setFadeEnabled(boolean z2) {
        this.mFadeEnabled = z2;
    }

    public void setFadeOffset(long j2) {
        this.mFadeOffset = j2;
    }

    public void setGesture(Gesture gesture) {
        if (this.mCurrentGesture != null) {
            clear(false);
        }
        setCurrentColor(this.mCertainGestureColor);
        this.mCurrentGesture = gesture;
        Path path = gesture.toPath();
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.mPath.rewind();
        this.mPath.addPath(path, ((getWidth() - rectF.width()) / 2.0f) + (-rectF.left), ((getHeight() - rectF.height()) / 2.0f) + (-rectF.top));
        this.mResetGesture = true;
        invalidate();
    }

    public void setGestureColor(int i2) {
        this.mCertainGestureColor = i2;
    }

    public void setGestureStrokeAngleThreshold(float f2) {
        this.mGestureStrokeAngleThreshold = f2;
    }

    public void setGestureStrokeLengthThreshold(float f2) {
        this.mGestureStrokeLengthThreshold = f2;
    }

    public void setGestureStrokeSquarenessTreshold(float f2) {
        this.mGestureStrokeSquarenessTreshold = f2;
    }

    public void setGestureStrokeType(int i2) {
        this.mGestureStrokeType = i2;
    }

    public void setGestureStrokeWidth(float f2) {
        this.mGestureStrokeWidth = f2;
        this.mInvalidateExtraBorder = Math.max(1, ((int) f2) - 1);
        this.mGesturePaint.setStrokeWidth(f2);
    }

    public void setGestureVisible(boolean z2) {
        this.mGestureVisible = z2;
    }

    public void setOrientation(int i2) {
        this.mOrientation = i2;
    }

    public void setUncertainGestureColor(int i2) {
        this.mUncertainGestureColor = i2;
    }

    private void clear(boolean z2, boolean z3, boolean z4) {
        setPaintAlpha(255);
        removeCallbacks(this.mFadingOut);
        this.mResetGesture = false;
        FadeOutRunnable fadeOutRunnable = this.mFadingOut;
        fadeOutRunnable.fireActionPerformed = z3;
        fadeOutRunnable.resetMultipleStrokes = false;
        if (z2 && this.mCurrentGesture != null) {
            this.mFadingAlpha = 1.0f;
            this.mIsFadingOut = true;
            this.mFadingHasStarted = false;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j2 = this.mFadeOffset;
            this.mFadingStart = jCurrentAnimationTimeMillis + j2;
            postDelayed(this.mFadingOut, j2);
            return;
        }
        this.mFadingAlpha = 1.0f;
        this.mIsFadingOut = false;
        this.mFadingHasStarted = false;
        if (z4) {
            this.mCurrentGesture = null;
            this.mPath.rewind();
            invalidate();
        } else {
            if (z3) {
                postDelayed(fadeOutRunnable, this.mFadeOffset);
                return;
            }
            if (this.mGestureStrokeType == 1) {
                fadeOutRunnable.resetMultipleStrokes = true;
                postDelayed(fadeOutRunnable, this.mFadeOffset);
            } else {
                this.mCurrentGesture = null;
                this.mPath.rewind();
                invalidate();
            }
        }
    }

    public Path getGesturePath(Path path) {
        path.set(this.mPath);
        return path;
    }

    private void cancelGesture(MotionEvent motionEvent) {
        ArrayList<OnGestureListener> arrayList = this.mOnGestureListeners;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).onGestureCancelled(this, motionEvent);
        }
        clear(false);
    }

    public GestureOverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.gestureOverlayViewStyle);
    }

    public GestureOverlayView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public GestureOverlayView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mGesturePaint = new Paint();
        this.mFadeDuration = 150L;
        this.mFadeOffset = 420L;
        this.mFadeEnabled = true;
        this.mCertainGestureColor = -256;
        this.mUncertainGestureColor = 1224736512;
        this.mGestureStrokeWidth = 12.0f;
        this.mInvalidateExtraBorder = 10;
        this.mGestureStrokeType = 0;
        this.mGestureStrokeLengthThreshold = 50.0f;
        this.mGestureStrokeSquarenessTreshold = 0.275f;
        this.mGestureStrokeAngleThreshold = 40.0f;
        this.mOrientation = 1;
        this.mInvalidRect = new Rect();
        this.mPath = new Path();
        this.mGestureVisible = true;
        this.mIsGesturing = false;
        this.mPreviousWasGesturing = false;
        this.mInterceptEvents = true;
        this.mStrokeBuffer = new ArrayList<>(100);
        this.mOnGestureListeners = new ArrayList<>();
        this.mOnGesturePerformedListeners = new ArrayList<>();
        this.mOnGesturingListeners = new ArrayList<>();
        this.mIsFadingOut = false;
        this.mFadingAlpha = 1.0f;
        this.mInterpolator = new AccelerateDecelerateInterpolator();
        this.mFadingOut = new FadeOutRunnable();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GestureOverlayView, i2, i3);
        float f2 = typedArrayObtainStyledAttributes.getFloat(1, this.mGestureStrokeWidth);
        this.mGestureStrokeWidth = f2;
        this.mInvalidateExtraBorder = Math.max(1, ((int) f2) - 1);
        this.mCertainGestureColor = typedArrayObtainStyledAttributes.getColor(2, this.mCertainGestureColor);
        this.mUncertainGestureColor = typedArrayObtainStyledAttributes.getColor(3, this.mUncertainGestureColor);
        this.mFadeDuration = typedArrayObtainStyledAttributes.getInt(5, (int) this.mFadeDuration);
        this.mFadeOffset = typedArrayObtainStyledAttributes.getInt(4, (int) this.mFadeOffset);
        this.mGestureStrokeType = typedArrayObtainStyledAttributes.getInt(6, this.mGestureStrokeType);
        this.mGestureStrokeLengthThreshold = typedArrayObtainStyledAttributes.getFloat(7, this.mGestureStrokeLengthThreshold);
        this.mGestureStrokeAngleThreshold = typedArrayObtainStyledAttributes.getFloat(9, this.mGestureStrokeAngleThreshold);
        this.mGestureStrokeSquarenessTreshold = typedArrayObtainStyledAttributes.getFloat(8, this.mGestureStrokeSquarenessTreshold);
        this.mInterceptEvents = typedArrayObtainStyledAttributes.getBoolean(10, this.mInterceptEvents);
        this.mFadeEnabled = typedArrayObtainStyledAttributes.getBoolean(11, this.mFadeEnabled);
        this.mOrientation = typedArrayObtainStyledAttributes.getInt(0, this.mOrientation);
        typedArrayObtainStyledAttributes.recycle();
        init();
    }
}
