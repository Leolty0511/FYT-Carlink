.class public interface abstract Landroid/view/IWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addWindowToken(Landroid/os/IBinder;II)V
.end method

.method public abstract canNavigationBarMove()Z
.end method

.method public abstract clearForcedDisplayDensityForUser(II)V
.end method

.method public abstract clearForcedDisplaySize(I)V
.end method

.method public abstract clearWindowContentFrameStats(Landroid/os/IBinder;)Z
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
.end method

.method public abstract destroyInputConsumer(Ljava/lang/String;)Z
.end method

.method public abstract disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract disableSurfaceTrace()V
.end method

.method public abstract dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
.end method

.method public abstract enableScreenIfNeeded()V
.end method

.method public abstract enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract endProlongedAnimations()V
.end method

.method public abstract executeAppTransition()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
.end method

.method public abstract freezeRotation(I)V
.end method

.method public abstract getAnimationScale(I)F
.end method

.method public abstract getAnimationScales()[F
.end method

.method public abstract getBaseDisplayDensity(I)I
.end method

.method public abstract getBaseDisplaySize(ILandroid/graphics/Point;)V
.end method

.method public abstract getCurrentAnimatorScale()F
.end method

.method public abstract getCurrentImeTouchRegion()Landroid/graphics/Region;
.end method

.method public abstract getDefaultDisplayRotation()I
.end method

.method public abstract getDockedStackSide()I
.end method

.method public abstract getInitialDisplayDensity(I)I
.end method

.method public abstract getInitialDisplaySize(ILandroid/graphics/Point;)V
.end method

.method public abstract getPendingAppTransition()I
.end method

.method public abstract getPreferredOptionsPanelGravity()I
.end method

.method public abstract getStableInsets(ILandroid/graphics/Rect;)V
.end method

.method public abstract getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract inKeyguardRestrictedInputMode()Z
.end method

.method public abstract inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardSecure()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isNavigationBarShowing()Z
.end method

.method public abstract isRotationFrozen()Z
.end method

.method public abstract isSafeModeEnabled()Z
.end method

.method public abstract isViewServerRunning()Z
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
.end method

.method public abstract overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
.end method

.method public abstract overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
.end method

.method public abstract overridePendingAppTransitionClipReveal(IIII)V
.end method

.method public abstract overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
.end method

.method public abstract overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
.end method

.method public abstract overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
.end method

.method public abstract overridePendingAppTransitionScaleUp(IIII)V
.end method

.method public abstract overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
.end method

.method public abstract prepareAppTransition(IZ)V
.end method

.method public abstract reenableKeyguard(Landroid/os/IBinder;)V
.end method

.method public abstract registerDockedStackListener(Landroid/view/IDockedStackListener;)V
.end method

.method public abstract registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
.end method

.method public abstract registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
.end method

.method public abstract removeRotationWatcher(Landroid/view/IRotationWatcher;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;I)V
.end method

.method public abstract requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
.end method

.method public abstract requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
.end method

.method public abstract screenshotWallpaper()Landroid/graphics/Bitmap;
.end method

.method public abstract setAnimationScale(IF)V
.end method

.method public abstract setAnimationScales([F)V
.end method

.method public abstract setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
.end method

.method public abstract setDockedStackResizing(Z)V
.end method

.method public abstract setEventDispatching(Z)V
.end method

.method public abstract setFocusedApp(Landroid/os/IBinder;Z)V
.end method

.method public abstract setForcedDisplayDensityForUser(III)V
.end method

.method public abstract setForcedDisplayScalingMode(II)V
.end method

.method public abstract setForcedDisplaySize(III)V
.end method

.method public abstract setInTouchMode(Z)V
.end method

.method public abstract setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I
.end method

.method public abstract setOverscan(IIIII)V
.end method

.method public abstract setPipVisibility(Z)V
.end method

.method public abstract setRecentsVisibility(Z)V
.end method

.method public abstract setResizeDimLayer(ZIF)V
.end method

.method public abstract setScreenCaptureDisabled(IZ)V
.end method

.method public abstract setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract showStrictModeViolation(Z)V
.end method

.method public abstract startFreezingScreen(II)V
.end method

.method public abstract startViewServer(I)Z
.end method

.method public abstract statusBarVisibilityChanged(I)V
.end method

.method public abstract stopFreezingScreen()V
.end method

.method public abstract stopViewServer()Z
.end method

.method public abstract thawRotation()V
.end method

.method public abstract unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
.end method

.method public abstract updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
.end method

.method public abstract updateRotation(ZZ)V
.end method

.method public abstract watchRotation(Landroid/view/IRotationWatcher;I)I
.end method
