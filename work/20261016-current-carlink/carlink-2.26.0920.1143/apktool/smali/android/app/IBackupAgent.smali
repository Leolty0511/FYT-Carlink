.class public interface abstract Landroid/app/IBackupAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract doMeasureFullBackup(JILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract doQuotaExceeded(JJ)V
.end method

.method public abstract doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
.end method

.method public abstract fail(Ljava/lang/String;)V
.end method
