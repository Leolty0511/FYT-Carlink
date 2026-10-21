package android.animation;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnimatorListenerAdapter implements Animator.AnimatorListener, Animator.AnimatorPauseListener {
    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
        a.a(this, animator, z2);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
        a.b(this, animator, z2);
    }
}
