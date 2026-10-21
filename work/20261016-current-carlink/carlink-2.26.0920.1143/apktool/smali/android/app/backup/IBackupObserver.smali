.class public interface abstract Landroid/app/backup/IBackupObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract backupFinished(I)V
.end method

.method public abstract onResult(Ljava/lang/String;I)V
.end method

.method public abstract onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
.end method
