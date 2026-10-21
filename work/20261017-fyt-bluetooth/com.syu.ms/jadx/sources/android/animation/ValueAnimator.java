package android.animation;

import android.net.ProxyProperties;
import android.os.Looper;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ValueAnimator extends Animator {
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    public static final int RUNNING = 1;
    public static final int SEEKED = 2;
    public static final int STOPPED = 0;
    public static ThreadLocal<AnimationHandler> sAnimationHandler = new ThreadLocal<>();
    private static final TimeInterpolator sDefaultInterpolator = new AccelerateDecelerateInterpolator();
    private static float sDurationScale = 1.0f;
    private long mDelayStartTime;
    private long mPauseTime;
    public long mStartTime;
    public PropertyValuesHolder[] mValues;
    public HashMap<String, PropertyValuesHolder> mValuesMap;
    public long mSeekTime = -1;
    private boolean mResumed = false;
    private boolean mPlayingBackwards = false;
    private int mCurrentIteration = 0;
    private float mCurrentFraction = 0.0f;
    private boolean mStartedDelay = false;
    public int mPlayingState = 0;
    private boolean mRunning = false;
    private boolean mStarted = false;
    private boolean mStartListenersCalled = false;
    public boolean mInitialized = false;
    private long mDuration = (long) (sDurationScale * 300.0f);
    private long mUnscaledDuration = 300;
    private long mStartDelay = 0;
    private long mUnscaledStartDelay = 0;
    private int mRepeatCount = 0;
    private int mRepeatMode = 1;
    private TimeInterpolator mInterpolator = sDefaultInterpolator;
    private ArrayList<AnimatorUpdateListener> mUpdateListeners = null;

    public static class AnimationHandler implements Runnable {
        private boolean mAnimationScheduled;
        public final ArrayList<ValueAnimator> mAnimations;
        private final Choreographer mChoreographer;
        public final ArrayList<ValueAnimator> mDelayedAnims;
        private final ArrayList<ValueAnimator> mEndingAnims;
        public final ArrayList<ValueAnimator> mPendingAnimations;
        private final ArrayList<ValueAnimator> mReadyAnims;
        private final ArrayList<ValueAnimator> mTmpAnimations;

        private void doAnimationFrame(long j2) {
            int i2;
            while (true) {
                i2 = 0;
                if (this.mPendingAnimations.size() <= 0) {
                    break;
                }
                ArrayList arrayList = (ArrayList) this.mPendingAnimations.clone();
                this.mPendingAnimations.clear();
                int size = arrayList.size();
                while (i2 < size) {
                    ValueAnimator valueAnimator = (ValueAnimator) arrayList.get(i2);
                    if (valueAnimator.mStartDelay == 0) {
                        valueAnimator.startAnimation(this);
                    } else {
                        this.mDelayedAnims.add(valueAnimator);
                    }
                    i2++;
                }
            }
            int size2 = this.mDelayedAnims.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ValueAnimator valueAnimator2 = this.mDelayedAnims.get(i3);
                if (valueAnimator2.delayedAnimationFrame(j2)) {
                    this.mReadyAnims.add(valueAnimator2);
                }
            }
            int size3 = this.mReadyAnims.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    ValueAnimator valueAnimator3 = this.mReadyAnims.get(i4);
                    valueAnimator3.startAnimation(this);
                    valueAnimator3.mRunning = true;
                    this.mDelayedAnims.remove(valueAnimator3);
                }
                this.mReadyAnims.clear();
            }
            int size4 = this.mAnimations.size();
            for (int i5 = 0; i5 < size4; i5++) {
                this.mTmpAnimations.add(this.mAnimations.get(i5));
            }
            for (int i6 = 0; i6 < size4; i6++) {
                ValueAnimator valueAnimator4 = this.mTmpAnimations.get(i6);
                if (this.mAnimations.contains(valueAnimator4) && valueAnimator4.doAnimationFrame(j2)) {
                    this.mEndingAnims.add(valueAnimator4);
                }
            }
            this.mTmpAnimations.clear();
            if (this.mEndingAnims.size() > 0) {
                while (i2 < this.mEndingAnims.size()) {
                    this.mEndingAnims.get(i2).endAnimation(this);
                    i2++;
                }
                this.mEndingAnims.clear();
            }
            if (this.mAnimations.isEmpty() && this.mDelayedAnims.isEmpty()) {
                return;
            }
            scheduleAnimation();
        }

        private void scheduleAnimation() {
            if (this.mAnimationScheduled) {
                return;
            }
            this.mChoreographer.postCallback(1, this, null);
            this.mAnimationScheduled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mAnimationScheduled = false;
            doAnimationFrame(this.mChoreographer.getFrameTime());
        }

        public void start() {
            scheduleAnimation();
        }

        private AnimationHandler() {
            this.mAnimations = new ArrayList<>();
            this.mTmpAnimations = new ArrayList<>();
            this.mPendingAnimations = new ArrayList<>();
            this.mDelayedAnims = new ArrayList<>();
            this.mEndingAnims = new ArrayList<>();
            this.mReadyAnims = new ArrayList<>();
            this.mChoreographer = Choreographer.getInstance();
        }
    }

    public interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimator valueAnimator);
    }

    public static void clearAllAnimations() {
        AnimationHandler animationHandler = sAnimationHandler.get();
        if (animationHandler != null) {
            animationHandler.mAnimations.clear();
            animationHandler.mPendingAnimations.clear();
            animationHandler.mDelayedAnims.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean delayedAnimationFrame(long j2) {
        if (!this.mStartedDelay) {
            this.mStartedDelay = true;
            this.mDelayStartTime = j2;
        } else {
            if (this.mPaused) {
                if (this.mPauseTime < 0) {
                    this.mPauseTime = j2;
                }
                return false;
            }
            if (this.mResumed) {
                this.mResumed = false;
                long j3 = this.mPauseTime;
                if (j3 > 0) {
                    this.mDelayStartTime += j2 - j3;
                }
            }
            long j4 = j2 - this.mDelayStartTime;
            long j5 = this.mStartDelay;
            if (j4 > j5) {
                this.mStartTime = j2 - (j4 - j5);
                this.mPlayingState = 1;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endAnimation(AnimationHandler animationHandler) {
        animationHandler.mAnimations.remove(this);
        animationHandler.mPendingAnimations.remove(this);
        animationHandler.mDelayedAnims.remove(this);
        this.mPlayingState = 0;
        this.mPaused = false;
        if ((this.mStarted || this.mRunning) && this.mListeners != null) {
            if (!this.mRunning) {
                notifyStartListeners();
            }
            ArrayList arrayList = (ArrayList) this.mListeners.clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animator.AnimatorListener) arrayList.get(i2)).onAnimationEnd(this);
            }
        }
        this.mRunning = false;
        this.mStarted = false;
        this.mStartListenersCalled = false;
        this.mPlayingBackwards = false;
        if (Trace.isTagEnabled(8L)) {
            Trace.asyncTraceEnd(8L, getNameForTrace(), System.identityHashCode(this));
        }
    }

    public static int getCurrentAnimationsCount() {
        AnimationHandler animationHandler = sAnimationHandler.get();
        if (animationHandler != null) {
            return animationHandler.mAnimations.size();
        }
        return 0;
    }

    public static float getDurationScale() {
        return sDurationScale;
    }

    public static long getFrameDelay() {
        return Choreographer.getFrameDelay();
    }

    private static AnimationHandler getOrCreateAnimationHandler() {
        AnimationHandler animationHandler = sAnimationHandler.get();
        if (animationHandler != null) {
            return animationHandler;
        }
        AnimationHandler animationHandler2 = new AnimationHandler();
        sAnimationHandler.set(animationHandler2);
        return animationHandler2;
    }

    private void notifyStartListeners() {
        ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
        if (arrayList != null && !this.mStartListenersCalled) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animator.AnimatorListener) arrayList2.get(i2)).onAnimationStart(this);
            }
        }
        this.mStartListenersCalled = true;
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

    public static void setDurationScale(float f2) {
        sDurationScale = f2;
    }

    public static void setFrameDelay(long j2) {
        Choreographer.setFrameDelay(j2);
    }

    private void start(boolean z2) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.mPlayingBackwards = z2;
        this.mCurrentIteration = 0;
        this.mPlayingState = 0;
        this.mStarted = true;
        this.mStartedDelay = false;
        this.mPaused = false;
        AnimationHandler orCreateAnimationHandler = getOrCreateAnimationHandler();
        orCreateAnimationHandler.mPendingAnimations.add(this);
        if (this.mStartDelay == 0) {
            setCurrentPlayTime(0L);
            this.mPlayingState = 0;
            this.mRunning = true;
            notifyStartListeners();
        }
        orCreateAnimationHandler.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnimation(AnimationHandler animationHandler) {
        if (Trace.isTagEnabled(8L)) {
            Trace.asyncTraceBegin(8L, getNameForTrace(), System.identityHashCode(this));
        }
        initAnimation();
        animationHandler.mAnimations.add(this);
        if (this.mStartDelay <= 0 || this.mListeners == null) {
            return;
        }
        notifyStartListeners();
    }

    public void addUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        if (this.mUpdateListeners == null) {
            this.mUpdateListeners = new ArrayList<>();
        }
        this.mUpdateListeners.add(animatorUpdateListener);
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

    public boolean animationFrame(long j2) {
        int i2 = this.mPlayingState;
        boolean z2 = false;
        if (i2 == 1 || i2 == 2) {
            long j3 = this.mDuration;
            float fMin = j3 > 0 ? (j2 - this.mStartTime) / j3 : 1.0f;
            if (fMin >= 1.0f) {
                int i3 = this.mCurrentIteration;
                int i4 = this.mRepeatCount;
                if (i3 < i4 || i4 == -1) {
                    ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
                    if (arrayList != null) {
                        int size = arrayList.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            this.mListeners.get(i5).onAnimationRepeat(this);
                        }
                    }
                    if (this.mRepeatMode == 2) {
                        this.mPlayingBackwards = !this.mPlayingBackwards;
                    }
                    this.mCurrentIteration += (int) fMin;
                    fMin %= 1.0f;
                    this.mStartTime += this.mDuration;
                } else {
                    fMin = Math.min(fMin, 1.0f);
                    z2 = true;
                }
            }
            if (this.mPlayingBackwards) {
                fMin = 1.0f - fMin;
            }
            animateValue(fMin);
        }
        return z2;
    }

    @Override // android.animation.Animator
    public void cancel() {
        AnimationHandler orCreateAnimationHandler = getOrCreateAnimationHandler();
        if (this.mPlayingState != 0 || orCreateAnimationHandler.mPendingAnimations.contains(this) || orCreateAnimationHandler.mDelayedAnims.contains(this)) {
            if ((this.mStarted || this.mRunning) && this.mListeners != null) {
                if (!this.mRunning) {
                    notifyStartListeners();
                }
                Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
                }
            }
            endAnimation(orCreateAnimationHandler);
        }
    }

    public final boolean doAnimationFrame(long j2) {
        if (this.mPlayingState == 0) {
            this.mPlayingState = 1;
            long j3 = this.mSeekTime;
            if (j3 < 0) {
                this.mStartTime = j2;
            } else {
                this.mStartTime = j2 - j3;
                this.mSeekTime = -1L;
            }
        }
        if (this.mPaused) {
            if (this.mPauseTime < 0) {
                this.mPauseTime = j2;
            }
            return false;
        }
        if (this.mResumed) {
            this.mResumed = false;
            long j4 = this.mPauseTime;
            if (j4 > 0) {
                this.mStartTime += j2 - j4;
            }
        }
        return animationFrame(Math.max(j2, this.mStartTime));
    }

    @Override // android.animation.Animator
    public void end() {
        AnimationHandler orCreateAnimationHandler = getOrCreateAnimationHandler();
        if (!orCreateAnimationHandler.mAnimations.contains(this) && !orCreateAnimationHandler.mPendingAnimations.contains(this)) {
            this.mStartedDelay = false;
            startAnimation(orCreateAnimationHandler);
            this.mStarted = true;
        } else if (!this.mInitialized) {
            initAnimation();
        }
        animateValue(this.mPlayingBackwards ? 0.0f : 1.0f);
        endAnimation(orCreateAnimationHandler);
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

    public long getCurrentPlayTime() {
        if (!this.mInitialized || this.mPlayingState == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
    }

    @Override // android.animation.Animator
    public long getDuration() {
        return this.mUnscaledDuration;
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
        return this.mUnscaledStartDelay;
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
    public boolean isRunning() {
        return this.mPlayingState == 1 || this.mRunning;
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
        if (this.mPaused) {
            this.mResumed = true;
        }
        super.resume();
    }

    public void reverse() {
        this.mPlayingBackwards = !this.mPlayingBackwards;
        if (this.mPlayingState == 1) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = jCurrentAnimationTimeMillis - (this.mDuration - (jCurrentAnimationTimeMillis - this.mStartTime));
        } else if (this.mStarted) {
            end();
        } else {
            start(true);
        }
    }

    public void setCurrentPlayTime(long j2) {
        initAnimation();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.mPlayingState != 1) {
            this.mSeekTime = j2;
            this.mPlayingState = 2;
        }
        this.mStartTime = jCurrentAnimationTimeMillis - j2;
        doAnimationFrame(jCurrentAnimationTimeMillis);
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
            setValues(PropertyValuesHolder.ofFloat(ProxyProperties.LOCAL_EXCL_LIST, fArr));
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
            setValues(PropertyValuesHolder.ofInt(ProxyProperties.LOCAL_EXCL_LIST, iArr));
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
            setValues(PropertyValuesHolder.ofObject(ProxyProperties.LOCAL_EXCL_LIST, (TypeEvaluator) null, objArr));
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
        this.mStartDelay = (long) (j2 * sDurationScale);
        this.mUnscaledStartDelay = j2;
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

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.mValues != null) {
            for (int i2 = 0; i2 < this.mValues.length; i2++) {
                str = str + "\n    " + this.mValues[i2].toString();
            }
        }
        return str;
    }

    @Override // android.animation.Animator
    public ValueAnimator setDuration(long j2) {
        if (j2 >= 0) {
            this.mUnscaledDuration = j2;
            this.mDuration = (long) (j2 * sDurationScale);
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j2);
    }

    @Override // android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public ValueAnimator mo0clone() {
        ValueAnimator valueAnimator = (ValueAnimator) super.mo0clone();
        ArrayList<AnimatorUpdateListener> arrayList = this.mUpdateListeners;
        if (arrayList != null) {
            valueAnimator.mUpdateListeners = new ArrayList<>();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                valueAnimator.mUpdateListeners.add(arrayList.get(i2));
            }
        }
        valueAnimator.mSeekTime = -1L;
        valueAnimator.mPlayingBackwards = false;
        valueAnimator.mCurrentIteration = 0;
        valueAnimator.mInitialized = false;
        valueAnimator.mPlayingState = 0;
        valueAnimator.mStartedDelay = false;
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            int length = propertyValuesHolderArr.length;
            valueAnimator.mValues = new PropertyValuesHolder[length];
            valueAnimator.mValuesMap = new HashMap<>(length);
            for (int i3 = 0; i3 < length; i3++) {
                PropertyValuesHolder propertyValuesHolderMo4clone = propertyValuesHolderArr[i3].mo4clone();
                valueAnimator.mValues[i3] = propertyValuesHolderMo4clone;
                valueAnimator.mValuesMap.put(propertyValuesHolderMo4clone.getPropertyName(), propertyValuesHolderMo4clone);
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
