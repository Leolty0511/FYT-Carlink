package android.view;

import android.animation.Animator;
import android.animation.RevealAnimator;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewAnimationUtils {
    private ViewAnimationUtils() {
    }

    public static Animator createCircularReveal(View view, int i2, int i3, float f2, float f3) {
        return new RevealAnimator(view, i2, i3, f2, f3);
    }
}
