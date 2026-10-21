.class public interface abstract Landroid/app/IAlarmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract remove(Landroid/app/PendingIntent;)V
.end method

.method public abstract set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
.end method

.method public abstract setTime(J)V
.end method

.method public abstract setTimeZone(Ljava/lang/String;)V
.end method
