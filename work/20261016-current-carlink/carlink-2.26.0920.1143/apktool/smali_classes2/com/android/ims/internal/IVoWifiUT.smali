.class public interface abstract Lcom/android/ims/internal/IVoWifiUT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiUT$Stub;
    }
.end annotation


# virtual methods
.method public abstract queryCallBarring(I)I
.end method

.method public abstract queryCallForward()I
.end method

.method public abstract queryCallWaiting()I
.end method

.method public abstract registerCallback(Lcom/android/ims/internal/IVoWifiUTCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/android/ims/internal/IVoWifiUTCallback;)V
.end method

.method public abstract updateCLIR(Z)I
.end method

.method public abstract updateCallBarring(IZ[Ljava/lang/String;I)I
.end method

.method public abstract updateCallForward(IILjava/lang/String;II)I
.end method

.method public abstract updateCallWaiting(Z)I
.end method

.method public abstract updateIPAddr(Ljava/lang/String;Ljava/lang/String;)Z
.end method
