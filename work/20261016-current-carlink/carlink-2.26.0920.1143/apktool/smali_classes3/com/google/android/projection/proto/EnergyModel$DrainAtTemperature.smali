.class public final Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrainAtTemperature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    }
.end annotation


# static fields
.field public static final BATTERY_CONDITIONING_DRAIN_WATTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

.field public static final HVAC_DRAIN_WATTS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEMP_CELSIUS_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_DRAIN_WATTS_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private memoizedIsInitialized:B

.field private tempCelsius_:F

.field private totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0xd

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 26
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto/16 :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->tempCelsius_:F
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 29
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 33
    throw p1

    .line 34
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$16800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$17002(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->tempCelsius_:F

    return p1
.end method

.method public static synthetic access$17102(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$17202(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$17302(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$17400(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$17500()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$16400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTempCelsius()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTempCelsius()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasHvacDrainWatts()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasHvacDrainWatts()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    .line 46
    return v3

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasHvacDrainWatts()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    return v3

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasBatteryConditioningDrainWatts()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasBatteryConditioningDrainWatts()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eq v1, v2, :cond_5

    .line 77
    .line 78
    return v3

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasBatteryConditioningDrainWatts()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_6

    .line 98
    .line 99
    return v3

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasTotalDrainWatts()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasTotalDrainWatts()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eq v1, v2, :cond_7

    .line 109
    .line 110
    return v3

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasTotalDrainWatts()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_8

    .line 130
    .line 131
    return v3

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v3

    .line 143
    :cond_9
    return v0
.end method

.method public getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBatteryConditioningDrainWattsOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object v0

    return-object v0
.end method

.method public getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHvacDrainWattsOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->tempCelsius_:F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v2, v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v2, v0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr v2, v0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v2, v0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v2

    .line 70
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 71
    .line 72
    return v0
.end method

.method public getTempCelsius()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->tempCelsius_:F

    return v0
.end method

.method public getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotalDrainWattsOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBatteryConditioningDrainWatts()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHvacDrainWatts()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTotalDrainWatts()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    mul-int/lit8 v0, v0, 0x25

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    mul-int/lit8 v0, v0, 0x35

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTempCelsius()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v1, v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasHvacDrainWatts()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x25

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    const/16 v3, 0x35

    .line 41
    .line 42
    invoke-static {v1, v0, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasBatteryConditioningDrainWatts()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/16 v0, 0x25

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    const/16 v3, 0x35

    .line 65
    .line 66
    invoke-static {v1, v0, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v1, v0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hasTotalDrainWatts()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    const/16 v0, 0x25

    .line 86
    .line 87
    const/4 v2, 0x4

    .line 88
    const/16 v3, 0x35

    .line 89
    .line 90
    invoke-static {v1, v0, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    add-int/2addr v1, v0

    .line 103
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v0, v1

    .line 112
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 113
    .line 114
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$16500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->newBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    invoke-direct {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->tempCelsius_:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->hvacDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getHvacDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->batteryConditioningDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getBatteryConditioningDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->totalDrainWatts_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getTotalDrainWatts()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
