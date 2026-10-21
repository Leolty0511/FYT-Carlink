.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobHandler;,
        Landroid/app/job/JobServiceEngine$JobInterface;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_JOB:I = 0x0

.field private static final MSG_JOB_FINISHED:I = 0x2

.field private static final MSG_STOP_JOB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    .line 10
    .line 11
    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p0, p1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string/jumbo p2, "params"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
