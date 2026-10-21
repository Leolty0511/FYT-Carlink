package android.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class Visibility extends Transition {
    private static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    public static class VisibilityInfo {
        public ViewGroup endParent;
        public int endVisibility;
        public boolean fadeIn;
        public ViewGroup startParent;
        public int startVisibility;
        public boolean visibilityChange;

        private VisibilityInfo() {
        }
    }

    private void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_VISIBILITY, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
    }

    private VisibilityInfo getVisibilityChangeInfo(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.visibilityChange = false;
        visibilityInfo.fadeIn = false;
        if (transitionValues != null) {
            visibilityInfo.startVisibility = ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue();
            visibilityInfo.startParent = (ViewGroup) transitionValues.values.get(PROPNAME_PARENT);
        } else {
            visibilityInfo.startVisibility = -1;
            visibilityInfo.startParent = null;
        }
        if (transitionValues2 != null) {
            visibilityInfo.endVisibility = ((Integer) transitionValues2.values.get(PROPNAME_VISIBILITY)).intValue();
            visibilityInfo.endParent = (ViewGroup) transitionValues2.values.get(PROPNAME_PARENT);
        } else {
            visibilityInfo.endVisibility = -1;
            visibilityInfo.endParent = null;
        }
        if (transitionValues != null && transitionValues2 != null) {
            int i2 = visibilityInfo.startVisibility;
            int i3 = visibilityInfo.endVisibility;
            if (i2 == i3 && visibilityInfo.startParent == visibilityInfo.endParent) {
                return visibilityInfo;
            }
            if (i2 == i3) {
                ViewGroup viewGroup = visibilityInfo.startParent;
                ViewGroup viewGroup2 = visibilityInfo.endParent;
                if (viewGroup != viewGroup2) {
                    if (viewGroup2 == null) {
                        visibilityInfo.fadeIn = false;
                        visibilityInfo.visibilityChange = true;
                    } else if (viewGroup == null) {
                        visibilityInfo.fadeIn = true;
                        visibilityInfo.visibilityChange = true;
                    }
                }
            } else if (i2 == 0) {
                visibilityInfo.fadeIn = false;
                visibilityInfo.visibilityChange = true;
            } else if (i3 == 0) {
                visibilityInfo.fadeIn = true;
                visibilityInfo.visibilityChange = true;
            }
        }
        if (transitionValues == null) {
            visibilityInfo.fadeIn = true;
            visibilityInfo.visibilityChange = true;
        } else if (transitionValues2 == null) {
            visibilityInfo.fadeIn = false;
            visibilityInfo.visibilityChange = true;
        }
        return visibilityInfo;
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        if (visibilityChangeInfo.visibilityChange) {
            boolean z2 = false;
            if (this.mTargets.size() > 0 || this.mTargetIds.size() > 0) {
                View view = transitionValues != null ? transitionValues.view : null;
                View view2 = transitionValues2 != null ? transitionValues2.view : null;
                int id = view != null ? view.getId() : -1;
                int id2 = view2 != null ? view2.getId() : -1;
                if (isValidTarget(view, id) || isValidTarget(view2, id2)) {
                    z2 = true;
                }
            }
            if (z2 || visibilityChangeInfo.startParent != null || visibilityChangeInfo.endParent != null) {
                return visibilityChangeInfo.fadeIn ? onAppear(viewGroup, transitionValues, visibilityChangeInfo.startVisibility, transitionValues2, visibilityChangeInfo.endVisibility) : onDisappear(viewGroup, transitionValues, visibilityChangeInfo.startVisibility, transitionValues2, visibilityChangeInfo.endVisibility);
            }
        }
        return null;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public boolean isVisible(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue() == 0 && ((View) transitionValues.values.get(PROPNAME_PARENT)) != null;
    }

    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i3) {
        return null;
    }

    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i3) {
        return null;
    }
}
