.class public interface abstract Lcom/android/ims/internal/IImsUtListenerEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListenerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract utConfigurationCallBarringFailed(I[II)V
.end method

.method public abstract utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
.end method

.method public abstract utConfigurationCallBarringResult(I[I)V
.end method

.method public abstract utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/internal/ImsCallForwardInfoEx;)V
.end method

.method public abstract utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
.end method

.method public abstract utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
.end method

.method public abstract utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
.end method

.method public abstract utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
.end method

.method public abstract utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
.end method
