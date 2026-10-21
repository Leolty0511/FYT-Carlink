.class public interface abstract Lcom/android/ims/internal/IImsServiceListenerEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceListenerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract imsCallEnd(I)V
.end method

.method public abstract imsPdnStateChange(I)V
.end method

.method public abstract onDPDDisconnected()V
.end method

.method public abstract onMediaQualityChanged(ZIII)V
.end method

.method public abstract onNoRtpReceived(Z)V
.end method

.method public abstract onRtpReceived(Z)V
.end method

.method public abstract onSetVowifiRegister(I)V
.end method

.method public abstract onSrvccFaild()V
.end method

.method public abstract onVideoStateChanged(I)V
.end method

.method public abstract onVoWiFiError(I)V
.end method

.method public abstract operationFailed(ILjava/lang/String;I)V
.end method

.method public abstract operationSuccessed(II)V
.end method
