.class public Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/CarWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarWifiCredentials"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials$Builder;
    }
.end annotation


# instance fields
.field public final accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

.field public final supportedWifiChannels:[I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public final wifiPassword:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field public final wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

.field public final wifiSsid:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/projection/proto/Protos$WifiSecurityMode;Lcom/google/android/projection/proto/Protos$AccessPointType;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiSsid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiPassword:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    .line 6
    iput-object p4, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

    .line 7
    iput-object p5, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->supportedWifiChannels:[I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/projection/proto/Protos$WifiSecurityMode;Lcom/google/android/projection/proto/Protos$AccessPointType;[ILcom/google/android/projection/protocol/CarWifi$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/projection/proto/Protos$WifiSecurityMode;Lcom/google/android/projection/proto/Protos$AccessPointType;[I)V

    return-void
.end method

.method private getAccessPointType()I
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->accessPointType:Lcom/google/android/projection/proto/Protos$AccessPointType;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AccessPointType;->getNumber()I

    move-result v0

    return v0
.end method

.method private getWifiSecurityModeNumber()I
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;->wifiSecurityMode:Lcom/google/android/projection/proto/Protos$WifiSecurityMode;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$WifiSecurityMode;->getNumber()I

    move-result v0

    return v0
.end method
