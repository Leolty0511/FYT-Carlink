.class public final Lcom/google/android/projection/proto/Protos$LightData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$LightData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$LightData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hazardLightsOn_:Z

.field private headLightState_:I

.field private turnIndicatorState_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$87500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LightData;->access$87900()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$LightData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$LightData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$LightData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$LightData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$LightData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$LightData;->access$88102(Lcom/google/android/projection/proto/Protos$LightData;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget v3, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$LightData;->access$88202(Lcom/google/android/projection/proto/Protos$LightData;I)I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->hazardLightsOn_:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$LightData;->access$88302(Lcom/google/android/projection/proto/Protos$LightData;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$LightData;->access$88402(Lcom/google/android/projection/proto/Protos$LightData;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    and-int/lit8 v0, v1, -0x3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->hazardLightsOn_:Z

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clear()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clear()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clear()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clear()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHazardLightsOn()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->hazardLightsOn_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeadLightState()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTurnIndicatorState()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->clone()Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LightData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LightData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$87500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHazardLightsOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->hazardLightsOn_:Z

    return v0
.end method

.method public getHeadLightState()Lcom/google/android/projection/proto/Protos$HeadLightState;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HeadLightState;->valueOf(I)Lcom/google/android/projection/proto/Protos$HeadLightState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$HeadLightState;->HEAD_LIGHT_STATE_OFF:Lcom/google/android/projection/proto/Protos$HeadLightState;

    :cond_0
    return-object v0
.end method

.method public getTurnIndicatorState()Lcom/google/android/projection/proto/Protos$TurnIndicatorState;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$TurnIndicatorState;->valueOf(I)Lcom/google/android/projection/proto/Protos$TurnIndicatorState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$TurnIndicatorState;->TURN_INDICATOR_NONE:Lcom/google/android/projection/proto/Protos$TurnIndicatorState;

    :cond_0
    return-object v0
.end method

.method public hasHazardLightsOn()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadLightState()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTurnIndicatorState()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$87600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$LightData;

    const-class v2, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$LightData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->hasHeadLightState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->getHeadLightState()Lcom/google/android/projection/proto/Protos$HeadLightState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setHeadLightState(Lcom/google/android/projection/proto/Protos$HeadLightState;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->hasTurnIndicatorState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->getTurnIndicatorState()Lcom/google/android/projection/proto/Protos$TurnIndicatorState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setTurnIndicatorState(Lcom/google/android/projection/proto/Protos$TurnIndicatorState;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->hasHazardLightsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData;->getHazardLightsOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setHazardLightsOn(Z)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$LightData;->access$88500(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$LightData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$LightData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$LightData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHazardLightsOn(Z)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->hazardLightsOn_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadLightState(Lcom/google/android/projection/proto/Protos$HeadLightState;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HeadLightState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->headLightState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTurnIndicatorState(Lcom/google/android/projection/proto/Protos$TurnIndicatorState;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TurnIndicatorState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$LightData$Builder;->turnIndicatorState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$LightData$Builder;

    move-result-object p1

    return-object p1
.end method
