.class public interface abstract Landroid/telephony/ims/feature/IMMTelFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract createCallProfile(III)Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract endSession(I)V
.end method

.method public abstract getConfigInterface()Lcom/android/ims/internal/IImsConfig;
.end method

.method public abstract getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
.end method

.method public abstract getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
.end method

.method public abstract getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
.end method

.method public abstract getUtInterface()Lcom/android/ims/internal/IImsUt;
.end method

.method public abstract isConnected(II)Z
.end method

.method public abstract isOpened()Z
.end method

.method public abstract removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
.end method

.method public abstract setUiTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
.end method

.method public abstract turnOffIms()V
.end method

.method public abstract turnOnIms()V
.end method
