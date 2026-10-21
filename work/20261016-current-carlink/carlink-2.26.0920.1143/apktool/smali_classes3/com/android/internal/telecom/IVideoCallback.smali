.class public interface abstract Lcom/android/internal/telecom/IVideoCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeCallDataUsage(J)V
.end method

.method public abstract changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
.end method

.method public abstract changePeerDimensions(II)V
.end method

.method public abstract changeVideoQuality(I)V
.end method

.method public abstract handleCallSessionEvent(I)V
.end method

.method public abstract receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method
