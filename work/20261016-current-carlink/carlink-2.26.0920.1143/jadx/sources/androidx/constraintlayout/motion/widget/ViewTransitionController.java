package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> animations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> viewTransitions = new ArrayList<>();
    private String TAG = "ViewTransitionController";
    ArrayList<ViewTransition.Animate> removeList = new ArrayList<>();

    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private void listenForSharedVariable(final ViewTransition viewTransition, final boolean z2) {
        final int sharedValueID = viewTransition.getSharedValueID();
        final int sharedValue = viewTransition.getSharedValue();
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int i2, int i3, int i4) {
                int sharedValueCurrent = viewTransition.getSharedValueCurrent();
                viewTransition.setSharedValueCurrent(i3);
                if (sharedValueID != i2 || sharedValueCurrent == i3) {
                    return;
                }
                if (z2) {
                    if (sharedValue == i3) {
                        int childCount = ViewTransitionController.this.mMotionLayout.getChildCount();
                        for (int i5 = 0; i5 < childCount; i5++) {
                            View childAt = ViewTransitionController.this.mMotionLayout.getChildAt(i5);
                            if (viewTransition.matchesView(childAt)) {
                                int currentState = ViewTransitionController.this.mMotionLayout.getCurrentState();
                                ConstraintSet constraintSet = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState);
                                ViewTransition viewTransition2 = viewTransition;
                                ViewTransitionController viewTransitionController = ViewTransitionController.this;
                                viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, currentState, constraintSet, childAt);
                            }
                        }
                        return;
                    }
                    return;
                }
                if (sharedValue != i3) {
                    int childCount2 = ViewTransitionController.this.mMotionLayout.getChildCount();
                    for (int i6 = 0; i6 < childCount2; i6++) {
                        View childAt2 = ViewTransitionController.this.mMotionLayout.getChildAt(i6);
                        if (viewTransition.matchesView(childAt2)) {
                            int currentState2 = ViewTransitionController.this.mMotionLayout.getCurrentState();
                            ConstraintSet constraintSet2 = ViewTransitionController.this.mMotionLayout.getConstraintSet(currentState2);
                            ViewTransition viewTransition3 = viewTransition;
                            ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                            viewTransition3.applyTransition(viewTransitionController2, viewTransitionController2.mMotionLayout, currentState2, constraintSet2, childAt2);
                        }
                    }
                }
            }
        });
    }

    private void viewTransition(ViewTransition viewTransition, View... viewArr) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (viewTransition.mViewTransitionMode == 2) {
            viewTransition.applyTransition(this, this.mMotionLayout, currentState, null, viewArr);
            return;
        }
        if (currentState == -1) {
            Log.w(this.TAG, "No support for ViewTransition within transition yet. Currently: " + this.mMotionLayout.toString());
            return;
        }
        ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
        if (constraintSet == null) {
            return;
        }
        viewTransition.applyTransition(this, this.mMotionLayout, currentState, constraintSet, viewArr);
    }

    public void add(ViewTransition viewTransition) {
        this.viewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    public void addAnimation(ViewTransition.Animate animate) {
        if (this.animations == null) {
            this.animations = new ArrayList<>();
        }
        this.animations.add(animate);
    }

    public void animate() {
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().mutate();
        }
        this.animations.removeAll(this.removeList);
        this.removeList.clear();
        if (this.animations.isEmpty()) {
            this.animations = null;
        }
    }

    public boolean applyViewTransition(int i2, MotionController motionController) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i2) {
                viewTransition.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    public void enableViewTransition(int i2, boolean z2) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i2) {
                viewTransition.setEnabled(z2);
                return;
            }
        }
    }

    public void invalidate() {
        this.mMotionLayout.invalidate();
    }

    public boolean isViewTransitionEnabled(int i2) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i2) {
                return viewTransition.isEnabled();
            }
        }
        return false;
    }

    public void remove(int i2) {
        ViewTransition next;
        Iterator<ViewTransition> it = this.viewTransitions.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next.getId() != i2);
        if (next != null) {
            this.mRelatedViews = null;
            this.viewTransitions.remove(next);
        }
    }

    public void removeAnimation(ViewTransition.Animate animate) {
        this.removeList.add(animate);
    }

    public void touchEvent(MotionEvent motionEvent) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            for (ViewTransition viewTransition : this.viewTransitions) {
                int childCount = this.mMotionLayout.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = this.mMotionLayout.getChildAt(i2);
                    if (viewTransition.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it = this.animations.iterator();
            while (it.hasNext()) {
                it.next().reactTo(action, x2, y2);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            Iterator<ViewTransition> it2 = this.viewTransitions.iterator();
            while (it2.hasNext()) {
                ViewTransition next = it2.next();
                if (next.supports(action)) {
                    for (View view : this.mRelatedViews) {
                        if (next.matchesView(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x2, (int) y2)) {
                                next.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
                            }
                            next = next;
                        }
                    }
                }
            }
        }
    }

    public void viewTransition(int i2, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        ViewTransition viewTransition = null;
        for (ViewTransition viewTransition2 : this.viewTransitions) {
            if (viewTransition2.getId() == i2) {
                for (View view : viewArr) {
                    if (viewTransition2.checkTags(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    viewTransition(viewTransition2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                viewTransition = viewTransition2;
            }
        }
        if (viewTransition == null) {
            Log.e(this.TAG, " Could not find ViewTransition");
        }
    }
}
