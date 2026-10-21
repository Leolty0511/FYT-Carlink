.class public Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;,
        Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$ProxyHandler;
    }
.end annotation


# static fields
.field public static AP_NAME:Ljava/lang/String; = null

.field private static final AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field private static final BRING_UP_TIMEOUT_MILLIS:J = 0x2710L

.field public static CHANNEL_2_4G:I

.field public static CHANNEL_5G:I

.field private static final TAG:Ljava/lang/String;

.field private static final TETHERING_WIFI:I


# instance fields
.field handleAp:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WiFiAccessPoint"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v0, 0x24

    .line 10
    .line 11
    sput v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->CHANNEL_5G:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->CHANNEL_2_4G:I

    .line 15
    .line 16
    const-string v0, "CarLinkAP"

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->AP_NAME:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "wifi"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    .line 25
    const-string p2, "connectivity"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->lambda$initialize$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->tether(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->lambda$tether$0()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->lambda$initialize$2(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private check5GhzBandSupported()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getCountryCode"

    .line 9
    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->isDualBandSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->is5GHzBandSupported()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :cond_0
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    sget-object v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "=============>>> check5GhzBandSupported support5G: "

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, "   isDualBandSupported: "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 75
    .line 76
    const-string v3, "wifi_dual_baud"

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v3, v2}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 86
    .line 87
    const-string v2, "wifi_baud_5G"

    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v2, v0}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private checkWifiApInfo()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getWifiApConfiguration"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    .line 75
    move-object v5, v1

    .line 76
    move-object v1, v0

    .line 77
    move-object v0, v5

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "WifiConfiguration  newConfig error"

    .line 84
    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object v1
.end method

.method private createConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===================>>>  createConfig 0000 "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->checkWifiApInfo()Landroid/net/wifi/WifiConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->isWifiApEnable()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->is5GhzBandSupported()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/projection/sink/settings/Settings;->isSupport5GBand()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v5

    .line 35
    :goto_0
    const-string v6, "===================>>>  createConfig 0001 "

    .line 36
    .line 37
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string v2, "apBand"

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    const-string v3, "===================>>>  Configure 2.4G "

    .line 47
    .line 48
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string v3, "===================>>>  Configure 5G "

    .line 64
    .line 65
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    const-string v2, "=================>>>>>  createConfig 0001 "

    .line 80
    .line 81
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-object v1
.end method

.method private is5GHzBandSupported()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "is5GHzBandSupported"

    .line 9
    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return v0
.end method

.method private isDualBandSupported()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "isDualBandSupported"

    .line 9
    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    move v1, v0

    .line 36
    :goto_0
    if-nez v1, :cond_0

    .line 37
    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "is5GHzBandSupported"

    .line 45
    .line 46
    new-array v4, v0, [Ljava/lang/Class;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_1
    return v1
.end method

.method private isWifiApEnable()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getWifiApState"

    .line 9
    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/16 v2, 0xd

    .line 31
    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    :try_start_1
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "isWifiApEnabled"

    .line 44
    .line 45
    new-array v4, v0, [Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    .line 53
    new-array v4, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_2
    move-exception v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_3
    move-exception v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_4
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_5
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_0
    :goto_1
    return v0
.end method

.method private synthetic lambda$initialize$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->createConfig()Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    const-wide/16 v0, 0x50

    .line 21
    .line 22
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-interface {p2, p3, v0, v1, p1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 29
    .line 30
    return-object p4
.end method

.method private synthetic lambda$initialize$2(Landroid/content/BroadcastReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private synthetic lambda$tether$0()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->startTethering(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->isWifiApEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const-string v4, "getWifiApConfiguration"

    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    .line 22
    new-array v5, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sget-object v3, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v6, "=========>>>   setWifiApEnabled 0000 111 isWifiApEnable : "

    .line 41
    .line 42
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, " isNone : "

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v3, 0x18

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    if-lt v1, v3, :cond_3

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "startSoftAp"

    .line 87
    .line 88
    new-array v3, v5, [Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    aput-object v6, v3, v2

    .line 95
    .line 96
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    .line 102
    new-array v3, v5, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p1, v3, v2

    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    move v5, p1

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    sget-object p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    const-string v0, "setWifiApEnabled 1111    success: false"

    .line 121
    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move v5, v2

    .line 126
    :goto_0
    sget-object p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "setWifiApEnabled 2222    success: "

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    if-eqz v0, :cond_4

    .line 147
    .line 148
    :goto_1
    move p1, v2

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v1, "setWifiApEnabled"

    .line 157
    .line 158
    const/4 v3, 0x2

    .line 159
    new-array v6, v3, [Ljava/lang/Class;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    aput-object v7, v6, v2

    .line 166
    .line 167
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 168
    .line 169
    aput-object v7, v6, v5

    .line 170
    .line 171
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 176
    .line 177
    new-array v3, v3, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object p1, v3, v2

    .line 180
    .line 181
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 182
    .line 183
    aput-object p1, v3, v5

    .line 184
    .line 185
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 192
    .line 193
    .line 194
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    move v8, v5

    .line 196
    move v5, p1

    .line 197
    move p1, v8

    .line 198
    goto :goto_2

    .line 199
    :catch_1
    sget-object p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 200
    .line 201
    const-string v0, "setWifiApEnabled 3333    success: false"

    .line 202
    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move p1, v2

    .line 207
    move v5, p1

    .line 208
    :goto_2
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v3, "setWifiApEnabled 4444    success: "

    .line 213
    .line 214
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :goto_3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-array v1, v2, [Ljava/lang/Class;

    .line 234
    .line 235
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 240
    .line 241
    new-array v2, v2, [Ljava/lang/Object;

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 248
    .line 249
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 250
    .line 251
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 252
    .line 253
    const-string v3, "car_wifi_ssid"

    .line 254
    .line 255
    invoke-virtual {v1, v3, v2}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 259
    .line 260
    const-string v2, "car_wifi_password"

    .line 261
    .line 262
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1, v2, v0}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 268
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v2, "00  ===>> WIFI SSID : "

    .line 272
    .line 273
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiSsid()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v2, "  PASSWORD: "

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getCarWifiPassword()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    if-eqz v5, :cond_5

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, "setWifiApEnabled------>>>  tetheringRequired : "

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, " success: "

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    return p1

    .line 334
    :cond_5
    new-instance p1, Ljava/lang/UnknownError;

    .line 335
    .line 336
    const-string v0, "Enabling WiFi returned false"

    .line 337
    .line 338
    invoke-direct {p1, v0}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p1
.end method

.method private startTethering(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;)V
    .locals 10

    .line 1
    const-string v0, "startTethering"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "mService"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;

    .line 26
    .line 27
    new-instance v4, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, p0, v4, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Landroid/os/Handler;Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    new-array v8, v4, [Ljava/lang/Class;

    .line 47
    .line 48
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v9, v8, v6

    .line 51
    .line 52
    const-class v9, Landroid/os/ResultReceiver;

    .line 53
    .line 54
    aput-object v9, v8, v2

    .line 55
    .line 56
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v9, v8, v5

    .line 59
    .line 60
    invoke-virtual {v7, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    new-array v8, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    aput-object v9, v8, v6

    .line 71
    .line 72
    aput-object v3, v8, v2

    .line 73
    .line 74
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    aput-object v3, v8, v5

    .line 77
    .line 78
    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v7, 0x4

    .line 92
    new-array v8, v7, [Ljava/lang/Class;

    .line 93
    .line 94
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    aput-object v9, v8, v6

    .line 97
    .line 98
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    aput-object v9, v8, v2

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    aput-object v9, v8, v5

    .line 107
    .line 108
    const-class v9, Landroid/os/Handler;

    .line 109
    .line 110
    aput-object v9, v8, v4

    .line 111
    .line 112
    invoke-virtual {v3, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-array v3, v7, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    aput-object v7, v3, v6

    .line 123
    .line 124
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 125
    .line 126
    aput-object v6, v3, v2

    .line 127
    .line 128
    aput-object p1, v3, v5

    .line 129
    .line 130
    new-instance p1, Landroid/os/Handler;

    .line 131
    .line 132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .line 138
    .line 139
    aput-object p1, v3, v4

    .line 140
    .line 141
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void
.end method

.method private stopTethering()Z
    .locals 7

    .line 1
    const-string v0, "Failed to disable AP mode"

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "====================>>>> AP stopTethering"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "stopSoftAp"

    .line 18
    .line 19
    new-array v4, v1, [Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    .line 27
    new-array v4, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return v0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    sget-object v3, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catch_1
    sget-object v2, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "====================>>>> AP stopTethering  11111"

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "stopTethering"

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    new-array v5, v4, [Ljava/lang/Class;

    .line 64
    .line 65
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v6, v5, v1

    .line 68
    .line 69
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    .line 75
    new-array v5, v4, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    aput-object v6, v5, v1

    .line 82
    .line 83
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :catch_2
    move-exception v2

    .line 88
    sget-object v3, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    return v1
.end method

.method private stopWifiAp()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "====================>>>> AP stopWifiAp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "isWifiApEnabled"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "stopSoftAp"

    .line 46
    .line 47
    new-array v3, v2, [Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    .line 55
    new-array v3, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x320

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_2
    sget-object v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "Failed to stopSoftAp 2222 "

    .line 70
    .line 71
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_1
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "====================>>>> AP stopTethering  2222"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 83
    .line 84
    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "stopTethering"

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    new-array v4, v3, [Ljava/lang/Class;

    .line 95
    .line 96
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    aput-object v5, v4, v2

    .line 99
    .line 100
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 105
    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    aput-object v4, v3, v2

    .line 113
    .line 114
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_2
    move-exception v0

    .line 119
    :try_start_4
    sget-object v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "Failed to disable AP mode 2222 "

    .line 122
    .line 123
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 124
    .line 125
    .line 126
    :catch_3
    :cond_0
    :goto_0
    return-void
.end method

.method private tether(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "--------------------------->>>  tether"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/sink/embedded/transport/net/a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/transport/net/a;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    .line 1
    const-string v0, "updateWifiConfiguration config: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "setWifiApConfiguration"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v5, Landroid/net/wifi/WifiConfiguration;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    aput-object v5, v4, v6

    .line 18
    .line 19
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p1, v3, v6

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " \n setWifiApConfiguration result : "

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "getWifiApConfiguration"

    .line 71
    .line 72
    new-array v3, v6, [Ljava/lang/Class;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 79
    .line 80
    new-array v3, v6, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized initialize(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;

    .line 18
    .line 19
    invoke-direct {v5, p0, v3, v6, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, v5, v6}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$4;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    new-instance v2, Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 32
    .line 33
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/google/android/projection/sink/embedded/transport/net/b;

    .line 40
    .line 41
    move-object v1, v7

    .line 42
    move-object v2, p0

    .line 43
    move-object v4, p1

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/google/android/projection/sink/embedded/transport/net/b;-><init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v7, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 52
    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/16 v3, 0x2710

    .line 56
    .line 57
    invoke-static {v1, v3, v4, v2, p1}, Lcom/google/common/util/concurrent/Futures;->withTimeout(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 62
    .line 63
    new-instance v1, Landroid/accessibilityservice/a;

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-direct {v1, p0, v0, v2}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object p1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    .line 82
    throw p1
.end method

.method public is5GhzBandSupported()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getCountryCode"

    .line 9
    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->isDualBandSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->is5GHzBandSupported()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :cond_0
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    sget-object v1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "=============>>> check5GhzBandSupported support5G: "

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, "   isDualBandSupported: "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method public declared-synchronized teardown()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->mInitialized:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method
