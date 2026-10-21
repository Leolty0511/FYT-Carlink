.class public final Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$RadioStationMetaDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$RadioStationMetaDataOrBuilder;"
    }
.end annotation


# instance fields
.field private audioChannels_:I

.field private bitField0_:I

.field private hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

.field private rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RdsData;",
            "Lcom/google/android/projection/proto/Protos$RdsData$Builder;",
            "Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rds_:Lcom/google/android/projection/proto/Protos$RdsData;

.field private signalQuality_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$156000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getHdStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;",
            "Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getHdStationInfo()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRdsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RdsData;",
            "Lcom/google/android/projection/proto/Protos$RdsData$Builder;",
            "Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getRds()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$156400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getRdsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getHdStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->build()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->audioChannels_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$156602(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->signalQuality_:I

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$156702(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$RdsData;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$156802(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData;

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$156902(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    or-int/lit8 v2, v2, 0x8

    :cond_5
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$157002(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->audioChannels_:I

    iget v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->signalQuality_:I

    and-int/lit8 v0, v1, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clear()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioChannels()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->audioChannels_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearHdStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRds()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSignalQuality()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->signalQuality_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->clone()Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChannels()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->audioChannels_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$156000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHdStationInfo()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    return-object v0
.end method

.method public getHdStationInfoBuilder()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getHdStationInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    return-object v0
.end method

.method public getHdStationInfoOrBuilder()Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioStationInfoOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRds()Lcom/google/android/projection/proto/Protos$RdsData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RdsData;

    return-object v0
.end method

.method public getRdsBuilder()Lcom/google/android/projection/proto/Protos$RdsData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getRdsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    return-object v0
.end method

.method public getRdsOrBuilder()Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RdsDataOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSignalQuality()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->signalQuality_:I

    return v0
.end method

.method public hasAudioChannels()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHdStationInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignalQuality()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$156100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    const-class v2, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hasHdStationInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->getHdStationInfo()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->hasAudioChannels()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getAudioChannels()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setAudioChannels(I)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->hasSignalQuality()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getSignalQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setSignalQuality(I)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->hasRds()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getRds()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeRds(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->hasHdStationInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->getHdStationInfo()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeHdStationInfo(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->access$157100(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RadioStationMetaData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeHdStationInfo(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;->newBuilder(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeRds(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RdsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$RdsData;->newBuilder(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RdsData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAudioChannels(I)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->audioChannels_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHdStationInfo(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioStationInfo$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHdStationInfo(Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->hdStationInfo_:Lcom/google/android/projection/proto/Protos$HdRadioStationInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRds(Lcom/google/android/projection/proto/Protos$RdsData$Builder;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RdsData$Builder;->build()Lcom/google/android/projection/proto/Protos$RdsData;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRds(Lcom/google/android/projection/proto/Protos$RdsData;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rdsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->rds_:Lcom/google/android/projection/proto/Protos$RdsData;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSignalQuality(I)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->signalQuality_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$RadioStationMetaData$Builder;

    move-result-object p1

    return-object p1
.end method
