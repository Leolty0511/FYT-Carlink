.class public final Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationCurrentPositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$NavigationCurrentPositionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationRoad;",
            "Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

.field private destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private destinationDistances_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            ">;"
        }
    .end annotation
.end field

.field private stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureDestinationDistancesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCurrentRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationRoad;",
            "Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getCurrentRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$199800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getStepDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistance;",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getStepDistance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getStepDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getCurrentRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllDestinationDistances(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDestinationDistances(ILcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDestinationDistances(ILcom/google/android/projection/proto/Protos$NavigationDestinationDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDestinationDistances(Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDestinationDistances(Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDestinationDistancesBuilder()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;

    return-object v0
.end method

.method public addDestinationDistancesBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200402(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    :cond_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200502(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$NavigationRoad;

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200602(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad;

    or-int/lit8 v2, v2, 0x2

    :cond_5
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200702(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_2
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCurrentRoad()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDestinationDistances()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStepDistance()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationRoad;

    return-object v0
.end method

.method public getCurrentRoadBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getCurrentRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    return-object v0
.end method

.method public getCurrentRoadOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$199800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationDistances(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getDestinationDistancesBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;

    return-object p1
.end method

.method public getDestinationDistancesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationDistancesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDestinationDistancesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationDistancesOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDestinationDistancesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStepDistance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    return-object v0
.end method

.method public getStepDistanceBuilder()Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getStepDistanceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    return-object v0
.end method

.method public getStepDistanceOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasCurrentRoad()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStepDistance()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$199900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCurrentRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->hasStepDistance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->getStepDistance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeStepDistance(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->getDestinationDistancesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200500(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->hasCurrentRoad()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->getCurrentRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeCurrentRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->access$200900(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeStepDistance(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeDestinationDistances(I)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCurrentRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCurrentRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->currentRoad_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDestinationDistances(ILcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDestinationDistances(ILcom/google/android/projection/proto/Protos$NavigationDestinationDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistancesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->ensureDestinationDistancesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->destinationDistances_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStepDistance(Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStepDistance$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStepDistance(Lcom/google/android/projection/proto/Protos$NavigationStepDistance;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistanceBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->stepDistance_:Lcom/google/android/projection/proto/Protos$NavigationStepDistance;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition$Builder;

    move-result-object p1

    return-object p1
.end method
