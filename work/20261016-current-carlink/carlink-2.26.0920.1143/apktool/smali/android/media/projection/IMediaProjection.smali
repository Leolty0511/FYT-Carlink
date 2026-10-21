.class public interface abstract Landroid/media/projection/IMediaProjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjection$Stub;
    }
.end annotation


# virtual methods
.method public abstract applyVirtualDisplayFlags(I)I
.end method

.method public abstract canProjectAudio()Z
.end method

.method public abstract canProjectSecureVideo()Z
.end method

.method public abstract canProjectVideo()Z
.end method

.method public abstract registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
.end method

.method public abstract start(Landroid/media/projection/IMediaProjectionCallback;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
.end method
