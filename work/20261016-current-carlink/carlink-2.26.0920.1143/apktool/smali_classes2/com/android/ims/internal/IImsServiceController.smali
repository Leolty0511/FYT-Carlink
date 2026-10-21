.class public interface abstract Lcom/android/ims/internal/IImsServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub;
    }
.end annotation


# virtual methods
.method public abstract addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
.end method

.method public abstract endSession(III)V
.end method

.method public abstract getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;
.end method

.method public abstract getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;
.end method

.method public abstract getFeatureStatus(II)I
.end method

.method public abstract getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;
.end method

.method public abstract getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract getUtInterface(II)Lcom/android/ims/internal/IImsUt;
.end method

.method public abstract isConnected(IIII)Z
.end method

.method public abstract isOpened(II)Z
.end method

.method public abstract removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
.end method

.method public abstract removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract setUiTTYMode(IIILandroid/os/Message;)V
.end method

.method public abstract startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
.end method

.method public abstract turnOffIms(II)V
.end method

.method public abstract turnOnIms(II)V
.end method
