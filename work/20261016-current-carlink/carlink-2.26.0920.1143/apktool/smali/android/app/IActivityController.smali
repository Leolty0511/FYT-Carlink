.class public interface abstract Landroid/app/IActivityController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityController$Stub;
    }
.end annotation


# virtual methods
.method public abstract activityResuming(Ljava/lang/String;)Z
.end method

.method public abstract activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
.end method

.method public abstract appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract systemNotResponding(Ljava/lang/String;)I
.end method
