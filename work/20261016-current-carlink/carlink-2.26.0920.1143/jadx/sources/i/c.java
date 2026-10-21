package i;

import android.animation.Animator;
import com.syu.carlink.fragment.CarplayFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarplayFragment f963b;

    public /* synthetic */ c(CarplayFragment carplayFragment, int i2) {
        this.f962a = i2;
        this.f963b = carplayFragment;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f962a) {
            case 0:
                t.b.h(animator, "animation");
                break;
            default:
                t.b.h(animator, "animation");
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i2 = this.f962a;
        CarplayFragment carplayFragment = this.f963b;
        switch (i2) {
            case 0:
                t.b.h(animator, "animation");
                carplayFragment.a().setVisibility(8);
                break;
            default:
                t.b.h(animator, "animation");
                carplayFragment.a().setVisibility(8);
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        switch (this.f962a) {
            case 0:
                t.b.h(animator, "animation");
                break;
            default:
                t.b.h(animator, "animation");
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f962a) {
            case 0:
                t.b.h(animator, "animation");
                break;
            default:
                t.b.h(animator, "animation");
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
        switch (this.f962a) {
            case 0:
                android.animation.a.b(this, animator, z2);
                break;
            default:
                android.animation.a.b(this, animator, z2);
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
        switch (this.f962a) {
            case 0:
                android.animation.a.a(this, animator, z2);
                break;
            default:
                android.animation.a.a(this, animator, z2);
                break;
        }
    }
}
