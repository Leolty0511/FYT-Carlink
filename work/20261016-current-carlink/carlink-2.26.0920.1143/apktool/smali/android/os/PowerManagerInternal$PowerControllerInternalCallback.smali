.class public interface abstract Landroid/os/PowerManagerInternal$PowerControllerInternalCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerControllerInternalCallback"
.end annotation


# virtual methods
.method public abstract onConstraintAppAcquireWakeLock(JJ)V
.end method

.method public abstract onWakeLockAcquired(Ljava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
.end method

.method public abstract onWakeLockChanging(Ljava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
.end method

.method public abstract onWakeLockReleased(Ljava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
.end method
