.class public Lcom/google/android/projection/protocol/CarWifiStub;
.super Lcom/google/android/projection/protocol/CarWifi;
.source "SourceFile"


# instance fields
.field private final mWifiCreds:Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/CarWifi;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "wifiSSID"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->setWifiSsid(Ljava/lang/String;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "wifiPassword"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->setWifiPassword(Ljava/lang/String;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->WPA2_PERSONAL:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->setWifiSecurityMode(Lcom/google/android/projection/proto/Protos$WifiSecurityMode;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/google/android/projection/proto/Protos$AccessPointType;->DYNAMIC:Lcom/google/android/projection/proto/Protos$AccessPointType;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->setAccessPointType(Lcom/google/android/projection/proto/Protos$AccessPointType;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->build()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifiStub;->mWifiCreds:Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public getCarWifiCredentials()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/CarWifiStub;->mWifiCreds:Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    return-object v0
.end method
