.class public interface abstract Landroid/hardware/fingerprint/IFingerprintService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
.end method

.method public abstract addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
.end method

.method public abstract authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end method

.method public abstract cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract cancelEnrollment(Landroid/os/IBinder;)V
.end method

.method public abstract enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end method

.method public abstract enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end method

.method public abstract getAuthenticatorId(Ljava/lang/String;)J
.end method

.method public abstract getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEnrolledFingerprints(ILjava/lang/String;)Z
.end method

.method public abstract isClientActive()Z
.end method

.method public abstract isHardwareDetected(JLjava/lang/String;)Z
.end method

.method public abstract postEnroll(Landroid/os/IBinder;)I
.end method

.method public abstract preEnroll(Landroid/os/IBinder;)J
.end method

.method public abstract remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end method

.method public abstract removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
.end method

.method public abstract rename(IILjava/lang/String;)V
.end method

.method public abstract resetTimeout([B)V
.end method

.method public abstract setActiveUser(I)V
.end method
