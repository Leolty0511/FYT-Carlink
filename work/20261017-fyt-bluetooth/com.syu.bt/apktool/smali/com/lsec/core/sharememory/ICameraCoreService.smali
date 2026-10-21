.class public interface abstract Lcom/lsec/core/sharememory/ICameraCoreService;
.super Ljava/lang/Object;
.source "ICameraCoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/sharememory/ICameraCoreService$Default;,
        Lcom/lsec/core/sharememory/ICameraCoreService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addExportMemoryFile(Landroid/os/ParcelFileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRecording()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRecord(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
