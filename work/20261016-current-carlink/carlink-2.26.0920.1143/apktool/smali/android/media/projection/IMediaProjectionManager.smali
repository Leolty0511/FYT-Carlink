.class public interface abstract Landroid/media/projection/IMediaProjectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
.end method

.method public abstract createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
.end method

.method public abstract getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
.end method

.method public abstract hasProjectionPermission(ILjava/lang/String;)Z
.end method

.method public abstract isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
.end method

.method public abstract removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
.end method

.method public abstract stopActiveProjection()V
.end method
