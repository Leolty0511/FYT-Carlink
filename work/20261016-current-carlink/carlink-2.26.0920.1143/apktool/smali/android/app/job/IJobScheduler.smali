.class public interface abstract Landroid/app/job/IJobScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
.end method

.method public abstract getAllPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPendingJob(I)Landroid/app/job/JobInfo;
.end method

.method public abstract schedule(Landroid/app/job/JobInfo;)I
.end method

.method public abstract scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
.end method
