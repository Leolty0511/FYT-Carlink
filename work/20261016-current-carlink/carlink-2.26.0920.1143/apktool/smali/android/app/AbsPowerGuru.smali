.class public abstract Landroid/app/AbsPowerGuru;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_POWERGURU_DATA_CHANGED:Ljava/lang/String; = "sprd.intent.action.powerguru.PKG_CHANGED"

.field public static final HEARTBEAT_ENABLE:Ljava/lang/String; = "persist.sys.heartbeat.enable"


# direct methods
.method public constructor <init>(Landroid/app/IPowerGuru;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.heartbeat.enable"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method


# virtual methods
.method public addWhiteAppfromList(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public delWhiteAppfromList(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBeatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWhiteCandicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public noteWakeupAlarm(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public notifyAlarm(IJJJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public testHello()V
    .locals 0

    return-void
.end method
