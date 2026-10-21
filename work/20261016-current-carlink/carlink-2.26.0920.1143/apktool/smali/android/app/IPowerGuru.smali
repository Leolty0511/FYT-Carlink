.class public interface abstract Landroid/app/IPowerGuru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPowerGuru$Stub;
    }
.end annotation


# virtual methods
.method public abstract addConstrainedListAppBySystem(Ljava/lang/String;)Z
.end method

.method public abstract addWhiteAppfromList(Ljava/lang/String;)Z
.end method

.method public abstract delWhiteAppfromList(Ljava/lang/String;)Z
.end method

.method public abstract getBeatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrignalAlignInterval()I
.end method

.method public abstract getWakeupAlarmCount(Ljava/lang/String;)I
.end method

.method public abstract getWhiteCandicateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract noteWakeupAlarm(Ljava/lang/String;I)V
.end method

.method public abstract notifyAlarm(IJJJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Z
.end method

.method public abstract notifyDozeStateChanged()V
.end method

.method public abstract notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z
.end method

.method public abstract removeConstrainedListAppBySystem(Ljava/lang/String;)Z
.end method

.method public abstract setAlignInterval(I)Z
.end method

.method public abstract testHello()V
.end method
