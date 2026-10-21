package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.net.ProxyProperties;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    public long mStartDelay = -1;
    public long mDuration = -1;
    public TimeInterpolator mInterpolator = null;
    public ArrayList<Integer> mTargetIds = new ArrayList<>();
    public ArrayList<View> mTargets = new ArrayList<>();
    public ArrayList<Integer> mTargetIdExcludes = null;
    public ArrayList<View> mTargetExcludes = null;
    public ArrayList<Class> mTargetTypeExcludes = null;
    public ArrayList<Integer> mTargetIdChildExcludes = null;
    public ArrayList<View> mTargetChildExcludes = null;
    public ArrayList<Class> mTargetTypeChildExcludes = null;
    private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
    private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
    public TransitionSet mParent = null;
    public ViewGroup mSceneRoot = null;
    public boolean mCanRemoveViews = false;
    private ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    public int mNumInstances = 0;
    public boolean mPaused = false;
    private boolean mEnded = false;
    public ArrayList<TransitionListener> mListeners = null;
    public ArrayList<Animator> mAnimators = new ArrayList<>();

    public static class AnimationInfo {
        public String name;
        public TransitionValues values;
        public View view;

        public AnimationInfo(View view, String str, TransitionValues transitionValues) {
            this.view = view;
            this.name = str;
            this.values = transitionValues;
        }
    }

    public static class ArrayListManager {
        private ArrayListManager() {
        }

        public static <T> ArrayList<T> add(ArrayList<T> arrayList, T t2) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t2)) {
                arrayList.add(t2);
            }
            return arrayList;
        }

        public static <T> ArrayList<T> remove(ArrayList<T> arrayList, T t2) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t2);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    public interface TransitionListener {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionPause(Transition transition);

        void onTransitionResume(Transition transition);

        void onTransitionStart(Transition transition);
    }

    public static class TransitionListenerAdapter implements TransitionListener {
        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
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
    }

    private void captureHierarchy(View view, boolean z2) {
        if (view == null) {
            return;
        }
        boolean z3 = view.getParent() instanceof ListView;
        if (!z3 || ((ListView) view.getParent()).getAdapter().hasStableIds()) {
            int id = -1;
            long itemIdAtPosition = -1;
            if (z3) {
                ListView listView = (ListView) view.getParent();
                itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                view.setHasTransientState(true);
            } else {
                id = view.getId();
            }
            ArrayList<Integer> arrayList = this.mTargetIdExcludes;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.mTargetExcludes;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class> arrayList3 = this.mTargetTypeExcludes;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (this.mTargetTypeExcludes.get(i2).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = view;
                    if (z2) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    if (z2) {
                        if (z3) {
                            this.mStartValues.itemIdValues.put(itemIdAtPosition, transitionValues);
                        } else {
                            this.mStartValues.viewValues.put(view, transitionValues);
                            if (id >= 0) {
                                this.mStartValues.idValues.put(id, transitionValues);
                            }
                        }
                    } else if (z3) {
                        this.mEndValues.itemIdValues.put(itemIdAtPosition, transitionValues);
                    } else {
                        this.mEndValues.viewValues.put(view, transitionValues);
                        if (id >= 0) {
                            this.mEndValues.idValues.put(id, transitionValues);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class> arrayList6 = this.mTargetTypeChildExcludes;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    for (int i3 = 0; i3 < size2; i3++) {
                                        if (this.mTargetTypeChildExcludes.get(i3).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                    captureHierarchy(viewGroup.getChildAt(i4), z2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i2, boolean z2) {
        if (i2 > 0) {
            return z2 ? ArrayListManager.add(arrayList, Integer.valueOf(i2)) : ArrayListManager.remove(arrayList, Integer.valueOf(i2));
        }
        return arrayList;
    }

    private ArrayList<Class> excludeType(ArrayList<Class> arrayList, Class cls, boolean z2) {
        if (cls != null) {
            return z2 ? ArrayListManager.add(arrayList, cls) : ArrayListManager.remove(arrayList, cls);
        }
        return arrayList;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z2) {
        if (view != null) {
            return z2 ? ArrayListManager.add(arrayList, view) : ArrayListManager.remove(arrayList, view);
        }
        return arrayList;
    }

    private static ArrayMap<Animator, AnimationInfo> getRunningAnimators() {
        ArrayMap<Animator, AnimationInfo> arrayMap = sRunningAnimators.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<Animator, AnimationInfo> arrayMap2 = new ArrayMap<>();
        sRunningAnimators.set(arrayMap2);
        return arrayMap2;
    }

    private void runAnimator(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: android.transition.Transition.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    Transition.this.mCurrentAnimators.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Transition.this.mCurrentAnimators.add(animator2);
                }
            });
            animate(animator);
        }
    }

    public Transition addListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(transitionListener);
        return this;
    }

    public Transition addTarget(int i2) {
        if (i2 > 0) {
            this.mTargetIds.add(Integer.valueOf(i2));
        }
        return this;
    }

    public void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.transition.Transition.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.end();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    public void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((TransitionListener) arrayList2.get(i2)).onTransitionCancel(this);
        }
    }

    public abstract void captureEndValues(TransitionValues transitionValues);

    public abstract void captureStartValues(TransitionValues transitionValues);

    public void captureValues(ViewGroup viewGroup, boolean z2) {
        clearValues(z2);
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            captureHierarchy(viewGroup, z2);
            return;
        }
        if (this.mTargetIds.size() > 0) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                int iIntValue = this.mTargetIds.get(i2).intValue();
                View viewFindViewById = viewGroup.findViewById(iIntValue);
                if (viewFindViewById != null) {
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = viewFindViewById;
                    if (z2) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    if (z2) {
                        this.mStartValues.viewValues.put(viewFindViewById, transitionValues);
                        if (iIntValue >= 0) {
                            this.mStartValues.idValues.put(iIntValue, transitionValues);
                        }
                    } else {
                        this.mEndValues.viewValues.put(viewFindViewById, transitionValues);
                        if (iIntValue >= 0) {
                            this.mEndValues.idValues.put(iIntValue, transitionValues);
                        }
                    }
                }
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                View view = this.mTargets.get(i3);
                if (view != null) {
                    TransitionValues transitionValues2 = new TransitionValues();
                    transitionValues2.view = view;
                    if (z2) {
                        captureStartValues(transitionValues2);
                    } else {
                        captureEndValues(transitionValues2);
                    }
                    if (z2) {
                        this.mStartValues.viewValues.put(view, transitionValues2);
                    } else {
                        this.mEndValues.viewValues.put(view, transitionValues2);
                    }
                }
            }
        }
    }

    public void clearValues(boolean z2) {
        if (z2) {
            this.mStartValues.viewValues.clear();
            this.mStartValues.idValues.clear();
            this.mStartValues.itemIdValues.clear();
        } else {
            this.mEndValues.viewValues.clear();
            this.mEndValues.idValues.clear();
            this.mEndValues.itemIdValues.clear();
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x028f  */
    /* JADX WARN: Code duplicated, block: B:146:0x02a0 A[SYNTHETIC] */
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        View view;
        TransitionValues transitionValues;
        TransitionValuesMaps transitionValuesMaps3 = transitionValuesMaps2;
        ArrayMap arrayMap = new ArrayMap(transitionValuesMaps3.viewValues);
        SparseArray sparseArray = new SparseArray(transitionValuesMaps3.idValues.size());
        for (int i2 = 0; i2 < transitionValuesMaps3.idValues.size(); i2++) {
            sparseArray.put(transitionValuesMaps3.idValues.keyAt(i2), transitionValuesMaps3.idValues.valueAt(i2));
        }
        LongSparseArray longSparseArray = new LongSparseArray(transitionValuesMaps3.itemIdValues.size());
        for (int i3 = 0; i3 < transitionValuesMaps3.itemIdValues.size(); i3++) {
            longSparseArray.put(transitionValuesMaps3.itemIdValues.keyAt(i3), transitionValuesMaps3.itemIdValues.valueAt(i3));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<View> it = transitionValuesMaps.viewValues.keySet().iterator();
        while (true) {
            TransitionValues transitionValues2 = null;
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            if (next.getParent() instanceof ListView) {
                ListView listView = (ListView) next.getParent();
                if (listView.getAdapter().hasStableIds()) {
                    long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(next));
                    TransitionValues transitionValues3 = transitionValuesMaps.itemIdValues.get(itemIdAtPosition);
                    longSparseArray.remove(itemIdAtPosition);
                    arrayList.add(transitionValues3);
                    arrayList2.add(null);
                }
            } else {
                int id = next.getId();
                TransitionValues transitionValues4 = transitionValuesMaps.viewValues.get(next) != null ? transitionValuesMaps.viewValues.get(next) : transitionValuesMaps.idValues.get(id);
                if (transitionValuesMaps3.viewValues.get(next) != null) {
                    transitionValues2 = transitionValuesMaps3.viewValues.get(next);
                    arrayMap.remove(next);
                } else if (id != -1) {
                    TransitionValues transitionValues5 = transitionValuesMaps3.idValues.get(id);
                    for (View view2 : arrayMap.keySet()) {
                        if (view2.getId() == id) {
                            transitionValues2 = view2;
                        }
                    }
                    if (transitionValues2 != null) {
                        arrayMap.remove(transitionValues2);
                    }
                    transitionValues2 = transitionValues5;
                }
                sparseArray.remove(id);
                if (isValidTarget(next, id)) {
                    arrayList.add(transitionValues4);
                    arrayList2.add(transitionValues2);
                }
            }
        }
        int size = transitionValuesMaps.itemIdValues.size();
        for (int i4 = 0; i4 < size; i4++) {
            long jKeyAt = transitionValuesMaps.itemIdValues.keyAt(i4);
            if (isValidTarget(null, jKeyAt)) {
                TransitionValues transitionValues6 = transitionValuesMaps.itemIdValues.get(jKeyAt);
                TransitionValues transitionValues7 = transitionValuesMaps3.itemIdValues.get(jKeyAt);
                longSparseArray.remove(jKeyAt);
                arrayList.add(transitionValues6);
                arrayList2.add(transitionValues7);
            }
        }
        for (View view3 : arrayMap.keySet()) {
            int id2 = view3.getId();
            if (isValidTarget(view3, id2)) {
                TransitionValues transitionValues8 = transitionValuesMaps.viewValues.get(view3) != null ? transitionValuesMaps.viewValues.get(view3) : transitionValuesMaps.idValues.get(id2);
                TransitionValues transitionValues9 = (TransitionValues) arrayMap.get(view3);
                sparseArray.remove(id2);
                arrayList.add(transitionValues8);
                arrayList2.add(transitionValues9);
            }
        }
        int size2 = sparseArray.size();
        for (int i5 = 0; i5 < size2; i5++) {
            int iKeyAt = sparseArray.keyAt(i5);
            if (isValidTarget(null, iKeyAt)) {
                TransitionValues transitionValues10 = transitionValuesMaps.idValues.get(iKeyAt);
                TransitionValues transitionValues11 = (TransitionValues) sparseArray.get(iKeyAt);
                arrayList.add(transitionValues10);
                arrayList2.add(transitionValues11);
            }
        }
        int size3 = longSparseArray.size();
        for (int i6 = 0; i6 < size3; i6++) {
            long jKeyAt2 = longSparseArray.keyAt(i6);
            TransitionValues transitionValues12 = transitionValuesMaps.itemIdValues.get(jKeyAt2);
            TransitionValues transitionValues13 = (TransitionValues) longSparseArray.get(jKeyAt2);
            arrayList.add(transitionValues12);
            arrayList2.add(transitionValues13);
        }
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int i7 = 0;
        while (i7 < arrayList.size()) {
            TransitionValues transitionValues14 = (TransitionValues) arrayList.get(i7);
            TransitionValues transitionValues15 = (TransitionValues) arrayList2.get(i7);
            if ((transitionValues14 != null || transitionValues15 != null) && (transitionValues14 == null || !transitionValues14.equals(transitionValues15))) {
                Animator animatorCreateAnimator = createAnimator(viewGroup, transitionValues14, transitionValues15);
                if (animatorCreateAnimator != null) {
                    if (transitionValues15 != null) {
                        view = transitionValues15.view;
                        String[] transitionProperties = getTransitionProperties();
                        if (view != null && transitionProperties != null && transitionProperties.length > 0) {
                            transitionValues = new TransitionValues();
                            transitionValues.view = view;
                            TransitionValues transitionValues16 = transitionValuesMaps3.viewValues.get(view);
                            if (transitionValues16 != null) {
                                for (int i8 = 0; i8 < transitionProperties.length; i8++) {
                                    transitionValues.values.put(transitionProperties[i8], transitionValues16.values.get(transitionProperties[i8]));
                                }
                            }
                            int size4 = runningAnimators.size();
                            for (int i9 = 0; i9 < size4; i9++) {
                                AnimationInfo animationInfo = runningAnimators.get(runningAnimators.keyAt(i9));
                                if (animationInfo.values != null && animationInfo.view == view && (((animationInfo.name == null && getName() == null) || animationInfo.name.equals(getName())) && animationInfo.values.equals(transitionValues))) {
                                    animatorCreateAnimator = null;
                                    break;
                                }
                            }
                        }
                        if (animatorCreateAnimator != null) {
                            runningAnimators.put(animatorCreateAnimator, new AnimationInfo(view, getName(), transitionValues));
                            this.mAnimators.add(animatorCreateAnimator);
                        }
                    } else {
                        view = transitionValues14 != null ? transitionValues14.view : null;
                    }
                    transitionValues = null;
                    if (animatorCreateAnimator != null) {
                        runningAnimators.put(animatorCreateAnimator, new AnimationInfo(view, getName(), transitionValues));
                        this.mAnimators.add(animatorCreateAnimator);
                    }
                }
            }
            i7++;
            transitionValuesMaps3 = transitionValuesMaps2;
        }
    }

    public void end() {
        int i2 = this.mNumInstances - 1;
        this.mNumInstances = i2;
        if (i2 == 0) {
            ArrayList<TransitionListener> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((TransitionListener) arrayList2.get(i3)).onTransitionEnd(this);
                }
            }
            for (int i4 = 0; i4 < this.mStartValues.itemIdValues.size(); i4++) {
                View view = this.mStartValues.itemIdValues.valueAt(i4).view;
                if (view.hasTransientState()) {
                    view.setHasTransientState(false);
                }
            }
            for (int i5 = 0; i5 < this.mEndValues.itemIdValues.size(); i5++) {
                View view2 = this.mEndValues.itemIdValues.valueAt(i5).view;
                if (view2.hasTransientState()) {
                    view2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    public Transition excludeChildren(int i2, boolean z2) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i2, z2);
        return this;
    }

    public Transition excludeTarget(int i2, boolean z2) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i2, z2);
        return this;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public String getName() {
        return this.mName;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public TransitionValues getTransitionValues(View view, boolean z2) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z2);
        }
        TransitionValuesMaps transitionValuesMaps = z2 ? this.mStartValues : this.mEndValues;
        TransitionValues transitionValues = transitionValuesMaps.viewValues.get(view);
        if (transitionValues != null) {
            return transitionValues;
        }
        int id = view.getId();
        if (id >= 0) {
            transitionValues = transitionValuesMaps.idValues.get(id);
        }
        if (transitionValues != null || !(view.getParent() instanceof ListView)) {
            return transitionValues;
        }
        ListView listView = (ListView) view.getParent();
        return transitionValuesMaps.itemIdValues.get(listView.getItemIdAtPosition(listView.getPositionForView(view)));
    }

    public boolean isValidTarget(View view, long j2) {
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList != null && arrayList.contains(Long.valueOf(j2))) {
            return false;
        }
        ArrayList<View> arrayList2 = this.mTargetExcludes;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList3 = this.mTargetTypeExcludes;
        if (arrayList3 != null && view != null) {
            int size = arrayList3.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mTargetTypeExcludes.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetIds.size() == 0 && this.mTargets.size() == 0) {
            return true;
        }
        if (this.mTargetIds.size() > 0) {
            for (int i3 = 0; i3 < this.mTargetIds.size(); i3++) {
                if (this.mTargetIds.get(i3).intValue() == j2) {
                    return true;
                }
            }
        }
        if (view != null && this.mTargets.size() > 0) {
            for (int i4 = 0; i4 < this.mTargets.size(); i4++) {
                if (this.mTargets.get(i4) == view) {
                    return true;
                }
            }
        }
        return false;
    }

    public void pause() {
        if (this.mEnded) {
            return;
        }
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        for (int size = runningAnimators.size() - 1; size >= 0; size--) {
            runningAnimators.keyAt(size).pause();
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((TransitionListener) arrayList2.get(i2)).onTransitionPause(this);
            }
        }
        this.mPaused = true;
    }

    public void playTransition(ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        View view;
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        for (int size = runningAnimators.size() - 1; size >= 0; size--) {
            Animator animatorKeyAt = runningAnimators.keyAt(size);
            if (animatorKeyAt != null && (animationInfo = runningAnimators.get(animatorKeyAt)) != null && (view = animationInfo.view) != null && view.getContext() == viewGroup.getContext()) {
                boolean z2 = false;
                TransitionValues transitionValues = animationInfo.values;
                View view2 = animationInfo.view;
                ArrayMap<View, TransitionValues> arrayMap = this.mEndValues.viewValues;
                TransitionValues transitionValues2 = arrayMap != null ? arrayMap.get(view2) : null;
                if (transitionValues2 == null) {
                    transitionValues2 = this.mEndValues.idValues.get(view2.getId());
                }
                if (transitionValues != null && transitionValues2 != null) {
                    for (String str : transitionValues.values.keySet()) {
                        Object obj = transitionValues.values.get(str);
                        Object obj2 = transitionValues2.values.get(str);
                        if (obj != null && obj2 != null && !obj.equals(obj2)) {
                            z2 = true;
                            break;
                        }
                    }
                }
                if (z2) {
                    if (animatorKeyAt.isRunning() || animatorKeyAt.isStarted()) {
                        animatorKeyAt.cancel();
                    } else {
                        runningAnimators.remove(animatorKeyAt);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues);
        runAnimators();
    }

    public Transition removeListener(TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(transitionListener);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public Transition removeTarget(int i2) {
        if (i2 > 0) {
            this.mTargetIds.remove(i2);
        }
        return this;
    }

    public void resume() {
        if (this.mPaused) {
            if (!this.mEnded) {
                ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
                for (int size = runningAnimators.size() - 1; size >= 0; size--) {
                    runningAnimators.keyAt(size).resume();
                }
                ArrayList<TransitionListener> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((TransitionListener) arrayList2.get(i2)).onTransitionResume(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    public void runAnimators() {
        start();
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        for (Animator animator : this.mAnimators) {
            if (runningAnimators.containsKey(animator)) {
                start();
                runAnimator(animator, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    public void setCanRemoveViews(boolean z2) {
        this.mCanRemoveViews = z2;
    }

    public Transition setDuration(long j2) {
        this.mDuration = j2;
        return this;
    }

    public Transition setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public Transition setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public Transition setStartDelay(long j2) {
        this.mStartDelay = j2;
        return this;
    }

    public void start() {
        if (this.mNumInstances == 0) {
            ArrayList<TransitionListener> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((TransitionListener) arrayList2.get(i2)).onTransitionStart(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString(ProxyProperties.LOCAL_EXCL_LIST);
    }

    public Transition addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo12clone() {
        Transition transition = null;
        try {
            Transition transition2 = (Transition) super.clone();
            try {
                transition2.mAnimators = new ArrayList<>();
                transition2.mStartValues = new TransitionValuesMaps();
                transition2.mEndValues = new TransitionValuesMaps();
                return transition2;
            } catch (CloneNotSupportedException unused) {
                transition = transition2;
                return transition;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public Transition excludeChildren(View view, boolean z2) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z2);
        return this;
    }

    public Transition excludeTarget(View view, boolean z2) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z2);
        return this;
    }

    public Transition removeTarget(View view) {
        if (view != null) {
            this.mTargets.remove(view);
        }
        return this;
    }

    public String toString(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.mDuration != -1) {
            str2 = str2 + "dur(" + this.mDuration + ") ";
        }
        if (this.mStartDelay != -1) {
            str2 = str2 + "dly(" + this.mStartDelay + ") ";
        }
        if (this.mInterpolator != null) {
            str2 = str2 + "interp(" + this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargetIds.get(i2);
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                if (i3 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargets.get(i3);
            }
        }
        return str3 + ")";
    }

    public Transition excludeChildren(Class cls, boolean z2) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z2);
        return this;
    }

    public Transition excludeTarget(Class cls, boolean z2) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z2);
        return this;
    }
}
