.class public interface abstract Landroid/os/storage/IStorageEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
.end method

.method public abstract onDiskScanned(Landroid/os/storage/DiskInfo;I)V
.end method

.method public abstract onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUsbMassStorageConnectionChanged(Z)V
.end method

.method public abstract onVolumeForgotten(Ljava/lang/String;)V
.end method

.method public abstract onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
.end method

.method public abstract onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
.end method
