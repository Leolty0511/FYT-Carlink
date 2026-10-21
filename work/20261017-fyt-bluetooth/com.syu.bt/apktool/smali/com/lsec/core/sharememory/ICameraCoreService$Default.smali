.class public Lcom/lsec/core/sharememory/ICameraCoreService$Default;
.super Ljava/lang/Object;
.source "ICameraCoreService.java"

# interfaces
.implements Lcom/lsec/core/sharememory/ICameraCoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/sharememory/ICameraCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExportMemoryFile(Landroid/os/ParcelFileDescriptor;III)V
    .locals 0
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRecording()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public startRecord(Ljava/lang/String;I)V
    .locals 0
    .param p1, "recordPath"    # Ljava/lang/String;
    .param p2, "recordSharpness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method public stopRecord()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method
