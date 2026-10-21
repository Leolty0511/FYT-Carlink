.class public interface abstract Lcom/android/ims/internal/IVoWifiSecurity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiSecurity$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteTunelIpsec(I)Z
.end method

.method public abstract getState(I)I
.end method

.method public abstract registerCallback(Lcom/android/ims/internal/IVoWifiSecurityCallback;)V
.end method

.method public abstract start(II)I
.end method

.method public abstract startMobike(I)V
.end method

.method public abstract startWithAddr(ZIILjava/lang/String;)I
.end method

.method public abstract stop(IZ)V
.end method

.method public abstract switchLoginIpVersion(II)Z
.end method

.method public abstract unregisterCallback(Lcom/android/ims/internal/IVoWifiSecurityCallback;)V
.end method
