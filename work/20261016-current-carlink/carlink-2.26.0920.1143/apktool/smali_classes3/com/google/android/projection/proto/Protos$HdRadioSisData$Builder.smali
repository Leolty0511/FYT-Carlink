.class public final Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$HdRadioSisData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$HdRadioSisDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private serviceInfoMessage_:Ljava/lang/Object;

.field private stationId_:I

.field private stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Location;",
            "Lcom/google/android/projection/proto/Protos$Location$Builder;",
            "Lcom/google/android/projection/proto/Protos$LocationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

.field private stationMessage_:Ljava/lang/Object;

.field private stationNameLong_:Ljava/lang/Object;

.field private stationNameShort_:Ljava/lang/Object;

.field private universalShortStationNameSlogan_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$166100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getStationLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$Location;",
            "Lcom/google/android/projection/proto/Protos$Location$Builder;",
            "Lcom/google/android/projection/proto/Protos$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getStationLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->build()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationId_:I

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166702(Lcom/google/android/projection/proto/Protos$HdRadioSisData;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166802(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166902(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$Location;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167002(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$Location;

    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x10

    :cond_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167102(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x20

    :cond_6
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167202(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    or-int/lit8 v2, v2, 0x40

    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167302(Lcom/google/android/projection/proto/Protos$HdRadioSisData;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167402(Lcom/google/android/projection/proto/Protos$HdRadioSisData;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationId_:I

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x11

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x21

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clear()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearServiceInfoMessage()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getServiceInfoMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStationId()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStationLocation()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearStationMessage()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStationNameLong()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameLong()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStationNameShort()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationNameShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUniversalShortStationNameSlogan()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getUniversalShortStationNameSlogan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->clone()Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$166100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfoMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfoMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationId_:I

    return v0
.end method

.method public getStationLocation()Lcom/google/android/projection/proto/Protos$Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Location;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Location;

    return-object v0
.end method

.method public getStationLocationBuilder()Lcom/google/android/projection/proto/Protos$Location$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getStationLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$Location$Builder;

    return-object v0
.end method

.method public getStationLocationOrBuilder()Lcom/google/android/projection/proto/Protos$LocationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$LocationOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Location;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStationMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStationMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationNameLong()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStationNameLongBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStationNameShort()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStationNameShortBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUniversalShortStationNameSlogan()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniversalShortStationNameSloganBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasServiceInfoMessage()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationId()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStationLocation()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationMessage()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationNameLong()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationNameShort()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUniversalShortStationNameSlogan()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$166200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    const-class v2, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->hasStationLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Location;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setStationId(I)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameShort()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166800(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationNameLong()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$166900(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->getStationLocation()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeStationLocation(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasStationMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167100(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasServiceInfoMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167200(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->hasUniversalShortStationNameSlogan()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167300(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->access$167500(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$HdRadioSisData;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$HdRadioSisData;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeStationLocation(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$Location;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$Location;->newBuilder(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$Location$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$Location$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Location$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServiceInfoMessage(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setServiceInfoMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->serviceInfoMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationId(I)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationLocation(Lcom/google/android/projection/proto/Protos$Location$Builder;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$Location$Builder;->build()Lcom/google/android/projection/proto/Protos$Location;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStationLocation(Lcom/google/android/projection/proto/Protos$Location;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationLocation_:Lcom/google/android/projection/proto/Protos$Location;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStationMessage(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationNameLong(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationNameLongBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameLong_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationNameShort(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStationNameShortBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->stationNameShort_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniversalShortStationNameSlogan(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniversalShortStationNameSloganBytes(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->universalShortStationNameSlogan_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$HdRadioSisData$Builder;

    move-result-object p1

    return-object p1
.end method
