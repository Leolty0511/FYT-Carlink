package android.view;

import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.view.animation.Animation;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public interface WindowManagerPolicy {
    public static final int ACTION_GO_TO_SLEEP = 4;
    public static final String ACTION_HDMI_PLUGGED = "android.intent.action.HDMI_PLUGGED";
    public static final int ACTION_PASS_TO_USER = 1;
    public static final int ACTION_WAKE_UP = 2;
    public static final String EXTRA_HDMI_PLUGGED_STATE = "state";
    public static final int FINISH_LAYOUT_REDO_ANIM = 8;
    public static final int FINISH_LAYOUT_REDO_CONFIG = 2;
    public static final int FINISH_LAYOUT_REDO_LAYOUT = 1;
    public static final int FINISH_LAYOUT_REDO_WALLPAPER = 4;
    public static final int FLAG_ALT = 16;
    public static final int FLAG_ALT_GR = 32;
    public static final int FLAG_BRIGHT_HERE = 536870912;
    public static final int FLAG_CAPS_LOCK = 8;
    public static final int FLAG_DISABLE_KEY_REPEAT = 134217728;
    public static final int FLAG_FILTERED = 67108864;
    public static final int FLAG_INJECTED = 16777216;
    public static final int FLAG_LAUNCHER = 128;
    public static final int FLAG_MENU = 64;
    public static final int FLAG_PASS_TO_USER = 1073741824;
    public static final int FLAG_SHIFT = 4;
    public static final int FLAG_TRUSTED = 33554432;
    public static final int FLAG_VIRTUAL = 256;
    public static final int FLAG_WAKE = 1;
    public static final int FLAG_WAKE_DROPPED = 2;
    public static final int FLAG_WOKE_HERE = 268435456;
    public static final int OFF_BECAUSE_OF_ADMIN = 1;
    public static final int OFF_BECAUSE_OF_PROX_SENSOR = 4;
    public static final int OFF_BECAUSE_OF_TIMEOUT = 3;
    public static final int OFF_BECAUSE_OF_USER = 2;
    public static final int PRESENCE_EXTERNAL = 2;
    public static final int PRESENCE_INTERNAL = 1;
    public static final int TRANSIT_ENTER = 1;
    public static final int TRANSIT_EXIT = 2;
    public static final int TRANSIT_HIDE = 4;
    public static final int TRANSIT_PREVIEW_DONE = 5;
    public static final int TRANSIT_SHOW = 3;
    public static final int USER_ROTATION_FREE = 0;
    public static final int USER_ROTATION_LOCKED = 1;
    public static final boolean WATCH_POINTER = false;

    public interface FakeWindow {
        void dismiss();
    }

    public interface OnKeyguardExitResult {
        void onKeyguardExitResult(boolean z2);
    }

    public interface PointerEventListener {
        void onPointerEvent(MotionEvent motionEvent);
    }

    public interface ScreenOnListener {
        void onScreenOn();
    }

    public interface WindowManagerFuncs {
        public static final int LID_ABSENT = -1;
        public static final int LID_CLOSED = 0;
        public static final int LID_OPEN = 1;

        FakeWindow addFakeWindow(Looper looper, InputEventReceiver.Factory factory, String str, int i2, int i3, int i4, boolean z2, boolean z3, boolean z4);

        int getLidState();

        Object getWindowManagerLock();

        void rebootSafeMode(boolean z2);

        void reevaluateStatusBarVisibility();

        void registerPointerEventListener(PointerEventListener pointerEventListener);

        void shutdown(boolean z2);

        void switchKeyboardLayout(int i2, int i3);

        void unregisterPointerEventListener(PointerEventListener pointerEventListener);
    }

    public interface WindowState {
        void computeFrameLw(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6);

        IApplicationToken getAppToken();

        WindowManager.LayoutParams getAttrs();

        Rect getContentFrameLw();

        Rect getDisplayFrameLw();

        Rect getFrameLw();

        Rect getGivenContentInsetsLw();

        boolean getGivenInsetsPendingLw();

        Rect getGivenVisibleInsetsLw();

        boolean getNeedsMenuLw(WindowState windowState);

        Rect getOverscanFrameLw();

        String getOwningPackage();

        int getOwningUid();

        RectF getShownFrameLw();

        int getSurfaceLayer();

        int getSystemUiVisibility();

        Rect getVisibleFrameLw();

        boolean hasAppShownWindows();

        boolean hasDrawnLw();

        boolean hideLw(boolean z2);

        boolean isAlive();

        boolean isAnimatingLw();

        boolean isDefaultDisplay();

        boolean isDisplayedLw();

        boolean isGoneForLayoutLw();

        boolean isVisibleLw();

        boolean isVisibleOrBehindKeyguardLw();

        boolean showLw(boolean z2);
    }

    View addStartingWindow(IBinder iBinder, String str, int i2, CompatibilityInfo compatibilityInfo, CharSequence charSequence, int i3, int i4, int i5, int i6);

    void adjustConfigurationLw(Configuration configuration, int i2, int i3);

    int adjustSystemUiVisibilityLw(int i2);

    void adjustWindowParamsLw(WindowManager.LayoutParams layoutParams);

    boolean allowAppAnimationsLw();

    void applyPostLayoutPolicyLw(WindowState windowState, WindowManager.LayoutParams layoutParams);

    void beginLayoutLw(boolean z2, int i2, int i3, int i4);

    void beginPostLayoutPolicyLw(int i2, int i3);

    boolean canBeForceHidden(WindowState windowState, WindowManager.LayoutParams layoutParams);

    boolean canMagnifyWindow(int i2);

    int checkAddPermission(WindowManager.LayoutParams layoutParams, int[] iArr);

    boolean checkShowToOwnerOnly(WindowManager.LayoutParams layoutParams);

    Animation createForceHideEnterAnimation(boolean z2);

    void dismissKeyguardLw();

    KeyEvent dispatchUnhandledKey(WindowState windowState, KeyEvent keyEvent, int i2);

    boolean doesForceHide(WindowState windowState, WindowManager.LayoutParams layoutParams);

    void dump(String str, PrintWriter printWriter, String[] strArr);

    void enableKeyguard(boolean z2);

    void enableScreenAfterBoot();

    void exitKeyguardSecurely(OnKeyguardExitResult onKeyguardExitResult);

    void finishLayoutLw();

    int finishPostLayoutPolicyLw();

    int focusChangedLw(WindowState windowState, WindowState windowState2);

    int getAboveUniverseLayer();

    int getConfigDisplayHeight(int i2, int i3, int i4);

    int getConfigDisplayWidth(int i2, int i3, int i4);

    void getContentInsetHintLw(WindowManager.LayoutParams layoutParams, Rect rect);

    void getContentRectLw(Rect rect);

    int getMaxWallpaperLayer();

    int getNonDecorDisplayHeight(int i2, int i3, int i4);

    int getNonDecorDisplayWidth(int i2, int i3, int i4);

    int getSystemDecorLayerLw();

    int getUserRotationMode();

    boolean hasNavigationBar();

    void hideBootMessages();

    boolean inKeyguardRestrictedKeyInputMode();

    void init(Context context, IWindowManager iWindowManager, WindowManagerFuncs windowManagerFuncs);

    long interceptKeyBeforeDispatching(WindowState windowState, KeyEvent keyEvent, int i2);

    int interceptKeyBeforeQueueing(KeyEvent keyEvent, int i2, boolean z2);

    int interceptMotionBeforeQueueingWhenScreenOff(int i2);

    boolean isDefaultOrientationForced();

    boolean isKeyguardLocked();

    boolean isKeyguardSecure();

    boolean isScreenOnEarly();

    boolean isScreenOnFully();

    boolean isTopLevelWindow(int i2);

    void keepScreenOnStartedLw();

    void keepScreenOnStoppedLw();

    void layoutWindowLw(WindowState windowState, WindowManager.LayoutParams layoutParams, WindowState windowState2);

    void lockNow(Bundle bundle);

    void notifyLidSwitchChanged(long j2, boolean z2);

    boolean performHapticFeedbackLw(WindowState windowState, int i2, boolean z2);

    int prepareAddWindowLw(WindowState windowState, WindowManager.LayoutParams layoutParams);

    void removeStartingWindow(IBinder iBinder, View view);

    void removeWindowLw(WindowState windowState);

    int rotationForOrientationLw(int i2, int i3);

    boolean rotationHasCompatibleMetricsLw(int i2, int i3);

    void screenTurnedOff(int i2);

    void screenTurningOn(ScreenOnListener screenOnListener);

    int selectAnimationLw(WindowState windowState, int i2);

    void selectRotationAnimationLw(int[] iArr);

    void setCurrentOrientationLw(int i2);

    void setCurrentUserLw(int i2);

    void setDisplayOverscan(Display display, int i2, int i3, int i4, int i5);

    void setInitialDisplaySize(Display display, int i2, int i3, int i4);

    void setLastInputMethodWindowLw(WindowState windowState, WindowState windowState2);

    void setRotationLw(int i2);

    void setSafeMode(boolean z2);

    void setTouchExplorationEnabled(boolean z2);

    void setUserRotationMode(int i2, int i3);

    void showBootMessage(CharSequence charSequence, boolean z2);

    int subWindowTypeToLayerLw(int i2);

    void systemBooted();

    void systemReady();

    void userActivity();

    boolean validateRotationAnimationLw(int i2, int i3, boolean z2);

    int windowTypeToLayerLw(int i2);
}
