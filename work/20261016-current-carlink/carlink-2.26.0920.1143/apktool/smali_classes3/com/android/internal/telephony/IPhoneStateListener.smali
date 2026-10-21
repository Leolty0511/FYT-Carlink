.class public interface abstract Lcom/android/internal/telephony/IPhoneStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallForwardingIndicatorChanged(Z)V
.end method

.method public abstract onCallStateChanged(ILjava/lang/String;)V
.end method

.method public abstract onCarrierNetworkChange(Z)V
.end method

.method public abstract onCellInfoChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCellLocationChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onDataActivationStateChanged(I)V
.end method

.method public abstract onDataActivity(I)V
.end method

.method public abstract onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
.end method

.method public abstract onDataConnectionStateChanged(II)V
.end method

.method public abstract onMessageWaitingIndicatorChanged(Z)V
.end method

.method public abstract onOemHookRawEvent([B)V
.end method

.method public abstract onOtaspChanged(I)V
.end method

.method public abstract onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
.end method

.method public abstract onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
.end method

.method public abstract onServiceStateChanged(Landroid/telephony/ServiceState;)V
.end method

.method public abstract onSignalStrengthChanged(I)V
.end method

.method public abstract onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
.end method

.method public abstract onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
.end method

.method public abstract onVoiceActivationStateChanged(I)V
.end method
