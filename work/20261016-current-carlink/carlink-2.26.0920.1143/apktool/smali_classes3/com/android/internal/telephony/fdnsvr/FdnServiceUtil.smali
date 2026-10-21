.class public Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FDN_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final TAG:Ljava/lang/String; = "FdnService"

.field public static isConnected:Z = false

.field private static isWaiting:Z = false

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mContext:Landroid/content/Context;

.field private static mFdnServiceManger:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;

.field private static final mObject:Ljava/lang/Object;

.field private static mService:Lcom/android/internal/telephony/IFdnService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mObject:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/content/ComponentName;

    .line 9
    .line 10
    const-string v1, "com.spread.cachefdn"

    .line 11
    .line 12
    const-string v2, "com.spread.cachefdn.SprdFdnService"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->FDN_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 18
    .line 19
    new-instance v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil$1;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil$1;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mConnection:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$102(Lcom/android/internal/telephony/IFdnService;)Lcom/android/internal/telephony/IFdnService;
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mService:Lcom/android/internal/telephony/IFdnService;

    return-object p0
.end method

.method private static getActiveSubInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getIFdnService(Landroid/content/Context;)Lcom/android/internal/telephony/IFdnService;
    .locals 2

    .line 1
    const-class v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v1, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mService:Lcom/android/internal/telephony/IFdnService;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->tryConnectingFdnService(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mService:Lcom/android/internal/telephony/IFdnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method private static getSubIds(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "FdnService"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "mSubscriptionInfolist == null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string p0, "mSubscriptionInfolist\'s iterator== null"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroid/telephony/SubscriptionInfo;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-object v0
.end method

.method private static isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static tryConnectingFdnService(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "com.spread.cachefdn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "FdnService"

    .line 10
    .line 11
    const-string v0, "can\'t find FdnService.apk"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mObject:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    const-string v1, "FdnService"

    .line 21
    .line 22
    const-string v2, " SmsManager is going to Connect IFdnService"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mService:Lcom/android/internal/telephony/IFdnService;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string p0, "FdnService"

    .line 32
    .line 33
    const-string v1, "SmsManager Already connected"

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "AcitivitySubIds"

    .line 46
    .line 47
    invoke-static {}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->getActiveSubInfoList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->getSubIds(Ljava/util/List;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    sget-object v2, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->FDN_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mConnection:Landroid/content/ServiceConnection;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    const-string p0, "FdnService"

    .line 73
    .line 74
    const-string v1, "SmsManager Failed to bind to FdnService"

    .line 75
    .line 76
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    :try_start_2
    const-string v1, "FdnService"

    .line 82
    .line 83
    const-string v2, "Forbidden to bind to FdnService"

    .line 84
    .line 85
    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    :try_start_3
    sget-object p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mObject:Ljava/lang/Object;

    .line 89
    .line 90
    const-wide/16 v1, 0xbb8

    .line 91
    .line 92
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_1
    :try_start_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 97
    .line 98
    const-string v1, "error happended when wait for FdnService"

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->mObject:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 106
    .line 107
    .line 108
    :goto_1
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    throw p0
.end method
