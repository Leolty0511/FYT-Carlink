.class public Landroid/app/LowmemoryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CANCEL_KILL_STOP_TIMEOUT:I = 0x2

.field public static final KILL_CONT_STOPPED_APP:I = 0x0

.field public static final KILL_STOP_FRONT_APP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killStopFrontApp(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->killStopFrontApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
