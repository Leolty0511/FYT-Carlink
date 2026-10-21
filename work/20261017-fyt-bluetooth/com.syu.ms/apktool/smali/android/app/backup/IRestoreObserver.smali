.class public interface abstract Landroid/app/backup/IRestoreObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUpdate(ILjava/lang/String;)V
.end method

.method public abstract restoreFinished(I)V
.end method

.method public abstract restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
.end method

.method public abstract restoreStarting(I)V
.end method
