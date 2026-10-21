package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.IBinder;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.R;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PopupWindow {
    private static final int[] ABOVE_ANCHOR_STATE_SET = {16842922};
    private static final int ANIMATION_STYLE_DEFAULT = -1;
    private static final int DEFAULT_ANCHORED_GRAVITY = 8388659;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    private boolean mAboveAnchor;
    private Drawable mAboveAnchorBackgroundDrawable;
    private boolean mAllowScrollingAnchorParent;
    private WeakReference<View> mAnchor;
    private WeakReference<View> mAnchorRoot;
    private int mAnchorXoff;
    private int mAnchorYoff;
    private int mAnchoredGravity;
    private int mAnimationStyle;
    private boolean mAttachedInDecor;
    private boolean mAttachedInDecorSet;
    private Drawable mBackground;
    private View mBackgroundView;
    private Drawable mBelowAnchorBackgroundDrawable;
    private boolean mClipToScreen;
    private boolean mClippingEnabled;
    private View mContentView;
    private Context mContext;
    private PopupDecorView mDecorView;
    private float mElevation;
    private Transition mEnterTransition;
    private Rect mEpicenterBounds;
    private Transition mExitTransition;
    private boolean mFocusable;
    private int mGravity;
    private int mHeight;
    private int mHeightMode;
    private boolean mIgnoreCheekPress;
    private int mInputMethodMode;
    private boolean mIsAnchorRootAttached;
    private boolean mIsDropdown;
    private boolean mIsShowing;
    private boolean mIsTransitioningToDismiss;
    private int mLastHeight;
    private int mLastWidth;
    private boolean mLayoutInScreen;
    private boolean mLayoutInsetDecor;
    private boolean mNotTouchModal;
    private final View.OnAttachStateChangeListener mOnAnchorDetachedListener;
    private final View.OnAttachStateChangeListener mOnAnchorRootDetachedListener;
    private OnDismissListener mOnDismissListener;
    private final View.OnLayoutChangeListener mOnLayoutChangeListener;
    private final ViewTreeObserver.OnScrollChangedListener mOnScrollChangedListener;
    private boolean mOutsideTouchable;
    private boolean mOverlapAnchor;
    private WeakReference<View> mParentRootView;
    private boolean mPopupViewInitialLayoutDirectionInherited;
    private int mSoftInputMode;
    private int mSplitTouchEnabled;
    private final Rect mTempRect;
    private final int[] mTmpAppLocation;
    private final int[] mTmpDrawingLocation;
    private final int[] mTmpScreenLocation;
    private View.OnTouchListener mTouchInterceptor;
    private boolean mTouchable;
    private int mWidth;
    private int mWidthMode;
    private int mWindowLayoutType;
    private WindowManager mWindowManager;

    public interface OnDismissListener {
        void onDismiss();
    }

    public class PopupBackgroundView extends FrameLayout {
        public PopupBackgroundView(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public int[] onCreateDrawableState(int i2) {
            if (!PopupWindow.this.mAboveAnchor) {
                return super.onCreateDrawableState(i2);
            }
            int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
            View.mergeDrawableStates(iArrOnCreateDrawableState, PopupWindow.ABOVE_ANCHOR_STATE_SET);
            return iArrOnCreateDrawableState;
        }
    }

    public class PopupDecorView extends FrameLayout {
        private Runnable mCleanupAfterExit;
        private final View.OnAttachStateChangeListener mOnAnchorRootDetachedListener;

        public PopupDecorView(Context context) {
            super(context);
            this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.PopupDecorView.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    view.removeOnAttachStateChangeListener(this);
                    TransitionManager.endTransitions(PopupDecorView.this);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startExitTransition$0(Transition.TransitionListener transitionListener, Transition transition, View view) {
            transitionListener.onTransitionEnd(transition);
            if (view != null) {
                view.removeOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
            }
            this.mCleanupAfterExit = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startEnterTransition(Transition transition) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                transition.addTarget(childAt);
                childAt.setVisibility(4);
            }
            TransitionManager.beginDelayedTransition(this, transition);
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).setVisibility(0);
            }
        }

        public void cancelTransitions() {
            TransitionManager.endTransitions(this);
            Runnable runnable = this.mCleanupAfterExit;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            KeyEvent.DispatcherState keyDispatcherState;
            if (keyEvent.getKeyCode() != 4) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (getKeyDispatcherState() == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() != 1 || (keyDispatcherState = getKeyDispatcherState()) == null || !keyDispatcherState.isTracking(keyEvent) || keyEvent.isCanceled()) {
                return super.dispatchKeyEvent(keyEvent);
            }
            PopupWindow.this.dismiss();
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (PopupWindow.this.mTouchInterceptor == null || !PopupWindow.this.mTouchInterceptor.onTouch(this, motionEvent)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0 && (x2 < 0 || x2 >= getWidth() || y2 < 0 || y2 >= getHeight())) {
                PopupWindow.this.dismiss();
                return true;
            }
            if (motionEvent.getAction() != 4) {
                return super.onTouchEvent(motionEvent);
            }
            PopupWindow.this.dismiss();
            return true;
        }

        public void requestEnterTransition(Transition transition) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver == null || transition == null) {
                return;
            }
            final Transition transitionClone = transition.mo27clone();
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.widget.PopupWindow.PopupDecorView.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ViewTreeObserver viewTreeObserver2 = PopupDecorView.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    }
                    final Rect transitionEpicenter = PopupWindow.this.getTransitionEpicenter();
                    transitionClone.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.widget.PopupWindow.PopupDecorView.1.1
                        @Override // android.transition.Transition.EpicenterCallback
                        public Rect onGetEpicenter(Transition transition2) {
                            return transitionEpicenter;
                        }
                    });
                    PopupDecorView.this.startEnterTransition(transitionClone);
                }
            });
        }

        @Override // android.view.View
        public void requestKeyboardShortcuts(List<KeyboardShortcutGroup> list, int i2) {
            View view;
            if (PopupWindow.this.mParentRootView == null || (view = (View) PopupWindow.this.mParentRootView.get()) == null) {
                return;
            }
            view.requestKeyboardShortcuts(list, i2);
        }

        public void startExitTransition(final Transition transition, final View view, final Rect rect, final Transition.TransitionListener transitionListener) {
            if (transition == null) {
                return;
            }
            if (view != null) {
                view.addOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
            }
            this.mCleanupAfterExit = new Runnable() { // from class: android.widget.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f260b.lambda$startExitTransition$0(transitionListener, transition, view);
                }
            };
            Transition transitionClone = transition.mo27clone();
            transitionClone.addListener(new TransitionListenerAdapter() { // from class: android.widget.PopupWindow.PopupDecorView.2
                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition2) {
                    transition2.removeListener(this);
                    if (PopupDecorView.this.mCleanupAfterExit != null) {
                        PopupDecorView.this.mCleanupAfterExit.run();
                    }
                }
            });
            transitionClone.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.widget.PopupWindow.PopupDecorView.3
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition2) {
                    return rect;
                }
            });
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                transitionClone.addTarget(getChildAt(i2));
            }
            TransitionManager.beginDelayedTransition(this, transitionClone);
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).setVisibility(4);
            }
        }
    }

    public PopupWindow(Context context) {
        this(context, (AttributeSet) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alignToAnchor() {
        WeakReference<View> weakReference = this.mAnchor;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null && view.isAttachedToWindow() && hasDecorView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            updateAboveAnchor(findDropDownPosition(view, decorViewLayoutParams, this.mAnchorXoff, this.mAnchorYoff, decorViewLayoutParams.width, decorViewLayoutParams.height, this.mAnchoredGravity, false));
            update(decorViewLayoutParams.f211x, decorViewLayoutParams.f212y, -1, -1, true);
        }
    }

    private int computeAnimationResource() {
        int i2 = this.mAnimationStyle;
        if (i2 != -1) {
            return i2;
        }
        if (this.mIsDropdown) {
            return this.mAboveAnchor ? R.style.Animation_DropDownUp : R.style.Animation_DropDownDown;
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f A[PHI: r4
  0x001f: PHI (r4v3 int) = (r4v2 int), (r4v21 int) binds: [B:11:0x001d, B:8:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    private int computeFlags(int i2) {
        int i3 = i2 & (-8815129);
        if (this.mIgnoreCheekPress) {
            i3 |= 32768;
        }
        if (!this.mFocusable) {
            i3 |= 8;
            if (this.mInputMethodMode == 1) {
                i3 |= 131072;
            }
        } else if (this.mInputMethodMode == 2) {
            i3 |= 131072;
        }
        if (!this.mTouchable) {
            i3 |= 16;
        }
        if (this.mOutsideTouchable) {
            i3 |= 262144;
        }
        if (!this.mClippingEnabled || this.mClipToScreen) {
            i3 |= 512;
        }
        if (isSplitTouchEnabled()) {
            i3 |= 8388608;
        }
        if (this.mLayoutInScreen) {
            i3 |= 256;
        }
        if (this.mLayoutInsetDecor) {
            i3 |= 65536;
        }
        if (this.mNotTouchModal) {
            i3 |= 32;
        }
        return this.mAttachedInDecor ? i3 | 1073741824 : i3;
    }

    private int computeGravity() {
        int i2 = this.mGravity;
        if (i2 == 0) {
            i2 = 8388659;
        }
        if (this.mIsDropdown) {
            return (this.mClipToScreen || this.mClippingEnabled) ? i2 | 268435456 : i2;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    private PopupBackgroundView createBackgroundView(View view) {
        int i2;
        ViewGroup.LayoutParams layoutParams = this.mContentView.getLayoutParams();
        if (layoutParams != null) {
            i2 = layoutParams.height != -2 ? -1 : -2;
        }
        PopupBackgroundView popupBackgroundView = new PopupBackgroundView(this.mContext);
        popupBackgroundView.addView(view, new FrameLayout.LayoutParams(-1, i2));
        return popupBackgroundView;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    private PopupDecorView createDecorView(View view) {
        int i2;
        ViewGroup.LayoutParams layoutParams = this.mContentView.getLayoutParams();
        if (layoutParams != null) {
            i2 = layoutParams.height != -2 ? -1 : -2;
        }
        PopupDecorView popupDecorView = new PopupDecorView(this.mContext);
        popupDecorView.addView(view, -1, i2);
        popupDecorView.setClipChildren(false);
        popupDecorView.setClipToPadding(false);
        return popupDecorView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissImmediate(View view, ViewGroup viewGroup, View view2) {
        if (view.getParent() != null) {
            this.mWindowManager.removeViewImmediate(view);
        }
        if (viewGroup != null) {
            viewGroup.removeView(view2);
        }
        this.mDecorView = null;
        this.mBackgroundView = null;
        this.mIsTransitioningToDismiss = false;
    }

    private View getAppRootView(View view) {
        View windowView = WindowManagerGlobal.getInstance().getWindowView(view.getApplicationWindowToken());
        return windowView != null ? windowView : view.getRootView();
    }

    private Transition getTransition(int i2) {
        Transition transitionInflateTransition;
        if (i2 == 0 || i2 == 17760256 || (transitionInflateTransition = TransitionInflater.from(this.mContext).inflateTransition(i2)) == null) {
            return null;
        }
        if ((transitionInflateTransition instanceof TransitionSet) && ((TransitionSet) transitionInflateTransition).getTransitionCount() == 0) {
            return null;
        }
        return transitionInflateTransition;
    }

    private void invokePopup(WindowManager.LayoutParams layoutParams) {
        Context context = this.mContext;
        if (context != null) {
            layoutParams.packageName = context.getPackageName();
        }
        PopupDecorView popupDecorView = this.mDecorView;
        popupDecorView.setFitsSystemWindows(this.mLayoutInsetDecor);
        setLayoutDirectionFromAnchor();
        this.mWindowManager.addView(popupDecorView, layoutParams);
        Transition transition = this.mEnterTransition;
        if (transition != null) {
            popupDecorView.requestEnterTransition(transition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        alignToAnchor();
    }

    private boolean positionInDisplayHorizontal(WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        boolean z3;
        int i7 = i4 - i3;
        int i8 = layoutParams.f211x + i7;
        layoutParams.f211x = i8;
        int i9 = i8 + i2;
        if (i9 > i6) {
            layoutParams.f211x = i8 - (i9 - i6);
        }
        if (layoutParams.f211x < i5) {
            layoutParams.f211x = i5;
            int i10 = i6 - i5;
            if (!z2 || i2 <= i10) {
                z3 = false;
            } else {
                layoutParams.width = i10;
                z3 = true;
            }
        } else {
            z3 = true;
        }
        layoutParams.f211x -= i7;
        return z3;
    }

    private boolean positionInDisplayVertical(WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        boolean z3;
        int i7 = i4 - i3;
        int i8 = layoutParams.f212y + i7;
        layoutParams.f212y = i8;
        layoutParams.height = i2;
        int i9 = i8 + i2;
        if (i9 > i6) {
            layoutParams.f212y = i8 - (i9 - i6);
        }
        if (layoutParams.f212y < i5) {
            layoutParams.f212y = i5;
            int i10 = i6 - i5;
            if (!z2 || i2 <= i10) {
                z3 = false;
            } else {
                layoutParams.height = i10;
                z3 = true;
            }
        } else {
            z3 = true;
        }
        layoutParams.f212y -= i7;
        return z3;
    }

    private void preparePopup(WindowManager.LayoutParams layoutParams) {
        Context context;
        if (this.mContentView == null || (context = this.mContext) == null || this.mWindowManager == null) {
            throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
        }
        if (layoutParams.accessibilityTitle == null) {
            layoutParams.accessibilityTitle = context.getString(R.string.popup_window_default_title);
        }
        PopupDecorView popupDecorView = this.mDecorView;
        if (popupDecorView != null) {
            popupDecorView.cancelTransitions();
        }
        if (this.mBackground != null) {
            PopupBackgroundView popupBackgroundViewCreateBackgroundView = createBackgroundView(this.mContentView);
            this.mBackgroundView = popupBackgroundViewCreateBackgroundView;
            popupBackgroundViewCreateBackgroundView.setBackground(this.mBackground);
        } else {
            this.mBackgroundView = this.mContentView;
        }
        this.mDecorView = createDecorView(this.mBackgroundView);
        this.mBackgroundView.setElevation(this.mElevation);
        layoutParams.setSurfaceInsets(this.mBackgroundView, true, true);
        this.mPopupViewInitialLayoutDirectionInherited = this.mContentView.getRawLayoutDirection() == 2;
    }

    private void setLayoutDirectionFromAnchor() {
        View view;
        WeakReference<View> weakReference = this.mAnchor;
        if (weakReference == null || (view = weakReference.get()) == null || !this.mPopupViewInitialLayoutDirectionInherited) {
            return;
        }
        this.mDecorView.setLayoutDirection(view.getLayoutDirection());
    }

    private boolean tryFitHorizontal(WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        int i9 = layoutParams.f211x + (i6 - i5);
        int i10 = i8 - i9;
        if (i9 >= 0 && i3 <= i10) {
            return true;
        }
        return positionInDisplayHorizontal(layoutParams, i3, i5, i6, i7, i8, z2);
    }

    private boolean tryFitVertical(WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        int i9 = layoutParams.f212y + (i6 - i5);
        int i10 = i8 - i9;
        if (i9 >= 0 && i3 <= i10) {
            return true;
        }
        if (i3 > (i9 - i4) - i7) {
            return positionInDisplayVertical(layoutParams, i3, i5, i6, i7, i8, z2);
        }
        layoutParams.f212y = (i5 - i3) + (this.mOverlapAnchor ? i2 + i4 : i2);
        return true;
    }

    public void attachToAnchor(View view, int i2, int i3, int i4) {
        detachFromAnchor();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnScrollChangedListener(this.mOnScrollChangedListener);
        }
        view.addOnAttachStateChangeListener(this.mOnAnchorDetachedListener);
        View rootView = view.getRootView();
        rootView.addOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
        rootView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mAnchor = new WeakReference<>(view);
        this.mAnchorRoot = new WeakReference<>(rootView);
        this.mIsAnchorRootAttached = rootView.isAttachedToWindow();
        this.mParentRootView = this.mAnchorRoot;
        this.mAnchorXoff = i2;
        this.mAnchorYoff = i3;
        this.mAnchoredGravity = i4;
    }

    public final WindowManager.LayoutParams createPopupLayoutParams(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = computeGravity();
        layoutParams.flags = computeFlags(layoutParams.flags);
        layoutParams.type = this.mWindowLayoutType;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = this.mSoftInputMode;
        layoutParams.windowAnimations = computeAnimationResource();
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            layoutParams.format = drawable.getOpacity();
        } else {
            layoutParams.format = -3;
        }
        int i2 = this.mHeightMode;
        if (i2 < 0) {
            this.mLastHeight = i2;
            layoutParams.height = i2;
        } else {
            int i3 = this.mHeight;
            this.mLastHeight = i3;
            layoutParams.height = i3;
        }
        int i4 = this.mWidthMode;
        if (i4 < 0) {
            this.mLastWidth = i4;
            layoutParams.width = i4;
        } else {
            int i5 = this.mWidth;
            this.mLastWidth = i5;
            layoutParams.width = i5;
        }
        layoutParams.privateFlags = 98304;
        layoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    public void detachFromAnchor() {
        View anchor = getAnchor();
        if (anchor != null) {
            anchor.getViewTreeObserver().removeOnScrollChangedListener(this.mOnScrollChangedListener);
            anchor.removeOnAttachStateChangeListener(this.mOnAnchorDetachedListener);
        }
        WeakReference<View> weakReference = this.mAnchorRoot;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            view.removeOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
            view.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        }
        this.mAnchor = null;
        this.mAnchorRoot = null;
        this.mIsAnchorRootAttached = false;
    }

    public void dismiss() {
        if (!isShowing() || isTransitioningToDismiss()) {
            return;
        }
        final PopupDecorView popupDecorView = this.mDecorView;
        final View view = this.mContentView;
        ViewParent parent = view.getParent();
        final ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        popupDecorView.cancelTransitions();
        this.mIsShowing = false;
        this.mIsTransitioningToDismiss = true;
        Transition transition = this.mExitTransition;
        if (transition != null && popupDecorView.isLaidOut() && (this.mIsAnchorRootAttached || this.mAnchorRoot == null)) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) popupDecorView.getLayoutParams();
            layoutParams.flags = (layoutParams.flags | 16 | 8) & (-131073);
            this.mWindowManager.updateViewLayout(popupDecorView, layoutParams);
            WeakReference<View> weakReference = this.mAnchorRoot;
            popupDecorView.startExitTransition(transition, weakReference != null ? weakReference.get() : null, getTransitionEpicenter(), new TransitionListenerAdapter() { // from class: android.widget.PopupWindow.3
                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition2) {
                    PopupWindow.this.dismissImmediate(popupDecorView, viewGroup, view);
                }
            });
        } else {
            dismissImmediate(popupDecorView, viewGroup, view);
        }
        detachFromAnchor();
        OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean findDropDownPosition(View view, WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        char c;
        int height = view.getHeight();
        int width = view.getWidth();
        int i7 = this.mOverlapAnchor ? i3 - height : i3;
        int[] iArr = this.mTmpAppLocation;
        View appRootView = getAppRootView(view);
        appRootView.getLocationOnScreen(iArr);
        int[] iArr2 = this.mTmpScreenLocation;
        view.getLocationOnScreen(iArr2);
        int[] iArr3 = this.mTmpDrawingLocation;
        int i8 = iArr2[0] - iArr[0];
        iArr3[0] = i8;
        int i9 = iArr2[1] - iArr[1];
        iArr3[1] = i9;
        layoutParams.f211x = i8 + i2;
        layoutParams.f212y = i9 + height + i7;
        Rect rect = new Rect();
        appRootView.getWindowVisibleDisplayFrame(rect);
        int i10 = i4;
        if (i10 == -1) {
            i10 = rect.right - rect.left;
        }
        int i11 = i10;
        int i12 = i5 == -1 ? rect.bottom - rect.top : i5;
        layoutParams.gravity = computeGravity();
        layoutParams.width = i11;
        layoutParams.height = i12;
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, view.getLayoutDirection()) & 7;
        if (absoluteGravity == 5) {
            layoutParams.f211x -= i11 - width;
        }
        int i13 = i12;
        boolean zTryFitVertical = tryFitVertical(layoutParams, i7, i12, height, iArr3[1], iArr2[1], rect.top, rect.bottom, false);
        boolean zTryFitHorizontal = tryFitHorizontal(layoutParams, i2, i11, width, iArr3[0], iArr2[0], rect.left, rect.right, false);
        if (zTryFitVertical && zTryFitHorizontal) {
            c = 1;
        } else {
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            Rect rect2 = new Rect(scrollX, scrollY, scrollX + i11 + i2, scrollY + i13 + height + i7);
            if (z2 && view.requestRectangleOnScreen(rect2, true)) {
                view.getLocationOnScreen(iArr2);
                int i14 = iArr2[0] - iArr[0];
                iArr3[0] = i14;
                int i15 = iArr2[1] - iArr[1];
                iArr3[1] = i15;
                int i16 = i14 + i2;
                layoutParams.f211x = i16;
                layoutParams.f212y = i15 + height + i7;
                if (absoluteGravity == 5) {
                    layoutParams.f211x = i16 - (i11 - width);
                }
            }
            c = 1;
            tryFitVertical(layoutParams, i7, i13, height, iArr3[1], iArr2[1], rect.top, rect.bottom, this.mClipToScreen);
            tryFitHorizontal(layoutParams, i2, i11, width, iArr3[0], iArr2[0], rect.left, rect.right, this.mClipToScreen);
        }
        if (layoutParams.f212y < iArr3[c]) {
            return c;
        }
        return false;
    }

    public final boolean getAllowScrollingAnchorParent() {
        return this.mAllowScrollingAnchorParent;
    }

    public View getAnchor() {
        WeakReference<View> weakReference = this.mAnchor;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getAnimationStyle() {
        return this.mAnimationStyle;
    }

    public Drawable getBackground() {
        return this.mBackground;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public WindowManager.LayoutParams getDecorViewLayoutParams() {
        return (WindowManager.LayoutParams) this.mDecorView.getLayoutParams();
    }

    public float getElevation() {
        return this.mElevation;
    }

    public Transition getEnterTransition() {
        return this.mEnterTransition;
    }

    public Transition getExitTransition() {
        return this.mExitTransition;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getInputMethodMode() {
        return this.mInputMethodMode;
    }

    public int getMaxAvailableHeight(View view) {
        return getMaxAvailableHeight(view, 0);
    }

    public final OnDismissListener getOnDismissListener() {
        return this.mOnDismissListener;
    }

    public boolean getOverlapAnchor() {
        return this.mOverlapAnchor;
    }

    public int getSoftInputMode() {
        return this.mSoftInputMode;
    }

    public final Rect getTransitionEpicenter() {
        WeakReference<View> weakReference = this.mAnchor;
        View view = weakReference != null ? weakReference.get() : null;
        PopupDecorView popupDecorView = this.mDecorView;
        if (view == null || popupDecorView == null) {
            return null;
        }
        int[] locationOnScreen = view.getLocationOnScreen();
        int[] locationOnScreen2 = this.mDecorView.getLocationOnScreen();
        Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
        rect.offset(locationOnScreen[0] - locationOnScreen2[0], locationOnScreen[1] - locationOnScreen2[1]);
        Rect rect2 = this.mEpicenterBounds;
        if (rect2 != null) {
            int i2 = rect.left;
            int i3 = rect.top;
            rect.set(rect2);
            rect.offset(i2, i3);
        }
        return rect;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getWindowLayoutType() {
        return this.mWindowLayoutType;
    }

    public boolean hasContentView() {
        return this.mContentView != null;
    }

    public boolean hasDecorView() {
        return this.mDecorView != null;
    }

    public boolean isAboveAnchor() {
        return this.mAboveAnchor;
    }

    public boolean isAttachedInDecor() {
        return this.mAttachedInDecor;
    }

    public boolean isClippingEnabled() {
        return this.mClippingEnabled;
    }

    public boolean isFocusable() {
        return this.mFocusable;
    }

    public boolean isLayoutInScreenEnabled() {
        return this.mLayoutInScreen;
    }

    public final boolean isLayoutInsetDecor() {
        return this.mLayoutInsetDecor;
    }

    public boolean isOutsideTouchable() {
        return this.mOutsideTouchable;
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    public boolean isSplitTouchEnabled() {
        Context context;
        int i2 = this.mSplitTouchEnabled;
        if (i2 >= 0 || (context = this.mContext) == null) {
            return i2 == 1;
        }
        return context.getApplicationInfo().targetSdkVersion >= 11;
    }

    public boolean isTouchable() {
        return this.mTouchable;
    }

    public final boolean isTransitioningToDismiss() {
        return this.mIsTransitioningToDismiss;
    }

    public void setAllowScrollingAnchorParent(boolean z2) {
        this.mAllowScrollingAnchorParent = z2;
    }

    public void setAnimationStyle(int i2) {
        this.mAnimationStyle = i2;
    }

    public void setAttachedInDecor(boolean z2) {
        this.mAttachedInDecor = z2;
        this.mAttachedInDecorSet = true;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mBackground = drawable;
        if (drawable instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            int stateDrawableIndex = stateListDrawable.getStateDrawableIndex(ABOVE_ANCHOR_STATE_SET);
            int stateCount = stateListDrawable.getStateCount();
            int i2 = 0;
            while (true) {
                if (i2 >= stateCount) {
                    i2 = -1;
                    break;
                } else if (i2 != stateDrawableIndex) {
                    break;
                } else {
                    i2++;
                }
            }
            if (stateDrawableIndex == -1 || i2 == -1) {
                this.mBelowAnchorBackgroundDrawable = null;
                this.mAboveAnchorBackgroundDrawable = null;
            } else {
                this.mAboveAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(stateDrawableIndex);
                this.mBelowAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(i2);
            }
        }
    }

    public void setClipToScreenEnabled(boolean z2) {
        this.mClipToScreen = z2;
    }

    public void setClippingEnabled(boolean z2) {
        this.mClippingEnabled = z2;
    }

    public void setContentView(View view) {
        if (isShowing()) {
            return;
        }
        this.mContentView = view;
        if (this.mContext == null && view != null) {
            this.mContext = view.getContext();
        }
        if (this.mWindowManager == null && this.mContentView != null) {
            this.mWindowManager = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        }
        Context context = this.mContext;
        if (context == null || this.mAttachedInDecorSet) {
            return;
        }
        setAttachedInDecor(context.getApplicationInfo().targetSdkVersion >= 22);
    }

    public final void setDropDown(boolean z2) {
        this.mIsDropdown = z2;
    }

    public void setElevation(float f2) {
        this.mElevation = f2;
    }

    public void setEnterTransition(Transition transition) {
        this.mEnterTransition = transition;
    }

    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    public void setExitTransition(Transition transition) {
        this.mExitTransition = transition;
    }

    public void setFocusable(boolean z2) {
        this.mFocusable = z2;
    }

    public void setHeight(int i2) {
        this.mHeight = i2;
    }

    public void setIgnoreCheekPress() {
        this.mIgnoreCheekPress = true;
    }

    public void setInputMethodMode(int i2) {
        this.mInputMethodMode = i2;
    }

    public void setLayoutInScreenEnabled(boolean z2) {
        this.mLayoutInScreen = z2;
    }

    public void setLayoutInsetDecor(boolean z2) {
        this.mLayoutInsetDecor = z2;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void setOutsideTouchable(boolean z2) {
        this.mOutsideTouchable = z2;
    }

    public void setOverlapAnchor(boolean z2) {
        this.mOverlapAnchor = z2;
    }

    public final void setShowing(boolean z2) {
        this.mIsShowing = z2;
    }

    public void setSoftInputMode(int i2) {
        this.mSoftInputMode = i2;
    }

    public void setSplitTouchEnabled(boolean z2) {
        this.mSplitTouchEnabled = z2 ? 1 : 0;
    }

    public void setTouchInterceptor(View.OnTouchListener onTouchListener) {
        this.mTouchInterceptor = onTouchListener;
    }

    public void setTouchModal(boolean z2) {
        this.mNotTouchModal = !z2;
    }

    public void setTouchable(boolean z2) {
        this.mTouchable = z2;
    }

    public final void setTransitioningToDismiss(boolean z2) {
        this.mIsTransitioningToDismiss = z2;
    }

    public void setWidth(int i2) {
        this.mWidth = i2;
    }

    @Deprecated
    public void setWindowLayoutMode(int i2, int i3) {
        this.mWidthMode = i2;
        this.mHeightMode = i3;
    }

    public void setWindowLayoutType(int i2) {
        this.mWindowLayoutType = i2;
    }

    public void showAsDropDown(View view) {
        showAsDropDown(view, 0, 0);
    }

    public void showAtLocation(View view, int i2, int i3, int i4) {
        this.mParentRootView = new WeakReference<>(view.getRootView());
        showAtLocation(view.getWindowToken(), i2, i3, i4);
    }

    public void update() {
        boolean z2;
        if (isShowing() && hasContentView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            int iComputeAnimationResource = computeAnimationResource();
            boolean z3 = true;
            if (iComputeAnimationResource != decorViewLayoutParams.windowAnimations) {
                decorViewLayoutParams.windowAnimations = iComputeAnimationResource;
                z2 = true;
            } else {
                z2 = false;
            }
            int iComputeFlags = computeFlags(decorViewLayoutParams.flags);
            if (iComputeFlags != decorViewLayoutParams.flags) {
                decorViewLayoutParams.flags = iComputeFlags;
                z2 = true;
            }
            int iComputeGravity = computeGravity();
            if (iComputeGravity != decorViewLayoutParams.gravity) {
                decorViewLayoutParams.gravity = iComputeGravity;
            } else {
                z3 = z2;
            }
            if (z3) {
                WeakReference<View> weakReference = this.mAnchor;
                update(weakReference != null ? weakReference.get() : null, decorViewLayoutParams);
            }
        }
    }

    public final void updateAboveAnchor(boolean z2) {
        View view;
        if (z2 != this.mAboveAnchor) {
            this.mAboveAnchor = z2;
            if (this.mBackground == null || (view = this.mBackgroundView) == null) {
                return;
            }
            Drawable drawable = this.mAboveAnchorBackgroundDrawable;
            if (drawable == null) {
                view.refreshDrawableState();
            } else if (z2) {
                view.setBackground(drawable);
            } else {
                view.setBackground(this.mBelowAnchorBackgroundDrawable);
            }
        }
    }

    public PopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842870);
    }

    public int getMaxAvailableHeight(View view, int i2) {
        return getMaxAvailableHeight(view, i2, false);
    }

    public void showAsDropDown(View view, int i2, int i3) {
        showAsDropDown(view, i2, i3, 8388659);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public int getMaxAvailableHeight(View view, int i2, boolean z2) {
        int height;
        Rect rect = new Rect();
        getAppRootView(view).getWindowVisibleDisplayFrame(rect);
        if (z2) {
            Rect rect2 = new Rect();
            view.getWindowDisplayFrame(rect2);
            rect2.top = rect.top;
            rect2.right = rect.right;
            rect2.left = rect.left;
            rect = rect2;
        }
        int[] iArr = this.mTmpDrawingLocation;
        view.getLocationOnScreen(iArr);
        int i3 = rect.bottom;
        if (this.mOverlapAnchor) {
            height = iArr[1];
        } else {
            height = view.getHeight() + iArr[1];
        }
        int iMax = Math.max((i3 - height) - i2, (iArr[1] - rect.top) + i2);
        Drawable drawable = this.mBackground;
        if (drawable == null) {
            return iMax;
        }
        drawable.getPadding(this.mTempRect);
        Rect rect3 = this.mTempRect;
        return iMax - (rect3.top + rect3.bottom);
    }

    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (isShowing() || !hasContentView()) {
            return;
        }
        TransitionManager.endTransitions(this.mDecorView);
        attachToAnchor(view, i2, i3, i4);
        this.mIsShowing = true;
        this.mIsDropdown = true;
        WindowManager.LayoutParams layoutParamsCreatePopupLayoutParams = createPopupLayoutParams(view.getApplicationWindowToken());
        preparePopup(layoutParamsCreatePopupLayoutParams);
        updateAboveAnchor(findDropDownPosition(view, layoutParamsCreatePopupLayoutParams, i2, i3, layoutParamsCreatePopupLayoutParams.width, layoutParamsCreatePopupLayoutParams.height, i4, this.mAllowScrollingAnchorParent));
        layoutParamsCreatePopupLayoutParams.accessibilityIdOfAnchor = view.getAccessibilityViewId();
        invokePopup(layoutParamsCreatePopupLayoutParams);
    }

    public void showAtLocation(IBinder iBinder, int i2, int i3, int i4) {
        if (isShowing() || this.mContentView == null) {
            return;
        }
        TransitionManager.endTransitions(this.mDecorView);
        detachFromAnchor();
        this.mIsShowing = true;
        this.mIsDropdown = false;
        this.mGravity = i2;
        WindowManager.LayoutParams layoutParamsCreatePopupLayoutParams = createPopupLayoutParams(iBinder);
        preparePopup(layoutParamsCreatePopupLayoutParams);
        layoutParamsCreatePopupLayoutParams.f211x = i3;
        layoutParamsCreatePopupLayoutParams.f212y = i4;
        invokePopup(layoutParamsCreatePopupLayoutParams);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        Transition transitionClone;
        int resourceId;
        this.mTmpDrawingLocation = new int[2];
        this.mTmpScreenLocation = new int[2];
        this.mTmpAppLocation = new int[2];
        this.mTempRect = new Rect();
        this.mInputMethodMode = 0;
        final int i4 = 1;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mAttachedInDecor = true;
        this.mAttachedInDecorSet = false;
        this.mWidth = -2;
        this.mHeight = -2;
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mGravity = 0;
        this.mOnAnchorDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                PopupWindow.this.alignToAnchor();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }
        };
        this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                PopupWindow.this.mIsAnchorRootAttached = false;
            }
        };
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener(this) { // from class: android.widget.g
            public final /* synthetic */ PopupWindow c;

            {
                this.c = this;
            }

            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                int i5 = i4;
                PopupWindow popupWindow = this.c;
                switch (i5) {
                    case 0:
                        popupWindow.alignToAnchor();
                        break;
                    default:
                        popupWindow.alignToAnchor();
                        break;
                }
            }
        };
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener(this) { // from class: android.widget.h
            public final /* synthetic */ PopupWindow c;

            {
                this.c = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                switch (i4) {
                    case 0:
                        this.c.lambda$new$0(view, i5, i6, i7, i8, i9, i10, i11, i12);
                        break;
                    default:
                        this.c.lambda$new$0(view, i5, i6, i7, i8, i9, i10, i11, i12);
                        break;
                }
            }
        };
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PopupWindow, i2, i3);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.mElevation = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        this.mOverlapAnchor = typedArrayObtainStyledAttributes.getBoolean(2, false);
        if (!typedArrayObtainStyledAttributes.hasValueOrEmpty(1) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0)) == 16974586) {
            this.mAnimationStyle = -1;
        } else {
            this.mAnimationStyle = resourceId;
        }
        Transition transition = getTransition(typedArrayObtainStyledAttributes.getResourceId(4, 0));
        if (typedArrayObtainStyledAttributes.hasValueOrEmpty(5)) {
            transitionClone = getTransition(typedArrayObtainStyledAttributes.getResourceId(5, 0));
        } else {
            transitionClone = transition == null ? null : transition.mo27clone();
        }
        typedArrayObtainStyledAttributes.recycle();
        setEnterTransition(transition);
        setExitTransition(transitionClone);
        setBackgroundDrawable(drawable);
    }

    public void update(View view, WindowManager.LayoutParams layoutParams) {
        setLayoutDirectionFromAnchor();
        this.mWindowManager.updateViewLayout(this.mDecorView, layoutParams);
    }

    public void update(int i2, int i3) {
        WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
        update(decorViewLayoutParams.f211x, decorViewLayoutParams.f212y, i2, i3, false);
    }

    public void update(int i2, int i3, int i4, int i5) {
        update(i2, i3, i4, i5, false);
    }

    public void update(int i2, int i3, int i4, int i5, boolean z2) {
        View view;
        if (i4 >= 0) {
            this.mLastWidth = i4;
            setWidth(i4);
        }
        if (i5 >= 0) {
            this.mLastHeight = i5;
            setHeight(i5);
        }
        if (isShowing() && hasContentView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            int i6 = this.mWidthMode;
            if (i6 >= 0) {
                i6 = this.mLastWidth;
            }
            int accessibilityViewId = -1;
            boolean z3 = true;
            if (i4 != -1 && decorViewLayoutParams.width != i6) {
                this.mLastWidth = i6;
                decorViewLayoutParams.width = i6;
                z2 = true;
            }
            int i7 = this.mHeightMode;
            if (i7 >= 0) {
                i7 = this.mLastHeight;
            }
            if (i5 != -1 && decorViewLayoutParams.height != i7) {
                this.mLastHeight = i7;
                decorViewLayoutParams.height = i7;
                z2 = true;
            }
            if (decorViewLayoutParams.f211x != i2) {
                decorViewLayoutParams.f211x = i2;
                z2 = true;
            }
            if (decorViewLayoutParams.f212y != i3) {
                decorViewLayoutParams.f212y = i3;
                z2 = true;
            }
            int iComputeAnimationResource = computeAnimationResource();
            if (iComputeAnimationResource != decorViewLayoutParams.windowAnimations) {
                decorViewLayoutParams.windowAnimations = iComputeAnimationResource;
                z2 = true;
            }
            int iComputeFlags = computeFlags(decorViewLayoutParams.flags);
            if (iComputeFlags != decorViewLayoutParams.flags) {
                decorViewLayoutParams.flags = iComputeFlags;
                z2 = true;
            }
            int iComputeGravity = computeGravity();
            if (iComputeGravity != decorViewLayoutParams.gravity) {
                decorViewLayoutParams.gravity = iComputeGravity;
                z2 = true;
            }
            WeakReference<View> weakReference = this.mAnchor;
            if (weakReference == null || weakReference.get() == null) {
                view = null;
            } else {
                view = this.mAnchor.get();
                accessibilityViewId = view.getAccessibilityViewId();
            }
            if (accessibilityViewId != decorViewLayoutParams.accessibilityIdOfAnchor) {
                decorViewLayoutParams.accessibilityIdOfAnchor = accessibilityViewId;
            } else {
                z3 = z2;
            }
            if (z3) {
                update(view, decorViewLayoutParams);
            }
        }
    }

    public PopupWindow() {
        this((View) null, 0, 0);
    }

    public PopupWindow(View view) {
        this(view, 0, 0);
    }

    public void update(View view, int i2, int i3) {
        update(view, false, 0, 0, i2, i3);
    }

    public PopupWindow(int i2, int i3) {
        this((View) null, i2, i3);
    }

    public void update(View view, int i2, int i3, int i4, int i5) {
        update(view, true, i2, i3, i4, i5);
    }

    public PopupWindow(View view, int i2, int i3) {
        this(view, i2, i3, false);
    }

    private void update(View view, boolean z2, int i2, int i3, int i4, int i5) {
        if (isShowing() && hasContentView()) {
            WeakReference<View> weakReference = this.mAnchor;
            int i6 = this.mAnchoredGravity;
            boolean z3 = z2 && !(this.mAnchorXoff == i2 && this.mAnchorYoff == i3);
            if (weakReference == null || weakReference.get() != view || (z3 && !this.mIsDropdown)) {
                attachToAnchor(view, i2, i3, i6);
            } else if (z3) {
                this.mAnchorXoff = i2;
                this.mAnchorYoff = i3;
            }
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            int i7 = decorViewLayoutParams.gravity;
            int i8 = decorViewLayoutParams.width;
            int i9 = decorViewLayoutParams.height;
            int i10 = decorViewLayoutParams.f211x;
            int i11 = decorViewLayoutParams.f212y;
            int i12 = i4 < 0 ? this.mWidth : i4;
            int i13 = i5 < 0 ? this.mHeight : i5;
            updateAboveAnchor(findDropDownPosition(view, decorViewLayoutParams, this.mAnchorXoff, this.mAnchorYoff, i12, i13, i6, this.mAllowScrollingAnchorParent));
            update(decorViewLayoutParams.f211x, decorViewLayoutParams.f212y, i12 < 0 ? i12 : decorViewLayoutParams.width, i13 < 0 ? i13 : decorViewLayoutParams.height, (i7 == decorViewLayoutParams.gravity && i10 == decorViewLayoutParams.f211x && i11 == decorViewLayoutParams.f212y && i8 == decorViewLayoutParams.width && i9 == decorViewLayoutParams.height) ? false : true);
        }
    }

    public PopupWindow(View view, int i2, int i3, boolean z2) {
        this.mTmpDrawingLocation = new int[2];
        this.mTmpScreenLocation = new int[2];
        this.mTmpAppLocation = new int[2];
        this.mTempRect = new Rect();
        final int i4 = 0;
        this.mInputMethodMode = 0;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mAttachedInDecor = true;
        this.mAttachedInDecorSet = false;
        this.mWidth = -2;
        this.mHeight = -2;
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mGravity = 0;
        this.mOnAnchorDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                PopupWindow.this.alignToAnchor();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
            }
        };
        this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                PopupWindow.this.mIsAnchorRootAttached = false;
            }
        };
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener(this) { // from class: android.widget.g
            public final /* synthetic */ PopupWindow c;

            {
                this.c = this;
            }

            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                int i5 = i4;
                PopupWindow popupWindow = this.c;
                switch (i5) {
                    case 0:
                        popupWindow.alignToAnchor();
                        break;
                    default:
                        popupWindow.alignToAnchor();
                        break;
                }
            }
        };
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener(this) { // from class: android.widget.h
            public final /* synthetic */ PopupWindow c;

            {
                this.c = this;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                switch (i4) {
                    case 0:
                        this.c.lambda$new$0(view2, i5, i6, i7, i8, i9, i10, i11, i12);
                        break;
                    default:
                        this.c.lambda$new$0(view2, i5, i6, i7, i8, i9, i10, i11, i12);
                        break;
                }
            }
        };
        if (view != null) {
            Context context = view.getContext();
            this.mContext = context;
            this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        }
        setContentView(view);
        setWidth(i2);
        setHeight(i3);
        setFocusable(z2);
    }
}
