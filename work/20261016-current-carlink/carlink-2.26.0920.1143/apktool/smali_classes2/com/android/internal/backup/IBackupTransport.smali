.class public interface abstract Lcom/android/internal/backup/IBackupTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub;
    }
.end annotation


# virtual methods
.method public abstract abortFullRestore()I
.end method

.method public abstract cancelFullBackup()V
.end method

.method public abstract checkFullBackupSize(J)I
.end method

.method public abstract clearBackupData(Landroid/content/pm/PackageInfo;)I
.end method

.method public abstract configurationIntent()Landroid/content/Intent;
.end method

.method public abstract currentDestinationString()Ljava/lang/String;
.end method

.method public abstract dataManagementIntent()Landroid/content/Intent;
.end method

.method public abstract dataManagementLabel()Ljava/lang/String;
.end method

.method public abstract finishBackup()I
.end method

.method public abstract finishRestore()V
.end method

.method public abstract getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
.end method

.method public abstract getBackupQuota(Ljava/lang/String;Z)J
.end method

.method public abstract getCurrentRestoreSet()J
.end method

.method public abstract getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract getRestoreData(Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract initializeDevice()I
.end method

.method public abstract isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract nextRestorePackage()Landroid/app/backup/RestoreDescription;
.end method

.method public abstract performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
.end method

.method public abstract performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
.end method

.method public abstract requestBackupTime()J
.end method

.method public abstract requestFullBackupTime()J
.end method

.method public abstract sendBackupData(I)I
.end method

.method public abstract startRestore(J[Landroid/content/pm/PackageInfo;)I
.end method

.method public abstract transportDirName()Ljava/lang/String;
.end method
