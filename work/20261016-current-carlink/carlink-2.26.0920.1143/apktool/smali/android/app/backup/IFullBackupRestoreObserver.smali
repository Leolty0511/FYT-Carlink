.class public interface abstract Landroid/app/backup/IFullBackupRestoreObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IFullBackupRestoreObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBackupPackage(Ljava/lang/String;)V
.end method

.method public abstract onEndBackup()V
.end method

.method public abstract onEndRestore()V
.end method

.method public abstract onRestorePackage(Ljava/lang/String;)V
.end method

.method public abstract onStartBackup()V
.end method

.method public abstract onStartRestore()V
.end method

.method public abstract onTimeout()V
.end method
