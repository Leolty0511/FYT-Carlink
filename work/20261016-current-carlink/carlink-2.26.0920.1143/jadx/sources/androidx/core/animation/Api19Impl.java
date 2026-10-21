package androidx.core.animation;

import android.animation.Animator;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(19)
final class Api19Impl {
    public static final Api19Impl INSTANCE = new Api19Impl();

    private Api19Impl() {
    }

    @DoNotInline
    public static final void addPauseListener(Animator animator, Animator.AnimatorPauseListener animatorPauseListener) {
        b.h(animator, "animator");
        b.h(animatorPauseListener, "listener");
        animator.addPauseListener(animatorPauseListener);
    }
}
