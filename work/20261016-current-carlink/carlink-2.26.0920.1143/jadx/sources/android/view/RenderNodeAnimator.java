package android.view;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.util.SparseIntArray;
import com.android.internal.util.VirtualRefBasePtr;
import com.android.internal.view.animation.FallbackLUTInterpolator;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class RenderNodeAnimator extends Animator {
    public static final int ALPHA = 11;
    public static final int LAST_VALUE = 11;
    public static final int PAINT_ALPHA = 1;
    public static final int PAINT_STROKE_WIDTH = 0;
    public static final int ROTATION = 5;
    public static final int ROTATION_X = 6;
    public static final int ROTATION_Y = 7;
    public static final int SCALE_X = 3;
    public static final int SCALE_Y = 4;
    private static final int STATE_DELAYED = 1;
    private static final int STATE_FINISHED = 3;
    private static final int STATE_PREPARE = 0;
    private static final int STATE_RUNNING = 2;
    public static final int TRANSLATION_X = 0;
    public static final int TRANSLATION_Y = 1;
    public static final int TRANSLATION_Z = 2;
    public static final int X = 8;
    public static final int Y = 9;
    public static final int Z = 10;
    private float mFinalValue;
    private TimeInterpolator mInterpolator;
    private VirtualRefBasePtr mNativePtr;
    private int mRenderProperty;
    private long mStartDelay;
    private long mStartTime;
    private int mState;
    private RenderNode mTarget;
    private final boolean mUiThreadHandlesDelay;
    private long mUnscaledDuration;
    private long mUnscaledStartDelay;
    private View mViewTarget;
    private static final SparseIntArray sViewPropertyAnimatorMap = new SparseIntArray(15) { // from class: android.view.RenderNodeAnimator.1
        {
            put(1, 0);
            put(2, 1);
            put(4, 2);
            put(8, 3);
            put(16, 4);
            put(32, 5);
            put(64, 6);
            put(128, 7);
            put(256, 8);
            put(512, 9);
            put(1024, 10);
            put(2048, 11);
        }
    };
    private static ThreadLocal<DelayedAnimationHelper> sAnimationHelper = new ThreadLocal<>();

    public static class DelayedAnimationHelper implements Runnable {
        private boolean mCallbackScheduled;
        private ArrayList<RenderNodeAnimator> mDelayedAnims = new ArrayList<>();
        private final Choreographer mChoreographer = Choreographer.getInstance();

        private void scheduleCallback() {
            if (this.mCallbackScheduled) {
                return;
            }
            this.mCallbackScheduled = true;
            this.mChoreographer.postCallback(1, this, null);
        }

        public void addDelayedAnimation(RenderNodeAnimator renderNodeAnimator) {
            this.mDelayedAnims.add(renderNodeAnimator);
            scheduleCallback();
        }

        public void removeDelayedAnimation(RenderNodeAnimator renderNodeAnimator) {
            this.mDelayedAnims.remove(renderNodeAnimator);
        }

        @Override // java.lang.Runnable
        public void run() {
            long frameTime = this.mChoreographer.getFrameTime();
            this.mCallbackScheduled = false;
            int i2 = 0;
            for (int i3 = 0; i3 < this.mDelayedAnims.size(); i3++) {
                RenderNodeAnimator renderNodeAnimator = this.mDelayedAnims.get(i3);
                if (!renderNodeAnimator.processDelayed(frameTime)) {
                    if (i2 != i3) {
                        this.mDelayedAnims.set(i2, renderNodeAnimator);
                    }
                    i2++;
                }
            }
            while (this.mDelayedAnims.size() > i2) {
                ArrayList<RenderNodeAnimator> arrayList = this.mDelayedAnims;
                arrayList.remove(arrayList.size() - 1);
            }
            if (this.mDelayedAnims.size() > 0) {
                scheduleCallback();
            }
        }
    }

    public RenderNodeAnimator(int i2, float f2) {
        this.mState = 0;
        this.mUnscaledDuration = 300L;
        this.mUnscaledStartDelay = 0L;
        this.mStartDelay = 0L;
        this.mRenderProperty = i2;
        this.mFinalValue = f2;
        this.mUiThreadHandlesDelay = true;
        init(nCreateAnimator(i2, f2));
    }

    private void applyInterpolator() {
        long jCreateNativeInterpolator;
        TimeInterpolator timeInterpolator = this.mInterpolator;
        if (timeInterpolator == null) {
            return;
        }
        if (isNativeInterpolator(timeInterpolator)) {
            jCreateNativeInterpolator = ((NativeInterpolatorFactory) this.mInterpolator).createNativeInterpolator();
        } else {
            jCreateNativeInterpolator = FallbackLUTInterpolator.createNativeInterpolator(this.mInterpolator, nGetDuration(this.mNativePtr.get()));
        }
        nSetInterpolator(this.mNativePtr.get(), jCreateNativeInterpolator);
    }

    private static void callOnFinished(RenderNodeAnimator renderNodeAnimator) {
        renderNodeAnimator.onFinished();
    }

    private void checkMutable() {
        if (this.mState != 0) {
            throw new IllegalStateException("Animator has already started, cannot change it now!");
        }
        if (this.mNativePtr == null) {
            throw new IllegalStateException("Animator's target has been destroyed (trying to modify an animation after activity destroy?)");
        }
    }

    private ArrayList<Animator.AnimatorListener> cloneListeners() {
        ArrayList<Animator.AnimatorListener> listeners = getListeners();
        return listeners != null ? (ArrayList) listeners.clone() : listeners;
    }

    private void doStart() {
        if (this.mRenderProperty == 11) {
            this.mViewTarget.ensureTransformationInfo();
            this.mViewTarget.mTransformationInfo.mAlpha = this.mFinalValue;
        }
        moveToRunningState();
        View view = this.mViewTarget;
        if (view != null) {
            view.invalidateViewProperty(true, false);
        }
    }

    private static DelayedAnimationHelper getHelper() {
        DelayedAnimationHelper delayedAnimationHelper = sAnimationHelper.get();
        if (delayedAnimationHelper != null) {
            return delayedAnimationHelper;
        }
        DelayedAnimationHelper delayedAnimationHelper2 = new DelayedAnimationHelper();
        sAnimationHelper.set(delayedAnimationHelper2);
        return delayedAnimationHelper2;
    }

    private void init(long j2) {
        this.mNativePtr = new VirtualRefBasePtr(j2);
    }

    public static boolean isNativeInterpolator(TimeInterpolator timeInterpolator) {
        return timeInterpolator.getClass().isAnnotationPresent(HasNativeInterpolator.class);
    }

    public static int mapViewPropertyToRenderProperty(int i2) {
        return sViewPropertyAnimatorMap.get(i2);
    }

    private void moveToRunningState() {
        this.mState = 2;
        VirtualRefBasePtr virtualRefBasePtr = this.mNativePtr;
        if (virtualRefBasePtr != null) {
            nStart(virtualRefBasePtr.get());
        }
        notifyStartListeners();
    }

    private static native long nCreateAnimator(int i2, float f2);

    private static native long nCreateCanvasPropertyFloatAnimator(long j2, float f2);

    private static native long nCreateCanvasPropertyPaintAnimator(long j2, int i2, float f2);

    private static native long nCreateRevealAnimator(int i2, int i3, float f2, float f3);

    private static native void nEnd(long j2);

    private static native long nGetDuration(long j2);

    private static native void nSetAllowRunningAsync(long j2, boolean z2);

    private static native void nSetDuration(long j2, long j3);

    private static native void nSetInterpolator(long j2, long j3);

    private static native void nSetListener(long j2, RenderNodeAnimator renderNodeAnimator);

    private static native void nSetStartDelay(long j2, long j3);

    private static native void nSetStartValue(long j2, float f2);

    private static native void nStart(long j2);

    private void notifyStartListeners() {
        ArrayList<Animator.AnimatorListener> arrayListCloneListeners = cloneListeners();
        int size = arrayListCloneListeners == null ? 0 : arrayListCloneListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayListCloneListeners.get(i2).onAnimationStart(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processDelayed(long j2) {
        long j3 = this.mStartTime;
        if (j3 == 0) {
            this.mStartTime = j2;
            return false;
        }
        if (j2 - j3 < this.mStartDelay) {
            return false;
        }
        doStart();
        return true;
    }

    private void releaseNativePtr() {
        VirtualRefBasePtr virtualRefBasePtr = this.mNativePtr;
        if (virtualRefBasePtr != null) {
            virtualRefBasePtr.release();
            this.mNativePtr = null;
        }
    }

    @Override // android.animation.Animator
    public void cancel() {
        int i2 = this.mState;
        if (i2 == 0 || i2 == 3) {
            return;
        }
        if (i2 == 1) {
            getHelper().removeDelayedAnimation(this);
            moveToRunningState();
        }
        ArrayList<Animator.AnimatorListener> arrayListCloneListeners = cloneListeners();
        int size = arrayListCloneListeners == null ? 0 : arrayListCloneListeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayListCloneListeners.get(i3).onAnimationCancel(this);
        }
        end();
    }

    @Override // android.animation.Animator
    public void end() {
        int i2 = this.mState;
        if (i2 != 3) {
            if (i2 < 2) {
                getHelper().removeDelayedAnimation(this);
                doStart();
            }
            VirtualRefBasePtr virtualRefBasePtr = this.mNativePtr;
            if (virtualRefBasePtr == null) {
                onFinished();
                return;
            }
            nEnd(virtualRefBasePtr.get());
            View view = this.mViewTarget;
            if (view != null) {
                view.invalidateViewProperty(true, false);
            }
        }
    }

    @Override // android.animation.Animator
    public long getDuration() {
        return this.mUnscaledDuration;
    }

    @Override // android.animation.Animator
    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public long getNativeAnimator() {
        return this.mNativePtr.get();
    }

    @Override // android.animation.Animator
    public long getStartDelay() {
        return this.mUnscaledStartDelay;
    }

    @Override // android.animation.Animator
    public long getTotalDuration() {
        return this.mUnscaledDuration + this.mUnscaledStartDelay;
    }

    @Override // android.animation.Animator
    public boolean isRunning() {
        int i2 = this.mState;
        return i2 == 1 || i2 == 2;
    }

    @Override // android.animation.Animator
    public boolean isStarted() {
        return this.mState != 0;
    }

    public void onFinished() {
        int i2 = this.mState;
        if (i2 == 0) {
            releaseNativePtr();
            return;
        }
        if (i2 == 1) {
            getHelper().removeDelayedAnimation(this);
            notifyStartListeners();
        }
        this.mState = 3;
        ArrayList<Animator.AnimatorListener> arrayListCloneListeners = cloneListeners();
        int size = arrayListCloneListeners == null ? 0 : arrayListCloneListeners.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayListCloneListeners.get(i3).onAnimationEnd(this);
        }
        releaseNativePtr();
    }

    @Override // android.animation.Animator
    public void pause() {
        throw new UnsupportedOperationException();
    }

    @Override // android.animation.Animator
    public void resume() {
        throw new UnsupportedOperationException();
    }

    @Override // android.animation.Animator
    public void setAllowRunningAsynchronously(boolean z2) {
        checkMutable();
        nSetAllowRunningAsync(this.mNativePtr.get(), z2);
    }

    @Override // android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        checkMutable();
        this.mInterpolator = timeInterpolator;
    }

    @Override // android.animation.Animator
    public void setStartDelay(long j2) {
        checkMutable();
        if (j2 < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("startDelay must be positive; ", j2));
        }
        this.mUnscaledStartDelay = j2;
        this.mStartDelay = (long) (ValueAnimator.getDurationScale() * j2);
    }

    public void setStartValue(float f2) {
        checkMutable();
        nSetStartValue(this.mNativePtr.get(), f2);
    }

    public void setTarget(View view) {
        this.mViewTarget = view;
        setTarget(view.mRenderNode);
    }

    @Override // android.animation.Animator
    public void start() {
        if (this.mTarget == null) {
            throw new IllegalStateException("Missing target!");
        }
        if (this.mState != 0) {
            throw new IllegalStateException("Already started!");
        }
        this.mState = 1;
        applyInterpolator();
        VirtualRefBasePtr virtualRefBasePtr = this.mNativePtr;
        if (virtualRefBasePtr == null) {
            cancel();
        } else if (this.mStartDelay > 0 && this.mUiThreadHandlesDelay) {
            getHelper().addDelayedAnimation(this);
        } else {
            nSetStartDelay(virtualRefBasePtr.get(), this.mStartDelay);
            doStart();
        }
    }

    @Override // android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public Animator mo0clone() {
        throw new IllegalStateException("Cannot clone this animator");
    }

    @Override // android.animation.Animator
    public RenderNodeAnimator setDuration(long j2) {
        checkMutable();
        if (j2 < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("duration must be positive; ", j2));
        }
        this.mUnscaledDuration = j2;
        nSetDuration(this.mNativePtr.get(), (long) (ValueAnimator.getDurationScale() * j2));
        return this;
    }

    public void setTarget(Canvas canvas) {
        if (canvas instanceof DisplayListCanvas) {
            setTarget(((DisplayListCanvas) canvas).mNode);
            return;
        }
        throw new IllegalArgumentException("Not a GLES20RecordingCanvas");
    }

    private void setTarget(RenderNode renderNode) {
        checkMutable();
        if (this.mTarget == null) {
            nSetListener(this.mNativePtr.get(), this);
            this.mTarget = renderNode;
            renderNode.addAnimator(this);
            return;
        }
        throw new IllegalStateException("Target already set!");
    }

    public RenderNodeAnimator(CanvasProperty<Float> canvasProperty, float f2) {
        this.mRenderProperty = -1;
        this.mState = 0;
        this.mUnscaledDuration = 300L;
        this.mUnscaledStartDelay = 0L;
        this.mStartDelay = 0L;
        init(nCreateCanvasPropertyFloatAnimator(canvasProperty.getNativeContainer(), f2));
        this.mUiThreadHandlesDelay = false;
    }

    public RenderNodeAnimator(CanvasProperty<Paint> canvasProperty, int i2, float f2) {
        this.mRenderProperty = -1;
        this.mState = 0;
        this.mUnscaledDuration = 300L;
        this.mUnscaledStartDelay = 0L;
        this.mStartDelay = 0L;
        init(nCreateCanvasPropertyPaintAnimator(canvasProperty.getNativeContainer(), i2, f2));
        this.mUiThreadHandlesDelay = false;
    }

    public RenderNodeAnimator(int i2, int i3, float f2, float f3) {
        this.mRenderProperty = -1;
        this.mState = 0;
        this.mUnscaledDuration = 300L;
        this.mUnscaledStartDelay = 0L;
        this.mStartDelay = 0L;
        init(nCreateRevealAnimator(i2, i3, f2, f3));
        this.mUiThreadHandlesDelay = true;
    }
}
