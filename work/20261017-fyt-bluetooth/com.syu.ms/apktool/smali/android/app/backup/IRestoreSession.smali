.class public interface abstract Landroid/app/backup/IRestoreSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract endRestoreSession()V
.end method

.method public abstract getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
.end method

.method public abstract restoreAll(JLandroid/app/backup/IRestoreObserver;)I
.end method

.method public abstract restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
.end method

.method public abstract restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
.end method
