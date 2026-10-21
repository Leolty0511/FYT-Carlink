.class public final Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationDistanceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

.field private timeToStepSeconds_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$201100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationDistanceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->getDistance()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->access$201500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->getDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$NavigationDistance;

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->access$201702(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationDistance;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->timeToStepSeconds_:J

    invoke-static {v0, v3, v4}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->access$201802(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;J)J

    or-int/lit8 v2, v2, 0x2

    :cond_2
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->access$201902(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->timeToStepSeconds_:J

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDistance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTimeToStepSeconds()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->timeToStepSeconds_:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$201100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Lcom/google/android/projection/proto/Protos$NavigationDistance;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationDistance;

    return-object v0
.end method

.method public getDistanceBuilder()Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->getDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;

    return-object v0
.end method

.method public getDistanceOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationDistanceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationDistanceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTimeToStepSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->timeToStepSeconds_:J

    return-wide v0
.end method

.method public hasDistance()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTimeToStepSeconds()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$201200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeDistance(Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationDistance;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->hasDistance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDistance()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeDistance(Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->hasTimeToStepSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getTimeToStepSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setTimeToStepSeconds(J)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    :cond_2
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->access$202000(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDistance(Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDistance;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDistance(Lcom/google/android/projection/proto/Protos$NavigationDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->distance_:Lcom/google/android/projection/proto/Protos$NavigationDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeToStepSeconds(J)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->timeToStepSeconds_:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    return-object p1
.end method
