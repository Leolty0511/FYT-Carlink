.class public interface abstract Landroid/app/IPerformanceManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPerformanceManagerInternal$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTaskThumbnail(Landroid/content/Intent;)Landroid/app/TaskThumbnail;
.end method

.method public abstract pkgSupportRecentThumbnail(Ljava/lang/String;)Z
.end method

.method public abstract removeApplcationSnapShot(Ljava/lang/String;)V
.end method

.method public abstract removePendingUpdateThumbTask()V
.end method

.method public abstract windowReallyDrawnDone(Ljava/lang/String;)V
.end method
