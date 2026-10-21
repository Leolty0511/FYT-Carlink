package android.animation;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class Animator implements Cloneable {
    public ArrayList<AnimatorListener> mListeners = null;
    public ArrayList<AnimatorPauseListener> mPauseListeners = null;
    public boolean mPaused = false;

    public interface AnimatorListener {
        void onAnimationCancel(Animator animator);

        void onAnimationEnd(Animator animator);

        void onAnimationRepeat(Animator animator);

        void onAnimationStart(Animator animator);
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

    public void cancel() {
    }

    public void end() {
    }

    public abstract long getDuration();

    public TimeInterpolator getInterpolator() {
        return null;
    }

    public ArrayList<AnimatorListener> getListeners() {
        return this.mListeners;
    }

    public abstract long getStartDelay();

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

    public abstract Animator setDuration(long j2);

    public abstract void setInterpolator(TimeInterpolator timeInterpolator);

    public abstract void setStartDelay(long j2);

    public void setTarget(Object obj) {
    }

    public void setupEndValues() {
    }

    public void setupStartValues() {
    }

    public void start() {
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Animator mo0clone() {
        try {
            Animator animator = (Animator) super.clone();
            ArrayList<AnimatorListener> arrayList = this.mListeners;
            if (arrayList != null) {
                animator.mListeners = new ArrayList<>();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    animator.mListeners.add(arrayList.get(i2));
                }
            }
            ArrayList<AnimatorPauseListener> arrayList2 = this.mPauseListeners;
            if (arrayList2 != null) {
                animator.mPauseListeners = new ArrayList<>();
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    animator.mPauseListeners.add(arrayList2.get(i3));
                }
            }
            return animator;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
