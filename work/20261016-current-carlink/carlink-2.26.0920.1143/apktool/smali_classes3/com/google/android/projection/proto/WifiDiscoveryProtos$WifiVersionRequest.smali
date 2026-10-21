.class public final Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiVersionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

.field public static final HEADUNIT_INFO_FIELD_NUMBER:I = 0x5

.field public static final MAJOR_VERSION_FIELD_NUMBER:I = 0x1

.field public static final MINOR_VERSION_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPORTED_WIFI_CHANNELS_FIELD_NUMBER:I = 0x4

.field public static final SUPPORTED_WIFI_CHANNEL_TYPE_FIELD_NUMBER:I = 0x3

.field public static final WIFI_PROJECTION_PROTOCOL_INFO_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

.field private majorVersion_:I

.field private memoizedIsInitialized:B

.field private minorVersion_:I

.field private supportedWifiChannelType_:I

.field private supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

.field private wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_12

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10

    if-eq v4, v3, :cond_f

    const/16 v6, 0x10

    if-eq v4, v6, :cond_e

    const/16 v7, 0x18

    if-eq v4, v7, :cond_c

    const/16 v7, 0x20

    if-eq v4, v7, :cond_a

    const/16 v7, 0x22

    if-eq v4, v7, :cond_7

    const/16 v7, 0x2a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_4

    const/16 v7, 0x32

    if-eq v4, v7, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 14
    :cond_1
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;

    move-result-object v8

    .line 16
    :cond_2
    sget-object v4, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    iput-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    if-eqz v8, :cond_3

    .line 17
    invoke-virtual {v8, v4}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;

    .line 18
    invoke-virtual {v8}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 19
    :cond_3
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_5

    .line 21
    iget-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v8

    .line 22
    :cond_5
    sget-object v4, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    iput-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-eqz v8, :cond_6

    .line 23
    invoke-virtual {v8, v4}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 24
    invoke-virtual {v8}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 25
    :cond_6
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 27
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_8

    .line 29
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 30
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_9

    .line 31
    iget-object v5, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 32
    :cond_9
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_b

    .line 33
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 34
    :cond_b
    iget-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 36
    invoke-static {v4}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    move-result-object v5

    if-nez v5, :cond_d

    const/4 v5, 0x3

    .line 37
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 38
    :cond_d
    iget v5, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 39
    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    goto/16 :goto_0

    .line 40
    :cond_e
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->minorVersion_:I

    goto/16 :goto_0

    .line 42
    :cond_f
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->majorVersion_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_2
    move v1, v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 45
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_11

    .line 47
    iget-object p2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 48
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 50
    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_13

    .line 51
    iget-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 52
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1600()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$1802(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->majorVersion_:I

    return p1
.end method

.method public static synthetic access$1902(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->minorVersion_:I

    return p1
.end method

.method public static synthetic access$2002(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p1
.end method

.method public static synthetic access$2302(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    return p1
.end method

.method public static synthetic access$2500(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2600()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$2700(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMajorVersion()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMajorVersion()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMajorVersion()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMajorVersion()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMajorVersion()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMinorVersion()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMinorVersion()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMinorVersion()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMinorVersion()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMinorVersion()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    return v3

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasSupportedWifiChannelType()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasSupportedWifiChannelType()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v1, v2, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasSupportedWifiChannelType()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 91
    .line 92
    iget v2, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 93
    .line 94
    if-eq v1, v2, :cond_7

    .line 95
    .line 96
    return v3

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelsList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelsList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasHeadunitInfo()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasHeadunitInfo()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v1, v2, :cond_9

    .line 121
    .line 122
    return v3

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasHeadunitInfo()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    return v3

    .line 144
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasWifiProjectionProtocolInfo()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasWifiProjectionProtocolInfo()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eq v1, v2, :cond_b

    .line 153
    .line 154
    return v3

    .line 155
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasWifiProjectionProtocolInfo()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_c

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_c

    .line 174
    .line 175
    return v3

    .line 176
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_d

    .line 185
    .line 186
    return v3

    .line 187
    :cond_d
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeadunitInfoOrBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->majorVersion_:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->minorVersion_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->majorVersion_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    and-int/2addr v3, v4

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->minorVersion_:I

    .line 30
    .line 31
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    :cond_2
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 37
    .line 38
    and-int/lit8 v3, v3, 0x4

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    iget v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/2addr v0, v3

    .line 50
    :cond_3
    move v3, v2

    .line 51
    :goto_1
    iget-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v2, v4, :cond_4

    .line 58
    .line 59
    iget-object v4, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 60
    .line 61
    invoke-interface {v4, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    add-int/2addr v3, v4

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    add-int/2addr v0, v3

    .line 74
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelsList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    mul-int/2addr v2, v1

    .line 83
    add-int/2addr v2, v0

    .line 84
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x8

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v2, v0

    .line 100
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 101
    .line 102
    and-int/lit8 v0, v0, 0x10

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    const/4 v0, 0x6

    .line 107
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v2, v0

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v0, v2

    .line 123
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 124
    .line 125
    return v0
.end method

.method public getSupportedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->valueOf(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->CHANNELS_5GHZ_ONLY:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getSupportedWifiChannels(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSupportedWifiChannelsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedWifiChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWifiProjectionProtocolInfoOrBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasHeadunitInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMajorVersion()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinorVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSupportedWifiChannelType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWifiProjectionProtocolInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit16 v0, v0, 0x30b

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMajorVersion()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/16 v3, 0x35

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMajorVersion()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMinorVersion()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x25

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    const/16 v3, 0x35

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMinorVersion()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasSupportedWifiChannelType()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x25

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    const/16 v3, 0x35

    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 72
    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelsCount()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    const/16 v1, 0x25

    .line 81
    .line 82
    const/4 v2, 0x4

    .line 83
    const/16 v3, 0x35

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelsList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasHeadunitInfo()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    const/16 v1, 0x25

    .line 105
    .line 106
    const/4 v2, 0x5

    .line 107
    const/16 v3, 0x35

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasWifiProjectionProtocolInfo()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    const/16 v1, 0x25

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    const/16 v3, 0x35

    .line 132
    .line 133
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->hashCode()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 147
    .line 148
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/2addr v1, v0

    .line 155
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 156
    .line 157
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$1200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->newBuilderForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    invoke-direct {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;-><init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->toBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->majorVersion_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->minorVersion_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannelType_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 45
    .line 46
    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 57
    .line 58
    and-int/lit8 v0, v0, 0x8

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->bitField0_:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, 0x10

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const/4 v0, 0x6

    .line 77
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
