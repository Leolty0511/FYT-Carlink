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
.method public abstract addAppToken(ILandroid/view/IApplicationToken;IIIZZII)V
.end method

.method public abstract addWindowToken(Landroid/os/IBinder;I)V
.end method

.method public abstract clearForcedDisplayDensity(I)V
.end method

.method public abstract clearForcedDisplaySize(I)V
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract dismissKeyguard()V
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

.method public abstract getAppOrientation(Landroid/view/IApplicationToken;)I
.end method

.method public abstract getBaseDisplayDensity(I)I
.end method

.method public abstract getBaseDisplaySize(ILandroid/graphics/Point;)V
.end method

.method public abstract getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getInitialDisplayDensity(I)I
.end method

.method public abstract getInitialDisplaySize(ILandroid/graphics/Point;)V
.end method

.method public abstract getPendingAppTransition()I
.end method

.method public abstract getPreferredOptionsPanelGravity()I
.end method

.method public abstract getRotation()I
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract inKeyguardRestrictedInputMode()Z
.end method

.method public abstract inputMethodClientHasFocus(Lcom/android/internal/view/e;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardSecure()Z
.end method

.method public abstract isRotationFrozen()Z
.end method

.method public abstract isSafeModeEnabled()Z
.end method

.method public abstract isViewServerRunning()Z
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract openSession(Lcom/android/internal/view/e;Lcom/android/internal/view/b;)Landroid/view/IWindowSession;
.end method

.method public abstract overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
.end method

.method public abstract overridePendingAppTransitionScaleUp(IIII)V
.end method

.method public abstract overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
.end method

.method public abstract pauseKeyDispatching(Landroid/os/IBinder;)V
.end method

.method public abstract prepareAppTransition(IZ)V
.end method

.method public abstract reenableKeyguard(Landroid/os/IBinder;)V
.end method

.method public abstract removeAppToken(Landroid/os/IBinder;)V
.end method

.method public abstract removeRotationWatcher(Landroid/view/IRotationWatcher;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;)V
.end method

.method public abstract resumeKeyDispatching(Landroid/os/IBinder;)V
.end method

.method public abstract screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;
.end method

.method public abstract setAnimationScale(IF)V
.end method

.method public abstract setAnimationScales([F)V
.end method

.method public abstract setAppGroupId(Landroid/os/IBinder;I)V
.end method

.method public abstract setAppOrientation(Landroid/view/IApplicationToken;I)V
.end method

.method public abstract setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
.end method

.method public abstract setAppVisibility(Landroid/os/IBinder;Z)V
.end method

.method public abstract setAppWillBeHidden(Landroid/os/IBinder;)V
.end method

.method public abstract setEventDispatching(Z)V
.end method

.method public abstract setFocusedApp(Landroid/os/IBinder;Z)V
.end method

.method public abstract setForcedDisplayDensity(II)V
.end method

.method public abstract setForcedDisplaySize(III)V
.end method

.method public abstract setInTouchMode(Z)V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setMagnificationCallbacks(Landroid/view/IMagnificationCallbacks;)V
.end method

.method public abstract setMagnificationSpec(Landroid/view/MagnificationSpec;)V
.end method

.method public abstract setNewConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract setOverscan(IIIII)V
.end method

.method public abstract setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
.end method

.method public abstract setTouchExplorationEnabled(Z)V
.end method

.method public abstract showStrictModeViolation(Z)V
.end method

.method public abstract startAppFreezingScreen(Landroid/os/IBinder;I)V
.end method

.method public abstract startFreezingScreen(II)V
.end method

.method public abstract startViewServer(I)Z
.end method

.method public abstract statusBarVisibilityChanged(I)V
.end method

.method public abstract stopAppFreezingScreen(Landroid/os/IBinder;Z)V
.end method

.method public abstract stopFreezingScreen()V
.end method

.method public abstract stopViewServer()Z
.end method

.method public abstract thawRotation()V
.end method

.method public abstract updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
.end method

.method public abstract updateRotation(ZZ)V
.end method

.method public abstract waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
.end method

.method public abstract watchRotation(Landroid/view/IRotationWatcher;)I
.end method
