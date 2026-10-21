package android.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TransitionSet extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    public int mCurrentListeners;
    public ArrayList<Transition> mTransitions = new ArrayList<>();
    private boolean mPlayTogether = true;
    public boolean mStarted = false;

    public static class TransitionSetListener extends Transition.TransitionListenerAdapter {
        public TransitionSet mTransitionSet;

        public TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            int i2 = transitionSet.mCurrentListeners - 1;
            transitionSet.mCurrentListeners = i2;
            if (i2 == 0) {
                transitionSet.mStarted = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }

        @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.start();
            this.mTransitionSet.mStarted = true;
        }
    }

    private void setupStartEndListeners() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    public TransitionSet addTransition(Transition transition) {
        if (transition != null) {
            this.mTransitions.add(transition);
            transition.mParent = this;
            long j2 = this.mDuration;
            if (j2 >= 0) {
                transition.setDuration(j2);
            }
        }
        return this;
    }

    @Override // android.transition.Transition
    public void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).cancel();
        }
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        long id = transitionValues.view.getId();
        if (isValidTarget(transitionValues.view, id)) {
            for (Transition transition : this.mTransitions) {
                if (transition.isValidTarget(transitionValues.view, id)) {
                    transition.captureEndValues(transitionValues);
                }
            }
        }
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        long id = transitionValues.view.getId();
        if (isValidTarget(transitionValues.view, id)) {
            for (Transition transition : this.mTransitions) {
                if (transition.isValidTarget(transitionValues.view, id)) {
                    transition.captureStartValues(transitionValues);
                }
            }
        }
    }

    @Override // android.transition.Transition
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2);
        }
    }

    public int getOrdering() {
        return !this.mPlayTogether ? 1 : 0;
    }

    @Override // android.transition.Transition
    public void pause() {
        super.pause();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).pause();
        }
    }

    public TransitionSet removeTransition(Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    @Override // android.transition.Transition
    public void resume() {
        super.resume();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).resume();
        }
    }

    @Override // android.transition.Transition
    public void runAnimators() {
        setupStartEndListeners();
        if (this.mPlayTogether) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int i2 = 1; i2 < this.mTransitions.size(); i2++) {
            Transition transition = this.mTransitions.get(i2 - 1);
            final Transition transition2 = this.mTransitions.get(i2);
            transition.addListener(new Transition.TransitionListenerAdapter() { // from class: android.transition.TransitionSet.1
                @Override // android.transition.Transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition3) {
                    transition2.runAnimators();
                    transition3.removeListener(this);
                }
            });
        }
        Transition transition3 = this.mTransitions.get(0);
        if (transition3 != null) {
            transition3.runAnimators();
        }
    }

    @Override // android.transition.Transition
    public void setCanRemoveViews(boolean z2) {
        super.setCanRemoveViews(z2);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).setCanRemoveViews(z2);
        }
    }

    public TransitionSet setOrdering(int i2) {
        if (i2 == 0) {
            this.mPlayTogether = true;
        } else {
            if (i2 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i2);
            }
            this.mPlayTogether = false;
        }
        return this;
    }

    @Override // android.transition.Transition
    public String toString(String str) {
        String string = super.toString(str);
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append("\n");
            sb.append(this.mTransitions.get(i2).toString(str + "  "));
            string = sb.toString();
        }
        return string;
    }

    @Override // android.transition.Transition
    public TransitionSet addListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // android.transition.Transition
    public TransitionSet removeListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public TransitionSet setDuration(long j2) {
        super.setDuration(j2);
        if (this.mDuration >= 0) {
            int size = this.mTransitions.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mTransitions.get(i2).setDuration(j2);
            }
        }
        return this;
    }

    @Override // android.transition.Transition
    public TransitionSet setInterpolator(TimeInterpolator timeInterpolator) {
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override // android.transition.Transition
    public TransitionSet setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override // android.transition.Transition
    public TransitionSet setStartDelay(long j2) {
        return (TransitionSet) super.setStartDelay(j2);
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(View view) {
        return (TransitionSet) super.addTarget(view);
    }

    @Override // android.transition.Transition
    /* JADX INFO: renamed from: clone */
    public TransitionSet mo12clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo12clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionSet.addTransition(this.mTransitions.get(i2).mo12clone());
        }
        return transitionSet;
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(int i2) {
        return (TransitionSet) super.removeTarget(i2);
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(int i2) {
        return (TransitionSet) super.addTarget(i2);
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(View view) {
        return (TransitionSet) super.removeTarget(view);
    }
}
