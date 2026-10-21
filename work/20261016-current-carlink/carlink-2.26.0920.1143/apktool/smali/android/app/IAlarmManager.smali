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
.method public abstract getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
.end method

.method public abstract getNextWakeFromIdleTime()J
.end method

.method public abstract remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
.end method

.method public abstract removeExtraAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
.end method

.method public abstract set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
.end method

.method public abstract setTime(J)Z
.end method

.method public abstract setTimeZone(Ljava/lang/String;)V
.end method
