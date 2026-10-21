.class public Landroid/net/wifi/WifiManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALARM_FOR_CONNECT_WIFI_ACTION:Ljava/lang/String; = "sprd.wifi.alarm.CONNECT_WIFI"

.field public static final ALARM_FOR_DISCONNECT_WIFI_ACTION:Ljava/lang/String; = "sprd.wifi.alarm.DISCONNECT_WIFI"

.field public static final INTERVAL_MILLIS:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "WifiManagerEx"

.field public static final WIFI_AUTO_CONNECT:Ljava/lang/String; = "wifi_auto_connect"

.field public static final WIFI_CONNECTED_AP_ABSENT_ACTION:Ljava/lang/String; = "sprd.net.wifi.WIFI_CONNECTED_AP_ABSENT"

.field public static final WIFI_CONNECT_ALARM_FLAG:Ljava/lang/String; = "wifi_connect_alarm_flag"

.field public static final WIFI_CONNECT_ALARM_HOUR:Ljava/lang/String; = "wifi_connect_alarm_hour"

.field public static final WIFI_CONNECT_ALARM_MINUTE:Ljava/lang/String; = "wifi_connect_alarm_minute"

.field public static final WIFI_DISABLED_WHEN_CONNECTED_ACTION:Ljava/lang/String; = "sprd.net.wifi.WIFI_DISABLED_WHEN_CONNECTED"

.field public static final WIFI_DISCONNECT_ALARM_FLAG:Ljava/lang/String; = "wifi_disconnect_alarm_flag"

.field public static final WIFI_DISCONNECT_ALARM_HOUR:Ljava/lang/String; = "wifi_disconnect_alarm_hour"

.field public static final WIFI_DISCONNECT_ALARM_MINUTE:Ljava/lang/String; = "wifi_disconnect_alarm_minute"

.field public static final WIFI_MOBILE_TO_WLAN_POLICY:Ljava/lang/String; = "wifi_mobile_to_wlan_policy"

.field public static final WIFI_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "sprd.net.wifi.SCAN_RESULTS_AVAILABLE"

.field public static final WIFI_SCAN_RESULT_BSS_REMOVED_ACTION:Ljava/lang/String; = "sprd.net.wifi.BSS_REMOVED_ACTION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/wifi/WifiManagerEx;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x104015e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroid/net/wifi/WifiManagerEx;->mWifiOperator:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p1, "WifiManagerEx"

    .line 21
    .line 22
    const-string v0, "config_wifi_operator = null"

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public isAutoConnect()Z
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_auto_connect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSupportCMCC()Z
    .locals 2

    .line 1
    const-string v0, "cmcc"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiManagerEx;->mWifiOperator:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isSupportCUCC()Z
    .locals 2

    .line 1
    const-string v0, "cucc"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiManagerEx;->mWifiOperator:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAutoConnect(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManagerEx;->isAutoConnect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/net/wifi/WifiManagerEx;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "wifi_auto_connect"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
