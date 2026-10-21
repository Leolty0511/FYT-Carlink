package android.animation;

import android.view.animation.AnimationUtils;

/* JADX INFO: loaded from: classes.dex */
public class TimeAnimator extends ValueAnimator {
    private TimeListener mListener;
    private long mPreviousTime = -1;

    public interface TimeListener {
        void onTimeUpdate(TimeAnimator timeAnimator, long j2, long j3);
    }

    @Override // android.animation.ValueAnimator
    public boolean animateBasedOnTime(long j2) {
        TimeListener timeListener = this.mListener;
        if (timeListener == null) {
            return false;
        }
        long j3 = j2 - this.mStartTime;
        long j4 = this.mPreviousTime;
        long j5 = j4 < 0 ? 0L : j2 - j4;
        this.mPreviousTime = j2;
        timeListener.onTimeUpdate(this, j3, j5);
        return false;
    }

    @Override // android.animation.ValueAnimator
    public void animateValue(float f2) {
    }

    @Override // android.animation.ValueAnimator
    public void initAnimation() {
    }

    @Override // android.animation.ValueAnimator
    public void setCurrentPlayTime(long j2) {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mStartTime = Math.max(this.mStartTime, jCurrentAnimationTimeMillis - j2);
        this.mStartTimeCommitted = true;
        animateBasedOnTime(jCurrentAnimationTimeMillis);
    }

    public void setTimeListener(TimeListener timeListener) {
        this.mListener = timeListener;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        this.mPreviousTime = -1L;
        super.start();
    }
}
