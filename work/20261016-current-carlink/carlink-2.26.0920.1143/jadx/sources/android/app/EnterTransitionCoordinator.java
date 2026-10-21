package android.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.util.ArrayMap;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.android.internal.view.OneShotPreDrawListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class EnterTransitionCoordinator extends ActivityTransitionCoordinator {
    private static final int MIN_ANIMATION_FRAMES = 2;
    private static final String TAG = "EnterTransitionCoordinator";
    private Activity mActivity;
    private boolean mAreViewsReady;
    private ObjectAnimator mBackgroundAnimator;
    private Transition mEnterViewsTransition;
    private boolean mHasStopped;
    private boolean mIsCanceled;
    private final boolean mIsCrossTask;
    private boolean mIsExitTransitionComplete;
    private boolean mIsReadyForTransition;
    private boolean mIsViewsTransitionStarted;
    private Drawable mReplacedBackground;
    private boolean mSharedElementTransitionStarted;
    private Bundle mSharedElementsBundle;
    private OneShotPreDrawListener mViewsReadyListener;
    private boolean mWasOpaque;

    /* JADX INFO: renamed from: android.app.EnterTransitionCoordinator$3, reason: invalid class name */
    public class AnonymousClass3 implements SharedElementCallback.OnSharedElementsReadyListener {
        final /* synthetic */ Bundle val$sharedElementState;

        public AnonymousClass3(Bundle bundle) {
            this.val$sharedElementState = bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$null$0(Bundle bundle) {
            EnterTransitionCoordinator.this.startSharedElementTransition(bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSharedElementsReady$1(Bundle bundle) {
            EnterTransitionCoordinator.this.startTransition(new g(this, bundle, 1));
        }

        @Override // android.app.SharedElementCallback.OnSharedElementsReadyListener
        public void onSharedElementsReady() {
            ViewGroup decor = EnterTransitionCoordinator.this.getDecor();
            if (decor != null) {
                OneShotPreDrawListener.add(decor, false, new g(this, this.val$sharedElementState, 0));
                decor.invalidate();
            }
        }
    }

    public EnterTransitionCoordinator(Activity activity, ResultReceiver resultReceiver, ArrayList<String> arrayList, boolean z2, boolean z3) {
        super(activity.getWindow(), arrayList, getListener(activity, z2 && !z3), z2);
        this.mActivity = activity;
        this.mIsCrossTask = z3;
        setResultReceiver(resultReceiver);
        prepareEnter();
        Bundle bundle = new Bundle();
        bundle.putParcelable("android:remoteReceiver", this);
        this.mResultReceiver.send(100, bundle);
        final ViewGroup decor = getDecor();
        if (decor != null) {
            final ViewTreeObserver viewTreeObserver = decor.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.app.EnterTransitionCoordinator.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (!EnterTransitionCoordinator.this.mIsReadyForTransition) {
                        return false;
                    }
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(this);
                        return false;
                    }
                    decor.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
        }
    }

    private boolean allowOverlappingTransitions() {
        return this.mIsReturning ? getWindow().getAllowReturnTransitionOverlap() : getWindow().getAllowEnterTransitionOverlap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Transition beginTransition(ViewGroup viewGroup, boolean z2, boolean z3) {
        Transition transitionConfigureTransition;
        Transition transitionConfigureTransition2 = null;
        if (z3) {
            transitionConfigureTransition = !this.mSharedElementNames.isEmpty() ? configureTransition(getSharedElementTransition(), false) : null;
            if (transitionConfigureTransition == null) {
                sharedElementTransitionStarted();
                sharedElementTransitionComplete();
            } else {
                transitionConfigureTransition.addListener(new TransitionListenerAdapter() { // from class: android.app.EnterTransitionCoordinator.4
                    @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        transition.removeListener(this);
                        EnterTransitionCoordinator.this.sharedElementTransitionComplete();
                    }

                    @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        EnterTransitionCoordinator.this.sharedElementTransitionStarted();
                    }
                });
            }
        } else {
            transitionConfigureTransition = null;
        }
        if (z2) {
            this.mIsViewsTransitionStarted = true;
            ArrayList<View> arrayList = this.mTransitioningViews;
            if (arrayList != null && !arrayList.isEmpty()) {
                transitionConfigureTransition2 = configureTransition(getViewsTransition(), true);
            }
            if (transitionConfigureTransition2 == null) {
                viewsTransitionComplete();
            } else {
                final ArrayList<View> arrayList2 = this.mTransitioningViews;
                transitionConfigureTransition2.addListener(new ActivityTransitionCoordinator.ContinueTransitionListener() { // from class: android.app.EnterTransitionCoordinator.5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super();
                    }

                    @Override // android.app.ActivityTransitionCoordinator.ContinueTransitionListener, android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        EnterTransitionCoordinator.this.mEnterViewsTransition = null;
                        transition.removeListener(this);
                        EnterTransitionCoordinator.this.viewsTransitionComplete();
                        super.onTransitionEnd(transition);
                    }

                    @Override // android.app.ActivityTransitionCoordinator.ContinueTransitionListener, android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        EnterTransitionCoordinator.this.mEnterViewsTransition = transition;
                        ArrayList<View> arrayList3 = arrayList2;
                        if (arrayList3 != null) {
                            EnterTransitionCoordinator.this.showViews(arrayList3, false);
                        }
                        super.onTransitionStart(transition);
                    }
                });
            }
        }
        Transition transitionMergeTransitions = ActivityTransitionCoordinator.mergeTransitions(transitionConfigureTransition, transitionConfigureTransition2);
        if (transitionMergeTransitions != null) {
            transitionMergeTransitions.addListener(new ActivityTransitionCoordinator.ContinueTransitionListener());
            if (z2) {
                setTransitioningViewsVisiblity(4, false);
            }
            TransitionManager.beginDelayedTransition(viewGroup, transitionMergeTransitions);
            if (z2) {
                setTransitioningViewsVisiblity(0, false);
            }
            viewGroup.invalidate();
        } else {
            transitionStarted();
        }
        return transitionMergeTransitions;
    }

    private void cancel() {
        if (this.mIsCanceled) {
            return;
        }
        this.mIsCanceled = true;
        if (getViewsTransition() == null || this.mIsViewsTransitionStarted) {
            showViews(this.mSharedElements, true);
        } else {
            ArrayList<View> arrayList = this.mTransitioningViews;
            if (arrayList != null) {
                arrayList.addAll(this.mSharedElements);
            }
        }
        moveSharedElementsFromOverlay();
        this.mSharedElementNames.clear();
        this.mSharedElements.clear();
        this.mAllSharedElementNames.clear();
        startSharedElementTransition(null);
        onRemoteExitTransitionComplete();
    }

    private static SharedElementCallback getListener(Activity activity, boolean z2) {
        return z2 ? activity.mExitTransitionListener : activity.mEnterTransitionListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSharedElementDestination$1() {
        if (this.mResultReceiver != null) {
            Bundle bundleCaptureSharedElementState = captureSharedElementState();
            moveSharedElementsToOverlay();
            this.mResultReceiver.send(107, bundleCaptureSharedElementState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerViewsReady$0(ArrayMap arrayMap) {
        this.mViewsReadyListener = null;
        viewsReady(arrayMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeOpaque() {
        Activity activity;
        if (this.mHasStopped || (activity = this.mActivity) == null) {
            return;
        }
        if (this.mWasOpaque) {
            activity.convertFromTranslucent();
        }
        this.mActivity = null;
    }

    private ArrayMap<String, View> mapNamedElements(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        View view;
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.findNamedViews(arrayMap);
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                String str = arrayList2.get(i2);
                String str2 = arrayList.get(i2);
                if (str != null && !str.equals(str2) && (view = arrayMap.get(str)) != null) {
                    arrayMap.put(str2, view);
                }
            }
        }
        return arrayMap;
    }

    private void onTakeSharedElements() {
        Bundle bundle;
        if (!this.mIsReadyForTransition || (bundle = this.mSharedElementsBundle) == null) {
            return;
        }
        this.mSharedElementsBundle = null;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(bundle);
        SharedElementCallback sharedElementCallback = this.mListener;
        if (sharedElementCallback == null) {
            anonymousClass3.onSharedElementsReady();
        } else {
            sharedElementCallback.onSharedElementsArrived(this.mSharedElementNames, this.mSharedElements, anonymousClass3);
        }
    }

    private static void removeNullViews(ArrayList<View> arrayList) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == null) {
                    arrayList.remove(size);
                }
            }
        }
    }

    private void requestLayoutForSharedElements() {
        int size = this.mSharedElements.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mSharedElements.get(i2).requestLayout();
        }
    }

    private void sendSharedElementDestination() {
        boolean zIsLayoutRequested;
        ViewGroup decor = getDecor();
        int i2 = 0;
        if (allowOverlappingTransitions() && getEnterViewsTransition() != null) {
            zIsLayoutRequested = false;
            break;
        }
        zIsLayoutRequested = true;
        if (decor != null && ((zIsLayoutRequested = true ^ decor.isLayoutRequested()))) {
            for (int i3 = 0; i3 < this.mSharedElements.size(); i3++) {
                if (this.mSharedElements.get(i3).isLayoutRequested()) {
                    zIsLayoutRequested = false;
                    break;
                }
            }
        }
        if (zIsLayoutRequested) {
            Bundle bundleCaptureSharedElementState = captureSharedElementState();
            moveSharedElementsToOverlay();
            this.mResultReceiver.send(107, bundleCaptureSharedElementState);
        } else if (decor != null) {
            OneShotPreDrawListener.add(decor, new f(this, i2));
        }
        if (allowOverlappingTransitions()) {
            startEnterTransitionOnly();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sharedElementTransitionStarted() {
        this.mSharedElementTransitionStarted = true;
        if (this.mIsExitTransitionComplete) {
            send(104, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startEnterTransition(Transition transition) {
        ViewGroup decor = getDecor();
        if (this.mIsReturning || decor == null) {
            backgroundAnimatorComplete();
            return;
        }
        Drawable background = decor.getBackground();
        if (background == null) {
            if (transition != null) {
                transition.addListener(new TransitionListenerAdapter() { // from class: android.app.EnterTransitionCoordinator.7
                    @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition2) {
                        transition2.removeListener(this);
                        EnterTransitionCoordinator.this.makeOpaque();
                    }
                });
                backgroundAnimatorComplete();
                return;
            } else {
                makeOpaque();
                backgroundAnimatorComplete();
                return;
            }
        }
        Drawable drawableMutate = background.mutate();
        getWindow().setBackgroundDrawable(drawableMutate);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(drawableMutate, "alpha", 255);
        this.mBackgroundAnimator = objectAnimatorOfInt;
        objectAnimatorOfInt.setDuration(getFadeDuration());
        this.mBackgroundAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.app.EnterTransitionCoordinator.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                EnterTransitionCoordinator.this.makeOpaque();
                EnterTransitionCoordinator.this.backgroundAnimatorComplete();
            }
        });
        this.mBackgroundAnimator.start();
    }

    private void startEnterTransitionOnly() {
        startTransition(new Runnable() { // from class: android.app.EnterTransitionCoordinator.9
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup decor = EnterTransitionCoordinator.this.getDecor();
                if (decor != null) {
                    EnterTransitionCoordinator.this.startEnterTransition(EnterTransitionCoordinator.this.beginTransition(decor, true, false));
                }
            }
        });
    }

    private void startRejectedAnimations(final ArrayList<View> arrayList) {
        final ViewGroup decor;
        if (arrayList == null || arrayList.isEmpty() || (decor = getDecor()) == null) {
            return;
        }
        ViewGroupOverlay overlay = decor.getOverlay();
        int size = arrayList.size();
        ObjectAnimator objectAnimatorOfFloat = null;
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2);
            overlay.add(view);
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, 0.0f);
            objectAnimatorOfFloat.start();
        }
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: android.app.EnterTransitionCoordinator.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewGroupOverlay overlay2 = decor.getOverlay();
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    overlay2.remove((View) arrayList.get(i3));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSharedElementTransition(Bundle bundle) {
        ViewGroup decor = getDecor();
        if (decor == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.mAllSharedElementNames);
        arrayList.removeAll(this.mSharedElementNames);
        ArrayList<View> arrayListCreateSnapshots = createSnapshots(bundle, arrayList);
        SharedElementCallback sharedElementCallback = this.mListener;
        if (sharedElementCallback != null) {
            sharedElementCallback.onRejectSharedElements(arrayListCreateSnapshots);
        }
        removeNullViews(arrayListCreateSnapshots);
        startRejectedAnimations(arrayListCreateSnapshots);
        ArrayList<View> arrayListCreateSnapshots2 = createSnapshots(bundle, this.mSharedElementNames);
        showViews(this.mSharedElements, true);
        scheduleSetSharedElementEnd(arrayListCreateSnapshots2);
        ArrayList<ActivityTransitionCoordinator.SharedElementOriginalState> sharedElementState = setSharedElementState(bundle, arrayListCreateSnapshots2);
        requestLayoutForSharedElements();
        boolean z2 = allowOverlappingTransitions() && !this.mIsReturning;
        lambda$scheduleGhostVisibilityChange$1(4);
        scheduleGhostVisibilityChange(4);
        pauseInput();
        Transition transitionBeginTransition = beginTransition(decor, z2, true);
        scheduleGhostVisibilityChange(0);
        lambda$scheduleGhostVisibilityChange$1(0);
        if (z2) {
            startEnterTransition(transitionBeginTransition);
        }
        ActivityTransitionCoordinator.setOriginalSharedElementState(this.mSharedElements, sharedElementState);
        if (this.mResultReceiver != null) {
            decor.postOnAnimation(new Runnable() { // from class: android.app.EnterTransitionCoordinator.2
                int mAnimations;

                @Override // java.lang.Runnable
                public void run() {
                    int i2 = this.mAnimations;
                    this.mAnimations = i2 + 1;
                    if (i2 < 2) {
                        ViewGroup decor2 = EnterTransitionCoordinator.this.getDecor();
                        if (decor2 != null) {
                            decor2.postOnAnimation(this);
                            return;
                        }
                        return;
                    }
                    ResultReceiver resultReceiver = EnterTransitionCoordinator.this.mResultReceiver;
                    if (resultReceiver != null) {
                        resultReceiver.send(101, null);
                        EnterTransitionCoordinator.this.mResultReceiver = null;
                    }
                }
            });
        }
    }

    private void triggerViewsReady(ArrayMap<String, View> arrayMap) {
        if (this.mAreViewsReady) {
            return;
        }
        this.mAreViewsReady = true;
        ViewGroup decor = getDecor();
        if (decor == null || (decor.isAttachedToWindow() && (arrayMap.isEmpty() || !arrayMap.valueAt(0).isLayoutRequested()))) {
            viewsReady(arrayMap);
        } else {
            this.mViewsReadyListener = OneShotPreDrawListener.add(decor, new c(this, arrayMap, 2));
            decor.invalidate();
        }
    }

    public boolean cancelEnter() {
        lambda$scheduleGhostVisibilityChange$1(4);
        this.mHasStopped = true;
        this.mIsCanceled = true;
        clearState();
        return super.cancelPendingTransitions();
    }

    @Override // android.app.ActivityTransitionCoordinator
    public void clearState() {
        this.mSharedElementsBundle = null;
        this.mEnterViewsTransition = null;
        this.mResultReceiver = null;
        ObjectAnimator objectAnimator = this.mBackgroundAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mBackgroundAnimator = null;
        }
        super.clearState();
    }

    public void forceViewsToAppear() {
        OneShotPreDrawListener oneShotPreDrawListener;
        if (this.mIsReturning) {
            if (this.mIsReadyForTransition) {
                if (!this.mSharedElementTransitionStarted) {
                    moveSharedElementsFromOverlay();
                    this.mSharedElementTransitionStarted = true;
                    showViews(this.mSharedElements, true);
                    this.mSharedElements.clear();
                    sharedElementTransitionComplete();
                }
                if (!this.mIsViewsTransitionStarted) {
                    this.mIsViewsTransitionStarted = true;
                    showViews(this.mTransitioningViews, true);
                    setTransitioningViewsVisiblity(0, true);
                    this.mTransitioningViews.clear();
                    viewsTransitionComplete();
                }
                cancelPendingTransitions();
            } else {
                this.mIsReadyForTransition = true;
                if (getDecor() != null && (oneShotPreDrawListener = this.mViewsReadyListener) != null) {
                    oneShotPreDrawListener.removeListener();
                    this.mViewsReadyListener = null;
                }
                showViews(this.mTransitioningViews, true);
                setTransitioningViewsVisiblity(0, true);
                this.mSharedElements.clear();
                this.mAllSharedElementNames.clear();
                this.mTransitioningViews.clear();
                this.mIsReadyForTransition = true;
                viewsTransitionComplete();
                sharedElementTransitionComplete();
            }
            this.mAreViewsReady = true;
            ResultReceiver resultReceiver = this.mResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(106, null);
                this.mResultReceiver = null;
            }
        }
    }

    public Transition getEnterViewsTransition() {
        return this.mEnterViewsTransition;
    }

    public Transition getSharedElementTransition() {
        Window window = getWindow();
        if (window == null) {
            return null;
        }
        return this.mIsReturning ? window.getSharedElementReenterTransition() : window.getSharedElementEnterTransition();
    }

    @Override // android.app.ActivityTransitionCoordinator
    public Transition getViewsTransition() {
        Window window = getWindow();
        if (window == null) {
            return null;
        }
        return this.mIsReturning ? window.getReenterTransition() : window.getEnterTransition();
    }

    public boolean isCrossTask() {
        return this.mIsCrossTask;
    }

    public boolean isReturning() {
        return this.mIsReturning;
    }

    public boolean isWaitingForRemoteExit() {
        return this.mIsReturning && this.mResultReceiver != null;
    }

    public void namedViewsReady(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        triggerViewsReady(mapNamedElements(arrayList, arrayList2));
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i2, Bundle bundle) {
        if (i2 == 103) {
            if (this.mIsCanceled) {
                return;
            }
            this.mSharedElementsBundle = bundle;
            onTakeSharedElements();
            return;
        }
        if (i2 != 104) {
            if (i2 != 106) {
                return;
            }
            cancel();
        } else {
            if (this.mIsCanceled) {
                return;
            }
            this.mIsExitTransitionComplete = true;
            if (this.mSharedElementTransitionStarted) {
                onRemoteExitTransitionComplete();
            }
        }
    }

    public void onRemoteExitTransitionComplete() {
        if (allowOverlappingTransitions()) {
            return;
        }
        startEnterTransitionOnly();
    }

    @Override // android.app.ActivityTransitionCoordinator
    public void onTransitionsComplete() {
        moveSharedElementsFromOverlay();
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.sendAccessibilityEvent(2048);
            Window window = getWindow();
            if (window == null || this.mReplacedBackground != decor.getBackground()) {
                return;
            }
            window.setBackgroundDrawable(null);
        }
    }

    public void prepareEnter() {
        Drawable drawableMutate;
        ViewGroup decor = getDecor();
        if (this.mActivity == null || decor == null) {
            return;
        }
        if (!isCrossTask()) {
            this.mActivity.overridePendingTransition(0, 0);
        }
        if (this.mIsReturning) {
            this.mActivity = null;
            return;
        }
        this.mWasOpaque = this.mActivity.convertToTranslucent(null, null);
        Drawable background = decor.getBackground();
        if (background == null) {
            drawableMutate = new ColorDrawable(0);
            this.mReplacedBackground = drawableMutate;
        } else {
            getWindow().setBackgroundDrawable(null);
            drawableMutate = background.mutate();
            drawableMutate.setAlpha(0);
        }
        getWindow().setBackgroundDrawable(drawableMutate);
    }

    public void stop() {
        ViewGroup decor;
        Drawable background;
        ObjectAnimator objectAnimator = this.mBackgroundAnimator;
        if (objectAnimator != null) {
            objectAnimator.end();
            this.mBackgroundAnimator = null;
        } else if (this.mWasOpaque && (decor = getDecor()) != null && (background = decor.getBackground()) != null) {
            background.setAlpha(1);
        }
        makeOpaque();
        this.mIsCanceled = true;
        this.mResultReceiver = null;
        this.mActivity = null;
        moveSharedElementsFromOverlay();
        ArrayList<View> arrayList = this.mTransitioningViews;
        if (arrayList != null) {
            showViews(arrayList, true);
            setTransitioningViewsVisiblity(0, true);
        }
        showViews(this.mSharedElements, true);
        clearState();
    }

    public void viewInstancesReady(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<View> arrayList3) {
        boolean z2 = false;
        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
            View view = arrayList3.get(i2);
            if (!TextUtils.equals(view.getTransitionName(), arrayList2.get(i2)) || !view.isAttachedToWindow()) {
                z2 = true;
                break;
            }
        }
        if (z2) {
            triggerViewsReady(mapNamedElements(arrayList, arrayList2));
        } else {
            triggerViewsReady(mapSharedElements(arrayList, arrayList3));
        }
    }

    @Override // android.app.ActivityTransitionCoordinator
    public void viewsReady(ArrayMap<String, View> arrayMap) {
        ArrayList<View> arrayList;
        super.viewsReady(arrayMap);
        this.mIsReadyForTransition = true;
        hideViews(this.mSharedElements);
        Transition viewsTransition = getViewsTransition();
        if (viewsTransition != null && (arrayList = this.mTransitioningViews) != null) {
            ActivityTransitionCoordinator.removeExcludedViews(viewsTransition, arrayList);
            stripOffscreenViews();
            hideViews(this.mTransitioningViews);
        }
        if (this.mIsReturning) {
            sendSharedElementDestination();
        } else {
            moveSharedElementsToOverlay();
        }
        if (this.mSharedElementsBundle != null) {
            onTakeSharedElements();
        }
    }
}
