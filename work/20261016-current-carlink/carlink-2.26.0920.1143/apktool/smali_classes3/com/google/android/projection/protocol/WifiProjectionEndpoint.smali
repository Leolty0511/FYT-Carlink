.class public Lcom/google/android/projection/protocol/WifiProjectionEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/WifiProjectionCallbacks;


# instance fields
.field private carWifi:Lcom/google/android/projection/protocol/CarWifi;

.field private carWifiBssid:Ljava/lang/String;

.field private nativeWifiProjectionEndpoint:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/projection/protocol/CarWifi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->carWifiBssid:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->carWifi:Lcom/google/android/projection/protocol/CarWifi;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    const-string p2, "Null car wifi BSSID"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method private native nativeInit(IJLjava/lang/String;)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->carWifiBssid:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->nativeInit(IJLjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->nativeWifiProjectionEndpoint:J

    return-wide v0
.end method

.method public onWifiCredentialsRequest()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;->carWifi:Lcom/google/android/projection/protocol/CarWifi;

    invoke-virtual {v0}, Lcom/google/android/projection/protocol/CarWifi;->getCarWifiCredentials()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    move-result-object v0

    return-object v0
.end method
