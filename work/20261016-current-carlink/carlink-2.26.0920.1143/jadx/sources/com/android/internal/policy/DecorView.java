package com.android.internal.policy;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.a;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.Property;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.DisplayListCanvas;
import android.view.InputQueue;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowCallbacks;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.android.internal.R;
import com.android.internal.view.FloatingActionMode;
import com.android.internal.view.RootViewSurfaceTaker;
import com.android.internal.view.StandaloneActionMode;
import com.android.internal.view.menu.ContextMenuBuilder;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuHelper;
import com.android.internal.widget.ActionBarContextView;
import com.android.internal.widget.BackgroundFallback;
import com.android.internal.widget.DecorCaptionView;
import com.android.internal.widget.DecorContentParent;
import com.android.internal.widget.FloatingToolbar;
import com.google.android.material.badge.BadgeDrawable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DecorView extends FrameLayout implements RootViewSurfaceTaker, WindowCallbacks {
    private static final boolean DEBUG_MEASURE = false;
    private static final int DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP = 20;
    private static final int DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP = 5;
    private static final String PROPERTY_PROFILE_DISPATCHINPUT = "persist.sys.dispatch_input";
    private static final boolean SWEEP_OPEN_MENU = false;
    private static final String TAG = "DecorView";
    private static boolean sDebugDispatchInput = false;
    private boolean mAllowUpdateElevation;
    private boolean mApplyFloatingHorizontalInsets;
    private boolean mApplyFloatingVerticalInsets;
    private float mAvailableWidth;
    private BackdropFrameRenderer mBackdropFrameRenderer;
    private final BackgroundFallback mBackgroundFallback;
    private final Rect mBackgroundPadding;
    private final int mBarEnterExitDuration;
    private Drawable mCaptionBackgroundDrawable;
    private boolean mChanging;
    ViewGroup mContentRoot;
    DecorCaptionView mDecorCaptionView;
    int mDefaultOpacity;
    private int mDownY;
    private final Rect mDrawingBounds;
    private boolean mElevationAdjustedForStack;
    private ObjectAnimator mFadeAnim;
    private final int mFeatureId;
    private ActionMode mFloatingActionMode;
    private View mFloatingActionModeOriginatingView;
    private final Rect mFloatingInsets;
    private FloatingToolbar mFloatingToolbar;
    private ViewTreeObserver.OnPreDrawListener mFloatingToolbarPreDrawListener;
    final boolean mForceWindowDrawsStatusBarBackground;
    private final Rect mFrameOffsets;
    private final Rect mFramePadding;
    private boolean mHasCaption;
    private final Interpolator mHideInterpolator;
    private final Paint mHorizontalResizeShadowPaint;
    private boolean mIsAddedToWindow;
    private boolean mIsInPictureInPictureMode;
    private Drawable.Callback mLastBackgroundDrawableCb;
    private int mLastBottomInset;
    private boolean mLastHasBottomStableInset;
    private boolean mLastHasLeftStableInset;
    private boolean mLastHasRightStableInset;
    private boolean mLastHasTopStableInset;
    private int mLastLeftInset;
    private ViewOutlineProvider mLastOutlineProvider;
    private int mLastRightInset;
    private boolean mLastShouldAlwaysConsumeNavBar;
    private int mLastTopInset;
    private int mLastWindowFlags;
    String mLogTag;
    private Drawable mMenuBackground;
    private final ColorViewState mNavigationColorViewState;
    private View mNavigationGuard;
    private Rect mOutsets;
    ActionMode mPrimaryActionMode;
    private PopupWindow mPrimaryActionModePopup;
    private ActionBarContextView mPrimaryActionModeView;
    private int mResizeMode;
    private final int mResizeShadowSize;
    private Drawable mResizingBackgroundDrawable;
    private int mRootScrollY;
    private final int mSemiTransparentStatusBarColor;
    private final Interpolator mShowInterpolator;
    private Runnable mShowPrimaryActionModePopup;
    int mStackId;
    private final ColorViewState mStatusColorViewState;
    private View mStatusGuard;
    private Rect mTempRect;
    private Drawable mUserCaptionBackgroundDrawable;
    private final Paint mVerticalResizeShadowPaint;
    private boolean mWatchingForMenu;
    private PhoneWindow mWindow;
    private boolean mWindowResizeCallbacksAdded;
    public static final ColorViewAttributes STATUS_BAR_COLOR_VIEW_ATTRIBUTES = new ColorViewAttributes(4, 67108864, 48, 3, 5, Window.STATUS_BAR_BACKGROUND_TRANSITION_NAME, 16908335, 1024);
    public static final ColorViewAttributes NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES = new ColorViewAttributes(2, 134217728, 80, 5, 3, Window.NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME, 16908336, 0);
    private static final ViewOutlineProvider PIP_OUTLINE_PROVIDER = new ViewOutlineProvider() { // from class: com.android.internal.policy.DecorView.1
        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(1.0f);
        }
    };

    public class ActionModeCallback2Wrapper extends ActionMode.Callback2 {
        private final ActionMode.Callback mWrapped;

        public ActionModeCallback2Wrapper(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            boolean z2;
            this.mWrapped.onDestroyActionMode(actionMode);
            boolean z3 = false;
            if (((View) DecorView.this).mContext.getApplicationInfo().targetSdkVersion >= 23) {
                DecorView decorView = DecorView.this;
                z2 = actionMode == decorView.mPrimaryActionMode;
                z3 = actionMode == decorView.mFloatingActionMode;
                if (!z2 && actionMode.getType() == 0) {
                    Log.e(DecorView.this.mLogTag, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; " + actionMode + " was not the current primary action mode! Expected " + DecorView.this.mPrimaryActionMode);
                }
                if (!z3 && actionMode.getType() == 1) {
                    Log.e(DecorView.this.mLogTag, "Destroying unexpected ActionMode instance of TYPE_FLOATING; " + actionMode + " was not the current floating action mode! Expected " + DecorView.this.mFloatingActionMode);
                }
            } else {
                z2 = actionMode.getType() == 0;
                if (actionMode.getType() == 1) {
                    z3 = true;
                }
            }
            if (z2) {
                if (DecorView.this.mPrimaryActionModePopup != null) {
                    DecorView decorView2 = DecorView.this;
                    decorView2.removeCallbacks(decorView2.mShowPrimaryActionModePopup);
                }
                if (DecorView.this.mPrimaryActionModeView != null) {
                    DecorView.this.endOnGoingFadeAnimation();
                    final ActionBarContextView actionBarContextView = DecorView.this.mPrimaryActionModeView;
                    DecorView decorView3 = DecorView.this;
                    decorView3.mFadeAnim = ObjectAnimator.ofFloat(decorView3.mPrimaryActionModeView, (Property<ActionBarContextView, Float>) View.ALPHA, 1.0f, 0.0f);
                    DecorView.this.mFadeAnim.addListener(new Animator.AnimatorListener() { // from class: com.android.internal.policy.DecorView.ActionModeCallback2Wrapper.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z4) {
                            a.a(this, animator, z4);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (actionBarContextView == DecorView.this.mPrimaryActionModeView) {
                                actionBarContextView.setVisibility(8);
                                if (DecorView.this.mPrimaryActionModePopup != null) {
                                    DecorView.this.mPrimaryActionModePopup.dismiss();
                                }
                                actionBarContextView.killMode();
                                DecorView.this.mFadeAnim = null;
                            }
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final /* synthetic */ void onAnimationStart(Animator animator, boolean z4) {
                            a.b(this, animator, z4);
                        }
                    });
                    DecorView.this.mFadeAnim.start();
                }
                DecorView.this.mPrimaryActionMode = null;
            } else if (z3) {
                DecorView.this.cleanupFloatingActionModeViews();
                DecorView.this.mFloatingActionMode = null;
            }
            if (DecorView.this.mWindow.getCallback() != null && !DecorView.this.mWindow.isDestroyed()) {
                try {
                    DecorView.this.mWindow.getCallback().onActionModeFinished(actionMode);
                } catch (AbstractMethodError unused) {
                }
            }
            DecorView.this.requestFitSystemWindows();
        }

        @Override // android.view.ActionMode.Callback2
        public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            ActionMode.Callback callback = this.mWrapped;
            if (callback instanceof ActionMode.Callback2) {
                ((ActionMode.Callback2) callback).onGetContentRect(actionMode, view, rect);
            } else {
                super.onGetContentRect(actionMode, view, rect);
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            DecorView.this.requestFitSystemWindows();
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }
    }

    public static class ColorViewAttributes {
        final int hideWindowFlag;
        final int horizontalGravity;
        final int id;
        final int seascapeGravity;
        final int systemUiHideFlag;
        final String transitionName;
        final int translucentFlag;
        final int verticalGravity;

        public boolean isPresent(int i2, int i3, boolean z2) {
            return (i2 & this.systemUiHideFlag) == 0 && (this.hideWindowFlag & i3) == 0 && ((Integer.MIN_VALUE & i3) != 0 || z2);
        }

        public boolean isVisible(boolean z2, int i2, int i3, boolean z3) {
            return z2 && ((-16777216) & i2) != 0 && ((this.translucentFlag & i3) == 0 || z3);
        }

        private ColorViewAttributes(int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8) {
            this.id = i7;
            this.systemUiHideFlag = i2;
            this.translucentFlag = i3;
            this.verticalGravity = i4;
            this.horizontalGravity = i5;
            this.seascapeGravity = i6;
            this.transitionName = str;
            this.hideWindowFlag = i8;
        }

        public boolean isVisible(int i2, int i3, int i4, boolean z2) {
            return isVisible(isPresent(i2, i4, z2), i3, i4, z2);
        }
    }

    public static class ColorViewState {
        final ColorViewAttributes attributes;
        int color;
        boolean visible;
        View view = null;
        int targetVisibility = 4;
        boolean present = false;

        public ColorViewState(ColorViewAttributes colorViewAttributes) {
            this.attributes = colorViewAttributes;
        }
    }

    public DecorView(Context context, int i2, PhoneWindow phoneWindow, WindowManager.LayoutParams layoutParams) {
        super(context);
        this.mAllowUpdateElevation = false;
        this.mElevationAdjustedForStack = false;
        this.mDefaultOpacity = -1;
        this.mDrawingBounds = new Rect();
        this.mBackgroundPadding = new Rect();
        this.mFramePadding = new Rect();
        this.mFrameOffsets = new Rect();
        this.mHasCaption = false;
        this.mStatusColorViewState = new ColorViewState(STATUS_BAR_COLOR_VIEW_ATTRIBUTES);
        this.mNavigationColorViewState = new ColorViewState(NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES);
        this.mBackgroundFallback = new BackgroundFallback();
        this.mLastTopInset = 0;
        this.mLastBottomInset = 0;
        this.mLastRightInset = 0;
        this.mLastLeftInset = 0;
        this.mLastHasTopStableInset = false;
        this.mLastHasBottomStableInset = false;
        this.mLastHasRightStableInset = false;
        this.mLastHasLeftStableInset = false;
        this.mLastWindowFlags = 0;
        this.mLastShouldAlwaysConsumeNavBar = false;
        this.mRootScrollY = 0;
        this.mOutsets = new Rect();
        this.mWindowResizeCallbacksAdded = false;
        this.mLastBackgroundDrawableCb = null;
        this.mBackdropFrameRenderer = null;
        this.mLogTag = TAG;
        this.mFloatingInsets = new Rect();
        this.mApplyFloatingVerticalInsets = false;
        this.mApplyFloatingHorizontalInsets = false;
        this.mResizeMode = -1;
        this.mVerticalResizeShadowPaint = new Paint();
        this.mHorizontalResizeShadowPaint = new Paint();
        this.mIsAddedToWindow = false;
        this.mFeatureId = i2;
        this.mShowInterpolator = AnimationUtils.loadInterpolator(context, 17563662);
        this.mHideInterpolator = AnimationUtils.loadInterpolator(context, 17563663);
        this.mBarEnterExitDuration = context.getResources().getInteger(R.integer.dock_enter_exit_duration);
        this.mForceWindowDrawsStatusBarBackground = context.getResources().getBoolean(R.bool.config_forceWindowDrawsStatusBarBackground) && context.getApplicationInfo().targetSdkVersion >= 24;
        this.mSemiTransparentStatusBarColor = context.getResources().getColor(R.color.system_bar_background_semi_transparent, null);
        updateAvailableWidth();
        setWindow(phoneWindow);
        updateLogTag(layoutParams);
        this.mResizeShadowSize = context.getResources().getDimensionPixelSize(R.dimen.resize_shadow_size);
        initResizingPaints();
        sDebugDispatchInput = SystemProperties.getBoolean(PROPERTY_PROFILE_DISPATCHINPUT, false);
    }

    public static int calculateStatusBarColor(int i2, int i3, int i4) {
        if ((67108864 & i2) != 0) {
            return i3;
        }
        if ((i2 & Integer.MIN_VALUE) != 0) {
            return i4;
        }
        return -16777216;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupFloatingActionModeViews() {
        FloatingToolbar floatingToolbar = this.mFloatingToolbar;
        if (floatingToolbar != null) {
            floatingToolbar.dismiss();
            this.mFloatingToolbar = null;
        }
        View view = this.mFloatingActionModeOriginatingView;
        if (view != null) {
            if (this.mFloatingToolbarPreDrawListener != null) {
                view.getViewTreeObserver().removeOnPreDrawListener(this.mFloatingToolbarPreDrawListener);
                this.mFloatingToolbarPreDrawListener = null;
            }
            this.mFloatingActionModeOriginatingView = null;
        }
    }

    private void cleanupPrimaryActionMode() {
        ActionMode actionMode = this.mPrimaryActionMode;
        if (actionMode != null) {
            actionMode.finish();
            this.mPrimaryActionMode = null;
        }
        ActionBarContextView actionBarContextView = this.mPrimaryActionModeView;
        if (actionBarContextView != null) {
            actionBarContextView.killMode();
        }
    }

    private ActionMode createActionMode(int i2, ActionMode.Callback2 callback2, View view) {
        return i2 != 1 ? createStandaloneActionMode(callback2) : createFloatingActionMode(view, callback2);
    }

    private DecorCaptionView createDecorCaptionView(LayoutInflater layoutInflater) {
        DecorCaptionView decorCaptionViewInflateDecorCaptionView = null;
        DecorCaptionView decorCaptionView = null;
        for (int childCount = getChildCount() - 1; childCount >= 0 && decorCaptionView == null; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt instanceof DecorCaptionView) {
                decorCaptionView = (DecorCaptionView) childAt;
                removeViewAt(childCount);
            }
        }
        int i2 = this.mWindow.getAttributes().type;
        boolean z2 = i2 == 1 || i2 == 2 || i2 == 4;
        if (!this.mWindow.isFloating() && z2 && ActivityManager.StackId.hasWindowDecor(this.mStackId)) {
            decorCaptionViewInflateDecorCaptionView = decorCaptionView == null ? inflateDecorCaptionView(layoutInflater) : decorCaptionView;
            decorCaptionViewInflateDecorCaptionView.setPhoneWindow(this.mWindow, true);
        }
        enableCaption(decorCaptionViewInflateDecorCaptionView != null);
        return decorCaptionViewInflateDecorCaptionView;
    }

    private ActionMode createFloatingActionMode(View view, ActionMode.Callback2 callback2) {
        ActionMode actionMode = this.mFloatingActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        cleanupFloatingActionModeViews();
        FloatingToolbar floatingToolbar = new FloatingToolbar(this.mWindow);
        this.mFloatingToolbar = floatingToolbar;
        final FloatingActionMode floatingActionMode = new FloatingActionMode(this.mContext, callback2, view, floatingToolbar);
        this.mFloatingActionModeOriginatingView = view;
        this.mFloatingToolbarPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.internal.policy.DecorView.5
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                floatingActionMode.updateViewLocationInWindow();
                return true;
            }
        };
        return floatingActionMode;
    }

    private ActionMode createStandaloneActionMode(ActionMode.Callback callback) {
        Context contextThemeWrapper;
        endOnGoingFadeAnimation();
        cleanupPrimaryActionMode();
        ActionBarContextView actionBarContextView = this.mPrimaryActionModeView;
        if (actionBarContextView == null || !actionBarContextView.isAttachedToWindow()) {
            if (this.mWindow.isFloating()) {
                TypedValue typedValue = new TypedValue();
                Resources.Theme theme = this.mContext.getTheme();
                theme.resolveAttribute(16843825, typedValue, true);
                if (typedValue.resourceId != 0) {
                    Resources.Theme themeNewTheme = this.mContext.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                    themeNewTheme.applyStyle(typedValue.resourceId, true);
                    contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
                    contextThemeWrapper.getTheme().setTo(themeNewTheme);
                } else {
                    contextThemeWrapper = this.mContext;
                }
                this.mPrimaryActionModeView = new ActionBarContextView(contextThemeWrapper);
                PopupWindow popupWindow = new PopupWindow(contextThemeWrapper, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                this.mPrimaryActionModePopup = popupWindow;
                popupWindow.setWindowLayoutType(2);
                this.mPrimaryActionModePopup.setContentView(this.mPrimaryActionModeView);
                this.mPrimaryActionModePopup.setWidth(-1);
                contextThemeWrapper.getTheme().resolveAttribute(16843499, typedValue, true);
                this.mPrimaryActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                this.mPrimaryActionModePopup.setHeight(-2);
                this.mShowPrimaryActionModePopup = new Runnable() { // from class: com.android.internal.policy.DecorView.3
                    @Override // java.lang.Runnable
                    public void run() {
                        DecorView.this.mPrimaryActionModePopup.showAtLocation(DecorView.this.mPrimaryActionModeView.getApplicationWindowToken(), 55, 0, 0);
                        DecorView.this.endOnGoingFadeAnimation();
                        if (!DecorView.this.shouldAnimatePrimaryActionModeView()) {
                            DecorView.this.mPrimaryActionModeView.setAlpha(1.0f);
                            DecorView.this.mPrimaryActionModeView.setVisibility(0);
                        } else {
                            DecorView decorView = DecorView.this;
                            decorView.mFadeAnim = ObjectAnimator.ofFloat(decorView.mPrimaryActionModeView, (Property<ActionBarContextView, Float>) View.ALPHA, 0.0f, 1.0f);
                            DecorView.this.mFadeAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.policy.DecorView.3.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    DecorView.this.mPrimaryActionModeView.setAlpha(1.0f);
                                    DecorView.this.mFadeAnim = null;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator) {
                                    DecorView.this.mPrimaryActionModeView.setVisibility(0);
                                }
                            });
                            DecorView.this.mFadeAnim.start();
                        }
                    }
                };
            } else {
                ViewStub viewStub = (ViewStub) findViewById(R.id.action_mode_bar_stub);
                if (viewStub != null) {
                    this.mPrimaryActionModeView = (ActionBarContextView) viewStub.inflate();
                    this.mPrimaryActionModePopup = null;
                }
            }
        }
        ActionBarContextView actionBarContextView2 = this.mPrimaryActionModeView;
        if (actionBarContextView2 == null) {
            return null;
        }
        actionBarContextView2.killMode();
        return new StandaloneActionMode(this.mPrimaryActionModeView.getContext(), this.mPrimaryActionModeView, callback, this.mPrimaryActionModePopup == null);
    }

    private float dipToPx(float f2) {
        return TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    private void drawResizingShadowIfNeeded(DisplayListCanvas displayListCanvas) {
        if (this.mResizeMode == 1) {
            PhoneWindow phoneWindow = this.mWindow;
            if (phoneWindow.mIsFloating || phoneWindow.isTranslucent() || this.mWindow.isShowingWallpaper()) {
                return;
            }
            displayListCanvas.save();
            displayListCanvas.translate(0.0f, getHeight() - this.mFrameOffsets.bottom);
            displayListCanvas.drawRect(0.0f, 0.0f, getWidth(), this.mResizeShadowSize, this.mHorizontalResizeShadowPaint);
            displayListCanvas.restore();
            displayListCanvas.save();
            displayListCanvas.translate(getWidth() - this.mFrameOffsets.right, 0.0f);
            displayListCanvas.drawRect(0.0f, 0.0f, this.mResizeShadowSize, getHeight(), this.mVerticalResizeShadowPaint);
            displayListCanvas.restore();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    private void drawableChanged() {
        if (this.mChanging) {
            return;
        }
        Rect rect = this.mFramePadding;
        int i2 = rect.left;
        Rect rect2 = this.mBackgroundPadding;
        setPadding(i2 + rect2.left, rect.top + rect2.top, rect.right + rect2.right, rect.bottom + rect2.bottom);
        requestLayout();
        invalidate();
        int opacity = -3;
        if (!ActivityManager.StackId.hasWindowShadow(this.mStackId)) {
            Drawable background = getBackground();
            Drawable foreground = getForeground();
            if (background == null) {
                opacity = -1;
            } else if (foreground == null) {
                opacity = background.getOpacity();
            } else {
                Rect rect3 = this.mFramePadding;
                if (rect3.left <= 0 && rect3.top <= 0 && rect3.right <= 0 && rect3.bottom <= 0) {
                    opacity = foreground.getOpacity();
                    int opacity2 = background.getOpacity();
                    if (opacity == -1 || opacity2 == -1) {
                        opacity = -1;
                    } else if (opacity == 0) {
                        opacity = opacity2;
                    } else if (opacity2 != 0) {
                        opacity2 = Drawable.resolveOpacity(opacity, opacity2);
                        opacity = opacity2;
                    }
                }
            }
        }
        this.mDefaultOpacity = opacity;
        if (this.mFeatureId < 0) {
            this.mWindow.setDefaultWindowFormat(opacity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endOnGoingFadeAnimation() {
        ObjectAnimator objectAnimator = this.mFadeAnim;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }

    private static Drawable enforceNonTranslucentBackground(Drawable drawable, boolean z2) {
        if (z2 || !(drawable instanceof ColorDrawable)) {
            return drawable;
        }
        ColorDrawable colorDrawable = (ColorDrawable) drawable;
        int color = colorDrawable.getColor();
        if (Color.alpha(color) == 255) {
            return drawable;
        }
        ColorDrawable colorDrawable2 = (ColorDrawable) colorDrawable.getConstantState().newDrawable().mutate();
        colorDrawable2.setColor(Color.argb(255, Color.red(color), Color.green(color), Color.blue(color)));
        return colorDrawable2;
    }

    public static int getColorViewBottomInset(int i2, int i3) {
        return Math.min(i2, i3);
    }

    public static int getColorViewLeftInset(int i2, int i3) {
        return Math.min(i2, i3);
    }

    public static int getColorViewRightInset(int i2, int i3) {
        return Math.min(i2, i3);
    }

    public static int getColorViewTopInset(int i2, int i3) {
        return Math.min(i2, i3);
    }

    private int getCurrentColor(ColorViewState colorViewState) {
        if (colorViewState.visible) {
            return colorViewState.color;
        }
        return 0;
    }

    public static int getNavBarSize(int i2, int i3, int i4) {
        if (isNavBarToRightEdge(i2, i3)) {
            return i3;
        }
        return isNavBarToLeftEdge(i2, i4) ? i4 : i2;
    }

    public static void getNavigationBarRect(int i2, int i3, Rect rect, Rect rect2, Rect rect3) {
        int colorViewBottomInset = getColorViewBottomInset(rect.bottom, rect2.bottom);
        int colorViewLeftInset = getColorViewLeftInset(rect.left, rect2.left);
        int colorViewLeftInset2 = getColorViewLeftInset(rect.right, rect2.right);
        int navBarSize = getNavBarSize(colorViewBottomInset, colorViewLeftInset2, colorViewLeftInset);
        if (isNavBarToRightEdge(colorViewBottomInset, colorViewLeftInset2)) {
            rect3.set(i2 - navBarSize, 0, i2, i3);
        } else if (isNavBarToLeftEdge(colorViewBottomInset, colorViewLeftInset)) {
            rect3.set(0, 0, navBarSize, i3);
        } else {
            rect3.set(0, i3 - navBarSize, i2, i3);
        }
    }

    public static Drawable getResizingBackgroundDrawable(Context context, int i2, int i3, boolean z2) {
        Drawable drawable;
        Drawable drawable2;
        if (i2 == 0 || (drawable2 = context.getDrawable(i2)) == null) {
            return (i3 == 0 || (drawable = context.getDrawable(i3)) == null) ? new ColorDrawable(-16777216) : enforceNonTranslucentBackground(drawable, z2);
        }
        return enforceNonTranslucentBackground(drawable2, z2);
    }

    private int getStackId() {
        int windowStackId;
        Window.WindowControllerCallback windowControllerCallback = this.mWindow.getWindowControllerCallback();
        if (windowControllerCallback != null) {
            try {
                windowStackId = windowControllerCallback.getWindowStackId();
            } catch (RemoteException unused) {
                Log.e(this.mLogTag, "Failed to get the workspace ID of a PhoneWindow.");
                windowStackId = -1;
            }
        } else {
            windowStackId = -1;
        }
        if (windowStackId == -1) {
            return 1;
        }
        return windowStackId;
    }

    private static String getTitleSuffix(WindowManager.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return "";
        }
        String[] strArrSplit = layoutParams.getTitle().toString().split("\\.");
        return strArrSplit.length > 0 ? strArrSplit[strArrSplit.length - 1] : "";
    }

    private DecorCaptionView inflateDecorCaptionView(LayoutInflater layoutInflater) {
        Context context = getContext();
        DecorCaptionView decorCaptionView = (DecorCaptionView) LayoutInflater.from(context).inflate(R.layout.decor_caption, (ViewGroup) null);
        setDecorCaptionShade(context, decorCaptionView);
        return decorCaptionView;
    }

    private void initResizingPaints() {
        int color = this.mContext.getResources().getColor(R.color.resize_shadow_start_color, null);
        int color2 = this.mContext.getResources().getColor(R.color.resize_shadow_end_color, null);
        int i2 = (color + color2) / 2;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.mHorizontalResizeShadowPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, this.mResizeShadowSize, new int[]{color, i2, color2}, new float[]{0.0f, 0.3f, 1.0f}, tileMode));
        this.mVerticalResizeShadowPaint.setShader(new LinearGradient(0.0f, 0.0f, this.mResizeShadowSize, 0.0f, new int[]{color, i2, color2}, new float[]{0.0f, 0.3f, 1.0f}, tileMode));
    }

    private void initializeElevation() {
        this.mAllowUpdateElevation = false;
        updateElevation();
    }

    public static boolean isAddedToWindow(View view) {
        if (view instanceof DecorView) {
            return ((DecorView) view).mIsAddedToWindow;
        }
        return false;
    }

    public static boolean isNavBarToLeftEdge(int i2, int i3) {
        return i2 == 0 && i3 > 0;
    }

    public static boolean isNavBarToRightEdge(int i2, int i3) {
        return i2 == 0 && i3 > 0;
    }

    private boolean isOutOfBounds(int i2, int i3) {
        return i2 < -5 || i3 < -5 || i2 > getWidth() + 5 || i3 > getHeight() + 5;
    }

    private boolean isOutOfInnerBounds(int i2, int i3) {
        return i2 < 0 || i3 < 0 || i2 > getWidth() || i3 > getHeight();
    }

    private boolean isResizing() {
        return this.mBackdropFrameRenderer != null;
    }

    private void loadBackgroundDrawablesIfNeeded() {
        if (this.mResizingBackgroundDrawable == null) {
            Context context = getContext();
            PhoneWindow phoneWindow = this.mWindow;
            Drawable resizingBackgroundDrawable = getResizingBackgroundDrawable(context, phoneWindow.mBackgroundResource, phoneWindow.mBackgroundFallbackResource, phoneWindow.isTranslucent() || this.mWindow.isShowingWallpaper());
            this.mResizingBackgroundDrawable = resizingBackgroundDrawable;
            if (resizingBackgroundDrawable == null) {
                Log.w(this.mLogTag, "Failed to find background drawable for PhoneWindow=" + this.mWindow);
            }
        }
        if (this.mCaptionBackgroundDrawable == null) {
            this.mCaptionBackgroundDrawable = getContext().getDrawable(R.drawable.decor_caption_title_focused);
        }
        Drawable drawable = this.mResizingBackgroundDrawable;
        if (drawable != null) {
            this.mLastBackgroundDrawableCb = drawable.getCallback();
            this.mResizingBackgroundDrawable.setCallback(null);
        }
    }

    private void releaseThreadedRenderer() {
        Drawable.Callback callback;
        Drawable drawable = this.mResizingBackgroundDrawable;
        if (drawable != null && (callback = this.mLastBackgroundDrawableCb) != null) {
            drawable.setCallback(callback);
            this.mLastBackgroundDrawableCb = null;
        }
        BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
        if (backdropFrameRenderer != null) {
            backdropFrameRenderer.releaseRenderer();
            this.mBackdropFrameRenderer = null;
            updateElevation();
        }
    }

    public static void setAddedToWindow(View view) {
        if (view instanceof DecorView) {
            ((DecorView) view).mIsAddedToWindow = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void setColor(View view, int i2, int i3, boolean z2, boolean z3) {
        if (i3 == 0) {
            view.setTag(null);
            view.setBackgroundColor(i2);
            return;
        }
        Pair pair = (Pair) view.getTag();
        if (pair != null && ((Boolean) pair.first).booleanValue() == z2 && ((Boolean) pair.second).booleanValue() == z3) {
            LayerDrawable layerDrawable = (LayerDrawable) view.getBackground();
            ((ColorDrawable) ((InsetDrawable) layerDrawable.getDrawable(1)).getDrawable()).setColor(i2);
            ((ColorDrawable) layerDrawable.getDrawable(0)).setColor(i3);
        } else {
            int iRound = Math.round(TypedValue.applyDimension(1, 1.0f, view.getContext().getResources().getDisplayMetrics()));
            view.setBackground(new LayerDrawable(new Drawable[]{new ColorDrawable(i3), new InsetDrawable((Drawable) new ColorDrawable(i2), (!z2 || z3) ? 0 : iRound, !z2 ? iRound : 0, (z2 && z3) ? iRound : 0, 0)}));
            view.setTag(new Pair(Boolean.valueOf(z2), Boolean.valueOf(z3)));
        }
    }

    private void setDarkDecorCaptionShade(DecorCaptionView decorCaptionView) {
        decorCaptionView.findViewById(R.id.maximize_window).setBackgroundResource(R.drawable.decor_maximize_button_dark);
        decorCaptionView.findViewById(R.id.close_window).setBackgroundResource(R.drawable.decor_close_button_dark);
    }

    private void setDecorCaptionShade(Context context, DecorCaptionView decorCaptionView) {
        int decorCaptionShade = this.mWindow.getDecorCaptionShade();
        if (decorCaptionShade == 1) {
            setLightDecorCaptionShade(decorCaptionView);
            return;
        }
        if (decorCaptionShade == 2) {
            setDarkDecorCaptionShade(decorCaptionView);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843827, typedValue, true);
        if (Color.luminance(typedValue.data) < 0.5d) {
            setLightDecorCaptionShade(decorCaptionView);
        } else {
            setDarkDecorCaptionShade(decorCaptionView);
        }
    }

    private void setHandledActionMode(ActionMode actionMode) {
        if (actionMode.getType() == 0) {
            setHandledPrimaryActionMode(actionMode);
        } else if (actionMode.getType() == 1) {
            setHandledFloatingActionMode(actionMode);
        }
    }

    private void setHandledFloatingActionMode(ActionMode actionMode) {
        this.mFloatingActionMode = actionMode;
        actionMode.invalidate();
        this.mFloatingActionModeOriginatingView.getViewTreeObserver().addOnPreDrawListener(this.mFloatingToolbarPreDrawListener);
    }

    private void setHandledPrimaryActionMode(ActionMode actionMode) {
        endOnGoingFadeAnimation();
        this.mPrimaryActionMode = actionMode;
        actionMode.invalidate();
        this.mPrimaryActionModeView.initForMode(this.mPrimaryActionMode);
        if (this.mPrimaryActionModePopup != null) {
            post(this.mShowPrimaryActionModePopup);
        } else if (shouldAnimatePrimaryActionModeView()) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mPrimaryActionModeView, (Property<ActionBarContextView, Float>) View.ALPHA, 0.0f, 1.0f);
            this.mFadeAnim = objectAnimatorOfFloat;
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.policy.DecorView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DecorView.this.mPrimaryActionModeView.setAlpha(1.0f);
                    DecorView.this.mFadeAnim = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DecorView.this.mPrimaryActionModeView.setVisibility(0);
                }
            });
            this.mFadeAnim.start();
        } else {
            this.mPrimaryActionModeView.setAlpha(1.0f);
            this.mPrimaryActionModeView.setVisibility(0);
        }
        this.mPrimaryActionModeView.sendAccessibilityEvent(32);
    }

    private void setLightDecorCaptionShade(DecorCaptionView decorCaptionView) {
        decorCaptionView.findViewById(R.id.maximize_window).setBackgroundResource(R.drawable.decor_maximize_button_light);
        decorCaptionView.findViewById(R.id.close_window).setBackgroundResource(R.drawable.decor_close_button_light);
    }

    private boolean showContextMenuForChildInternal(View view, float f2, float f3) {
        MenuHelper menuHelper = this.mWindow.mContextMenuHelper;
        if (menuHelper != null) {
            menuHelper.dismiss();
            this.mWindow.mContextMenuHelper = null;
        }
        PhoneWindow phoneWindow = this.mWindow;
        PhoneWindow.PhoneWindowMenuCallback phoneWindowMenuCallback = phoneWindow.mContextMenuCallback;
        ContextMenuBuilder contextMenuBuilder = phoneWindow.mContextMenu;
        if (contextMenuBuilder == null) {
            phoneWindow.mContextMenu = new ContextMenuBuilder(getContext());
            this.mWindow.mContextMenu.setCallback(phoneWindowMenuCallback);
        } else {
            contextMenuBuilder.clearAll();
        }
        boolean z2 = (Float.isNaN(f2) || Float.isNaN(f3)) ? false : true;
        MenuHelper menuHelperShowPopup = z2 ? this.mWindow.mContextMenu.showPopup(getContext(), view, f2, f3) : this.mWindow.mContextMenu.showDialog(view, view.getWindowToken());
        if (menuHelperShowPopup != null) {
            phoneWindowMenuCallback.setShowDialogForSubmenu(!z2);
            menuHelperShowPopup.setPresenterCallback(phoneWindowMenuCallback);
        }
        this.mWindow.mContextMenuHelper = menuHelperShowPopup;
        return menuHelperShowPopup != null;
    }

    private void updateAvailableWidth() {
        Resources resources = getResources();
        this.mAvailableWidth = TypedValue.applyDimension(1, resources.getConfiguration().screenWidthDp, resources.getDisplayMetrics());
    }

    private void updateColorViewInt(final ColorViewState colorViewState, int i2, int i3, int i4, int i5, boolean z2, boolean z3, int i6, boolean z4, boolean z5) {
        int i7;
        boolean z6;
        int i8 = i6;
        boolean zIsPresent = colorViewState.attributes.isPresent(i2, this.mWindow.getAttributes().flags, z5);
        colorViewState.present = zIsPresent;
        boolean zIsVisible = colorViewState.attributes.isVisible(zIsPresent, i3, this.mWindow.getAttributes().flags, z5);
        boolean z7 = zIsVisible && !isResizing() && i5 > 0;
        View view = colorViewState.view;
        int i9 = z2 ? -1 : i5;
        int i10 = z2 ? i5 : -1;
        ColorViewAttributes colorViewAttributes = colorViewState.attributes;
        if (z2) {
            i7 = z3 ? colorViewAttributes.seascapeGravity : colorViewAttributes.horizontalGravity;
        } else {
            i7 = colorViewAttributes.verticalGravity;
        }
        if (view != null) {
            int i11 = z7 ? 0 : 4;
            boolean z8 = colorViewState.targetVisibility != i11;
            colorViewState.targetVisibility = i11;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int i12 = z3 ? 0 : i8;
            boolean z9 = z8;
            if (!z3) {
                i8 = 0;
            }
            if (layoutParams.height != i9 || layoutParams.width != i10 || layoutParams.gravity != i7 || layoutParams.rightMargin != i12 || layoutParams.leftMargin != i8) {
                layoutParams.height = i9;
                layoutParams.width = i10;
                layoutParams.gravity = i7;
                layoutParams.rightMargin = i12;
                layoutParams.leftMargin = i8;
                view.setLayoutParams(layoutParams);
            }
            if (z7) {
                setColor(view, i3, i4, z2, z3);
            }
            z6 = z9;
        } else if (z7) {
            view = new View(this.mContext);
            colorViewState.view = view;
            setColor(view, i3, i4, z2, z3);
            view.setTransitionName(colorViewState.attributes.transitionName);
            view.setId(colorViewState.attributes.id);
            view.setVisibility(4);
            colorViewState.targetVisibility = 0;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i10, i9, i7);
            if (z3) {
                layoutParams2.leftMargin = i8;
            } else {
                layoutParams2.rightMargin = i8;
            }
            addView(view, layoutParams2);
            updateColorViewTranslations();
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            view.animate().cancel();
            if (!z4 || isResizing()) {
                view.setAlpha(1.0f);
                view.setVisibility(z7 ? 0 : 4);
            } else if (z7) {
                if (view.getVisibility() != 0) {
                    view.setVisibility(0);
                    view.setAlpha(0.0f);
                }
                view.animate().alpha(1.0f).setInterpolator(this.mShowInterpolator).setDuration(this.mBarEnterExitDuration);
            } else {
                view.animate().alpha(0.0f).setInterpolator(this.mHideInterpolator).setDuration(this.mBarEnterExitDuration).withEndAction(new Runnable() { // from class: com.android.internal.policy.DecorView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        colorViewState.view.setAlpha(1.0f);
                        colorViewState.view.setVisibility(4);
                    }
                });
            }
        }
        colorViewState.visible = zIsVisible;
        colorViewState.color = i3;
    }

    private void updateColorViewTranslations() {
        int i2 = this.mRootScrollY;
        View view = this.mStatusColorViewState.view;
        if (view != null) {
            view.setTranslationY(i2 > 0 ? i2 : 0.0f);
        }
        View view2 = this.mNavigationColorViewState.view;
        if (view2 != null) {
            view2.setTranslationY(i2 < 0 ? i2 : 0.0f);
        }
    }

    private void updateElevation() {
        float fDipToPx;
        boolean z2 = this.mElevationAdjustedForStack;
        if (this.mStackId == 2 && !isResizing()) {
            fDipToPx = dipToPx(this.mAllowUpdateElevation ? hasWindowFocus() ? 20.0f : 5.0f : 20.0f);
            this.mElevationAdjustedForStack = true;
        } else if (this.mStackId == 4) {
            fDipToPx = dipToPx(5.0f);
            this.mElevationAdjustedForStack = true;
        } else {
            this.mElevationAdjustedForStack = false;
            fDipToPx = 0.0f;
        }
        if ((z2 || this.mElevationAdjustedForStack) && getElevation() != fDipToPx) {
            this.mWindow.setElevation(fDipToPx);
        }
    }

    private WindowInsets updateNavigationGuard(WindowInsets windowInsets) {
        if (this.mWindow.getAttributes().type != 2011 || (this.mWindow.getAttributes().flags & 33554432) != 0) {
            return windowInsets;
        }
        ViewGroup viewGroup = this.mWindow.mContentParent;
        if (viewGroup != null && (viewGroup.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mWindow.mContentParent.getLayoutParams();
            marginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom();
            this.mWindow.mContentParent.setLayoutParams(marginLayoutParams);
        }
        View view = this.mNavigationGuard;
        if (view == null) {
            View view2 = new View(this.mContext);
            this.mNavigationGuard = view2;
            view2.setBackgroundColor(this.mContext.getColor(R.color.input_method_navigation_guard));
            addView(this.mNavigationGuard, indexOfChild(this.mNavigationColorViewState.view), new FrameLayout.LayoutParams(-1, windowInsets.getSystemWindowInsetBottom(), BadgeDrawable.BOTTOM_START));
        } else {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.height = windowInsets.getSystemWindowInsetBottom();
            this.mNavigationGuard.setLayoutParams(layoutParams);
        }
        updateNavigationGuardColor();
        return windowInsets.consumeSystemWindowInsets(false, false, false, true);
    }

    private WindowInsets updateStatusGuard(WindowInsets windowInsets) {
        boolean z2;
        boolean z3;
        ActionBarContextView actionBarContextView = this.mPrimaryActionModeView;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mPrimaryActionModeView.getLayoutParams();
            boolean z4 = true;
            if (this.mPrimaryActionModeView.isShown()) {
                if (this.mTempRect == null) {
                    this.mTempRect = new Rect();
                }
                Rect rect = this.mTempRect;
                this.mWindow.mContentParent.computeSystemWindowInsets(windowInsets, rect);
                if (marginLayoutParams.topMargin != (rect.top == 0 ? windowInsets.getSystemWindowInsetTop() : 0)) {
                    marginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop();
                    View view = this.mStatusGuard;
                    if (view == null) {
                        View view2 = new View(this.mContext);
                        this.mStatusGuard = view2;
                        view2.setBackgroundColor(this.mContext.getColor(R.color.input_method_navigation_guard));
                        addView(this.mStatusGuard, indexOfChild(this.mStatusColorViewState.view), new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, BadgeDrawable.TOP_START));
                    } else {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                        int i2 = layoutParams.height;
                        int i3 = marginLayoutParams.topMargin;
                        if (i2 != i3) {
                            layoutParams.height = i3;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                z2 = this.mStatusGuard != null;
                windowInsets = windowInsets.consumeSystemWindowInsets(false, ((this.mWindow.getLocalFeaturesPrivate() & 1024) == 0) && z2, false, false);
                z4 = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z4 = false;
                z2 = false;
            }
            if (z4) {
                this.mPrimaryActionModeView.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.mStatusGuard;
        if (view3 != null) {
            view3.setVisibility(z2 ? 0 : 8);
        }
        return windowInsets;
    }

    public void clearContentView() {
        DecorCaptionView decorCaptionView = this.mDecorCaptionView;
        if (decorCaptionView != null) {
            decorCaptionView.removeContentView();
            return;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != this.mStatusColorViewState.view && childAt != this.mNavigationColorViewState.view && childAt != this.mStatusGuard && childAt != this.mNavigationGuard) {
                removeViewAt(childCount);
            }
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        Window.Callback callback = this.mWindow.getCallback();
        return (callback == null || this.mWindow.isDestroyed() || this.mFeatureId >= 0) ? super.dispatchGenericMotionEvent(motionEvent) : callback.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z2 = keyEvent.getAction() == 0;
        if (sDebugDispatchInput) {
            Log.d(TAG, "dispatchKeyEvent, event: " + keyEvent);
        }
        if (z2 && keyEvent.getRepeatCount() == 0) {
            int i2 = this.mWindow.mPanelChordingKey;
            if (i2 > 0 && i2 != keyCode && dispatchKeyShortcutEvent(keyEvent)) {
                return true;
            }
            PhoneWindow phoneWindow = this.mWindow;
            PhoneWindow.PanelFeatureState panelFeatureState = phoneWindow.mPreparedPanel;
            if (panelFeatureState != null && panelFeatureState.isOpen && phoneWindow.performPanelShortcut(panelFeatureState, keyCode, keyEvent, 0)) {
                return true;
            }
        }
        if (sDebugDispatchInput) {
            Log.d(TAG, "No window pannel handle, so deliver to activity, mWindow.isDestroyed() " + this.mWindow.isDestroyed() + ", mWindow.getCallback(): " + this.mWindow.getCallback());
        }
        if (!this.mWindow.isDestroyed()) {
            Window.Callback callback = this.mWindow.getCallback();
            if ((callback == null || this.mFeatureId >= 0) ? super.dispatchKeyEvent(keyEvent) : callback.dispatchKeyEvent(keyEvent)) {
                return true;
            }
        }
        PhoneWindow phoneWindow2 = this.mWindow;
        return z2 ? phoneWindow2.onKeyDown(this.mFeatureId, keyEvent.getKeyCode(), keyEvent) : phoneWindow2.onKeyUp(this.mFeatureId, keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        PhoneWindow phoneWindow = this.mWindow;
        PhoneWindow.PanelFeatureState panelFeatureState = phoneWindow.mPreparedPanel;
        if (panelFeatureState != null && phoneWindow.performPanelShortcut(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PhoneWindow.PanelFeatureState panelFeatureState2 = this.mWindow.mPreparedPanel;
            if (panelFeatureState2 != null) {
                panelFeatureState2.isHandled = true;
            }
            return true;
        }
        Window.Callback callback = this.mWindow.getCallback();
        if ((callback == null || this.mWindow.isDestroyed() || this.mFeatureId >= 0) ? super.dispatchKeyShortcutEvent(keyEvent) : callback.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        PhoneWindow.PanelFeatureState panelState = this.mWindow.getPanelState(0, false);
        if (panelState != null) {
            PhoneWindow phoneWindow2 = this.mWindow;
            if (phoneWindow2.mPreparedPanel == null) {
                phoneWindow2.preparePanel(panelState, keyEvent);
                boolean zPerformPanelShortcut = this.mWindow.performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
                panelState.isPrepared = false;
                if (zPerformPanelShortcut) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchPointerCaptureChanged(boolean z2) {
        super.dispatchPointerCaptureChanged(z2);
        if (this.mWindow.isDestroyed() || this.mWindow.getCallback() == null) {
            return;
        }
        this.mWindow.getCallback().onPointerCaptureChanged(z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        Window.Callback callback = this.mWindow.getCallback();
        if (callback == null || this.mWindow.isDestroyed() || !callback.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
            return super.dispatchPopulateAccessibilityEventInternal(accessibilityEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (sDebugDispatchInput) {
            Log.d(TAG, "dispatchTouchEvent, deliver to activity, mWindow.isDestroyed() " + this.mWindow.isDestroyed() + ", mWindow.getCallback(): " + this.mWindow.getCallback());
        }
        Window.Callback callback = this.mWindow.getCallback();
        return (callback == null || this.mWindow.isDestroyed() || this.mFeatureId >= 0) ? super.dispatchTouchEvent(motionEvent) : callback.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        Window.Callback callback = this.mWindow.getCallback();
        return (callback == null || this.mWindow.isDestroyed() || this.mFeatureId >= 0) ? super.dispatchTrackballEvent(motionEvent) : callback.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.mMenuBackground;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public void enableCaption(boolean z2) {
        if (this.mHasCaption != z2) {
            this.mHasCaption = z2;
            if (getForeground() != null) {
                drawableChanged();
            }
        }
    }

    public void finishChanging() {
        this.mChanging = false;
        drawableChanged();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        return gatherTransparentRegion(this.mStatusColorViewState, region) || gatherTransparentRegion(this.mNavigationColorViewState, region) || super.gatherTransparentRegion(region);
    }

    @Override // android.view.View
    public int getAccessibilityViewId() {
        return 2147483646;
    }

    public int getCaptionHeight() {
        if (isShowingCaption()) {
            return this.mDecorCaptionView.getCaptionHeight();
        }
        return 0;
    }

    public boolean isShowingCaption() {
        DecorCaptionView decorCaptionView = this.mDecorCaptionView;
        return decorCaptionView != null && decorCaptionView.isCaptionShowing();
    }

    @Override // android.view.ViewGroup
    public boolean isTransitionGroup() {
        return false;
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
        this.mFloatingInsets.setEmpty();
        if ((attributes.flags & 256) == 0) {
            if (attributes.height == -2) {
                this.mFloatingInsets.top = windowInsets.getSystemWindowInsetTop();
                this.mFloatingInsets.bottom = windowInsets.getSystemWindowInsetBottom();
                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), 0);
            }
            if (this.mWindow.getAttributes().width == -2) {
                this.mFloatingInsets.left = windowInsets.getSystemWindowInsetTop();
                this.mFloatingInsets.right = windowInsets.getSystemWindowInsetBottom();
                windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
            }
        }
        this.mFrameOffsets.set(windowInsets.getSystemWindowInsets());
        WindowInsets windowInsetsUpdateNavigationGuard = updateNavigationGuard(updateStatusGuard(updateColorViews(windowInsets, true)));
        if (getForeground() != null) {
            drawableChanged();
        }
        return windowInsetsUpdateNavigationGuard;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null && !this.mWindow.isDestroyed() && this.mFeatureId < 0) {
            callback.onAttachedToWindow();
        }
        if (this.mFeatureId == -1) {
            this.mWindow.openPanelsAfterRestore();
        }
        if (this.mWindowResizeCallbacksAdded) {
            BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
            if (backdropFrameRenderer != null) {
                backdropFrameRenderer.onConfigurationChange();
            }
        } else {
            getViewRootImpl().addWindowCallbacks(this);
            this.mWindowResizeCallbacksAdded = true;
        }
        this.mWindow.onViewRootImplSet(getViewRootImpl());
    }

    @Override // android.view.View
    public void onCloseSystemDialogs(String str) {
        if (this.mFeatureId >= 0) {
            this.mWindow.closeAllPanels();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int stackId = getStackId();
        if (this.mStackId != stackId) {
            this.mStackId = stackId;
            if (this.mDecorCaptionView == null && ActivityManager.StackId.hasWindowDecor(stackId)) {
                DecorCaptionView decorCaptionViewCreateDecorCaptionView = createDecorCaptionView(this.mWindow.getLayoutInflater());
                this.mDecorCaptionView = decorCaptionViewCreateDecorCaptionView;
                if (decorCaptionViewCreateDecorCaptionView != null) {
                    if (decorCaptionViewCreateDecorCaptionView.getParent() == null) {
                        addView(this.mDecorCaptionView, 0, new ViewGroup.LayoutParams(-1, -1));
                    }
                    removeView(this.mContentRoot);
                    this.mDecorCaptionView.addView(this.mContentRoot, new ViewGroup.MarginLayoutParams(-1, -1));
                }
            } else {
                DecorCaptionView decorCaptionView = this.mDecorCaptionView;
                if (decorCaptionView != null) {
                    decorCaptionView.onConfigurationChanged(ActivityManager.StackId.hasWindowDecor(this.mStackId));
                    enableCaption(ActivityManager.StackId.hasWindowDecor(stackId));
                }
            }
        }
        updateAvailableWidth();
        initializeElevation();
    }

    @Override // android.view.WindowCallbacks
    public boolean onContentDrawn(int i2, int i3, int i4, int i5) {
        BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
        if (backdropFrameRenderer == null) {
            return false;
        }
        return backdropFrameRenderer.onContentDrawn(i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        MenuBuilder menuBuilder;
        super.onDetachedFromWindow();
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null && this.mFeatureId < 0) {
            callback.onDetachedFromWindow();
        }
        DecorContentParent decorContentParent = this.mWindow.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.mPrimaryActionModePopup != null) {
            removeCallbacks(this.mShowPrimaryActionModePopup);
            if (this.mPrimaryActionModePopup.isShowing()) {
                this.mPrimaryActionModePopup.dismiss();
            }
            this.mPrimaryActionModePopup = null;
        }
        FloatingToolbar floatingToolbar = this.mFloatingToolbar;
        if (floatingToolbar != null) {
            floatingToolbar.dismiss();
            this.mFloatingToolbar = null;
        }
        PhoneWindow.PanelFeatureState panelState = this.mWindow.getPanelState(0, false);
        if (panelState != null && (menuBuilder = panelState.menu) != null && this.mFeatureId < 0) {
            menuBuilder.close();
        }
        releaseThreadedRenderer();
        if (this.mWindowResizeCallbacksAdded) {
            getViewRootImpl().removeWindowCallbacks(this);
            this.mWindowResizeCallbacksAdded = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mBackgroundFallback.draw(isResizing() ? this : this.mContentRoot, this.mContentRoot, canvas, this.mWindow.mContentParent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.mHasCaption && isShowingCaption() && action == 0 && isOutOfInnerBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return true;
        }
        if (this.mFeatureId < 0 || action != 0 || !isOutOfBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        this.mWindow.closePanel(this.mFeatureId);
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        getOutsets(this.mOutsets);
        int i6 = this.mOutsets.left;
        if (i6 > 0) {
            offsetLeftAndRight(-i6);
        }
        int i7 = this.mOutsets.top;
        if (i7 > 0) {
            offsetTopAndBottom(-i7);
        }
        if (this.mApplyFloatingVerticalInsets) {
            offsetTopAndBottom(this.mFloatingInsets.top);
        }
        if (this.mApplyFloatingHorizontalInsets) {
            offsetLeftAndRight(this.mFloatingInsets.left);
        }
        updateElevation();
        this.mAllowUpdateElevation = true;
        if (z2 && this.mResizeMode == 1) {
            getViewRootImpl().requestInvalidateRootRenderNode();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0070 A[PHI: r14
  0x0070: PHI (r14v1 int) = (r14v0 int), (r14v0 int), (r14v0 int), (r14v12 int) binds: [B:7:0x002d, B:12:0x0038, B:14:0x003c, B:24:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:76:0x013a  */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        boolean z2;
        int mode;
        int mode2;
        int i4;
        float fraction;
        int i5;
        int i6;
        float fraction2;
        int size;
        int i7;
        int i8;
        float fraction3;
        int size2;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z3 = false;
        boolean z4 = getResources().getConfiguration().orientation == 1;
        int mode3 = View.MeasureSpec.getMode(i2);
        int mode4 = View.MeasureSpec.getMode(i3);
        this.mApplyFloatingHorizontalInsets = false;
        if (mode3 == Integer.MIN_VALUE) {
            PhoneWindow phoneWindow = this.mWindow;
            TypedValue typedValue = z4 ? phoneWindow.mFixedWidthMinor : phoneWindow.mFixedWidthMajor;
            if (typedValue == null || (i7 = typedValue.type) == 0) {
                z2 = false;
            } else {
                if (i7 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i7 == 6) {
                        int i9 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i9, i9);
                    } else {
                        i8 = 0;
                    }
                    size2 = View.MeasureSpec.getSize(i2);
                    if (i8 > 0) {
                        i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8, size2), 1073741824);
                        z2 = true;
                    } else {
                        Rect rect = this.mFloatingInsets;
                        i2 = View.MeasureSpec.makeMeasureSpec((size2 - rect.left) - rect.right, Integer.MIN_VALUE);
                        this.mApplyFloatingHorizontalInsets = true;
                        z2 = false;
                    }
                }
                i8 = (int) fraction3;
                size2 = View.MeasureSpec.getSize(i2);
                if (i8 > 0) {
                    i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8, size2), 1073741824);
                    z2 = true;
                } else {
                    Rect rect2 = this.mFloatingInsets;
                    i2 = View.MeasureSpec.makeMeasureSpec((size2 - rect2.left) - rect2.right, Integer.MIN_VALUE);
                    this.mApplyFloatingHorizontalInsets = true;
                    z2 = false;
                }
            }
        } else {
            z2 = false;
        }
        this.mApplyFloatingVerticalInsets = false;
        if (mode4 == Integer.MIN_VALUE) {
            PhoneWindow phoneWindow2 = this.mWindow;
            TypedValue typedValue2 = z4 ? phoneWindow2.mFixedHeightMajor : phoneWindow2.mFixedHeightMinor;
            if (typedValue2 != null && (i5 = typedValue2.type) != 0) {
                if (i5 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i5 == 6) {
                        int i10 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i10, i10);
                    } else {
                        i6 = 0;
                    }
                    size = View.MeasureSpec.getSize(i3);
                    if (i6 > 0) {
                        i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i6, size), 1073741824);
                    } else if ((this.mWindow.getAttributes().flags & 256) == 0) {
                        Rect rect3 = this.mFloatingInsets;
                        i3 = View.MeasureSpec.makeMeasureSpec((size - rect3.top) - rect3.bottom, Integer.MIN_VALUE);
                        this.mApplyFloatingVerticalInsets = true;
                    }
                }
                i6 = (int) fraction2;
                size = View.MeasureSpec.getSize(i3);
                if (i6 > 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i6, size), 1073741824);
                } else if ((this.mWindow.getAttributes().flags & 256) == 0) {
                    Rect rect4 = this.mFloatingInsets;
                    i3 = View.MeasureSpec.makeMeasureSpec((size - rect4.top) - rect4.bottom, Integer.MIN_VALUE);
                    this.mApplyFloatingVerticalInsets = true;
                }
            }
        }
        getOutsets(this.mOutsets);
        Rect rect5 = this.mOutsets;
        if ((rect5.top > 0 || rect5.bottom > 0) && (mode = View.MeasureSpec.getMode(i3)) != 0) {
            int size3 = View.MeasureSpec.getSize(i3);
            Rect rect6 = this.mOutsets;
            i3 = View.MeasureSpec.makeMeasureSpec(size3 + rect6.top + rect6.bottom, mode);
        }
        Rect rect7 = this.mOutsets;
        if ((rect7.left > 0 || rect7.right > 0) && (mode2 = View.MeasureSpec.getMode(i2)) != 0) {
            int size4 = View.MeasureSpec.getSize(i2);
            Rect rect8 = this.mOutsets;
            i2 = View.MeasureSpec.makeMeasureSpec(size4 + rect8.left + rect8.right, mode2);
        }
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (!z2 && mode3 == Integer.MIN_VALUE) {
            TypedValue typedValue3 = z4 ? this.mWindow.mMinWidthMinor : this.mWindow.mMinWidthMajor;
            int i11 = typedValue3.type;
            if (i11 != 0) {
                if (i11 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i11 == 6) {
                        int i12 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i12, i12);
                    } else {
                        i4 = 0;
                    }
                    if (measuredWidth < i4) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                        z3 = true;
                    }
                }
                i4 = (int) fraction;
                if (measuredWidth < i4) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    z3 = true;
                }
            }
        }
        if (z3) {
            super.onMeasure(iMakeMeasureSpec, i3);
        }
    }

    @Override // android.view.WindowCallbacks
    public void onPostDraw(DisplayListCanvas displayListCanvas) {
        drawResizingShadowIfNeeded(displayListCanvas);
    }

    @Override // android.view.WindowCallbacks
    public void onRequestDraw(boolean z2) {
        BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
        if (backdropFrameRenderer != null) {
            backdropFrameRenderer.onRequestDraw(z2);
        } else if (z2 && isAttachedToWindow()) {
            getViewRootImpl().reportDrawFinish();
        }
    }

    public void onResourcesLoaded(LayoutInflater layoutInflater, int i2) {
        this.mStackId = getStackId();
        if (this.mBackdropFrameRenderer != null) {
            loadBackgroundDrawablesIfNeeded();
            this.mBackdropFrameRenderer.onResourcesLoaded(this, this.mResizingBackgroundDrawable, this.mCaptionBackgroundDrawable, this.mUserCaptionBackgroundDrawable, getCurrentColor(this.mStatusColorViewState), getCurrentColor(this.mNavigationColorViewState));
        }
        this.mDecorCaptionView = createDecorCaptionView(layoutInflater);
        View viewInflate = layoutInflater.inflate(i2, (ViewGroup) null);
        DecorCaptionView decorCaptionView = this.mDecorCaptionView;
        if (decorCaptionView != null) {
            if (decorCaptionView.getParent() == null) {
                addView(this.mDecorCaptionView, new ViewGroup.LayoutParams(-1, -1));
            }
            this.mDecorCaptionView.addView(viewInflate, new ViewGroup.MarginLayoutParams(-1, -1));
        } else {
            addView(viewInflate, 0, new ViewGroup.LayoutParams(-1, -1));
        }
        this.mContentRoot = (ViewGroup) viewInflate;
        initializeElevation();
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public void onRootViewScrollYChanged(int i2) {
        this.mRootScrollY = i2;
        updateColorViewTranslations();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.WindowCallbacks
    public void onWindowDragResizeEnd() {
        releaseThreadedRenderer();
        updateColorViews(null, false);
        this.mResizeMode = -1;
        getViewRootImpl().requestInvalidateRootRenderNode();
    }

    @Override // android.view.WindowCallbacks
    public void onWindowDragResizeStart(Rect rect, boolean z2, Rect rect2, Rect rect3, int i2) {
        if (this.mWindow.isDestroyed()) {
            releaseThreadedRenderer();
            return;
        }
        if (this.mBackdropFrameRenderer != null) {
            return;
        }
        ThreadedRenderer threadedRenderer = getThreadedRenderer();
        if (threadedRenderer != null) {
            loadBackgroundDrawablesIfNeeded();
            this.mBackdropFrameRenderer = new BackdropFrameRenderer(this, threadedRenderer, rect, this.mResizingBackgroundDrawable, this.mCaptionBackgroundDrawable, this.mUserCaptionBackgroundDrawable, getCurrentColor(this.mStatusColorViewState), getCurrentColor(this.mNavigationColorViewState), z2, rect2, rect3, i2);
            updateElevation();
            updateColorViews(null, false);
        }
        this.mResizeMode = i2;
        getViewRootImpl().requestInvalidateRootRenderNode();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (this.mWindow.hasFeature(0) && !z2) {
            PhoneWindow phoneWindow = this.mWindow;
            if (phoneWindow.mPanelChordingKey != 0) {
                phoneWindow.closePanel(0);
            }
        }
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null && !this.mWindow.isDestroyed() && this.mFeatureId < 0) {
            callback.onWindowFocusChanged(z2);
        }
        ActionMode actionMode = this.mPrimaryActionMode;
        if (actionMode != null) {
            actionMode.onWindowFocusChanged(z2);
        }
        ActionMode actionMode2 = this.mFloatingActionMode;
        if (actionMode2 != null) {
            actionMode2.onWindowFocusChanged(z2);
        }
        updateElevation();
    }

    @Override // android.view.WindowCallbacks
    public void onWindowSizeIsChanging(Rect rect, boolean z2, Rect rect2, Rect rect3) {
        BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
        if (backdropFrameRenderer != null) {
            backdropFrameRenderer.setTargetRect(rect, z2, rect2, rect3);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i2) {
        updateColorViews(null, true);
    }

    @Override // android.view.View
    public void requestKeyboardShortcuts(List<KeyboardShortcutGroup> list, int i2) {
        PhoneWindow.PanelFeatureState panelState = this.mWindow.getPanelState(0, false);
        MenuBuilder menuBuilder = panelState != null ? panelState.menu : null;
        if (this.mWindow.isDestroyed() || this.mWindow.getCallback() == null) {
            return;
        }
        this.mWindow.getCallback().onProvideKeyboardShortcuts(list, menuBuilder, i2);
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i2) {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            int i3 = this.mFeatureId;
            if ((i3 == 0 || i3 == 6 || i3 == 2 || i3 == 5) && getChildCount() == 1) {
                getChildAt(0).sendAccessibilityEvent(i2);
            } else {
                super.sendAccessibilityEvent(i2);
            }
        }
    }

    public void setBackgroundFallback(int i2) {
        this.mBackgroundFallback.setDrawable(i2 != 0 ? getContext().getDrawable(i2) : null);
        setWillNotDraw(getBackground() == null && !this.mBackgroundFallback.hasFallback());
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        if (frame) {
            Rect rect = this.mDrawingBounds;
            getDrawingRect(rect);
            Drawable foreground = getForeground();
            if (foreground != null) {
                Rect rect2 = this.mFrameOffsets;
                rect.left += rect2.left;
                rect.top += rect2.top;
                rect.right -= rect2.right;
                rect.bottom -= rect2.bottom;
                foreground.setBounds(rect);
                Rect rect3 = this.mFramePadding;
                rect.left = (rect3.left - rect2.left) + rect.left;
                rect.top = (rect3.top - rect2.top) + rect.top;
                rect.right -= rect3.right - rect2.right;
                rect.bottom -= rect3.bottom - rect2.bottom;
            }
            Drawable background = getBackground();
            if (background != null) {
                background.setBounds(rect);
            }
        }
        return frame;
    }

    @Override // android.view.View
    public void setOutlineProvider(ViewOutlineProvider viewOutlineProvider) {
        super.setOutlineProvider(viewOutlineProvider);
        this.mLastOutlineProvider = viewOutlineProvider;
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public void setSurfaceFormat(int i2) {
        this.mWindow.setFormat(i2);
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public void setSurfaceKeepScreenOn(boolean z2) {
        if (z2) {
            this.mWindow.addFlags(128);
        } else {
            this.mWindow.clearFlags(128);
        }
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public void setSurfaceType(int i2) {
        this.mWindow.setType(i2);
    }

    public void setUserCaptionBackgroundDrawable(Drawable drawable) {
        this.mUserCaptionBackgroundDrawable = drawable;
        BackdropFrameRenderer backdropFrameRenderer = this.mBackdropFrameRenderer;
        if (backdropFrameRenderer != null) {
            backdropFrameRenderer.setUserCaptionBackgroundDrawable(drawable);
        }
    }

    public void setWindow(PhoneWindow phoneWindow) {
        this.mWindow = phoneWindow;
        Context context = getContext();
        if (context instanceof DecorContext) {
            ((DecorContext) context).setPhoneWindow(this.mWindow);
        }
    }

    public void setWindowBackground(Drawable drawable) {
        if (getBackground() != drawable) {
            setBackgroundDrawable(drawable);
            boolean z2 = true;
            if (drawable != null) {
                if (!this.mWindow.isTranslucent() && !this.mWindow.isShowingWallpaper()) {
                    z2 = false;
                }
                this.mResizingBackgroundDrawable = enforceNonTranslucentBackground(drawable, z2);
            } else {
                Context context = getContext();
                PhoneWindow phoneWindow = this.mWindow;
                int i2 = phoneWindow.mBackgroundFallbackResource;
                if (!phoneWindow.isTranslucent() && !this.mWindow.isShowingWallpaper()) {
                    z2 = false;
                }
                this.mResizingBackgroundDrawable = getResizingBackgroundDrawable(context, 0, i2, z2);
            }
            Drawable drawable2 = this.mResizingBackgroundDrawable;
            if (drawable2 != null) {
                drawable2.getPadding(this.mBackgroundPadding);
            } else {
                this.mBackgroundPadding.setEmpty();
            }
            drawableChanged();
        }
    }

    public void setWindowFrame(Drawable drawable) {
        if (getForeground() != drawable) {
            setForeground(drawable);
            if (drawable != null) {
                drawable.getPadding(this.mFramePadding);
            } else {
                this.mFramePadding.setEmpty();
            }
            drawableChanged();
        }
    }

    public boolean shouldAnimatePrimaryActionModeView() {
        return isLaidOut();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        return showContextMenuForChildInternal(view, Float.NaN, Float.NaN);
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return startActionMode(callback, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return startActionModeForChild(view, callback, 0);
    }

    public void startChanging() {
        this.mChanging = true;
    }

    public boolean superDispatchGenericMotionEvent(MotionEvent motionEvent) {
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            int action = keyEvent.getAction();
            ActionMode actionMode = this.mPrimaryActionMode;
            if (actionMode != null) {
                if (action == 1) {
                    actionMode.finish();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public boolean superDispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean superDispatchTrackballEvent(MotionEvent motionEvent) {
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public String toString() {
        StringBuilder sb = new StringBuilder("DecorView@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append("[");
        return c.n(sb, getTitleSuffix(this.mWindow.getAttributes()), "]");
    }

    /* JADX WARN: Code duplicated, block: B:130:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0149  */
    public WindowInsets updateColorViews(WindowInsets windowInsets, boolean z2) {
        WindowInsets windowInsetsReplaceSystemWindowInsets;
        int i2;
        int i3;
        boolean z3;
        WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
        int windowSystemUiVisibility = attributes.systemUiVisibility | getWindowSystemUiVisibility();
        if (!this.mWindow.mIsFloating) {
            boolean z4 = !isLaidOut();
            int i4 = this.mLastWindowFlags;
            int i5 = attributes.flags;
            boolean z5 = z4 | (((i4 ^ i5) & Integer.MIN_VALUE) != 0);
            this.mLastWindowFlags = i5;
            if (windowInsets != null) {
                this.mLastTopInset = getColorViewTopInset(windowInsets.getStableInsetTop(), windowInsets.getSystemWindowInsetTop());
                this.mLastBottomInset = getColorViewBottomInset(windowInsets.getStableInsetBottom(), windowInsets.getSystemWindowInsetBottom());
                this.mLastRightInset = getColorViewRightInset(windowInsets.getStableInsetRight(), windowInsets.getSystemWindowInsetRight());
                this.mLastLeftInset = getColorViewRightInset(windowInsets.getStableInsetLeft(), windowInsets.getSystemWindowInsetLeft());
                boolean z6 = windowInsets.getStableInsetTop() != 0;
                boolean z7 = z5 | (z6 != this.mLastHasTopStableInset);
                this.mLastHasTopStableInset = z6;
                boolean z8 = windowInsets.getStableInsetBottom() != 0;
                boolean z9 = z7 | (z8 != this.mLastHasBottomStableInset);
                this.mLastHasBottomStableInset = z8;
                boolean z10 = windowInsets.getStableInsetRight() != 0;
                boolean z11 = z9 | (z10 != this.mLastHasRightStableInset);
                this.mLastHasRightStableInset = z10;
                boolean z12 = windowInsets.getStableInsetLeft() != 0;
                z5 = z11 | (z12 != this.mLastHasLeftStableInset);
                this.mLastHasLeftStableInset = z12;
                this.mLastShouldAlwaysConsumeNavBar = windowInsets.shouldAlwaysConsumeNavBar();
            }
            boolean z13 = z5;
            boolean zIsNavBarToRightEdge = isNavBarToRightEdge(this.mLastBottomInset, this.mLastRightInset);
            boolean zIsNavBarToLeftEdge = isNavBarToLeftEdge(this.mLastBottomInset, this.mLastLeftInset);
            int navBarSize = getNavBarSize(this.mLastBottomInset, this.mLastRightInset, this.mLastLeftInset);
            ColorViewState colorViewState = this.mNavigationColorViewState;
            PhoneWindow phoneWindow = this.mWindow;
            updateColorViewInt(colorViewState, windowSystemUiVisibility, phoneWindow.mNavigationBarColor, phoneWindow.mNavigationBarDividerColor, navBarSize, zIsNavBarToRightEdge || zIsNavBarToLeftEdge, zIsNavBarToLeftEdge, 0, z2 && !z13, false);
            boolean z14 = zIsNavBarToRightEdge && this.mNavigationColorViewState.present;
            boolean z15 = zIsNavBarToLeftEdge && this.mNavigationColorViewState.present;
            if (z14) {
                i3 = this.mLastRightInset;
            } else {
                if (z15) {
                    i3 = this.mLastLeftInset;
                } else {
                    i2 = 0;
                }
                ColorViewState colorViewState2 = this.mStatusColorViewState;
                int iCalculateStatusBarColor = calculateStatusBarColor();
                int i6 = this.mLastTopInset;
                if (z2 || z13) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                updateColorViewInt(colorViewState2, windowSystemUiVisibility, iCalculateStatusBarColor, 0, i6, false, z15, i2, z3, this.mForceWindowDrawsStatusBarBackground);
            }
            i2 = i3;
            ColorViewState colorViewState3 = this.mStatusColorViewState;
            int iCalculateStatusBarColor2 = calculateStatusBarColor();
            int i7 = this.mLastTopInset;
            if (z2) {
                z3 = false;
            } else {
                z3 = false;
            }
            updateColorViewInt(colorViewState3, windowSystemUiVisibility, iCalculateStatusBarColor2, 0, i7, false, z15, i2, z3, this.mForceWindowDrawsStatusBarBackground);
        }
        int i8 = attributes.flags;
        boolean z16 = ((i8 & Integer.MIN_VALUE) != 0 && (windowSystemUiVisibility & 512) == 0 && (windowSystemUiVisibility & 2) == 0) || this.mLastShouldAlwaysConsumeNavBar;
        int i9 = (windowSystemUiVisibility & 1024) == 0 && (windowSystemUiVisibility & Integer.MIN_VALUE) == 0 && (i8 & 256) == 0 && (i8 & 65536) == 0 && this.mForceWindowDrawsStatusBarBackground && this.mLastTopInset != 0 ? this.mLastTopInset : 0;
        int i10 = z16 ? this.mLastRightInset : 0;
        int i11 = z16 ? this.mLastBottomInset : 0;
        int i12 = z16 ? this.mLastLeftInset : 0;
        ViewGroup viewGroup = this.mContentRoot;
        if (viewGroup == null || !(viewGroup.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            windowInsetsReplaceSystemWindowInsets = windowInsets;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mContentRoot.getLayoutParams();
            if (marginLayoutParams.topMargin != i9 || marginLayoutParams.rightMargin != i10 || marginLayoutParams.bottomMargin != i11 || marginLayoutParams.leftMargin != i12) {
                marginLayoutParams.topMargin = i9;
                marginLayoutParams.rightMargin = i10;
                marginLayoutParams.bottomMargin = i11;
                marginLayoutParams.leftMargin = i12;
                this.mContentRoot.setLayoutParams(marginLayoutParams);
                if (windowInsets == null) {
                    requestApplyInsets();
                }
            }
            if (windowInsets != null) {
                windowInsetsReplaceSystemWindowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft() - i12, windowInsets.getSystemWindowInsetTop() - i9, windowInsets.getSystemWindowInsetRight() - i10, windowInsets.getSystemWindowInsetBottom() - i11);
            } else {
                windowInsetsReplaceSystemWindowInsets = windowInsets;
            }
        }
        return windowInsetsReplaceSystemWindowInsets != null ? windowInsetsReplaceSystemWindowInsets.consumeStableInsets() : windowInsetsReplaceSystemWindowInsets;
    }

    public void updateDecorCaptionShade() {
        if (this.mDecorCaptionView != null) {
            setDecorCaptionShade(getContext(), this.mDecorCaptionView);
        }
    }

    public void updateLogTag(WindowManager.LayoutParams layoutParams) {
        this.mLogTag = c.n(new StringBuilder("DecorView["), getTitleSuffix(layoutParams), "]");
    }

    public void updateNavigationGuardColor() {
        View view = this.mNavigationGuard;
        if (view != null) {
            view.setVisibility(this.mWindow.getNavigationBarColor() == 0 ? 4 : 0);
        }
    }

    public void updatePictureInPictureOutlineProvider(boolean z2) {
        if (this.mIsInPictureInPictureMode == z2) {
            return;
        }
        if (z2) {
            Window.WindowControllerCallback windowControllerCallback = this.mWindow.getWindowControllerCallback();
            if (windowControllerCallback != null && windowControllerCallback.isTaskRoot()) {
                super.setOutlineProvider(PIP_OUTLINE_PROVIDER);
            }
        } else {
            ViewOutlineProvider outlineProvider = getOutlineProvider();
            ViewOutlineProvider viewOutlineProvider = this.mLastOutlineProvider;
            if (outlineProvider != viewOutlineProvider) {
                setOutlineProvider(viewOutlineProvider);
            }
        }
        this.mIsInPictureInPictureMode = z2;
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public InputQueue.Callback willYouTakeTheInputQueue() {
        if (this.mFeatureId < 0) {
            return this.mWindow.mTakeInputQueueCallback;
        }
        return null;
    }

    @Override // com.android.internal.view.RootViewSurfaceTaker
    public SurfaceHolder.Callback2 willYouTakeTheSurface() {
        if (this.mFeatureId < 0) {
            return this.mWindow.mTakeSurfaceCallback;
        }
        return null;
    }

    private int calculateStatusBarColor() {
        return calculateStatusBarColor(this.mWindow.getAttributes().flags, this.mSemiTransparentStatusBarColor, this.mWindow.mStatusBarColor);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f2, float f3) {
        return showContextMenuForChildInternal(view, f2, f3);
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int i2) {
        return startActionMode(this, callback, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        return startActionMode(view, callback, i2);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    private ActionMode startActionMode(View view, ActionMode.Callback callback, int i2) {
        ActionMode actionModeOnWindowStartingActionMode;
        ActionModeCallback2Wrapper actionModeCallback2Wrapper = new ActionModeCallback2Wrapper(callback);
        ActionMode actionMode = null;
        if (this.mWindow.getCallback() == null || this.mWindow.isDestroyed()) {
            actionModeOnWindowStartingActionMode = null;
        } else {
            try {
                actionModeOnWindowStartingActionMode = this.mWindow.getCallback().onWindowStartingActionMode(actionModeCallback2Wrapper, i2);
            } catch (AbstractMethodError unused) {
                if (i2 == 0) {
                    try {
                        actionModeOnWindowStartingActionMode = this.mWindow.getCallback().onWindowStartingActionMode(actionModeCallback2Wrapper);
                    } catch (AbstractMethodError unused2) {
                        actionModeOnWindowStartingActionMode = null;
                    }
                } else {
                    actionModeOnWindowStartingActionMode = null;
                }
            }
        }
        if (actionModeOnWindowStartingActionMode != null) {
            if (actionModeOnWindowStartingActionMode.getType() == 0) {
                cleanupPrimaryActionMode();
                this.mPrimaryActionMode = actionModeOnWindowStartingActionMode;
            } else if (actionModeOnWindowStartingActionMode.getType() == 1) {
                ActionMode actionMode2 = this.mFloatingActionMode;
                if (actionMode2 != null) {
                    actionMode2.finish();
                }
                this.mFloatingActionMode = actionModeOnWindowStartingActionMode;
            }
            actionMode = actionModeOnWindowStartingActionMode;
        } else {
            ActionMode actionModeCreateActionMode = createActionMode(i2, actionModeCallback2Wrapper, view);
            if (actionModeCreateActionMode != null && actionModeCallback2Wrapper.onCreateActionMode(actionModeCreateActionMode, actionModeCreateActionMode.getMenu())) {
                setHandledActionMode(actionModeCreateActionMode);
                actionMode = actionModeCreateActionMode;
            }
        }
        if (actionMode != null && this.mWindow.getCallback() != null && !this.mWindow.isDestroyed()) {
            try {
                this.mWindow.getCallback().onActionModeStarted(actionMode);
            } catch (AbstractMethodError unused3) {
            }
        }
        return actionMode;
    }

    public boolean gatherTransparentRegion(ColorViewState colorViewState, Region region) {
        if (colorViewState.view != null && colorViewState.visible && isResizing()) {
            return colorViewState.view.gatherTransparentRegion(region);
        }
        return false;
    }
}
