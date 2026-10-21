.class public final Lcom/google/android/projection/proto/Protos$SensorSourceService;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorSourceService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;,
        Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;,
        Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

.field public static final LOCATION_CHARACTERIZATION_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSORS_FIELD_NUMBER:I = 0x1

.field public static final SUPPORTED_EV_CONNECTOR_TYPES_FIELD_NUMBER:I = 0x4

.field public static final SUPPORTED_FUEL_TYPES_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J

.field private static final supportedEvConnectorTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedFuelTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/projection/proto/Protos$FuelType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private locationCharacterization_:I

.field private memoizedIsInitialized:B

.field private sensors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private supportedEvConnectorTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supportedFuelTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$3;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService$3;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_12

    const/16 v5, 0xa

    if-eq v3, v5, :cond_10

    const/16 v5, 0x10

    if-eq v3, v5, :cond_f

    const/16 v5, 0x18

    const/4 v6, 0x3

    if-eq v3, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x20

    const/4 v6, 0x4

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 16
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 19
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->valueOf(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;

    move-result-object v5

    if-nez v5, :cond_2

    .line 20
    invoke-virtual {v0, v6, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    :cond_2
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_3

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 22
    :cond_3
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 25
    invoke-static {v3}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->valueOf(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;

    move-result-object v4

    if-nez v4, :cond_6

    .line 26
    invoke-virtual {v0, v6, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_7

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 28
    :cond_7
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 30
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 31
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 33
    invoke-static {v4}, Lcom/google/android/projection/proto/Protos$FuelType;->valueOf(I)Lcom/google/android/projection/proto/Protos$FuelType;

    move-result-object v5

    if-nez v5, :cond_9

    .line 34
    invoke-virtual {v0, v6, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_2

    :cond_9
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_a

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 36
    :cond_a
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_b
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 39
    invoke-static {v3}, Lcom/google/android/projection/proto/Protos$FuelType;->valueOf(I)Lcom/google/android/projection/proto/Protos$FuelType;

    move-result-object v4

    if-nez v4, :cond_d

    .line 40
    invoke-virtual {v0, v6, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_e

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 42
    :cond_e
    iget-object v4, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_f
    iget v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->locationCharacterization_:I

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_11

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 46
    :cond_11
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    sget-object v4, Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;->PARSER:Lcom/google/protobuf/Parser;

    .line 47
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_12
    :goto_3
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_13

    .line 52
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_14

    .line 53
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_15

    .line 54
    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 55
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 57
    throw p1

    :cond_16
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_17

    .line 58
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 59
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_19

    .line 60
    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 61
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorSourceService;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$15600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$15800(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$15802(Lcom/google/android/projection/proto/Protos$SensorSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$15902(Lcom/google/android/projection/proto/Protos$SensorSourceService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->locationCharacterization_:I

    return p1
.end method

.method public static synthetic access$16000(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$16002(Lcom/google/android/projection/proto/Protos$SensorSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$16100(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$16102(Lcom/google/android/projection/proto/Protos$SensorSourceService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$16202(Lcom/google/android/projection/proto/Protos$SensorSourceService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    return p1
.end method

.method public static synthetic access$16300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$16400(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$16500()Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static synthetic access$16600()Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$14200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$SensorSourceService;

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
    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensorsList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensorsList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->hasLocationCharacterization()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->hasLocationCharacterization()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->hasLocationCharacterization()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getLocationCharacterization()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getLocationCharacterization()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eq v1, v3, :cond_4

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    return v2

    .line 71
    :cond_5
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    return v2

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_7

    .line 91
    .line 92
    return v2

    .line 93
    :cond_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorSourceService;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorSourceService;

    move-result-object v0

    return-object v0
.end method

.method public getLocationCharacterization()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->locationCharacterization_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSensors(I)Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;

    return-object p1
.end method

.method public getSensorsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSensorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    return-object v0
.end method

.method public getSensorsOrBuilder(I)Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;

    return-object p1
.end method

.method public getSensorsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

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
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 26
    .line 27
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    .line 36
    .line 37
    and-int/2addr v1, v4

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    iget v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->locationCharacterization_:I

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v2, v1

    .line 48
    :cond_2
    move v1, v0

    .line 49
    move v3, v1

    .line 50
    :goto_1
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ge v1, v5, :cond_3

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/2addr v3, v5

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    add-int/2addr v2, v3

    .line 79
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    mul-int/2addr v1, v4

    .line 86
    add-int/2addr v1, v2

    .line 87
    move v2, v0

    .line 88
    :goto_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ge v0, v3, :cond_4

    .line 95
    .line 96
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    add-int/2addr v2, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    add-int/2addr v1, v2

    .line 117
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    mul-int/2addr v0, v4

    .line 124
    add-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    add-int/2addr v1, v0

    .line 132
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 133
    .line 134
    return v1
.end method

.method public getSupportedEvConnectorTypes(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;
    .locals 2

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$EvConnectorType;

    return-object p1
.end method

.method public getSupportedEvConnectorTypesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedEvConnectorTypesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getSupportedFuelTypes(I)Lcom/google/android/projection/proto/Protos$FuelType;
    .locals 2

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelType;

    return-object p1
.end method

.method public getSupportedFuelTypesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedFuelTypesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FuelType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLocationCharacterization()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensorsCount()I

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensorsList()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->hasLocationCharacterization()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getLocationCharacterization()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSupportedFuelTypesCount()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lez v1, :cond_3

    .line 65
    .line 66
    const/16 v1, 0x25

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    const/16 v3, 0x35

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSupportedEvConnectorTypesCount()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_4

    .line 87
    .line 88
    const/16 v1, 0x25

    .line 89
    .line 90
    const/4 v2, 0x4

    .line 91
    const/16 v3, 0x35

    .line 92
    .line 93
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    add-int/2addr v1, v0

    .line 113
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 114
    .line 115
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$14300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensorsCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->getSensors(I)Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->memoizedIsInitialized:B

    .line 35
    .line 36
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->newBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$SensorSourceService;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$SensorSourceService;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorSourceService;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorSourceService;)Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorSourceService;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorSourceService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->sensors_:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 19
    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->bitField0_:I

    .line 27
    .line 28
    and-int/2addr v1, v3

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->locationCharacterization_:I

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move v1, v0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v1, v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedFuelTypes_:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x3

    .line 59
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ge v0, v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorSourceService;->supportedEvConnectorTypes_:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x4

    .line 86
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
