.class public interface abstract Landroid/app/backup/IBackupManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
.end method

.method public abstract agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract agentDisconnected(Ljava/lang/String;)V
.end method

.method public abstract backupNow()V
.end method

.method public abstract beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
.end method

.method public abstract clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dataChanged(Ljava/lang/String;)V
.end method

.method public abstract fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V
.end method

.method public abstract fullRestore(Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getCurrentTransport()Ljava/lang/String;
.end method

.method public abstract getDestinationString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasBackupPassword()Z
.end method

.method public abstract isBackupEnabled()Z
.end method

.method public abstract listAllTransports()[Ljava/lang/String;
.end method

.method public abstract opComplete(I)V
.end method

.method public abstract restoreAtInstall(Ljava/lang/String;I)V
.end method

.method public abstract selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setAutoRestore(Z)V
.end method

.method public abstract setBackupEnabled(Z)V
.end method

.method public abstract setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setBackupProvisioned(Z)V
.end method
