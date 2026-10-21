.class public interface abstract Landroid/service/trust/ITrustAgentService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDeviceLocked()V
.end method

.method public abstract onDeviceUnlocked()V
.end method

.method public abstract onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
.end method

.method public abstract onEscrowTokenRemoved(JZ)V
.end method

.method public abstract onTokenStateReceived(JI)V
.end method

.method public abstract onTrustTimeout()V
.end method

.method public abstract onUnlockAttempt(Z)V
.end method

.method public abstract onUnlockLockout(I)V
.end method

.method public abstract setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
.end method
