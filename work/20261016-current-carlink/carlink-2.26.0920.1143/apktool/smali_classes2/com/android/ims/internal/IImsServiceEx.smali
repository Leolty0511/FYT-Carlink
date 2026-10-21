.class public interface abstract Lcom/android/ims/internal/IImsServiceEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
.end method

.method public abstract cancelCurrentRequest()I
.end method

.method public abstract getAliveCallJitter()I
.end method

.method public abstract getAliveCallLose()I
.end method

.method public abstract getAliveCallRtt()I
.end method

.method public abstract getCLIRStatus(I)I
.end method

.method public abstract getCallType()I
.end method

.method public abstract getCallWaitingStatus(I)V
.end method

.method public abstract getCurLocalAddress()Ljava/lang/String;
.end method

.method public abstract getCurPcscfAddress()Ljava/lang/String;
.end method

.method public abstract getCurrentImsFeature()I
.end method

.method public abstract getCurrentImsVideoState()I
.end method

.method public abstract getImsPcscfAddress()Ljava/lang/String;
.end method

.method public abstract getImsRegAddress()Ljava/lang/String;
.end method

.method public abstract getVolteRegisterState()I
.end method

.method public abstract isSupportMobike()Z
.end method

.method public abstract notifyNetworkUnavailable()V
.end method

.method public abstract notifySrvccCallInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyVideoCapabilityChange()V
.end method

.method public abstract registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
.end method

.method public abstract releaseVoWifiResource()I
.end method

.method public abstract removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
.end method

.method public abstract setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V
.end method

.method public abstract setMonitorPeriodForNoData(I)V
.end method

.method public abstract setVoWifiUnavailable(IZ)I
.end method

.method public abstract setVowifiRegister(I)V
.end method

.method public abstract showVowifiNotification()V
.end method

.method public abstract startHandover(I)I
.end method

.method public abstract startMobike()V
.end method

.method public abstract switchImsFeature(I)I
.end method

.method public abstract terminateCalls(I)V
.end method

.method public abstract unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
.end method

.method public abstract updateCLIRStatus(I)I
.end method
