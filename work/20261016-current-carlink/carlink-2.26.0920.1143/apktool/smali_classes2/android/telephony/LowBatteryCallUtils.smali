.class public Landroid/telephony/LowBatteryCallUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LowBatteryCallUtils"

.field static sInstance:Landroid/telephony/LowBatteryCallUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/telephony/LowBatteryCallUtils;
    .locals 3

    .line 1
    const-string v0, "LowBatteryCallUtils"

    .line 2
    .line 3
    const-string v1, "enter LowBatteryCallUtils"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/telephony/LowBatteryCallUtils;->sInstance:Landroid/telephony/LowBatteryCallUtils;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Landroid/app/AddonManager;->getDefault()Landroid/app/AddonManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x104020c

    .line 18
    .line 19
    .line 20
    const-class v2, Landroid/telephony/LowBatteryCallUtils;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/app/AddonManager;->getAddon(ILjava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/telephony/LowBatteryCallUtils;

    .line 27
    .line 28
    sput-object v0, Landroid/telephony/LowBatteryCallUtils;->sInstance:Landroid/telephony/LowBatteryCallUtils;

    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public isBatteryLow()Z
    .locals 2

    .line 1
    const-string v0, "LowBatteryCallUtils"

    .line 2
    .line 3
    const-string v1, "not reliance project, isBatteryLow = false"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public showLowBatteryChangeToVideoDialog(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    const-string p1, "LowBatteryCallUtils"

    .line 2
    .line 3
    const-string/jumbo v0, "showLowBatteryChangeToVideoDialog"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showLowBatteryDialDialog(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    const-string p1, "LowBatteryCallUtils"

    .line 2
    .line 3
    const-string/jumbo p2, "showLowBatteryDialDialog"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showLowBatteryInCallDialog(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 0

    .line 1
    const-string p1, "LowBatteryCallUtils"

    .line 2
    .line 3
    const-string/jumbo p2, "showLowBatteryInCallDialog"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method
