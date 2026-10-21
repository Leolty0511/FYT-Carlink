package android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemProperties;
import android.view.accessibility.AccessibilityEvent;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class Window {
    public static final int DEFAULT_FEATURES = 65;
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;
    public static final int FEATURE_CONTEXT_MENU = 6;
    public static final int FEATURE_CUSTOM_TITLE = 7;
    public static final int FEATURE_INDETERMINATE_PROGRESS = 5;
    public static final int FEATURE_LEFT_ICON = 3;
    public static final int FEATURE_MAX = 10;
    public static final int FEATURE_NO_TITLE = 1;
    public static final int FEATURE_OPTIONS_PANEL = 0;
    public static final int FEATURE_PROGRESS = 2;
    public static final int FEATURE_RIGHT_ICON = 4;
    public static final int ID_ANDROID_CONTENT = 16908290;
    public static final int PROGRESS_END = 10000;
    public static final int PROGRESS_INDETERMINATE_OFF = -4;
    public static final int PROGRESS_INDETERMINATE_ON = -3;
    public static final int PROGRESS_SECONDARY_END = 30000;
    public static final int PROGRESS_SECONDARY_START = 20000;
    public static final int PROGRESS_START = 0;
    public static final int PROGRESS_VISIBILITY_OFF = -2;
    public static final int PROGRESS_VISIBILITY_ON = -1;
    private static final String PROPERTY_HARDWARE_UI = "persist.sys.ui.hw";
    private Window mActiveChild;
    private String mAppName;
    private IBinder mAppToken;
    private Callback mCallback;
    private Window mContainer;
    private final Context mContext;
    private boolean mDestroyed;
    private boolean mHardwareAccelerated;
    private WindowManager mWindowManager;
    private TypedArray mWindowStyle;
    private boolean mIsActive = false;
    private boolean mHasChildren = false;
    private boolean mCloseOnTouchOutside = false;
    private boolean mSetCloseOnTouchOutside = false;
    private int mForcedWindowFlags = 0;
    private int mFeatures = 65;
    private int mLocalFeatures = 65;
    private boolean mHaveWindowFormat = false;
    private boolean mHaveDimAmount = false;
    private int mDefaultWindowFormat = -1;
    private boolean mHasSoftInputMode = false;
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

        boolean onPreparePanel(int i2, View view, Menu menu);

        boolean onSearchRequested();

        void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams);

        void onWindowFocusChanged(boolean z2);

        ActionMode onWindowStartingActionMode(ActionMode.Callback callback);
    }

    public Window(Context context) {
        this.mContext = context;
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
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public void addFlags(int i2) {
        setFlags(i2, i2);
    }

    public void addPrivateFlags(int i2) {
        setPrivateFlags(i2, i2);
    }

    public void adjustLayoutParamsForSubWindow(WindowManager.LayoutParams layoutParams) {
        CharSequence charSequence;
        String string;
        View viewPeekDecorView;
        CharSequence title = layoutParams.getTitle();
        int i2 = layoutParams.type;
        if (i2 < 1000 || i2 > 1999) {
            if (layoutParams.token == null) {
                Window window = this.mContainer;
                layoutParams.token = window == null ? this.mAppToken : window.mAppToken;
            }
            if ((title == null || title.length() == 0) && (charSequence = this.mAppName) != null) {
                layoutParams.setTitle(charSequence);
            }
        } else {
            if (layoutParams.token == null && (viewPeekDecorView = peekDecorView()) != null) {
                layoutParams.token = viewPeekDecorView.getWindowToken();
            }
            if (title == null || title.length() == 0) {
                int i3 = layoutParams.type;
                if (i3 == 1001) {
                    string = "Media";
                } else if (i3 == 1004) {
                    string = "MediaOvr";
                } else if (i3 == 1000) {
                    string = "Panel";
                } else if (i3 == 1002) {
                    string = "SubPanel";
                } else {
                    string = i3 == 1003 ? "AtchDlg" : Integer.toString(i3);
                }
                if (this.mAppName != null) {
                    string = string + ":" + this.mAppName;
                }
                layoutParams.setTitle(string);
            }
        }
        if (layoutParams.packageName == null) {
            layoutParams.packageName = this.mContext.getPackageName();
        }
        if (this.mHardwareAccelerated) {
            layoutParams.flags |= 16777216;
        }
    }

    public abstract void alwaysReadCloseOnTouchAttr();

    public void clearFlags(int i2) {
        setFlags(0, i2);
    }

    public abstract void closeAllPanels();

    public abstract void closePanel(int i2);

    public final void destroy() {
        this.mDestroyed = true;
    }

    public View findViewById(int i2) {
        return getDecorView().findViewById(i2);
    }

    public final WindowManager.LayoutParams getAttributes() {
        return this.mWindowAttributes;
    }

    public final Callback getCallback() {
        return this.mCallback;
    }

    public final Window getContainer() {
        return this.mContainer;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public abstract View getCurrentFocus();

    public abstract View getDecorView();

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

    public abstract int getVolumeControlStream();

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    public final TypedArray getWindowStyle() {
        TypedArray typedArray;
        synchronized (this) {
            if (this.mWindowStyle == null) {
                this.mWindowStyle = this.mContext.obtainStyledAttributes(a.Window);
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

    public final boolean isDestroyed() {
        return this.mDestroyed;
    }

    public abstract boolean isFloating();

    public abstract boolean isShortcutKey(int i2, KeyEvent keyEvent);

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

    public abstract void onActive();

    public abstract void onConfigurationChanged(Configuration configuration);

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

    public void setAttributes(WindowManager.LayoutParams layoutParams) {
        this.mWindowAttributes.copyFrom(layoutParams);
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(this.mWindowAttributes);
        }
    }

    public abstract void setBackgroundDrawable(Drawable drawable);

    public void setBackgroundDrawableResource(int i2) {
        setBackgroundDrawable(this.mContext.getResources().getDrawable(i2));
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public abstract void setChildDrawable(int i2, Drawable drawable);

    public abstract void setChildInt(int i2, int i3);

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
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setDimAmount(float f2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.dimAmount = f2;
        this.mHaveDimAmount = true;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public abstract void setFeatureDrawable(int i2, Drawable drawable);

    public abstract void setFeatureDrawableAlpha(int i2, int i3);

    public abstract void setFeatureDrawableResource(int i2, int i3);

    public abstract void setFeatureDrawableUri(int i2, Uri uri);

    public abstract void setFeatureInt(int i2, int i3);

    public void setFlags(int i2, int i3) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.flags = (i2 & i3) | (attributes.flags & (~i3));
        if ((1073741824 & i3) != 0) {
            attributes.privateFlags |= 8;
        }
        this.mForcedWindowFlags |= i3;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
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
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setGravity(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.gravity = i2;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setIcon(int i2) {
    }

    public void setLayout(int i2, int i3) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.width = i2;
        attributes.height = i3;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setLocalFocus(boolean z2, boolean z3) {
    }

    public void setLogo(int i2) {
    }

    public void setSoftInputMode(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        if (i2 != 0) {
            attributes.softInputMode = i2;
            this.mHasSoftInputMode = true;
        } else {
            this.mHasSoftInputMode = false;
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setTitleColor(int i2);

    public void setType(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.type = i2;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setUiOptions(int i2) {
    }

    public void setUiOptions(int i2, int i3) {
    }

    public abstract void setVolumeControlStream(int i2);

    public void setWindowAnimations(int i2) {
        WindowManager.LayoutParams attributes = getAttributes();
        attributes.windowAnimations = i2;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onWindowAttributesChanged(attributes);
        }
    }

    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str) {
        setWindowManager(windowManager, iBinder, str, false);
    }

    public boolean shouldCloseOnTouch(Context context, MotionEvent motionEvent) {
        return this.mCloseOnTouchOutside && motionEvent.getAction() == 0 && isOutOfBounds(context, motionEvent) && peekDecorView() != null;
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

    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str, boolean z2) {
        this.mAppToken = iBinder;
        this.mAppName = str;
        this.mHardwareAccelerated = z2 || SystemProperties.getBoolean(PROPERTY_HARDWARE_UI, false);
        if (windowManager == null) {
            windowManager = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        }
        this.mWindowManager = ((WindowManagerImpl) windowManager).createLocalWindowManager(this);
    }
}
