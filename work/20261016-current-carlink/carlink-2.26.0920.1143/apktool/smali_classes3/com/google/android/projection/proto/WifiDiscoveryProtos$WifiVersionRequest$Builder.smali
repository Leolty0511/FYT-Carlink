.class public final Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

.field private majorVersion_:I

.field private minorVersion_:I

.field private supportedWifiChannelType_:I

.field private supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

.field private wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2600()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2600()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureSupportedWifiChannelsIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2700(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;",
            "Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getWifiProjectionProtocolInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$1500()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getWifiProjectionProtocolInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSupportedWifiChannels(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->ensureSupportedWifiChannelsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSupportedWifiChannels(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->ensureSupportedWifiChannelsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/WifiDiscoveryProtos$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->majorVersion_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$1802(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 6
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->minorVersion_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$1902(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 7
    :cond_2
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2002(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I

    .line 8
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 10
    iget v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2102(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 12
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_4

    .line 13
    iget-object v3, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2202(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2202(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    :goto_1
    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 15
    iget-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2302(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2302(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    :goto_2
    or-int/lit8 v2, v2, 0x10

    .line 18
    :cond_7
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2402(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->majorVersion_:I

    .line 7
    iget v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->minorVersion_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    and-int/lit8 v0, v1, -0x5

    .line 10
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 11
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$1600()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 12
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 16
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 17
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18
    iput-object v1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 20
    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clear()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clear()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clear()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clear()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHeadunitInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x11

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clearMajorVersion()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->majorVersion_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearMinorVersion()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->minorVersion_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSupportedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearSupportedWifiChannels()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2800()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x9

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 16
    .line 17
    and-int/lit8 v0, v0, -0x21

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 20
    .line 21
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->clone()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getHeadunitInfoBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getHeadunitInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getHeadunitInfoOrBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->majorVersion_:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->minorVersion_:I

    return v0
.end method

.method public getSupportedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSupportedWifiChannelsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

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

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWifiProjectionProtocolInfoBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->getWifiProjectionProtocolInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;

    .line 19
    .line 20
    return-object v0
.end method

.method public getWifiProjectionProtocolInfoOrBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasHeadunitInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMajorVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMajorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasMinorVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getMinorVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setMinorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasSupportedWifiChannelType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getSupportedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setSupportedWifiChannelType(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2100(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2100(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 20
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    goto :goto_0

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->ensureSupportedWifiChannelsIsMutable()V

    .line 22
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2100(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasHeadunitInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->hasWifiProjectionProtocolInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeWifiProjectionProtocolInfo(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 28
    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->access$2500(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    .line 35
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x10

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->newBuilder(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x10

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeWifiProjectionProtocolInfo(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->getDefaultInstance()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;->newBuilder(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x20

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 52
    .line 53
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->build()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHeadunitInfo(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMajorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->majorVersion_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setMinorVersion(I)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->minorVersion_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSupportedWifiChannelType(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannelType_:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public setSupportedWifiChannels(II)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->ensureSupportedWifiChannelsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->supportedWifiChannels_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWifiProjectionProtocolInfo(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo$Builder;->build()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setWifiProjectionProtocolInfo(Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->wifiProjectionProtocolInfo_:Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequest$Builder;->bitField0_:I

    return-object p0
.end method
