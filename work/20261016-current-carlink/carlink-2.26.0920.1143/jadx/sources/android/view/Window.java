package android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemProperties;
import android.provider.SettingsStringUtil;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Window {
    public static final int DECOR_CAPTION_SHADE_AUTO = 0;
    public static final int DECOR_CAPTION_SHADE_DARK = 2;
    public static final int DECOR_CAPTION_SHADE_LIGHT = 1;

    @Deprecated
    protected static final int DEFAULT_FEATURES = 65;
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;
    public static final int FEATURE_ACTIVITY_TRANSITIONS = 13;
    public static final int FEATURE_CONTENT_TRANSITIONS = 12;
    public static final int FEATURE_CONTEXT_MENU = 6;
    public static final int FEATURE_CUSTOM_TITLE = 7;

    @Deprecated
    public static final int FEATURE_INDETERMINATE_PROGRESS = 5;
    public static final int FEATURE_LEFT_ICON = 3;
    public static final int FEATURE_MAX = 13;
    public static final int FEATURE_NO_TITLE = 1;
    public static final int FEATURE_OPTIONS_PANEL = 0;

    @Deprecated
    public static final int FEATURE_PROGRESS = 2;
    public static final int FEATURE_RIGHT_ICON = 4;
    public static final int FEATURE_SWIPE_TO_DISMISS = 11;
    public static final int ID_ANDROID_CONTENT = 16908290;
    public static final String NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME = "android:navigation:background";

    @Deprecated
    public static final int PROGRESS_END = 10000;

    @Deprecated
    public static final int PROGRESS_INDETERMINATE_OFF = -4;

    @Deprecated
    public static final int PROGRESS_INDETERMINATE_ON = -3;

    @Deprecated
    public static final int PROGRESS_SECONDARY_END = 30000;

    @Deprecated
    public static final int PROGRESS_SECONDARY_START = 20000;

    @Deprecated
    public static final int PROGRESS_START = 0;

    @Deprecated
    public static final int PROGRESS_VISIBILITY_OFF = -2;

    @Deprecated
    public static final int PROGRESS_VISIBILITY_ON = -1;
    private static final String PROPERTY_HARDWARE_UI = "persist.sys.ui.hw";
    public static final String STATUS_BAR_BACKGROUND_TRANSITION_NAME = "android:status:background";
    private Window mActiveChild;
    private String mAppName;
    private IBinder mAppToken;
    private Callback mCallback;
    private Window mContainer;
    private final Context mContext;
    private boolean mDestroyed;
    private int mFeatures;
    private boolean mHardwareAccelerated;
    private int mLocalFeatures;
    private OnRestrictedCaptionAreaChangedListener mOnRestrictedCaptionAreaChangedListener;
    private OnWindowDismissedCallback mOnWindowDismissedCallback;
    private OnWindowSwipeDismissedCallback mOnWindowSwipeDismissedCallback;
    private Rect mRestrictedCaptionAreaRect;
    private WindowControllerCallback mWindowControllerCallback;
    private WindowManager mWindowManager;
    private TypedArray mWindowStyle;
    private boolean mIsActive = false;
    private boolean mHasChildren = false;
    private boolean mCloseOnTouchOutside = false;
    private boolean mSetCloseOnTouchOutside = false;
    private int mForcedWindowFlags = 0;
    private boolean mHaveWindowFormat = false;
    private boolean mHaveDimAmount = false;
    private int mDefaultWindowFormat = -1;
    private boolean mHasSoftInputMode = false;
    private boolean mOverlayWithDecorCaptionEnabled = false;
    private boolean mCloseOnSwipeEnabled = false;
    private final WindowManager.LayoutParams mWindowAttributes = new WindowManager.LayoutParams();

    public interface Callback {
        boolean dispatchGenericMotionEvent(MotionEvent motionEvent);

        boolean dispatchKeyEvent(KeyEvent keyEvent);

        boolean dispatchKeyShortcutEvent(KeyEvent keyEvent);

        boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        boolean dispatchTouchEvent(MotionEvent motionEvent);

        boolean dispatchTrackballEvent(MotionEvent motionEvent);

        void onActionModeFinished(ActionMode actionMode);

        void onActionModeStarted(ActionMode actionMode);

        void onAttachedToWindow();

        void onContentChanged();

        boolean onCreatePanelMenu(int i2, Menu menu);

        View onCreatePanelView(int i2);

        void onDetachedFromWindow();

        boolean onMenuItemSelected(int i2, MenuItem menuItem);

        boolean onMenuOpened(int i2, Menu menu);

        void onPanelClosed(int i2, Menu menu);

        void onPointerCaptureChanged(boolean z2);

        boolean onPreparePanel(int i2, View view, Menu menu);

        void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2);

        boolean onSearchRequested();

        boolean onSearchRequested(SearchEvent searchEvent);

        void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams);

        void onWindowFocusChanged(boolean z2);

        ActionMode onWindowStartingActionMode(ActionMode.Callback callback);

        ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2);
    }

    public interface OnFrameMetricsAvailableListener {
        void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i2);
    }

    public interface OnRestrictedCaptionAreaChangedListener {
        void onRestrictedCaptionAreaChanged(Rect rect);
    }

    public interface OnWindowDismissedCallback {
        void onWindowDismissed(boolean z2, boolean z3);
    }

    public interface OnWindowSwipeDismissedCallback {
        void onWindowSwipeDismissed();
    }

    public interface WindowControllerCallback {
        void enterPictureInPictureModeIfPossible();

        void exitFreeformMode();

        int getWindowStackId();

        boolean isTaskRoot();
    }

    public Window(Context context) {
        this.mContext = context;
        int defaultFeatures = getDefaultFeatures(context);
        this.mLocalFeatures = defaultFeatures;
        this.mFeatures = defaultFeatures;
    }

    public static int getDefaultFeatures(Context context) {
        Resources resources = context.getResources();
        boolean z2 = resources.getBoolean(R.bool.config_defaultWindowFeatureOptionsPanel);
        return resources.getBoolean(R.bool.config_defaultWindowFeatureContextMenu) ? (z2 ? 1 : 0) | 64 : z2 ? 1 : 0;
    }

    private boolean isOutOfBounds(Context context, MotionEvent motionEvent) {
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(context).getScaledWindowTouchSlop();
        View decorView = getDecorView();
        int i2 = -scaledWindowTouchSlop;
        return x2 < i2 || y2 < i2 || x2 > decorView.getWidth() + scaledWindowTouchSlop || y2 > decorView.getHeight() + scaledWindowTouchSlop;
    }

    private void setPrivateFlags(int i2, int i3) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.privateFlags = (i2 & i3) | (attributes.privateFlags & (~i3));
        dispatchWindowAttributesChanged(attributes);
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public void addFlags(int i2) {
        setFlags(i2, i2);
    }

    public final void addOnFrameMetricsAvailableListener(OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, Handler handler) {
        View decorView = getDecorView();
        if (decorView == null) {
            throw new IllegalStateException("can't observe a Window without an attached view");
        }
        if (onFrameMetricsAvailableListener == null) {
            throw new NullPointerException("listener cannot be null");
        }
        decorView.addFrameMetricsListener(this, onFrameMetricsAvailableListener, handler);
    }

    public void addPrivateFlags(int i2) {
        setPrivateFlags(i2, i2);
    }

    public void adjustLayoutParamsForSubWindow(WindowManager.LayoutParams layoutParams) {
        CharSequence charSequence;
        View viewPeekDecorView;
        CharSequence title = layoutParams.getTitle();
        int i2 = layoutParams.type;
        if (i2 >= 1000 && i2 <= 1999) {
            if (layoutParams.token == null && (viewPeekDecorView = peekDecorView()) != null) {
                layoutParams.token = viewPeekDecorView.getWindowToken();
            }
            if (title == null || title.length() == 0) {
                StringBuilder sb = new StringBuilder(32);
                int i3 = layoutParams.type;
                if (i3 == 1001) {
                    sb.append("Media");
                } else if (i3 == 1004) {
                    sb.append("MediaOvr");
                } else if (i3 == 1000) {
                    sb.append("Panel");
                } else if (i3 == 1002) {
                    sb.append("SubPanel");
                } else if (i3 == 1005) {
                    sb.append("AboveSubPanel");
                } else if (i3 == 1003) {
                    sb.append("AtchDlg");
                } else {
                    sb.append(i3);
                }
                if (this.mAppName != null) {
                    sb.append(SettingsStringUtil.DELIMITER);
                    sb.append(this.mAppName);
                }
                layoutParams.setTitle(sb);
            }
        } else if (i2 < 2000 || i2 > 2999) {
            if (layoutParams.token == null) {
                Window window = this.mContainer;
                layoutParams.token = window == null ? this.mAppToken : window.mAppToken;
            }
            if ((title == null || title.length() == 0) && (charSequence = this.mAppName) != null) {
                layoutParams.setTitle(charSequence);
            }
        } else if (title == null || title.length() == 0) {
            StringBuilder sbQ = android.accessibilityservice.c.q(32, "Sys");
            sbQ.append(layoutParams.type);
            if (this.mAppName != null) {
                sbQ.append(SettingsStringUtil.DELIMITER);
                sbQ.append(this.mAppName);
            }
            layoutParams.setTitle(sbQ);
        }
        if (layoutParams.packageName == null) {
            layoutParams.packageName = this.mContext.getPackageName();
        }
        if (this.mHardwareAccelerated || (this.mWindowAttributes.flags & 16777216) != 0) {
            layoutParams.flags |= 16777216;
        }
    }

    public abstract void alwaysReadCloseOnTouchAttr();

    public abstract void clearContentView();

    public void clearFlags(int i2) {
        setFlags(0, i2);
    }

    public abstract void closeAllPanels();

    public abstract void closePanel(int i2);

    public final void destroy() {
        this.mDestroyed = true;
    }

    public final void dispatchOnWindowDismissed(boolean z2, boolean z3) {
        OnWindowDismissedCallback onWindowDismissedCallback = this.mOnWindowDismissedCallback;
        if (onWindowDismissedCallback != null) {
            onWindowDismissedCallback.onWindowDismissed(z2, z3);
        }
    }

    public final void dispatchOnWindowSwipeDismissed() {
        OnWindowSwipeDismissedCallback onWindowSwipeDismissedCallback = this.mOnWindowSwipeDismissedCallback;
        if (onWindowSwipeDismissedCallback != null) {
            onWindowSwipeDismissedCallback.onWindowSwipeDismissed();
        }
    }

    public void dispatchWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(layoutParams);
        }
    }

    public <T extends View> T findViewById(int i2) {
        return (T) getDecorView().findViewById(i2);
    }

    public boolean getAllowEnterTransitionOverlap() {
        return true;
    }

    public boolean getAllowReturnTransitionOverlap() {
        return true;
    }

    public final WindowManager.LayoutParams getAttributes() {
        return this.mWindowAttributes;
    }

    public final Callback getCallback() {
        return this.mCallback;
    }

    public int getColorMode() {
        return getAttributes().getColorMode();
    }

    public final Window getContainer() {
        return this.mContainer;
    }

    public Scene getContentScene() {
        return null;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public abstract View getCurrentFocus();

    public abstract View getDecorView();

    public float getElevation() {
        return 0.0f;
    }

    public Transition getEnterTransition() {
        return null;
    }

    public Transition getExitTransition() {
        return null;
    }

    public final int getFeatures() {
        return this.mFeatures;
    }

    public final int getForcedWindowFlags() {
        return this.mForcedWindowFlags;
    }

    public abstract LayoutInflater getLayoutInflater();

    public final int getLocalFeatures() {
        return this.mLocalFeatures;
    }

    public MediaController getMediaController() {
        return null;
    }

    public abstract int getNavigationBarColor();

    public Transition getReenterTransition() {
        return null;
    }

    public Transition getReturnTransition() {
        return null;
    }

    public Transition getSharedElementEnterTransition() {
        return null;
    }

    public Transition getSharedElementExitTransition() {
        return null;
    }

    public Transition getSharedElementReenterTransition() {
        return null;
    }

    public Transition getSharedElementReturnTransition() {
        return null;
    }

    public boolean getSharedElementsUseOverlay() {
        return true;
    }

    public abstract int getStatusBarColor();

    public long getTransitionBackgroundFadeDuration() {
        return 0L;
    }

    public TransitionManager getTransitionManager() {
        return null;
    }

    public abstract int getVolumeControlStream();

    public final WindowControllerCallback getWindowControllerCallback() {
        return this.mWindowControllerCallback;
    }

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    public final TypedArray getWindowStyle() {
        TypedArray typedArray;
        synchronized (this) {
            if (this.mWindowStyle == null) {
                this.mWindowStyle = this.mContext.obtainStyledAttributes(R.styleable.Window);
            }
            typedArray = this.mWindowStyle;
        }
        return typedArray;
    }

    public final boolean hasChildren() {
        return this.mHasChildren;
    }

    public boolean hasFeature(int i2) {
        return ((1 << i2) & getFeatures()) != 0;
    }

    public final boolean hasSoftInputMode() {
        return this.mHasSoftInputMode;
    }

    public boolean haveDimAmount() {
        return this.mHaveDimAmount;
    }

    public void injectInputEvent(InputEvent inputEvent) {
    }

    public abstract void invalidatePanelMenu(int i2);

    public final boolean isActive() {
        return this.mIsActive;
    }

    public boolean isCloseOnSwipeEnabled() {
        return this.mCloseOnSwipeEnabled;
    }

    public final boolean isDestroyed() {
        return this.mDestroyed;
    }

    public abstract boolean isFloating();

    public boolean isOverlayWithDecorCaptionEnabled() {
        return this.mOverlayWithDecorCaptionEnabled;
    }

    public abstract boolean isShortcutKey(int i2, KeyEvent keyEvent);

    public boolean isWideColorGamut() {
        return getColorMode() == 1 && getContext().getResources().getConfiguration().isScreenWideColorGamut();
    }

    public final void makeActive() {
        Window window = this.mContainer;
        if (window != null) {
            Window window2 = window.mActiveChild;
            if (window2 != null) {
                window2.mIsActive = false;
            }
            window.mActiveChild = this;
        }
        this.mIsActive = true;
        onActive();
    }

    public void notifyRestrictedCaptionAreaCallback(int i2, int i3, int i4, int i5) {
        if (this.mOnRestrictedCaptionAreaChangedListener != null) {
            this.mRestrictedCaptionAreaRect.set(i2, i3, i4, i5);
            this.mOnRestrictedCaptionAreaChangedListener.onRestrictedCaptionAreaChanged(this.mRestrictedCaptionAreaRect);
        }
    }

    public abstract void onActive();

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void onMultiWindowModeChanged();

    public abstract void onPictureInPictureModeChanged(boolean z2);

    public abstract void openPanel(int i2, KeyEvent keyEvent);

    public abstract View peekDecorView();

    public abstract boolean performContextMenuIdentifierAction(int i2, int i3);

    public abstract boolean performPanelIdentifierAction(int i2, int i3, int i4);

    public abstract boolean performPanelShortcut(int i2, int i3, KeyEvent keyEvent, int i4);

    public void removeFeature(int i2) {
        int i3 = 1 << i2;
        this.mFeatures &= ~i3;
        int i4 = this.mLocalFeatures;
        Window window = this.mContainer;
        if (window != null) {
            i3 &= ~window.mFeatures;
        }
        this.mLocalFeatures = (~i3) & i4;
    }

    public final void removeOnFrameMetricsAvailableListener(OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
        if (getDecorView() != null) {
            getDecorView().removeFrameMetricsListener(onFrameMetricsAvailableListener);
        }
    }

    public abstract void reportActivityRelaunched();

    public boolean requestFeature(int i2) {
        int i3 = 1 << i2;
        int i4 = this.mFeatures | i3;
        this.mFeatures = i4;
        int i5 = this.mLocalFeatures;
        Window window = this.mContainer;
        this.mLocalFeatures = i5 | (window != null ? (~window.mFeatures) & i3 : i3);
        return (i3 & i4) != 0;
    }

    public abstract void restoreHierarchyState(Bundle bundle);

    public abstract Bundle saveHierarchyState();

    public void setAllowEnterTransitionOverlap(boolean z2) {
    }

    public void setAllowReturnTransitionOverlap(boolean z2) {
    }

    public void setAttributes(WindowManager.LayoutParams layoutParams) {
        this.mWindowAttributes.copyFrom(layoutParams);
        dispatchWindowAttributesChanged(this.mWindowAttributes);
    }

    public abstract void setBackgroundDrawable(Drawable drawable);

    public void setBackgroundDrawableResource(int i2) {
        setBackgroundDrawable(this.mContext.getDrawable(i2));
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public abstract void setChildDrawable(int i2, Drawable drawable);

    public abstract void setChildInt(int i2, int i3);

    public void setClipToOutline(boolean z2) {
    }

    public void setCloseOnSwipeEnabled(boolean z2) {
        this.mCloseOnSwipeEnabled = z2;
    }

    public void setCloseOnTouchOutside(boolean z2) {
        this.mCloseOnTouchOutside = z2;
        this.mSetCloseOnTouchOutside = true;
    }

    public void setCloseOnTouchOutsideIfNotSet(boolean z2) {
        if (this.mSetCloseOnTouchOutside) {
            return;
        }
        this.mCloseOnTouchOutside = z2;
        this.mSetCloseOnTouchOutside = true;
    }

    public void setColorMode(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.setColorMode(i2);
        dispatchWindowAttributesChanged(attributes);
    }

    public void setContainer(Window window) {
        this.mContainer = window;
        if (window != null) {
            this.mFeatures |= 2;
            this.mLocalFeatures |= 2;
            window.mHasChildren = true;
        }
    }

    public abstract void setContentView(int i2);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setDecorCaptionShade(int i2);

    public void setDefaultIcon(int i2) {
    }

    public void setDefaultLogo(int i2) {
    }

    public void setDefaultWindowFormat(int i2) {
        this.mDefaultWindowFormat = i2;
        if (this.mHaveWindowFormat) {
            return;
        }
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.format = i2;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setDimAmount(float f2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.dimAmount = f2;
        this.mHaveDimAmount = true;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setDisableWallpaperTouchEvents(boolean z2) {
        setPrivateFlags(z2 ? 2048 : 0, 2048);
    }

    public void setElevation(float f2) {
    }

    public void setEnterTransition(Transition transition) {
    }

    public void setExitTransition(Transition transition) {
    }

    public abstract void setFeatureDrawable(int i2, Drawable drawable);

    public abstract void setFeatureDrawableAlpha(int i2, int i3);

    public abstract void setFeatureDrawableResource(int i2, int i3);

    public abstract void setFeatureDrawableUri(int i2, Uri uri);

    public abstract void setFeatureInt(int i2, int i3);

    public void setFlags(int i2, int i3) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.flags = (i2 & i3) | (attributes.flags & (~i3));
        this.mForcedWindowFlags |= i3;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setFormat(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        if (i2 != 0) {
            attributes.format = i2;
            this.mHaveWindowFormat = true;
        } else {
            attributes.format = this.mDefaultWindowFormat;
            this.mHaveWindowFormat = false;
        }
        dispatchWindowAttributesChanged(attributes);
    }

    public void setGravity(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.gravity = i2;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setIcon(int i2) {
    }

    public void setLayout(int i2, int i3) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.width = i2;
        attributes.height = i3;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setLocalFocus(boolean z2, boolean z3) {
    }

    public void setLogo(int i2) {
    }

    public void setMediaController(MediaController mediaController) {
    }

    public abstract void setNavigationBarColor(int i2);

    public void setNeedsMenuKey(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.needsMenuKey = i2;
        dispatchWindowAttributesChanged(attributes);
    }

    public final void setOnWindowDismissedCallback(OnWindowDismissedCallback onWindowDismissedCallback) {
        this.mOnWindowDismissedCallback = onWindowDismissedCallback;
    }

    public final void setOnWindowSwipeDismissedCallback(OnWindowSwipeDismissedCallback onWindowSwipeDismissedCallback) {
        this.mOnWindowSwipeDismissedCallback = onWindowSwipeDismissedCallback;
    }

    public void setOverlayWithDecorCaptionEnabled(boolean z2) {
        this.mOverlayWithDecorCaptionEnabled = z2;
    }

    public void setReenterTransition(Transition transition) {
    }

    public abstract void setResizingCaptionDrawable(Drawable drawable);

    public final void setRestrictedCaptionAreaListener(OnRestrictedCaptionAreaChangedListener onRestrictedCaptionAreaChangedListener) {
        this.mOnRestrictedCaptionAreaChangedListener = onRestrictedCaptionAreaChangedListener;
        this.mRestrictedCaptionAreaRect = onRestrictedCaptionAreaChangedListener != null ? new Rect() : null;
    }

    public void setReturnTransition(Transition transition) {
    }

    public void setSharedElementEnterTransition(Transition transition) {
    }

    public void setSharedElementExitTransition(Transition transition) {
    }

    public void setSharedElementReenterTransition(Transition transition) {
    }

    public void setSharedElementReturnTransition(Transition transition) {
    }

    public void setSharedElementsUseOverlay(boolean z2) {
    }

    public void setSoftInputMode(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        if (i2 != 0) {
            attributes.softInputMode = i2;
            this.mHasSoftInputMode = true;
        } else {
            this.mHasSoftInputMode = false;
        }
        dispatchWindowAttributesChanged(attributes);
    }

    public abstract void setStatusBarColor(int i2);

    public void setSustainedPerformanceMode(boolean z2) {
        setPrivateFlags(z2 ? 262144 : 0, 262144);
    }

    public void setTheme(int i2) {
    }

    public abstract void setTitle(CharSequence charSequence);

    @Deprecated
    public abstract void setTitleColor(int i2);

    public void setTransitionBackgroundFadeDuration(long j2) {
    }

    public void setTransitionManager(TransitionManager transitionManager) {
        throw new UnsupportedOperationException();
    }

    public void setType(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.type = i2;
        dispatchWindowAttributesChanged(attributes);
    }

    public void setUiOptions(int i2) {
    }

    public abstract void setVolumeControlStream(int i2);

    public void setWindowAnimations(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.windowAnimations = i2;
        dispatchWindowAttributesChanged(attributes);
    }

    public final void setWindowControllerCallback(WindowControllerCallback windowControllerCallback) {
        this.mWindowControllerCallback = windowControllerCallback;
    }

    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str) {
        setWindowManager(windowManager, iBinder, str, false);
    }

    public boolean shouldCloseOnTouch(Context context, MotionEvent motionEvent) {
        return this.mCloseOnTouchOutside && peekDecorView() != null && ((motionEvent.getAction() == 0 && isOutOfBounds(context, motionEvent)) || motionEvent.getAction() == 4);
    }

    public abstract boolean superDispatchGenericMotionEvent(MotionEvent motionEvent);

    public abstract boolean superDispatchKeyEvent(KeyEvent keyEvent);

    public abstract boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent);

    public abstract boolean superDispatchTouchEvent(MotionEvent motionEvent);

    public abstract boolean superDispatchTrackballEvent(MotionEvent motionEvent);

    public abstract void takeInputQueue(InputQueue.Callback callback);

    public abstract void takeKeyEvents(boolean z2);

    public abstract void takeSurface(SurfaceHolder.Callback2 callback2);

    public abstract void togglePanel(int i2, KeyEvent keyEvent);

    public void setUiOptions(int i2, int i3) {
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000f  */
    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str, boolean z2) {
        boolean z3;
        this.mAppToken = iBinder;
        this.mAppName = str;
        if (!z2) {
            z3 = SystemProperties.getBoolean(PROPERTY_HARDWARE_UI, false);
        }
        this.mHardwareAccelerated = z3;
        if (windowManager == null) {
            windowManager = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        }
        this.mWindowManager = ((WindowManagerImpl) windowManager).createLocalWindowManager(this);
    }
}
