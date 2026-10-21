package android.transition;

import android.accessibilityservice.c;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class TransitionSet extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    int mCurrentListeners;
    private boolean mPlayTogether;
    boolean mStarted;
    ArrayList<Transition> mTransitions;

    public static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        public TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
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

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.start();
            this.mTransitionSet.mStarted = true;
        }
    }

    public TransitionSet() {
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
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
        if (isValidTarget(transitionValues.view)) {
            for (Transition transition : this.mTransitions) {
                if (transition.isValidTarget(transitionValues.view)) {
                    transition.captureEndValues(transitionValues);
                    transitionValues.targetedTransitions.add(transition);
                }
            }
        }
    }

    @Override // android.transition.Transition
    public void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).capturePropagationValues(transitionValues);
        }
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            for (Transition transition : this.mTransitions) {
                if (transition.isValidTarget(transitionValues.view)) {
                    transition.captureStartValues(transitionValues);
                    transitionValues.targetedTransitions.add(transition);
                }
            }
        }
    }

    @Override // android.transition.Transition
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = this.mTransitions.get(i2);
            if (startDelay > 0 && (this.mPlayTogether || i2 == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @Override // android.transition.Transition
    public Transition excludeTarget(View view, boolean z2) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).excludeTarget(view, z2);
        }
        return super.excludeTarget(view, z2);
    }

    @Override // android.transition.Transition
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).forceToEnd(viewGroup);
        }
    }

    public int getOrdering() {
        return !this.mPlayTogether ? 1 : 0;
    }

    public Transition getTransitionAt(int i2) {
        if (i2 < 0 || i2 >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(i2);
    }

    public int getTransitionCount() {
        return this.mTransitions.size();
    }

    @Override // android.transition.Transition
    public void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).pause(view);
        }
    }

    public TransitionSet removeTransition(Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    @Override // android.transition.Transition
    public void resume(View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).resume(view);
        }
    }

    @Override // android.transition.Transition
    public void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        int size = this.mTransitions.size();
        if (this.mPlayTogether) {
            for (int i2 = 0; i2 < size; i2++) {
                this.mTransitions.get(i2).runAnimators();
            }
            return;
        }
        for (int i3 = 1; i3 < size; i3++) {
            Transition transition = this.mTransitions.get(i3 - 1);
            final Transition transition2 = this.mTransitions.get(i3);
            transition.addListener(new TransitionListenerAdapter() { // from class: android.transition.TransitionSet.1
                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
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

    @Override // android.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).setEpicenterCallback(epicenterCallback);
        }
    }

    public TransitionSet setOrdering(int i2) {
        if (i2 == 0) {
            this.mPlayTogether = true;
        } else {
            if (i2 != 1) {
                throw new AndroidRuntimeException(c.d("Invalid parameter for TransitionSet ordering: ", i2));
            }
            this.mPlayTogether = false;
        }
        return this;
    }

    @Override // android.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).setPathMotion(pathMotion);
        }
    }

    @Override // android.transition.Transition
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTransitions.get(i2).setPropagation(transitionPropagation);
        }
    }

    @Override // android.transition.Transition
    public String toString(String str) {
        String string = super.toString(str);
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            StringBuilder sbU = c.u(string, "\n");
            sbU.append(this.mTransitions.get(i2).toString(str + "  "));
            string = sbU.toString();
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
        ArrayList<Transition> arrayList;
        super.setDuration(j2);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
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
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public TransitionSet mo27clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo27clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionSet.addTransition(this.mTransitions.get(i2).mo27clone());
        }
        return transitionSet;
    }

    @Override // android.transition.Transition
    public Transition excludeTarget(String str, boolean z2) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).excludeTarget(str, z2);
        }
        return super.excludeTarget(str, z2);
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TransitionSet);
        setOrdering(typedArrayObtainStyledAttributes.getInt(0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(View view) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(int i2) {
        for (int i3 = 0; i3 < this.mTransitions.size(); i3++) {
            this.mTransitions.get(i3).removeTarget(i2);
        }
        return (TransitionSet) super.removeTarget(i2);
    }

    @Override // android.transition.Transition
    public Transition excludeTarget(int i2, boolean z2) {
        for (int i3 = 0; i3 < this.mTransitions.size(); i3++) {
            this.mTransitions.get(i3).excludeTarget(i2, z2);
        }
        return super.excludeTarget(i2, z2);
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(int i2) {
        for (int i3 = 0; i3 < this.mTransitions.size(); i3++) {
            this.mTransitions.get(i3).addTarget(i2);
        }
        return (TransitionSet) super.addTarget(i2);
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(View view) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // android.transition.Transition
    public Transition excludeTarget(Class cls, boolean z2) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).excludeTarget(cls, z2);
        }
        return super.excludeTarget(cls, z2);
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(String str) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(Class cls) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // android.transition.Transition
    public TransitionSet addTarget(Class cls) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // android.transition.Transition
    public TransitionSet removeTarget(String str) {
        for (int i2 = 0; i2 < this.mTransitions.size(); i2++) {
            this.mTransitions.get(i2).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }
}
