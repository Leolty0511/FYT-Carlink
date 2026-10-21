package android.transition;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.app.m;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseLongArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Transition implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private static final String MATCH_VIEW_NAME_STR = "viewName";
    ArrayList<TransitionValues> mEndValuesList;
    EpicenterCallback mEpicenterCallback;
    ArrayMap<String, String> mNameOverrides;
    TransitionPropagation mPropagation;
    ArrayList<TransitionValues> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final PathMotion STRAIGHT_PATH_MOTION = new PathMotion() { // from class: android.transition.Transition.1
        @Override // android.transition.PathMotion
        public Path getPath(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    };
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    long mStartDelay = -1;
    long mDuration = -1;
    TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    ArrayList<String> mTargetNames = null;
    ArrayList<Class> mTargetTypes = null;
    ArrayList<Integer> mTargetIdExcludes = null;
    ArrayList<View> mTargetExcludes = null;
    ArrayList<Class> mTargetTypeExcludes = null;
    ArrayList<String> mTargetNameExcludes = null;
    ArrayList<Integer> mTargetIdChildExcludes = null;
    ArrayList<View> mTargetChildExcludes = null;
    ArrayList<Class> mTargetTypeChildExcludes = null;
    private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
    private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
    TransitionSet mParent = null;
    int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    ViewGroup mSceneRoot = null;
    boolean mCanRemoveViews = false;
    private ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    int mNumInstances = 0;
    boolean mPaused = false;
    private boolean mEnded = false;
    ArrayList<TransitionListener> mListeners = null;
    ArrayList<Animator> mAnimators = new ArrayList<>();
    PathMotion mPathMotion = STRAIGHT_PATH_MOTION;

    public static class AnimationInfo {
        String name;
        Transition transition;
        TransitionValues values;
        public View view;
        WindowId windowId;

        public AnimationInfo(View view, String str, Transition transition, WindowId windowId, TransitionValues transitionValues) {
            this.view = view;
            this.name = str;
            this.values = transitionValues;
            this.windowId = windowId;
            this.transition = transition;
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

    public static abstract class EpicenterCallback {
        public abstract Rect onGetEpicenter(Transition transition);
    }

    public interface TransitionListener {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionPause(Transition transition);

        void onTransitionResume(Transition transition);

        void onTransitionStart(Transition transition);
    }

    public Transition() {
    }

    private void addUnmatched(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i2 = 0; i2 < arrayMap.size(); i2++) {
            TransitionValues transitionValuesValueAt = arrayMap.valueAt(i2);
            if (isValidTarget(transitionValuesValueAt.view)) {
                this.mStartValuesList.add(transitionValuesValueAt);
                this.mEndValuesList.add(null);
            }
        }
        for (int i3 = 0; i3 < arrayMap2.size(); i3++) {
            TransitionValues transitionValuesValueAt2 = arrayMap2.valueAt(i3);
            if (isValidTarget(transitionValuesValueAt2.view)) {
                this.mEndValuesList.add(transitionValuesValueAt2);
                this.mStartValuesList.add(null);
            }
        }
    }

    public static void addViewValues(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.viewValues.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (transitionValuesMaps.idValues.indexOfKey(id) >= 0) {
                transitionValuesMaps.idValues.put(id, null);
            } else {
                transitionValuesMaps.idValues.put(id, view);
            }
        }
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (transitionValuesMaps.nameValues.containsKey(transitionName)) {
                transitionValuesMaps.nameValues.put(transitionName, null);
            } else {
                transitionValuesMaps.nameValues.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.itemIdValues.indexOfKey(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    transitionValuesMaps.itemIdValues.put(itemIdAtPosition, view);
                    return;
                }
                View view2 = transitionValuesMaps.itemIdValues.get(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    transitionValuesMaps.itemIdValues.put(itemIdAtPosition, null);
                }
            }
        }
    }

    private static boolean alreadyContains(int[] iArr, int i2) {
        int i3 = iArr[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            if (iArr[i4] == i3) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z2) {
        if (view == null) {
            return;
        }
        int id = view.getId();
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
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = view;
                    if (z2) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.targetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z2) {
                        addViewValues(this.mStartValues, view, transitionValues);
                    } else {
                        addViewValues(this.mEndValues, view, transitionValues);
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

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t2, boolean z2) {
        if (t2 != null) {
            return z2 ? ArrayListManager.add(arrayList, t2) : ArrayListManager.remove(arrayList, t2);
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

    private static boolean isValidMatch(int i2) {
        return i2 >= 1 && i2 <= 4;
    }

    private static boolean isValueChanged(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        if (transitionValues.values.containsKey(str) != transitionValues2.values.containsKey(str)) {
            return false;
        }
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void matchIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewValueAt = sparseArray.valueAt(i2);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i2))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchInstances(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues transitionValuesRemove;
        View view;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View viewKeyAt = arrayMap.keyAt(size);
            if (viewKeyAt != null && isValidTarget(viewKeyAt) && (transitionValuesRemove = arrayMap2.remove(viewKeyAt)) != null && (view = transitionValuesRemove.view) != null && isValidTarget(view)) {
                this.mStartValuesList.add(arrayMap.removeAt(size));
                this.mEndValuesList.add(transitionValuesRemove);
            }
        }
    }

    private void matchItemIds(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewValueAt = longSparseArray.valueAt(i2);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i2))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchNames(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewValueAt = arrayMap3.valueAt(i2);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i2))) != null && isValidTarget(view)) {
                TransitionValues transitionValues = arrayMap.get(viewValueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.mStartValuesList.add(transitionValues);
                    this.mEndValuesList.add(transitionValues2);
                    arrayMap.remove(viewValueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.viewValues);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.viewValues);
        int i2 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i2 >= iArr.length) {
                addUnmatched(arrayMap, arrayMap2);
                return;
            }
            int i3 = iArr[i2];
            if (i3 == 1) {
                matchInstances(arrayMap, arrayMap2);
            } else if (i3 == 2) {
                matchNames(arrayMap, arrayMap2, transitionValuesMaps.nameValues, transitionValuesMaps2.nameValues);
            } else if (i3 == 3) {
                matchIds(arrayMap, arrayMap2, transitionValuesMaps.idValues, transitionValuesMaps2.idValues);
            } else if (i3 == 4) {
                matchItemIds(arrayMap, arrayMap2, transitionValuesMaps.itemIdValues, transitionValuesMaps2.itemIdValues);
            }
            i2++;
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(strTrim)) {
                iArr[i2] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(strTrim)) {
                iArr[i2] = 1;
            } else if ("name".equalsIgnoreCase(strTrim)) {
                iArr[i2] = 2;
            } else if (MATCH_VIEW_NAME_STR.equalsIgnoreCase(strTrim)) {
                iArr[i2] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i2] = 4;
            } else {
                if (!strTrim.isEmpty()) {
                    throw new InflateException(c.k("Unknown match type in matchOrder: '", strTrim, "'"));
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                i2--;
                iArr = iArr2;
            }
            i2++;
        }
        return iArr;
    }

    private void runAnimator(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: android.transition.Transition.2
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
            animator.setStartDelay(animator.getStartDelay() + getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.transition.Transition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.end();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    public boolean canRemoveViews() {
        return this.mCanRemoveViews;
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

    public void capturePropagationValues(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.mPropagation == null || transitionValues.values.isEmpty() || (propagationProperties = this.mPropagation.getPropagationProperties()) == null) {
            return;
        }
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= propagationProperties.length) {
                z2 = true;
                break;
            } else if (!transitionValues.values.containsKey(propagationProperties[i2])) {
                break;
            } else {
                i2++;
            }
        }
        if (z2) {
            return;
        }
        this.mPropagation.captureValues(transitionValues);
    }

    public abstract void captureStartValues(TransitionValues transitionValues);

    public void captureValues(ViewGroup viewGroup, boolean z2) {
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        ArrayMap<String, String> arrayMap;
        clearValues(z2);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i2).intValue());
                if (viewFindViewById != null) {
                    TransitionValues transitionValues = new TransitionValues();
                    transitionValues.view = viewFindViewById;
                    if (z2) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.targetedTransitions.add(this);
                    capturePropagationValues(transitionValues);
                    if (z2) {
                        addViewValues(this.mStartValues, viewFindViewById, transitionValues);
                    } else {
                        addViewValues(this.mEndValues, viewFindViewById, transitionValues);
                    }
                }
            }
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                View view = this.mTargets.get(i3);
                TransitionValues transitionValues2 = new TransitionValues();
                transitionValues2.view = view;
                if (z2) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.targetedTransitions.add(this);
                capturePropagationValues(transitionValues2);
                if (z2) {
                    addViewValues(this.mStartValues, view, transitionValues2);
                } else {
                    addViewValues(this.mEndValues, view, transitionValues2);
                }
            }
        } else {
            captureHierarchy(viewGroup, z2);
        }
        if (z2 || (arrayMap = this.mNameOverrides) == null) {
            return;
        }
        int size = arrayMap.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList3.add(this.mStartValues.nameValues.remove(this.mNameOverrides.keyAt(i4)));
        }
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) arrayList3.get(i5);
            if (view2 != null) {
                this.mStartValues.nameValues.put(this.mNameOverrides.valueAt(i5), view2);
            }
        }
    }

    public void clearValues(boolean z2) {
        if (z2) {
            this.mStartValues.viewValues.clear();
            this.mStartValues.idValues.clear();
            this.mStartValues.itemIdValues.clear();
            this.mStartValues.nameValues.clear();
            this.mStartValuesList = null;
            return;
        }
        this.mEndValues.viewValues.clear();
        this.mEndValues.idValues.clear();
        this.mEndValues.itemIdValues.clear();
        this.mEndValues.nameValues.clear();
        this.mEndValuesList = null;
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048  */
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        Animator animatorCreateAnimator;
        int i2;
        View view;
        Animator animator;
        TransitionValues transitionValues;
        Animator animator2;
        TransitionValues transitionValues2;
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        this.mAnimators.size();
        SparseLongArray sparseLongArray = new SparseLongArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            TransitionValues transitionValues3 = arrayList.get(i3);
            TransitionValues transitionValues4 = arrayList2.get(i3);
            if (transitionValues3 != null && !transitionValues3.targetedTransitions.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.targetedTransitions.contains(this)) {
                transitionValues4 = null;
            }
            if (transitionValues3 == null && transitionValues4 == null) {
                i2 = size;
            } else if (!(transitionValues3 == null || transitionValues4 == null || isTransitionRequired(transitionValues3, transitionValues4)) || (animatorCreateAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4)) == null) {
                i2 = size;
            } else {
                if (transitionValues4 != null) {
                    view = transitionValues4.view;
                    String[] transitionProperties = getTransitionProperties();
                    if (view == null || transitionProperties == null || transitionProperties.length <= 0) {
                        i2 = size;
                        animator2 = animatorCreateAnimator;
                        transitionValues2 = null;
                    } else {
                        transitionValues2 = new TransitionValues();
                        transitionValues2.view = view;
                        i2 = size;
                        TransitionValues transitionValues5 = transitionValuesMaps2.viewValues.get(view);
                        if (transitionValues5 != null) {
                            int i4 = 0;
                            while (i4 < transitionProperties.length) {
                                Map<String, Object> map = transitionValues2.values;
                                String str = transitionProperties[i4];
                                map.put(str, transitionValues5.values.get(str));
                                i4++;
                                transitionProperties = transitionProperties;
                            }
                        }
                        int size2 = runningAnimators.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= size2) {
                                animator2 = animatorCreateAnimator;
                                break;
                            }
                            AnimationInfo animationInfo = runningAnimators.get(runningAnimators.keyAt(i5));
                            if (animationInfo.values != null && animationInfo.view == view && (((animationInfo.name == null && getName() == null) || animationInfo.name.equals(getName())) && animationInfo.values.equals(transitionValues2))) {
                                animator2 = null;
                                break;
                            }
                            i5++;
                        }
                    }
                    animator = animator2;
                    transitionValues = transitionValues2;
                } else {
                    i2 = size;
                    view = transitionValues3 != null ? transitionValues3.view : null;
                    animator = animatorCreateAnimator;
                    transitionValues = null;
                }
                if (animator != null) {
                    TransitionPropagation transitionPropagation = this.mPropagation;
                    if (transitionPropagation != null) {
                        long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues3, transitionValues4);
                        sparseLongArray.put(this.mAnimators.size(), startDelay);
                        jMin = Math.min(startDelay, jMin);
                    }
                    runningAnimators.put(animator, new AnimationInfo(view, getName(), this, viewGroup.getWindowId(), transitionValues));
                    this.mAnimators.add(animator);
                    jMin = jMin;
                }
            }
            i3++;
            size = i2;
        }
        if (sparseLongArray.size() != 0) {
            for (int i6 = 0; i6 < sparseLongArray.size(); i6++) {
                Animator animator3 = this.mAnimators.get(sparseLongArray.keyAt(i6));
                animator3.setStartDelay(animator3.getStartDelay() + (sparseLongArray.valueAt(i6) - jMin));
            }
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
                View viewValueAt = this.mStartValues.itemIdValues.valueAt(i4);
                if (viewValueAt != null) {
                    viewValueAt.setHasTransientState(false);
                }
            }
            for (int i5 = 0; i5 < this.mEndValues.itemIdValues.size(); i5++) {
                View viewValueAt2 = this.mEndValues.itemIdValues.valueAt(i5);
                if (viewValueAt2 != null) {
                    viewValueAt2.setHasTransientState(false);
                }
            }
            this.mEnded = true;
        }
    }

    public Transition excludeChildren(int i2, boolean z2) {
        if (i2 >= 0) {
            this.mTargetIdChildExcludes = excludeObject(this.mTargetIdChildExcludes, Integer.valueOf(i2), z2);
        }
        return this;
    }

    public Transition excludeTarget(int i2, boolean z2) {
        if (i2 >= 0) {
            this.mTargetIdExcludes = excludeObject(this.mTargetIdExcludes, Integer.valueOf(i2), z2);
        }
        return this;
    }

    public void forceToEnd(ViewGroup viewGroup) {
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup != null) {
            WindowId windowId = viewGroup.getWindowId();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                AnimationInfo animationInfoValueAt = runningAnimators.valueAt(i2);
                if (animationInfoValueAt.view != null && windowId != null && windowId.equals(animationInfoValueAt.windowId)) {
                    runningAnimators.keyAt(i2).end();
                }
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        EpicenterCallback epicenterCallback = this.mEpicenterCallback;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.onGetEpicenter(this);
    }

    public EpicenterCallback getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public TransitionValues getMatchedTransitionValues(View view, boolean z2) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getMatchedTransitionValues(view, z2);
        }
        ArrayList<TransitionValues> arrayList = z2 ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            }
            TransitionValues transitionValues = arrayList.get(i2);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return (z2 ? this.mEndValuesList : this.mStartValuesList).get(i2);
        }
        return null;
    }

    public String getName() {
        return this.mName;
    }

    public ArrayMap<String, String> getNameOverrides() {
        return this.mNameOverrides;
    }

    public PathMotion getPathMotion() {
        return this.mPathMotion;
    }

    public TransitionPropagation getPropagation() {
        return this.mPropagation;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<String> getTargetViewNames() {
        return this.mTargetNames;
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
        return (z2 ? this.mStartValues : this.mEndValues).viewValues.get(view);
    }

    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties == null) {
            Iterator<String> it = transitionValues.values.keySet().iterator();
            while (it.hasNext()) {
                if (isValueChanged(transitionValues, transitionValues2, it.next())) {
                }
            }
            return false;
        }
        for (String str : transitionProperties) {
            if (!isValueChanged(transitionValues, transitionValues2, str)) {
            }
        }
        return false;
        return true;
    }

    public boolean isValidTarget(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        if (view == null) {
            return false;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mTargetTypeExcludes.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && view.getTransitionName() != null && this.mTargetNameExcludes.contains(view.getTransitionName())) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(view.getTransitionName())) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i3 = 0; i3 < this.mTargetTypes.size(); i3++) {
                if (this.mTargetTypes.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (view != null) {
            WindowId windowId = view.getWindowId();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                AnimationInfo animationInfoValueAt = runningAnimators.valueAt(i2);
                if (animationInfoValueAt.view != null && windowId != null && windowId.equals(animationInfoValueAt.windowId)) {
                    runningAnimators.keyAt(i2).pause();
                }
            }
        }
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((TransitionListener) arrayList2.get(i3)).onTransitionPause(this);
            }
        }
        this.mPaused = true;
    }

    public void playTransition(ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        View view;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animatorKeyAt = runningAnimators.keyAt(i2);
            if (animatorKeyAt != null && (animationInfo = runningAnimators.get(animatorKeyAt)) != null && (view = animationInfo.view) != null && animationInfo.windowId == windowId) {
                TransitionValues transitionValues = animationInfo.values;
                TransitionValues transitionValues2 = getTransitionValues(view, true);
                TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues2 == null && matchedTransitionValues == null) {
                    matchedTransitionValues = this.mEndValues.viewValues.get(view);
                }
                if (!(transitionValues2 == null && matchedTransitionValues == null) && animationInfo.transition.isTransitionRequired(transitionValues, matchedTransitionValues)) {
                    if (animatorKeyAt.isRunning() || animatorKeyAt.isStarted()) {
                        animatorKeyAt.cancel();
                    } else {
                        runningAnimators.remove(animatorKeyAt);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
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
            this.mTargetIds.remove(Integer.valueOf(i2));
        }
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                ArrayMap<Animator, AnimationInfo> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                WindowId windowId = view.getWindowId();
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    AnimationInfo animationInfoValueAt = runningAnimators.valueAt(i2);
                    if (animationInfoValueAt.view != null && windowId != null && windowId.equals(animationInfoValueAt.windowId)) {
                        runningAnimators.keyAt(i2).resume();
                    }
                }
                ArrayList<TransitionListener> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((TransitionListener) arrayList2.get(i3)).onTransitionResume(this);
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

    public void setEpicenterCallback(EpicenterCallback epicenterCallback) {
        this.mEpicenterCallback = epicenterCallback;
    }

    public Transition setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!isValidMatch(iArr[i2])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (alreadyContains(iArr, i2)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    public void setNameOverrides(ArrayMap<String, String> arrayMap) {
        this.mNameOverrides = arrayMap;
    }

    public void setPathMotion(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = pathMotion;
        }
    }

    public void setPropagation(TransitionPropagation transitionPropagation) {
        this.mPropagation = transitionPropagation;
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

    public String toString(String str) {
        StringBuilder sbR = c.r(str);
        sbR.append(getClass().getSimpleName());
        sbR.append("@");
        sbR.append(Integer.toHexString(hashCode()));
        sbR.append(": ");
        String string = sbR.toString();
        if (this.mDuration != -1) {
            string = m.k(c.u(string, "dur("), this.mDuration, ") ");
        }
        if (this.mStartDelay != -1) {
            string = m.k(c.u(string, "dly("), this.mStartDelay, ") ");
        }
        if (this.mInterpolator != null) {
            StringBuilder sbU = c.u(string, "interp(");
            sbU.append(this.mInterpolator);
            sbU.append(") ");
            string = sbU.toString();
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return string;
        }
        String strD = c.D(string, "tgts(");
        if (this.mTargetIds.size() > 0) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                if (i2 > 0) {
                    strD = c.D(strD, ", ");
                }
                StringBuilder sbR2 = c.r(strD);
                sbR2.append(this.mTargetIds.get(i2));
                strD = sbR2.toString();
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                if (i3 > 0) {
                    strD = c.D(strD, ", ");
                }
                StringBuilder sbR3 = c.r(strD);
                sbR3.append(this.mTargets.get(i3));
                strD = sbR3.toString();
            }
        }
        return c.D(strD, ")");
    }

    public Transition addTarget(String str) {
        if (str != null) {
            if (this.mTargetNames == null) {
                this.mTargetNames = new ArrayList<>();
            }
            this.mTargetNames.add(str);
        }
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public Transition mo27clone() {
        Transition transition = null;
        try {
            Transition transition2 = (Transition) super.clone();
            try {
                transition2.mAnimators = new ArrayList<>();
                transition2.mStartValues = new TransitionValuesMaps();
                transition2.mEndValues = new TransitionValuesMaps();
                transition2.mStartValuesList = null;
                transition2.mEndValuesList = null;
                return transition2;
            } catch (CloneNotSupportedException unused) {
                transition = transition2;
                return transition;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public Transition excludeChildren(View view, boolean z2) {
        this.mTargetChildExcludes = excludeObject(this.mTargetChildExcludes, view, z2);
        return this;
    }

    public Transition excludeTarget(String str, boolean z2) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z2);
        return this;
    }

    public Transition removeTarget(String str) {
        ArrayList<String> arrayList;
        if (str != null && (arrayList = this.mTargetNames) != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public Transition excludeChildren(Class cls, boolean z2) {
        this.mTargetTypeChildExcludes = excludeObject(this.mTargetTypeChildExcludes, cls, z2);
        return this;
    }

    public Transition excludeTarget(View view, boolean z2) {
        this.mTargetExcludes = excludeObject(this.mTargetExcludes, view, z2);
        return this;
    }

    public Transition excludeTarget(Class cls, boolean z2) {
        this.mTargetTypeExcludes = excludeObject(this.mTargetTypeExcludes, cls, z2);
        return this;
    }

    public Transition removeTarget(View view) {
        if (view != null) {
            this.mTargets.remove(view);
        }
        return this;
    }

    public Transition addTarget(Class cls) {
        if (cls != null) {
            if (this.mTargetTypes == null) {
                this.mTargetTypes = new ArrayList<>();
            }
            this.mTargetTypes.add(cls);
        }
        return this;
    }

    public Transition removeTarget(Class cls) {
        if (cls != null) {
            this.mTargetTypes.remove(cls);
        }
        return this;
    }

    public Transition addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transition);
        long j2 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (j2 >= 0) {
            setDuration(j2);
        }
        long j3 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (j3 > 0) {
            setStartDelay(j3);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        String string = typedArrayObtainStyledAttributes.getString(3);
        if (string != null) {
            setMatchOrder(parseMatchOrder(string));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public String toString() {
        return toString("");
    }
}
