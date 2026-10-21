package android.animation;

import android.accessibilityservice.c;
import android.os.Looper;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ValueAnimator extends Animator implements AnimationHandler.AnimationFrameCallback {
    private static final boolean DEBUG = false;
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    private static final String TAG = "ValueAnimator";
    private static final TimeInterpolator sDefaultInterpolator = new AccelerateDecelerateInterpolator();
    private static float sDurationScale = 1.0f;
    private long mPauseTime;
    private boolean mReversing;
    boolean mStartTimeCommitted;
    PropertyValuesHolder[] mValues;
    HashMap<String, PropertyValuesHolder> mValuesMap;
    long mStartTime = -1;
    float mSeekFraction = -1.0f;
    private boolean mResumed = false;
    private float mOverallFraction = 0.0f;
    private float mCurrentFraction = 0.0f;
    private long mLastFrameTime = -1;
    private long mFirstFrameTime = -1;
    private boolean mRunning = false;
    private boolean mStarted = false;
    private boolean mStartListenersCalled = false;
    boolean mInitialized = false;
    private boolean mAnimationEndRequested = false;
    private long mDuration = 300;
    private long mStartDelay = 0;
    private int mRepeatCount = 0;
    private int mRepeatMode = 1;
    private boolean mSelfPulse = true;
    private boolean mSuppressSelfPulseRequested = false;
    private TimeInterpolator mInterpolator = sDefaultInterpolator;
    ArrayList<AnimatorUpdateListener> mUpdateListeners = null;

    public interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimator valueAnimator);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    private void addAnimationCallback(long j2) {
        if (this.mSelfPulse) {
            getAnimationHandler().addAnimationFrameCallback(this, j2);
        }
    }

    private void addOneShotCommitCallback() {
        if (this.mSelfPulse) {
            getAnimationHandler().addOneShotCommitCallback(this);
        }
    }

    public static boolean areAnimatorsEnabled() {
        return sDurationScale != 0.0f;
    }

    private float clampFraction(float f2) {
        if (f2 < 0.0f) {
            return 0.0f;
        }
        int i2 = this.mRepeatCount;
        return i2 != -1 ? Math.min(f2, i2 + 1) : f2;
    }

    private void endAnimation() {
        ArrayList<Animator.AnimatorListener> arrayList;
        if (this.mAnimationEndRequested) {
            return;
        }
        removeAnimationCallback();
        this.mAnimationEndRequested = true;
        this.mPaused = false;
        boolean z2 = (this.mStarted || this.mRunning) && this.mListeners != null;
        if (z2 && !this.mRunning) {
            notifyStartListeners();
        }
        this.mRunning = false;
        this.mStarted = false;
        this.mStartListenersCalled = false;
        this.mLastFrameTime = -1L;
        this.mFirstFrameTime = -1L;
        this.mStartTime = -1L;
        if (z2 && (arrayList = this.mListeners) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animator.AnimatorListener) arrayList2.get(i2)).onAnimationEnd(this, this.mReversing);
            }
        }
        this.mReversing = false;
        if (Trace.isTagEnabled(8L)) {
            Trace.asyncTraceEnd(8L, getNameForTrace(), System.identityHashCode(this));
        }
    }

    public static int getCurrentAnimationsCount() {
        return AnimationHandler.getAnimationCount();
    }

    private int getCurrentIteration(float f2) {
        float fClampFraction = clampFraction(f2);
        double d2 = fClampFraction;
        double dFloor = Math.floor(d2);
        if (d2 == dFloor && fClampFraction > 0.0f) {
            dFloor -= 1.0d;
        }
        return (int) dFloor;
    }

    private float getCurrentIterationFraction(float f2, boolean z2) {
        float fClampFraction = clampFraction(f2);
        int currentIteration = getCurrentIteration(fClampFraction);
        float f3 = fClampFraction - currentIteration;
        return shouldPlayBackward(currentIteration, z2) ? 1.0f - f3 : f3;
    }

    public static float getDurationScale() {
        return sDurationScale;
    }

    public static long getFrameDelay() {
        AnimationHandler.getInstance();
        return AnimationHandler.getFrameDelay();
    }

    private long getScaledDuration() {
        return (long) (this.mDuration * sDurationScale);
    }

    private boolean isPulsingInternal() {
        return this.mLastFrameTime >= 0;
    }

    private void notifyStartListeners() {
        ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
        if (arrayList != null && !this.mStartListenersCalled) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animator.AnimatorListener) arrayList2.get(i2)).onAnimationStart(this, this.mReversing);
            }
        }
        this.mStartListenersCalled = true;
    }

    public static ValueAnimator ofArgb(int... iArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iArr);
        valueAnimator.setEvaluator(ArgbEvaluator.getInstance());
        return valueAnimator;
    }

    public static ValueAnimator ofFloat(float... fArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(fArr);
        return valueAnimator;
    }

    public static ValueAnimator ofInt(int... iArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iArr);
        return valueAnimator;
    }

    public static ValueAnimator ofObject(TypeEvaluator typeEvaluator, Object... objArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setObjectValues(objArr);
        valueAnimator.setEvaluator(typeEvaluator);
        return valueAnimator;
    }

    public static ValueAnimator ofPropertyValuesHolder(PropertyValuesHolder... propertyValuesHolderArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setValues(propertyValuesHolderArr);
        return valueAnimator;
    }

    private void removeAnimationCallback() {
        if (this.mSelfPulse) {
            getAnimationHandler().removeCallback(this);
        }
    }

    public static void setDurationScale(float f2) {
        sDurationScale = f2;
    }

    public static void setFrameDelay(long j2) {
        AnimationHandler.getInstance();
        AnimationHandler.setFrameDelay(j2);
    }

    private boolean shouldPlayBackward(int i2, boolean z2) {
        if (i2 > 0 && this.mRepeatMode == 2) {
            int i3 = this.mRepeatCount;
            if (i2 < i3 + 1 || i3 == -1) {
                if (z2) {
                    return i2 % 2 == 0;
                }
                return i2 % 2 != 0;
            }
        }
        return z2;
    }

    private void start(boolean z2) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.mReversing = z2;
        this.mSelfPulse = !this.mSuppressSelfPulseRequested;
        if (z2) {
            float f2 = this.mSeekFraction;
            if (f2 != -1.0f && f2 != 0.0f) {
                int i2 = this.mRepeatCount;
                if (i2 == -1) {
                    this.mSeekFraction = 1.0f - ((float) (((double) f2) - Math.floor(f2)));
                } else {
                    this.mSeekFraction = (i2 + 1) - f2;
                }
            }
        }
        this.mStarted = true;
        this.mPaused = false;
        this.mRunning = false;
        this.mAnimationEndRequested = false;
        this.mLastFrameTime = -1L;
        this.mFirstFrameTime = -1L;
        this.mStartTime = -1L;
        addAnimationCallback(0L);
        if (this.mStartDelay == 0 || this.mSeekFraction >= 0.0f || this.mReversing) {
            startAnimation();
            float f3 = this.mSeekFraction;
            if (f3 == -1.0f) {
                setCurrentPlayTime(0L);
            } else {
                setCurrentFraction(f3);
            }
        }
    }

    private void startAnimation() {
        if (Trace.isTagEnabled(8L)) {
            Trace.asyncTraceBegin(8L, getNameForTrace(), System.identityHashCode(this));
        }
        this.mAnimationEndRequested = false;
        initAnimation();
        this.mRunning = true;
        float f2 = this.mSeekFraction;
        if (f2 >= 0.0f) {
            this.mOverallFraction = f2;
        } else {
            this.mOverallFraction = 0.0f;
        }
        if (this.mListeners != null) {
            notifyStartListeners();
        }
    }

    public void addUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        if (this.mUpdateListeners == null) {
            this.mUpdateListeners = new ArrayList<>();
        }
        this.mUpdateListeners.add(animatorUpdateListener);
    }

    @Override // android.animation.Animator
    public void animateBasedOnPlayTime(long j2, long j3, boolean z2) {
        ArrayList<Animator.AnimatorListener> arrayList;
        if (j2 < 0 || j3 < 0) {
            throw new UnsupportedOperationException("Error: Play time should never be negative.");
        }
        initAnimation();
        int i2 = this.mRepeatCount;
        if (i2 > 0) {
            long j4 = this.mDuration;
            if (Math.min((int) (j2 / j4), i2) != Math.min((int) (j3 / j4), this.mRepeatCount) && (arrayList = this.mListeners) != null) {
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.mListeners.get(i3).onAnimationRepeat(this);
                }
            }
        }
        int i4 = this.mRepeatCount;
        if (i4 == -1 || j2 < ((long) (i4 + 1)) * this.mDuration) {
            animateValue(getCurrentIterationFraction(j2 / this.mDuration, z2));
        } else {
            skipToEndValue(z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    public boolean animateBasedOnTime(long j2) {
        boolean z2 = false;
        if (this.mRunning) {
            long scaledDuration = getScaledDuration();
            float f2 = scaledDuration > 0 ? (j2 - this.mStartTime) / scaledDuration : 1.0f;
            boolean z3 = ((int) f2) > ((int) this.mOverallFraction);
            int i2 = this.mRepeatCount;
            boolean z4 = f2 >= ((float) (i2 + 1)) && i2 != -1;
            if (scaledDuration == 0) {
                z2 = true;
            } else if (z3 && !z4) {
                ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        this.mListeners.get(i3).onAnimationRepeat(this);
                    }
                }
            } else if (z4) {
                z2 = true;
            }
            float fClampFraction = clampFraction(f2);
            this.mOverallFraction = fClampFraction;
            animateValue(getCurrentIterationFraction(fClampFraction, this.mReversing));
        }
        return z2;
    }

    public void animateValue(float f2) {
        float interpolation = this.mInterpolator.getInterpolation(f2);
        this.mCurrentFraction = interpolation;
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].calculateValue(interpolation);
        }
        ArrayList<AnimatorUpdateListener> arrayList = this.mUpdateListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.mUpdateListeners.get(i3).onAnimationUpdate(this);
            }
        }
    }

    @Override // android.animation.Animator
    public boolean canReverse() {
        return true;
    }

    @Override // android.animation.Animator
    public void cancel() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (this.mAnimationEndRequested) {
            return;
        }
        if ((this.mStarted || this.mRunning) && this.mListeners != null) {
            if (!this.mRunning) {
                notifyStartListeners();
            }
            Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
            }
        }
        endAnimation();
    }

    @Override // android.animation.AnimationHandler.AnimationFrameCallback
    public void commitAnimationFrame(long j2) {
        if (this.mStartTimeCommitted) {
            return;
        }
        this.mStartTimeCommitted = true;
        long j3 = j2 - this.mLastFrameTime;
        if (j3 > 0) {
            this.mStartTime += j3;
        }
    }

    @Override // android.animation.AnimationHandler.AnimationFrameCallback
    public final boolean doAnimationFrame(long j2) {
        if (this.mStartTime < 0) {
            this.mStartTime = this.mReversing ? j2 : ((long) (this.mStartDelay * sDurationScale)) + j2;
        }
        if (this.mPaused) {
            this.mPauseTime = j2;
            removeAnimationCallback();
            return false;
        }
        if (this.mResumed) {
            this.mResumed = false;
            long j3 = this.mPauseTime;
            if (j3 > 0) {
                this.mStartTime = (j2 - j3) + this.mStartTime;
            }
        }
        if (!this.mRunning) {
            if (this.mStartTime > j2 && this.mSeekFraction == -1.0f) {
                return false;
            }
            this.mRunning = true;
            startAnimation();
        }
        if (this.mLastFrameTime < 0) {
            if (this.mSeekFraction >= 0.0f) {
                this.mStartTime = j2 - ((long) (getScaledDuration() * this.mSeekFraction));
                this.mSeekFraction = -1.0f;
            }
            this.mStartTimeCommitted = false;
        }
        this.mLastFrameTime = j2;
        boolean zAnimateBasedOnTime = animateBasedOnTime(Math.max(j2, this.mStartTime));
        if (zAnimateBasedOnTime) {
            endAnimation();
        }
        return zAnimateBasedOnTime;
    }

    @Override // android.animation.Animator
    public void end() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (!this.mRunning) {
            startAnimation();
            this.mStarted = true;
        } else if (!this.mInitialized) {
            initAnimation();
        }
        animateValue(shouldPlayBackward(this.mRepeatCount, this.mReversing) ? 0.0f : 1.0f);
        endAnimation();
    }

    public float getAnimatedFraction() {
        return this.mCurrentFraction;
    }

    public Object getAnimatedValue() {
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr == null || propertyValuesHolderArr.length <= 0) {
            return null;
        }
        return propertyValuesHolderArr[0].getAnimatedValue();
    }

    public AnimationHandler getAnimationHandler() {
        return AnimationHandler.getInstance();
    }

    public long getCurrentPlayTime() {
        float fCurrentAnimationTimeMillis;
        if (!this.mInitialized) {
            return 0L;
        }
        if (!this.mStarted && this.mSeekFraction < 0.0f) {
            return 0L;
        }
        float f2 = this.mSeekFraction;
        if (f2 >= 0.0f) {
            fCurrentAnimationTimeMillis = this.mDuration * f2;
        } else {
            float f3 = sDurationScale;
            if (f3 == 0.0f) {
                f3 = 1.0f;
            }
            fCurrentAnimationTimeMillis = (AnimationUtils.currentAnimationTimeMillis() - this.mStartTime) / f3;
        }
        return (long) fCurrentAnimationTimeMillis;
    }

    @Override // android.animation.Animator
    public long getDuration() {
        return this.mDuration;
    }

    @Override // android.animation.Animator
    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public String getNameForTrace() {
        return "animator";
    }

    public int getRepeatCount() {
        return this.mRepeatCount;
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    @Override // android.animation.Animator
    public long getStartDelay() {
        return this.mStartDelay;
    }

    @Override // android.animation.Animator
    public long getTotalDuration() {
        int i2 = this.mRepeatCount;
        if (i2 == -1) {
            return -1L;
        }
        return (this.mDuration * ((long) (i2 + 1))) + this.mStartDelay;
    }

    public PropertyValuesHolder[] getValues() {
        return this.mValues;
    }

    public void initAnimation() {
        if (this.mInitialized) {
            return;
        }
        int length = this.mValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.mValues[i2].init();
        }
        this.mInitialized = true;
    }

    @Override // android.animation.Animator
    public boolean isInitialized() {
        return this.mInitialized;
    }

    @Override // android.animation.Animator
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.animation.Animator
    public boolean isStarted() {
        return this.mStarted;
    }

    @Override // android.animation.Animator
    public void pause() {
        boolean z2 = this.mPaused;
        super.pause();
        if (z2 || !this.mPaused) {
            return;
        }
        this.mPauseTime = -1L;
        this.mResumed = false;
    }

    @Override // android.animation.Animator
    public boolean pulseAnimationFrame(long j2) {
        if (this.mSelfPulse) {
            return false;
        }
        return doAnimationFrame(j2);
    }

    public void removeAllUpdateListeners() {
        ArrayList<AnimatorUpdateListener> arrayList = this.mUpdateListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
        this.mUpdateListeners = null;
    }

    public void removeUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        ArrayList<AnimatorUpdateListener> arrayList = this.mUpdateListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorUpdateListener);
        if (this.mUpdateListeners.size() == 0) {
            this.mUpdateListeners = null;
        }
    }

    @Override // android.animation.Animator
    public void resume() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be resumed from the same thread that the animator was started on");
        }
        if (this.mPaused && !this.mResumed) {
            this.mResumed = true;
            if (this.mPauseTime > 0) {
                addAnimationCallback(0L);
            }
        }
        super.resume();
    }

    @Override // android.animation.Animator
    public void reverse() {
        if (isPulsingInternal()) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = jCurrentAnimationTimeMillis - (getScaledDuration() - (jCurrentAnimationTimeMillis - this.mStartTime));
            this.mStartTimeCommitted = true;
            this.mReversing = !this.mReversing;
            return;
        }
        if (!this.mStarted) {
            start(true);
        } else {
            this.mReversing = !this.mReversing;
            end();
        }
    }

    @Override // android.animation.Animator
    public void setAllowRunningAsynchronously(boolean z2) {
    }

    public void setCurrentFraction(float f2) {
        initAnimation();
        float fClampFraction = clampFraction(f2);
        this.mStartTimeCommitted = true;
        if (isPulsingInternal()) {
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis() - ((long) (getScaledDuration() * fClampFraction));
        } else {
            this.mSeekFraction = fClampFraction;
        }
        this.mOverallFraction = fClampFraction;
        animateValue(getCurrentIterationFraction(fClampFraction, this.mReversing));
    }

    public void setCurrentPlayTime(long j2) {
        long j3 = this.mDuration;
        setCurrentFraction(j3 > 0 ? j2 / j3 : 1.0f);
    }

    public void setEvaluator(TypeEvaluator typeEvaluator) {
        PropertyValuesHolder[] propertyValuesHolderArr;
        if (typeEvaluator == null || (propertyValuesHolderArr = this.mValues) == null || propertyValuesHolderArr.length <= 0) {
            return;
        }
        propertyValuesHolderArr[0].setEvaluator(typeEvaluator);
    }

    public void setFloatValues(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr == null || propertyValuesHolderArr.length == 0) {
            setValues(PropertyValuesHolder.ofFloat("", fArr));
        } else {
            propertyValuesHolderArr[0].setFloatValues(fArr);
        }
        this.mInitialized = false;
    }

    public void setIntValues(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr == null || propertyValuesHolderArr.length == 0) {
            setValues(PropertyValuesHolder.ofInt("", iArr));
        } else {
            propertyValuesHolderArr[0].setIntValues(iArr);
        }
        this.mInitialized = false;
    }

    @Override // android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            this.mInterpolator = timeInterpolator;
        } else {
            this.mInterpolator = new LinearInterpolator();
        }
    }

    public void setObjectValues(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr == null || propertyValuesHolderArr.length == 0) {
            setValues(PropertyValuesHolder.ofObject("", (TypeEvaluator) null, objArr));
        } else {
            propertyValuesHolderArr[0].setObjectValues(objArr);
        }
        this.mInitialized = false;
    }

    public void setRepeatCount(int i2) {
        this.mRepeatCount = i2;
    }

    public void setRepeatMode(int i2) {
        this.mRepeatMode = i2;
    }

    @Override // android.animation.Animator
    public void setStartDelay(long j2) {
        if (j2 < 0) {
            Log.w(TAG, "Start delay should always be non-negative");
            j2 = 0;
        }
        this.mStartDelay = j2;
    }

    public void setValues(PropertyValuesHolder... propertyValuesHolderArr) {
        int length = propertyValuesHolderArr.length;
        this.mValues = propertyValuesHolderArr;
        this.mValuesMap = new HashMap<>(length);
        for (PropertyValuesHolder propertyValuesHolder : propertyValuesHolderArr) {
            this.mValuesMap.put(propertyValuesHolder.getPropertyName(), propertyValuesHolder);
        }
        this.mInitialized = false;
    }

    @Override // android.animation.Animator
    public void skipToEndValue(boolean z2) {
        initAnimation();
        animateValue((this.mRepeatCount % 2 == 1 && this.mRepeatMode == 2) ? 0.0f : z2 ? 0.0f : 1.0f);
    }

    @Override // android.animation.Animator
    public void startWithoutPulsing(boolean z2) {
        this.mSuppressSelfPulseRequested = true;
        if (z2) {
            reverse();
        } else {
            start();
        }
        this.mSuppressSelfPulseRequested = false;
    }

    public String toString() {
        String string = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.mValues != null) {
            for (int i2 = 0; i2 < this.mValues.length; i2++) {
                StringBuilder sbU = c.u(string, "\n    ");
                sbU.append(this.mValues[i2].toString());
                string = sbU.toString();
            }
        }
        return string;
    }

    @Override // android.animation.Animator
    public ValueAnimator setDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException(c.f("Animators cannot have negative duration: ", j2));
        }
        this.mDuration = j2;
        return this;
    }

    @Override // android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public ValueAnimator mo0clone() {
        ValueAnimator valueAnimator = (ValueAnimator) super.mo0clone();
        if (this.mUpdateListeners != null) {
            valueAnimator.mUpdateListeners = new ArrayList<>(this.mUpdateListeners);
        }
        valueAnimator.mSeekFraction = -1.0f;
        valueAnimator.mReversing = false;
        valueAnimator.mInitialized = false;
        valueAnimator.mStarted = false;
        valueAnimator.mRunning = false;
        valueAnimator.mPaused = false;
        valueAnimator.mResumed = false;
        valueAnimator.mStartListenersCalled = false;
        valueAnimator.mStartTime = -1L;
        valueAnimator.mStartTimeCommitted = false;
        valueAnimator.mAnimationEndRequested = false;
        valueAnimator.mPauseTime = -1L;
        valueAnimator.mLastFrameTime = -1L;
        valueAnimator.mFirstFrameTime = -1L;
        valueAnimator.mOverallFraction = 0.0f;
        valueAnimator.mCurrentFraction = 0.0f;
        valueAnimator.mSelfPulse = true;
        valueAnimator.mSuppressSelfPulseRequested = false;
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            int length = propertyValuesHolderArr.length;
            valueAnimator.mValues = new PropertyValuesHolder[length];
            valueAnimator.mValuesMap = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                PropertyValuesHolder propertyValuesHolderMo6clone = propertyValuesHolderArr[i2].mo6clone();
                valueAnimator.mValues[i2] = propertyValuesHolderMo6clone;
                valueAnimator.mValuesMap.put(propertyValuesHolderMo6clone.getPropertyName(), propertyValuesHolderMo6clone);
            }
        }
        return valueAnimator;
    }

    public Object getAnimatedValue(String str) {
        PropertyValuesHolder propertyValuesHolder = this.mValuesMap.get(str);
        if (propertyValuesHolder != null) {
            return propertyValuesHolder.getAnimatedValue();
        }
        return null;
    }

    @Override // android.animation.Animator
    public void start() {
        start(false);
    }
}
