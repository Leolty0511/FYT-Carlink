.class public interface abstract Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAcquired(JII)V
.end method

.method public abstract onAuthenticationFailed(J)V
.end method

.method public abstract onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
.end method

.method public abstract onEnrollResult(JIII)V
.end method

.method public abstract onEnumerated(JIII)V
.end method

.method public abstract onError(JII)V
.end method

.method public abstract onRemoved(JIII)V
.end method
