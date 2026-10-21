.class public interface abstract Lcom/android/ims/internal/IImsRegistrationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract registrationAssociatedUriChanged([Landroid/net/Uri;)V
.end method

.method public abstract registrationChangeFailed(ILcom/android/ims/ImsReasonInfo;)V
.end method

.method public abstract registrationConnected()V
.end method

.method public abstract registrationConnectedWithRadioTech(I)V
.end method

.method public abstract registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
.end method

.method public abstract registrationFeatureCapabilityChanged(I[I[I)V
.end method

.method public abstract registrationProgressing()V
.end method

.method public abstract registrationProgressingWithRadioTech(I)V
.end method

.method public abstract registrationResumed()V
.end method

.method public abstract registrationServiceCapabilityChanged(II)V
.end method

.method public abstract registrationSuspended()V
.end method

.method public abstract voiceMessageCountUpdate(I)V
.end method
