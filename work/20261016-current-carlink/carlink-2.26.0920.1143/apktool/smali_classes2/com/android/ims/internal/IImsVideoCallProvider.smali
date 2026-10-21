.class public interface abstract Lcom/android/ims/internal/IImsVideoCallProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestCallDataUsage()V
.end method

.method public abstract requestCameraCapabilities()V
.end method

.method public abstract sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
.end method

.method public abstract setCamera(Ljava/lang/String;I)V
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
