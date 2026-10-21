.class public interface abstract Lcom/android/ims/internal/IImsCallSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract accept(ILcom/android/ims/ImsStreamMediaProfile;)V
.end method

.method public abstract close()V
.end method

.method public abstract extendToConference([Ljava/lang/String;)V
.end method

.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract getState()I
.end method

.method public abstract getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
.end method

.method public abstract hold(Lcom/android/ims/ImsStreamMediaProfile;)V
.end method

.method public abstract inviteParticipants([Ljava/lang/String;)V
.end method

.method public abstract isInCall()Z
.end method

.method public abstract isMultiparty()Z
.end method

.method public abstract merge()V
.end method

.method public abstract reject(I)V
.end method

.method public abstract removeParticipants([Ljava/lang/String;)V
.end method

.method public abstract resume(Lcom/android/ims/ImsStreamMediaProfile;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendRttMessage(Ljava/lang/String;)V
.end method

.method public abstract sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
.end method

.method public abstract sendRttModifyResponse(Z)V
.end method

.method public abstract sendUssd(Ljava/lang/String;)V
.end method

.method public abstract setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
.end method

.method public abstract startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract terminate(I)V
.end method

.method public abstract update(ILcom/android/ims/ImsStreamMediaProfile;)V
.end method
