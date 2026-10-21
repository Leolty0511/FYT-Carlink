.class public interface abstract Landroid/media/IPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlayer$Stub;
    }
.end annotation


# virtual methods
.method public abstract applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
.end method

.method public abstract pause()V
.end method

.method public abstract setPan(F)V
.end method

.method public abstract setStartDelayMs(I)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
