package android.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionSet;
import android.transition.Visibility;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.view.GhostView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ImageView;
import com.android.internal.view.OneShotPreDrawListener;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
abstract class ActivityTransitionCoordinator extends ResultReceiver {
    protected static final String KEY_ELEVATION = "shared_element:elevation";
    protected static final String KEY_IMAGE_MATRIX = "shared_element:imageMatrix";
    static final String KEY_REMOTE_RECEIVER = "android:remoteReceiver";
    protected static final String KEY_SCALE_TYPE = "shared_element:scaleType";
    protected static final String KEY_SCREEN_BOTTOM = "shared_element:screenBottom";
    protected static final String KEY_SCREEN_LEFT = "shared_element:screenLeft";
    protected static final String KEY_SCREEN_RIGHT = "shared_element:screenRight";
    protected static final String KEY_SCREEN_TOP = "shared_element:screenTop";
    protected static final String KEY_SNAPSHOT = "shared_element:bitmap";
    protected static final String KEY_TRANSLATION_Z = "shared_element:translationZ";
    public static final int MSG_CANCEL = 106;
    public static final int MSG_EXIT_TRANSITION_COMPLETE = 104;
    public static final int MSG_HIDE_SHARED_ELEMENTS = 101;
    public static final int MSG_SET_REMOTE_RECEIVER = 100;
    public static final int MSG_SHARED_ELEMENT_DESTINATION = 107;
    public static final int MSG_START_EXIT_TRANSITION = 105;
    public static final int MSG_TAKE_SHARED_ELEMENTS = 103;
    protected static final ImageView.ScaleType[] SCALE_TYPE_VALUES = ImageView.ScaleType.values();
    private static final String TAG = "ActivityTransitionCoordinator";
    protected final ArrayList<String> mAllSharedElementNames;
    private boolean mBackgroundAnimatorComplete;
    private final FixedEpicenterCallback mEpicenterCallback;
    private ArrayList<GhostViewListeners> mGhostViewListeners;
    protected final boolean mIsReturning;
    private boolean mIsStartingTransition;
    protected SharedElementCallback mListener;
    private ArrayMap<View, Float> mOriginalAlphas;
    private Runnable mPendingTransition;
    protected ResultReceiver mResultReceiver;
    protected final ArrayList<String> mSharedElementNames;
    private ArrayList<Matrix> mSharedElementParentMatrices;
    private boolean mSharedElementTransitionComplete;
    protected final ArrayList<View> mSharedElements;
    private ArrayList<View> mStrippedTransitioningViews;
    protected ArrayList<View> mTransitioningViews;
    private boolean mViewsTransitionComplete;
    private Window mWindow;

    public class ContinueTransitionListener extends TransitionListenerAdapter {
        public ContinueTransitionListener() {
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            ActivityTransitionCoordinator.this.mIsStartingTransition = false;
            Runnable runnable = ActivityTransitionCoordinator.this.mPendingTransition;
            ActivityTransitionCoordinator.this.mPendingTransition = null;
            if (runnable != null) {
                ActivityTransitionCoordinator.this.startTransition(runnable);
            }
        }
    }

    public static class FixedEpicenterCallback extends Transition.EpicenterCallback {
        private Rect mEpicenter;

        private FixedEpicenterCallback() {
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.mEpicenter;
        }

        public void setEpicenter(Rect rect) {
            this.mEpicenter = rect;
        }
    }

    public static class GhostViewListeners implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        private ViewGroup mDecor;
        private Matrix mMatrix = new Matrix();
        private View mParent;
        private View mView;
        private ViewTreeObserver mViewTreeObserver;

        public GhostViewListeners(View view, View view2, ViewGroup viewGroup) {
            this.mView = view;
            this.mParent = view2;
            this.mDecor = viewGroup;
            this.mViewTreeObserver = view2.getViewTreeObserver();
        }

        public View getView() {
            return this.mView;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            GhostView ghost = GhostView.getGhost(this.mView);
            if (ghost == null || !this.mView.isAttachedToWindow()) {
                removeListener();
                return true;
            }
            GhostView.calculateMatrix(this.mView, this.mDecor, this.mMatrix);
            ghost.setMatrix(this.mMatrix);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.mViewTreeObserver = view.getViewTreeObserver();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            removeListener();
        }

        public void removeListener() {
            if (this.mViewTreeObserver.isAlive()) {
                this.mViewTreeObserver.removeOnPreDrawListener(this);
            } else {
                this.mParent.getViewTreeObserver().removeOnPreDrawListener(this);
            }
            this.mParent.removeOnAttachStateChangeListener(this);
        }
    }

    public static class SharedElementOriginalState {
        int mBottom;
        float mElevation;
        int mLeft;
        Matrix mMatrix;
        int mMeasuredHeight;
        int mMeasuredWidth;
        int mRight;
        ImageView.ScaleType mScaleType;
        int mTop;
        float mTranslationZ;
    }

    public ActivityTransitionCoordinator(Window window, ArrayList<String> arrayList, SharedElementCallback sharedElementCallback, boolean z2) {
        super(new Handler());
        this.mSharedElements = new ArrayList<>();
        this.mSharedElementNames = new ArrayList<>();
        this.mTransitioningViews = new ArrayList<>();
        this.mEpicenterCallback = new FixedEpicenterCallback();
        this.mGhostViewListeners = new ArrayList<>();
        this.mOriginalAlphas = new ArrayMap<>();
        this.mStrippedTransitioningViews = new ArrayList<>();
        this.mWindow = window;
        this.mListener = sharedElementCallback;
        this.mAllSharedElementNames = arrayList;
        this.mIsReturning = z2;
    }

    private static void findIncludedViews(Transition transition, ArrayList<View> arrayList, ArraySet<View> arraySet) {
        int i2 = 0;
        if (!(transition instanceof TransitionSet)) {
            int size = arrayList.size();
            while (i2 < size) {
                View view = arrayList.get(i2);
                if (transition.isValidTarget(view)) {
                    arraySet.add(view);
                }
                i2++;
            }
            return;
        }
        TransitionSet transitionSet = (TransitionSet) transition;
        ArrayList arrayList2 = new ArrayList();
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            View view2 = arrayList.get(i3);
            if (transition.isValidTarget(view2)) {
                arrayList2.add(view2);
            }
        }
        int transitionCount = transitionSet.getTransitionCount();
        while (i2 < transitionCount) {
            findIncludedViews(transitionSet.getTransitionAt(i2), arrayList2, arraySet);
            i2++;
        }
    }

    private static SharedElementOriginalState getOldSharedElementState(View view, String str, Bundle bundle) {
        Bundle bundle2;
        SharedElementOriginalState sharedElementOriginalState = new SharedElementOriginalState();
        sharedElementOriginalState.mLeft = view.getLeft();
        sharedElementOriginalState.mTop = view.getTop();
        sharedElementOriginalState.mRight = view.getRight();
        sharedElementOriginalState.mBottom = view.getBottom();
        sharedElementOriginalState.mMeasuredWidth = view.getMeasuredWidth();
        sharedElementOriginalState.mMeasuredHeight = view.getMeasuredHeight();
        sharedElementOriginalState.mTranslationZ = view.getTranslationZ();
        sharedElementOriginalState.mElevation = view.getElevation();
        if (!(view instanceof ImageView) || (bundle2 = bundle.getBundle(str)) == null || bundle2.getInt(KEY_SCALE_TYPE, -1) < 0) {
            return sharedElementOriginalState;
        }
        ImageView imageView = (ImageView) view;
        ImageView.ScaleType scaleType = imageView.getScaleType();
        sharedElementOriginalState.mScaleType = scaleType;
        if (scaleType == ImageView.ScaleType.MATRIX) {
            sharedElementOriginalState.mMatrix = new Matrix(imageView.getImageMatrix());
        }
        return sharedElementOriginalState;
    }

    private void getSharedElementParentMatrix(View view, Matrix matrix) {
        int iIndexOf = this.mSharedElementParentMatrices == null ? -1 : this.mSharedElements.indexOf(view);
        if (iIndexOf >= 0) {
            matrix.set(this.mSharedElementParentMatrices.get(iIndexOf));
            return;
        }
        matrix.reset();
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.transformMatrixToLocal(matrix);
            matrix.postTranslate(viewGroup.getScrollX(), viewGroup.getScrollY());
        }
    }

    public static boolean isInTransitionGroup(ViewParent viewParent, ViewGroup viewGroup) {
        if (viewParent == viewGroup || !(viewParent instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup2 = (ViewGroup) viewParent;
        if (viewGroup2.isTransitionGroup()) {
            return true;
        }
        return isInTransitionGroup(viewGroup2.getParent(), viewGroup);
    }

    private static boolean isNested(View view, ArrayMap<String, View> arrayMap) {
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (arrayMap.containsValue(view2)) {
                return true;
            }
            parent = view2.getParent();
        }
        return false;
    }

    public static Transition mergeTransitions(Transition transition, Transition transition2) {
        if (transition == null) {
            return transition2;
        }
        if (transition2 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(transition);
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    private static void noLayoutSuppressionForVisibilityTransitions(Transition transition) {
        if (transition instanceof Visibility) {
            ((Visibility) transition).setSuppressLayout(false);
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i2 = 0; i2 < transitionCount; i2++) {
                noLayoutSuppressionForVisibilityTransitions(transitionSet.getTransitionAt(i2));
            }
        }
    }

    public static void removeExcludedViews(Transition transition, ArrayList<View> arrayList) {
        ArraySet arraySet = new ArraySet();
        findIncludedViews(transition, arrayList, arraySet);
        arrayList.clear();
        arrayList.addAll(arraySet);
    }

    private static int scaleTypeToInt(ImageView.ScaleType scaleType) {
        int i2 = 0;
        while (true) {
            ImageView.ScaleType[] scaleTypeArr = SCALE_TYPE_VALUES;
            if (i2 >= scaleTypeArr.length) {
                return -1;
            }
            if (scaleType == scaleTypeArr[i2]) {
                return i2;
            }
            i2++;
        }
    }

    public static void setOriginalSharedElementState(ArrayList<View> arrayList, ArrayList<SharedElementOriginalState> arrayList2) {
        ImageView.ScaleType scaleType;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = arrayList.get(i2);
            SharedElementOriginalState sharedElementOriginalState = arrayList2.get(i2);
            if ((view instanceof ImageView) && (scaleType = sharedElementOriginalState.mScaleType) != null) {
                ImageView imageView = (ImageView) view;
                imageView.setScaleType(scaleType);
                if (sharedElementOriginalState.mScaleType == ImageView.ScaleType.MATRIX) {
                    imageView.setImageMatrix(sharedElementOriginalState.mMatrix);
                }
            }
            view.setElevation(sharedElementOriginalState.mElevation);
            view.setTranslationZ(sharedElementOriginalState.mTranslationZ);
            view.measure(View.MeasureSpec.makeMeasureSpec(sharedElementOriginalState.mMeasuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(sharedElementOriginalState.mMeasuredHeight, 1073741824));
            view.layout(sharedElementOriginalState.mLeft, sharedElementOriginalState.mTop, sharedElementOriginalState.mRight, sharedElementOriginalState.mBottom);
        }
    }

    private void setSharedElementMatrices() {
        int size = this.mSharedElements.size();
        if (size > 0) {
            this.mSharedElementParentMatrices = new ArrayList<>(size);
        }
        for (int i2 = 0; i2 < size; i2++) {
            ViewGroup viewGroup = (ViewGroup) this.mSharedElements.get(i2).getParent();
            Matrix matrix = new Matrix();
            if (viewGroup != null) {
                viewGroup.transformMatrixToLocal(matrix);
                matrix.postTranslate(viewGroup.getScrollX(), viewGroup.getScrollY());
            }
            this.mSharedElementParentMatrices.add(matrix);
        }
    }

    private void setSharedElementState(View view, String str, Bundle bundle, Matrix matrix, RectF rectF, int[] iArr) {
        float f2;
        float f3;
        float f4;
        float f5;
        int i2;
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return;
        }
        if ((view instanceof ImageView) && (i2 = bundle2.getInt(KEY_SCALE_TYPE, -1)) >= 0) {
            ImageView imageView = (ImageView) view;
            ImageView.ScaleType scaleType = SCALE_TYPE_VALUES[i2];
            imageView.setScaleType(scaleType);
            if (scaleType == ImageView.ScaleType.MATRIX) {
                matrix.setValues(bundle2.getFloatArray(KEY_IMAGE_MATRIX));
                imageView.setImageMatrix(matrix);
            }
        }
        view.setTranslationZ(bundle2.getFloat(KEY_TRANSLATION_Z));
        view.setElevation(bundle2.getFloat(KEY_ELEVATION));
        float f6 = bundle2.getFloat(KEY_SCREEN_LEFT);
        float f7 = bundle2.getFloat(KEY_SCREEN_TOP);
        float f8 = bundle2.getFloat(KEY_SCREEN_RIGHT);
        float f9 = bundle2.getFloat(KEY_SCREEN_BOTTOM);
        if (iArr != null) {
            int i3 = iArr[0];
            f4 = f6 - i3;
            int i4 = iArr[1];
            f2 = f7 - i4;
            f3 = f8 - i3;
            f5 = f9 - i4;
        } else {
            getSharedElementParentMatrix(view, matrix);
            rectF.set(f6, f7, f8, f9);
            matrix.mapRect(rectF);
            float f10 = rectF.left;
            float f11 = rectF.top;
            view.getInverseMatrix().mapRect(rectF);
            float fWidth = rectF.width();
            float fHeight = rectF.height();
            view.setLeft(0);
            view.setTop(0);
            view.setRight(Math.round(fWidth));
            view.setBottom(Math.round(fHeight));
            rectF.set(0.0f, 0.0f, fWidth, fHeight);
            view.getMatrix().mapRect(rectF);
            float f12 = f10 - rectF.left;
            f2 = f11 - rectF.top;
            f3 = f12 + fWidth;
            f4 = f12;
            f5 = f2 + fHeight;
        }
        int iRound = Math.round(f4);
        int iRound2 = Math.round(f2);
        int iRound3 = Math.round(f3) - iRound;
        int iRound4 = Math.round(f5) - iRound2;
        view.measure(View.MeasureSpec.makeMeasureSpec(iRound3, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4, 1073741824));
        view.layout(iRound, iRound2, iRound3 + iRound, iRound4 + iRound2);
    }

    private void setSharedElements(ArrayMap<String, View> arrayMap) {
        boolean z2 = true;
        while (!arrayMap.isEmpty()) {
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                View viewValueAt = arrayMap.valueAt(size);
                String strKeyAt = arrayMap.keyAt(size);
                if (z2 && (viewValueAt == null || !viewValueAt.isAttachedToWindow() || strKeyAt == null)) {
                    arrayMap.removeAt(size);
                } else if (!isNested(viewValueAt, arrayMap)) {
                    this.mSharedElementNames.add(strKeyAt);
                    this.mSharedElements.add(viewValueAt);
                    arrayMap.removeAt(size);
                }
            }
            z2 = false;
        }
    }

    private void showView(View view, boolean z2) {
        Float fRemove = this.mOriginalAlphas.remove(view);
        if (fRemove != null) {
            view.setAlpha(fRemove.floatValue());
        }
        if (z2) {
            view.setTransitionAlpha(1.0f);
        }
    }

    private void startInputWhenTransitionsComplete() {
        ViewRootImpl viewRootImpl;
        if (this.mViewsTransitionComplete && this.mSharedElementTransitionComplete) {
            ViewGroup decor = getDecor();
            if (decor != null && (viewRootImpl = decor.getViewRootImpl()) != null) {
                viewRootImpl.setPausedForTransition(false);
            }
            onTransitionsComplete();
        }
    }

    public void backgroundAnimatorComplete() {
        this.mBackgroundAnimatorComplete = true;
    }

    public boolean cancelPendingTransitions() {
        this.mPendingTransition = null;
        return this.mIsStartingTransition;
    }

    public Bundle captureSharedElementState() {
        Bundle bundle = new Bundle();
        RectF rectF = new RectF();
        Matrix matrix = new Matrix();
        for (int i2 = 0; i2 < this.mSharedElements.size(); i2++) {
            captureSharedElementState(this.mSharedElements.get(i2), this.mSharedElementNames.get(i2), bundle, matrix, rectF);
        }
        return bundle;
    }

    public void clearState() {
        this.mWindow = null;
        this.mSharedElements.clear();
        this.mTransitioningViews = null;
        this.mStrippedTransitioningViews = null;
        this.mOriginalAlphas.clear();
        this.mResultReceiver = null;
        this.mPendingTransition = null;
        this.mListener = null;
        this.mSharedElementParentMatrices = null;
    }

    public Transition configureTransition(Transition transition, boolean z2) {
        if (transition != null) {
            Transition transitionMo27clone = transition.mo27clone();
            transitionMo27clone.setEpicenterCallback(this.mEpicenterCallback);
            transition = setTargets(transitionMo27clone, z2);
        }
        noLayoutSuppressionForVisibilityTransitions(transition);
        return transition;
    }

    public ArrayList<View> copyMappedViews() {
        return new ArrayList<>(this.mSharedElements);
    }

    public ArrayList<View> createSnapshots(Bundle bundle, Collection<String> collection) {
        SharedElementCallback sharedElementCallback;
        int size = collection.size();
        ArrayList<View> arrayList = new ArrayList<>(size);
        if (size == 0) {
            return arrayList;
        }
        Context context = getWindow().getContext();
        int[] iArr = new int[2];
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.getLocationOnScreen(iArr);
        }
        Matrix matrix = new Matrix();
        for (String str : collection) {
            Bundle bundle2 = bundle.getBundle(str);
            View view = null;
            if (bundle2 != null) {
                Parcelable parcelable = bundle2.getParcelable(KEY_SNAPSHOT);
                View viewOnCreateSnapshotView = (parcelable == null || (sharedElementCallback = this.mListener) == null) ? null : sharedElementCallback.onCreateSnapshotView(context, parcelable);
                if (viewOnCreateSnapshotView != null) {
                    setSharedElementState(viewOnCreateSnapshotView, str, bundle, matrix, null, iArr);
                }
                view = viewOnCreateSnapshotView;
            }
            arrayList.add(view);
        }
        return arrayList;
    }

    public ArrayList<String> getAcceptedNames() {
        return this.mSharedElementNames;
    }

    public ArrayList<String> getAllSharedElementNames() {
        return this.mAllSharedElementNames;
    }

    public ViewGroup getDecor() {
        Window window = this.mWindow;
        if (window == null) {
            return null;
        }
        return (ViewGroup) window.getDecorView();
    }

    public long getFadeDuration() {
        return getWindow().getTransitionBackgroundFadeDuration();
    }

    public ArrayList<String> getMappedNames() {
        ArrayList<String> arrayList = new ArrayList<>(this.mSharedElements.size());
        for (int i2 = 0; i2 < this.mSharedElements.size(); i2++) {
            arrayList.add(this.mSharedElements.get(i2).getTransitionName());
        }
        return arrayList;
    }

    public abstract Transition getViewsTransition();

    public Window getWindow() {
        return this.mWindow;
    }

    public void hideViews(ArrayList<View> arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2);
            if (!this.mOriginalAlphas.containsKey(view)) {
                this.mOriginalAlphas.put(view, Float.valueOf(view.getAlpha()));
            }
            view.setAlpha(0.0f);
        }
    }

    public boolean isTransitionRunning() {
        return (this.mViewsTransitionComplete && this.mSharedElementTransitionComplete && this.mBackgroundAnimatorComplete) ? false : true;
    }

    public boolean isViewsTransitionComplete() {
        return this.mViewsTransitionComplete;
    }

    public ArrayMap<String, View> mapSharedElements(ArrayList<String> arrayList, ArrayList<View> arrayList2) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayMap.put(arrayList.get(i2), arrayList2.get(i2));
            }
        } else {
            ViewGroup decor = getDecor();
            if (decor != null) {
                decor.findNamedViews(arrayMap);
            }
        }
        return arrayMap;
    }

    public boolean moveSharedElementWithParent() {
        return true;
    }

    public void moveSharedElementsFromOverlay() {
        ViewGroup decor;
        int size = this.mGhostViewListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mGhostViewListeners.get(i2).removeListener();
        }
        this.mGhostViewListeners.clear();
        Window window = this.mWindow;
        if (window == null || !window.getSharedElementsUseOverlay() || (decor = getDecor()) == null) {
            return;
        }
        decor.getOverlay();
        int size2 = this.mSharedElements.size();
        for (int i3 = 0; i3 < size2; i3++) {
            GhostView.removeGhost(this.mSharedElements.get(i3));
        }
    }

    public void moveSharedElementsToOverlay() {
        Window window = this.mWindow;
        if (window == null || !window.getSharedElementsUseOverlay()) {
            return;
        }
        setSharedElementMatrices();
        int size = this.mSharedElements.size();
        ViewGroup decor = getDecor();
        if (decor != null) {
            boolean zMoveSharedElementWithParent = moveSharedElementWithParent();
            Matrix matrix = new Matrix();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.mSharedElements.get(i2);
                if (view.isAttachedToWindow()) {
                    matrix.reset();
                    this.mSharedElementParentMatrices.get(i2).invert(matrix);
                    GhostView.addGhost(view, decor, matrix);
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (zMoveSharedElementWithParent && !isInTransitionGroup(viewGroup, decor)) {
                        GhostViewListeners ghostViewListeners = new GhostViewListeners(view, viewGroup, decor);
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(ghostViewListeners);
                        viewGroup.addOnAttachStateChangeListener(ghostViewListeners);
                        this.mGhostViewListeners.add(ghostViewListeners);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: notifySharedElementEnd, reason: merged with bridge method [inline-methods] */
    public void lambda$scheduleSetSharedElementEnd$0(ArrayList<View> arrayList) {
        SharedElementCallback sharedElementCallback = this.mListener;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementEnd(this.mSharedElementNames, this.mSharedElements, arrayList);
        }
    }

    public void onTransitionsComplete() {
    }

    public void pauseInput() {
        ViewGroup decor = getDecor();
        ViewRootImpl viewRootImpl = decor == null ? null : decor.getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.setPausedForTransition(true);
        }
    }

    public void scheduleGhostVisibilityChange(final int i2) {
        ViewGroup decor = getDecor();
        if (decor != null) {
            OneShotPreDrawListener.add(decor, new Runnable() { // from class: android.app.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15b.lambda$scheduleGhostVisibilityChange$1(i2);
                }
            });
        }
    }

    public void scheduleSetSharedElementEnd(ArrayList<View> arrayList) {
        ViewGroup decor = getDecor();
        if (decor != null) {
            OneShotPreDrawListener.add(decor, new c(this, arrayList, 0));
        }
    }

    public void setEpicenter() {
        int iIndexOf;
        setEpicenter((this.mAllSharedElementNames.isEmpty() || this.mSharedElementNames.isEmpty() || (iIndexOf = this.mSharedElementNames.indexOf(this.mAllSharedElementNames.get(0))) < 0) ? null : this.mSharedElements.get(iIndexOf));
    }

    /* JADX INFO: renamed from: setGhostVisibility, reason: merged with bridge method [inline-methods] */
    public void lambda$scheduleGhostVisibilityChange$1(int i2) {
        int size = this.mSharedElements.size();
        for (int i3 = 0; i3 < size; i3++) {
            GhostView ghost = GhostView.getGhost(this.mSharedElements.get(i3));
            if (ghost != null) {
                ghost.setVisibility(i2);
            }
        }
    }

    public void setResultReceiver(ResultReceiver resultReceiver) {
        this.mResultReceiver = resultReceiver;
    }

    public Transition setTargets(Transition transition, boolean z2) {
        ArrayList<View> arrayList;
        ArrayList<View> arrayList2;
        if (transition == null) {
            return null;
        }
        if (z2 && ((arrayList2 = this.mTransitioningViews) == null || arrayList2.isEmpty())) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        ArrayList<View> arrayList3 = this.mTransitioningViews;
        if (arrayList3 != null) {
            for (int size = arrayList3.size() - 1; size >= 0; size--) {
                View view = this.mTransitioningViews.get(size);
                if (z2) {
                    transitionSet.addTarget(view);
                } else {
                    transitionSet.excludeTarget(view, true);
                }
            }
        }
        ArrayList<View> arrayList4 = this.mStrippedTransitioningViews;
        if (arrayList4 != null) {
            for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                transitionSet.excludeTarget(this.mStrippedTransitioningViews.get(size2), true);
            }
        }
        transitionSet.addTransition(transition);
        return (z2 || (arrayList = this.mTransitioningViews) == null || arrayList.isEmpty()) ? transitionSet : new TransitionSet().addTransition(transitionSet);
    }

    public void setTransitioningViewsVisiblity(int i2, boolean z2) {
        ArrayList<View> arrayList = this.mTransitioningViews;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.mTransitioningViews.get(i3);
            if (z2) {
                view.setVisibility(i2);
            } else {
                view.setTransitionVisibility(i2);
            }
        }
    }

    public void sharedElementTransitionComplete() {
        this.mSharedElementTransitionComplete = true;
        startInputWhenTransitionsComplete();
    }

    public void showViews(ArrayList<View> arrayList, boolean z2) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            showView(arrayList.get(i2), z2);
        }
    }

    public void startTransition(Runnable runnable) {
        if (this.mIsStartingTransition) {
            this.mPendingTransition = runnable;
        } else {
            this.mIsStartingTransition = true;
            runnable.run();
        }
    }

    public void stripOffscreenViews() {
        if (this.mTransitioningViews == null) {
            return;
        }
        Rect rect = new Rect();
        for (int size = this.mTransitioningViews.size() - 1; size >= 0; size--) {
            View view = this.mTransitioningViews.get(size);
            if (!view.getGlobalVisibleRect(rect)) {
                this.mTransitioningViews.remove(size);
                this.mStrippedTransitioningViews.add(view);
            }
        }
    }

    public void transitionStarted() {
        this.mIsStartingTransition = false;
    }

    public void viewsReady(ArrayMap<String, View> arrayMap) {
        arrayMap.retainAll(this.mAllSharedElementNames);
        SharedElementCallback sharedElementCallback = this.mListener;
        if (sharedElementCallback != null) {
            sharedElementCallback.onMapSharedElements(this.mAllSharedElementNames, arrayMap);
        }
        setSharedElements(arrayMap);
        if (getViewsTransition() != null && this.mTransitioningViews != null) {
            ViewGroup decor = getDecor();
            if (decor != null) {
                decor.captureTransitioningViews(this.mTransitioningViews);
            }
            this.mTransitioningViews.removeAll(this.mSharedElements);
        }
        setEpicenter();
    }

    public void viewsTransitionComplete() {
        this.mViewsTransitionComplete = true;
        startInputWhenTransitionsComplete();
    }

    private void setEpicenter(View view) {
        if (view == null) {
            this.mEpicenterCallback.setEpicenter(null);
            return;
        }
        Rect rect = new Rect();
        view.getBoundsOnScreen(rect);
        this.mEpicenterCallback.setEpicenter(rect);
    }

    public void captureSharedElementState(View view, String str, Bundle bundle, Matrix matrix, RectF rectF) {
        Bundle bundle2 = new Bundle();
        matrix.reset();
        view.transformMatrixToGlobal(matrix);
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        bundle2.putFloat(KEY_SCREEN_LEFT, rectF.left);
        bundle2.putFloat(KEY_SCREEN_RIGHT, rectF.right);
        bundle2.putFloat(KEY_SCREEN_TOP, rectF.top);
        bundle2.putFloat(KEY_SCREEN_BOTTOM, rectF.bottom);
        bundle2.putFloat(KEY_TRANSLATION_Z, view.getTranslationZ());
        bundle2.putFloat(KEY_ELEVATION, view.getElevation());
        SharedElementCallback sharedElementCallback = this.mListener;
        Parcelable parcelableOnCaptureSharedElementSnapshot = sharedElementCallback != null ? sharedElementCallback.onCaptureSharedElementSnapshot(view, matrix, rectF) : null;
        if (parcelableOnCaptureSharedElementSnapshot != null) {
            bundle2.putParcelable(KEY_SNAPSHOT, parcelableOnCaptureSharedElementSnapshot);
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            bundle2.putInt(KEY_SCALE_TYPE, scaleTypeToInt(imageView.getScaleType()));
            if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                float[] fArr = new float[9];
                imageView.getImageMatrix().getValues(fArr);
                bundle2.putFloatArray(KEY_IMAGE_MATRIX, fArr);
            }
        }
        bundle.putBundle(str, bundle2);
    }

    public ArrayList<SharedElementOriginalState> setSharedElementState(Bundle bundle, ArrayList<View> arrayList) {
        ArrayList<SharedElementOriginalState> arrayList2 = new ArrayList<>();
        if (bundle != null) {
            Matrix matrix = new Matrix();
            RectF rectF = new RectF();
            int size = this.mSharedElements.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.mSharedElements.get(i2);
                String str = this.mSharedElementNames.get(i2);
                arrayList2.add(getOldSharedElementState(view, str, bundle));
                setSharedElementState(view, str, bundle, matrix, rectF, null);
            }
        }
        SharedElementCallback sharedElementCallback = this.mListener;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementStart(this.mSharedElementNames, this.mSharedElements, arrayList);
        }
        return arrayList2;
    }
}
