.class public interface abstract Lcom/android/internal/telecom/IVideoProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract addVideoCallback(Landroid/os/IBinder;)V
.end method

.method public abstract removeVideoCallback(Landroid/os/IBinder;)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract requestCameraCapabilities()V
.end method

.method public abstract sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract setCamera(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract setPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract setPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract setZoom(F)V
.end method
