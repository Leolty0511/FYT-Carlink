.class public Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;,
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolCallback;,
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;,
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;,
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;,
        Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.WPP"


# instance fields
.field private final autoLaunch:Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final callback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolCallback;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final headUnitInfo:[B
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final loggingCallback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private nativeInstance:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final supportedWifiFrequenciesMhz:[I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final wifiChannelType:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final wppSocketIp:Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final wppSocketPort:I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/protocol/ReceiverLibJni;->load()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolCallback;Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;[ILcom/google/android/projection/proto/Common$HeadUnitInfo;Ljava/net/InetSocketAddress;ZLcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->callback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolCallback;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;-><init>(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->getNumber()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->wifiChannelType:I

    .line 18
    .line 19
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->supportedWifiFrequenciesMhz:[I

    .line 26
    .line 27
    invoke-virtual {p5}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->headUnitInfo:[B

    .line 32
    .line 33
    invoke-virtual {p6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->wppSocketIp:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p6}, Ljava/net/InetSocketAddress;->getPort()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->wppSocketPort:I

    .line 48
    .line 49
    iput-boolean p7, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->autoLaunch:Z

    .line 50
    .line 51
    iput-object p8, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->loggingCallback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/protocol/WirelessProjectionProtocol;Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->get(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/protocol/WirelessProjectionProtocol;Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->get(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p0

    return-object p0
.end method

.method private get(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->get(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private native get(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$StartResultFuture;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;
.end method

.method private logDiscoveryMessage(Ljava/lang/String;II[B)V
    .locals 4
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->loggingCallback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {p3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;->forNumber(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const-string v0, "Unrecognized Wi-Fi message type."

    .line 10
    .line 11
    const-string v1, "AHU.WPP"

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v2, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$1;->$SwitchMap$com$google$android$projection$proto$WifiDiscoveryProtos$WifiMessageType:[I

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aget v2, v2, v3

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectionRejection;->parser()Lcom/google/protobuf/Parser;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingResponse;->parser()Lcom/google/protobuf/Parser;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiPingRequest;->parser()Lcom/google/protobuf/Parser;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartResponse;->parser()Lcom/google/protobuf/Parser;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :pswitch_4
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiConnectStatus;->parser()Lcom/google/protobuf/Parser;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_0

    .line 57
    :pswitch_5
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionResponse;->parser()Lcom/google/protobuf/Parser;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->parser()Lcom/google/protobuf/Parser;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_0

    .line 67
    :pswitch_7
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoResponse;->parser()Lcom/google/protobuf/Parser;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    goto :goto_0

    .line 72
    :pswitch_8
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiInfoRequest;->parser()Lcom/google/protobuf/Parser;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_0

    .line 77
    :pswitch_9
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiStartRequest;->parser()Lcom/google/protobuf/Parser;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_0
    if-nez v2, :cond_1

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;->forNumber(I)Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->loggingCallback:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;

    .line 92
    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    sget-object p2, Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;->MESSAGE_DIRECTION_UNKNOWN:Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;

    .line 96
    .line 97
    :cond_2
    invoke-interface {v2, p4}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    check-cast p4, Lcom/google/protobuf/MessageLite;

    .line 102
    .line 103
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolLoggingCallback;->onMessage(Ljava/lang/String;Lcom/google/android/projection/proto/WifiProjectionProtocol$MessageDirection;Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiMessageType;Lcom/google/protobuf/MessageLite;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception p1

    .line 108
    const-string p2, "Failed to parse protocol buffer"

    .line 109
    .line 110
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native onConnect(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V
.end method

.method private native onDisconnect(Ljava/lang/String;)V
.end method

.method private native startProjection(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public clientDisconnected(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->onDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->nativeInstance:J

    return-wide v0
.end method

.method public onNewConnection(Ljava/lang/String;Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/android/projection/proto/WifiProjectionProtocol$TransportType;->getNumber()I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->onConnect(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public startProjection(Ljava/lang/String;Lcom/google/android/projection/proto/WifiDiscoveryProtos$StartRequestReason;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$StartRequestReason;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/projection/proto/WifiProjectionProtocol$ProjectionStartResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$StartRequestReason;->getNumber()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol;->startProjection(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
