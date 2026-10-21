.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private mEngine:Landroid/app/job/JobServiceEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/app/job/JobService$1;

    .line 6
    .line 7
    invoke-direct {p1, p0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;Landroid/app/Service;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
