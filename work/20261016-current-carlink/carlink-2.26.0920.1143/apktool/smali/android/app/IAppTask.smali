.class public interface abstract Landroid/app/IAppTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTask$Stub;
    }
.end annotation


# virtual methods
.method public abstract finishAndRemoveTask()V
.end method

.method public abstract getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
.end method

.method public abstract moveToFront()V
.end method

.method public abstract setExcludeFromRecents(Z)V
.end method

.method public abstract startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
.end method
