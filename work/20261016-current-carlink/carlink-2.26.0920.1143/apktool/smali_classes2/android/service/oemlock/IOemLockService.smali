.class public interface abstract Landroid/service/oemlock/IOemLockService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isDeviceOemUnlocked()Z
.end method

.method public abstract isOemUnlockAllowed()Z
.end method

.method public abstract isOemUnlockAllowedByCarrier()Z
.end method

.method public abstract isOemUnlockAllowedByUser()Z
.end method

.method public abstract setOemUnlockAllowedByCarrier(Z[B)V
.end method

.method public abstract setOemUnlockAllowedByUser(Z)V
.end method
