.class public Landroid/app/AlarmManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POWER_OFF_ALARM:I = 0x6

.field public static final POWER_OFF_WAKEUP:I = 0x4

.field public static final POWER_ON_WAKEUP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->removeExtraAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    return-void
.end method
