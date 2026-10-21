.class public interface abstract Lcom/android/internal/statusbar/IStatusBarService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addTile(Landroid/content/ComponentName;)V
.end method

.method public abstract clearNotificationEffects()V
.end method

.method public abstract clickTile(Landroid/content/ComponentName;)V
.end method

.method public abstract collapsePanels()V
.end method

.method public abstract disable(ILandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method public abstract disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method public abstract expandNotificationsPanel()V
.end method

.method public abstract expandSettingsPanel(Ljava/lang/String;)V
.end method

.method public abstract handleSystemKey(I)V
.end method

.method public abstract onClearAllNotifications(I)V
.end method

.method public abstract onGlobalActionsHidden()V
.end method

.method public abstract onGlobalActionsShown()V
.end method

.method public abstract onNotificationActionClick(Ljava/lang/String;I)V
.end method

.method public abstract onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onNotificationClick(Ljava/lang/String;)V
.end method

.method public abstract onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
.end method

.method public abstract onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onPanelHidden()V
.end method

.method public abstract onPanelRevealed(ZI)V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;[I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method public abstract remTile(Landroid/content/ComponentName;)V
.end method

.method public abstract removeIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end method

.method public abstract setSystemUiVisibility(IILjava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract togglePanel()V
.end method
