.class public interface abstract Landroid/media/session/ICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ICallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
.end method

.method public abstract onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
.end method

.method public abstract onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
.end method
