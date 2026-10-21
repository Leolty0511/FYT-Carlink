.class public interface abstract Landroid/app/trust/ITrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearAllFingerprints()V
.end method

.method public abstract isDeviceLocked(I)Z
.end method

.method public abstract isDeviceSecure(I)Z
.end method

.method public abstract isTrustUsuallyManaged(I)Z
.end method

.method public abstract registerTrustListener(Landroid/app/trust/ITrustListener;)V
.end method

.method public abstract reportEnabledTrustAgentsChanged(I)V
.end method

.method public abstract reportKeyguardShowingChanged()V
.end method

.method public abstract reportUnlockAttempt(ZI)V
.end method

.method public abstract reportUnlockLockout(II)V
.end method

.method public abstract setDeviceLockedForUser(IZ)V
.end method

.method public abstract unlockedByFingerprintForUser(I)V
.end method

.method public abstract unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
.end method
