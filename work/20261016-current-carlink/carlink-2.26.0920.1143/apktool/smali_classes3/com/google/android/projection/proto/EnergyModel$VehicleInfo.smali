.class public final Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VehicleInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;,
        Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;
    }
.end annotation


# static fields
.field public static final BATTERY_CAPACITY_WH_FIELD_NUMBER:I = 0x4

.field public static final BATTERY_LEVEL_WH_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

.field public static final EXTERNAL_TEMP_CELSIUS_FIELD_NUMBER:I = 0x7

.field public static final HEAT_PUMP_EQUIPPED_FIELD_NUMBER:I = 0xa

.field public static final HVAC_STATUS_FIELD_NUMBER:I = 0x5

.field public static final MASS_KILOGRAMS_FIELD_NUMBER:I = 0x2

.field public static final MAXIMUM_CHARGING_RATE_WATTS_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEAK_MOTOR_POWER_WATTS_FIELD_NUMBER:I = 0x8

.field public static final REFERENCE_AIR_DENSITY_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private bitField0_:I

.field private externalTempCelsius_:F

.field private heatPumpEquipped_:Z

.field private hvacStatus_:I

.field private massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private maximumChargingRateWatts_:I

.field private memoizedIsInitialized:B

.field private peakMotorPowerWatts_:I

.field private referenceAirDensity_:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x28

    if-eq v2, v4, :cond_6

    const/16 v4, 0x35

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_4

    const/16 v4, 0x40

    if-eq v2, v4, :cond_3

    const/16 v4, 0x48

    if-eq v2, v4, :cond_2

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_1
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->heatPumpEquipped_:Z

    goto :goto_0

    .line 15
    :cond_2
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->maximumChargingRateWatts_:I

    goto :goto_0

    .line 17
    :cond_3
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->peakMotorPowerWatts_:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->externalTempCelsius_:F

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->referenceAirDensity_:F

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 22
    iput v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    goto :goto_0

    .line 23
    :cond_7
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 25
    :cond_8
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 27
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto/16 :goto_0

    .line 28
    :cond_9
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_a

    .line 29
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 30
    :cond_a
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto/16 :goto_0

    .line 33
    :cond_b
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v2, :cond_c

    .line 34
    invoke-virtual {v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    move-result-object v5

    .line 35
    :cond_c
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v5, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    move v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 39
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 43
    throw p1

    .line 44
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$4600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4802(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$4902(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$5002(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    return-object p1
.end method

.method public static synthetic access$5100(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    return p0
.end method

.method public static synthetic access$5102(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    return p1
.end method

.method public static synthetic access$5202(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->referenceAirDensity_:F

    return p1
.end method

.method public static synthetic access$5302(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->externalTempCelsius_:F

    return p1
.end method

.method public static synthetic access$5402(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->peakMotorPowerWatts_:I

    return p1
.end method

.method public static synthetic access$5502(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->maximumChargingRateWatts_:I

    return p1
.end method

.method public static synthetic access$5602(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->heatPumpEquipped_:Z

    return p1
.end method

.method public static synthetic access$5702(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    return p1
.end method

.method public static synthetic access$5800(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5900()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

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
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMassKilograms()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMassKilograms()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMassKilograms()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryLevelWh()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryLevelWh()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryLevelWh()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryCapacityWh()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryCapacityWh()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryCapacityWh()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 114
    .line 115
    iget v2, p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 116
    .line 117
    if-eq v1, v2, :cond_8

    .line 118
    .line 119
    return v3

    .line 120
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getReferenceAirDensity()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getReferenceAirDensity()F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eq v1, v2, :cond_9

    .line 137
    .line 138
    return v3

    .line 139
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getExternalTempCelsius()F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getExternalTempCelsius()F

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eq v1, v2, :cond_a

    .line 156
    .line 157
    return v3

    .line 158
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasPeakMotorPowerWatts()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasPeakMotorPowerWatts()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eq v1, v2, :cond_b

    .line 167
    .line 168
    return v3

    .line 169
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasPeakMotorPowerWatts()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_c

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getPeakMotorPowerWatts()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getPeakMotorPowerWatts()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eq v1, v2, :cond_c

    .line 184
    .line 185
    return v3

    .line 186
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMaximumChargingRateWatts()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMaximumChargingRateWatts()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eq v1, v2, :cond_d

    .line 195
    .line 196
    return v3

    .line 197
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMaximumChargingRateWatts()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_e

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMaximumChargingRateWatts()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMaximumChargingRateWatts()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eq v1, v2, :cond_e

    .line 212
    .line 213
    return v3

    .line 214
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasHeatPumpEquipped()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasHeatPumpEquipped()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eq v1, v2, :cond_f

    .line 223
    .line 224
    return v3

    .line 225
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasHeatPumpEquipped()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_10

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getHeatPumpEquipped()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getHeatPumpEquipped()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eq v1, v2, :cond_10

    .line 240
    .line 241
    return v3

    .line 242
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 243
    .line 244
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_11

    .line 251
    .line 252
    return v3

    .line 253
    :cond_11
    return v0
.end method

.method public getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBatteryCapacityWhOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBatteryLevelWhOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExternalTempCelsius()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->externalTempCelsius_:F

    return v0
.end method

.method public getHeatPumpEquipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->heatPumpEquipped_:Z

    return v0
.end method

.method public getHvacStatus()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->valueOf(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->UNRECOGNIZED:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getHvacStatusValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    return v0
.end method

.method public getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMassKilogramsOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumChargingRateWatts()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->maximumChargingRateWatts_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPeakMotorPowerWatts()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->peakMotorPowerWatts_:I

    return v0
.end method

.method public getReferenceAirDensity()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->referenceAirDensity_:F

    return v0
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
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v2, v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v2, v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v2, v0

    .line 50
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 51
    .line 52
    sget-object v4, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->UNKNOWN_HVAC_STATUS:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->getNumber()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eq v0, v4, :cond_4

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    iget v4, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 62
    .line 63
    invoke-static {v0, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v2, v0

    .line 68
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->referenceAirDensity_:F

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    cmpl-float v5, v0, v4

    .line 72
    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    const/4 v5, 0x6

    .line 76
    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v2, v0

    .line 81
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->externalTempCelsius_:F

    .line 82
    .line 83
    cmpl-float v4, v0, v4

    .line 84
    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    const/4 v4, 0x7

    .line 88
    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v2, v0

    .line 93
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 94
    .line 95
    and-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    const/16 v0, 0x8

    .line 100
    .line 101
    iget v4, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->peakMotorPowerWatts_:I

    .line 102
    .line 103
    invoke-static {v0, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-int/2addr v2, v0

    .line 108
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 109
    .line 110
    and-int/2addr v0, v1

    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    const/16 v0, 0x9

    .line 114
    .line 115
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->maximumChargingRateWatts_:I

    .line 116
    .line 117
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v2, v0

    .line 122
    :cond_8
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 123
    .line 124
    and-int/2addr v0, v3

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    const/16 v0, 0xa

    .line 128
    .line 129
    iget-boolean v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->heatPumpEquipped_:Z

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/2addr v2, v0

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v0, v2

    .line 143
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 144
    .line 145
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBatteryCapacityWh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBatteryLevelWh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeatPumpEquipped()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMassKilograms()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaximumChargingRateWatts()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeakMotorPowerWatts()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

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
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMassKilograms()Z

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
    const/4 v2, 0x2

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryLevelWh()Z

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
    const/4 v2, 0x3

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryCapacityWh()Z

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
    const/4 v2, 0x4

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    const/16 v1, 0x25

    .line 89
    .line 90
    const/4 v2, 0x5

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
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x25

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x6

    .line 103
    .line 104
    mul-int/lit8 v0, v0, 0x35

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getReferenceAirDensity()F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v1, v0

    .line 115
    mul-int/lit8 v1, v1, 0x25

    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x7

    .line 118
    .line 119
    mul-int/lit8 v1, v1, 0x35

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getExternalTempCelsius()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v0, v1

    .line 130
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasPeakMotorPowerWatts()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    const/16 v1, 0x25

    .line 137
    .line 138
    const/16 v2, 0x8

    .line 139
    .line 140
    const/16 v3, 0x35

    .line 141
    .line 142
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getPeakMotorPowerWatts()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/2addr v0, v1

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMaximumChargingRateWatts()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    const/16 v1, 0x25

    .line 158
    .line 159
    const/16 v2, 0x9

    .line 160
    .line 161
    const/16 v3, 0x35

    .line 162
    .line 163
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMaximumChargingRateWatts()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    add-int/2addr v0, v1

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasHeatPumpEquipped()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    const/16 v1, 0x25

    .line 179
    .line 180
    const/16 v2, 0xa

    .line 181
    .line 182
    const/16 v3, 0x35

    .line 183
    .line 184
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getHeatPumpEquipped()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    add-int/2addr v0, v1

    .line 197
    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 198
    .line 199
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    add-int/2addr v1, v0

    .line 206
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 207
    .line 208
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$4300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

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
    iget-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->newBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-direct {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 38
    .line 39
    sget-object v3, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->UNKNOWN_HVAC_STATUS:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->getNumber()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eq v0, v3, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    iget v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hvacStatus_:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->referenceAirDensity_:F

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    cmpl-float v4, v0, v3

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/4 v4, 0x6

    .line 61
    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 62
    .line 63
    .line 64
    :cond_4
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->externalTempCelsius_:F

    .line 65
    .line 66
    cmpl-float v3, v0, v3

    .line 67
    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    const/4 v3, 0x7

    .line 71
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 75
    .line 76
    and-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    const/16 v0, 0x8

    .line 81
    .line 82
    iget v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->peakMotorPowerWatts_:I

    .line 83
    .line 84
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 85
    .line 86
    .line 87
    :cond_6
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 88
    .line 89
    and-int/2addr v0, v1

    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    const/16 v0, 0x9

    .line 93
    .line 94
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->maximumChargingRateWatts_:I

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 97
    .line 98
    .line 99
    :cond_7
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->bitField0_:I

    .line 100
    .line 101
    and-int/2addr v0, v2

    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    const/16 v0, 0xa

    .line 105
    .line 106
    iget-boolean v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->heatPumpEquipped_:Z

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 109
    .line 110
    .line 111
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
