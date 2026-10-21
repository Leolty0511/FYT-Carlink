.class public Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfo"
.end annotation


# instance fields
.field private final deviceSerial:Ljava/lang/String;

.field private final mobileDeviceId:Ljava/lang/String;

.field private final phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

.field private final transportToEphemeralId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/projection/proto/Common$PhoneInfo;)V
    .locals 0
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;",
            "Ljava/util/Map<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/projection/proto/Common$PhoneInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->mobileDeviceId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportToEphemeralId:Ljava/util/Map;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->deviceSerial:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->mobileDeviceId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->mobileDeviceId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportToEphemeralId:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportToEphemeralId:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->deviceSerial:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->deviceSerial:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 52
    .line 53
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_1
    return v1
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->mobileDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo()Lcom/google/android/projection/proto/Common$PhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

    return-object v0
.end method

.method public getTransportToEphemeralId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportToEphemeralId:Ljava/util/Map;

    return-object v0
.end method

.method public getTransportType()Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->mobileDeviceId:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportType:Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->transportToEphemeralId:Ljava/util/Map;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->deviceSerial:Ljava/lang/String;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;->phoneInfo:Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method
