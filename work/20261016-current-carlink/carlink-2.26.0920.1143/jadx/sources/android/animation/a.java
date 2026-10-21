package android.animation;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void a(Animator.AnimatorListener animatorListener, Animator animator, boolean z2) {
        animatorListener.onAnimationEnd(animator);
    }

    public static void b(Animator.AnimatorListener animatorListener, Animator animator, boolean z2) {
        animatorListener.onAnimationStart(animator);
    }
}
