.class public interface abstract Landroid/media/session/ISessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
.end method

.method public abstract createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
.end method

.method public abstract dispatchAdjustVolume(III)V
.end method

.method public abstract dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
.end method

.method public abstract dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
.end method

.method public abstract getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGlobalPriorityActive()Z
.end method

.method public abstract removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
.end method

.method public abstract setCallback(Landroid/media/session/ICallback;)V
.end method

.method public abstract setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
.end method

.method public abstract setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
.end method

.method public abstract setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
.end method
