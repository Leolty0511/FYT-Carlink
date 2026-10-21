.class public interface abstract Landroid/bluetooth/IBluetoothHeadsetPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
    }
.end annotation


# virtual methods
.method public abstract answerCall()Z
.end method

.method public abstract cdmaSetSecondCallState(Z)V
.end method

.method public abstract cdmaSwapSecondCallState()V
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getSubscriberNumber()Ljava/lang/String;
.end method

.method public abstract hangupCall()Z
.end method

.method public abstract listCurrentCalls()Z
.end method

.method public abstract processChld(I)Z
.end method

.method public abstract queryPhoneState()Z
.end method

.method public abstract sendDtmf(I)Z
.end method

.method public abstract updateBtHandsfreeAfterRadioTechnologyChange()V
.end method
