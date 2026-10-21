package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class Fade extends Visibility {
    private static boolean DBG = false;
    public static final int IN = 1;
    private static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    private static final String PROPNAME_SCREEN_X = "android:fade:screenX";
    private static final String PROPNAME_SCREEN_Y = "android:fade:screenY";
    private int mFadingMode;

    public Fade() {
        this(3);
    }

    private void captureValues(TransitionValues transitionValues) {
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(PROPNAME_SCREEN_X, Integer.valueOf(iArr[0]));
        transitionValues.values.put(PROPNAME_SCREEN_Y, Integer.valueOf(iArr[1]));
    }

    private Animator createAnimation(View view, float f2, float f3, AnimatorListenerAdapter animatorListenerAdapter) {
        if (f2 == f3) {
            if (animatorListenerAdapter != null) {
                animatorListenerAdapter.onAnimationEnd(null);
            }
            return null;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "transitionAlpha", f2, f3);
        if (DBG) {
            Log.d(LOG_TAG, "Created animator " + objectAnimatorOfFloat);
        }
        if (animatorListenerAdapter != null) {
            objectAnimatorOfFloat.addListener(animatorListenerAdapter);
            objectAnimatorOfFloat.addPauseListener(animatorListenerAdapter);
        }
        return objectAnimatorOfFloat;
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i3) {
        if ((this.mFadingMode & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        final View view = transitionValues2.view;
        if (DBG) {
            Log.d(LOG_TAG, "Fade.onAppear: startView, startVis, endView, endVis = " + (transitionValues != null ? transitionValues.view : null) + ", " + i2 + ", " + view + ", " + i3);
        }
        view.setTransitionAlpha(0.0f);
        addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.Fade.1
            public boolean mCanceled = false;
            public float mPausedAlpha;

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
                view.setTransitionAlpha(1.0f);
                this.mCanceled = true;
            }

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                if (this.mCanceled) {
                    return;
                }
                view.setTransitionAlpha(1.0f);
            }

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
                this.mPausedAlpha = view.getTransitionAlpha();
                view.setTransitionAlpha(1.0f);
            }

            @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
                view.setTransitionAlpha(this.mPausedAlpha);
            }
        });
        return createAnimation(view, 0.0f, 1.0f, null);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d  */
    @Override // android.transition.Visibility
    public Animator onDisappear(final ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, final int i3) {
        View view;
        View view2;
        View view3;
        View view4;
        if ((this.mFadingMode & 2) != 2) {
            return null;
        }
        View view5 = transitionValues != null ? transitionValues.view : null;
        View view6 = transitionValues2 != null ? transitionValues2.view : null;
        if (DBG) {
            Log.d(LOG_TAG, "Fade.onDisappear: startView, startVis, endView, endVis = " + view5 + ", " + i2 + ", " + view6 + ", " + i3);
        }
        if (view6 == null || view6.getParent() == null) {
            if (view6 != null) {
                view2 = view6;
                view3 = view2;
                view = null;
            } else {
                if (view5 != null) {
                    if (view5.getParent() == null) {
                        view2 = view5;
                        view3 = view2;
                    } else if ((view5.getParent() instanceof View) && view5.getParent().getParent() == null) {
                        int id = ((View) view5.getParent()).getId();
                        if (id == -1 || viewGroup.findViewById(id) == null || !this.mCanRemoveViews) {
                            view4 = null;
                            view5 = null;
                        } else {
                            view4 = view5;
                        }
                        view3 = view4;
                        view2 = view5;
                    }
                    view = null;
                }
                view = null;
                view2 = null;
                view3 = null;
            }
        } else if (i3 == 4 || view5 == view6) {
            view = view6;
            view2 = view;
            view3 = null;
        } else {
            view2 = view5;
            view3 = view2;
            view = null;
        }
        if (view3 == null) {
            if (view == null) {
                return null;
            }
            view.setVisibility(0);
            final View view7 = view;
            final View view8 = view2;
            final View view9 = view3;
            return createAnimation(view2, 1.0f, 0.0f, new AnimatorListenerAdapter() { // from class: android.transition.Fade.3
                public boolean mCanceled = false;
                public float mPausedAlpha = -1.0f;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.mCanceled = true;
                    float f2 = this.mPausedAlpha;
                    if (f2 >= 0.0f) {
                        view8.setTransitionAlpha(f2);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!this.mCanceled) {
                        view8.setTransitionAlpha(1.0f);
                    }
                    View view10 = view7;
                    if (view10 != null && !this.mCanceled) {
                        view10.setVisibility(i3);
                    }
                    if (view9 != null) {
                        viewGroup.getOverlay().remove(view9);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
                public void onAnimationPause(Animator animator) {
                    View view10 = view7;
                    if (view10 != null && !this.mCanceled) {
                        view10.setVisibility(i3);
                    }
                    this.mPausedAlpha = view8.getTransitionAlpha();
                    view8.setTransitionAlpha(1.0f);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
                public void onAnimationResume(Animator animator) {
                    View view10 = view7;
                    if (view10 != null && !this.mCanceled) {
                        view10.setVisibility(0);
                    }
                    view8.setTransitionAlpha(this.mPausedAlpha);
                }
            });
        }
        int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_SCREEN_X)).intValue();
        int iIntValue2 = ((Integer) transitionValues.values.get(PROPNAME_SCREEN_Y)).intValue();
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        view3.offsetLeftAndRight((iIntValue - iArr[0]) - view3.getLeft());
        view3.offsetTopAndBottom((iIntValue2 - iArr[1]) - view3.getTop());
        viewGroup.getOverlay().add(view3);
        final View view10 = view2;
        final View view11 = view;
        final View view12 = view3;
        return createAnimation(view2, 1.0f, 0.0f, new AnimatorListenerAdapter() { // from class: android.transition.Fade.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view10.setTransitionAlpha(1.0f);
                View view13 = view11;
                if (view13 != null) {
                    view13.setVisibility(i3);
                }
                if (view12 != null) {
                    viewGroup.getOverlay().remove(view12);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                if (view12 != null) {
                    viewGroup.getOverlay().remove(view12);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                if (view12 != null) {
                    viewGroup.getOverlay().add(view12);
                }
            }
        });
    }

    public Fade(int i2) {
        this.mFadingMode = i2;
    }
}
