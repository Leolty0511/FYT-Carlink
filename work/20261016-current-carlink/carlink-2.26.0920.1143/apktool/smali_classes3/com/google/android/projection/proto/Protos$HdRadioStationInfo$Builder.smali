.class public final Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private acquisitionState_:I

.field private bitField0_:I

.field private digitalSignalStrength_:I

.field private psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData;",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

.field private sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData;",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$159500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPsdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData;",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getPsd()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData;",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getSis()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$159900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getPsdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getSisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160102(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;I)I

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->digitalSignalStrength_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160202(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160302(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160402(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    or-int/lit8 v2, v2, 0x8

    :cond_5
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160502(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->digitalSignalStrength_:I

    and-int/lit8 v0, v1, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAcquisitionState()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDigitalSignalStrength()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->digitalSignalStrength_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPsd()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSis()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcquisitionState()Lcom/google/android/projection/proto/Protos$HdAcquisionState;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdAcquisionState;->valueOf(I)Lcom/google/android/projection/proto/Protos$HdAcquisionState;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/projection/proto/Protos$HdAcquisionState;->ANALOG:Lcom/google/android/projection/proto/Protos$HdAcquisionState;

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$159500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalSignalStrength()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->digitalSignalStrength_:I

    return v0
.end method

.method public getPsd()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    return-object v0
.end method

.method public getPsdBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getPsdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    return-object v0
.end method

.method public getPsdOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioPsdDataOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSis()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    return-object v0
.end method

.method public getSisBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getSisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object v0
.end method

.method public getSisOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAcquisitionState()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDigitalSignalStrength()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPsd()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSis()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$159600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    const-class v2, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->hasSis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->getSis()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->hasAcquisitionState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getAcquisitionState()Lcom/google/android/projection/proto/Protos$HdAcquisionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setAcquisitionState(Lcom/google/android/projection/proto/Protos$HdAcquisionState;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->hasDigitalSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDigitalSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setDigitalSignalStrength(I)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->hasPsd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getPsd()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergePsd(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->hasSis()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getSis()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeSis(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->access$160600(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergePsd(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeSis(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAcquisitionState(Lcom/google/android/projection/proto/Protos$HdAcquisionState;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdAcquisionState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->acquisitionState_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDigitalSignalStrength(I)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->digitalSignalStrength_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPsd(Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioPsdData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPsd(Lcom/google/android/projection/proto/Protos$HdRadioPsdData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psdBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->psd_:Lcom/google/android/projection/proto/Protos$HdRadioPsdData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSis(Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSis(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sisBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->sis_:Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    return-object p1
.end method
