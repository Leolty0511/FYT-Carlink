.class public interface abstract Landroid/service/trust/ITrustAgentServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract addEscrowToken([BI)V
.end method

.method public abstract grantTrust(Ljava/lang/CharSequence;JI)V
.end method

.method public abstract isEscrowTokenActive(JI)V
.end method

.method public abstract onConfigureCompleted(ZLandroid/os/IBinder;)V
.end method

.method public abstract removeEscrowToken(JI)V
.end method

.method public abstract revokeTrust()V
.end method

.method public abstract setManagingTrust(Z)V
.end method

.method public abstract unlockUserWithToken(J[BI)V
.end method
