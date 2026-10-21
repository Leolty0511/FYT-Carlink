package android.view;

import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.view.animation.Animation;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.IShortcutService;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface WindowManagerPolicy {
    public static final String ACTION_HDMI_PLUGGED = "android.intent.action.HDMI_PLUGGED";
    public static final int ACTION_PASS_TO_USER = 1;
    public static final int APPLICATION_ABOVE_SUB_PANEL_SUBLAYER = 3;
    public static final int APPLICATION_LAYER = 2;
    public static final int APPLICATION_MEDIA_OVERLAY_SUBLAYER = -1;
    public static final int APPLICATION_MEDIA_SUBLAYER = -2;
    public static final int APPLICATION_PANEL_SUBLAYER = 1;
    public static final int APPLICATION_SUB_PANEL_SUBLAYER = 2;
    public static final String EXTRA_FROM_HOME_KEY = "android.intent.extra.FROM_HOME_KEY";
    public static final String EXTRA_HDMI_PLUGGED_STATE = "state";
    public static final int FINISH_LAYOUT_REDO_ANIM = 8;
    public static final int FINISH_LAYOUT_REDO_CONFIG = 2;
    public static final int FINISH_LAYOUT_REDO_LAYOUT = 1;
    public static final int FINISH_LAYOUT_REDO_WALLPAPER = 4;
    public static final int FLAG_DISABLE_KEY_REPEAT = 134217728;
    public static final int FLAG_FILTERED = 67108864;
    public static final int FLAG_INJECTED = 16777216;
    public static final int FLAG_INTERACTIVE = 536870912;
    public static final int FLAG_PASS_TO_USER = 1073741824;
    public static final int FLAG_TRUSTED = 33554432;
    public static final int FLAG_VIRTUAL = 2;
    public static final int FLAG_WAKE = 1;
    public static final int KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS = 2;
    public static final int KEYGUARD_GOING_AWAY_FLAG_TO_SHADE = 1;
    public static final int KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER = 4;
    public static final int NAV_BAR_BOTTOM = 4;
    public static final int NAV_BAR_LEFT = 1;
    public static final int NAV_BAR_RIGHT = 2;
    public static final int OFF_BECAUSE_OF_ADMIN = 1;
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

    public interface InputConsumer {
        void dismiss();
    }

    public interface OnKeyguardExitResult {
        void onKeyguardExitResult(boolean z2);
    }

    public interface PointerEventListener {
        void onPointerEvent(MotionEvent motionEvent);

        void onPointerEvent(MotionEvent motionEvent, int i2);
    }

    public interface ScreenOffListener {
        void onScreenOff();
    }

    public interface ScreenOnListener {
        void onScreenOn();
    }

    public interface StartingSurface {
        void remove();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UserRotationMode {
    }

    public interface WindowManagerFuncs {
        public static final int CAMERA_LENS_COVERED = 1;
        public static final int CAMERA_LENS_COVER_ABSENT = -1;
        public static final int CAMERA_LENS_UNCOVERED = 0;
        public static final int LID_ABSENT = -1;
        public static final int LID_CLOSED = 0;
        public static final int LID_OPEN = 1;

        InputConsumer createInputConsumer(Looper looper, String str, InputEventReceiver.Factory factory);

        int getCameraLensCoverState();

        int getDockedDividerInsetsLw();

        WindowState getInputMethodWindowLw();

        int getLidState();

        void getStackBounds(int i2, Rect rect);

        Object getWindowManagerLock();

        void lockDeviceNow();

        void notifyKeyguardTrustedChanged();

        void notifyShowingDreamChanged();

        void reboot(boolean z2);

        void rebootSafeMode(boolean z2);

        void reevaluateStatusBarVisibility();

        void registerPointerEventListener(PointerEventListener pointerEventListener);

        void screenTurningOff(ScreenOffListener screenOffListener);

        void shutdown(boolean z2);

        void switchInputMethod(boolean z2);

        void unregisterPointerEventListener(PointerEventListener pointerEventListener);
    }

    public interface WindowState {
        boolean canAcquireSleepToken();

        boolean canAddInternalSystemWindow();

        boolean canAffectSystemUiFlags();

        void computeFrameLw(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, Rect rect7, Rect rect8);

        IApplicationToken getAppToken();

        WindowManager.LayoutParams getAttrs();

        int getBaseType();

        Rect getContentFrameLw();

        Rect getDisplayFrameLw();

        int getDisplayId();

        Rect getFrameLw();

        Rect getGivenContentInsetsLw();

        boolean getGivenInsetsPendingLw();

        Rect getGivenVisibleInsetsLw();

        boolean getNeedsMenuLw(WindowState windowState);

        Rect getOverscanFrameLw();

        String getOwningPackage();

        int getOwningUid();

        int getRotationAnimationHint();

        Point getShownPositionLw();

        int getStackId();

        int getSurfaceLayer();

        int getSystemUiVisibility();

        Rect getVisibleFrameLw();

        boolean hasAppShownWindows();

        boolean hasDrawnLw();

        boolean hideLw(boolean z2);

        boolean isAlive();

        boolean isAnimatingLw();

        boolean isDefaultDisplay();

        boolean isDimming();

        boolean isDisplayedLw();

        boolean isDrawnLw();

        boolean isGoneForLayoutLw();

        boolean isInMultiWindowMode();

        boolean isInputMethodWindow();

        boolean isVisibleLw();

        boolean isVoiceInteraction();

        boolean showLw(boolean z2);
    }

    StartingSurface addSplashScreen(IBinder iBinder, String str, int i2, CompatibilityInfo compatibilityInfo, CharSequence charSequence, int i3, int i4, int i5, int i6, Configuration configuration, int i7);

    void adjustConfigurationLw(Configuration configuration, int i2, int i3);

    int adjustSystemUiVisibilityLw(int i2);

    void adjustWindowParamsLw(WindowManager.LayoutParams layoutParams);

    boolean allowAppAnimationsLw();

    void applyPostLayoutPolicyLw(WindowState windowState, WindowManager.LayoutParams layoutParams, WindowState windowState2, WindowState windowState3);

    void beginLayoutLw(boolean z2, int i2, int i3, int i4, int i5);

    void beginPostLayoutPolicyLw(int i2, int i3);

    boolean canBeHiddenByKeyguardLw(WindowState windowState);

    boolean canDismissBootAnimation();

    boolean canMagnifyWindow(int i2);

    boolean canNavigationBarMove();

    int checkAddPermission(WindowManager.LayoutParams layoutParams, int[] iArr);

    boolean checkShowToOwnerOnly(WindowManager.LayoutParams layoutParams);

    Animation createHiddenByKeyguardExit(boolean z2, boolean z3);

    Animation createKeyguardWallpaperExit(boolean z2);

    void dismissKeyguardLw(IKeyguardDismissCallback iKeyguardDismissCallback);

    KeyEvent dispatchUnhandledKey(WindowState windowState, KeyEvent keyEvent, int i2);

    void dump(String str, PrintWriter printWriter, String[] strArr);

    void enableKeyguard(boolean z2);

    void enableScreenAfterBoot();

    void exitKeyguardSecurely(OnKeyguardExitResult onKeyguardExitResult);

    void finishLayoutLw();

    int finishPostLayoutPolicyLw();

    void finishedGoingToSleep(int i2);

    void finishedWakingUp();

    int focusChangedLw(WindowState windowState, WindowState windowState2);

    int getConfigDisplayHeight(int i2, int i3, int i4, int i5, int i6);

    int getConfigDisplayWidth(int i2, int i3, int i4, int i5, int i6);

    void getContentRectLw(Rect rect);

    int getInputMethodWindowVisibleHeightLw();

    boolean getInsetHintLw(WindowManager.LayoutParams layoutParams, Rect rect, int i2, int i3, int i4, Rect rect2, Rect rect3, Rect rect4);

    int getMaxWallpaperLayer();

    int getNavBarPosition();

    int getNonDecorDisplayHeight(int i2, int i3, int i4, int i5, int i6);

    int getNonDecorDisplayWidth(int i2, int i3, int i4, int i5, int i6);

    void getNonDecorInsetsLw(int i2, int i3, int i4, Rect rect);

    void getStableInsetsLw(int i2, int i3, int i4, Rect rect);

    int getSubWindowLayerFromTypeLw(int i2);

    int getSystemDecorLayerLw();

    int getUserRotationMode();

    int getWindowLayerFromTypeLw(int i2);

    int getWindowLayerFromTypeLw(int i2, boolean z2);

    int getWindowLayerLw(WindowState windowState);

    boolean hasNavigationBar();

    void hideBootMessages();

    boolean inKeyguardRestrictedKeyInputMode();

    void init(Context context, IWindowManager iWindowManager, WindowManagerFuncs windowManagerFuncs);

    long interceptKeyBeforeDispatching(WindowState windowState, KeyEvent keyEvent, int i2);

    int interceptKeyBeforeQueueing(KeyEvent keyEvent, int i2);

    int interceptMotionBeforeQueueingNonInteractive(long j2, int i2);

    boolean isDefaultOrientationForced();

    boolean isDockSideAllowed(int i2);

    boolean isKeyguardDrawnLw();

    boolean isKeyguardHostWindow(WindowManager.LayoutParams layoutParams);

    boolean isKeyguardLocked();

    boolean isKeyguardOccluded();

    boolean isKeyguardSecure(int i2);

    boolean isKeyguardShowingAndNotOccluded();

    boolean isKeyguardTrustedLw();

    boolean isNavBarForcedShownLw(WindowState windowState);

    boolean isNavigationBarShowing();

    boolean isScreenOn();

    boolean isShowingDreamLw();

    boolean isTopLevelWindow(int i2);

    void keepScreenOnStartedLw();

    void keepScreenOnStoppedLw();

    void layoutWindowLw(WindowState windowState, WindowState windowState2);

    void lockNow(Bundle bundle);

    void notifyCameraLensCoverSwitchChanged(long j2, boolean z2);

    void notifyLidSwitchChanged(long j2, boolean z2);

    boolean okToAnimate();

    void onConfigurationChanged();

    void onKeyguardOccludedChangedLw(boolean z2);

    void onSystemUiStarted();

    boolean performHapticFeedbackLw(WindowState windowState, int i2, boolean z2);

    int prepareAddWindowLw(WindowState windowState, WindowManager.LayoutParams layoutParams);

    void registerShortcutKey(long j2, IShortcutService iShortcutService);

    void removeWindowLw(WindowState windowState);

    int rotationForOrientationLw(int i2, int i3);

    boolean rotationHasCompatibleMetricsLw(int i2, int i3);

    void screenTurnedOff();

    void screenTurnedOn();

    void screenTurningOff(ScreenOffListener screenOffListener);

    void screenTurningOn(ScreenOnListener screenOnListener);

    int selectAnimationLw(WindowState windowState, int i2);

    void selectRotationAnimationLw(int[] iArr);

    void setCurrentOrientationLw(int i2);

    void setCurrentUserLw(int i2);

    void setDismissImeOnBackKeyPressed(boolean z2);

    void setDisplayOverscan(Display display, int i2, int i3, int i4, int i5);

    void setInitialDisplaySize(Display display, int i2, int i3, int i4);

    void setLastInputMethodWindowLw(WindowState windowState, WindowState windowState2);

    void setPipVisibilityLw(boolean z2);

    void setRecentsVisibilityLw(boolean z2);

    void setRotationLw(int i2);

    void setSafeMode(boolean z2);

    void setSwitchingUser(boolean z2);

    void setThreadPriorities(int i2);

    void setUserRotationMode(int i2, int i3);

    boolean shouldRotateSeamlessly(int i2, int i3);

    void showBootMessage(CharSequence charSequence, boolean z2);

    void showGlobalActions();

    void showRecentApps(boolean z2);

    void startKeyguardExitAnimation(long j2, long j3);

    void startedGoingToSleep(int i2);

    void startedWakingUp();

    void systemBooted();

    void systemReady();

    void userActivity();

    boolean validateRotationAnimationLw(int i2, int i3, boolean z2);
}
