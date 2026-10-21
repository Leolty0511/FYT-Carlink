.class public interface abstract Lcom/android/internal/statusbar/IStatusBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub;
    }
.end annotation


# virtual methods
.method public abstract addQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract animateCollapsePanels()V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel(Ljava/lang/String;)V
.end method

.method public abstract appTransitionCancelled()V
.end method

.method public abstract appTransitionFinished()V
.end method

.method public abstract appTransitionPending()V
.end method

.method public abstract appTransitionStarting(JJ)V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract clickQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract disable(II)V
.end method

.method public abstract dismissKeyboardShortcutsMenu()V
.end method

.method public abstract handleSystemKey(I)V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract onCameraLaunchGestureDetected(I)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract remQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract removeIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end method

.method public abstract setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setTopAppHidesStatusBar(Z)V
.end method

.method public abstract setWindowState(II)V
.end method

.method public abstract showAssistDisclosure()V
.end method

.method public abstract showGlobalActionsMenu()V
.end method

.method public abstract showPictureInPictureMenu()V
.end method

.method public abstract showRecentApps(ZZ)V
.end method

.method public abstract showScreenPinningRequest(I)V
.end method

.method public abstract showShutdownUi(ZLjava/lang/String;)V
.end method

.method public abstract startAssist(Landroid/os/Bundle;)V
.end method

.method public abstract toggleKeyboardShortcutsMenu(I)V
.end method

.method public abstract togglePanel()V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract toggleSplitScreen()V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method
