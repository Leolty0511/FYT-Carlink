.class public interface abstract Lcom/android/ims/internal/IImsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract close(I)V
.end method

.method public abstract createCallProfile(III)Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
.end method

.method public abstract getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
.end method

.method public abstract getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
.end method

.method public abstract getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract getUtInterface(I)Lcom/android/ims/internal/IImsUt;
.end method

.method public abstract isConnected(III)Z
.end method

.method public abstract isOpened(I)Z
.end method

.method public abstract open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
.end method

.method public abstract setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract setUiTTYMode(IILandroid/os/Message;)V
.end method

.method public abstract turnOffIms(I)V
.end method

.method public abstract turnOnIms(I)V
.end method
