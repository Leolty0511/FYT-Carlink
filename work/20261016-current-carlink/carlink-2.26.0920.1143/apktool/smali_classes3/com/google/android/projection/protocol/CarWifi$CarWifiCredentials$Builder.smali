.class public Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

.field private supportedWifiChannels:[I

.field private wifiPassword:Ljava/lang/String;

.field private wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field private wifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSsid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiPassword:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->UNKNOWN_SECURITY_MODE:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/projection/proto/Protos$AccessPointType;->DYNAMIC:Lcom/google/android/projection/proto/Protos$AccessPointType;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->supportedWifiChannels:[I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public addSupportedWifiChannels([I)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->supportedWifiChannels:[I

    return-object p0
.end method

.method public build()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
    .locals 8

    new-instance v7, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;

    iget-object v1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    iget-object v4, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

    iget-object v5, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->supportedWifiChannels:[I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/projection/proto/Protos$WifiSecurityMode;Lcom/google/android/projection/proto/Protos$AccessPointType;[ILcom/google/android/projection/protocol/CarWifi$1;)V

    return-object v7
.end method

.method public setAccessPointType(Lcom/google/android/projection/proto/Protos$AccessPointType;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

    return-object p0
.end method

.method public setWifiPassword(Ljava/lang/String;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiSecurityMode(Lcom/google/android/projection/proto/Protos$WifiSecurityMode;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    return-object p0
.end method

.method public setWifiSsid(Ljava/lang/String;)Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;->wifiSsid:Ljava/lang/String;

    return-object p0
.end method
