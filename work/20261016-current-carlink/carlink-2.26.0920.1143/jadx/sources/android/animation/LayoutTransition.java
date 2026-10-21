package android.animation;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LayoutTransition {
    private static TimeInterpolator ACCEL_DECEL_INTERPOLATOR = new AccelerateDecelerateInterpolator();
    public static final int APPEARING = 2;
    public static final int CHANGE_APPEARING = 0;
    public static final int CHANGE_DISAPPEARING = 1;
    public static final int CHANGING = 4;
    private static TimeInterpolator DECEL_INTERPOLATOR = null;
    private static long DEFAULT_DURATION = 300;
    public static final int DISAPPEARING = 3;
    private static final int FLAG_APPEARING = 1;
    private static final int FLAG_CHANGE_APPEARING = 4;
    private static final int FLAG_CHANGE_DISAPPEARING = 8;
    private static final int FLAG_CHANGING = 16;
    private static final int FLAG_DISAPPEARING = 2;
    private static ObjectAnimator defaultChange;
    private static ObjectAnimator defaultChangeIn;
    private static ObjectAnimator defaultChangeOut;
    private static ObjectAnimator defaultFadeIn;
    private static ObjectAnimator defaultFadeOut;
    private static TimeInterpolator sAppearingInterpolator;
    private static TimeInterpolator sChangingAppearingInterpolator;
    private static TimeInterpolator sChangingDisappearingInterpolator;
    private static TimeInterpolator sChangingInterpolator;
    private static TimeInterpolator sDisappearingInterpolator;
    private final LinkedHashMap<View, Animator> currentAppearingAnimations;
    private final LinkedHashMap<View, Animator> currentChangingAnimations;
    private final LinkedHashMap<View, Animator> currentDisappearingAnimations;
    private final HashMap<View, View.OnLayoutChangeListener> layoutChangeListenerMap;
    private boolean mAnimateParentHierarchy;
    private Animator mAppearingAnim;
    private long mAppearingDelay;
    private long mAppearingDuration;
    private TimeInterpolator mAppearingInterpolator;
    private Animator mChangingAnim;
    private Animator mChangingAppearingAnim;
    private long mChangingAppearingDelay;
    private long mChangingAppearingDuration;
    private TimeInterpolator mChangingAppearingInterpolator;
    private long mChangingAppearingStagger;
    private long mChangingDelay;
    private Animator mChangingDisappearingAnim;
    private long mChangingDisappearingDelay;
    private long mChangingDisappearingDuration;
    private TimeInterpolator mChangingDisappearingInterpolator;
    private long mChangingDisappearingStagger;
    private long mChangingDuration;
    private TimeInterpolator mChangingInterpolator;
    private long mChangingStagger;
    private Animator mDisappearingAnim;
    private long mDisappearingDelay;
    private long mDisappearingDuration;
    private TimeInterpolator mDisappearingInterpolator;
    private ArrayList<TransitionListener> mListeners;
    private int mTransitionTypes;
    private final HashMap<View, Animator> pendingAnimations;
    private long staggerDelay;

    public static final class CleanupCallback implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        final Map<View, View.OnLayoutChangeListener> layoutChangeListenerMap;
        final ViewGroup parent;

        public CleanupCallback(Map<View, View.OnLayoutChangeListener> map, ViewGroup viewGroup) {
            this.layoutChangeListenerMap = map;
            this.parent = viewGroup;
        }

        private void cleanup() {
            this.parent.getViewTreeObserver().removeOnPreDrawListener(this);
            this.parent.removeOnAttachStateChangeListener(this);
            if (this.layoutChangeListenerMap.size() > 0) {
                for (View view : this.layoutChangeListenerMap.keySet()) {
                    view.removeOnLayoutChangeListener(this.layoutChangeListenerMap.get(view));
                }
                this.layoutChangeListenerMap.clear();
            }
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            cleanup();
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            cleanup();
        }
    }

    public interface TransitionListener {
        void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2);

        void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i2);
    }

    static {
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        DECEL_INTERPOLATOR = decelerateInterpolator;
        TimeInterpolator timeInterpolator = ACCEL_DECEL_INTERPOLATOR;
        sAppearingInterpolator = timeInterpolator;
        sDisappearingInterpolator = timeInterpolator;
        sChangingAppearingInterpolator = decelerateInterpolator;
        sChangingDisappearingInterpolator = decelerateInterpolator;
        sChangingInterpolator = decelerateInterpolator;
    }

    public LayoutTransition() {
        this.mDisappearingAnim = null;
        this.mAppearingAnim = null;
        this.mChangingAppearingAnim = null;
        this.mChangingDisappearingAnim = null;
        this.mChangingAnim = null;
        long j2 = DEFAULT_DURATION;
        this.mChangingAppearingDuration = j2;
        this.mChangingDisappearingDuration = j2;
        this.mChangingDuration = j2;
        this.mAppearingDuration = j2;
        this.mDisappearingDuration = j2;
        this.mAppearingDelay = j2;
        this.mDisappearingDelay = 0L;
        this.mChangingAppearingDelay = 0L;
        this.mChangingDisappearingDelay = j2;
        this.mChangingDelay = 0L;
        this.mChangingAppearingStagger = 0L;
        this.mChangingDisappearingStagger = 0L;
        this.mChangingStagger = 0L;
        this.mAppearingInterpolator = sAppearingInterpolator;
        this.mDisappearingInterpolator = sDisappearingInterpolator;
        this.mChangingAppearingInterpolator = sChangingAppearingInterpolator;
        this.mChangingDisappearingInterpolator = sChangingDisappearingInterpolator;
        this.mChangingInterpolator = sChangingInterpolator;
        this.pendingAnimations = new HashMap<>();
        this.currentChangingAnimations = new LinkedHashMap<>();
        this.currentAppearingAnimations = new LinkedHashMap<>();
        this.currentDisappearingAnimations = new LinkedHashMap<>();
        this.layoutChangeListenerMap = new HashMap<>();
        this.mTransitionTypes = 15;
        this.mAnimateParentHierarchy = true;
        if (defaultChangeIn == null) {
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(null, PropertyValuesHolder.ofInt("left", 0, 1), PropertyValuesHolder.ofInt("top", 0, 1), PropertyValuesHolder.ofInt("right", 0, 1), PropertyValuesHolder.ofInt("bottom", 0, 1), PropertyValuesHolder.ofInt("scrollX", 0, 1), PropertyValuesHolder.ofInt("scrollY", 0, 1));
            defaultChangeIn = objectAnimatorOfPropertyValuesHolder;
            objectAnimatorOfPropertyValuesHolder.setDuration(DEFAULT_DURATION);
            defaultChangeIn.setStartDelay(this.mChangingAppearingDelay);
            defaultChangeIn.setInterpolator(this.mChangingAppearingInterpolator);
            ObjectAnimator objectAnimatorMo0clone = defaultChangeIn.mo0clone();
            defaultChangeOut = objectAnimatorMo0clone;
            objectAnimatorMo0clone.setStartDelay(this.mChangingDisappearingDelay);
            defaultChangeOut.setInterpolator(this.mChangingDisappearingInterpolator);
            ObjectAnimator objectAnimatorMo0clone2 = defaultChangeIn.mo0clone();
            defaultChange = objectAnimatorMo0clone2;
            objectAnimatorMo0clone2.setStartDelay(this.mChangingDelay);
            defaultChange.setInterpolator(this.mChangingInterpolator);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, "alpha", 0.0f, 1.0f);
            defaultFadeIn = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(DEFAULT_DURATION);
            defaultFadeIn.setStartDelay(this.mAppearingDelay);
            defaultFadeIn.setInterpolator(this.mAppearingInterpolator);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat((Object) null, "alpha", 1.0f, 0.0f);
            defaultFadeOut = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(DEFAULT_DURATION);
            defaultFadeOut.setStartDelay(this.mDisappearingDelay);
            defaultFadeOut.setInterpolator(this.mDisappearingInterpolator);
        }
        this.mChangingAppearingAnim = defaultChangeIn;
        this.mChangingDisappearingAnim = defaultChangeOut;
        this.mChangingAnim = defaultChange;
        this.mAppearingAnim = defaultFadeIn;
        this.mDisappearingAnim = defaultFadeOut;
    }

    private void addChild(ViewGroup viewGroup, View view, boolean z2) {
        if (viewGroup.getWindowVisibility() != 0) {
            return;
        }
        if ((this.mTransitionTypes & 1) == 1) {
            cancel(3);
        }
        if (z2 && (this.mTransitionTypes & 4) == 4) {
            cancel(0);
            cancel(4);
        }
        if (hasListeners() && (this.mTransitionTypes & 1) == 1) {
            Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
            while (it.hasNext()) {
                ((TransitionListener) it.next()).startTransition(this, viewGroup, view, 2);
            }
        }
        if (z2 && (this.mTransitionTypes & 4) == 4) {
            runChangeTransition(viewGroup, view, 2);
        }
        if ((this.mTransitionTypes & 1) == 1) {
            runAppearingTransition(viewGroup, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasListeners() {
        ArrayList<TransitionListener> arrayList = this.mListeners;
        return arrayList != null && arrayList.size() > 0;
    }

    private void removeChild(ViewGroup viewGroup, View view, boolean z2) {
        if (viewGroup.getWindowVisibility() != 0) {
            return;
        }
        if ((this.mTransitionTypes & 2) == 2) {
            cancel(2);
        }
        if (z2 && (this.mTransitionTypes & 8) == 8) {
            cancel(1);
            cancel(4);
        }
        if (hasListeners() && (this.mTransitionTypes & 2) == 2) {
            Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
            while (it.hasNext()) {
                ((TransitionListener) it.next()).startTransition(this, viewGroup, view, 3);
            }
        }
        if (z2 && (this.mTransitionTypes & 8) == 8) {
            runChangeTransition(viewGroup, view, 3);
        }
        if ((this.mTransitionTypes & 2) == 2) {
            runDisappearingTransition(viewGroup, view);
        }
    }

    private void runAppearingTransition(final ViewGroup viewGroup, final View view) {
        Animator animator = this.currentDisappearingAnimations.get(view);
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.mAppearingAnim;
        if (animator2 == null) {
            if (hasListeners()) {
                Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
                while (it.hasNext()) {
                    ((TransitionListener) it.next()).endTransition(this, viewGroup, view, 2);
                }
                return;
            }
            return;
        }
        Animator animatorMo0clone = animator2.mo0clone();
        animatorMo0clone.setTarget(view);
        animatorMo0clone.setStartDelay(this.mAppearingDelay);
        animatorMo0clone.setDuration(this.mAppearingDuration);
        TimeInterpolator timeInterpolator = this.mAppearingInterpolator;
        if (timeInterpolator != sAppearingInterpolator) {
            animatorMo0clone.setInterpolator(timeInterpolator);
        }
        if (animatorMo0clone instanceof ObjectAnimator) {
            ((ObjectAnimator) animatorMo0clone).setCurrentPlayTime(0L);
        }
        animatorMo0clone.addListener(new AnimatorListenerAdapter() { // from class: android.animation.LayoutTransition.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                LayoutTransition.this.currentAppearingAnimations.remove(view);
                if (LayoutTransition.this.hasListeners()) {
                    Iterator it2 = ((ArrayList) LayoutTransition.this.mListeners.clone()).iterator();
                    while (it2.hasNext()) {
                        ((TransitionListener) it2.next()).endTransition(LayoutTransition.this, viewGroup, view, 2);
                    }
                }
            }
        });
        this.currentAppearingAnimations.put(view, animatorMo0clone);
        animatorMo0clone.start();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    /* JADX WARN: Code duplicated, block: B:17:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0071  */
    /* JADX WARN: Code duplicated, block: B:39:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0079 A[SYNTHETIC] */
    private void runChangeTransition(ViewGroup viewGroup, View view, int i2) {
        Animator animator;
        long j2;
        Animator animator2;
        Animator animator3;
        long j3;
        Animator animator4;
        ViewTreeObserver viewTreeObserver;
        int childCount;
        int i3;
        ViewGroup viewGroup2;
        ViewParent parent;
        View childAt;
        if (i2 == 2) {
            animator = this.mChangingAppearingAnim;
            j2 = this.mChangingAppearingDuration;
            animator2 = defaultChangeIn;
        } else {
            if (i2 != 3) {
                if (i2 != 4) {
                    j3 = 0;
                    animator3 = null;
                    animator4 = null;
                } else {
                    animator = this.mChangingAnim;
                    j2 = this.mChangingDuration;
                    animator2 = defaultChange;
                }
                if (animator3 == null) {
                    return;
                }
                this.staggerDelay = 0L;
                viewTreeObserver = viewGroup.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    i3 = 0;
                    for (childCount = viewGroup.getChildCount(); i3 < childCount; childCount = childCount) {
                        childAt = viewGroup.getChildAt(i3);
                        if (childAt != view) {
                            setupChangeAnimation(viewGroup, i2, animator3, j3, childAt);
                        }
                        i3++;
                    }
                    if (this.mAnimateParentHierarchy) {
                        viewGroup2 = viewGroup;
                        while (viewGroup2 != null) {
                            parent = viewGroup2.getParent();
                            if (parent instanceof ViewGroup) {
                                ViewGroup viewGroup3 = (ViewGroup) parent;
                                setupChangeAnimation(viewGroup3, i2, animator4, j3, viewGroup2);
                                viewGroup2 = viewGroup3;
                            } else {
                                viewGroup2 = null;
                            }
                        }
                    }
                    CleanupCallback cleanupCallback = new CleanupCallback(this.layoutChangeListenerMap, viewGroup);
                    viewTreeObserver.addOnPreDrawListener(cleanupCallback);
                    viewGroup.addOnAttachStateChangeListener(cleanupCallback);
                }
                return;
            }
            animator = this.mChangingDisappearingAnim;
            j2 = this.mChangingDisappearingDuration;
            animator2 = defaultChangeOut;
        }
        animator3 = animator;
        j3 = j2;
        animator4 = animator2;
        if (animator3 == null) {
            return;
        }
        this.staggerDelay = 0L;
        viewTreeObserver = viewGroup.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            return;
        }
        i3 = 0;
        while (i3 < childCount) {
            childAt = viewGroup.getChildAt(i3);
            if (childAt != view) {
                setupChangeAnimation(viewGroup, i2, animator3, j3, childAt);
            }
            i3++;
        }
        if (this.mAnimateParentHierarchy) {
            viewGroup2 = viewGroup;
            while (viewGroup2 != null) {
                parent = viewGroup2.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup4 = (ViewGroup) parent;
                    setupChangeAnimation(viewGroup4, i2, animator4, j3, viewGroup2);
                    viewGroup2 = viewGroup4;
                } else {
                    viewGroup2 = null;
                }
            }
        }
        CleanupCallback cleanupCallback2 = new CleanupCallback(this.layoutChangeListenerMap, viewGroup);
        viewTreeObserver.addOnPreDrawListener(cleanupCallback2);
        viewGroup.addOnAttachStateChangeListener(cleanupCallback2);
    }

    private void runDisappearingTransition(final ViewGroup viewGroup, final View view) {
        Animator animator = this.currentAppearingAnimations.get(view);
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.mDisappearingAnim;
        if (animator2 == null) {
            if (hasListeners()) {
                Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
                while (it.hasNext()) {
                    ((TransitionListener) it.next()).endTransition(this, viewGroup, view, 3);
                }
                return;
            }
            return;
        }
        Animator animatorMo0clone = animator2.mo0clone();
        animatorMo0clone.setStartDelay(this.mDisappearingDelay);
        animatorMo0clone.setDuration(this.mDisappearingDuration);
        TimeInterpolator timeInterpolator = this.mDisappearingInterpolator;
        if (timeInterpolator != sDisappearingInterpolator) {
            animatorMo0clone.setInterpolator(timeInterpolator);
        }
        animatorMo0clone.setTarget(view);
        final float alpha = view.getAlpha();
        animatorMo0clone.addListener(new AnimatorListenerAdapter() { // from class: android.animation.LayoutTransition.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                LayoutTransition.this.currentDisappearingAnimations.remove(view);
                view.setAlpha(alpha);
                if (LayoutTransition.this.hasListeners()) {
                    Iterator it2 = ((ArrayList) LayoutTransition.this.mListeners.clone()).iterator();
                    while (it2.hasNext()) {
                        ((TransitionListener) it2.next()).endTransition(LayoutTransition.this, viewGroup, view, 3);
                    }
                }
            }
        });
        if (animatorMo0clone instanceof ObjectAnimator) {
            ((ObjectAnimator) animatorMo0clone).setCurrentPlayTime(0L);
        }
        this.currentDisappearingAnimations.put(view, animatorMo0clone);
        animatorMo0clone.start();
    }

    private void setupChangeAnimation(final ViewGroup viewGroup, final int i2, Animator animator, final long j2, final View view) {
        if (this.layoutChangeListenerMap.get(view) != null) {
            return;
        }
        if (view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        final Animator animatorMo0clone = animator.mo0clone();
        animatorMo0clone.setTarget(view);
        animatorMo0clone.setupStartValues();
        Animator animator2 = this.pendingAnimations.get(view);
        if (animator2 != null) {
            animator2.cancel();
            this.pendingAnimations.remove(view);
        }
        this.pendingAnimations.put(view, animatorMo0clone);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(100 + j2);
        duration.addListener(new AnimatorListenerAdapter() { // from class: android.animation.LayoutTransition.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                LayoutTransition.this.pendingAnimations.remove(view);
            }
        });
        duration.start();
        final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.animation.LayoutTransition.2
            /* JADX WARN: Code duplicated, block: B:18:0x004d  */
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                long j3;
                animatorMo0clone.setupEndValues();
                Animator animator3 = animatorMo0clone;
                if (animator3 instanceof ValueAnimator) {
                    boolean z2 = false;
                    for (PropertyValuesHolder propertyValuesHolder : ((ValueAnimator) animator3).getValues()) {
                        Keyframes keyframes = propertyValuesHolder.mKeyframes;
                        if (keyframes instanceof KeyframeSet) {
                            KeyframeSet keyframeSet = (KeyframeSet) keyframes;
                            Keyframe keyframe = keyframeSet.mFirstKeyframe;
                            if (keyframe == null || keyframeSet.mLastKeyframe == null || !keyframe.getValue().equals(keyframeSet.mLastKeyframe.getValue())) {
                                z2 = true;
                            }
                        } else if (!keyframes.getValue(0.0f).equals(propertyValuesHolder.mKeyframes.getValue(1.0f))) {
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        return;
                    }
                }
                int i11 = i2;
                if (i11 == 2) {
                    j3 = LayoutTransition.this.mChangingAppearingDelay + LayoutTransition.this.staggerDelay;
                    LayoutTransition layoutTransition = LayoutTransition.this;
                    layoutTransition.staggerDelay = LayoutTransition.this.mChangingAppearingStagger + layoutTransition.staggerDelay;
                    if (LayoutTransition.this.mChangingAppearingInterpolator != LayoutTransition.sChangingAppearingInterpolator) {
                        animatorMo0clone.setInterpolator(LayoutTransition.this.mChangingAppearingInterpolator);
                    }
                } else if (i11 == 3) {
                    j3 = LayoutTransition.this.mChangingDisappearingDelay + LayoutTransition.this.staggerDelay;
                    LayoutTransition layoutTransition2 = LayoutTransition.this;
                    layoutTransition2.staggerDelay = LayoutTransition.this.mChangingDisappearingStagger + layoutTransition2.staggerDelay;
                    if (LayoutTransition.this.mChangingDisappearingInterpolator != LayoutTransition.sChangingDisappearingInterpolator) {
                        animatorMo0clone.setInterpolator(LayoutTransition.this.mChangingDisappearingInterpolator);
                    }
                } else if (i11 != 4) {
                    j3 = 0;
                } else {
                    j3 = LayoutTransition.this.mChangingDelay + LayoutTransition.this.staggerDelay;
                    LayoutTransition layoutTransition3 = LayoutTransition.this;
                    layoutTransition3.staggerDelay = LayoutTransition.this.mChangingStagger + layoutTransition3.staggerDelay;
                    if (LayoutTransition.this.mChangingInterpolator != LayoutTransition.sChangingInterpolator) {
                        animatorMo0clone.setInterpolator(LayoutTransition.this.mChangingInterpolator);
                    }
                }
                animatorMo0clone.setStartDelay(j3);
                animatorMo0clone.setDuration(j2);
                Animator animator4 = (Animator) LayoutTransition.this.currentChangingAnimations.get(view);
                if (animator4 != null) {
                    animator4.cancel();
                }
                if (((Animator) LayoutTransition.this.pendingAnimations.get(view)) != null) {
                    LayoutTransition.this.pendingAnimations.remove(view);
                }
                LayoutTransition.this.currentChangingAnimations.put(view, animatorMo0clone);
                viewGroup.requestTransitionStart(LayoutTransition.this);
                view.removeOnLayoutChangeListener(this);
                LayoutTransition.this.layoutChangeListenerMap.remove(view);
            }
        };
        animatorMo0clone.addListener(new AnimatorListenerAdapter() { // from class: android.animation.LayoutTransition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator3) {
                view.removeOnLayoutChangeListener(onLayoutChangeListener);
                LayoutTransition.this.layoutChangeListenerMap.remove(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                LayoutTransition.this.currentChangingAnimations.remove(view);
                if (LayoutTransition.this.hasListeners()) {
                    for (TransitionListener transitionListener : (ArrayList) LayoutTransition.this.mListeners.clone()) {
                        LayoutTransition layoutTransition = LayoutTransition.this;
                        ViewGroup viewGroup2 = viewGroup;
                        View view2 = view;
                        int i3 = i2;
                        transitionListener.endTransition(layoutTransition, viewGroup2, view2, i3 == 2 ? 0 : i3 == 3 ? 1 : 4);
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator3) {
                if (LayoutTransition.this.hasListeners()) {
                    for (TransitionListener transitionListener : (ArrayList) LayoutTransition.this.mListeners.clone()) {
                        LayoutTransition layoutTransition = LayoutTransition.this;
                        ViewGroup viewGroup2 = viewGroup;
                        View view2 = view;
                        int i3 = i2;
                        transitionListener.startTransition(layoutTransition, viewGroup2, view2, i3 == 2 ? 0 : i3 == 3 ? 1 : 4);
                    }
                }
            }
        });
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        this.layoutChangeListenerMap.put(view, onLayoutChangeListener);
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(transitionListener);
    }

    public void cancel() {
        if (this.currentChangingAnimations.size() > 0) {
            Iterator it = ((LinkedHashMap) this.currentChangingAnimations.clone()).values().iterator();
            while (it.hasNext()) {
                ((Animator) it.next()).cancel();
            }
            this.currentChangingAnimations.clear();
        }
        if (this.currentAppearingAnimations.size() > 0) {
            Iterator it2 = ((LinkedHashMap) this.currentAppearingAnimations.clone()).values().iterator();
            while (it2.hasNext()) {
                ((Animator) it2.next()).end();
            }
            this.currentAppearingAnimations.clear();
        }
        if (this.currentDisappearingAnimations.size() > 0) {
            Iterator it3 = ((LinkedHashMap) this.currentDisappearingAnimations.clone()).values().iterator();
            while (it3.hasNext()) {
                ((Animator) it3.next()).end();
            }
            this.currentDisappearingAnimations.clear();
        }
    }

    public void disableTransitionType(int i2) {
        if (i2 == 0) {
            this.mTransitionTypes &= -5;
            return;
        }
        if (i2 == 1) {
            this.mTransitionTypes &= -9;
            return;
        }
        if (i2 == 2) {
            this.mTransitionTypes &= -2;
        } else if (i2 == 3) {
            this.mTransitionTypes &= -3;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mTransitionTypes &= -17;
        }
    }

    public void enableTransitionType(int i2) {
        if (i2 == 0) {
            this.mTransitionTypes |= 4;
            return;
        }
        if (i2 == 1) {
            this.mTransitionTypes |= 8;
            return;
        }
        if (i2 == 2) {
            this.mTransitionTypes |= 1;
        } else if (i2 == 3) {
            this.mTransitionTypes |= 2;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mTransitionTypes |= 16;
        }
    }

    public void endChangingAnimations() {
        for (Animator animator : ((LinkedHashMap) this.currentChangingAnimations.clone()).values()) {
            animator.start();
            animator.end();
        }
        this.currentChangingAnimations.clear();
    }

    public Animator getAnimator(int i2) {
        if (i2 == 0) {
            return this.mChangingAppearingAnim;
        }
        if (i2 == 1) {
            return this.mChangingDisappearingAnim;
        }
        if (i2 == 2) {
            return this.mAppearingAnim;
        }
        if (i2 == 3) {
            return this.mDisappearingAnim;
        }
        if (i2 != 4) {
            return null;
        }
        return this.mChangingAnim;
    }

    public long getDuration(int i2) {
        if (i2 == 0) {
            return this.mChangingAppearingDuration;
        }
        if (i2 == 1) {
            return this.mChangingDisappearingDuration;
        }
        if (i2 == 2) {
            return this.mAppearingDuration;
        }
        if (i2 == 3) {
            return this.mDisappearingDuration;
        }
        if (i2 != 4) {
            return 0L;
        }
        return this.mChangingDuration;
    }

    public TimeInterpolator getInterpolator(int i2) {
        if (i2 == 0) {
            return this.mChangingAppearingInterpolator;
        }
        if (i2 == 1) {
            return this.mChangingDisappearingInterpolator;
        }
        if (i2 == 2) {
            return this.mAppearingInterpolator;
        }
        if (i2 == 3) {
            return this.mDisappearingInterpolator;
        }
        if (i2 != 4) {
            return null;
        }
        return this.mChangingInterpolator;
    }

    public long getStagger(int i2) {
        if (i2 == 0) {
            return this.mChangingAppearingStagger;
        }
        if (i2 == 1) {
            return this.mChangingDisappearingStagger;
        }
        if (i2 != 4) {
            return 0L;
        }
        return this.mChangingStagger;
    }

    public long getStartDelay(int i2) {
        if (i2 == 0) {
            return this.mChangingAppearingDelay;
        }
        if (i2 == 1) {
            return this.mChangingDisappearingDelay;
        }
        if (i2 == 2) {
            return this.mAppearingDelay;
        }
        if (i2 == 3) {
            return this.mDisappearingDelay;
        }
        if (i2 != 4) {
            return 0L;
        }
        return this.mChangingDelay;
    }

    public List<TransitionListener> getTransitionListeners() {
        return this.mListeners;
    }

    @Deprecated
    public void hideChild(ViewGroup viewGroup, View view) {
        removeChild(viewGroup, view, true);
    }

    public boolean isChangingLayout() {
        return this.currentChangingAnimations.size() > 0;
    }

    public boolean isRunning() {
        return this.currentChangingAnimations.size() > 0 || this.currentAppearingAnimations.size() > 0 || this.currentDisappearingAnimations.size() > 0;
    }

    public boolean isTransitionTypeEnabled(int i2) {
        if (i2 == 0) {
            return (this.mTransitionTypes & 4) == 4;
        }
        if (i2 == 1) {
            return (this.mTransitionTypes & 8) == 8;
        }
        if (i2 == 2) {
            return (this.mTransitionTypes & 1) == 1;
        }
        if (i2 != 3) {
            return i2 == 4 && (this.mTransitionTypes & 16) == 16;
        }
        return (this.mTransitionTypes & 2) == 2;
    }

    public void layoutChange(ViewGroup viewGroup) {
        if (viewGroup.getWindowVisibility() == 0 && (this.mTransitionTypes & 16) == 16 && !isRunning()) {
            runChangeTransition(viewGroup, null, 4);
        }
    }

    public void removeTransitionListener(TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(transitionListener);
    }

    public void setAnimateParentHierarchy(boolean z2) {
        this.mAnimateParentHierarchy = z2;
    }

    public void setAnimator(int i2, Animator animator) {
        if (i2 == 0) {
            this.mChangingAppearingAnim = animator;
            return;
        }
        if (i2 == 1) {
            this.mChangingDisappearingAnim = animator;
            return;
        }
        if (i2 == 2) {
            this.mAppearingAnim = animator;
        } else if (i2 == 3) {
            this.mDisappearingAnim = animator;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mChangingAnim = animator;
        }
    }

    public void setDuration(long j2) {
        this.mChangingAppearingDuration = j2;
        this.mChangingDisappearingDuration = j2;
        this.mChangingDuration = j2;
        this.mAppearingDuration = j2;
        this.mDisappearingDuration = j2;
    }

    public void setInterpolator(int i2, TimeInterpolator timeInterpolator) {
        if (i2 == 0) {
            this.mChangingAppearingInterpolator = timeInterpolator;
            return;
        }
        if (i2 == 1) {
            this.mChangingDisappearingInterpolator = timeInterpolator;
            return;
        }
        if (i2 == 2) {
            this.mAppearingInterpolator = timeInterpolator;
        } else if (i2 == 3) {
            this.mDisappearingInterpolator = timeInterpolator;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mChangingInterpolator = timeInterpolator;
        }
    }

    public void setStagger(int i2, long j2) {
        if (i2 == 0) {
            this.mChangingAppearingStagger = j2;
        } else if (i2 == 1) {
            this.mChangingDisappearingStagger = j2;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mChangingStagger = j2;
        }
    }

    public void setStartDelay(int i2, long j2) {
        if (i2 == 0) {
            this.mChangingAppearingDelay = j2;
            return;
        }
        if (i2 == 1) {
            this.mChangingDisappearingDelay = j2;
            return;
        }
        if (i2 == 2) {
            this.mAppearingDelay = j2;
        } else if (i2 == 3) {
            this.mDisappearingDelay = j2;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mChangingDelay = j2;
        }
    }

    @Deprecated
    public void showChild(ViewGroup viewGroup, View view) {
        addChild(viewGroup, view, true);
    }

    public void startChangingAnimations() {
        for (Animator animator : ((LinkedHashMap) this.currentChangingAnimations.clone()).values()) {
            if (animator instanceof ObjectAnimator) {
                ((ObjectAnimator) animator).setCurrentPlayTime(0L);
            }
            animator.start();
        }
    }

    public void hideChild(ViewGroup viewGroup, View view, int i2) {
        removeChild(viewGroup, view, i2 == 8);
    }

    public void showChild(ViewGroup viewGroup, View view, int i2) {
        addChild(viewGroup, view, i2 == 8);
    }

    public void setDuration(int i2, long j2) {
        if (i2 == 0) {
            this.mChangingAppearingDuration = j2;
            return;
        }
        if (i2 == 1) {
            this.mChangingDisappearingDuration = j2;
            return;
        }
        if (i2 == 2) {
            this.mAppearingDuration = j2;
        } else if (i2 == 3) {
            this.mDisappearingDuration = j2;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mChangingDuration = j2;
        }
    }

    public void addChild(ViewGroup viewGroup, View view) {
        addChild(viewGroup, view, true);
    }

    public void removeChild(ViewGroup viewGroup, View view) {
        removeChild(viewGroup, view, true);
    }

    public void cancel(int i2) {
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                if (this.currentAppearingAnimations.size() > 0) {
                    Iterator it = ((LinkedHashMap) this.currentAppearingAnimations.clone()).values().iterator();
                    while (it.hasNext()) {
                        ((Animator) it.next()).end();
                    }
                    this.currentAppearingAnimations.clear();
                    return;
                }
                return;
            }
            if (i2 == 3) {
                if (this.currentDisappearingAnimations.size() > 0) {
                    Iterator it2 = ((LinkedHashMap) this.currentDisappearingAnimations.clone()).values().iterator();
                    while (it2.hasNext()) {
                        ((Animator) it2.next()).end();
                    }
                    this.currentDisappearingAnimations.clear();
                    return;
                }
                return;
            }
            if (i2 != 4) {
                return;
            }
        }
        if (this.currentChangingAnimations.size() > 0) {
            Iterator it3 = ((LinkedHashMap) this.currentChangingAnimations.clone()).values().iterator();
            while (it3.hasNext()) {
                ((Animator) it3.next()).cancel();
            }
            this.currentChangingAnimations.clear();
        }
    }
}
