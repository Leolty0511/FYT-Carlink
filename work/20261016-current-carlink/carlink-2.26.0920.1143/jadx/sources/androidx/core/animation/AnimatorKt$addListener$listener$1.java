package androidx.core.animation;

import android.animation.Animator;
import android.animation.a;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatorKt$addListener$listener$1 implements Animator.AnimatorListener {
    final /* synthetic */ l $onCancel;
    final /* synthetic */ l $onEnd;
    final /* synthetic */ l $onRepeat;
    final /* synthetic */ l $onStart;

    public AnimatorKt$addListener$listener$1(l lVar, l lVar2, l lVar3, l lVar4) {
        this.$onRepeat = lVar;
        this.$onEnd = lVar2;
        this.$onCancel = lVar3;
        this.$onStart = lVar4;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        b.h(animator, "animator");
        this.$onCancel.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
        a.a(this, animator, z2);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        b.h(animator, "animator");
        this.$onRepeat.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
        a.b(this, animator, z2);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        b.h(animator, "animator");
        this.$onEnd.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        b.h(animator, "animator");
        this.$onStart.invoke(animator);
    }
}
