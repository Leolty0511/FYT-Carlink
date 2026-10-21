package android.animation;

import android.content.res.ConstantState;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class Animator implements Cloneable {
    public static final long DURATION_INFINITE = -1;
    private AnimatorConstantState mConstantState;
    ArrayList<AnimatorListener> mListeners = null;
    ArrayList<AnimatorPauseListener> mPauseListeners = null;
    boolean mPaused = false;
    int mChangingConfigurations = 0;

    public static class AnimatorConstantState extends ConstantState<Animator> {
        final Animator mAnimator;
        int mChangingConf;

        public AnimatorConstantState(Animator animator) {
            this.mAnimator = animator;
            animator.mConstantState = this;
            this.mChangingConf = animator.getChangingConfigurations();
        }

        @Override // android.content.res.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConf;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.content.res.ConstantState
        public Animator newInstance() {
            Animator animatorMo0clone = this.mAnimator.mo0clone();
            animatorMo0clone.mConstantState = this;
            return animatorMo0clone;
        }
    }

    public interface AnimatorListener {
        void onAnimationCancel(Animator animator);

        void onAnimationEnd(Animator animator);

        void onAnimationEnd(Animator animator, boolean z2);

        void onAnimationRepeat(Animator animator);

        void onAnimationStart(Animator animator);

        void onAnimationStart(Animator animator, boolean z2);
    }

    public interface AnimatorPauseListener {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    public void addListener(AnimatorListener animatorListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(animatorListener);
    }

    public void addPauseListener(AnimatorPauseListener animatorPauseListener) {
        if (this.mPauseListeners == null) {
            this.mPauseListeners = new ArrayList<>();
        }
        this.mPauseListeners.add(animatorPauseListener);
    }

    public void animateBasedOnPlayTime(long j2, long j3, boolean z2) {
    }

    public void appendChangingConfigurations(int i2) {
        this.mChangingConfigurations = i2 | this.mChangingConfigurations;
    }

    public boolean canReverse() {
        return false;
    }

    public void cancel() {
    }

    public ConstantState<Animator> createConstantState() {
        return new AnimatorConstantState(this);
    }

    public void end() {
    }

    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public abstract long getDuration();

    public TimeInterpolator getInterpolator() {
        return null;
    }

    public ArrayList<AnimatorListener> getListeners() {
        return this.mListeners;
    }

    public abstract long getStartDelay();

    public long getTotalDuration() {
        long duration = getDuration();
        if (duration == -1) {
            return -1L;
        }
        return getStartDelay() + duration;
    }

    public boolean isInitialized() {
        return true;
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    public abstract boolean isRunning();

    public boolean isStarted() {
        return isRunning();
    }

    public void pause() {
        if (!isStarted() || this.mPaused) {
            return;
        }
        this.mPaused = true;
        ArrayList<AnimatorPauseListener> arrayList = this.mPauseListeners;
        if (arrayList != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((AnimatorPauseListener) arrayList2.get(i2)).onAnimationPause(this);
            }
        }
    }

    public boolean pulseAnimationFrame(long j2) {
        return false;
    }

    public void removeAllListeners() {
        ArrayList<AnimatorListener> arrayList = this.mListeners;
        if (arrayList != null) {
            arrayList.clear();
            this.mListeners = null;
        }
        ArrayList<AnimatorPauseListener> arrayList2 = this.mPauseListeners;
        if (arrayList2 != null) {
            arrayList2.clear();
            this.mPauseListeners = null;
        }
    }

    public void removeListener(AnimatorListener animatorListener) {
        ArrayList<AnimatorListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
    }

    public void removePauseListener(AnimatorPauseListener animatorPauseListener) {
        ArrayList<AnimatorPauseListener> arrayList = this.mPauseListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorPauseListener);
        if (this.mPauseListeners.size() == 0) {
            this.mPauseListeners = null;
        }
    }

    public void resume() {
        if (this.mPaused) {
            this.mPaused = false;
            ArrayList<AnimatorPauseListener> arrayList = this.mPauseListeners;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AnimatorPauseListener) arrayList2.get(i2)).onAnimationResume(this);
                }
            }
        }
    }

    public void reverse() {
        throw new IllegalStateException("Reverse is not supported");
    }

    public void setAllowRunningAsynchronously(boolean z2) {
    }

    public void setChangingConfigurations(int i2) {
        this.mChangingConfigurations = i2;
    }

    public abstract Animator setDuration(long j2);

    public abstract void setInterpolator(TimeInterpolator timeInterpolator);

    public abstract void setStartDelay(long j2);

    public void setTarget(Object obj) {
    }

    public void setupEndValues() {
    }

    public void setupStartValues() {
    }

    public void skipToEndValue(boolean z2) {
    }

    public void start() {
    }

    public void startWithoutPulsing(boolean z2) {
        if (z2) {
            reverse();
        } else {
            start();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Animator mo0clone() {
        try {
            Animator animator = (Animator) super.clone();
            if (this.mListeners != null) {
                animator.mListeners = new ArrayList<>(this.mListeners);
            }
            if (this.mPauseListeners != null) {
                animator.mPauseListeners = new ArrayList<>(this.mPauseListeners);
            }
            return animator;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
