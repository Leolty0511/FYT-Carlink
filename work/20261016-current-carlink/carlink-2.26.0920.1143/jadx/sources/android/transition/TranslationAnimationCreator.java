package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.view.View;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
class TranslationAnimationCreator {

    public static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
        private final View mMovingView;
        private float mPausedX;
        private float mPausedY;
        private final int mStartX;
        private final int mStartY;
        private final float mTerminalX;
        private final float mTerminalY;
        private int[] mTransitionPosition;
        private final View mViewInHierarchy;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.mTransitionPosition == null) {
                this.mTransitionPosition = new int[2];
            }
            this.mTransitionPosition[0] = Math.round(this.mMovingView.getTranslationX() + this.mStartX);
            this.mTransitionPosition[1] = Math.round(this.mMovingView.getTranslationY() + this.mStartY);
            this.mViewInHierarchy.setTagInternal(R.id.transitionPosition, this.mTransitionPosition);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.mPausedX = this.mMovingView.getTranslationX();
            this.mPausedY = this.mMovingView.getTranslationY();
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.mMovingView.setTranslationX(this.mPausedX);
            this.mMovingView.setTranslationY(this.mPausedY);
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
            transition.removeListener(this);
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
        }

        private TransitionPositionListener(View view, View view2, int i2, int i3, float f2, float f3) {
            this.mMovingView = view;
            this.mViewInHierarchy = view2;
            this.mStartX = i2 - Math.round(view.getTranslationX());
            this.mStartY = i3 - Math.round(view.getTranslationY());
            this.mTerminalX = f2;
            this.mTerminalY = f3;
            int[] iArr = (int[]) view2.getTag(R.id.transitionPosition);
            this.mTransitionPosition = iArr;
            if (iArr != null) {
                view2.setTagInternal(R.id.transitionPosition, null);
            }
        }
    }

    public static Animator createAnimation(View view, TransitionValues transitionValues, int i2, int i3, float f2, float f3, float f4, float f5, TimeInterpolator timeInterpolator, Transition transition) {
        float f6;
        float f7;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transitionPosition);
        if (iArr != null) {
            f6 = (iArr[0] - i2) + translationX;
            f7 = (iArr[1] - i3) + translationY;
        } else {
            f6 = f2;
            f7 = f3;
        }
        int iRound = Math.round(f6 - translationX) + i2;
        int iRound2 = Math.round(f7 - translationY) + i3;
        view.setTranslationX(f6);
        view.setTranslationY(f7);
        if (f6 == f4 && f7 == f5) {
            return null;
        }
        Path path = new Path();
        path.moveTo(f6, f7);
        path.lineTo(f4, f5);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, View.TRANSLATION_X, View.TRANSLATION_Y, path);
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        transition.addListener(transitionPositionListener);
        objectAnimatorOfFloat.addListener(transitionPositionListener);
        objectAnimatorOfFloat.addPauseListener(transitionPositionListener);
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        return objectAnimatorOfFloat;
    }
}
