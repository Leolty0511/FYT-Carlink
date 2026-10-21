.class public interface abstract Landroid/media/IRingtonePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTitle(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract isPlaying(Landroid/os/IBinder;)Z
.end method

.method public abstract openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
.end method

.method public abstract playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
.end method

.method public abstract setPlaybackProperties(Landroid/os/IBinder;FZ)V
.end method

.method public abstract stop(Landroid/os/IBinder;)V
.end method

.method public abstract stopAsync()V
.end method
