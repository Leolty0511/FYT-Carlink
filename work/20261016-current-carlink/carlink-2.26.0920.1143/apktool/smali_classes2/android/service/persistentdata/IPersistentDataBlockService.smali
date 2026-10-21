.class public interface abstract Landroid/service/persistentdata/IPersistentDataBlockService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDataBlockSize()I
.end method

.method public abstract getFlashLockState()I
.end method

.method public abstract getMaximumDataBlockSize()J
.end method

.method public abstract getOemUnlockEnabled()Z
.end method

.method public abstract hasFrpCredentialHandle()Z
.end method

.method public abstract read()[B
.end method

.method public abstract setOemUnlockEnabled(Z)V
.end method

.method public abstract wipe()V
.end method

.method public abstract write([B)I
.end method
