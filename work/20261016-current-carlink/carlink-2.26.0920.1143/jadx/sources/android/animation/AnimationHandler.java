package android.animation;

import android.os.SystemClock;
import android.util.ArrayMap;
import android.view.Choreographer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AnimationHandler {
    public static final ThreadLocal<AnimationHandler> sAnimatorHandler = new ThreadLocal<>();
    private AnimationFrameCallbackProvider mProvider;
    private final ArrayMap<AnimationFrameCallback, Long> mDelayedCallbackStartTime = new ArrayMap<>();
    private final ArrayList<AnimationFrameCallback> mAnimationCallbacks = new ArrayList<>();
    private final ArrayList<AnimationFrameCallback> mCommitCallbacks = new ArrayList<>();
    private final Choreographer.FrameCallback mFrameCallback = new Choreographer.FrameCallback() { // from class: android.animation.AnimationHandler.1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j2) {
            AnimationHandler animationHandler = AnimationHandler.this;
            animationHandler.doAnimationFrame(animationHandler.getProvider().getFrameTime());
            if (AnimationHandler.this.mAnimationCallbacks.size() > 0) {
                AnimationHandler.this.getProvider().postFrameCallback(this);
            }
        }
    };
    private boolean mListDirty = false;

    public interface AnimationFrameCallback {
        void commitAnimationFrame(long j2);

        boolean doAnimationFrame(long j2);
    }

    public interface AnimationFrameCallbackProvider {
        long getFrameDelay();

        long getFrameTime();

        void postCommitCallback(Runnable runnable);

        void postFrameCallback(Choreographer.FrameCallback frameCallback);

        void setFrameDelay(long j2);
    }

    public class MyFrameCallbackProvider implements AnimationFrameCallbackProvider {
        final Choreographer mChoreographer;

        private MyFrameCallbackProvider() {
            this.mChoreographer = Choreographer.getInstance();
        }

        @Override // android.animation.AnimationHandler.AnimationFrameCallbackProvider
        public long getFrameDelay() {
            return Choreographer.getFrameDelay();
        }

        @Override // android.animation.AnimationHandler.AnimationFrameCallbackProvider
        public long getFrameTime() {
            return this.mChoreographer.getFrameTime();
        }

        @Override // android.animation.AnimationHandler.AnimationFrameCallbackProvider
        public void postCommitCallback(Runnable runnable) {
            this.mChoreographer.postCallback(3, runnable, null);
        }

        @Override // android.animation.AnimationHandler.AnimationFrameCallbackProvider
        public void postFrameCallback(Choreographer.FrameCallback frameCallback) {
            this.mChoreographer.postFrameCallback(frameCallback);
        }

        @Override // android.animation.AnimationHandler.AnimationFrameCallbackProvider
        public void setFrameDelay(long j2) {
            Choreographer.setFrameDelay(j2);
        }
    }

    private void cleanUpList() {
        if (this.mListDirty) {
            for (int size = this.mAnimationCallbacks.size() - 1; size >= 0; size--) {
                if (this.mAnimationCallbacks.get(size) == null) {
                    this.mAnimationCallbacks.remove(size);
                }
            }
            this.mListDirty = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void commitAnimationFrame(AnimationFrameCallback animationFrameCallback, long j2) {
        if (this.mDelayedCallbackStartTime.containsKey(animationFrameCallback) || !this.mCommitCallbacks.contains(animationFrameCallback)) {
            return;
        }
        animationFrameCallback.commitAnimationFrame(j2);
        this.mCommitCallbacks.remove(animationFrameCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAnimationFrame(long j2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        int size = this.mAnimationCallbacks.size();
        for (int i2 = 0; i2 < size; i2++) {
            final AnimationFrameCallback animationFrameCallback = this.mAnimationCallbacks.get(i2);
            if (animationFrameCallback != null && isCallbackDue(animationFrameCallback, jUptimeMillis)) {
                animationFrameCallback.doAnimationFrame(j2);
                if (this.mCommitCallbacks.contains(animationFrameCallback)) {
                    getProvider().postCommitCallback(new Runnable() { // from class: android.animation.AnimationHandler.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnimationHandler animationHandler = AnimationHandler.this;
                            animationHandler.commitAnimationFrame(animationFrameCallback, animationHandler.getProvider().getFrameTime());
                        }
                    });
                }
            }
        }
        cleanUpList();
    }

    public static int getAnimationCount() {
        AnimationHandler animationHandler = sAnimatorHandler.get();
        if (animationHandler == null) {
            return 0;
        }
        return animationHandler.getCallbackSize();
    }

    private int getCallbackSize() {
        int i2 = 0;
        for (int size = this.mAnimationCallbacks.size() - 1; size >= 0; size--) {
            if (this.mAnimationCallbacks.get(size) != null) {
                i2++;
            }
        }
        return i2;
    }

    public static long getFrameDelay() {
        return getInstance().getProvider().getFrameDelay();
    }

    public static AnimationHandler getInstance() {
        ThreadLocal<AnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler());
        }
        return threadLocal.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AnimationFrameCallbackProvider getProvider() {
        if (this.mProvider == null) {
            this.mProvider = new MyFrameCallbackProvider();
        }
        return this.mProvider;
    }

    private boolean isCallbackDue(AnimationFrameCallback animationFrameCallback, long j2) {
        Long l2 = this.mDelayedCallbackStartTime.get(animationFrameCallback);
        if (l2 == null) {
            return true;
        }
        if (l2.longValue() >= j2) {
            return false;
        }
        this.mDelayedCallbackStartTime.remove(animationFrameCallback);
        return true;
    }

    public static void setFrameDelay(long j2) {
        getInstance().getProvider().setFrameDelay(j2);
    }

    public void addAnimationFrameCallback(AnimationFrameCallback animationFrameCallback, long j2) {
        if (this.mAnimationCallbacks.size() == 0) {
            getProvider().postFrameCallback(this.mFrameCallback);
        }
        if (!this.mAnimationCallbacks.contains(animationFrameCallback)) {
            this.mAnimationCallbacks.add(animationFrameCallback);
        }
        if (j2 > 0) {
            this.mDelayedCallbackStartTime.put(animationFrameCallback, Long.valueOf(SystemClock.uptimeMillis() + j2));
        }
    }

    public void addOneShotCommitCallback(AnimationFrameCallback animationFrameCallback) {
        if (this.mCommitCallbacks.contains(animationFrameCallback)) {
            return;
        }
        this.mCommitCallbacks.add(animationFrameCallback);
    }

    public void autoCancelBasedOn(ObjectAnimator objectAnimator) {
        for (int size = this.mAnimationCallbacks.size() - 1; size >= 0; size--) {
            AnimationFrameCallback animationFrameCallback = this.mAnimationCallbacks.get(size);
            if (animationFrameCallback != null && objectAnimator.shouldAutoCancel(animationFrameCallback)) {
                ((Animator) this.mAnimationCallbacks.get(size)).cancel();
            }
        }
    }

    public void removeCallback(AnimationFrameCallback animationFrameCallback) {
        this.mCommitCallbacks.remove(animationFrameCallback);
        this.mDelayedCallbackStartTime.remove(animationFrameCallback);
        int iIndexOf = this.mAnimationCallbacks.indexOf(animationFrameCallback);
        if (iIndexOf >= 0) {
            this.mAnimationCallbacks.set(iIndexOf, null);
            this.mListDirty = true;
        }
    }

    public void setProvider(AnimationFrameCallbackProvider animationFrameCallbackProvider) {
        if (animationFrameCallbackProvider == null) {
            this.mProvider = new MyFrameCallbackProvider();
        } else {
            this.mProvider = animationFrameCallbackProvider;
        }
    }
}
