.class public final Lcom/google/android/projection/proto/Protos$RadioProperties;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    }
.end annotation


# static fields
.field public static final AF_SWITCH_FIELD_NUMBER:I = 0x9

.field public static final AUDIO_LOOPBACK_FIELD_NUMBER:I = 0xc

.field public static final BACKGROUND_TUNER_FIELD_NUMBER:I = 0x6

.field public static final CHANNEL_RANGE_FIELD_NUMBER:I = 0x3

.field public static final CHANNEL_SPACINGS_FIELD_NUMBER:I = 0x4

.field public static final CHANNEL_SPACING_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

.field public static final MUTE_CAPABILITY_FIELD_NUMBER:I = 0xd

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioProperties;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_ID_FIELD_NUMBER:I = 0x1

.field public static final RDS_FIELD_NUMBER:I = 0x8

.field public static final REGION_FIELD_NUMBER:I = 0x7

.field public static final STATION_PRESETS_ACCESS_FIELD_NUMBER:I = 0xe

.field public static final TA_FIELD_NUMBER:I = 0xa

.field public static final TRAFFIC_SERVICE_FIELD_NUMBER:I = 0xb

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private afSwitch_:Z

.field private audioLoopback_:Z

.field private backgroundTuner_:Z

.field private bitField0_:I

.field private channelRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;"
        }
    .end annotation
.end field

.field private channelSpacing_:I

.field private channelSpacings_:Lcom/google/protobuf/Internal$IntList;

.field private memoizedIsInitialized:B

.field private muteCapability_:Z

.field private radioId_:I

.field private rds_:I

.field private region_:I

.field private stationPresetsAccess_:I

.field private ta_:Z

.field private trafficService_:I

.field private type_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 10
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 11
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 12
    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x8

    if-nez v1, :cond_b

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 18
    :sswitch_0
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->stationPresetsAccess_:I

    goto :goto_0

    .line 20
    :sswitch_1
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->muteCapability_:Z

    goto :goto_0

    .line 22
    :sswitch_2
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->audioLoopback_:Z

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 25
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->valueOf(I)Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    move-result-object v5

    if-nez v5, :cond_1

    const/16 v5, 0xb

    .line 26
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 27
    :cond_1
    iget v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 28
    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    goto :goto_0

    .line 29
    :sswitch_4
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 30
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->ta_:Z

    goto :goto_0

    .line 31
    :sswitch_5
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->afSwitch_:Z

    goto :goto_0

    .line 33
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 34
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$RdsType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RdsType;

    move-result-object v5

    if-nez v5, :cond_2

    .line 35
    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 36
    :cond_2
    iget v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 37
    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    goto/16 :goto_0

    .line 38
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 39
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$ItuRegion;->valueOf(I)Lcom/google/android/projection/proto/Protos$ItuRegion;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x7

    .line 40
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41
    :cond_3
    iget v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 42
    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    goto/16 :goto_0

    .line 43
    :sswitch_8
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->backgroundTuner_:Z

    goto/16 :goto_0

    .line 45
    :sswitch_9
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacing_:I

    goto/16 :goto_0

    .line 47
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 48
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_4

    .line 50
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5

    .line 52
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_6

    .line 54
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 55
    :cond_6
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_7

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 57
    :cond_7
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$Range;->PARSER:Lcom/google/protobuf/Parser;

    .line 58
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$Range;

    .line 59
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 61
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$RadioType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RadioType;

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_8

    .line 62
    invoke-virtual {v0, v6, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 63
    :cond_8
    iget v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 64
    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    goto/16 :goto_0

    .line 65
    :sswitch_e
    iget v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 66
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->radioId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_f
    move v1, v5

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 68
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 69
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_9

    .line 70
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_a

    .line 71
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 72
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 73
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 74
    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_c

    .line 75
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_d

    .line 76
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 77
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 78
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x1a -> :sswitch_c
        0x20 -> :sswitch_b
        0x22 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$34800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$34900()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$35102(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->radioId_:I

    return p1
.end method

.method public static synthetic access$35202(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    return p1
.end method

.method public static synthetic access$35300(Lcom/google/android/projection/proto/Protos$RadioProperties;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$35302(Lcom/google/android/projection/proto/Protos$RadioProperties;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$35400(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$35402(Lcom/google/android/projection/proto/Protos$RadioProperties;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$35502(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacing_:I

    return p1
.end method

.method public static synthetic access$35602(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->backgroundTuner_:Z

    return p1
.end method

.method public static synthetic access$35702(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    return p1
.end method

.method public static synthetic access$35802(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    return p1
.end method

.method public static synthetic access$35902(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->afSwitch_:Z

    return p1
.end method

.method public static synthetic access$36002(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->ta_:Z

    return p1
.end method

.method public static synthetic access$36102(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    return p1
.end method

.method public static synthetic access$36202(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->audioLoopback_:Z

    return p1
.end method

.method public static synthetic access$36302(Lcom/google/android/projection/proto/Protos$RadioProperties;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->muteCapability_:Z

    return p1
.end method

.method public static synthetic access$36402(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->stationPresetsAccess_:I

    return p1
.end method

.method public static synthetic access$36502(Lcom/google/android/projection/proto/Protos$RadioProperties;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    return p1
.end method

.method public static synthetic access$36600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$36700(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$36800()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$36900(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$37000()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$34400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRadioId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRadioId()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 63
    .line 64
    iget v2, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 65
    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRangeList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRangeList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacingsList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacingsList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    return v3

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eq v1, v2, :cond_8

    .line 108
    .line 109
    return v3

    .line 110
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacing()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacing()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eq v1, v2, :cond_9

    .line 125
    .line 126
    return v3

    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasBackgroundTuner()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasBackgroundTuner()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eq v1, v2, :cond_a

    .line 136
    .line 137
    return v3

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasBackgroundTuner()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getBackgroundTuner()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getBackgroundTuner()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRegion()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRegion()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eq v1, v2, :cond_c

    .line 164
    .line 165
    return v3

    .line 166
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRegion()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_d

    .line 171
    .line 172
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 173
    .line 174
    iget v2, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 175
    .line 176
    if-eq v1, v2, :cond_d

    .line 177
    .line 178
    return v3

    .line 179
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRds()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRds()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eq v1, v2, :cond_e

    .line 188
    .line 189
    return v3

    .line 190
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRds()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_f

    .line 195
    .line 196
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 197
    .line 198
    iget v2, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 199
    .line 200
    if-eq v1, v2, :cond_f

    .line 201
    .line 202
    return v3

    .line 203
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAfSwitch()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAfSwitch()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eq v1, v2, :cond_10

    .line 212
    .line 213
    return v3

    .line 214
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAfSwitch()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_11

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAfSwitch()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAfSwitch()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eq v1, v2, :cond_11

    .line 229
    .line 230
    return v3

    .line 231
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTa()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTa()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eq v1, v2, :cond_12

    .line 240
    .line 241
    return v3

    .line 242
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTa()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_13

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getTa()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getTa()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eq v1, v2, :cond_13

    .line 257
    .line 258
    return v3

    .line 259
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTrafficService()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTrafficService()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eq v1, v2, :cond_14

    .line 268
    .line 269
    return v3

    .line 270
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTrafficService()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_15

    .line 275
    .line 276
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 277
    .line 278
    iget v2, p1, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 279
    .line 280
    if-eq v1, v2, :cond_15

    .line 281
    .line 282
    return v3

    .line 283
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAudioLoopback()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAudioLoopback()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eq v1, v2, :cond_16

    .line 292
    .line 293
    return v3

    .line 294
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAudioLoopback()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_17

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAudioLoopback()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAudioLoopback()Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eq v1, v2, :cond_17

    .line 309
    .line 310
    return v3

    .line 311
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasMuteCapability()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasMuteCapability()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eq v1, v2, :cond_18

    .line 320
    .line 321
    return v3

    .line 322
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasMuteCapability()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_19

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getMuteCapability()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getMuteCapability()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eq v1, v2, :cond_19

    .line 337
    .line 338
    return v3

    .line 339
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasStationPresetsAccess()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasStationPresetsAccess()Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eq v1, v2, :cond_1a

    .line 348
    .line 349
    return v3

    .line 350
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasStationPresetsAccess()Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_1b

    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getStationPresetsAccess()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getStationPresetsAccess()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eq v1, v2, :cond_1b

    .line 365
    .line 366
    return v3

    .line 367
    :cond_1b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 368
    .line 369
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 370
    .line 371
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-nez p1, :cond_1c

    .line 376
    .line 377
    return v3

    .line 378
    :cond_1c
    return v0
.end method

.method public getAfSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->afSwitch_:Z

    return v0
.end method

.method public getAudioLoopback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->audioLoopback_:Z

    return v0
.end method

.method public getBackgroundTuner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->backgroundTuner_:Z

    return v0
.end method

.method public getChannelRange(I)Lcom/google/android/projection/proto/Protos$Range;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Range;

    return-object p1
.end method

.method public getChannelRangeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelRangeOrBuilder(I)Lcom/google/android/projection/proto/Protos$RangeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RangeOrBuilder;

    return-object p1
.end method

.method public getChannelRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RangeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacing_:I

    return v0
.end method

.method public getChannelSpacings(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getChannelSpacingsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelSpacingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMuteCapability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->muteCapability_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$RadioProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRadioId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->radioId_:I

    return v0
.end method

.method public getRds()Lcom/google/android/projection/proto/Protos$RdsType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RdsType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RdsType;->NO_RDS:Lcom/google/android/projection/proto/Protos$RdsType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getRegion()Lcom/google/android/projection/proto/Protos$ItuRegion;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$ItuRegion;->valueOf(I)Lcom/google/android/projection/proto/Protos$ItuRegion;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$ItuRegion;->RADIO_REGION_NONE:Lcom/google/android/projection/proto/Protos$ItuRegion;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

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
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->radioId_:I

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
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    and-int/2addr v3, v4

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 30
    .line 31
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    :cond_2
    move v3, v2

    .line 37
    :goto_1
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_3

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/google/protobuf/MessageLite;

    .line 52
    .line 53
    const/4 v5, 0x3

    .line 54
    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/2addr v0, v4

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v3, v2

    .line 63
    :goto_2
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v2, v4, :cond_4

    .line 70
    .line 71
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 72
    .line 73
    invoke-interface {v4, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/2addr v3, v4

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    add-int/2addr v0, v3

    .line 86
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacingsList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    mul-int/2addr v2, v1

    .line 95
    add-int/2addr v2, v0

    .line 96
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0x4

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacing_:I

    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v2, v0

    .line 110
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    and-int/2addr v0, v1

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    const/4 v0, 0x6

    .line 118
    iget-boolean v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->backgroundTuner_:Z

    .line 119
    .line 120
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v2, v0

    .line 125
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 126
    .line 127
    and-int/lit8 v0, v0, 0x10

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    const/4 v0, 0x7

    .line 132
    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 133
    .line 134
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    add-int/2addr v2, v0

    .line 139
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 140
    .line 141
    and-int/lit8 v0, v0, 0x20

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 146
    .line 147
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v2, v0

    .line 152
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 153
    .line 154
    and-int/lit8 v0, v0, 0x40

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    const/16 v0, 0x9

    .line 159
    .line 160
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->afSwitch_:Z

    .line 161
    .line 162
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v2, v0

    .line 167
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 168
    .line 169
    and-int/lit16 v0, v0, 0x80

    .line 170
    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    const/16 v0, 0xa

    .line 174
    .line 175
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->ta_:Z

    .line 176
    .line 177
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    add-int/2addr v2, v0

    .line 182
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 183
    .line 184
    and-int/lit16 v0, v0, 0x100

    .line 185
    .line 186
    if-eqz v0, :cond_b

    .line 187
    .line 188
    const/16 v0, 0xb

    .line 189
    .line 190
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 191
    .line 192
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    add-int/2addr v2, v0

    .line 197
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 198
    .line 199
    and-int/lit16 v0, v0, 0x200

    .line 200
    .line 201
    if-eqz v0, :cond_c

    .line 202
    .line 203
    const/16 v0, 0xc

    .line 204
    .line 205
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->audioLoopback_:Z

    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    add-int/2addr v2, v0

    .line 212
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 213
    .line 214
    and-int/lit16 v0, v0, 0x400

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    const/16 v0, 0xd

    .line 219
    .line 220
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->muteCapability_:Z

    .line 221
    .line 222
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    add-int/2addr v2, v0

    .line 227
    :cond_d
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 228
    .line 229
    and-int/lit16 v0, v0, 0x800

    .line 230
    .line 231
    if-eqz v0, :cond_e

    .line 232
    .line 233
    const/16 v0, 0xe

    .line 234
    .line 235
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->stationPresetsAccess_:I

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    add-int/2addr v2, v0

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-int/2addr v0, v2

    .line 249
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 250
    .line 251
    return v0
.end method

.method public getStationPresetsAccess()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->stationPresetsAccess_:I

    return v0
.end method

.method public getTa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->ta_:Z

    return v0
.end method

.method public getTrafficService()Lcom/google/android/projection/proto/Protos$TrafficServiceType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->valueOf(I)Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$TrafficServiceType;->NO_TRAFFIC_SERVICE:Lcom/google/android/projection/proto/Protos$TrafficServiceType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getType()Lcom/google/android/projection/proto/Protos$RadioType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RadioType;->valueOf(I)Lcom/google/android/projection/proto/Protos$RadioType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioType;->AM_RADIO:Lcom/google/android/projection/proto/Protos$RadioType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAfSwitch()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAudioLoopback()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackgroundTuner()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChannelSpacing()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMuteCapability()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRadioId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegion()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationPresetsAccess()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTa()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrafficService()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getRadioId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

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
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRangeCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x25

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    const/16 v3, 0x35

    .line 64
    .line 65
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRangeList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacingsCount()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-lez v1, :cond_4

    .line 83
    .line 84
    const/16 v1, 0x25

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    const/16 v3, 0x35

    .line 88
    .line 89
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacingsList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v0, v1

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    const/16 v1, 0x25

    .line 109
    .line 110
    const/4 v2, 0x5

    .line 111
    const/16 v3, 0x35

    .line 112
    .line 113
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelSpacing()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasBackgroundTuner()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getBackgroundTuner()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRegion()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    const/16 v1, 0x25

    .line 153
    .line 154
    const/4 v2, 0x7

    .line 155
    const/16 v3, 0x35

    .line 156
    .line 157
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 162
    .line 163
    add-int/2addr v0, v1

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRds()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    const/16 v1, 0x25

    .line 171
    .line 172
    const/16 v2, 0x8

    .line 173
    .line 174
    const/16 v3, 0x35

    .line 175
    .line 176
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 181
    .line 182
    add-int/2addr v0, v1

    .line 183
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAfSwitch()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    const/16 v1, 0x25

    .line 190
    .line 191
    const/16 v2, 0x9

    .line 192
    .line 193
    const/16 v3, 0x35

    .line 194
    .line 195
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAfSwitch()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    add-int/2addr v0, v1

    .line 208
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTa()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_a

    .line 213
    .line 214
    const/16 v1, 0x25

    .line 215
    .line 216
    const/16 v2, 0xa

    .line 217
    .line 218
    const/16 v3, 0x35

    .line 219
    .line 220
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getTa()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    add-int/2addr v0, v1

    .line 233
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasTrafficService()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    const/16 v1, 0x25

    .line 240
    .line 241
    const/16 v2, 0xb

    .line 242
    .line 243
    const/16 v3, 0x35

    .line 244
    .line 245
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 250
    .line 251
    add-int/2addr v0, v1

    .line 252
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasAudioLoopback()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_c

    .line 257
    .line 258
    const/16 v1, 0x25

    .line 259
    .line 260
    const/16 v2, 0xc

    .line 261
    .line 262
    const/16 v3, 0x35

    .line 263
    .line 264
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getAudioLoopback()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    add-int/2addr v0, v1

    .line 277
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasMuteCapability()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_d

    .line 282
    .line 283
    const/16 v1, 0x25

    .line 284
    .line 285
    const/16 v2, 0xd

    .line 286
    .line 287
    const/16 v3, 0x35

    .line 288
    .line 289
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getMuteCapability()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    add-int/2addr v0, v1

    .line 302
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasStationPresetsAccess()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_e

    .line 307
    .line 308
    const/16 v1, 0x25

    .line 309
    .line 310
    const/16 v2, 0xe

    .line 311
    .line 312
    const/16 v3, 0x35

    .line 313
    .line 314
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getStationPresetsAccess()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    add-int/2addr v0, v1

    .line 323
    :cond_e
    mul-int/lit8 v0, v0, 0x1d

    .line 324
    .line 325
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    add-int/2addr v1, v0

    .line 332
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 333
    .line 334
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$34500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

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
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

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
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasRadioId()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasType()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->hasChannelSpacing()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    move v0, v2

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRangeCount()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v0, v3, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->getChannelRange(I)Lcom/google/android/projection/proto/Protos$Range;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$Range;->isInitialized()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    .line 56
    .line 57
    return v2

    .line 58
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->memoizedIsInitialized:B

    .line 62
    .line 63
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioProperties;->newBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->newBuilderForType()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$RadioProperties;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$RadioProperties;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$RadioProperties;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$RadioProperties;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioProperties;)Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioProperties;->toBuilder()Lcom/google/android/projection/proto/Protos$RadioProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->radioId_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->type_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    move v1, v0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelRange_:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x4

    .line 55
    if-ge v0, v1, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacings_:Lcom/google/protobuf/Internal$IntList;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 70
    .line 71
    and-int/2addr v0, v2

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->channelSpacing_:I

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    and-int/2addr v0, v1

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->backgroundTuner_:Z

    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 94
    .line 95
    and-int/lit8 v0, v0, 0x10

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->region_:I

    .line 101
    .line 102
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 106
    .line 107
    and-int/lit8 v0, v0, 0x20

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->rds_:I

    .line 112
    .line 113
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 114
    .line 115
    .line 116
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 117
    .line 118
    and-int/lit8 v0, v0, 0x40

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    const/16 v0, 0x9

    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->afSwitch_:Z

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 127
    .line 128
    .line 129
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 130
    .line 131
    and-int/lit16 v0, v0, 0x80

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    const/16 v0, 0xa

    .line 136
    .line 137
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->ta_:Z

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 140
    .line 141
    .line 142
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 143
    .line 144
    and-int/lit16 v0, v0, 0x100

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    const/16 v0, 0xb

    .line 149
    .line 150
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->trafficService_:I

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 153
    .line 154
    .line 155
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 156
    .line 157
    and-int/lit16 v0, v0, 0x200

    .line 158
    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    const/16 v0, 0xc

    .line 162
    .line 163
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->audioLoopback_:Z

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 166
    .line 167
    .line 168
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 169
    .line 170
    and-int/lit16 v0, v0, 0x400

    .line 171
    .line 172
    if-eqz v0, :cond_c

    .line 173
    .line 174
    const/16 v0, 0xd

    .line 175
    .line 176
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->muteCapability_:Z

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 179
    .line 180
    .line 181
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->bitField0_:I

    .line 182
    .line 183
    and-int/lit16 v0, v0, 0x800

    .line 184
    .line 185
    if-eqz v0, :cond_d

    .line 186
    .line 187
    const/16 v0, 0xe

    .line 188
    .line 189
    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioProperties;->stationPresetsAccess_:I

    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 192
    .line 193
    .line 194
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method
