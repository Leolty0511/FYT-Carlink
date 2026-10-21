.class public final Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$NavigationStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationCue;",
            "Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

.field private lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            "Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lanes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;"
        }
    .end annotation
.end field

.field private maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuver;",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

.field private roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureLanesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationCue;",
            "Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$191900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            "Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getManeuverFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuver;",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;",
            "Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getManeuverFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getCueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllLanes(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLanes(ILcom/google/android/projection/proto/Protos$NavigationLane$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLanes(ILcom/google/android/projection/proto/Protos$NavigationLane;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLanes(Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLanes(Lcom/google/android/projection/proto/Protos$NavigationLane;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLanesBuilder()Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationLane;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;

    return-object v0
.end method

.method public addLanesBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationLane;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavigationStep;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$NavigationStep;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStep;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192502(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/Protos$NavigationRoad;

    :goto_2
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192602(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad;

    or-int/lit8 v2, v2, 0x2

    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    :cond_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    :goto_3
    invoke-static {v0, v3}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192702(Lcom/google/android/projection/proto/Protos$NavigationStep;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/Protos$NavigationCue;

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192802(Lcom/google/android/projection/proto/Protos$NavigationStep;Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationCue;

    or-int/lit8 v2, v2, 0x4

    :cond_7
    invoke-static {v0, v2}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192902(Lcom/google/android/projection/proto/Protos$NavigationStep;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_3
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clear()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCue()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLanes()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearManeuver()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRoad()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->clone()Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCue;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationCue;

    return-object v0
.end method

.method public getCueBuilder()Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getCueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;

    return-object v0
.end method

.method public getCueOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCue;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$191900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLanes(I)Lcom/google/android/projection/proto/Protos$NavigationLane;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLane;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getLanesBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;

    return-object p1
.end method

.method public getLanesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getLanesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanesOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getLanesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    return-object v0
.end method

.method public getManeuverBuilder()Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getManeuverFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;

    return-object v0
.end method

.method public getManeuverOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

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

.method public getRoadBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    return-object v0
.end method

.method public getRoadOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasCue()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasManeuver()Z
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRoad()Z
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$192000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    const-class v2, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCue(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationCue;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationCue;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationStep;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasManeuver()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeManeuver(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasRoad()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$193000()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->getLanesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$192700(Lcom/google/android/projection/proto/Protos$NavigationStep;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->hasCue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeCue(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    :cond_8
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStep;->access$193100(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$NavigationStep;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

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

    check-cast p2, Lcom/google/android/projection/proto/Protos$NavigationStep;
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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationStep;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeManeuver(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationManeuver;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-static {v0}, Lcom/google/android/projection/proto/Protos$NavigationRoad;->newBuilder(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeLanes(I)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCue(Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationCue$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationCue;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCue(Lcom/google/android/projection/proto/Protos$NavigationCue;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->cue_:Lcom/google/android/projection/proto/Protos$NavigationCue;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLanes(ILcom/google/android/projection/proto/Protos$NavigationLane$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NavigationLane$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationLane;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLanes(ILcom/google/android/projection/proto/Protos$NavigationLane;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->ensureLanesIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->lanes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setManeuver(Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationManeuver$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public setManeuver(Lcom/google/android/projection/proto/Protos$NavigationManeuver;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuverBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->maneuver_:Lcom/google/android/projection/proto/Protos$NavigationManeuver;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NavigationRoad$Builder;->build()Lcom/google/android/projection/proto/Protos$NavigationRoad;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRoad(Lcom/google/android/projection/proto/Protos$NavigationRoad;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->roadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->road_:Lcom/google/android/projection/proto/Protos$NavigationRoad;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    iget p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$NavigationStep$Builder;

    move-result-object p1

    return-object p1
.end method
