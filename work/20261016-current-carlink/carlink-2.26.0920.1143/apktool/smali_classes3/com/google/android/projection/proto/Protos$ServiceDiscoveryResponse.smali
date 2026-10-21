.class public final Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDiscoveryResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    }
.end annotation


# static fields
.field public static final CAN_PLAY_NATIVE_MEDIA_DURING_VR_FIELD_NUMBER:I = 0xb

.field public static final CONNECTION_CONFIGURATION_FIELD_NUMBER:I = 0x10

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0xe

.field public static final DRIVER_POSITION_FIELD_NUMBER:I = 0x6

.field public static final HEADUNIT_INFO_FIELD_NUMBER:I = 0x11

.field public static final HEAD_UNIT_MAKE_FIELD_NUMBER:I = 0x7

.field public static final HEAD_UNIT_MODEL_FIELD_NUMBER:I = 0x8

.field public static final HEAD_UNIT_SOFTWARE_BUILD_FIELD_NUMBER:I = 0x9

.field public static final HEAD_UNIT_SOFTWARE_VERSION_FIELD_NUMBER:I = 0xa

.field public static final MAKE_FIELD_NUMBER:I = 0x2

.field public static final MODEL_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROBE_FOR_SUPPORT_FIELD_NUMBER:I = 0xf

.field public static final SERVICES_FIELD_NUMBER:I = 0x1

.field public static final SESSION_CONFIGURATION_FIELD_NUMBER:I = 0xd

.field public static final VEHICLE_ID_FIELD_NUMBER:I = 0x5

.field public static final YEAR_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private canPlayNativeMediaDuringVr_:Z

.field private connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

.field private volatile displayName_:Ljava/lang/Object;

.field private driverPosition_:I

.field private volatile headUnitMake_:Ljava/lang/Object;

.field private volatile headUnitModel_:Ljava/lang/Object;

.field private volatile headUnitSoftwareBuild_:Ljava/lang/Object;

.field private volatile headUnitSoftwareVersion_:Ljava/lang/Object;

.field private headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

.field private volatile make_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private probeForSupport_:Z

.field private services_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation
.end field

.field private sessionConfiguration_:I

.field private volatile vehicleId_:Ljava/lang/Object;

.field private volatile year_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 18
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>()V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_8

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 23
    :sswitch_0
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_1

    .line 24
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->toBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    move-result-object v5

    .line 25
    :cond_1
    sget-object v4, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-eqz v5, :cond_2

    .line 26
    invoke-virtual {v5, v4}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;

    .line 27
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Common$HeadUnitInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 28
    :cond_2
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    goto :goto_0

    .line 29
    :sswitch_1
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_3

    .line 30
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->toBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    move-result-object v5

    .line 31
    :cond_3
    sget-object v4, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-eqz v5, :cond_4

    .line 32
    invoke-virtual {v5, v4}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;

    .line 33
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 34
    :cond_4
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    goto :goto_0

    .line 35
    :sswitch_2
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->probeForSupport_:Z

    goto :goto_0

    .line 37
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 38
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 39
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_4
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->sessionConfiguration_:I

    goto/16 :goto_0

    .line 42
    :sswitch_5
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->canPlayNativeMediaDuringVr_:Z

    goto/16 :goto_0

    .line 44
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 45
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 46
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 47
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 48
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 49
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 51
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 52
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 54
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 55
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 57
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$DriverPosition;->valueOf(I)Lcom/google/android/projection/proto/Protos$DriverPosition;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    .line 58
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 59
    :cond_5
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 60
    iput v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    goto/16 :goto_0

    .line 61
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 62
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 63
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 65
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 66
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 68
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 69
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 71
    iget v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 72
    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_f
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 74
    :cond_6
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    sget-object v5, Lcom/google/android/projection/proto/Protos$Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 75
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/android/projection/proto/Protos$Service;

    .line 76
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_10
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 77
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 78
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_7

    .line 80
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 81
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 83
    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_9

    .line 84
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 85
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 86
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x30 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x58 -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x78 -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5100(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$5102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$5200(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5302(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5400(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5402(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5500(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5502(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    return p1
.end method

.method public static synthetic access$5700(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5800(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5802(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5902(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6000(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6002(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6102(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->canPlayNativeMediaDuringVr_:Z

    return p1
.end method

.method public static synthetic access$6202(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->sessionConfiguration_:I

    return p1
.end method

.method public static synthetic access$6300(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6302(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6402(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->probeForSupport_:Z

    return p1
.end method

.method public static synthetic access$6502(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;)Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    return-object p1
.end method

.method public static synthetic access$6602(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;Lcom/google/android/projection/proto/Common$HeadUnitInfo;)Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    return-object p1
.end method

.method public static synthetic access$6702(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    return p1
.end method

.method public static synthetic access$6800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$6900(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServicesList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServicesList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasMake()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasMake()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasMake()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getMake()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getMake()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    return v2

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasModel()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasModel()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eq v1, v3, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasModel()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getModel()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getModel()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    return v2

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasYear()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasYear()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eq v1, v3, :cond_7

    .line 105
    .line 106
    return v2

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasYear()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getYear()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getYear()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    return v2

    .line 128
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasVehicleId()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasVehicleId()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eq v1, v3, :cond_9

    .line 137
    .line 138
    return v2

    .line 139
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasVehicleId()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getVehicleId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getVehicleId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_a

    .line 158
    .line 159
    return v2

    .line 160
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDriverPosition()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDriverPosition()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eq v1, v3, :cond_b

    .line 169
    .line 170
    return v2

    .line 171
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDriverPosition()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_c

    .line 176
    .line 177
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 178
    .line 179
    iget v3, p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 180
    .line 181
    if-eq v1, v3, :cond_c

    .line 182
    .line 183
    return v2

    .line 184
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitMake()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitMake()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eq v1, v3, :cond_d

    .line 193
    .line 194
    return v2

    .line 195
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitMake()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_e

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitMake()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitMake()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_e

    .line 214
    .line 215
    return v2

    .line 216
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitModel()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitModel()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eq v1, v3, :cond_f

    .line 225
    .line 226
    return v2

    .line 227
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitModel()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_10

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitModel()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitModel()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_10

    .line 246
    .line 247
    return v2

    .line 248
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareBuild()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareBuild()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eq v1, v3, :cond_11

    .line 257
    .line 258
    return v2

    .line 259
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareBuild()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_12

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_12

    .line 278
    .line 279
    return v2

    .line 280
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareVersion()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareVersion()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eq v1, v3, :cond_13

    .line 289
    .line 290
    return v2

    .line 291
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareVersion()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_14

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_14

    .line 310
    .line 311
    return v2

    .line 312
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasCanPlayNativeMediaDuringVr()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasCanPlayNativeMediaDuringVr()Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eq v1, v3, :cond_15

    .line 321
    .line 322
    return v2

    .line 323
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasCanPlayNativeMediaDuringVr()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_16

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getCanPlayNativeMediaDuringVr()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getCanPlayNativeMediaDuringVr()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eq v1, v3, :cond_16

    .line 338
    .line 339
    return v2

    .line 340
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasSessionConfiguration()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasSessionConfiguration()Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eq v1, v3, :cond_17

    .line 349
    .line 350
    return v2

    .line 351
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasSessionConfiguration()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_18

    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getSessionConfiguration()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getSessionConfiguration()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eq v1, v3, :cond_18

    .line 366
    .line 367
    return v2

    .line 368
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDisplayName()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDisplayName()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eq v1, v3, :cond_19

    .line 377
    .line 378
    return v2

    .line 379
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDisplayName()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_1a

    .line 384
    .line 385
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDisplayName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDisplayName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_1a

    .line 398
    .line 399
    return v2

    .line 400
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasProbeForSupport()Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasProbeForSupport()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eq v1, v3, :cond_1b

    .line 409
    .line 410
    return v2

    .line 411
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasProbeForSupport()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_1c

    .line 416
    .line 417
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getProbeForSupport()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getProbeForSupport()Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-eq v1, v3, :cond_1c

    .line 426
    .line 427
    return v2

    .line 428
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasConnectionConfiguration()Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasConnectionConfiguration()Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-eq v1, v3, :cond_1d

    .line 437
    .line 438
    return v2

    .line 439
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasConnectionConfiguration()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_1e

    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v1, v3}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-nez v1, :cond_1e

    .line 458
    .line 459
    return v2

    .line 460
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadunitInfo()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadunitInfo()Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-eq v1, v3, :cond_1f

    .line 469
    .line 470
    return v2

    .line 471
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadunitInfo()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_20

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-virtual {v1, v3}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-nez v1, :cond_20

    .line 490
    .line 491
    return v2

    .line 492
    :cond_20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 493
    .line 494
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 495
    .line 496
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    if-nez p1, :cond_21

    .line 501
    .line 502
    return v2

    .line 503
    :cond_21
    return v0
.end method

.method public getCanPlayNativeMediaDuringVr()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->canPlayNativeMediaDuringVr_:Z

    return v0
.end method

.method public getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectionConfigurationOrBuilder()Lcom/google/android/projection/proto/Protos$ConnectionConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->connectionConfiguration_:Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDriverPosition()Lcom/google/android/projection/proto/Protos$DriverPosition;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$DriverPosition;->valueOf(I)Lcom/google/android/projection/proto/Protos$DriverPosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$DriverPosition;->DRIVER_POSITION_LEFT:Lcom/google/android/projection/proto/Protos$DriverPosition;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getHeadUnitMake()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitModel()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareBuild()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitSoftwareBuildBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadUnitSoftwareVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getHeadUnitSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeadunitInfoOrBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headunitInfo_:Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProbeForSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->probeForSupport_:Z

    return v0
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
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 35
    .line 36
    and-int/2addr v0, v3

    .line 37
    const/4 v2, 0x2

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 48
    .line 49
    and-int/2addr v0, v2

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v1, v0

    .line 60
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    and-int/2addr v0, v2

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 74
    .line 75
    const/16 v2, 0x8

    .line 76
    .line 77
    and-int/2addr v0, v2

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 89
    .line 90
    const/16 v3, 0x10

    .line 91
    .line 92
    and-int/2addr v0, v3

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    const/4 v0, 0x6

    .line 96
    iget v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 97
    .line 98
    invoke-static {v0, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 104
    .line 105
    and-int/lit8 v0, v0, 0x20

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    const/4 v0, 0x7

    .line 110
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v1, v0

    .line 117
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 118
    .line 119
    and-int/lit8 v0, v0, 0x40

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v1, v0

    .line 130
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 131
    .line 132
    and-int/lit16 v0, v0, 0x80

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    const/16 v0, 0x9

    .line 137
    .line 138
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/2addr v1, v0

    .line 145
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 146
    .line 147
    and-int/lit16 v0, v0, 0x100

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    const/16 v0, 0xa

    .line 152
    .line 153
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v1, v0

    .line 160
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 161
    .line 162
    and-int/lit16 v0, v0, 0x200

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    const/16 v0, 0xb

    .line 167
    .line 168
    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->canPlayNativeMediaDuringVr_:Z

    .line 169
    .line 170
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v1, v0

    .line 175
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 176
    .line 177
    and-int/lit16 v0, v0, 0x400

    .line 178
    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    const/16 v0, 0xd

    .line 182
    .line 183
    iget v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->sessionConfiguration_:I

    .line 184
    .line 185
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    add-int/2addr v1, v0

    .line 190
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 191
    .line 192
    and-int/lit16 v0, v0, 0x800

    .line 193
    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    const/16 v0, 0xe

    .line 197
    .line 198
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 199
    .line 200
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/2addr v1, v0

    .line 205
    :cond_d
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 206
    .line 207
    and-int/lit16 v0, v0, 0x1000

    .line 208
    .line 209
    if-eqz v0, :cond_e

    .line 210
    .line 211
    const/16 v0, 0xf

    .line 212
    .line 213
    iget-boolean v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->probeForSupport_:Z

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    add-int/2addr v1, v0

    .line 220
    :cond_e
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 221
    .line 222
    and-int/lit16 v0, v0, 0x2000

    .line 223
    .line 224
    if-eqz v0, :cond_f

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    add-int/2addr v1, v0

    .line 235
    :cond_f
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 236
    .line 237
    and-int/lit16 v0, v0, 0x4000

    .line 238
    .line 239
    if-eqz v0, :cond_10

    .line 240
    .line 241
    const/16 v0, 0x11

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    add-int/2addr v1, v0

    .line 252
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    add-int/2addr v0, v1

    .line 259
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 260
    .line 261
    return v0
.end method

.method public getServices(I)Lcom/google/android/projection/proto/Protos$Service;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$Service;

    return-object p1
.end method

.method public getServicesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Service;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    return-object v0
.end method

.method public getServicesOrBuilder(I)Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;

    return-object p1
.end method

.method public getServicesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ServiceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    return-object v0
.end method

.method public getSessionConfiguration()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->sessionConfiguration_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getVehicleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getYearBytes()Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public hasCanPlayNativeMediaDuringVr()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnectionConfiguration()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDriverPosition()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitMake()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitModel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareBuild()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadUnitSoftwareVersion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadunitInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMake()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasModel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProbeForSupport()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionConfiguration()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVehicleId()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYear()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServicesCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServicesList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasMake()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x25

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    const/16 v3, 0x35

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getMake()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasModel()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const/16 v1, 0x25

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    const/16 v3, 0x35

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getModel()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasYear()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    const/16 v1, 0x25

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    const/16 v3, 0x35

    .line 98
    .line 99
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getYear()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasVehicleId()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const/16 v1, 0x25

    .line 119
    .line 120
    const/4 v2, 0x5

    .line 121
    const/16 v3, 0x35

    .line 122
    .line 123
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getVehicleId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    add-int/2addr v0, v1

    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDriverPosition()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    const/16 v1, 0x25

    .line 143
    .line 144
    const/4 v2, 0x6

    .line 145
    const/16 v3, 0x35

    .line 146
    .line 147
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 152
    .line 153
    add-int/2addr v0, v1

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitMake()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    const/16 v1, 0x25

    .line 161
    .line 162
    const/4 v2, 0x7

    .line 163
    const/16 v3, 0x35

    .line 164
    .line 165
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitMake()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitModel()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_8

    .line 183
    .line 184
    const/16 v1, 0x25

    .line 185
    .line 186
    const/16 v2, 0x8

    .line 187
    .line 188
    const/16 v3, 0x35

    .line 189
    .line 190
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitModel()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    add-int/2addr v0, v1

    .line 203
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareBuild()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_9

    .line 208
    .line 209
    const/16 v1, 0x25

    .line 210
    .line 211
    const/16 v2, 0x9

    .line 212
    .line 213
    const/16 v3, 0x35

    .line 214
    .line 215
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareBuild()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    add-int/2addr v0, v1

    .line 228
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadUnitSoftwareVersion()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_a

    .line 233
    .line 234
    const/16 v1, 0x25

    .line 235
    .line 236
    const/16 v2, 0xa

    .line 237
    .line 238
    const/16 v3, 0x35

    .line 239
    .line 240
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadUnitSoftwareVersion()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    add-int/2addr v0, v1

    .line 253
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasCanPlayNativeMediaDuringVr()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    const/16 v1, 0x25

    .line 260
    .line 261
    const/16 v2, 0xb

    .line 262
    .line 263
    const/16 v3, 0x35

    .line 264
    .line 265
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getCanPlayNativeMediaDuringVr()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    add-int/2addr v0, v1

    .line 278
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasSessionConfiguration()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_c

    .line 283
    .line 284
    const/16 v1, 0x25

    .line 285
    .line 286
    const/16 v2, 0xd

    .line 287
    .line 288
    const/16 v3, 0x35

    .line 289
    .line 290
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getSessionConfiguration()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    add-int/2addr v0, v1

    .line 299
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasDisplayName()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_d

    .line 304
    .line 305
    const/16 v1, 0x25

    .line 306
    .line 307
    const/16 v2, 0xe

    .line 308
    .line 309
    const/16 v3, 0x35

    .line 310
    .line 311
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getDisplayName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    add-int/2addr v0, v1

    .line 324
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasProbeForSupport()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_e

    .line 329
    .line 330
    const/16 v1, 0x25

    .line 331
    .line 332
    const/16 v2, 0xf

    .line 333
    .line 334
    const/16 v3, 0x35

    .line 335
    .line 336
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getProbeForSupport()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    add-int/2addr v0, v1

    .line 349
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasConnectionConfiguration()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_f

    .line 354
    .line 355
    const/16 v1, 0x25

    .line 356
    .line 357
    const/16 v2, 0x10

    .line 358
    .line 359
    const/16 v3, 0x35

    .line 360
    .line 361
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;->hashCode()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    add-int/2addr v0, v1

    .line 374
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->hasHeadunitInfo()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_10

    .line 379
    .line 380
    const/16 v1, 0x25

    .line 381
    .line 382
    const/16 v2, 0x11

    .line 383
    .line 384
    const/16 v3, 0x35

    .line 385
    .line 386
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Common$HeadUnitInfo;->hashCode()I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    add-int/2addr v0, v1

    .line 399
    :cond_10
    mul-int/lit8 v0, v0, 0x1d

    .line 400
    .line 401
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    add-int/2addr v1, v0

    .line 408
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 409
    .line 410
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$4600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->memoizedIsInitialized:B

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
    move v0, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServicesCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getServices(I)Lcom/google/android/projection/proto/Protos$Service;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$Service;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->memoizedIsInitialized:B

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->memoizedIsInitialized:B

    .line 35
    .line 36
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->newBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->newBuilderForType()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;)Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->toBuilder()Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->services_:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 18
    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 26
    .line 27
    and-int/2addr v0, v2

    .line 28
    const/4 v1, 0x2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->make_:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 37
    .line 38
    and-int/2addr v0, v1

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->model_:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    and-int/2addr v0, v1

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->year_:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    and-int/2addr v0, v1

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->vehicleId_:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 72
    .line 73
    const/16 v2, 0x10

    .line 74
    .line 75
    and-int/2addr v0, v2

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    iget v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->driverPosition_:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x20

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitMake_:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0x40

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitModel_:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 108
    .line 109
    and-int/lit16 v0, v0, 0x80

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    const/16 v0, 0x9

    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareBuild_:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 121
    .line 122
    and-int/lit16 v0, v0, 0x100

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    const/16 v0, 0xa

    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->headUnitSoftwareVersion_:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_9
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 134
    .line 135
    and-int/lit16 v0, v0, 0x200

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    const/16 v0, 0xb

    .line 140
    .line 141
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->canPlayNativeMediaDuringVr_:Z

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 144
    .line 145
    .line 146
    :cond_a
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 147
    .line 148
    and-int/lit16 v0, v0, 0x400

    .line 149
    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    const/16 v0, 0xd

    .line 153
    .line 154
    iget v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->sessionConfiguration_:I

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 157
    .line 158
    .line 159
    :cond_b
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 160
    .line 161
    and-int/lit16 v0, v0, 0x800

    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    const/16 v0, 0xe

    .line 166
    .line 167
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->displayName_:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_c
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 173
    .line 174
    and-int/lit16 v0, v0, 0x1000

    .line 175
    .line 176
    if-eqz v0, :cond_d

    .line 177
    .line 178
    const/16 v0, 0xf

    .line 179
    .line 180
    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->probeForSupport_:Z

    .line 181
    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 183
    .line 184
    .line 185
    :cond_d
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 186
    .line 187
    and-int/lit16 v0, v0, 0x2000

    .line 188
    .line 189
    if-eqz v0, :cond_e

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getConnectionConfiguration()Lcom/google/android/projection/proto/Protos$ConnectionConfiguration;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 196
    .line 197
    .line 198
    :cond_e
    iget v0, p0, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->bitField0_:I

    .line 199
    .line 200
    and-int/lit16 v0, v0, 0x4000

    .line 201
    .line 202
    if-eqz v0, :cond_f

    .line 203
    .line 204
    const/16 v0, 0x11

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$ServiceDiscoveryResponse;->getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 211
    .line 212
    .line 213
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 214
    .line 215
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
