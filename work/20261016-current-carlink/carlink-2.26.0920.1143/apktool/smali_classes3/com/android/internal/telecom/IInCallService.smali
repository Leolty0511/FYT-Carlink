.class public interface abstract Lcom/android/internal/telecom/IInCallService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCall(Landroid/telecom/ParcelableCall;)V
.end method

.method public abstract bringToForeground(Z)V
.end method

.method public abstract onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
.end method

.method public abstract onCanAddCallChanged(Z)V
.end method

.method public abstract onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onRttInitiationFailure(Ljava/lang/String;I)V
.end method

.method public abstract onRttUpgradeRequest(Ljava/lang/String;I)V
.end method

.method public abstract setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
.end method

.method public abstract setPostDial(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract silenceRinger()V
.end method

.method public abstract updateCall(Landroid/telecom/ParcelableCall;)V
.end method
