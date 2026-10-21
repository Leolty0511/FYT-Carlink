.class public interface abstract Lcom/android/internal/telecom/IInCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract answerCall(Ljava/lang/String;I)V
.end method

.method public abstract conference(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disconnectCall(Ljava/lang/String;)V
.end method

.method public abstract holdCall(Ljava/lang/String;)V
.end method

.method public abstract mergeConference(Ljava/lang/String;)V
.end method

.method public abstract mute(Z)V
.end method

.method public abstract phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public abstract playDtmfTone(Ljava/lang/String;C)V
.end method

.method public abstract postDialContinue(Ljava/lang/String;Z)V
.end method

.method public abstract pullExternalCall(Ljava/lang/String;)V
.end method

.method public abstract putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract respondToRttRequest(Ljava/lang/String;IZ)V
.end method

.method public abstract sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendRttRequest(Ljava/lang/String;)V
.end method

.method public abstract setAudioRoute(I)V
.end method

.method public abstract setRttMode(Ljava/lang/String;I)V
.end method

.method public abstract splitFromConference(Ljava/lang/String;)V
.end method

.method public abstract stopDtmfTone(Ljava/lang/String;)V
.end method

.method public abstract stopRtt(Ljava/lang/String;)V
.end method

.method public abstract swapConference(Ljava/lang/String;)V
.end method

.method public abstract turnOffProximitySensor(Z)V
.end method

.method public abstract turnOnProximitySensor()V
.end method

.method public abstract unholdCall(Ljava/lang/String;)V
.end method
