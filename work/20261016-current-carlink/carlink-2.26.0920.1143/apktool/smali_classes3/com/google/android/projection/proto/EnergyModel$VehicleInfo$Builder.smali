.class public final Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private bitField0_:I

.field private externalTempCelsius_:F

.field private heatPumpEquipped_:Z

.field private hvacStatus_:I

.field private massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

.field private maximumChargingRateWatts_:I

.field private peakMotorPowerWatts_:I

.field private referenceAirDensity_:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getBatteryCapacityWhFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getBatteryLevelWhFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMassKilogramsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$4600()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V

    .line 4
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 5
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$4802(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$4802(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$4902(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$4902(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5002(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5002(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 14
    :goto_2
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5102(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I

    .line 15
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->referenceAirDensity_:F

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5202(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;F)F

    .line 16
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->externalTempCelsius_:F

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5302(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;F)F

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    .line 17
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->peakMotorPowerWatts_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5402(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_4

    .line 18
    iget v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maximumChargingRateWatts_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5502(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_4
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 19
    iget-boolean v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->heatPumpEquipped_:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5602(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;Z)Z

    or-int/lit8 v2, v2, 0x4

    .line 20
    :cond_5
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5702(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;I)I

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 9
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    goto :goto_2

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 17
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->referenceAirDensity_:F

    .line 20
    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->externalTempCelsius_:F

    .line 21
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->peakMotorPowerWatts_:I

    .line 22
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    .line 23
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maximumChargingRateWatts_:I

    and-int/lit8 v1, v1, -0x3

    .line 24
    iput-boolean v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->heatPumpEquipped_:Z

    and-int/lit8 v0, v1, -0x5

    .line 25
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearExternalTempCelsius()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->externalTempCelsius_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHeatPumpEquipped()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->heatPumpEquipped_:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearHvacStatus()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMassKilograms()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearMaximumChargingRateWatts()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maximumChargingRateWatts_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPeakMotorPowerWatts()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->peakMotorPowerWatts_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public clearReferenceAirDensity()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->referenceAirDensity_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBatteryCapacityWhBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getBatteryCapacityWhFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getBatteryCapacityWhOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBatteryLevelWhBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getBatteryLevelWhFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getBatteryLevelWhOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExternalTempCelsius()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->externalTempCelsius_:F

    return v0
.end method

.method public getHeatPumpEquipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->heatPumpEquipped_:Z

    return v0
.end method

.method public getHvacStatus()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    return v0
.end method

.method public getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMassKilogramsBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->getMassKilogramsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getMassKilogramsOrBuilder()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMaximumChargingRateWatts()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maximumChargingRateWatts_:I

    return v0
.end method

.method public getPeakMotorPowerWatts()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->peakMotorPowerWatts_:I

    return v0
.end method

.method public getReferenceAirDensity()F
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->referenceAirDensity_:F

    return v0
.end method

.method public hasBatteryCapacityWh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasBatteryLevelWh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasHeatPumpEquipped()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasMaximumChargingRateWatts()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBatteryCapacityWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeBatteryLevelWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMassKilograms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMassKilograms()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeMassKilograms(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryLevelWh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryLevelWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeBatteryLevelWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasBatteryCapacityWh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getBatteryCapacityWh()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeBatteryCapacityWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5100(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getHvacStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setHvacStatusValue(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getReferenceAirDensity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getReferenceAirDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setReferenceAirDensity(F)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getExternalTempCelsius()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getExternalTempCelsius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setExternalTempCelsius(F)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasPeakMotorPowerWatts()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getPeakMotorPowerWatts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setPeakMotorPowerWatts(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasMaximumChargingRateWatts()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getMaximumChargingRateWatts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setMaximumChargingRateWatts(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hasHeatPumpEquipped()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getHeatPumpEquipped()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setHeatPumpEquipped(Z)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 29
    :cond_9
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5800(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->access$5900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
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

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 36
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMassKilograms(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBatteryCapacityWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBatteryCapacityWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryCapacityWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBatteryLevelWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBatteryLevelWh(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWhBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->batteryLevelWh_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExternalTempCelsius(F)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->externalTempCelsius_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeatPumpEquipped(Z)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->heatPumpEquipped_:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setHvacStatus(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$HvacStatus;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setHvacStatusValue(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->hvacStatus_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMassKilograms(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMassKilograms(Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilogramsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->massKilograms_:Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMaximumChargingRateWatts(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->maximumChargingRateWatts_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPeakMotorPowerWatts(I)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->peakMotorPowerWatts_:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setReferenceAirDensity(F)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->referenceAirDensity_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object p1

    return-object p1
.end method
